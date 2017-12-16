//Copyright+LGPL

//-----------------------------------------------------------------------------------------------------------------------------------------------
// Copyright 2000-2017 Makoto Mori, Nobuyuki Oba
//-----------------------------------------------------------------------------------------------------------------------------------------------
// This file is part of EXTFSK64.

// EXTFSK64 is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

// EXTFSK64 is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.

// You should have received a copy of the GNU Lesser General Public License along with EXTFSK64.  If not, see
// <http://www.gnu.org/licenses/>.
//---------------------------------------------------------------------------------------------------------------------------------------------


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
