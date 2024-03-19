program Project10_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 simvol = object
  s:char;
  procedure Init(a:char);
  function kode:integer;
  procedure vivod;
 end;

 pechat = object (simvol)
  hr:string;
  procedure Init(a:char; h:string);
  procedure vivod;
 end;

procedure pechat.Init;
 begin
  simvol.Init(a);
  hr:=h;
 end;

procedure pechat.vivod;
 begin
  simvol.vivod;
  write('shrift: ',hr);
 end;

procedure simvol.Init;
 begin
  s:=a;
 end;

function simvol.kode;
 begin
  kode:=ord(s);
 end;

procedure simvol.vivod;
 begin
  writeln('simvol: ', s, '; kod simvola: ', kode);
 end;

var
 Si:simvol;
 P:pechat;
 a:char;
 h:string;
begin
 readln(a);
 Si.Init(a);
 Si.vivod;
 readln(h);
 P.Init(a,h);
 P.vivod;
 readln;
end.
