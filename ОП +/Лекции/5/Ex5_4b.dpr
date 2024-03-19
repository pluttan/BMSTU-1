program Ex5_4b;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type fam=record      {тип запись "сведения о сотрудниках"}
                      ff:string[20];  {фамилия}
                     year:word;       {год рождения}
                     month:1..12;    {месяц рождения}
                     day:1..31;          {день рождения}
                  end;
  Var f:file of fam;  {файловая переменная "файл сотрудников"}
        fb:fam;  fff:string;    key:boolean;

begin
        Assign(f,'a.dat');  {связываем файловую переменную с файлом}
        Write('Input Family: ');
        Readln(fff);
        key:=false;     {устанавливаем признак "запись не найдена"}
        ReSet(f);            {открываем файл для чтения}
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
