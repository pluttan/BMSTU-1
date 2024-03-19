program nomer4;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in 'Unit1.pas',
  Unit2 in 'Unit2.pas';

var
   a,b:real;
begin
 readln(a,b);
 root(a,b);
 root2(a,b);
 readln;
end.
