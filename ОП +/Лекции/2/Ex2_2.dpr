Program Ex2_2;
{$APPTYPE CONSOLE}
uses  SysUtils;
Var Kod:Integer;Key:boolean;
    x,y:single;
Begin
	WriteLn('Input Kod:');
  WriteLn('1 - y=sin x');
  WriteLn('2 - y=cos x');
  WriteLn('3 - y=exp x');
  ReadLn(Kod);
  WriteLn('Input x:');
	ReadLn(x);
	Key:=true;
  Case Kod of
    1: y:=sin(x);
    2: y:=cos(x);
    3: y:=exp(x);
    else Key:=false;
  end;
  if Key then WriteLn(x:10:6,' ',y:10:6)
  else WriteLn('Error');
  ReadLn;
End.

 