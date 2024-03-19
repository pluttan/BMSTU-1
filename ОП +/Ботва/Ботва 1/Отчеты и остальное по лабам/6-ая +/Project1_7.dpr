program Project1_7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c:char;
  s,s1,smax:string;
  n,max,nmax,k:integer;
begin
  read(c);
  n:=0; s:=''; max:=0; k:=0; s1:='';
  while c<>'.' do
   begin
    s:=s+c;
    n:=n+1;
     if c<>' ' then
      begin
       k:=k+1;
       s1:=s1+c;
      end
     else
      begin
       if k>max then
        begin
         max:=k;
         smax:=s1;
         nmax:=n-k;
        end;
       k:=0;
       s1:='';
      end;
      read(c);
   end;
  writeln('Ucxodnaa ctroka:');
  writeLn(s);
  writeln('cloBo maximalnou dlinnu:');
  writeLn(smax);
  writeln('dlinnu cloBo maximalnou dlinnu:');
  writeLn(max);
  delete(s,nmax,max+1);
  writeln('ctroka Bez cloBa maximalnou dlinnu:');
  writeLn(s);
  readLn;
  readLn;
end.
