program Project1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

type book = record
   name:string;
   autor:string;
   year:integer;
 end;
var
 a:array of book;
 f1,f2: text;
 k,i:integer;
begin
 k:=0;
 assign(f1,'kniga_norm.txt');
 assign(f2,'kniga_obr.txt');
 reset(f1);
 rewrite(f2);
 while not eof (f1) do
 begin
 readln(f1);
 readln(f1);
 readln(f1);
 k:=k+1;
 end;
 reset(f1);
 setlength(a, k);
 for i := 0 to k-1 do
  begin
  readln(f1,a[i].name);
  readln(f1,a[i].autor);
  readln(f1,a[i].year);
  end;
 for i := k-1 downto 0 do
  writeln(f2,a[i].name);
  close(f2);
  close(f1);
 readln;
end.
