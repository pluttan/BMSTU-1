
Program ex4;

Type Int = Object
  Private 
    my_int : integer;
  Public 
    Procedure create(your_int:integer);
    Procedure print();
End;

Procedure Int.create(your_int:integer);
Begin
  my_int := your_int;
End;

Procedure Int.print;
Begin
  writeln(my_int);
End;

Type IntPReal = Object
  Private 
    my_int : Int;
    my_real : real;
  Public 
    Procedure create(your_int : integer; your_real : real);
    Procedure print();
End;

Procedure IntPReal.create(your_int : integer; your_real : real);

Begin
  my_int.create(your_int);
  my_real := your_real;
End;

Procedure IntPReal.print();

Begin
  my_int.print;
  writeln(my_real:3:2);
End;

Var your_IntPReal: IntPReal;
  your_int: Int;
Begin
  your_int.create(100);
  your_int.print;
  your_IntPReal.create(11,1.25);
  your_IntPReal.print;
End.
