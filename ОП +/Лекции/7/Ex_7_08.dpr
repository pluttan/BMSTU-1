Program Ex_7_08;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type pTRoomD=^TRoomD;
     TRoomD=object
               length, width:single;
               function Square:single; virtual;
               constructor Init(l,w:single);
               destructor Done;
              end;
Type pTVRoomD=^ TVRoomD;
     TVRoomD = object(TRoomD)
                  height:single;
                  function Square:single; virtual;
                  constructor Init(l,w,h:single);
               end;
Function TRoomD.Square;
   Begin
        Square:= length* width;
   End;
Constructor TRoomD.Init;
   Begin
        length:=l;  width:=w;
   End;
Destructor TRoomD.Done;
  Begin
  End;
Constructor TVRoomD.Init;
  Begin
       inherited Init(l,w);
       height:=h;
  End;
Function TVRoomD.Square;
  Begin
      Square:=2*(inherited Square+height*(length+ width));
  End;
Var pA: pTRoomD; pB:pTVRoomD;
Begin
    pA:=New(pTRoomD);
    pA^.Init(3.5,5.1);
    WriteLn('Square =', pA^.Square:6:2);
    pA^.Done;
    Dispose(pA);

    pB:=New(pTVRoomD);
    pB^.Init(3.5,5.1,2.7);
    WriteLn('Square =', pB^.Square:6:2);
    pB^.Done;
    Dispose(pB);

    pA:=New(pTVRoomD);
    pTVRoomD(pA)^.Init(3.5,5.1,2.7);
    WriteLn('Square =', pA^.Square:6:2);
    pA^.Done;
    Dispose(pA);
    ReadLn;
End.

