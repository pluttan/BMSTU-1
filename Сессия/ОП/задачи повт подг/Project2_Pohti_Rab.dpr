program Project2_Pohti_Rab;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 Matrix = array of array of integer;


procedure cdvig (var a,c:Matrix; index,k,m:integer);
 var
  i,j:integer;
 begin
  for i := 0 to k-1 do
   begin
    for j := 0 to m-1 do
     begin
      c[i,j]:=a[i+1,j]
     end;
   end;
 end;
 
 procedure vivod (c:Matrix; m,k:integer);
 var
  i,j:integer;
 begin
  for i := 0 to k-1 do
   begin
    for j := 0 to m-1 do
     begin
      write(c[i,j]:4);
     end;
    writeln;
   end;
 end;

var
 b: array of integer;
 i, j, n, k, m: integer;
 a,c: Matrix;
begin
 randomize;
 readln (n, m);
 writeln;
 setlength (a, n, m);
 setlength (b, n);
 k:=0;

 for i := 0 to n-1 do
  b[i]:=0;

 for i := 0 to n-1 do
  begin
   for j := 0 to m-1 do
    begin
     a[i,j]:=random(10)-5;
     b[i]:=b[i]+a[i,j];
     write(a[i,j]:4);
    end;
   writeln;
  end;
         
 for i := 0 to n-1 do
  begin
   if b[i]>=1 then
    k:=k+1;
  end;
 setlength (c, k, m);

 writeln;

 for i := 0 to k-1 do
  begin
   for j := 0 to m-1 do
    begin
     if b[i]<1 then
      cdvig(a,c,i,k,m)
     else
      c[i,j]:=a[i,j];
    end;
  end;

 vivod(c,m,k);

 readln;
end.

