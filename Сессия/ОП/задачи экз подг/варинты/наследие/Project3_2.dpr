program Project3_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type
 avto1 = object
  age,prob:integer;
  procedure Init(a,p:integer);
  function sr:real;
  procedure vivod;
 end;

 avto1_2 = object (avto1)
  number,marka,fam:string;
  procedure Init(a,p:integer; n,f,m:string);
  procedure vivod;
 end;

procedure avto1_2.Init;
 begin
  avto1.Init(a,p);
  number:=n;
  marka:=m;
  fam:=f;
 end;

procedure avto1_2.vivod;
 begin
  avto1.vivod;
  write('nomer: ', number,'; marka: ', marka,'; familia vladelca: ',fam);
 end;

procedure avto1.Init;
 begin
  age:=a;
  prob:=p;
 end;

function avto1.sr:real;
 begin
  result:=prob/age;
 end;

procedure avto1.vivod;
 begin
  writeln('let: ', age,'; probeg: ', prob,'; srednii probeg: ',sr:3:3);
 end;

var
 f,m,n:string;
 a,p:integer;
 B:avto1;
 B2:avto1_2;
begin
 readln(a,p);
 B.Init(a,p);
 B.vivod;
 readln(n);     //   \
 readln(m);     //   | - почему не рабоает в readln(n,m,f); ?
 readln(f);     //   /
 B2.Init(a,p,n,f,m);
 B2.vivod;
 readln;
end.
