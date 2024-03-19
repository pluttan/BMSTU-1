program Project5_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

 Const
  gl: set of char=['A','a','E','e','U','u','O','o','Y','y'];

Type
 clovo = object
 slovo:string;
  procedure Init(s:string);
  function kol:integer;
  procedure vivod;
 end;

 glas = object (clovo)
  procedure Init(s:string);
  function chet:integer;
  procedure vivod;
 end;

procedure glas.Init;
 begin
  clovo.Init(s);
 end;

function glas.chet;
 var
  k,i:integer;
 begin
  k:=0;
  for i := 1 to kol do
   if slovo[i] in gl then
    k:=k+1;
  result:=k;
 end;

procedure glas.vivod;
 begin
  writeln('clovo: ',slovo,'; kollichectvo glasn: ',chet);
 end; 

procedure clovo.Init;
 begin
  slovo:=s;
 end;

function clovo.kol;
 begin
  result:=length(slovo);
 end;

procedure clovo.vivod;
 begin
  writeln('clovo: ',slovo,'; kollichectvo bukv: ',kol);
 end;

var
 B:glas;
 A:clovo;
 s,s2:string;
begin
 readln(s);
 A.Init(s);
 A.vivod;
 writeln;
 B.Init(s);
 B.vivod;
 readln;
end.
