program Zadani1_2;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
    y, x, a, o, y1, y2: Double;
   begin
     WriteLn('BBEDITE x');
     Readln (x);
     y1:= (exp(x)-exp(-x))/2;
     y2:= (exp(x)+exp(-x))/2;
     y:=y2*y2-y1*y1;
     a:=abs(1-y);
     o:=a*1;
     WriteLn('BBUBOD DANNUX',' ', y1:20:16,' ', y2:20:16, y:20:16);
     WriteLn('Absolytnaa nogreshnost',' ', a:20:16);
     WriteLn('Otnositelnaa nogreshnost',' ', o:20:16);
     Readln;
    end.
