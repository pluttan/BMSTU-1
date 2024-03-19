program Project1;
 {$APPTYPE CONSOLE}

uses
  SysUtils;

 //1-сундук
 //0-поле
 //2-выход
 //3-игрок

 type
  TMap = array [1..10, 1..10] of integer;

procedure soondook(var v, mon:integer);
 begin
  randomize;
    v:=random(2);   //0-смерть 1-монеты
    if  v <> 0 then
     mon:=mon+random(11)
    else
     writeln('you died');
 end;

procedure cdvig(k1, k2:integer; var i, j, ipr, jpr:integer; var a:Tmap);
 begin
  for k1 := 1 to 10 do
   begin
    for k2 := 1 to 10 do
     begin
      if (k1 = i) and (k2 = j) then
       a[k1,k2]:=3;
      if (k1 = ipr) and (k2 = jpr) then
       a[k1,k2]:=0;
     end;
   end;
 end;

procedure printmap(k1, k2:integer; var i, j, mon:integer; var a: Tmap);
 begin
  for k1 := 1 to 10 do
   begin
    for k2 := 1 to 10 do
     write(a[k1,k2],' ');
    writeln;
   end;
  writeln('-------------------');
  writeln('vashe mesto ', i,':', j,' money:',mon);
 end;

procedure prob;
 begin
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
 end;

procedure cozd (k1, k2, i2, j2 :integer; var m, i, j:integer; var a: Tmap);
 begin
  m:=a[i,j];
  a[i2,j2] := 2;
  for k1 := 1 to 10 do
   begin
    for k2 := 1 to 10 do
     begin
      if (k1 = i) and (k2 = j) then
       begin
        a[k1,k2]:=3;
       end
      else
       begin
        if (k1 <> i2) and (k2 <> j2) then
         a[k1,k2]:=random(2);
       end;
     end;
   end;
 end;

var
 v,i,j,j2,i2,m,mon,ipr,jpr,k1,k2:integer;
 s:string;
 a: TMap;
begin
 randomize;
 v:=random(2);
 i2:=random(10)+1; j2:=random(10)+1;
 i:=10; j:=1; mon:=0;
 cozd(k1,k2,i2,j2,m,i,j,a);
 printmap(k1,k2,i,j,mon,a);
 while m <> 2 do
  begin
   readln(s);
   if s = 'w' then
    begin
     ipr:=i; jpr:=j;
     i:=i-1;
     m:=a[i,j];
     prob;
     cdvig(k1,k2,i,j,ipr,jpr,a);
     printmap(k1,k2,i,j,mon,a);
     prob;
    end
   else
    if s = 's' then
     begin
      ipr:=i; jpr:=j;
      i:=i+1;
      m:=a[i,j];
      prob;
      cdvig(k1,k2,i,j,ipr,jpr,a);
      printmap(k1,k2,i,j,mon,a);
      prob;
     end
   else
    if s = 'd' then
     begin
      ipr:=i; jpr:=j;
      j:=j+1;
      m:=a[i,j];
      prob;
      cdvig(k1,k2,i,j,ipr,jpr,a);
      printmap(k1,k2,i,j,mon,a);
      prob;
     end
   else
    if s = 'a' then
     begin
      ipr:=i; jpr:=j;
      j:=j-1;
      m:=a[i,j];
      prob;
      cdvig(k1,k2,i,j,ipr,jpr,a);
      printmap(k1,k2,i,j,mon,a);
      prob;
     end;
   if m = 1 then
    begin
     soondook(v,mon);
     if v = 0 then
      break;
    end;
  end;
 writeln;
 if m = 2 then
  writeln('vi dobralis do vixoda');
 readln;

end.
