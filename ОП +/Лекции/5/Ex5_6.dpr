program Ex5_6;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const recs=1024;  {������ ������}
 Var fi,fo:file;{���������������� ���� }
        buf : array [1..2*recs] of byte;     {����� �� 2048 ����}
        i:integer;        namein,nameout: string;

begin
 WriteLn('Input name input_file :');  ReadLn(namein);
      {�������� ������� ����� � ���������  ������}
       Assign(fi,namein);
       {$I-} ReSet(fi,1); {$I+} {��������� ���� ��� ������}
        if IOResult <> 0 then
  begin    WriteLn(#7,' file with name ',namein,' not found');
            Readln;
            Halt
  end;
        WriteLn('Input name Output_file: '); ReadLn(nameout);
        Assign(fo,nameout);
        ReWrite(fo,1);    {��������� ���� ��� ������}
         while not EOF(fi) do
             begin
               BlockRead(fi,buf,sizeof(buf),i);{������ ���� �� �������� �����}
               BlockWrite(fo,buf,i);{����� ���� �� ������ � �������� ����}
             end;
        Close(fi);
        Close(fo);
        Readln;
end.
