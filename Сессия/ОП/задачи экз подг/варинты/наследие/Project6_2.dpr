program Project6_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 pram = object
  dlin,vis:integer;
  chto1:string;
  procedure Init(d,v:integer);
  function cht:string;
  procedure vivod;
 end;

 paral = object (pram)
  hir:integer;
  chto2:string;
  procedure Init(d,v,h:integer);
  function cht:string;
  procedure vivod;
 end;

procedure paral.Init;
 begin
  pram.Init(d,v);
  hir:=h;
 end;

function paral.cht;
 begin
  if (dlin = vis) and (vis = hir) then
   result:='koob'
  else
   result:='prizma?';
 end;

procedure paral.vivod;
 begin
  writeln('dlina: ',dlin,'; visota: ',vis,'; hirina: ',hir,'; chto eto: ',cht);
 end;

procedure pram.Init;
 begin
  dlin:=d;
  vis:=v;
 end;

function pram.cht;
 begin
  if dlin = vis then
   result:='kvadrat'
  else
   result:='pramougolnik';
 end;

procedure pram.vivod;
 begin
  writeln('dlina: ',dlin,'; visota: ',vis,' chto eto: ',cht);
 end;

var
 B:paral;
 A:pram;
 d,v,h:integer;
begin
 readln(d,v);
 A.Init(d,v);
 A.vivod;
 readln(h);
 B.Init(d,v,h);
 B.vivod;
 readln;
end.
