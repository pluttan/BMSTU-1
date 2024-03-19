unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    Image: TImage;
    ColorButton: TButton;
    ExitButton: TButton;
    RadioGroup: TRadioGroup;
    rLabel: TLabel;
    rEdit: TEdit;
    UpDown: TUpDown;
    ColorDialog: TColorDialog;
    procedure FormActivate(Sender: TObject);
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UpDownClick(Sender: TObject; Button: TUDBtnType);
    procedure ColorButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  end;

var
  MainForm: TMainForm;

implementation

uses Figure;
Var C:TMyFigure;
{$R *.dfm}

procedure TMainForm.FormActivate(Sender: TObject);
begin
    Image.Canvas.Brush.Color:=clWhite;
    Image.Canvas.Pen.Color:=clBlack;
end;

procedure TMainForm.ImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbLeft then
    case RadioGroup.ItemIndex of
    0: begin
        C.Free;
        C:=TMyCircle.Create(Image,X,Y,strtoint(rEdit.Text),Image.Canvas.Pen.Color);
       end;
    1: begin
        C.Free;
        C:=TMySquare.Create(Image,X,Y,strtoint(rEdit.Text),Image.Canvas.Pen.Color);
       end;
    end;
end;

procedure TMainForm.UpDownClick(Sender: TObject; Button: TUDBtnType);
begin
  if C<>nil then
  begin
    C.Clear;
    C.Radius:=strtoint(rEdit.Text);
    C.Draw;
  end;
end;

procedure TMainForm.ColorButtonClick(Sender: TObject);
begin
  if ColorDialog.Execute then Image.Canvas.Pen.Color:=ColorDialog.Color;
  if C<>nil then
  begin
    C.Color:=Image.Canvas.Pen.Color;
    C.Clear;
    C.Draw;
  end;
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

initialization
finalization C.Free;
end.

