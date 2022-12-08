
Program LR8;

Uses sysutils;

Var Fmas, Gmas: array Of Integer;
  F,G,H: text;
  Fi,Gi,Fk,Gk: integer;
  fl: boolean;

Begin
  assign(F,'F');
  assign(G,'G');
  assign(H,'H');
  reset(F);
  reset(G);
  rewrite(H);
  While Not eof(F) Do
    Begin
      readln(F);
      Fk := Fk + 1;
    End;
  While Not eof(G) Do
    Begin
      readln(G);
      Gk := Gk + 1;
    End;
  setlength(Fmas,Fk);
  setlength(Gmas,Gk);
  reset(F);
  reset(G);
  writeln('Содержимое файла F');
  For Fi := 0 To Fk - 1 Do
    Begin
      readln(F,Fmas[Fi]);
      write(Fmas[Fi],' ');
    End;
  writeln();
  writeln('Содержимое файла G');
  For Gi := 0 To Gk - 1 Do
    Begin
      readln(G,Gmas[Gi]);
      write(Gmas[Gi],' ');
    End;
  writeln();
  writeln('Содержимое файла H');
  For Fi := 0 To Fk - 1 Do
    Begin
      fl := True;
      For Gi := 0 To Gk - 1 Do
        If Fmas[Fi] = Gmas[Gi] Then fl := False;
      If fl Then
        Begin
          writeln(H, Fmas[Fi]);
          write(Fmas[Fi], ' ');
        End;
    End;
  close(H);
  close(F);
  close(G);
End.
