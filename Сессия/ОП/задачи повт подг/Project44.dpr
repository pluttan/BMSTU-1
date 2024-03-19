program Project44;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type

 Matrix = array [1..100, 1..100] of integer;
 MinMatrix = array [1..100] of integer;

procedure obnul_b(var b:MinMatrix; var kol:integer; m:integer);
 var
  j:integer;
 begin
  for j := 1 to m do
   b[j]:=0;
  kol:=0;
 end;

 procedure cozd(var a:Matrix; var b:MinMatrix; n,m:integer);
 var
  i,j:integer;
 begin
  randomize;
  for i := 1 to n do
   begin
    for j := 1 to m do
     begin
      a[i,j]:=random(20)-8;
      b[j]:=b[j]+a[i,j];
     end;
   end;
 end;

procedure kollich(var b:MinMatrix; var kol:integer; m:integer);
 var
  j:integer;
 begin
  for j := 1 to m do
   begin
    write(b[j]:3);
    if b[j]>0 then
     kol:=kol+1;
   end;
  writeln; 
 end;

procedure vivod(a:Matrix; n,m:integer);
 var
  i,j:integer;
 begin
  for i := 1 to n do
   begin
    for j := 1 to m do
     begin
      write(a[i,j]:3);
     end;
     writeln;
   end;
 end;

procedure cdvig(var a:Matrix; var b:MinMatrix; m,n:integer);
 var
 i,j,q,p,k,f,z:integer;
 begin
  for i := 1 to n do
   begin
    for j := f to m do
     begin
      if b[z]<0 then
       begin
        q:=j;
        f:=j-1;
        for k := q to m do
         a[i,k]:=a[i,k+1];
       end;
      z:=z+1;
     end;
   end;
 end;

procedure vivod_Nugn(a:Matrix; n,kol:integer);
 var
  i,j:integer;
 begin
  for i := 1 to n do
   begin
    for j := 1 to kol do
     begin
      write(a[i,j]:3);
     end;
     writeln;
   end;
 end;

var
 n,m,kol,k,l:integer;
 b:MinMatrix;
 a:Matrix;
begin
 readln(n,m);
 writeln;

 obnul_b(b,kol,m);
 cozd(a,b,n,m);
 vivod(a,n,m);
 writeln;
 kollich(b,kol,m);
 cdvig(a,b,m,n);
 writeln;
 vivod_Nugn(a,n,kol);

 readln;
end.
