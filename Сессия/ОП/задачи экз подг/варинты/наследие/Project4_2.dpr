program Project4_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 doska = object
  dlinna,hirina:integer;
  procedure Init(d,h:integer);
  procedure vivod;
 end;

 korobka = object (doska)
  visota:integer;
  procedure Init(d,h,v:integer);
  function ob:integer;
  procedure vivod;
 end;

procedure korobka.Init;
 begin
  doska.Init(d,h);
  visota:=v;
 end;

function korobka.ob;
 begin
  result:=visota*dlinna*hirina;
 end;

procedure korobka.vivod;
 begin
  writeln('dlinna: ', dlinna,'; hirina: ', hirina,'; visota: ',visota,'; obiom: ', ob);
 end;

procedure doska.Init;
 begin
  dlinna:=d;
  hirina:=h;
 end;

procedure doska.vivod;
 begin
  writeln('dlinna: ', dlinna,'; hirina: ', hirina);
 end;

var
 A:doska;
 B:korobka;
 d,h,v:integer;
begin
 readln(d,h);
 A.Init(d,h);
 A.vivod;
 writeln;
 readln(v);
 B.Init(d,h,v);
 B.vivod;
 readln;
end.
