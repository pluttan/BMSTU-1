program Project6;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 pakk = ^akk;
 akk = record
  name:string;
  pol:string;
  age:integer;
  next:pakk;
 end;

procedure vvivod (a:pakk);
 var
  b:pakk;
 begin
  b:=a;
  while b <> nil do
   begin
    writeln(b^.age, ' ', b^.pol);
    b:=b^.next;
   end;
  end;

procedure delete_element(var a:pakk; k:integer);
 var
  i:integer;
  b, old:pakk;
 begin
  b := a;
  i := 1;
  if k = 1 then
   begin
    old := a;
    a:=a^.next;
    dispose(old);
   end
  else
   begin
    while i < k-1 do
     begin
      i:=i+1;
      b:=b^.next;
     end;
    old := b^.next;
    b^.next:=b^.next^.next;
    dispose(old);
   end;
  end;

procedure vstavka ( var a:pakk; k2:integer);
 var
  i:integer;
  b, nev:pakk;
 begin
  while i < k2-1 do
   begin
    i:=i+1;
    b:=b^.next;
   end;
  new(b);
  nev:=b^.next;
  b^.next:=nev;
 end;

procedure cozd (var a,b:pakk);
 var
  i,d:integer;
 begin
  randomize;
  a:=nil; b:=nil;
  new(a);
  b := a;
  for i := 1 to 5 do
   begin
    b^.name:='hal';
    d:=random(1);
    if d = 1 then
     b^.pol:='male'
    else
     b^.pol:='female';
    b^.age:=random(50)+1;
    new(b^.next);
    b:= b^.next;
   end;

  b^.name:='hal';            // \
  d:=random(1);              // |
  if d = 1 then              // |
   b^.pol:='male'            // |--    для чего этот кусок кода?
  else                       // |      вроде для создания последнего элемента
   b^.pol:='female';         // |      а почему он отдельно создается?
  b^.age:=random(50)+1;      // |
  b^.next := nil;            // /

 end;

var
 sr:single;
 d,i,k,k2:integer;
 a,b:pakk;
begin
 cozd(a,b);
 vvivod(a);
 writeln;
 k := 1;
 k2:=2;
 vstavka(a,k2);
 delete_element(a,k);
 vvivod(a);
 readln;                //встака элемента и создние в процедуру
end.
