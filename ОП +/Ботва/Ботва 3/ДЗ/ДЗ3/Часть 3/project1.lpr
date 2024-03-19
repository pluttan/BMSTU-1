program project1;

{$APPTYPE CONSOLE}

type
  good = object
    Name: string;
    cost: real;
    Count: integer;
    procedure init(st: string; c: real; k: integer);
    procedure display_field();
    function get_name(): string;
    function get_cost(): real;
    function get_count(): integer;
    function get_value(): real;
  end;

  procedure good.init(st: string; c: real; k: integer);
  begin
    Name := st;
    cost := c;
    Count := k;
  end;

  procedure good.display_field();
  begin
    writeln('Name:', get_name(): 15, 'Cost': 8, get_cost(): 8: 2,
      'Count:': 10, get_Count(): 4);
  end;

  function good.get_name(): string;
  begin
    Result := Name;
  end;

  function good.get_cost(): real;
  begin
    Result := cost;
  end;

  function good.get_count(): integer;
  begin
    Result := Count;
  end;

  function good.get_value(): real;
  begin
    Result := Count * cost;
  end;

type
  warehouse = object
    goods: array of good;
    procedure init();
    procedure display_fields();
    function get_size(): integer;
    function get_value(): real;
  end;

  procedure warehouse.init();
  var
    i, n, k: integer;
    st: string;
    c: real;
  begin
    writeln('Enter the number of items');
    readln(n);
    setlength(goods, n);
    for n := low(goods) to high(goods) do
    begin
      writeln('Enter a product name ', n + 1);
      readln(st);
      writeln('Enter its price');
      readln(c);
      writeln('Enter its amount');
      readln(k);
      goods[n].init(st, c, k);
    end;
  end;

  procedure warehouse.display_fields();
  var
    i: integer;
  begin
    writeln('Goods in warehouse:');
    for i := low(goods) to high(goods) do
      goods[i].display_field;
  end;

  function warehouse.get_size(): integer;
  var
    i: integer;
    s: integer = 0;
  begin
    for i := low(goods) to high(goods) do
      s += (goods[i].Count);
    Result := s;
  end;

  function warehouse.get_value(): real;
  var
    s: real = 0;
    i: integer;
  begin
    for i := low(goods) to high(goods) do
      s += goods[i].get_value;
    Result := s;
  end;

var
  q: warehouse;
begin
  q.init();
  q.display_fields();
  writeln('value:': 28, q.get_value(): 8: 2, 'size:': 10, q.get_size(): 4);
  readln();
end.
