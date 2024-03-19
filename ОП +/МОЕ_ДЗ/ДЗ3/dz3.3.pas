
Program dz3_3;

Type 
  roles = (attak, midfielder, defender, goalkeeper);

Type Footballer = Object
  Private Fam: String[40];
  Private Num: integer;
  Private Role: roles;
    Procedure init(F: String;
                   N: integer; R: roles);
    Procedure print;
    Function GetFam: String;
    Function GetNum: Integer;
    Function GetRole: roles;
End;
Procedure Footballer.init(F: String;
                          N: integer; R: roles);
Begin
  Fam := F;
  Num := N;
  Role := R;
End;
Procedure Footballer.print;
Begin
  Write(Fam,' ', num, ' ', Role);
  Writeln;
End;
Function Footballer.GetFam: String;
Begin
  GetFam := Fam;
End;
Function Footballer.GetNum: Integer;
Begin
  GetNum := Num;
End;
Function Footballer.GetRole: roles;
Begin
  GetRole := Role;
End;

Type Command = Object
  Private Name: String[40];
  Private Footballers: array [1..11] Of Footballer;
    Procedure init(N: String; FB: Array Of Footballer);
    Procedure print;
    Function Findgoalkeeper: integer;
End;
Procedure Command.init(N: String; FB: Array Of Footballer);
Begin
  Name := N;
  Footballers := FB;
End;
Procedure Command.print;

Var i: integer;
Begin
  Write('Команда ',Name);
  Writeln;
  For i:=1 To 11 Do
    Footballers[i].print;
End;
Function Command.Findgoalkeeper: integer;

Var i: integer;
  fl: boolean;
Begin
  fl := false;
  While fl And (i<=11) Do
    Begin
      If Footballers[i].Role = goalkeeper Then
        Begin
          fl := true;
          Findgoalkeeper := Footballers[i].Num;
        End;
      i := i + 1;
    End;
End;

Var fb: array [1..11] Of Footballer;
  com: Command;
  i: integer;
Begin
  For i:=1 To 10 Do
    fb[i].init('ABCD', i, attak);
  fb[11].init('GK', 11, goalkeeper);
  fb[1].print;
  Writeln(fb[11].getFam);
  Writeln(fb[11].getNum);
  Writeln(fb[11].getRole);
  com.init('Com1',fb);
  com.print;
  writeln(com.Findgoalkeeper);
End.
