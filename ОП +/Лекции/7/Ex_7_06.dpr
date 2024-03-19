Program Ex_7_06;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Room in 'Ex_7_02\Room.pas';
Type TVRoom2 = object(TRoom)
                  height:single;
                  function Square:single;
                  procedure Init(l,w,h:single);
              end;
Procedure TVRoom2.Init;
  Begin
       inherited Init(l,w);   { TRoom.Init(l,w);}
       height:=h;
  End;
Function TVRoom2.Square;
  Begin
      Square:=2*(inherited Square+height*(length+width));    {об-ращаемся к переопределенному методу базового класса}
  End;
 Var A:TVRoom2;
 Begin
       A.Init(3.4,5.1,2.8);
       WriteLn('Square = ',A.Square:6:2);
       ReadLn;
End.

