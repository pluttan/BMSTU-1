program Project2;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type mass = object
 dlin:integer;
 a:array of integer;
 procedure init(n:integer);
end;

{Type matr = object
 b:array of mass;
end;}

procedure mass.init(n:integer);
 var
  i:integer;
 begin
  dlin:=n;
  setlength(a, n);
  for i := 0 to n-1 do
   readln(a[i]);
 end;


var
 n:integer;
 M:mass;
begin
 writeln('kollichestvo');
 readln(n);   
 M.init(n);
 readln;
end.
