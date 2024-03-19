program Project1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

procedure percc (a,b:word);
 var
 i,c:integer;
 begin
  if b = 2 then
   while a<>0 do
    begin
     c:=a mod b;
     writeln(c);
     a:=a div b;
    end
  else
   if b = 8 then
    while a<>0 do
     begin
      c:=a mod b;
      writeln(c);
      a:=a div b;
     end
  else
   if b = 16 then
    while a<>0 do
     begin
      c:=a mod b;
      writeln(c);
      a:=a div b;
     end;
 end;

var
a,b:word;
begin
readln(a,b);
percc(a,b);
readln;
end.
