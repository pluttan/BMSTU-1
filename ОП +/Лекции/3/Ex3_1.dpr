program Ex3_1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var a:array[1..5] of real;
        amax:real;
        i, imax:byte;
Begin
     WriteLn('Input 5 values:');
     for i:=1 to 5 do Read(a[i]);  ReadLn;
     amax:=a[1];
     imax:=1;
     for i:=2 to 5 do
          if a[i]>amax then
               begin
                    amax:=a[i];
                    imax:=i;
               end;
     WriteLn('Values:');
     for i:=1 to 5 do Write(a[i]:7:2); WriteLn;
     WriteLn('Max =', amax:5:2,
             ', number=', imax);
     ReadLn;
 End.

