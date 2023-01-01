
Program Example1;

Uses  SysUtils;

Var A,B,C,D,E,X1,X2: Single;
Begin
  WriteLn('Input A, B, C:');
  Readln(A,B,C);
  D := Sqr(B)- 4*A*C;
  If D>=0 Then
    Begin
      E := 2*A;
      X1 := (-B+Sqrt(D))/E;
      X2 := (-B-Sqrt(D))/E;
      WriteLn('X1=', X1:6:1, '  X2=', X2:6:1)
    End
  Else WriteLn(D);
  ReadLn;
End.
