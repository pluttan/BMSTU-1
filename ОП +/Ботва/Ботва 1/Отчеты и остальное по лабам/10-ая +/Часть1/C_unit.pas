unit C_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

 var
  sum:real;
  operation:char='@';
  {$R *.dfm}

 procedure operate;
  var
   s:string;
   code:integer;
   n:real;
  begin
   s:=Form1.Edit1.Text;
   Form1.Edit1.Clear;
   val(s,n,code);
   case operation of
   '@':sum:=n;
   '+':sum:=sum+n;
   '-':sum:=sum-n;
   '*':sum:=sum*n;
   '/':sum:=sum/n;
   end;
  end;

procedure TForm1.Button1Click(Sender: TObject);
 begin
  Edit1.Clear;
  operation:='@';
  Edit1.SetFocus;
 end;

procedure TForm1.Button2Click(Sender: TObject);
 var
  s:string;
 begin
  operate;
  str(sum:6:3,s);
  Edit1.Text:=s;
  operation:='@';
  Edit1.SetFocus;
 end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 operate;
 operation:='+';
 Edit1.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
 begin
  operate;
  operation:='-';
  Edit1.SetFocus;
 end;

procedure TForm1.Button5Click(Sender: TObject);
 begin
  operate;
  operation:='*';
  Edit1.SetFocus;
 end;

procedure TForm1.Button6Click(Sender: TObject);
 begin
  operate;
  operation:='/';
  Edit1.SetFocus;
 end;

procedure TForm1.Button7Click(Sender: TObject);
 begin
  Close;
 end;

end.
