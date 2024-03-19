Program Ex4_9;
{$APPTYPE CONSOLE}
Uses SysUtils,
     SFun in 'SFun.pas';
Var masF1,masX1:array[1..10] of single;
    masF2,masX2:array[1..20] of single;
    i:integer;
 function F1(x:single):single;
       Begin F1:=sin(x); end;
 function F2(x:single):single;
       Begin F2:=exp(x)+cos(x); end;
Begin
   TabFun(F1,0,2,10,masF1,masX1);
   for i:=1 to 10 do WriteLn(masX1[i]:4:1,masF1[i]:7:1);
   WriteLn;
   TabFun(F2,0,2,20,masF2,masX2);
   for i:=1 to 20 do WriteLn(masX2[i]:4:1,masF2[i]:7:1);
   ReadLn;
End.

