Program Ex_7_05;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Room in 'Ex_7_02\Room.pas';
  Type TBRoom=object(TRoom)
                  pB: ^TRoom;
                  function BSquare:single;
                  procedure InitAll(l,w:single;  lb,wb:single);
           end;
Procedure TBRoom. InitAll;
  Begin
       Init(l,w);
       if (lb=0)or(wb=0) then pB:=nil
               else
                   begin
                       New(pB);
                        pB^.Init(lb,wb);
                   end;
       End;
  Function TBRoom.BSquare;
     Begin
          if pB=nil then BSquare:= Square
          else BSquare:= Square+pB^.Square;
     End;
Var B:TBRoom;
Begin
       B. InitAll(3.4,5.1,1.8,0.8);
       WriteLn('BSquare =',B.BSquare:8:2);
       ReadLn;
End.

