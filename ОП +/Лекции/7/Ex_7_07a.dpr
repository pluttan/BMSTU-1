Program Ex_7_07a;
{$APPTYPE CONSOLE}
Uses SysUtils,
     RoomP in 'RoomP.pas';
Var A:TRoomP; B:TVRoomP;
Begin
    A.Init(3.5,5.1);
    A.Print;
    B.Init(3.5,5.1,2.7);
    B.Print;
    ReadLn;
End.

