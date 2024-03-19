program Project9_2_-;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 troika = object
  str:string;
  ch1,ch2:integer;
  procedure Init(a);
  function rez:integer;
  procedure vivod;
 end;

procedure troika.Init;
 begin
  str:=a;
 end;

function troika.rez;
 begin

 end;

var
 C:troika
 a:string;
begin
 readln(a);

 readln;
end.
