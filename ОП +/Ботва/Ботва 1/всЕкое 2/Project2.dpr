program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 p,i,b,d,k:integer;
 s:string;
begin
 k:=0;
 i:=0;
 b:=0;
 readln(s);
 d:=length(s);
 while i <> d do
  begin
   i:=i+1;
   if s[i] <> ' ' then
    b:=b+1
   else
    begin
     if (s[i-1] <> ' ') and (b>3) then
      k:=k+1;
     b:=0;
    end;
  end;
   if b > 3 then
    k:=k+1;
  writeln(k);
  readln;
end.
