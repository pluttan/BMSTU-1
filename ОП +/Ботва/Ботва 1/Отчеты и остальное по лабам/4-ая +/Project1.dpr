program laba4;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
  a:array[1..20] of integer;
  i,mini,maxi:integer;
  b,min,max:real;
 begin
  min:=101; max:=-1;
  Randomize;
   for i := 1 to 20 do
    begin
     a[i]:=random(54)+1;
     write(a[i],' ');
    end;
   for i := 1 to 20 do
    begin
     if a[i]<min then
      begin
       min:=a[i];
       mini:=i;
      end;
     if a[i]>max then
      begin
       max:=a[i];
       maxi:=i;
      end;
    end;
     writeln;
     writeln('maximalnoe znachenie',' ', max:2:2,' ','nomer tochki',' ', maxi);
     writeln('minimalnoe znachenie',' ', min:2:2,' ','nomer tochki',' ', mini);
     readln;
 end.


