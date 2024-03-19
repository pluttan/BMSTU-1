program nomer1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
 a:array [0..1000] of integer;
 i,n,j,s:integer;
begin
 randomize;
 readln(n);
 writeln('Ucxodnuu maccuB');
 for i := 1 to n do
 begin
  a[i]:=random(90)-23;
  write(a[i],' ');
 end;
  for i := 2 to n do
   begin
   s:=(a[i]);
   j:=i-1;
   while abs(s)<abs(a[j]) do
    begin
     a[j+1]:=a[j];
     j:=j-1;
    end;
   a[j+1]:=s;
  end;
    writeln;
  writeln('OtcortiroBannuu maccuB');
  for i := 1 to n do
    write(a[i],' ');
  readln;
end.
