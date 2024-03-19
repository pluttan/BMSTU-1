Program Ex4_13;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type mas=array[1..3] of char;
Var a:mas='ABC'; Var pole:mas;
procedure Perest(n,m:integer; Const r:mas; Var pole:mas);
  Var r1:mas; k,j,i:integer;
  Begin
      if n>m then
        begin
         for i:=1 to m do Write(pole[i]); WriteLn;
        end
      else
        for i:=1 to m-n+1 do
           begin
              pole[n]:=r[i];
              k:=1;
              for j:=1 to m-n+1 do
                 if j<>i then
                            begin   r1[k]:=r[j];   k:=k+1; end;
                Perest(n+1,m,r1,pole);
           end;
  End;
Begin
     Perest(1,3,a,pole);
     ReadLn;
End.

 