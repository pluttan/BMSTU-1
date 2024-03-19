program Ex1_2a;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var A,B,C,D,E,X1,X2:Single;
Begin
     WriteLn('Input A,B,C');
     Read(A);
     Read(B,C);
     WriteLn('A=', A:3:1, ' B=', B:3:1, ' C=',C:3:1);
     D:=sqrt(sqr(B)-4*A*C);
     E:=2*A;
     X1:=(-B+D)/E;
     X2:=(-B-D)/E;
     WriteLn('X1=',X1:10:6,' X2=',X2:10:6);
     ReadLn;
     Readln;
End.




 