program Ex5_5;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Type  ff=file of char;
Var  f:ff;
     a:char;                
     fname,st:string[30];
begin
  Write('Input file name:');     
  ReadLn(fname);
  Assign(f,fname);
  ReSet(f);        
  while not EOF(f) do
    begin
     st:='';
     Read(f,a); 
          while (a<>#13) and not EOF(f) do   {до маркера конца 
                                                                        строки или конца файла}
        begin
          st:=st+a;   
          Read(f,a);     
        end;
     if not EOF(f) then Read(f,a); {пропускаем символ #10}
     WriteLn(st);                   
  end;
 Close(f); 
 Readln;
end.

 