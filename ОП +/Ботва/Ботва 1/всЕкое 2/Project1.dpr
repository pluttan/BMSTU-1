program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 d,i,k:integer;
 s:string;
begin
 k:=0;
 i:=1;
 readln(s);
 d:=length(s);
 if d <> 0 then
 begin
  while i <> d do
   begin
    i:=i+1;
    if (s[i] = ' ') and (s[i-1] <> ' ') then
     k:=k+1;
    end;
  end;
  if (s = ' ') or (s[d] = ' ') then
     writeln(k)
    else
     writeln(k+1);
  readln;
end.
