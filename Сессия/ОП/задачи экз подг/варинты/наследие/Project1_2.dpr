program Project1_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 chislo = object
  ch:integer;
  procedure Init(c:integer);
  function kol:integer;
  procedure vivod;
 end;

 chislo2 = object (chislo)
  ch2:real;
  procedure Init(c:integer;c2:real);
  procedure vivod;
 end;

procedure  chislo2.Init;
 begin
  chislo.Init(c);
  ch2:=c2;
 end;

procedure chislo.Init;
 begin
  ch:=c;
 end;

procedure chislo2.vivod;
 begin
  writeln('chislo: ', ch, ' kolluchestvo cifr: ',kol,'; Beh chislo: ', ch2:4:4);
 end;

function chislo.kol:integer;
 var
  k:integer;
 begin
  k:=0;
  while ch > 0 do
   begin
    ch:=ch div 10;
    k:=k+1;
   end;
  result:=k;
 end;

procedure chislo.vivod;
 begin
  writeln('chislo: ', ch, ' kolluchestvo cifr: ', kol);
 end;


var
 c:integer;
 c2:real;
 A:chislo;
 B:chislo2;
begin
 readln(c);
 A.Init(c);
 A.vivod;
 writeln;
 readln(c2);
 B.Init(c,c2);
 B.vivod;
 readln;
end.
