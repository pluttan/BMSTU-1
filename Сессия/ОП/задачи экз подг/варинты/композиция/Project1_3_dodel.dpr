program Project1_3_dodel;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 
 zap = record
  cel:integer;
  veh:real;
 end;

 zapic = object
  zapzap:zap;
  procedure Init(a:integer;b:real);
  function SetCel:integer;
  function SetVeh:real;
  procedure vivod;
 end;

 massEv = array of zapic;

 massiv = object
  kol:integer;
  zapic:massEv;
  procedure Init(k:integer);
  function SetKol:integer;
  procedure SetZapic(i:integer);
  {function uporad:integer;
  function max:integer;
  procedure vivod;}
 end;

procedure massiv.Init;
 begin
  kol:=k;
  setlength(zapic,kol);
 end;

function massiv.SetKol;
 begin
  SetKol:=kol;
 end;

procedure massiv.SetZapic;
 begin
  writeln(zapic[i].zapzap.veh,' ',zapic[i].zapzap.cel);
 end;

procedure zapic.Init;
 begin
  zapzap.cel:=a;
  zapzap.veh:=b;
 end;

procedure zapic.vivod;
 begin
  writeln('celoe: ', zapzap.cel, '; vehectv: ', zapzap.veh);
 end;

function zapic.SetCel;
 begin
  SetCel:=zapzap.cel;
 end;

function zapic.SetVeh;
 begin
  SetVeh:=zapzap.veh;
 end;

var
 Z:zapic;
 M:massiv;
 a,cifra,i,cifra2,cifra3,k:integer;
 b:real;
begin
 writeln('vvedite chisla');
 readln(a,b);
 Z.Init(a,b);
 writeln('vvedite 1 dla vivoda celgo chisla ili 2 dla behectvennogo');
 readln(cifra);
 if cifra = 1 then
  writeln(Z.SetCel)
 else
  if cifra = 2 then
   writeln(Z.SetVeh)
  else
   writeln('nevernui zapros');
 writeln;
 writeln('razmer massiva: ');
 readln(k);
 M.Init(k);
 writeln('dla vivoda razmera massiva vvedite 1');
 readln(cifra2);
 if cifra2 = 1 then
  writeln(M.SetKol)
 else
  writeln('nevernui zapros');
 writeln('dla vivoda massiva vvedite 1');
 writeln;
 readln(cifra3);
 if cifra3 = 1 then
  for i := 0 to M.Setkol - 1 do
   M.SetZapic(i)
 else
  writeln('nevernui zapros');
 
 readln;
end.
