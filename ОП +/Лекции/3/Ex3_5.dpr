Program Ex3_5;
{$APPTYPE CONSOLE}
Uses SysUtils;
 Var n:longint;
     st:string[200];
     mnoj:set of '0'..'9';
     i:integer;  j:char;
   Begin       WriteLn('Input number:');
      ReadLn(n);
      Str(abs(n),st);
      mnoj:=[ ];       {� �������� ��������� ��������� �����}
      for i:=1 to length(st) do
                mnoj:=mnoj+[st[i]];  {��������� ���������}
      WriteLn('Number n ',n,' includes:');
      for j:='0' to '9' do       {������� �����, �������� �� ���������}
                if j in mnoj then Write(j+' ');
      ReadLn;
   End.


