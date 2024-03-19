program nomer3;
 {$APPTYPE CONSOLE}
uses
  SysUtils;

var
 a,b:array[1..10000] of integer;
 p:array[1..3]of integer;
 pr: set of byte;
 bt: set of byte;
 n,i,c,j,l,k:integer;
begin
 pr:=[2,6,3];
 bt:=[1,7,9];
 randomize;
 k:=0;
 readln(n);
 writeln;
 for i := 1 to n do
  begin
   a[i]:=random(1200000);
   write(a[i],' ');
  end;
 for i := 1 to n do
 begin
  j:=a[i];
  while a[i] <> 0 do
   begin
   c:=a[i]mod 10;
  if (c in pr) then
   begin
   if c = 2 then
   p[1]:=p[1]+1
    else
   if c = 6 then
   p[2]:=p[2]+1
    else
   if c = 3 then
   p[3]:=p[3]+1;
   end
  else
   if (c in  bt) then
    l:=l+1;
    a[i]:=a[i]div 10;
   end;
    if (p[1]>=1) and (p[2]>=1) and (p[3]>=1) and (l=0) then
     begin
     k:=k+1;
     b[k]:=j;
     end;
  p[1]:=0; p[2]:=0; p[3]:=0;
 end;       
 writeln;
 if k>0 then
  writeln(k);
 if k <> 0 then
  for i := 1 to k do
    write(b[i],' ')
  else
   writeln('takix chicel net');
 readln;
end.

