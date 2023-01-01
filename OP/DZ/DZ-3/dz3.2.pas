
Program dz3_2;

Type Cylinder = Object
  Private diameter, height: real;
    Procedure init(D, H:real);
    Procedure print();
    Function bulk(): real;
End;
Procedure Cylinder.init(D, H:real);
Begin
  diameter := D;
  height := H;
End;
Procedure Cylinder.print;
Begin
  write('D = ',diameter:6:3,', H = ',height:6:3);
  writeln;
End;
Function Cylinder.bulk(): real;
Begin
  bulk := 3.1415 * diameter * height / 2;
End;

Type Water_tunk = Object(Cylinder)
  Private mass: real;
    Procedure init(D, H, M:real);
    Procedure print();
    Function Mwater(): real;
    Function Mtunkwater(): real;
    Function Pwater(): real;
End;
Procedure Water_tunk.init(D, H, M:real);
Begin
  diameter := D;
  height := H;
  mass := M;
End;
Procedure Water_tunk.print();
Begin
  write('D = ',diameter:6:3,', H = ',height:6:3,', M = ',mass:6:3);
  writeln;
End;
Function Water_tunk.Mwater(): real;
Begin
  Mwater := 1000 * self.bulk;
End;
Function Water_tunk.Mtunkwater(): real;
Begin
  Mtunkwater := self.Mwater + mass;
End;
Function Water_tunk.Pwater(): real;
Begin
  Pwater := 10000 * height;
End;

Var cyl: Cylinder;
  cylwater: Water_tunk;
Begin
  cyl.init(0.5, 1);
  cyl.print;
  writeln(cyl.bulk:6:3);
  cylwater.init(0.5, 1, 30);
  cylwater.print;
  writeln(cylwater.Mwater:6:3);
  writeln(cylwater.Mtunkwater:6:3);
  writeln(cylwater.Pwater:6:3);
End.
