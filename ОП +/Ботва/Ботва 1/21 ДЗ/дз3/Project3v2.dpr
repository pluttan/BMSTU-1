program Project3v2;

{$APPTYPE CONSOLE}

uses
 SysUtils;

type car = object
 load_capacity:single; {2000 kg - max}
 price_km,weight:single;
 procedure init;
 function price_per_tonn:single;
end;

procedure car.init;
 begin
  writeln(' Input price of car: ');
  readln(price_km);
  writeln(' Weight: ');
  readln(weight);
 end;

function car.price_per_tonn:single;
 begin
  price_per_tonn:=price_km/weight;
 end;

//---------------------------------------------------//

type mass_of_cars = object
 n:byte; {input earlier}
 cars:array[1..100] of car;
 procedure new_init;
 function efficar:single;
end;

procedure mass_of_cars.new_init;
 var
  i:byte;
 begin
  for i:=1 to n do
   begin
    writeln(i,' =================== ');
    cars[i].init;
    writeln(' Price per tonn: ',cars[i].price_per_tonn:4:4);
   end;
 end;

function mass_of_cars.efficar:single;
 var
  max:single;
  i,imax:byte;
 begin
  max:=cars[1].price_per_tonn;
  for i:=1 to n do
   begin
    if cars[i].price_per_tonn>max then
     begin
      max:=cars[i].price_per_tonn;
      imax:=i;
     end;
   end;
  efficar:=imax;
 end;

var
 A:mass_of_cars;
begin
 writeln(' Input maximum elements of cars: ');
 read(A.n);
 writeln(' Autopark: ');
 A.new_init;
 writeln;
 writeln(' Number of most efficince Car: ',A.efficar:4:4);
 readln;
end.
