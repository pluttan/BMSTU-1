program EX5_1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
     f:text;       {�������� ���������� ��� ��������� ���� }
     a:char;  n,i:integer;  fname,st:string[30];

Begin
       WriteLn('input File name');
       ReadLn(fname);
       Assign(f,fname);   {�������������� �������� ����������}
       ReWrite(f);            {��������� ���� ��� ������}
       Randomize;            {�������������� ������ ��������� �����}
       for a:='A' to 'Z' do    {��������� ������}
           begin
                st:='';
                n:=Random(30)+1;
                for i:=1 to n do    st:=st+a;
                WriteLn(f,st);   {���������� ������ � ��������� ����}
                WriteLn(st);       {��� �������� - ������� �� �� �����}
            end;
        Close(f);    {��������� ����}
        Readln;
end.
 