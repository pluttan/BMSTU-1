Program Ex3_7;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type
   data=record
           year:word;
           month:1..12;
           day:1..31;
        end;
    zap=record
           fam:string[16];
           birthday:data;
        end;
Var  fb:array[1..25] of zap;
        fff:string;
        i,j,m,n:byte;
        key:boolean;
Begin
  WriteLn('Input n<=25');
  ReadLn(n);
  m:=0;
  repeat
     m:=m+1;
     Write('Input family  :');
     Readln(fb[m].fam);
     Write('Input year :  ' );
     Readln(fb[m].birthday.year);
     Write('Input month  :  ');
     ReadLn(fb[m].birthday.month);
     Write('Input date  :  ');
     ReadLn(fb[m].birthday.day);
   until n=m;
   WriteLn;
   WriteLn('List of group '); WriteLn;
    for i:=1 to m do
       with fb[i] do
         begin
           Write(i:2,fam:17);
           with birthday do
                 WriteLn(year:6,month:4,day:4);
         end;
    WriteLn;
    {поиск данных в массиве записей}
     Write('Input family:');
     ReadLn(fff);
      i:=0;
      key:=false;
      repeat i:=i+1;
            if fb[i].fam = fff then key:=true
      until key or( i=m);
     {вывод результата}
      if key then
             with fb[i] do
                  begin
                       WriteLn('Student :');
                       Write(fam:18,'   ');
                       with birthday do
                                WriteLn(day:2,':',month:2,':',year:4);
                  end
        else  WriteLn('No data about:',fff:18);
        ReadLn;
End.


