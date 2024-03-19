
Program cons;

Type Chr = Object
  Private 
    myChr : char;
  Public 
    Procedure create(yourChr:char);
    Procedure print;
End;

Procedure Chr.create(yourChr:char);
Begin
  myChr := yourChr;
End;

Procedure Chr.print;
Begin
  write(myChr);
End;

Type ChrPStr = Object(Chr)
  Private 
    myStr : array Of Chr;
    n : integer;
  Public 
    Procedure create(yourChr:char; yourn:integer);
    Procedure print;
End;

Procedure ChrPStr.create(yourChr:char; yourn:integer);

Var i: integer;
  tmp: char;
Begin
  n := yourn;
  Chr.create(yourChr);
  setLength(myStr, n);
  For i := 0  To n - 1 Do
    Begin
      write('Enter ',i+1,' char: ');
      readln(tmp);
      myStr[i].create(tmp);
    End;
End;

Procedure ChrPStr.print;

Var i: integer;
Begin
  writeln;
  Chr.print();
  writeln;
  For i := 0  To n - 1 Do
    Begin
      myStr[i].print();
    End;
End;

Var tmp: ChrPStr;
  tmp2: Chr;
Begin
  tmp2.create('p');
  tmp2.print();
  writeln;
  tmp.create('p',3);
  tmp.print();
End.
