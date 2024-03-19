Program Ex_7_07c;
{$APPTYPE CONSOLE}
Uses SysUtils,
     RoomP in 'Ex_7_07\RoomP.pas';

Procedure Print(Var R:TRoomP);         
  Begin
     WriteLn('Square =', R.Square:6:2);
  End;
Var A:TRoomP; B:TVRoomP;
Begin
    A.Init(3.5,5.1);
    B.Init(3.5,5.1,2.7);
    Print(A);
    Print(B);
    ReadLn;
End.

