Program Ex4_11;
{$APPTYPE CONSOLE}
Uses SysUtils;
Var a,b,eps,x:real;
Procedure root(a,b,eps:real;var r:real);
  Var f,x:real;
   Begin  x:=(a+b)/2;             
              f:=x*x-1;
              if abs(f)>eps then
                       if (a*a-1)*f>0 then root(x,b,eps,r)
                                               else root(a,x,eps,r)
              else r:=x;
    End;
Begin     WriteLn('Input a,b,eps');
          ReadLn(a,b,eps);
          root(a,b,eps,x);
          WriteLn('Root x=',x:9:7);
          ReadLn;
End.

 