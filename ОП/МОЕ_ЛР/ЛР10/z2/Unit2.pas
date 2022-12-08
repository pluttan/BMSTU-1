unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
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
    procedure Button1Onclick(Sender: TObject);
    procedure Edit2Onclick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;
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

procedure TForm2.Button1Onclick(Sender: TObject);
begin
  z.fam:=edit1.text;
  z.name:=edit2.text;
  z.fon:=edit3.text;
  z.adr:=edit4.text;
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
  write(f,z);
  edit1.setfocus;
end;


procedure TForm2.Edit2Onclick(Sender: TObject);
begin
   AssignFile(f,'telefon.dat');
   reset(f);
   form1.show;
   form1.edit1.setfocus;
end;

end.
