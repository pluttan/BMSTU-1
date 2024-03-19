program Culc;

uses
  Forms,
  C_unit in 'C_unit.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
