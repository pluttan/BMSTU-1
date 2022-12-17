
Program ex3;

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

Type masInt = Object
  Private 
    my_masInt : array Of Int;
    n: integer;
  Public 
    Procedure create();
    Procedure print();
End;

Procedure masInt.create();

Var tmp,i: integer;
Begin
  writeln('Enter length of mas (n):');
  readln(n);
  setlength(my_masInt, n);
  For i := 0 To n-1 Do
    Begin
      write('Enter the ', i+1, ' element: ');
      readln(tmp);
      my_masInt[i].create(tmp);
    End;
End;

Procedure masInt.print();

Var i: integer;
Begin
  For i := 0 To n-1 Do
    Begin
      write('The ', i+1, ' element is: ');
      my_masInt[i].print();
    End;
End;

Var your_mas: masInt;
  your_int: Int;
Begin
  your_int.create(10);
  your_int.print;
  your_mas.create;
  your_mas.print;
End.
