unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

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

procedure TForm2.Button1Click(Sender: TObject);
begin
 z.fam:=edit1.text;
  z.name:=edit2.text;
  z.fon:=edit3.text;
  z.adr:=edit4.text;
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
 // write(f,z);
  edit1.setfocus;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 closefile(f);
   self.hide;
end;

end.
