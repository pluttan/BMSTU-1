program dinam_matrica;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 mas = array of array of integer;

var
 n,i,j:integer;
 a:mas;
begin
 Randomize;
 readln(n);
 setlength(a, n);
 for i := 0 to n do
  begin
   for j := 0 to n do
    begin
      a[i,j]:=random(10);
      write(a[i,j],' ');
    end;
   writeln;
  end;
  readln;
end.
