Program Ex_7_01c;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type TRoom = object
                  length, width:single;
                  function Square:single;
                  procedure Init(l,w:real);
             end;
Function TRoom.Square;
   Begin
        Square:= length*width;
   End;
Procedure TRoom.Init;
   Begin
        length:=l;  width:=w;
   End;
Var A:TRoom;
Begin
    A.Init(3.5,5.1); 
    WriteLn('S= ',A.Square:8:3);
    ReadLn;
End.
 