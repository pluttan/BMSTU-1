program Project3_3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 veh = object
  chislo:real;
  chislov2:string;
  procedure Init(a:string);
  function cifr:integer;
  procedure vivod;
 end;

 Massiv = array of veh;

 mas = object
  tek,max:integer;
  vesh:massiv;
  procedure Init(t,m:integer);
  procedure zapoln;
  procedure vivod;
 end;

procedure mas.Init;
 begin
  tek:=t;
  max:=m;
  setlength(vesh,m);
 end;

procedure mas.zapoln;
 var i:integer;
 begin
  for i := 0 to tek-1 do
   read(vesh[i].chislo);
 end;

procedure mas.vivod;
 var i:integer;
 begin
  for i := 0 to tek-1 do
   writeln(vesh[i].chislo:3:3);
 end;

procedure veh.Init;
 var
  kod:integer;
 begin
  chislov2:=a;
  val(chislov2,chislo,kod);
 end;

function veh.cifr;
 var
  i,d:integer;
 begin
 d:=0; i:=1;
  while chislov2[i] <> '.' do
   begin
    i:=i+1;
   end;
  d:=length(chislov2);
  result:=d-i;
 end;

procedure veh.vivod;
 begin
  writeln('chislo: ',chislo,'; chislo: ',chislov2);
 end;

var
 V:veh;
 MA:mas;
 t,m:integer;
 a:string;
begin
 readln(a);
 V.Init(a);
 writeln('cifr pocle zapatoi: ',V.cifr);
 writeln;
 readln(t,m);
 MA.Init(t,m);
 MA.zapoln;
 MA.vivod;
 readln;
 readln;
end.
