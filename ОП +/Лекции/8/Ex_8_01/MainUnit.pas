unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    Bevel1: TBevel;
    NextButton: TButton;
    ExitButton: TButton;
    InputLabel: TLabel;
    InPutEdit: TEdit;
    OutPutLabel: TLabel;
    OutPutEdit: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure InPutEditKeyPress(Sender: TObject; var Key: Char);
    procedure NextButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.FormActivate(Sender: TObject);
begin
   NextButton.Enabled:=false;
   InPutEdit.ReadOnly:=false;
   InPutEdit.Clear;
   InPutEdit.Enabled:=true;
   InPutEdit.SetFocus;
   OutPutLabel.Visible:=false;
   OutPutEdit.Visible:=false;
end;

procedure TMainForm.InPutEditKeyPress(Sender: TObject; var Key: Char);
var x:real;Code:integer;
begin
    If Key=#13 then
      begin
        Key:=#0;
        Val(InPutEdit.Text,x,Code);
        if Code=0 then
           begin
             InputEdit.ReadOnly:=true;
             InputEdit.Enabled:=false;
             OutPutLabel.Visible:=true;
             OutPutEdit.Visible:=true;
             OutPutEdit.Text:=floattostr(sqr(x));
             NextButton.Enabled:=true;
             NextButton.SetFocus;
           end
        else
          begin
            MessageDlg('Введенная строка содержит лишние символы.',
                          mtError, [mbOk], 0);
          end
      end
end;

procedure TMainForm.NextButtonClick(Sender: TObject);
begin
  FormActivate(NextButton);
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

end.
