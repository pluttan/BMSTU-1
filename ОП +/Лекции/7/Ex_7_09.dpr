Program Ex_7_09;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type pTRoomD=^TRoomD;
     TRoomD=object
               length, width:single;
               function Square:single; virtual;
               constructor Init(l,w:single);
               destructor Done; virtual;    
             end;
Type pTBRoomD=^TBRoomD;
     TBRoomD=object(TRoomD)
                pB:pTRoomD;
                function Square:single; virtual;
                function BSquare:single;
                constructor Init(l,w:single; lb,wb:real);
                destructor Done; virtual;
              end;
Function TRoomD.Square;
   Begin Square:= length* width; End;
Constructor TRoomD.Init;
   Begin length:=l;  width:=w; End;
Destructor TRoomD.Done;
  Begin End;
Constructor TBRoomD.Init;
  Begin
    inherited Init(l,w);
    if (lb=0)or(wb=0) then pB:=nil
    else pB:= New(pTRoomD,Init(lb,wb));
  End;
Function TBRoomD.BSquare;
  Begin
    if pB<>nil then BSquare:=pB^.Square
               else BSquare:=0;
  End;
Function TBRoomD. Square;
  Begin
     Square:= inherited Square+BSquare;
  End;
Destructor TBRoomD.Done;
   Begin
     if pB<>nil then Dispose(pB);
   End;
Var A:TBRoomD; pB1:pTBRoomD; pB2:pTRoomD;
   Begin

     A.Init(3.2,5.1,2.5,1);
     WriteLn(A.Square:6:2,A.BSquare:6:2);
     A.Done;

     pB1:=New(pTBRoomD);
     pB1^.Init(3.2,5.1,2.5,1);
     WriteLn(pB1^.Square:6:2,pB1^.BSquare:6:2);
     pB1^.Done;
     Dispose(pB1);


     pB2:=new(pTBRoomD);
     pTBRoomD(pB2)^.Init(3.2,5.1,2.5,1);
     WriteLn(pB2^.Square:6:2,pTBRoomD(pB2)^.BSquare:6:2);
     pB2^.Done;
     Dispose(pB2);


     ReadLn;
End.

