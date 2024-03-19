unit Unit1;

interface
 procedure root(a,b:real);
 
implementation
procedure f(var h:real; r:real);
 begin
  h:=arctan(r)+r-1;
 end;
procedure root;
 var c,ya,yb,yc:real;
 begin
  f(ya,a);
  f(yb,b);
  while (abs(ya-yb)>0.001) do
   begin
    c:=(a+b)/2;
    f(ya,a);
    f(yb,b);
    f(yc,c);
   if ((yc < 0) and (yb >0)) or ((yc > 0) and (yb < 0)) then
    a:=c
   else
    if ((yc < 0) and (ya > 0)) or ((yc > 0) and (ya < 0)) then
     b:=c;
   end;
    writeln;
    writeln('Dla y=arctg(x)+x-1');
    writeln(c);
    writeln;
 end;
end.
