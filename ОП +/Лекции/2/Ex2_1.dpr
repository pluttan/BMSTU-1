Program Ex2_1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var Ch:char;  n:Integer;
Begin
	Write('Input n:');
	ReadLn(n);
	if (n>=0)and(n<=15) then
	  begin
	   if n<10 then
       Ch:=chr(ord('0')+n)
     else
       Ch:=chr(ord('A')+n-10);
     Write ('n=',Ch);
    end
  else WriteLn('Error');
  ReadLn;
End.

 