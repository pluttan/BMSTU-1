program Project1;

uses
  Forms,
  Unit1 in '..\..\..\..\..\10 лаб в 4\Unit1.pas' {Form1},
  Unit2 in '..\..\..\..\..\10 лаб в 4\Unit2.pas' {Form2},
  Unit3 in '..\..\..\..\..\10 лаб в 4\Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
