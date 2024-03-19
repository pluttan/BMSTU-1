program Project2;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 polka = object
  vis:integer;
  procedure Init(v:integer);
  procedure vivod;
 end;

 stelag = object (polka)
  hir,dlin:integer;
  procedure Init(v,d,h:integer);
  function ob:integer;
  procedure vivod;
 end;

procedure stelag.Init;
 begin
  polka.Init(v);
  dlin:=d;
  hir:=h;
 end;

function stelag.ob :integer;
 begin
  ob:=vis*2*dlin*hir;
 end;

procedure stelag.vivod;
 begin
  writeln('obiom raboch mesta: ', stelag.ob);
 end;

procedure polka.Init;
 begin
  vis:=v;
 end;

procedure polka.vivod;
 begin
  writeln('visota polki: ', vis);
 end;

var
 v,d,h:integer;
 A:polka;
 B:stelag;
begin
 readln(h);
 A.Init(h);
 A.vivod;
 writeln;
 readln(v,d);
 B.Init(v,d,h);
 B.ob;
 B.vivod;
 readln;
end.
