program serg_bds000proj;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var
 a,n,sh1,sh2, r:integer;
 Function f1 (x:integer) :boolean;
  var n,i:integer;
      f1:boolean;
  begin
   f1:=true;
   for i := 2 to n-1 do
    if x mod i = 0 then
     begin
       f1:=false;
       break;
     end;
     result:=f1;
  end;

 procedure f2 ( var x, ch1, ch2, r: integer) ;
  var i,c1,c2:integer;
      fl:boolean;
   begin
     r:=0; fl:=false;
     c1:=x;
     for i:=0 to x-1 do
      begin
       c1:=c1-1; c2:=i+1;
       if f1(c1) and f1(c2) then
       begin
        ch1:=c1; ch2:=c2;
        fl:=true;
        break;
       end;
      end;
     if not fl then r:=1;
   end;

begin
 writeln('BBedite n');
 readln(n);
 if n mod 2 = 0 then
  begin
   f2(n,sh1,sh2,r);
   writeln('Na chto ono rackladuBaetca:',' ',sh1,' ',sh2);
   writeln('Camo chuclo:',' ',n);
  end
 else
  writeln('chuclo nechetnoe');
 ReadLn;
end.
