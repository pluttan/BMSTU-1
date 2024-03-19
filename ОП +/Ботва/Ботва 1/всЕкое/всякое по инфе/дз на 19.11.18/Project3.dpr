program Project3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure cort(a:array of string; n:integer);
var
 p,c,p2,r:string;
 d,d2,i,j:integer;
begin
 for i := 0 to n-1 do
  for j := 0 to n do
   begin
    ñ:=a[i];
    d:=length(a[i]);
    p:=delete(c,2,d-1);
    d2:=length(a[i+1]);
    p2:=delete(a[i+1],2,d-1);
    if ord (p) > ord (p2) then
    begin
      r:=a[i];
      a[i]:=a[i+1];
      a[i+1]:=r;
    end;
   end;
end;

var
 a:array of sring;
 b,i,n:integer;
begin
 readln(n);
 setlenght(a,n);
 for i := 0 to n do
  readln(a[i]);
 cort(a,n);
 readln;
end.
