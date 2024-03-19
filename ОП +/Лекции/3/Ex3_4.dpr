Program Ex3_4;
{$APPTYPE CONSOLE}
Uses SysUtils;
Var st,strez,strab:string[40];
         c1,c2,c3,n,old:word;code:integer;
 Begin
    WriteLn('Input string. End - empty string.');
    ReadLn(st);
    while st<>'' do
       begin
         c1:=Pos(' ',st);
         strez:=Copy(st,1,c1+1)+'.';
         strab:=Copy(st,c1+2,Length(st)-c1-1);
         c2:=Pos(' ',strab);
         strez:=strez+strab[c2+1]+'.';
         Delete(strab,1,c2+1);
         c3:=Pos(' ',strab);
         Delete(strab,1,c3);
         Val(strab,n,code);
         old:=2001-n;
         Str(old,strab);
         strez:=strez+' '+strab;
         WriteLn(strez);
         WriteLn('Input string. End - empty string.');
         ReadLn(st);
       end;
End.


