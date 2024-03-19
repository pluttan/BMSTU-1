program Project5;
{$APPTYPE CONSOLE}
uses
  SysUtils;
Var
    i,n:integer;
    x,k1,k2,k,eps,s,kol:real ;
 begin
  n:=0; kol:=0;
  k:=1; k1:=1; k2:=1;
  s:=1;
   readln(eps);// 10 â -4 è 10 â -5
  while s>eps do
   begin
    n:= n+1;
    for i := 1 to n do
     k2:=k2*i;
    if (n mod 2 = 0) then
     k1:=1
    else
     k2:=2;
    s:=s+k1/k2;
    k:=k+1;
    kol:=kol+1;
   end;
   writeln(kol:5:5);
   readln;
 end.
