program Project4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure cort(a: array of student, n:integer);
var
 b:array of integer;
 i:integer;
begin
 setlength(b,n);
 for i := 0 to n do
  begin
   b[i].ocenku:=
  end;
end;

type student = record;
 name:string;
 group:string;
 ocenku:real;
end;
var
 a:array of student;
 n,i:integer;
begin
 readln(n);
 for i := 0 to n do
  begin
   readln(a[i].name);
   readln(a[i].group);
   readln(a[i].ocenku);
  end;
 cort(a,n);
end.
