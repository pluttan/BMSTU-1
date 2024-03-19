Program Ex4_10b;
{$APPTYPE CONSOLE}
Uses SysUtils;
Var a,b,r:integer;
Function nod(a,b:integer):integer;
      begin if a=b then Result:=a
                   else
                     if a>b then Result:=nod(a-b,b)
                            else Result:=nod(a,b-a)
      end;
Begin WriteLn('Input A,B');
      ReadLn(a,b);
      r:=nod(a,b);
      WriteLn(r);
      ReadLn;
End.

 