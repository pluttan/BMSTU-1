program Project1v2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Type
 Room = object
   square,price:real;
   procedure vvod(a,b:integer);
   procedure vvubod;
   function vuchecl:real;
 end;

procedure Room.vvod;
 begin
  square:=a;
  price:=b;
 end;

procedure Room.vvubod;
 begin
  writeln('nlolllad:', square:4:4, ' ', 'ctoumoct:', price:4:4);
 end;

function Room.vuchecl;
 begin
  Result:=price/square;
 end;

var
 a,b:integer;
 d:Room;
begin
 readln(a,b);
 writeln('--------');
 d.vvod(a,b);
 writeln('--------');
 d.vvubod;
 writeln('--------');
 writeln('ctoumost plolllad metra komnatu nomera:', d.vuchecl:4:4);
 readln;
end.
