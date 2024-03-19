Program Ex2_4;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var i,N,S:Integer;
Begin
	Write('Input N:');
  	ReadLn(N);
  	S:=0;
  	For i:=1 to N do 
          S:=S+i;
	WriteLn('Summa=',S:6);
  	ReadLn;
End.

