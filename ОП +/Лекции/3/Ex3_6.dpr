Program Ex3_6;
{$APPTYPE CONSOLE}
Uses SysUtils;
Const N = 100;
Type Numbers = set of 1..N;
Var  NumSet,ResSet:Numbers;
     Next,Nn,i:word;
Begin
     NumSet := [2..N];
     ResSet := [1];
     Next := 2;
     while NumSet <> [] do
       begin
         Nn := Next;
         while Nn <= N  do
           begin
             NumSet := NumSet - [Nn];
             Nn := Nn + Next;
           end;
         ResSet := ResSet + [Next];
         repeat
            inc(Next);
         until (Next in NumSet) or (NumSet <>[]);
       end;
     for i:=1 to N do
         if i in ResSet then write(i);
     ReadLn;
   End.


