program Ex8_04;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  Graphic in 'Graphic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
