program project1;

{$APPTYPE CONSOLE}

type
  ch = set of char;

  ///Переводим множество в сортированную строку
  function sortbunch(h: ch): string;
  var
    mi, i: char;
    s: string = '';
  begin
    repeat
      mi := char(65535);//Символ с наибольшим кодом
      for i in h do
        if i < mi then
          mi := i;
      h := h - [mi];
      s += mi + ', ';
    until mi = char(65535);
    sortbunch := '(' + copy(s, 1, length(s) - 5) + ')';
  end;

  ///Переводим строку в множество символов
  function StrToBunch(st: string): ch;
  var
    b: set of char = [];
    i: char;
  begin
    for i in st do
      b += [char(i)];
    StrToBunch := b;
  end;

  ///Формируем новую строку из чётных слов
  function proc1(st: string): string;
  var
    stt: string = '';
    k: boolean = False;
  begin
    st := LowerCase(st);
    insert(' ', st, length(st));
    repeat
      if k then
        stt += copy(st, 1, pos(' ', st));
      k := not k;
      Delete(st, 1, pos(' ', st));
    until length(st) <= 1;
    proc1 := stt;
  end;


var
  snew, s: string;
  c, b: ch;

begin
  writeln(utf8toansi('Введите строку '));
  readln(s);
  writeln(utf8toansi('Строка введена.'));
  writeln(utf8toansi('Исходная строка: "'), s, '".');

  snew := proc1(s);
  b := ['a'..'z'] - ['a', 'e', 'i', 'u', 'y', 'o'];
  c := b - StrToBunch(snew);

  writeln(utf8toansi('Найдены символы в предложении:'), sortbunch(StrToBunch(s)));
  writeln(utf8toansi('Строка чётных слов: "'), snew, '"');
  if length(snew) = 0 then
    writeln(utf8toansi('Чётных слов в строке нет!'));
  writeln(utf8toansi('Не входят ни в одно чётное слово согласные:'), sortbunch(c));
  writeln(utf8toansi('Нажмите любую клавишу для завершения работы программы.'));
  readln();
end.
