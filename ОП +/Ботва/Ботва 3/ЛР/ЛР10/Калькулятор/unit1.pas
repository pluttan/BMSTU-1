unit Unit1;

interface

uses
  Classes, Forms, StdCtrls;

type
  TForm1 = class(TForm)
    btnC: TButton;
    btnPrepare: TButton;
    btnPlus: TButton;
    btnMinus: TButton;
    btnMultiplecate: TButton;
    btnDivision: TButton;
    btnExit: TButton;
    eRes: TEdit;
    procedure btnCClick(Sender: TObject);
    procedure btnPrepareClick(Sender: TObject);
    procedure operators(Sender: TButton);
    procedure btnExitClick(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
var
  Sum: real;
  operation: string = '@';

procedure operate;
var
  s: string;
  code: integer;
  n: real;
begin
  s := Form1.eRes.Text;
  Form1.eRes.Clear;
  val(s, n, code);
  if code = 0 then
    case operation of
      '@': sum := n;
      '+': sum := sum + n;
      '-': sum := sum - n;
      'x': sum := sum * n;
      '/': if n = 0 then
          form1.Caption := 'Div by 0!'
        else
          sum := sum / n;
    end;
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  eRes.Clear;
  operation := '@';
  eRes.SetFocus;
end;

procedure TForm1.btnPrepareClick(Sender: TObject);
var
  s: string;
begin
  operate;
  str(sum: 6: 3, s);
  eRes.Text := s;
  operation := '@';
  eRes.SetFocus;
end;

procedure TForm1.operators(Sender: TButton);
begin
  operate;
  operation := Sender.Caption;
  eRes.SetFocus;
end;

procedure TForm1.btnExitClick(Sender: TObject);
begin
  Close;
end;

end.
