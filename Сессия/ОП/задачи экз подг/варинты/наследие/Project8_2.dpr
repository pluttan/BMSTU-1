program Project8_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 tochka = object
  x,y:integer;
  procedure Init(n,m:integer);
  procedure vivod;
 end;

 okr = object (tochka)
  r:integer;
  procedure Init(n,m,g:integer);
  function S:real;
  procedure vivod;
 end;

procedure okr.Init;
 begin
  tochka.Init(n,m);
  r:=g;
 end;

function okr.S;
 begin
  S:=pi*r*r;
 end;

procedure okr.vivod;
 begin
  tochka.vivod;
  write('plohad orkygnosti: ', s:4);
 end;

procedure tochka.Init;
 begin
  x:=n;
  y:=m;
 end;

procedure tochka.vivod;
 begin
  writeln('koordinata x: ', x, '; koordinata y: ',y);
 end;

var
 A:tochka;
 B:okr;
 n,m,g:integer;
begin
 readln(n,m);
 A.Init(n,m);
 A.vivod;
 readln(g);
 B.Init(n,m,g);
 B.vivod;
 readln;
end.
