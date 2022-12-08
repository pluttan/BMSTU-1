unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2OnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

type zap=record
     fam:string[22]; 		{Фамилия}
     name:string[22];		{Имя}
     fon:string[22]; 		{Телефон}
     adr:string[22];		{Адрес}
      end;
var
f:file of zap;
		z:zap;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var c:integer;
    fam:string[22];
begin
   c:=1;
   fam:=edit1.text;
   while not eof(f) do
      begin
        read(f,z);
        if fam=z.fam then
           begin
              c:=0;
              edit2.text:=z.name;
              edit3.text:=z.fon;
              edit4.text:=z.adr;
              break;
           end;
      end;
   if c<>0 then
      begin
         edit3.text:='Нет данных';
      end;
   reset(f);
   end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  closefile(f);
  self.hide;
end;

procedure TForm1.Edit2OnClick(Sender: TObject);
begin
   edit1.clear;
   edit2.clear;
   edit3.clear;
   edit4.clear;
end;

end.
