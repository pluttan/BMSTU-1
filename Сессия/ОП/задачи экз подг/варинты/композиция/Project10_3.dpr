program Project10_3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 tovar = object
  kol,cena:integer;
  name:string;
  procedure Init(n:string;c,k:integer);
  function GetCena:integer;
  procedure vivod;
 end;

 mas = array of tovar;

 magaz = object
  kol_tovarov:integer;
  opican:string;
  pibl:real;
  cam_tovar:mas;
  procedure Init(kol,opic,pribl);
 end;

procedure magaz.Init;
 begin
  kol_tovarov:=kol
  setlength(cam_tovar, kol_tovarov);
  
 end;

procedure tovar.Init;
 begin
  name:=n;
  cena:=c;
  kol:=k;
 end;

function tovar.GetCena;
 begin
  GetCena:=kol;
 end;

procedure tovar.vivod;
 begin
  writeln('nazvanie: ', name, '; cena: ', cena, '; kollichestvo ',kol);
 end;

var
 T:tovar;
 k,c,kol:integer;
 n:string;
begin
 writeln('nazvanie ','cena ','kollichestvo');
 readln(n,c,k);
 T.Init(n,c,k);
 T.vivod;
 writeln;
 readln(kol);
 readln;
end.
