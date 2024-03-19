program Project1;
{$APPTYPE CONSOLE}
uses
 SysUtils;
var
 s,c,smax,s1,t:string;
 n,max,nmax,k:integer;
begin
 max:=0;
 writeln('BBedite ctroky');
 readln(c);
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
     if k>max then
      begin
       max:=k;
       smax:=s1;
       nmax:=n-k;
      end;
   k:=0;
   s1:='';
   read(c);
  end;
 writeln('Ucxodnaa ctroka');
 writeln(s);
 delete(s,nmax,max+1);
 writeln('cloBo maximalnou dlinnu');
 writeln(smax);
 writeln('ctroka Bez cloBa maximalnou dlinnu');
 writeln(s);
 readln;
 readln;
end.
