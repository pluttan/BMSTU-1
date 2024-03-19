Unit RoomP;
interface
Type TRoomP=object
                length, width:single;
                function Square:single;virtual;
                procedure Print;
                constructor Init(l,w:single);
            end;
Type TVRoomP = object(TRoomP)
                height:single;
                function Square:single;virtual;
                constructor Init(l,w,h:single);
               end;
implementation
Function TRoomP.Square;
   Begin Result:= length* width;  End;
Procedure TRoomP.Print;
   Begin WriteLn('Square =', Square:6:2);  End;
constructor TRoomP.Init;
   Begin length:=l;  width:=w;  End;
constructor TVRoomP.Init;
   Begin
       inherited Init(l,w);
       height:=h;
   End;
Function TVRoomP.Square;
  Begin
    Square:=2*(inherited Square+height*(length+width));   
  End;
end.
