Program Ex_7_01a;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type TRoom = object
                  length, width:single;
                  function Square:single;
             end;
Function TRoom.Square;
   Begin
        Result:= length* width;
   End;
Var A:TRoom;
Begin
    A.length:=3.5;
    A. width:=5.1;
    WriteLn('S = ',A.Square:8:3);
    ReadLn;
End.
 