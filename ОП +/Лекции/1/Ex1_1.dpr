program Ex1_1;
{$APPTYPE CONSOLE}
uses SysUtils;
var a,b:integer;
begin
    Write('Input two numbers:');
    Readln (a,b);
    while a<>b do
      if a>b then a:=a-b
              else b:=b-a;
    Writeln('Result:', a);
    Readln;
end.

 