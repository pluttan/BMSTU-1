unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

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

procedure TForm3.Button1Click(Sender: TObject);
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

procedure TForm3.Button2Click(Sender: TObject);
begin
   closefile(f);
   self.hide;

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
 edit1.clear;
   edit2.clear;
   edit3.clear;
   edit4.clear;
end;

end.
