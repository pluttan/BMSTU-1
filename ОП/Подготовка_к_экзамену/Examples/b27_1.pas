type point = object
  private
    x, y, z : real;
    name : string;
  public
    procedure create(Ax, Ay, Az : real; Aname : string);
    procedure show();
end;

procedure create(Ax, Ay, Az : real; Aname : string);
begin
  Self.x := Ax;
  Self.y := Ay;
  Self.z := Az;
  Self.name := Aname;
end;

procedure show();
begin
  writeln(Self.name, '(', Self.x:5:2, '; ', Self.y:5:2, '; ', Self.z:5:2, ')');
end;

var A : point;
begin
  A.create(3.14, 2.71, 88.88, 'A');
  A.show();
  readln;
end;
