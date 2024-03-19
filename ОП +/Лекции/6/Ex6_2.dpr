Program Ex6_2;
{$APPTYPE CONSOLE}
Uses  SysUtils;
Type point=^zap;
     zap=record
          det:string[10];
          diam:real;
          p:point;
         end;
Var r,q,f:point;
     a:zap;
     c:integer;
Begin new(r);
      r^.p:=nil;
      Writeln('Input name and diam');
      Readln(r^.det,r^.diam);
      ReadLn(a.det);
      while a.det<>'end' do
            begin Readln(a.diam);
                  q:=r;
                  new(r);
                  r^.det:=a.det;
                  r^.diam:=a.diam;
                  r^.p:=q;
                  ReadLn(a.det);
            end;
      q:=r;
      c:=0;
      repeat
         if q^.diam<1 then
           begin
              if c=0 then begin r:=r^.p; dispose(q); q:=r end
                     else begin q:=q^.p; dispose(f^.p); f^.p:=q end
           end
         else begin f:=q; q:=q^.p; c:=1 end;
      until q=nil;
      q:=r;
      if q=nil then WriteLn('Nil')
      else
         while q<>nil do
           begin WriteLn(q^.det:11,q^.diam:5:1);
                 q:=q^.p;
           end;
  ReadLn;
End.

 