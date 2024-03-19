program Ex5_3b;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var f:file of Char;
    i:Integer;n:Char; j,j1:longInt;
begin
    AssignFile(f,'a.dat');
    Reset(f);
    j:=0;
    For i:=1 to 26 do
     begin
      Read(f,n);
      if (ord(n) mod 2) = 0 then
        begin
          j1:=FilePos(f);
          Seek(f,j);
          Write(f,n);
          inc(j);
          Seek(f,j1);
        end
      end;
     Seek(f,j);
     truncate(f);
end.
 