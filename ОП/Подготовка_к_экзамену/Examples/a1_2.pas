
Program ex2;

Type Shelf = Object
  Private 
    length, width, height : real;
  Public 
    Procedure create(Alength, Awidth, Aheight : real);
    Function getH : real;
    Function Workspace : real;
End;

Procedure Shelf.create(Alength, Awidth, Aheight : real);
Begin
  length := Alength;
  width := Awidth;
  height := Aheight;
End;

Function Shelf.getH : real;
Begin
  result := height;
End;

Function Shelf.Workspace : real;
Begin
  result := length * width;
End;

Type Rack = Object
  Private 
    n : integer;
    section : shelf;
  Public 
    Procedure create(AS_length, AS_width, AS_height : real; An : integer);
    Function getH : real;
    Function Workspace : real;
End;

Procedure Rack.create(AS_length, AS_width, AS_height : real; An : integer);
Begin
  section.create(AS_length, AS_width, AS_height);
  n := An;
End;

Function Rack.getH : real;
Begin
  result := section.height * n;
End;

Function Rack.Workspace : real;
Begin
  result := self.getH * section.Workspace;
End;

Var S1 : Shelf;
  R1 : Rack;
Begin
  S1.create(0.8, 1.1, 1);
  writeln('Shelf: H = ', S1.getH:8:4, '; Workspace = ', S1.Workspace:8:4);
  R1.create(0.8, 1.1, 1, 4);
  writeln('Rack: H = ', R1.getH:8:4, '; Workspace = ', R1.Workspace:8:4);
  readln;
End.
