program Project7_2_-;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 treug = object
  vis:real;
  tochka1x,tochka1y,tochka2x,tochka2y,tochka3x,tochka3y,osn:integer;
  procedure Init(x1,y1,x2,y2,x3,y3:integer);
  function square:real;
  procedure vivod;
 end;

procedure treug.Init;
 begin
  tochka1x:=x1;
  tochka1y:=y1;
  tochka2x:=x2;
  tochka2y:=y2;
  tochka3x:=x3;
  tochka3y:=y3;
 
   if y1 = y2 then
    begin
     vis:=sqr(y3-y1);
     osn:=sqr(x2-x1);
    end
   else
    if y1 = y3 then
     begin
      vis:=sqr(y2-sqr(y3-y1));
      osn:=sqr(x3-x1);
     end
   else
    if y2 = y3 then
     begin
      vis:=sqr(y1-sqr(y3-y1));
      osn:=sqr(x2-x3);
     end;
 end;

function treug.square;
 begin
  result:=1/2*osn*vis;
 end;

procedure treug.vivod;
 begin
  writeln('tochka1: ',tochka1x,':',tochka1y,'; tochka2: ',tochka2x,':',
  tochka2y,'; tochka3: ',tochka3x,':',tochka3y,'; plohad: ',square:0:4);
 end;

var
 Z:treug;
 x1,y1,x2,y2,x3,y3:integer;
begin
 readln(x1,y1,x2,y2,x3,y3);
 Z.Init(x1,y1,x2,y2,x3,y3);
 Z.vivod;
 readln;
end.
