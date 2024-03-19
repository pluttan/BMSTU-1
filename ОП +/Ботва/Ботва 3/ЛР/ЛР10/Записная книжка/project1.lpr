program project1;

uses
  Interfaces, Forms, U_main, U_search, U_add;

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TF_main, F_main);
  Application.CreateForm(TF_search, F_search);
  Application.CreateForm(TF_add_new, F_add_new);
  Application.Run;
end.

