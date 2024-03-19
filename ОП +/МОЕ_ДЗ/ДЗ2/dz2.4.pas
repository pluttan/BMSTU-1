
Program dz2_4;

Uses Math;

Type fx = Function (x:real): real;

Function sinx2(x:real): real;
Begin
  sinx2 := sin(sqr(x));
End;

Function ctgx(x:real): real;
Begin
  ctgx := 1 / tan(sqrt(x));
End;

Var M, e, b: real;

Procedure MASSHTAB(f:fx);

Var x, mx: real;
Begin
  x := 1;
  While x < 2 Do
    Begin
      If f(x) > mx Then mx := f(x);
      x := x + e;
    End;
  M := b / mx;
End;

Begin
  Writeln('Введите b, затем погрешность.');
  read(b);
  readln(e);
  MASSHTAB(@ctgx);{Поменять на @ ctgx при f(x)=ctg()}
  writeln(M:10:6);
End.
