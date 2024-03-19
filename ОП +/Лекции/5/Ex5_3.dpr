program Ex5_3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type fam=record      {тип запись "сведени€ о сотрудниках"}
                      ff:string[20];  {фамили€}
                     year:word;       {год рождени€}
                     month:1..12;    {мес€ц рождени€}
                     day:1..31          {день рождени€}
                  end;
  Var f:file of fam;  {файлова€ переменна€ "файл сотрудников"}
        fb:fam;  fff:string;    key:boolean;

begin
        Assign(f,'a.dat');  {св€зываем файловую переменную с файлом}
        ReWrite(f);           {открываем файл дл€ записи}
        WriteLn('Input family or empty string');
        Readln(fb.ff);
        while length(fb.ff)<>0 do  {цикл, пока не введена пуста€ строка}
          begin
            WriteLn('Input birthday: year month day');
            ReadLn(fb.year, fb.month, fb.day); {вводим данные по по-л€м, фамилию вводим в отдельной строке, так как ввод строки завершаетс€ нажатием клавиши Enter}
            Write(f,fb);   {записываем запись в файл как один компонент}
            WriteLn('Input family or empty string');
            Readln(fb.ff);
          end;
        Close(f);            {закрываем файл}
        Write('Input Family: ');
        Readln(fff);
        key:=false;     {устанавливаем признак "запись не найдена"}
        ReSet(f);            {открываем файл дл€ чтени€}
        while (not EOF(f)) and (not key) do  {пока не обнаружен конец файла и не найдена запись}
          begin
           Read(f,fb);      {читаем запись из файла}
           if fb.ff=fff then  {если фамилии совпадают, то}
             begin   {выводим данные}
                   WriteLn('DATA: ',fb.year,fb.month:3,fb.day:3);
                   key:=true;  {устанавливаем признак "запись найдена"}
             end;
          end;
        if not key then WriteLn('No information');  {если признак не уста-новлен, то выводим "нет данных"}
        Close(f);  {закрываем файл}
        Readln;
end.
