Program Ex4_10a;
{$APPTYPE CONSOLE}
Uses SysUtils;
Var a,b,r:integer;
Procedure nod(a,b:integer; var r:integer);
   Begin
       if a=b then r:=a
       else if a>b then nod(a-b,b,r)
                                           else nod(a,b-a,r)
    End;
Begin     WriteLn('Input A,B');
          ReadLn(a,b);
          nod(a,b,r);
          WriteLn(r);
          ReadLn;
End.

 