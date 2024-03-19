program project1;

uses
  Interfaces,
  Forms,
  Unit1;

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
