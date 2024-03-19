unit NEIBR;

{$mode objfpc}{$H+}
interface

type
  func = function(x: real): real;

procedure NEIBR(f: func; x, y: real; var prindl: boolean);

implementation

procedure NEIBR(f: func; x, y: real; var prindl: boolean);
begin
  prindl := (y = f(x));
end;

end.
