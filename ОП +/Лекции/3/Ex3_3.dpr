Program Ex3_3;
{$APPTYPE CONSOLE}
Uses SysUtils;
Var  st:string[40];   k:byte;
   Begin
      WriteLn('Input string <= 40 symbols');
      ReadLn(st);
      Write('String:'); WriteLn(st);
      k:=pos('  ',st);
      while k<>0 do
          begin
               delete(st,k,1);
               k:=pos('  ',st);
           end;    
       if st[1]= ' '  then delete(st,1,1);
       k:= length(st);
       if st[k]= ' '  then delete(st,k,1); 
       WriteLn('Result:');
       if length(st)<>0 then WriteLn(st)        
       else WriteLn('Only spaces.');
End.


