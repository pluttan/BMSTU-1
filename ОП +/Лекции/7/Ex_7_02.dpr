Program Ex_7_02;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Room in 'Room.pas';
Var A:TRoom;
Begin
    A.Init(3.5,5.1);
    WriteLn('Room: length = ', A.length:6:2,
             '; width =', A.width:6:2);
    WriteLn('Square =',A.Square:8:2);
    ReadLn;
End.

