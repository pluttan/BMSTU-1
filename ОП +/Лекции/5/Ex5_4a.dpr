program Ex5_4a;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type fam=record      {��� ������ "�������� � �����������"}
            ff:string[20];  {�������}
            year:word;      {��� ��������}
            month:1..12;    {����� ��������}
            day:1..31;      {���� ��������}
         end;
  Var f:file of fam;  {�������� ���������� "���� �����������"}
        fb:fam;  fff:string;    key:boolean;

begin
        Assign(f,'fam.dat');  {��������� �������� ���������� � ������}
        ReWrite(f);         {��������� ���� ��� ������}
        WriteLn('Input family or empty string');
        Readln(fb.ff);
        while length(fb.ff)<>0 do  {����, ���� �� ������� ������ ������}
          begin
            WriteLn('Input birthday: year month day');
            ReadLn(fb.year, fb.month, fb.day); {������ ������ �� �����, ������� ������ � ��������� ������, ��� ��� ���� ������ ����������� �������� ������� Enter}
            Write(f,fb);                       {���������� ������ � ���� ��� ���� ���������}
            WriteLn('Input family or empty string');
            Readln(fb.ff);
          end;
        Close(f);            {��������� ����}
        Readln;
end.
