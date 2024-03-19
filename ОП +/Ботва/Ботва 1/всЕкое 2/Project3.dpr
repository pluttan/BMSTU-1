program Project3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function strok(s:string; a,b:integer):string;
 var
 d,i:integer;
 st:string;
 begin
  for i := a to b do
   st:=st+s[i];
  result:=st;
 end;

var
 s:string;
 a,b:integer;
begin
 readln(s);
 readln(a,b);
 writeln(strok(s,a,b));
 readln;
end.
