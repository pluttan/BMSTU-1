Program Ex4_2;
{$APPTYPE CONSOLE}
uses SysUtils;
Var A,B,C,D,E:real; S1,S2:single;
Procedure Stp(const X,Y,Z:single;var S:single);
  Var p:single;
  begin
         p:=(X+Y+Z)/2;
         S:=sqrt(p*(p-X)*(p-Y)*(p-Z));
  end;
Begin
    WriteLn('Input a,b,c,d,e');
    ReadLn(A,B,C,D,E);
    Stp(A,B,E,S1);
    Stp(C,D,E,S2);
    WriteLn('S= ',S1+S2:7:3);
    ReadLn;
End.


