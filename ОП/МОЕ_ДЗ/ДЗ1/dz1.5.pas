
Program dz1_5;

Var fx,x,dx,s,sp,eps: real;
  a, b, i, n: LongInt;
Begin
  n := 1;
  a := 0;
  b := 1;
  readln(eps);
  sp := 1000;
  While abs(sp-s) > eps Do
    Begin
      sp := s;
      dx := (b - a) / n;
      s := 0;
      For i:=0 To n Do
        s := s + dx * sqrt(1 + 3 * dx * i);
      n := n + 1;
    End;
  Writeln(s:10:9,n:5);
End.
