Unit Summa2;
Interface
 function sum(b:array of integer; n:integer):integer;
Implementation  function sum;
        var s:integer;  i:integer;
           begin s:=0;
                 for i:=0 to n-1 do s:=s+b[i];
                    sum:=s;
          end;
End.

 