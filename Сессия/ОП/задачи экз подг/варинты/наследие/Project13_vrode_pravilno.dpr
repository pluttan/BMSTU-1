program Project13_vrode_pravilno;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 okno = object
  dlin,hir:integer;
  procedure Init(d,h:integer);
  function square:integer;
  procedure vivod;
 end;

 galuzi = object (okno)
   danet:string;
   procedure Init(d,h:integer;a:string);
   function dane(a:string):string;
   procedure vivod;
  end;

function galuzi.dane;
 begin
  if a = 'with' then
   dane:=a
  else
   dane:='without';
 end;

procedure galuzi.Init;
 begin
  okno.Init(d,h);
  danet:=dane(a);
 end;

procedure galuzi.vivod;
 begin
  okno.vivod;
  writeln('galuzi: ', danet);
 end;

procedure okno.Init;
 begin
  dlin:=d;
  hir:=h;
 end;

function okno.square;
 begin
  square:=dlin*hir;
 end;

procedure okno.vivod;
 begin
  writeln('dlinna: ', dlin, '; hirina: ', hir);
 end;

var
 G:galuzi;
 O:okno;
 d,h:integer;
 a:string;
begin
 readln(d,h);
 O.Init(d,h);
 O.square;
 O.vivod;
 writeln;
 readln(a);
 G.Init(d,h,a);
 G.square;
 G.vivod;
 readln;
end.
