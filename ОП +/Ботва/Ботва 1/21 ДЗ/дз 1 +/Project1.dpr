program Zadani1_1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
    y:real;
   begin
       WriteLn('Do nreoBreazoBania y=',y:20:16);
       y:=1;
       y:= y/6000;
       y:= exp(y);
       y:= sqrt(y);
       y:= y/14;
       y:= 14*y;
       Y:= sqr(y);
       y:= ln (y);
       y:= 6000*y;
     WriteLn('nocle nreoBreazoBania y=', y:20:16);
     Readln;
    end.
