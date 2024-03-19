Program Ex2_4a;
{$APPTYPE CONSOLE}
uses  SysUtils;
var S,R,X,eps:Single;
 Begin
       WriteLn('Input x and epsilon:');
       ReadLn(X,eps);
       S:=0;
       R:=1;
       while abs(R)>eps do
         begin
           S:=S+R;
           R:=-R/X;
         end;
       WriteLn('x=', x:6:2,' S=', S:8:2,' R=', R:8:6);
       ReadLn;
 End.


