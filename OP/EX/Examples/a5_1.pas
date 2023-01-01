
Program ex5;

Type Chr = Object
  Private 
    my_char : char;
  Public 
    Procedure create(your_char:char);
    Procedure print();
End;

Procedure Chr.create(your_char:char);
Begin
  my_char := your_char;
End;

Procedure Chr.print;
Begin
  writeln(my_char);
End;

Type ChrPReal = Object
  Private 
    my_char : Chr;
    my_real : real;
  Public 
    Procedure create(your_char : char; your_real : real);
    Procedure print();
End;

Procedure ChrPReal.create(your_char : char; your_real : real);

Begin
  my_char.create(your_char);
  my_real := your_real;
End;

Procedure ChrPReal.print();

Begin
  my_char.print;
  writeln(my_real:3:2);
End;

Var your_ChrPReal: ChrPReal;
  your_Chr: Chr;
Begin
  your_Chr.create('o');
  your_Chr.print;
  your_ChrPReal.create('p',30.00);
  your_ChrPReal.print;
End.
