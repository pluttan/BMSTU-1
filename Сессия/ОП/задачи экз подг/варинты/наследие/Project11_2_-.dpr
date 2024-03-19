program Project11_2_-;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 line = object
  x1,x2,x3,y1,y2,y3:integer;
  procedure Init(tx1,tx2,tx3,ty1,ty2,ty3:integer);
  function pr:boolean;
  procedure vivod;
 end;

procedure line.Init;
 begin
  x1:=tx1; y1:=ty1;
  x2:=tx2; y2:=ty2;
  x3:=tx3; y3:=ty3;
 end;

function line.pr;
 begin

 end;

var
 tx1,tx2,tx3,ty1,ty2,ty3:integer;
begin
 readln(tx1,tx2,tx3,ty1,ty2,ty3);

 readln;
end.
