program Ex8_01;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
