program Ex5_6;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const recs=1024;  {размер записи}
 Var fi,fo:file;{нетипизированный файл }
        buf : array [1..2*recs] of byte;     {буфер на 2048 байт}
        i:integer;        namein,nameout: string;

begin
 WriteLn('Input name input_file :');  ReadLn(namein);
      {проверка наличия файла с указанным  именем}
       Assign(fi,namein);
       {$I-} ReSet(fi,1); {$I+} {открываем файл для чтения}
        if IOResult <> 0 then
  begin    WriteLn(#7,' file with name ',namein,' not found');
            Readln;
            Halt
  end;
        WriteLn('Input name Output_file: '); ReadLn(nameout);
        Assign(fo,nameout);
        ReWrite(fo,1);    {открываем файл для записи}
         while not EOF(fi) do
             begin
               BlockRead(fi,buf,sizeof(buf),i);{читаем блок из входного файла}
               BlockWrite(fo,buf,i);{пишем блок из буфера в выходной файл}
             end;
        Close(fi);
        Close(fo);
        Readln;
end.
