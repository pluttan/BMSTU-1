unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;
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
var size:integer;
begin
   AssignFile(f,'telefon.dat');
   {$I-} Reset(F); {$I+}
   if ioresult=0 then
     begin size := FileSize(f);
               seek(f,size);
     end
   else    rewrite(f);
   Form2.Show;
   Form2.edit2.setfocus;
end;


procedure TForm3.Button2Click(Sender: TObject);
begin
   AssignFile(f,'telefon.dat');
   reset(f);
   form1.show;
   form1.edit2.setfocus;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
     close;
end;

end.
