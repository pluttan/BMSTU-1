program project1;

{$APPTYPE CONSOLE}
uses
  SysUtils;

type
  mas = array of integer;

  ///Процедура ввода массива
  procedure inp_arr(var h: mas);
  var
    n, j: integer;
  begin
    writeln(utf8toansi('Введите размерность массива'));
    readln(n);
    setlength(h, n);
    writeln(utf8toansi('Введите массив'));
    for j := 0 to n - 1 do
      Read(h[j]);
    readln();
  end;

  ///Сортировка методом вставки
  procedure InsertSort(var h: mas);
  var
    x, j, i: integer;
  begin
    for i := 0 to length(h) - 1 do
    begin
      x := h[i];
      j := i;
      while (j > 0) and (h[j - 1] > x) do
      begin
        h[j] := h[j - 1];
        j := j - 1;
      end;
      h[j] := x;
    end;
  end;

  ///Процедура вывода одномерного массива
  procedure writeln_arr(h: mas);
  var
    i: integer;
    s: string = '{';
  begin
    for i := 0 to length(h) - 1 do
      s += IntToStr(h[i]) + ', ';
    Delete(s, length(s) - 1, 2);
    s += '}';
    writeln(s);
  end;

var
  a: mas;

begin
  inp_arr(a);
  writeln(utf8toansi('Исходный массив:'));
  writeln_arr(a);
  insertsort(a);
  writeln(utf8toansi('Отсортированный массив по неубыванию:'));
  writeln_arr(a);
  writeln(utf8toansi('Нажмите любую клавишу'));
  readln;
end.
