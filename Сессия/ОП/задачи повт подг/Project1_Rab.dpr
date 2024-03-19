program Project1_Rab;

{$APPTYPE CONSOLE}

uses
 SysUtils;

type
  Matrix = array of array of real;

procedure delete_column(var a: Matrix; var index,k,n:integer);
 var
  i,j:integer;
 begin
  for i := 0 to n-1 do
   begin
     for j := 0 to k-1 do
      begin
       if j >= index then             
        a[i,j]:=a[i,j+1];
      end; 
   end;
 end;

 procedure vvod(var n,m:integer; var a:Matrix);
 var
  i,j:integer;
 begin
  randomize;
  for i := 0 to n-1 do
   begin
    for j := 0 to m-1 do
     begin
      readln(a[i,j]);
     end;
   end;
  end;

procedure vivod(var n,m:integer; var a:Matrix);
  var
   i,j:integer;
  begin
   for i := 0 to n-1 do
    begin
     for j := 0 to m-1 do
      begin
       write(a[i,j]:4:7, ' ');
      end;
     writeln;
    end;
  end;

 procedure podhot(var b:array of integer; var m,n,k:integer; var a:Matrix);
  var
   i,j:integer;
  begin
   for i := 0 to m-1 do
    b[i]:=0;
   for j := 0 to m-1 do
    begin
     for i := 0 to n-1 do
      begin
       if a[i,j] < 0.00001 then
        b[j] := 1;
      end;
    end;

   for i := 0 to m-1 do
    write(b[i], ' ');

   for i := 0 to m-1 do
    if b[i] = 1 then
     k:=k+1;

   for j := 0 to m-1 do
    begin
     if b[j]=0 then
      delete_column(a, j, k, n);
    end;
  end;

 procedure vivod1(var n,k:integer; var a:Matrix);
  var
   i,j:integer;
  begin
   for i := 0 to n-1 do
    begin
     for j := 0 to k-1 do
      begin
       write(a[i,j]:4:7, ' ');
      end;
     writeln;
    end;
  end;

var
 b: array of integer;
 a: Matrix;
 n,m,k:integer;
begin
 readln(n, m);
 writeln;
 setlength(b, m);
 setlength(a, n, m);
 vvod(n,m,a);
 vivod1(n,m,a);
 writeln;
 writeln;
 podhot(b,m,n,k,a);
 writeln;
 writeln;
 vivod(n,k,a);
 readln; 
end.
