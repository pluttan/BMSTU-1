Program Ex6_3;
{$APPTYPE CONSOLE}
Uses  SysUtils;
Var y:integer;
Function Play(n,m:integer):integer;
Type child_ptr=^child;
     child=record
             name:integer;
             p:child_ptr;
           end;
Var First,Next,Pass:child_ptr;
    j,k:integer;
begin { Формирование списка }
      new(First);
      First^.name:=1;
      Pass:=First;
      for k:=2 to N do
         begin  new(Next);
                Next^.name:=k;
                Pass^.p:=Next;
                Pass:=Next;
         end;
      { Замыкание круга }
      Pass^.p:=First;
      { Повторение считалки N-1 раз }
      Pass:=First;
      for k:=n downto 2 do
         begin for j:=1 to m-1 do
                  begin Next:=Pass;
                        Pass:=Pass^.p;
                  end;
               writeln(Pass^.name);
               Next^.p:=Pass^.p;
               dispose(Pass);
               Pass:=Next^.p;
         end;
      Play:=Pass^.name;
end;
Begin  y:=Play(5,3);
       WriteLn('Result =',y:2);
       ReadLn;
End.

 