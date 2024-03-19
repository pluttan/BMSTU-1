Program Ex4_1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var A,B,C,D,E:real;
Function Stf(const X,Y,Z:real):real;
  Var p:real;
  begin
      p:=(X+Y+Z)/2;
      Stf:=sqrt(p*(p-X)*(p-Y)*(p-Z));
  end;
{раздел операторов основной программы}
Begin
    WriteLn('Input a,b,c,d,e:');
    ReadLn(A,B,C,D,E);
    WriteLn('S=', Stf(A,B,E)+Stf(C,D,E):7:3);
    ReadLn;
End.

