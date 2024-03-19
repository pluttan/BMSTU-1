program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
tochka = class
  x:integer;
  y:integer;
  z:integer;
    constructor create(x:integer; y:integer; z:integer);
 end;

otrezok = class (tochka)
  x1:integer;
  y1:integer;
  z1:integer;
  constructor create(x:integer; y:integer; z:integer;  x1:integer; y1:integer; z1:integer);
  procedure dlina;
  end;

  procedure otrezok.dlina;
   begin
    writeln(sqrt(sqr(x1-x)+sqr(y1-y)+sqr(z1-z)):5:10);
   end;

  constructor otrezok.create(x:integer; y:integer; z:integer;  x1:integer; y1:integer; z1:integer);
  begin
   inherited create(x, y, z);
   self.x1:=x1;
   self.y1:=y1;
   self.z1:=z1;
   end;


  constructor tochka.create(x:integer; y:integer; z:integer);
  begin
   self.x:=x;
   self.y:=y;
   self.z:=z;
  end;

var
 a:tochka;
 b:otrezok;
begin
 a:=tochka.create(5,4,3);
 b:=otrezok.create(1,2,3,4,5,6);
 writeln(a.x,' ',a.y,' ',a.z,' ');
 writeln(b.x,' ',b.y,' ',b.z,' ',b.x1,' ',b.y1,' ',b.z1,' ');
 b.dlina;
 readln;
end.
