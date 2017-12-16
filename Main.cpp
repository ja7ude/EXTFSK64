// ---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Main.h"
SYS sys;
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

// ---------------------------------------------------------------------------
void CALLBACK TimeProc(UINT uID, UINT uMsg, DWORD dwUser, DWORD dw1, DWORD dw2)
{
	ASSERT(dwUser);

	TExtFSK *pMain = (TExtFSK*)dwUser;
	if (uID != pMain->m_uTimerID)
		return;

	pMain->m_fsk.Timer();
}
void __fastcall TExtFSK::TimeProc2()
{
	m_fsk.Timer();
}
//---------------------------------------------------------------------------
void __fastcall SetDirName(LPSTR t, LPCSTR pName)
{
	char drive[_MAX_DRIVE];
	char dir[_MAX_DIR];
	char name[_MAX_FNAME];
	char ext[_MAX_EXT];
	AnsiString	Dir;

	::_splitpath( pName, drive, dir, name, ext );
	Dir = drive;
	Dir += dir;
	strncpy(t, Dir.c_str(), MAX_PATH-1);
}
//---------------------------------------------------------------------------
void __fastcall SetEXT(LPSTR t, LPCSTR pExt)
{
	LPSTR p = LASTP(t);
	for( ; p > t; p-- ){
		if( *p == '.' ){
			p++;
			strcpy(p, pExt);
			return;
		}
	}
}
//---------------------------------------------------------------------------
WORD __fastcall htow(LPCSTR p)
{
	int d = 0;
	for( ; *p; p++ ){
		if( (*p != ' ') && (*p != '$') ){
			d = d << 4;
			d += *p & 0x0f;
			if( *p >= 'A' ) d += 9;
		}
	}
	return WORD(d);
}
//---------------------------------------------------------------------------
void __cdecl _bOutport(WORD port, BYTE c)
{
	if( sys.m_pDLPort ){
		sys.m_pDLPort->bOutport(port, c);
	}
	else if( !sys.m_WinNT ){
		// Should not execute the following code on platforms of WinNT, 2000, XP.
		asm {
			push	edx
			mov		al,c
			mov		dx,port
			out		dx,al
			pop		edx
		}
	}
}
//---------------------------------------------------------------------------
BYTE __cdecl _bInport(WORD port)
{
	if( sys.m_pDLPort ){
		return sys.m_pDLPort->bInport(port);
	}
	else if( !sys.m_WinNT ){
		// Should not execute the following code on platforms of WinNT, 2000, XP.
		asm {
			push	edx
			mov		dx,port
			in		al,dx
			pop		edx
		}
		return _AL;
	}
	else {
		return 0xff;
	}
}

bool Is64bitOS(){
  char *ptr = getenv("ProgramW6432");
  if( ptr != NULL )
    return true;
  else
    return false;
}

//***************************************************************************
// CDLPort class
__fastcall CDLPort::CDLPort(LPCSTR pPath)
{
	m_hDLib = NULL;
	//m_hLib = NULL;
	//SetDriverPath = NULL;
	//SetDLLPath = NULL;
	//OpenDriver = NULL;
	//CloseDriver = NULL;
	//ActiveHW = NULL;
	ReadPort = NULL;
	WritePort = NULL;
	//LastError = NULL;
	//LPTNumPorts = NULL;
	//SetLPTNumber = NULL;
	//LPTBasePort = NULL;

	m_Path = pPath;
	LPSTR p = LASTP(m_Path.c_str());
	if (*p == '\\')
		* p = 0;
	char Name[MAX_PATH];
  const char DllName32[] = ".\\inpout32.dll";
  //const char DllName64[] = ".\\inpoutx64.dll";
  char DllName[66];
  //if( Is64bitOS() )
    //strcpy( DllName, DllName64 );
  //else
    strcpy( DllName, DllName32 );
	wsprintf( Name, "%s\\%s", m_Path.c_str(), DllName );
  if( !FileExists( Name ) )
    return;
	m_Path = "";
	m_hDLib = ::LoadLibrary(DllName);
	if( m_hDLib == NULL )
    return;

  ReadPort = (dlReadPort)GetProcAddress(m_hDLib, "Inp32");
  if( ReadPort == NULL ){
    FreeLibrary(m_hDLib);
    m_hDLib = NULL;
    return;
  }
  WritePort = (dlWritePort)GetProcAddress(m_hDLib, "Out32");
  if( WritePort == NULL ){
    FreeLibrary(m_hDLib);
    m_hDLib = NULL;
    return;
  }

  /*
	m_hLib = ::LoadLibrary("TDLPortIO.dll");
	if( m_hLib ){
		SetDriverPath = (dlSetDriverPath)GetProc("@SetDriverPath$qqspc");
		SetDLLPath = (dlSetDLLPath)GetProc("@SetDLLPath$qqspc");
		OpenDriver = (dlOpenDriver)GetProc("@OpenDriver$qqsv");
		CloseDriver = (dlCloseDriver)GetProc("@CloseDriver$qqsv");
		ActiveHW = (dlActiveHW)GetProc("@ActiveHW$qqsv");
		ReadPort = (dlReadPort)GetProc("@ReadPort$qqsus");
		WritePort = (dlWritePort)GetProc("@WritePort$qqsusuc");
		LastError = (dlLastError)GetProc("@LastError$qqsv");

		LPTNumPorts = (dlLPTNumPorts)GetProc_("@LPTNumPorts$qqsv");
		SetLPTNumber = (dlSetLPTNumber)GetProc_("@SetLPTNumber$qqsuc");
		LPTBasePort = (dlLPTBasePort)GetProc_("@LPTBasePort$qqsv");

		if( !m_hLib ) return;

		if( !Open() ){
			::FreeLibrary(m_hLib);
			m_hLib = NULL;
		}
	}
  */
}
//---------------------------------------------------------------------------
__fastcall CDLPort::~CDLPort()
{
  /*
	if( m_hLib != NULL ){
		Close();
		::FreeLibrary(m_hLib);
		m_hLib = NULL;
	}
  */
	if( m_hDLib != NULL ){
		::FreeLibrary(m_hDLib);
		m_hDLib = NULL;
	}
}
//---------------------------------------------------------------------
FARPROC CDLPort::GetProc_(LPCSTR pName)
{
	//if( !m_hLib ) return NULL;

	//return ::GetProcAddress(m_hLib, pName);
  return NULL;
}
//---------------------------------------------------------------------
FARPROC CDLPort::GetProc(LPCSTR pName)
{
	//if( !m_hLib ) return NULL;

  /*
	FARPROC fn = ::GetProcAddress(m_hLib, pName);
	if( fn == NULL ){
		::FreeLibrary(m_hLib);
		m_hLib = NULL;
	}
	return fn;
  */
  return NULL;
}
//---------------------------------------------------------------------
BOOL __fastcall CDLPort::IsFile(LPCSTR pName)
{
	HANDLE hFile = ::CreateFile(pName,
					0,
					FILE_SHARE_READ, NULL,
					OPEN_EXISTING,
					0,
					NULL
	);
	if( hFile != INVALID_HANDLE_VALUE ){
		::CloseHandle(hFile);
	}
	return hFile != INVALID_HANDLE_VALUE;
}
//---------------------------------------------------------------------
/*
int __fastcall CDLPort::Open(void)
{
	if( !m_hLib ) return FALSE;

	if( !m_Path.IsEmpty() ){
		SetDriverPath(m_Path.c_str());
		SetDLLPath(m_Path.c_str());
	}
	OpenDriver();
	m_LastError = LastError();
    if( !m_LastError.IsEmpty() ){
		::MessageBox(NULL, m_LastError.c_str(), "CDLPort class", MB_OK);
    	return FALSE;
    }
	return ActiveHW();
}
*/
//---------------------------------------------------------------------
/*
void __fastcall CDLPort::Close(void)
{
	if( !m_hLib ) return;

	if( ActiveHW() ) CloseDriver();
}
*/
//---------------------------------------------------------------------------
/*
BOOL __fastcall CDLPort::IsCapLPTList(void)
{
	if( !LPTNumPorts ) return FALSE;
	if( !SetLPTNumber ) return FALSE;
	if( !LPTBasePort ) return FALSE;
	return TRUE;
}
*/
//---------------------------------------------------------------------------
BYTE __fastcall CDLPort::bInport(WORD port)
{
	//if( !m_hLib ) return 0xff;
	return ReadPort(port);
}
//---------------------------------------------------------------------------
void __fastcall CDLPort::bOutport(WORD port, BYTE c)
{
	//if( !m_hLib ) return;
	WritePort(port, c);
}
//***************************************************************************
// CFSK class
__fastcall CFSK::CFSK(void)
{
	m_wPortA = 0;
	m_bPortD = 0;

	m_ErrorAccess = 0;
	m_BLen = 5;
	Init();
#if MeasureAccuracy
	QueryPerformanceFrequency(&m_liFreq);
	m_liPOld.u.HighPart = -1;
#endif
}
//---------------------------------------------------------------------------
void __fastcall CFSK::Init(void)
{
	m_hPort = INVALID_HANDLE_VALUE;
	m_StgD = -1;
	m_nFSK = 0;
	m_nPTT = 2;
	m_Sequence = 0;
	m_Count = 0;
	m_oFSK = 1;
	m_aFSK = -1;
	m_oPTT = 0;
	m_aPTT = -1;
}
//---------------------------------------------------------------------------
void __fastcall CFSK::SetHandle(HANDLE hPort, int nFSK, int nPTT)
{
	m_hPort = INVALID_HANDLE_VALUE;
	m_nFSK = nFSK;
	m_nPTT = nPTT;
	m_aFSK = -1;
	m_aPTT = -1;
	m_hPort = hPort;
	m_ErrorAccess = 0;
}
//---------------------------------------------------------------------------
//	para:	Upper16bits	Speed(eg. 45)
//			Lower16bits	b1-b0	Stop (0-1, 1-1.5, 2-2)
//						b5-b2	Length
void __fastcall CFSK::SetPara(LONG para)
{
	m_BLen = (para >> 2) & 0x000f;
}
//---------------------------------------------------------------------------
// This function is called from the TimeProc(). and according to
//MSDN,  it may be an illegal operation.  MSDN said, Applications
//should not call any system-defined functions from inside a
//callback function,  except for several functions.
// However, the EscapeCommFunction() seems to be no problem on my
//PCs with Windows 2000 and Windows XP, but I am not sure if it
//works on every PC.
// BTW, EnterCriticalSection() and LeaveCriticalSection() had problem
//on this, and I gave up to use them....
//
void __fastcall CFSK::SetPort(int port, int sw)
{
	if( !m_wPortA ){
		switch(port){
			case ptTXD:
				::EscapeCommFunction(m_hPort, sw ? SETBREAK : CLRBREAK);
				break;
			case ptRTS:
				::EscapeCommFunction(m_hPort, sw ? SETRTS : CLRRTS);
				break;
			case ptDTR:
				::EscapeCommFunction(m_hPort, sw ? SETDTR : CLRDTR);
				break;
		}
	}
	else {
		if( m_ErrorAccess ) return;

		m_ErrorAccess++;
		switch(port){
			case ptDL:
				if( sw ){
					m_bPortD |= BYTE(0x0f);
				}
				else {
					m_bPortD &= BYTE(~0x0f);
				}
				_bOutport(m_wPortA, m_bPortD);
				break;
			case ptDH:
				if( sw ){
					m_bPortD |= BYTE(0xf0);
				}
				else {
					m_bPortD &= BYTE(~0xf0);
				}
				_bOutport(m_wPortA, m_bPortD);
				break;
			case ptSTROBE:
				_bOutport(WORD(m_wPortA+2), BYTE(sw ? 0x0d : 0x0c));
				break;
		}
		m_ErrorAccess--;
	}
}
//---------------------------------------------------------------------------
// 11ms interval
void __fastcall CFSK::Timer(void)
{
	if( !m_Count ){
		switch(m_Sequence){
			case 1:			// output data
				m_oFSK = (m_NowD & 1) ? 1 : 0;
				m_NowD = m_NowD >> 1;
				m_BCount--;
				if( !m_BCount ){
					m_Sequence++;
				}
				m_Count = 1;
				break;
			case 2:			// output stop-bit
				m_oFSK = 1;
				m_Count = 2;
				m_Sequence = 0;
				break;
			default:
				if( m_StgD != -1 ){
					m_NowD = m_StgD;
					m_StgD = -1;
					m_BCount = m_BLen;
					m_oFSK = 0;		// output start-bit
					m_Sequence = 1;
					m_Count = 1;
					m_Idle = 0;
#if MeasureAccuracy
					if( QueryPerformanceCounter(&m_liPCur) ){
						if( m_liPOld.u.HighPart != -1 ){
							m_dlDiff = m_liPCur.QuadPart - m_liPOld.QuadPart;
						}
						m_liPOld = m_liPCur;
					}
#endif
				}
				else {
					m_oFSK = 1;		// output mark signal.
					m_Idle = 1;
#if MeasureAccuracy
					m_liPOld.u.HighPart = -1;
#endif
				}
				break;
		}
	}
	else {
		m_Count--;
	}

	if( !IsOpen() ) return;

	if( m_oFSK != m_aFSK ){
		m_aFSK = m_oFSK;
		SetPort(m_nFSK, m_invFSK ? m_oFSK : !m_oFSK);
	}
	if( m_oPTT != m_aPTT ){
		if( m_oPTT || m_Idle ){
			m_aPTT = m_oPTT;
			SetPort(m_nPTT, m_invPTT ? !m_oPTT : m_oPTT);
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall CFSK::SetPTT(int sw)
{
	if( m_oPTT != sw ){
		m_oPTT = sw;
		if( sw ){
			SetDelay(8);
		}
	}
}
//***************************************************************************
// TExtFSK (MainWindow) class
//---------------------------------------------------------------------------
__fastcall TExtFSK::TExtFSK(TComponent* Owner)
	: TForm(Owner)
{
	m_DisEvent = 1;
	Top = 0;
	Left = 0;
	m_hPort = INVALID_HANDLE_VALUE;
	m_wPortA = 0;
	m_wLPTA = 0;
	m_X = 0;
  dblRate = 0.011; //45.45 baud

	m_IniName = sys.m_ModuleName;
	SetEXT(m_IniName.c_str(), "ini");
	ListLPT();
	PortName->ItemIndex = 0;
	ReadIniFile();
	m_WindowState = WindowState;

	OpenPort();
	UpdatePort();
	m_DisEvent = 0;

  AnsiString cap = "EXTFSK ";
  cap += VERSION;
  Caption = cap;

	m_uTimerID = 0;
  highTimer = NULL;

  /*
  _LARGE_INTEGER tFreq;
  if( !QueryPerformanceFrequency( &tFreq ) ){ //No high resolution timer
    Memo->Lines->Add( "No high resolution timer is supported. 75 baud is not available" );
    dblRate = 0.011;
    LabelBaud->Caption = "45 Baud";
  	if( ::timeGetDevCaps(&m_TimeCaps, sizeof(m_TimeCaps)) == TIMERR_NOERROR ){
	  	char bf[64];
		  wsprintf(bf, "TimeCapsMin = %ums", m_TimeCaps.wPeriodMin);
		  Memo->Lines->Add(bf);
		  ::timeBeginPeriod(m_TimeCaps.wPeriodMin);
		  m_uTimerID = ::timeSetEvent(11, 0, TimeProc, DWORD(this), TIME_PERIODIC);
	  }
	  if( !m_uTimerID ){
		  Memo->Lines->Add("The multimedia timer is not supported.");
	  }
  }
  else{
    highTimer = new THighTimer(false);
  }
  */
	SetPTT(0, FALSE);
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::killTimer()
{
	if( m_uTimerID ){
		::timeKillEvent(m_uTimerID);
		m_uTimerID = 0;
		::timeEndPeriod(m_TimeCaps.wPeriodMin);
	}
  if( highTimer != NULL ){
    highTimer->Terminate();
    highTimer = NULL;

  }
}
void __fastcall TExtFSK::FormClose(TObject *Sender, TCloseAction &Action)
{
  killTimer();
	if( IsOpen() ){
		m_fsk.SetPort(RGPTT->ItemIndex, CBInvPTT->Checked);
	}
	ClosePort();
	WriteIniFile();
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::ReadIniFile(void)
{
	TMemIniFile *pIniFile = new TMemIniFile(m_IniName);

	if( !sys.m_WinNT || sys.m_pDLPort ){
		AnsiString as = pIniFile->ReadString("DirectAccess", "LPTADR", "0");
		m_wLPTA = htow(as.c_str());
		if( m_wLPTA ){
			char bf[32];
			wsprintf(bf, "LPT$%X", m_wLPTA);
			PortName->Items->Add(bf);
		}
	}
	Top = pIniFile->ReadInteger("Window", "Top", Top);
	Left = pIniFile->ReadInteger("Window", "Left", Left);
	WindowState = (TWindowState)pIniFile->ReadInteger("Window", "State", WindowState);
	AnsiString as = pIniFile->ReadString("Settings", "Port", "COM1");
	int n = PortName->Items->IndexOf(as);
	if( n < 0 ){
		n = atoi(as.c_str());
		if( n < 0 ) n = 0;
	}
	PortName->ItemIndex = n;
	RGFSK->ItemIndex = pIniFile->ReadInteger("Settings", "FSK", RGFSK->ItemIndex);
	RGPTT->ItemIndex = pIniFile->ReadInteger("Settings", "PTT", RGPTT->ItemIndex);
	CBInvFSK->Checked = pIniFile->ReadInteger("Settings", "InvFSK", CBInvFSK->Checked);
	CBInvPTT->Checked = pIniFile->ReadInteger("Settings", "InvPTT", CBInvPTT->Checked);
	delete pIniFile;
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::WriteIniFile(void)
{
	TMemIniFile *pIniFile = new TMemIniFile(m_IniName);
	pIniFile->WriteInteger("Window", "Top", Top);
	pIniFile->WriteInteger("Window", "Left", Left);
	pIniFile->WriteInteger("Window", "State", WindowState);
	pIniFile->WriteString("Settings", "Port", PortName->Items->Strings[PortName->ItemIndex]);
	pIniFile->WriteInteger("Settings", "FSK", RGFSK->ItemIndex);
	pIniFile->WriteInteger("Settings", "PTT", RGPTT->ItemIndex);
	pIniFile->WriteInteger("Settings", "InvFSK", CBInvFSK->Checked);
	pIniFile->WriteInteger("Settings", "InvPTT", CBInvPTT->Checked);
	if( !sys.m_WinNT || sys.m_pDLPort ){
		char bf[32];
		wsprintf(bf, "%X", m_wLPTA);
		pIniFile->WriteString("DirectAccess", "LPTADR", bf);
	}
	pIniFile->UpdateFile();
	delete pIniFile;
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::ListLPT(void)
{
	memset(&m_wLPT, 0, sizeof(m_wLPT));

	char bf[64];
	int n = 0;
  
  /*
	if( sys.m_pDLPort && sys.m_pDLPort->IsCapLPTList() ){
		int max = sys.m_pDLPort->LPTNumPorts();
		if( max > 3 ) max = 3;
		for( n = 0; n < max; n++ ){
			sys.m_pDLPort->SetLPTNumber(BYTE(n + 1));
			WORD port = sys.m_pDLPort->LPTBasePort();
			if( !port ) break;
			m_wLPT[n] = port;
			wsprintf(bf, "LPT%u", n+1);
			PortName->Items->Add(bf);
		}
	}
	if( n ) return;
  */
  
	const WORD _ta[]={0x378, 0x3bc, 0x278, 0};
	const WORD *pw = _ta;
	for( ; *pw; pw++ ){
		if( (_bInport(WORD((*pw) + 2)) & 0x14) == 0x04 ){
			m_wLPT[n] = *pw; n++;
			wsprintf(bf, "LPT%u", n);
			PortName->Items->Add(bf);
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::UpdatePort()
{
	if( sys.m_WinNT && !sys.m_pDLPort ) return;

	m_DisEvent++;
	if( m_wPortA ){
		RGFSK->Items->Strings[0] = "D0-D3";
		RGFSK->Items->Strings[1] = "D4-D7";
		RGFSK->Items->Strings[2] = "STROBE";
		RGPTT->Items->Strings[0] = "D0-D3";
		RGPTT->Items->Strings[1] = "D4-D7";
		RGPTT->Items->Strings[2] = "STROBE";
	}
	else {
		RGFSK->Items->Strings[0] = "TXD";
		RGFSK->Items->Strings[1] = "RTS";
		RGFSK->Items->Strings[2] = "DTR";
		RGPTT->Items->Strings[0] = "TXD";
		RGPTT->Items->Strings[1] = "RTS";
		RGPTT->Items->Strings[2] = "DTR";
	}
	m_DisEvent--;
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::UpdateComStat(void)
{
	char bf[128];

	if( m_wPortA ){
		wsprintf(bf, "Addr:%X", m_wPortA);
		LComStat->Color = clYellow;
	}
	else {
		wsprintf(bf, "Status:%s", m_hPort != INVALID_HANDLE_VALUE ? "OK" : "NG");
		LComStat->Color = m_hPort != INVALID_HANDLE_VALUE ? clBtnFace : clRed;
	}
	LComStat->Caption = bf;
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::OpenPort(void)
{
	ClosePort();
	OpenPort_();
	UpdateComStat();
	m_fsk.SetInvFSK(CBInvFSK->Checked);
	m_fsk.SetInvPTT(CBInvPTT->Checked);
	m_fsk.SetHandle(m_hPort, RGFSK->ItemIndex, RGPTT->ItemIndex);
}
//---------------------------------------------------------------------------
BOOL __fastcall TExtFSK::OpenPort_(void)
{
	AnsiString pname = PortName->Items->Strings[PortName->ItemIndex];

	m_wPortA = 0;
	m_fsk.SetLPT(m_wPortA);

	if( !strncmpi(pname.c_str(), "LPT", 3) ){
		WORD n = htow(pname.c_str() + 3);
		if( (n >= 1) && (n <= 3) ){
			n--;
			m_wPortA = m_wLPT[n];
		}
		else {
			m_wPortA = m_wLPTA;
		}
		if( m_wPortA ){
			m_fsk.SetLPT(m_wPortA);
			m_hPort = HANDLE(DWORD(INVALID_HANDLE_VALUE) + 1);
			return TRUE;
		}
	}
  if( pname.SubString(1,3) == "COM" ){
    pname = "\\\\.\\" + pname;
  }

	m_hPort = ::CreateFile( pname.c_str(),
					GENERIC_READ | GENERIC_WRITE,
					0, NULL,
					OPEN_EXISTING,
					FILE_ATTRIBUTE_NORMAL,
					NULL
	);
	if( m_hPort == INVALID_HANDLE_VALUE ) return FALSE;
	if( ::SetupComm( m_hPort, DWORD(256), DWORD(2) ) == FALSE ){
		::CloseHandle(m_hPort);
		m_hPort = INVALID_HANDLE_VALUE;
		return FALSE;
	}
	::PurgeComm( m_hPort, PURGE_TXABORT | PURGE_RXABORT | PURGE_TXCLEAR | PURGE_RXCLEAR );

	COMMTIMEOUTS TimeOut;

	TimeOut.ReadIntervalTimeout = 0xffffffff;
	TimeOut.ReadTotalTimeoutMultiplier = 0;
	TimeOut.ReadTotalTimeoutConstant = 0;
	TimeOut.WriteTotalTimeoutMultiplier = 0;
	TimeOut.WriteTotalTimeoutConstant = 20000;
	if( !::SetCommTimeouts( m_hPort, &TimeOut ) ){
		::CloseHandle( m_hPort );
		m_hPort = INVALID_HANDLE_VALUE;
		return FALSE;
	}
	::GetCommState( m_hPort, &m_dcb );
	m_dcb.BaudRate = 9600;
	m_dcb.fBinary = TRUE;
	m_dcb.ByteSize = 8;
	m_dcb.Parity = NOPARITY;
	m_dcb.StopBits = ONESTOPBIT;
	m_dcb.XonChar = 0x11;	// XON
	m_dcb.XoffChar = 0x13;	// XOFF
	m_dcb.fParity = 0;
	m_dcb.fOutxCtsFlow = FALSE;
	m_dcb.fInX = m_dcb.fOutX = FALSE;
	m_dcb.fOutxDsrFlow = FALSE;
	m_dcb.EvtChar = 0x0d;
	m_dcb.fRtsControl = RTS_CONTROL_DISABLE;
	m_dcb.fDtrControl = DTR_CONTROL_DISABLE;
	m_dcb.fTXContinueOnXoff = FALSE;
	m_dcb.XonLim = USHORT(256/4);
	m_dcb.XoffLim = USHORT(256*3/4);
	m_dcb.DCBlength = sizeof( DCB );

	if( !::SetCommState( m_hPort, &m_dcb ) ){
		::CloseHandle( m_hPort );
		m_hPort = INVALID_HANDLE_VALUE;
		return FALSE;
	}

	if( !::SetCommMask( m_hPort, EV_RXFLAG ) ){
		::CloseHandle(m_hPort);
		m_hPort = INVALID_HANDLE_VALUE;
		return FALSE;
	}
	return TRUE;
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::ClosePort(void)
{
	if( m_wPortA ){
		m_wPortA = 0;
		m_hPort = INVALID_HANDLE_VALUE;
	}
	if( IsOpen() ){
		m_fsk.Disable();
		::CloseHandle(m_hPort);
		m_hPort = INVALID_HANDLE_VALUE;
	}
	UpdateComStat();
}
//---------------------------------------------------------------------------
//	para:	Upper16bits	Speed(eg. 45)
//			Lower16bits	b1-b0	Stop (0-1, 1-1.5, 2-2)
//						b5-b2	Length
void __fastcall TExtFSK::SetPara(LONG para)
{
	m_fsk.SetPara(para);
  char ss[32];
  int baud = para >> 16;
  sprintf( ss, "%d baud", baud );
  LabelBaud->Caption = ss;
  killTimer();
  _LARGE_INTEGER tFreq;
  if( !QueryPerformanceFrequency( &tFreq ) /*|| baud == 45*/ ){ //No high resolution timer or 45 baud
    LabelBaud->Font->Color = clBlack;
    //Memo->Lines->Add( "No high resolution timer is supported. 75 baud is not available" );
    dblRate = 0.011;
    LabelBaud->Caption = "45 Baud";
  	if( ::timeGetDevCaps(&m_TimeCaps, sizeof(m_TimeCaps)) == TIMERR_NOERROR ){
	  	char bf[64];
		  wsprintf(bf, "TimeCapsMin = %ums", m_TimeCaps.wPeriodMin);
		  Memo->Lines->Add(bf);
		  ::timeBeginPeriod(m_TimeCaps.wPeriodMin);
		  m_uTimerID = ::timeSetEvent(11, 0, TimeProc, DWORD(this), TIME_PERIODIC);
	  }
	  if( !m_uTimerID ){
		  Memo->Lines->Add("The multimedia timer is not supported.");
	  }
    Memo->Lines->Add( "LOW TIMER" );
  }
  else{
    highTimer = new THighTimer(false);
    highTimer->Priority =
                          tpNormal;
                          //tpHigher;
                          //tpHighest;
                          //tpTimeCritical;
    LabelBaud->Font->Color = clPurple;
    if( baud == 45 ){
      dblRate = (double)0.022/(double)2.0;
    }
    else{
      dblRate = (double)1.0/(double)baud/(double)2.0;
    }
  }
  //Memo->Lines->Add( "HIGH TIMER" );
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::SetPTT(int sw, int msg)
{
	m_ptt = sw;
	m_fsk.SetPTT(sw);
	m_X = 0;
	if( msg ){
		if( m_WindowState == wsMinimized) return;
		Memo->Lines->Add(sw ? "PTT ON" : "PTT OFF");
	}
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::PutChar(BYTE c)
{
	if( !m_ptt ) return;

	m_fsk.PutByte(c);
	if( m_WindowState == wsMinimized) return;

	char bf[128];
	if( m_X ){
		int n = Memo->Lines->Count;
		if( n ) n--;
		strcpy(bf, Memo->Lines->Strings[n].c_str());
		wsprintf(&bf[strlen(bf)], " %02X", c);
		if( !m_ptt ) return;
		Memo->Lines->Strings[n] = bf;
	}
	else {
		wsprintf(bf, "%02X", c);
		Memo->Lines->Add(bf);
	}
	m_X++;
	if( m_X >= 8 ) m_X = 0;
#if MeasureAccuracy
	int d = int(m_fsk.GetPDiff() * 100000 / m_fsk.GetPFreq());
	if( d ){
		wsprintf(bf, "%u.%02ums", d / 100, d % 100);
		Caption = bf;
	}
#endif
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::PortNameChange(TObject *Sender)
{
	if( m_DisEvent ) return;

	OpenPort();
	UpdatePort();
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::SBMinClick(TObject *Sender)
{
	if( m_DisEvent ) return;

	WindowState = wsMinimized;
	m_WindowState = wsMinimized;

	Memo->Lines->Clear();
	m_X = 0;
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::RGFSKClick(TObject *Sender)
{
	if( m_DisEvent ) return;

	if( RGFSK->ItemIndex == RGPTT->ItemIndex ){
		m_DisEvent++;
		RGPTT->ItemIndex = (RGFSK->ItemIndex != ptRTS) ? ptRTS : ptDTR;
		m_DisEvent--;
	}
	m_fsk.SetHandle(m_hPort, RGFSK->ItemIndex, RGPTT->ItemIndex);
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::RGPTTClick(TObject *Sender)
{
	if( m_DisEvent ) return;

	if( RGFSK->ItemIndex == RGPTT->ItemIndex ){
		m_DisEvent++;
		RGFSK->ItemIndex = (RGPTT->ItemIndex != ptTXD) ? ptTXD : ptRTS;
		m_DisEvent--;
	}
	m_fsk.SetHandle(m_hPort, RGFSK->ItemIndex, RGPTT->ItemIndex);
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::CBInvFSKClick(TObject *Sender)
{
	if( m_DisEvent ) return;
	m_fsk.SetInvFSK(CBInvFSK->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::CBInvPTTClick(TObject *Sender)
{
	if( m_DisEvent ) return;
	m_fsk.SetInvPTT(CBInvPTT->Checked);
}
//---------------------------------------------------------------------------
void __fastcall TExtFSK::FormPaint(TObject *Sender)
{
	m_WindowState = WindowState;
}
//---------------------------------------------------------------------------

