program project1;

{$APPTYPE CONSOLE}
uses
  SysUtils;

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

  ///Возвращает сумму элементов столбца k
  function summ(const a: mas2; const k: integer): integer;
  var
    s: integer = 0;
    i: byte;
  begin
    for i := low(a) to ogran - 1 do
      s += a[i, k];
    summ := s;
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


  ///Функция выводит информацию о столбцах и возвращает кол-во "пар" с один. суммой
  function vivod(const a: mas2): integer;
  var
    jmin, jmax, k, i, j: integer;
    s: string;
  begin
    k := 0;
    for i := low(a[0]) to ogran - 1 do
    begin
      s := '';
      jmin := i;
      jmax := i;
      for j := low(a[0]) to ogran - 1 do
        if (summ(a, i) = summ(a, j)) then
        begin
          s += IntToStr(j + 1) + ', ';
          if j < jmin then
            jmin := j;
          if j > jmax then
            jmax := j;
        end;

      if (jmin = i) and (jmax > i) then
      begin
        writeln(utf8toansi('Столбцы {'), copy(s, 1, length(s) - 2),
          utf8toansi('} с одинаковой суммой: '),
          summ(a, i));
        k += 1;
      end;
    end;
    vivod := k;
  end;

var
  h: mas2;
begin
  writeln(utf8toansi('Введите размер массива'));
  readln(ogran);
  if (ogran > 8) or (ogran < 1) then
    ogran := 8;
  fillarr2(h);
  writeln(utf8toansi('Сгенерированный массив:'));
  writeln_arr2(h);
  if (vivod(h) = 0) then
    writeln(utf8toansi('Столбцов с одинаковой суммой нет'));
  readln();
end.
