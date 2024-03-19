
Program dz3_1;

Type Daily_ration = Object
  Private max_kil, real_kil: integer;
    Procedure init(maxKil, realKil:integer);
    Procedure print_info();
    Procedure add_kil(kil:integer);
    Function residual(): integer;
End;
Procedure Daily_ration.init(maxKil, realKil:integer);
Begin
  max_kil := maxKil;
  real_kil := realKil;
End;
Procedure Daily_ration.print_info;
Begin
  write(real_kil,'/',max_kil);
  writeln;
End;
Procedure Daily_ration.add_kil(kil:integer);
Begin
  real_kil := real_kil + kil;
End;
Function Daily_ration.residual(): integer;
Begin
  residual := real_kil;
End;

Var sep18: Daily_ration;
Begin
  sep18.init(1200,200);
  sep18.print_info();
  sep18.add_kil(400);
  sep18.print_info();
  writeln(sep18.residual);
End.
