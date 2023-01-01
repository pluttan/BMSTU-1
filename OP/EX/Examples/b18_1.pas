
Unit MathFx;

Interface

Type f = Function (x : real) : real;
Function P(f1, f2, f3 : f; x : real) : real;


Implementation
Function P(f1, f2, f3 : f; x : real) : real;
Begin
  result := f1(x)*sqr(x) - f2(x)*x + f3(x);
End;
End.
