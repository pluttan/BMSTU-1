program Project1_Rab;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 ctol = object
 sp,vus,dlin,hir:integer;
 procedure Init(v,d,h :integer);
 function Spov:integer;
 procedure vivod;
end;

pic_ctol = object (ctol)
 kol:integer;
 procedure Init(v2,d2,h2,n :integer);
 function v:real;
 procedure vivod2;
end;

procedure pic_ctol.Init;
 begin
  ctol.Init(v2,d2,h2);
  kol:=n;
 end;

function pic_ctol.v;
 begin
  Result:=Spov/kol;
 end;

procedure pic_ctol.vivod2;
 begin
  writeln ('plohad poverhnostu ctola = ', Spov);
  writeln ('obiom ashikov ctola = ', v:4:2);
 end;

procedure ctol.Init;
 begin
  vus:=v;
  dlin:=d;
  hir:=h;
 end;

function ctol.Spov;
 begin
  Result:=(vus*dlin)*2+(hir*vus)*2+(hir*dlin)*2;
 end;

procedure ctol.vivod;
 begin
  writeln ('plohad poverhnostu ctola = ', Spov);
 end;

var
 v,d,h,n,v2,d2,h2:integer;
 A:ctol;
 B:pic_ctol;
begin
 readln(v,d,h);
 A.Init(v,d,h);
 A.Spov;
 A.vivod;
 writeln;
 readln(v2,d2,h2,n);
 B.Init(v2,d2,h2,n);
 B.v;
 B.Spov;
 B.vivod2;
 readln;
end.
