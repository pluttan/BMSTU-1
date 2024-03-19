program Project2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

type Cyc = object
 x,y,r:single;
 procedure Init; {координаты центра}
 procedure radius;
 function Square:single;
end;

procedure Cyc.Init;
 begin
  writeln(' Input point x: ');
  readln(x);
  writeln(' Input point y: ');
  readln(y);
 end;

procedure Cyc.radius;
 begin
  writeln(' Input radius: ');
  readln(r);
 end;

function Cyc.Square:single;
 begin
  Square:=pi*sqr(r);
 end;

type Sphere = object(Cyc)
 z:single;
 procedure InitV;
 function V:single;
end;

procedure Sphere.InitV;
 begin
  Init;
  writeln(' Input point z: ');
  readln(z);
  radius;
 end;

function Sphere.V:single;
 var
 v2:single;
 begin
  V:=4/3*square*r;
 end;

var
 A:Sphere;
begin
 A.InitV;
 writeln(' ------------ ');
 writeln(' S= ',A.Square:4:4);
 writeln(' ------------ ');
 writeln(' V^3= ',A.V:4:4);
 readln;
end.
