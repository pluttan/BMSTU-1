Program Ex6_4;
{$APPTYPE CONSOLE}
Uses SysUtils;
Const lim=100;
Type top_ptr=^top;
     top=record
           value:integer;
           left,right:top_ptr;
         end;
Var next_number:integer;
      r,pass:top_ptr;
 {процедуры добавления вершины к дереву}
Procedure Add1(Var r:top_ptr; pass:top_ptr);
Var next,succ:top_ptr;
Begin
    if r=nil then r:=pass
    else
      begin
        succ:=r;
        while succ<>nil do
          begin next:=succ;
                if pass^.value<succ^.value then
                     succ:=succ^.left
                else succ:=succ^.right;
          end;
    {добавление вершины}
        if pass^.value<next^.value then
             next^.left:=pass
        else next^.right:=pass;
      end;
End;

Procedure Add2(Var r:top_ptr; pass:top_ptr);
    begin
          if r=nil then r:=pass
          else
              if (pass^.value<r^.value) then Add2(r^.left,pass)
                                        else Add2(r^.right,pass);
    end;
{процедура сортировки - обход дерева}
Procedure Tree1(r:top_ptr);
var pass:top_ptr;
    mem_top:record
              nom:0..lim;
              adres:array[1..lim] of top_ptr;
            end;
  begin pass:=r;
        with mem_top do
          begin nom:=0;
           while (pass<>nil) or (nom<>0) do
            if pass<>nil then
               begin
                  if nom=lim then
                     begin writeln('Увеличьте lim');
                           exit;
                     end;
                  nom:=nom+1;
                  adres[nom]:=pass;
                  pass:=pass^.left;
               end
            else begin pass:=adres[nom];
                       nom:=nom-1;
                       writeln(pass^.value);
                       pass:=pass^.right;
                 end;
          end;
end;
Procedure Tree2(r:top_ptr);
begin
  if r<>nil then
       begin
          Tree2(r^.left);
          Write(r^.value:4);
          Tree2(r^.right);
       end;
end;
Begin
  WriteLn('Input numbers (End - 1000)');
  r:=nil;
  Read(next_number);
  while next_number<>1000 do
    begin
      new(pass);
      with pass^ do
        begin value:=next_number;
              left:=nil;
              right:=nil;
        end;
      Add1(r,pass);
      Read(next_number)
    end;
  ReadLn;
  WriteLn('Result:');
  Tree1(r);
  ReadLn;
End.

