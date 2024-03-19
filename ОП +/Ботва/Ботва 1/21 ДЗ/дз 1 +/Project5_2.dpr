program Project5_2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
 eps, S, r:extended;
 N,k,k1,k3,i:integer;
begin
 N:=0; r:=0; S:=1; k1:=1;k3:=1;
 Writeln('Vyberite tochnost:');
 readln(eps);
 // while abs(r) > eps do
 // begin
 while s <= 1/exp(1) do
  begin
   if k1 mod 2 = 0 then
    k1:=1
   else
    k1:=-1;
   for i := 1 to k1 do
    k3:=k3*i;
   k1:=k1+1;
   k3:=1;
   S:= S + k1 / k3;
   N:=N+1;
 // end;
  end;
  WriteLn('Summa = ',S:10:6,' Kol-vo povtorov = ',N);
  ReadLn;
 end.
