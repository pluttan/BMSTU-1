 program nomer2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var a:array[1..8, 1..8] of integer;
 i,j,min,minpr,k:integer;
begin
 writeln ('Ucxodnaa matrica');
 writeln;
 k:=1; min:=100000; minpr:=1;
 randomize;
 for i := 1 to 8 do
  for j := 1 to 8 do
   begin
    a[i,j]:=random(100)-80;
    if k <> 8 then
     begin
      k:=k+1;
      write(a[i,j]:4);
     end
    else
     begin
      k:=1;
      writeln(a[i,j]:4);
     end;
   end;

   for i := 1 to 8 do
    for j:= i+1 to 8 do
      if a[i,j]<min then
       min:=a[i,j];

   for i := 2 to 8 do
    for j:= 1 to i-1 do
      if a[i,j]<min then
       minpr:=minpr*a[i,j];

     writeln;
     writeln('minimaloe chislo Bepxneu diagonali',' ',min);
     writeln;
     if minpr <> 1 then
      writeln('npouzBedenie chicel nugneu diagonali menllle minimalnogo chicla Bepxneu diagonali',' ',minpr)
     else
      writeln('nige glaBnoi diafonali net chicel menshe minimalnogo chicla Bepxneu diagonali');
   readln;
end.
