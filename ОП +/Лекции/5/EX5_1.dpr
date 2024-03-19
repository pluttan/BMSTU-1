program EX5_1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
     f:text;       {файловая переменная для текстовый файл }
     a:char;  n,i:integer;  fname,st:string[30];

Begin
       WriteLn('input File name');
       ReadLn(fname);
       Assign(f,fname);   {инициализируем файловую переменную}
       ReWrite(f);            {открываем файл для записи}
       Randomize;            {инициализируем датчик случайных чисел}
       for a:='A' to 'Z' do    {формируем строки}
           begin
                st:='';
                n:=Random(30)+1;
                for i:=1 to n do    st:=st+a;
                WriteLn(f,st);   {записываем строку в текстовый файл}
                WriteLn(st);       {для контроля - выводим ее на экран}
            end;
        Close(f);    {закрываем файл}
        Readln;
end.
 