program Ex4_6;
{$APPTYPE CONSOLE}
uses  SysUtils,
  Stroka in 'Stroka.pas';

Var S:string[26];i:integer;
Begin
     s:='A';
     for i:=2 to 26 do Add(s);
     WriteLn(s);
     ReadLn;
end.

