program Project1_dodel;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 i,j,k,n,m,l:integer;
 b:array of integer;
 a:array of array of integer;
begin

 randomize;
 readln(n,m);
 setlength (a,n,m);
 setlength (b,m);

 for i := 0 to m- 1 do
  b[i]:=0;

 for i := 0 to n-1 do
  begin
   for j := 0 to m- 1 do
    begin
     a[i,j]:=random(40)-20;
     b[j]:=b[j]+a[i,j];
     write(a[i,j]:4);
    end;
   writeln;
  end;

 for i := 0 to n- 1 do
  begin
   for j := 0 to m- 1 do
    begin
     if b[j]<0 then
      a[i,j]:=a[i,j+1]
    end;
  end;

  writeln;

  for i := 0 to m- 1 do
   begin
    if b[i]>0  then
    k:=k+1;
    write(b[i]:4);
   end;

  writeln;      writeln;

  for i := 0 to n- 1 do
   begin
    for j := 0 to k- 1 do
     begin
      write(a[i,j]:4);
     end;
    writeln;
   end;

   readln;
end.
