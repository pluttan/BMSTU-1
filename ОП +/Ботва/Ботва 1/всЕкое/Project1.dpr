program Project1;
{$APPTYPE CONSOLE}

uses
  SysUtils;

Type kv = object
 sta,stb,p,s:single;
 procedure init(a,b:single);
 procedure perim;
 procedure Sq;
end;

Type koob = object (kv)
 stc,v3:single;
 procedure init2(a,b,c:single);
 procedure v;
end;

procedure koob.init2(a,b,c:single);
 begin
  inherited init(a,b);
  stc:=c;
 end;

procedure koob.v;
 begin
  inherited Sq;
  v3:=s*stc;
 end;

procedure kv.init(a,b:single);
 begin
  sta:=a;
  stb:=b;
 end;

procedure kv.perim;
 begin
  p:=2*sta+2*stb;
 end;

procedure kv.Sq;
 begin
  s:=sta*stb;
 end;

var
 a,b,c:single;
 K:kv;
 K2:koob;
begin
 read(a,b,c);
 K.init(a,b);
 K2.init2(a,b,c);
 writeln('storona a= ', K.sta:3:3,' storona b= ', K.stb:3:3, ' storona c= ', K2.stc:3:3);
 K.perim;
 writeln('perimetr= ', K.p:3:3);
 K.Sq;
 writeln('ploshad= ', K.s:3:3);
 K2.v;
 writeln('obuom= ', K2.v3:3:3);
 readln;
  readln;
end.


