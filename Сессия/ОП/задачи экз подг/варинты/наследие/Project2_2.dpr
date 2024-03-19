program Project2_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 chislo_zbach = object
  bookvu:string;
  procedure Inic(a:string);
  function znach:integer;
  procedure vivod;
 end;

 strochka = object (chislo_zbach)
  kol:integer;
  procedure Inic(a:string ;n:integer);
  function str:string;
  procedure vivod;
 end;

 procedure strochka.Inic;
  begin
   chislo_zbach.Inic(a);
   kol:=n;
  end;

 function strochka.str:string;
  var
   i:integer;
  begin
   for i := 1 to kol do
    bookvu:=bookvu+bookvu[1];
   result:=bookvu;
  end;

 procedure strochka.vivod;
  begin
   writeln(str);
  end;

procedure chislo_zbach.Inic;
 begin
   bookvu:=a;
 end;

function chislo_zbach.znach:integer;
 begin
  result:= Ord (bookvu[1]);
 end;

procedure chislo_zbach.vivod;
 begin
  writeln('chislo: ', bookvu, '; znachenie cimbola: ', znach);
 end;

var
 C:chislo_zbach;
 D:strochka;
 a:string;
 n:integer;
begin
 readln(a);
 C.Inic(a);
 C.vivod;
 writeln;
 readln(n);
 D.Inic(a,n);
 D.vivod;
 readln;
end.
