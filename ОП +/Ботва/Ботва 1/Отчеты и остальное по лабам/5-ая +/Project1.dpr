program Project1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
 a:array [1..10, 1..10] of integer;
 n,m,i,j,k1,k2:integer;
begin
 randomize;
 writeln('BBedite n');
 readln(n);
 m:=n; k1:=1;
 Writeln('Matrica nxn');
 for i := 1 to n do
  for j := 1 to m do
   begin
   a[i,j]:=random(44);
   if k1 <> m then
    write(a[i,j],' ')
   else
    begin
     k1:=0;
     writeln(a[i,j],' ');
    end;
   k1:=k1+1;
   end;
 writeln;
 Writeln('Matrica nxn noBernutaa na 180 graducoB');
  for i := n downto 1 do
   for j := m downto 1 do
    begin
     if k1 <> m then
      write(a[i,j],' ')
     else
      begin
       k1:=0;
       writeln(a[i,j],' ');
      end;
     k1:=k1+1;
    end;
 readln;
end.
