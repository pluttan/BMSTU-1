Unit Room;
Interface
Type TRoom = object
                length, width:single;
                function Square:single;
                       procedure Init(l,w:single);
              end;
Implementation
Function TRoom.Square;
   Begin
        Result:= length* width;
   End;
Procedure TRoom.Init;
   Begin
        length:=l;  width:=w;
   End;
End.

