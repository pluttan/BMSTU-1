program Project12_vrode_pravilno;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 dom = object
  age, metr, stoim:integer;
  procedure Init(a,m,s:integer);
  function ag(a:integer):integer;
  function met(m:integer):integer;
  function stoi(s:integer):integer;
 end;

 prodaga = object (dom)
  odin:real;
  procedure Init(a,m,s:integer);
  function odmetr:real;
  function odi:real;
 end;

function prodaga.odmetr;
 begin
  odmetr:=stoim/metr;
 end;

procedure prodaga.Init;
 begin
  dom.Init(a,m,s);
  odin:=odmetr;
 end;

function prodaga.odi;
 begin
  odi:=odin;
 end;

procedure dom.Init;
 begin
  age:=a;
  metr:=m;
  stoim:=s;
 end;

function dom.ag;
 begin
  ag:=age;
 end;

function dom.met;
 begin
  met:=metr;
 end;

function dom.stoi;
 begin
  stoi:=stoim;
 end;

var
 P:prodaga;
 D:dom;
 a,m,s:integer;
begin
 readln(a,m,s);
 D.Init(a,m,s);
 writeln('god postroiki: ', D.ag(a),'; obhii metrag: ', D.met(m), '; stoimost: ', D.stoi(s));
 P.Init(a,m,s);
 writeln;
 writeln('god postroiki: ', P.ag(a),'; obhii metrag: ', P.met(m), '; stoimost: ', P.stoi(s),'; stoimost odnogo metra: ', P.odi:3:3);
 readln;
end.
