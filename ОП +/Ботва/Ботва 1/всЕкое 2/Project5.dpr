program Project5;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 akk = record
  name:string;
  pol:string;
  age:integer;
 end;

var
 sr:single;
 b,i:integer;
 a:array [1..100] of akk;
begin
 randomize;
 for i := 1 to 100 do
  begin
   a[i].name:='Hel';
   b:=random(2);
   if b = 1 then
    a[i].pol:= 'male'
   else
    a[i].pol:= 'female';
   a[i].age:=random(50)+1;
  end;

 for i := 1 to 100 do
  begin
   write(a[i].pol, ' ', a[i].age);
   writeln;
  end;

 for i := 1 to 100 do
  sr:=sr+a[i].age;
 sr:=sr/100;
 writeln ('cpednii vozract ugrokov: ', sr:4:4);

   readln;
end.
