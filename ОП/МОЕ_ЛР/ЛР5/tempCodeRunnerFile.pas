
Program pr1;

Type fun = Function (x:real): double;

Function n1_f1(x:real): real;
far;
Begin
  n1_f1 := 1;
End;

Function n1_f2(x:real): real;
Begin
  n1_f2 := 2;
End;

Function n1_f3(x:real): real;
Begin
  n1_f3 := 3;
End;

Function n2_f1(x:real): real;
Begin
  n2_f1 := 4;
End;

Function n2_f2(x:real): real;
Begin
  n2_f2 := 5;
End;

Function n2_f3(x:real): real;
Begin
  n2_f3 := 6;
End;

Function z(fx:fun; x:real): real;
far;
Begin
  fx(x);
End;

Var n1,n2,n3: fun;
Begin
  n1 := n1_f1;
  n2
  n3 := 
        writeln(z(n, 20));
End.
