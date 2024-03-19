program Ex2_5;
{$APPTYPE CONSOLE}
uses SysUtils;

Var a,b,S1,S2,d,eps,x:Single;n,i:Integer;
 Begin 
      WriteLn('Input a, b and eps:');
      ReadLn(a,b,eps);
      S2:=1E+10;
      n:=5;
      repeat
        S1:=S2;
        n:=n*2;
        d:=(b-a)/n;
        S2:=0;
        x:=a;
        for i:=1 to n do
           begin
              S2:=S2+x*x-1;
              x:=x+d;
           end;
        S2:=S2*d;
       until abs(S2-S1)<eps;
      WriteLn('I=', S2:10:6);
      ReadLn;
End.

 