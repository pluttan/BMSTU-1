Program Ex_7_01b;
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
Var A:TRoom = (length:3.5; width:5.1);
Begin
    WriteLn('S= ',A.Square:8:3);
    ReadLn;
End.
 