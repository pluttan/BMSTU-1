program Project4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function findmin(i,n:integer; var mini:integer; a: array of integer):integer;
 var
  j,min:integer;
 begin
  min:=10000;
  for j := i to n-1 do
   if a[j] < min then
    begin
     min:=a[j];
     mini:=j;
    end;
    result:=mini;
 end;

procedure vivod(n:integer; a:array of integer);
 var
  i:integer;
 begin
  for i := 0 to n-1 do
   write(a[i],' ');
  writeln;
 end;

 procedure sort(n:integer; var a: array of integer);
 var
  t,i,min,mini:integer;
 begin
   for i := 0 to n-1 do
    begin
     findmin(i,n,mini,a);
     writeln(mini);
     t:=a[i];
     a[i]:=a[mini];
     a[mini]:=t;
     vivod(n,a);
    end;
 end;

               

var
 a:array of integer;
 n,i:integer;
begin
 readln(n);
 setlength(a,n);
 randomize;
 for i := 0 to n-1 do
  a[i]:=random(100);
 vivod(n,a);
 sort(n,a);

 vivod(n,a);
 readln;
end.
