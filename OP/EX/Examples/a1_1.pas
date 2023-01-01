
Program ex1;

Type Dining_Table = Object
  Private 
    length, width, height : real;
  Public 
    Procedure create(Alength, Awidth, Aheight : real);
    Function Square : real;
End;

Procedure Dining_Table.create(Alength, Awidth, Aheight : real);
Begin
  length := Alength;
  width := Awidth;
  height := Aheight;
End;

Function Dining_Table.Square : real;
Begin
  result := length * width;
End;

Type Table2 = Object(Dining_Table)
  Private 
    n : integer;
    D_length, D_width, D_height : real;
  Public 
    Procedure create(Alength, Awidth, Aheight : real; An: integer; AD_length,
                     AD_width, AD_height : real);
    Function VDrawers : real;
End;

Procedure Table2.create(Alength, Awidth, Aheight : real;  An: integer; AD_length
                        , AD_width, AD_height : real);
Begin
  Dining_Table.create(Alength, Awidth, Aheight);
  n := An;
  D_length := AD_length;
  D_width := AD_width;
  D_height := AD_height;
End;

Function Table2.VDrawers : real;
Begin
  result := D_length * D_width * D_height * n;
End;

Var T1 : Dining_Table;
  T2 : Table2;
Begin
  T1.create(0.9, 0.9, 0.76);
  writeln(T1.Square:8:5);
  T2.create(0.9, 0.9, 0.76, 4, 0.44, 0.45, 0.168);
  writeln(T2.Square:8:5);
  writeln(T2.VDrawers:8:5);
  readln;
End.
