program Project14_vrode_pravilno;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 doska = object
  dlin,hir:integer;
  procedure Init(d,h:integer);
  function square:integer;
  function dli(d:integer):integer;
  function hi(h:integer):integer;
  procedure vivod(d,h:integer);
 end;

 doska2 = object (doska)
  tolh:integer;
  procedure Init(d,h,t:integer);
  function v:integer;
  function tol(t:integer):integer;
  procedure vivod(d,h,t:integer);
 end;

procedure doska2.Init;
 begin
  doska.Init(d,h);
  tolh:=t;
 end;

function doska2.v;
 begin
  v:=dlin*hir;
 end;

function doska2.tol;
 begin
  tol:=t;
 end;

procedure doska2.vivod;
 begin
  doska.vivod(d,h);
  write('tolh: ', tol(t));
 end;

procedure doska.Init;
 begin
  dlin:=d;
  hir:=h;
 end;

function doska.dli;
 begin
  dli:=d;
 end;

function doska.hi;
 begin
  hi:=h;
 end;

function doska.square;
 begin
  square:=dlin*hir;
 end;

procedure doska.vivod;
 begin
  writeln('dlinna: ', dli(d), '; hir: ',hi(h));
 end;

var
 A:doska;
 B:doska2;
 d,h,t:integer;
begin
 readln(d,h);
 A.Init(d,h);
 A.square;
 A.vivod(d,h);
 readln(t);
 B.Init(d,h,t);
 B.v;
 B.vivod(d,h,t);
 readln;
end.
