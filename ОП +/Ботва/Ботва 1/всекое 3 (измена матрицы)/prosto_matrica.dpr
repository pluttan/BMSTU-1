program prosto_matrica;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 mas = array [1..10, 1..10] of integer;

procedure cozd_i_viv (i,j,n:integer; var a:mas);
 begin
  for i := 1 to n do
   begin
    for j := 1 to n do
     begin
      a[i,j]:=random(10);
      write(a[i,j],' ');
     end;
    writeln;
   end;
 end;

procedure izmen (i,j,n:integer; var a:mas);
 var
  b,c:mas;
 begin
  for i := 1 to n do
   for j := 1 to n do
    b[i,j]:=a[i,2];
  for i := 1 to n do
   for j := 1 to n do
    c[i,j]:=a[i,4];
  for i := 1 to n do
   for j := 1 to n do
    a[i,2]:=c[i,j];
  for i := 1 to n do
   for j := 1 to n do
    a[i,4]:=b[i,j];
 end;

procedure vivod (i,j,n:integer; var a:mas);
 begin
  for i := 1 to n do
   begin
    for j := 1 to n do
     begin
      write(a[i,j],' ');
     end;
    writeln;
   end;
 end;

var
 n,i,j:integer;
 a:mas;
begin
 Randomize;
 readln(n);
 writeln;
 cozd_i_viv(i,j,n,a);
 izmen(i,j,n,a);
 writeln;
 vivod(i,j,n,a);
 readln;
end.
