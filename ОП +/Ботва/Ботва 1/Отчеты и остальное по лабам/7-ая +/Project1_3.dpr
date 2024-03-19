program Project1_3;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
 a,n:integer;
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
 Function f2 (x:single) :boolean;
  var b2:boolean;
      ch1,ch2,i,n:integer;
   begin
     for i:=1 to n-1 do
      begin
       n:=n-1;
       ch1:=n; ch2:=i+1;
       if f1(ch1) = f1(ch2) then
       begin
        b2:=true;
        writeln('Na chto ono rackladuBaetca:',' ',ch1,' ',ch2);
        break;
       end;
      end;
     result:=b2;
   end;
begin
 writeln('BBedite n');
 readln(n);
 if n mod 2 = 0 then
  begin
   if f2(n) = true then
     writeln('Camo chuclo',' ',n)
  end
 else
  writeln('chuclo nechetnoe');
 ReadLn;
end.
