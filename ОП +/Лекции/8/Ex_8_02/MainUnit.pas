unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    Image: TImage;
    ExitButton: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ExitButtonClick(Sender: TObject);
  end;

var
  MainForm: TMainForm;

implementation
   Var Rect:TRect;first:boolean;
{$R *.DFM}

procedure TMainForm.FormActivate(Sender: TObject);
begin
    Image.Canvas.Brush.Color:=clWhite;
end;

procedure TMainForm.ImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if Button=mbLeft then
        begin
          Rect.Left:=x;
          Rect.Top:=y;
          first:=true;
        end;
end;

procedure TMainForm.ImageMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if ssLeft in Shift then
  begin
      if first then first:=not first
          else
            begin
               Image.Canvas.Pen.Color:=clWhite;
               Image.Canvas.Rectangle(Rect.Left,Rect.Top,Rect.Right,Rect.Bottom);
            end;
     Rect.Right:=X;
     Rect.Bottom:=Y;
     Image.Canvas.Pen.Color:=clBlack;
     Image.Canvas.Rectangle(Rect.Left,Rect.Top,Rect.Right,Rect.Bottom);
  end;
end;

procedure TMainForm.ImageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbLeft then
        begin
          Image.Canvas.Pen.Color:=clWhite;
          Image.Canvas.Rectangle(Rect.Left,Rect.Top,Rect.Right,Rect.Bottom);
          Rect.Right:=X;
          Rect.Bottom:=Y;
          Image.Canvas.Brush.Color:=clRed;
          Image.Canvas.FillRect(Rect);
          Image.Canvas.Brush.Color:=clWhite;
          Image.Canvas.Pen.Color:=clBlack; 
        end;
end;
procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
   Close;
end;

end.
