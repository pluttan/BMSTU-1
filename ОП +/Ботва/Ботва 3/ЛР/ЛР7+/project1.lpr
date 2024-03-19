program project1;

const
  n = 8;

type
  mas1 = array[0..n - 1] of integer;
  mas2 = array[0..n - 1] of mas1;
var
  ogran: byte;
  ///Построчный вывод матрицы
  procedure writeln_arr2(const a: mas2);

  ///Процедура вывода одномерного массива
    procedure writeln_arr1(const h: mas1);
    var
      i: byte;
    begin
      for i := low(h) to ogran - 1 do
        Write(h[i]: 2);
      writeln;
    end;

  var
    i: byte;
  begin
    Write('   ');
    for i := 1 to ogran do
      Write(i: 2);
    writeln();
    for i := low(a) to ogran - 1 do
    begin
      Write(i + 1: 2, '|');
      writeln_arr1(a[i]);
    end;
  end;
  ///Заполнение матрицы
  procedure fillarr2(var a: mas2);
  var
    i, j: byte;
  begin
    randomize;
    for i := low(a) to ogran - 1 do
      for j := low(a[i]) to ogran - 1 do
        a[i][j] := random(10) - 5;
  end;

  ///функция возвращает индекс максимального элемента в строке
  function maxim(const h: mas1): integer;
  var
    i, r: integer;
  begin
    r := 0;
    for i := 1 to ogran do
      if h[i] > h[r] then
        r := i;
    Result := r;
  end;

  procedure swap(var a, b: integer);
  var
    t: integer;
  begin
    t := a;
    a := b;
    b := t;
  end;

  procedure obrabotka(var h: mas2);
  var
    i, j: integer;
  begin
    for i := 0 to ogran - 1 do
      swap(h[i][i], h[i][maxim(h[i])]);
  end;

var
  h: mas2;
begin
  writeln(utf8toansi('Введите размер массива'));
  readln(ogran);
  if (ogran > 7) or (ogran < 1) then
    ogran := 7;
  randomize;
  fillarr2(h);
  writeln(utf8toansi('Сгенерированный массив:'));
  writeln_arr2(h);
  obrabotka(h);
  writeln(utf8toansi('Массив после обработки:'));
  writeln_arr2(h);
  readln();
end.
