Program Ex4_14;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type p=array[1..100] of integer;
Var pole:p;   m:integer;
{������� �������� ��������������� ����������}
Function new_r(n:integer;pole:p):boolean;
Var j:integer;
Begin
      new_r:=false;
      for j:=1 to n-1 do
           if (pole[j]=pole[n])or(abs(pole[j]-pole[n])=n-j) then  exit;
      new_r:=true;
End;
{����������� ������� ��������� ����������}
Procedure ferz(n,m:integer; var pole:p);
Var i:integer;
Begin
      if n=m+1 then    {���� ����������� m ������, �� ������� �������}
          begin
            for i:=1 to m do Write(pole[i]:2);
            WriteLn;
         end
      else      {����� - �������� ���������� ���������� �����}
        for i:=1 to m do   {m ���������}
          begin
              pole[n]:=i;   {��������� n-�� �����}
              if new_r(n,pole)       {�������� ��������������� ����������}
                       then ferz(n+1,m,pole);  {����������� ����� ��������� ���-������� �����}
          end;
End;
{�������� ���������}
Begin
     WriteLn('Input N:');
     ReadLn(m);
     ferz(1,m,pole);
     ReadLn;
End.

