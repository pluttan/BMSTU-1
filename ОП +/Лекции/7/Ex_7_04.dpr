Program Ex_7_04;
{$APPTYPE CONSOLE}
Uses SysUtils,
     Room in 'Ex_7_02\Room.pas';
Type TFlat=object
            n:byte;
            rooms:array[1..15] of TRoom;
            function FlatSquare:single;
            procedure Init(an:byte; Const arooms:array of TRoom);
           end;
Procedure TFlat.Init;
  Var i:byte;
     Begin 
          n:=an;
          for i:=1 to n do
              rooms[i].Init(arooms[i-1].length, arooms[i-1].width);
     End;
Function TFlat.FlatSquare;
  Var S:single; i:integer;
     Begin
          S:=0;
          for i:=1 to n do S:=S+rooms[i].Square;
          Result:=S;
     End;
Var mas:array[1..3]of TRoom= ((length:2.5; width:3.75),
                              (length:2.85; width:4.1),
                              (length:2.3;   width:2.8));
Var F:TFlat;
Begin
       F.Init(3,mas);
       WriteLn('S flat =',F.FlatSquare);
       ReadLn;
End.

