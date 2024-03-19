program Ex_9_02;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Figure in 'Figure.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
