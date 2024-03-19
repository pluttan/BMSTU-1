Unit SFun;
 Interface
   Type func=function(x:single):single;
   Procedure TabFun(f:func;a,b:single;n:integer;
                             var Masf,MasX:array of single);
Implementation
 Procedure TabFun;
  Var h,x:Single; 
  i:integer;
  Begin
     h:=(b-a)/(n-1);
     for i:=0 to n-1 do 
       begin MasX[i]:= a+h*i;
             Masf[i]:=f(MasX[i]);
       end;
  End;
End.

 