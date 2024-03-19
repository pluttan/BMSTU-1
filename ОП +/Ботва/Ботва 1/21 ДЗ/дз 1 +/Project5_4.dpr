program Project5_4;
{$APPTYPE CONSOLE}
uses SysUtils;
var eps, s, z: real;
    i, n, fact: integer;
begin
 readln(eps);
 s := 1;
 n := 1;
 while s - (1 / exp(1)) > eps do
  begin
   n := n+1;
   z := 1;
   fact := 1;
   for i := 1 to n do
    begin
     fact := fact * i;
     z := z * (-1);
     s := s + z / fact;
    end;
  end;
 writeln('Summ: ', s:10:10);
 writeln('Number of iteration: ', n);
 readln;
end.
