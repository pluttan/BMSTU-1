
Unit Unit1;

Interface

Uses 
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

Type 
  TForm1 = Class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Procedure Button1Click(Sender: TObject);
    Procedure Button2Click(Sender: TObject);
    Procedure Button3Click(Sender: TObject);
    Procedure Button4Click(Sender: TObject);
    Procedure Button5Click(Sender: TObject);
    Procedure Button6Click(Sender: TObject);
    Procedure Button7Click(Sender: TObject);
    Private 
    { Private declarations }
    Public 
    { Public declarations }
  End;

Var 
  Form1: TForm1;

Implementation

Var Sum: real;
  operation: char = '@';


Procedure operate;

Var    s: string;
  code: integer;
  n: real;
Begin
  s := Form1.Edit1.text;
  {  читаем сроку из параметра text Edit1}
  Form1.Edit1.clear;   {  очищаем Edit1}
  val(s,n,code);  {  преобразуем строку в число}
  Case operation Of        { выполняем операцию}
    '@': sum := n;
    '+': sum := sum+n;
    '-': sum := sum-n;
    '*': sum := sum*n;
    '/': sum := sum/n;
  End;
End;



{$R *.dfm}

Procedure TForm1.Button1Click(Sender: TObject);
Begin
  Edit1.Clear;
  operation := '@';
  Edit1.setfocus;
End;

Procedure TForm1.Button2Click(Sender: TObject);

Var s: string;
Begin
  operate;     { выполнить предыдущую операцию}
  str(sum:6:3,s);
  { преобразовать результат в строку}
  Edit1.text := s;
  { вывести строку в окно компонента Edit1}
  operation := '@';
  Edit1.setfocus;
  { установить курсор на кнопку Button1}

End;

Procedure TForm1.Button3Click(Sender: TObject);
Begin

  operate; { выполнить предыдущую операцию}
  operation := '+';
  { установить состояние "операция +"}
  Edit1.setfocus;
  { установить активным окно компонента Edit1}

End;

Procedure TForm1.Button4Click(Sender: TObject);
Begin

  operate; { выполнить предыдущую операцию}
  operation := '-';
  { установить состояние "операция +"}
  Edit1.setfocus;
  { установить активным окно компонента Edit1}

End;

Procedure TForm1.Button5Click(Sender: TObject);
Begin
  operate;
  operation := '*';
  Edit1.setfocus;

End;

Procedure TForm1.Button6Click(Sender: TObject);
Begin
  operate;
  operation := '/';
  Edit1.setfocus;

End;

Procedure TForm1.Button7Click(Sender: TObject);
Begin
  Close;
End;

End.
