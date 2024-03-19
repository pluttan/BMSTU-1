Program Ex_7_03;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Room in 'Ex_7_02\Room.pas';
Type TVRoom = object(TRoom)
             height:single;
             function V:single;
             procedure NewInit(l,w,h:single);
         end;
Procedure TVRoom.NewInit;
  Begin
       Init(l,w);
       height:=h;
  End;
Function TVRoom.V;
  Begin
      V:=Square*height;
  End; 
 Var A:TVRoom;
 Begin
       A.NewInit(3.4,5.1,2.8);
       WriteLn('Square = ', A.Square:6:2);
       WriteLn('V = ', A.V:6:2);
       ReadLn;
end.
