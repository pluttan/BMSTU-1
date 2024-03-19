unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

uses Unit2, Unit3;
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
   Form2.edit1.setfocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AssignFile(f,'telefon.dat');
   reset(f);
   form3.show;
   form3.edit1.setfocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Close;
end;

end.
