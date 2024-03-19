program project1;

{$APPTYPE CONSOLE}

type
  address = ^card;

  card = record
    number: integer;
    info: string;
    Next: address;
  end;

  //Рекурсивный вывод списка, начиная с элемента на адресе start
  procedure vivod(const start: address);
  begin
    if not (start = nil) then
    begin
      writeln(start^.number, start^.info);
      vivod(start^.Next);
    end;
  end;

  //Рекурсивное удаление списка, начиная с элемента на адресе start
  procedure del(var start: address);
  begin
    if not (start = nil) then
    begin
      del(start^.Next);
      dispose(start);
      start := nil;
    end;
  end;

  procedure sorting(var First: address);
  var
    a, b1, b2, b3: address;
    sorted: boolean = True;
  begin
    if First <> nil then
    begin
      new(a);
      a^.Next := First;
      First := a;
      repeat
        sorted := True;
        a := First;
        while (a^.Next^.Next <> nil) do
        begin
          if a^.Next^.number > a^.Next^.Next^.number then
          begin
            b1 := a^.Next;
            b2 := b1^.Next;
            b3 := b2^.Next;
            b1^.Next := b3;
            b2^.Next := b1;
            a^.Next := b2;
            sorted := False;
          end;
          a := a^.Next;
        end;
      until sorted;

      a := First^.Next;
      dispose(First);
      First := a;
    end;
  end;

  function new_elem(): address;
  var
    k: address = nil;
    n: integer;
    fio: string;
  begin
    readln(n, fio);
    if not ((n = 0) and (fio = '')) then
    begin
      new(k);
      k^.info := fio;
      k^.number := n;
      k^.Next := nil;
    end;
    Result := k;
  end;

  //Ввод списка, рекурсивный
  function read_list(): address;
  var
    k: address = nil;
    n: integer;
    fio: string;
  begin
    readln(n, fio);
    if not ((n = 0) and (fio = '')) then
    begin
      new(k);
      k^.info := fio;
      k^.number := n;
      k^.Next := read_list();
    end;
    Result := k;
  end;

var
  First, a: address;
begin
  writeln('enter the list; end - 0');
  First := read_list();
  writeln(('entered list'));
  vivod(First);

  sorting(First);
  writeln('sorted list');
  vivod(First);

  if First <> nil then
  begin
    a := First;
    while a^.Next <> nil do
      a := a^.Next;
    writeln('enter an element to add');
    a^.Next := new_elem;
  end
  else
    First := new_elem;
  writeln('new list');
  vivod(First);

  writeln(('Removing list'));
  del(First);
  vivod(First);
  writeln('End. Press any key');
  readln();
end.
