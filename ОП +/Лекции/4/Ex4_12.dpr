Program Ex4_12;
{$APPTYPE CONSOLE}
Uses SysUtils;
Type mas=array[1..10] of real;
Var x:mas;    i:integer;
Procedure print(var x:mas;i:integer);
  Begin if x[i]=0 then WriteLn('***')
            else
                begin
                   if x[i]>0 then WriteLn(i,x[i]);
                   print(x,i+1);      
                   if x[i]<0 then WriteLn(i,' ', x[i]);
                end
  End;
Begin i:=0;
      repeat i:=i+1; Read(x[i]) until x[i]=0;
      ReadLn;
      print(x,1);
      ReadLn;
End.

 