//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "THighTimer.h"
#include "Main.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

// 注意：異なるスレッドが所有する VCL のメソッド/関数/プロパティを
//       別のスレッドの中から扱う場合，排他処理の問題が発生します。
//
//       メインスレッドの所有するオブジェクトに対しては Synchronize
//       メソッドを使う事ができます。他のオブジェクトを参照するため
//       のメソッドをスレッドクラスに追加し，Synchronize メソッドの
//       引数として渡します。
//
//       たとえば UpdateCaption を以下のように定義し、
//
//          void __fastcall Unit1::UpdateCaption()
//          {
//            Form1->Caption = "スレッドから書き換えました";
//          }
//
//       Execute メソッドの中で Synchronize メソッドに渡すことでメイ
//       ンスレッドが所有する Form1 の Caption プロパティを安全に変
//       更できます。
//
//          Synchronize(UpdateCaption);
//
//---------------------------------------------------------------------------
extern TExtFSK *pMain;

__fastcall THighTimer::THighTimer(bool CreateSuspended)
  : TThread(CreateSuspended)
{
  FreeOnTerminate = true;
}
//---------------------------------------------------------------------------
void __fastcall THighTimer::Execute()
{
  _LARGE_INTEGER tFreq;
  _LARGE_INTEGER tCounter;
  _LARGE_INTEGER tCounterLast;
  QueryPerformanceFrequency( &tFreq );
  double tInterval;
  QueryPerformanceCounter( &tCounterLast );
  for(;;){
    QueryPerformanceCounter( &tCounter );
    tInterval = (double)tFreq.QuadPart * pMain->dblRate;
    if( (double)( tCounter.QuadPart - tCounterLast.QuadPart ) > tInterval ){
      pMain->TimeProc2();
      tCounterLast.QuadPart = tCounter.QuadPart;
    }
    if( Terminated )
      break;
    //Application->ProcessMessages();
  }
}
//---------------------------------------------------------------------------
