program Ex5_3a;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var f:file of Char;
    i:Char;
begin
    AssignFile(f,'a.dat');
    ReWrite(f);
    For i:='A' to 'Z' do Write(f,i);
    CloseFile(f);
end.

