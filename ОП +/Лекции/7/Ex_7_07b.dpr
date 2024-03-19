Program Ex_7_07b;
{$APPTYPE CONSOLE}
Uses SysUtils,
     RoomP in 'Ex_7_07\RoomP.pas';

Var pA: ^TRoomP; B:TVRoomP;
Begin
    B.Init(3.5,5.1,2.7);
    WriteLn('Square =', B.Square:6:2);
    pA:=@B;
    WriteLn('Square =', pA^.Square:6:2);
    ReadLn;
end.
 