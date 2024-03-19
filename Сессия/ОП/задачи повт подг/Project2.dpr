program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
 i,j,n,m,sum,st,max,maxj,maxi:integer;
 a: array [1..100, 1..100] of integer;
begin
 randomize;
 readln(n,m);
 max:=-1000000;

 for i := 1 to n do
  begin
   for j := 1 to m do
    begin
     a[i,j]:=random(20)-10;
    end;
  end;

  for i := 1 to n do
  begin
   for j := 1 to m do
    begin
     write(a[i,j]:3);
    end;
   writeln;
  end;

  for i := 1 to n do
  begin
   for j := 1 to m do
    begin
     if a[i,j]>max then
      begin
       max:=a[i,j];
       maxi:=i;
       maxj:=j;
      end;
    end;
  end;

  writeln;
  writeln(max,' ',maxi,' ',maxj);

  for i := 1 to n do
   begin
    sum:=0;
    for j := 1 to m do
     begin
      sum:=sum+a[i,j];
     end;
     a[i,1]:=sum;
   end;

   writeln;

   for i := 1 to n do
  begin
   for j := 1 to m do
    begin
     write(a[i,j]:3);
    end;
   writeln;
  end;

  st:=1;
  for i := 1 to n-1 do
   begin
    for j := 1 to m do
     a[i,j]:=a[i+1,j];
   end;
   
   writeln;

   for i := 1 to n do
  begin
   for j := 1 to m do
    begin
     write(a[i,j]:3);
    end;
   writeln;
  end;

  writeln;
  readln(n);
  writeln;

  for i := 1 to n do
   begin
    for j := 1 to n do
     begin
      a[i,j]:=random(20)-10;
     end;
   end;

  for i := 1 to n do
   begin
    for j := 1 to n do
     begin
      write(a[i,j]:3);
     end;
    writeln; 
   end;

   writeln;

   for i := 1 to n do
    write(a[i,i]:3);

   writeln;

   for i := 1 to n do
    write(a[i,n-i+1]:3);

 readln;
end.
