
Program LR7;

Uses Sysutils;
Function med(this_x, y, z:real): real;
Begin
  med := 0.25 * sqrt(2 * sqr(y) + sqr(this_x) + 2 * sqr(z))
End;

Var a, b, c, a1, b1, c1: real;
Begin
  readln(a,b,c);
  a1 := med(a,b,c);
  b1 := med(b,a,c);
  c1 := med(c,b,a);
  write(a1:10:7, b1:10:7, c1:10:7);
  read;
End.
