program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

 procedure vvod (var a: array of word; var n:word);
  var
   i:word;
  begin
  randomize;
  for i := 0 to n-1 do
   begin
    a[i]:=random(100);
    write(a[i]:4, n);
   end;
  end;

   procedure vuvod (var a: array of word; var n:word);
  var
   i:word;
  begin
  for i := 0 to n-1 do
   begin
    write(a[i]:4, n);
   end;
  end;

 {procedure zamen (var a,b: array of word; var n,m:word);
  var
  j,i:word;
  begin
  for j := 0 to m-1 do
   begin
    if (a[0,j]>a[0,j+1]) then
     for i := 0 to n-1 do
      begin
       b[i,j]:=a[i,j];
       a[i,j+1]:=a[i,j];
       a[i,j]:=b[i,j];
      end;
   end;
  end;          }

   procedure zamen (var a: array of word; var n:word);
  var
  j,t,i:word;
  begin
   for i := 0 to n-2 do
    for j := i to n-1 do
     if a[i]>a[j] then
      begin
       t:=a[i];
       a[i]:=a[j];
       a[j]:=t;
      end;
  end;

var
 a:array of  word;
 n,t,i,j:word;
begin
 readln(n);
 setlength(a,n);
 vvod(a,n);
 writeln;
 writeln;
 zamen(a,n);
 vuvod(a,n);
 readln;
end.
