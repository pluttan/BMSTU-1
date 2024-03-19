unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TMainForm = class(TForm)
    Image: TImage;
    BeginButton: TButton;
    ExitButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BeginButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Graphic;
{$R *.dfm}
{определение функции}
Function f(x:single):single; 
Begin
     Result:=abs(0.64*cos(x*2));
End;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  Image.Canvas.Brush.Color:=clWhite;
end;

procedure TMainForm.BeginButtonClick(Sender: TObject);
begin
   Run(-0.9,0.9,100,f,0,0,400,300,Image);
end;

end.
