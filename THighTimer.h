//---------------------------------------------------------------------------

#ifndef THighTimerH
#define THighTimerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Windows.h>
//---------------------------------------------------------------------------
class THighTimer : public TThread
{
private:
protected:
  void __fastcall Execute();
public:
  __fastcall THighTimer(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
