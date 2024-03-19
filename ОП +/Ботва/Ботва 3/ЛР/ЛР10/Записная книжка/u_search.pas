unit U_search;

{$mode objfpc}{$H+}
interface

uses
  Classes, Forms, StdCtrls;

type

  TF_search = class(TForm)
    search_button: TButton;
    close_form_button: TButton;
    edit_surname: TEdit;
    Edit_name: TEdit;
    edit_phone: TEdit;
    edit_address: TEdit;
    LSurname: TLabel;
    LName: TLabel;
    LPhone: TLabel;
    LAddress: TLabel;
    procedure search_buttonClick(Sender: TObject);
    procedure close_form_buttonClick(Sender: TObject);
  end;

type
  zap = record
    fam: string[22];
    Name: string[22];
    fon: string[22];
    adr: string[22];
  end;


var
  F_search: TF_search;

implementation

{$R *.lfm}

var
  f: file of zap;
  z: zap;

procedure TF_search.search_buttonClick(Sender: TObject);
var
  famsearch: string[22];
begin
  famsearch := F_search.edit_surname.Text;
  F_search.edit_address.Text := '';
  F_search.edit_phone.Text := '';
  F_search.edit_name.Text := '';
  assignFile(f, 'kniga.dat');
  {$I-}
  Reset(F);
{$I+}
  if ioresult = 0 then
  begin
    reset(f);
    F_search.Caption := 'Запись не найдена';
    repeat
      Read(f, z);
      if z.fam = famsearch then
      begin
        F_search.Edit_name.Text := z.Name;
        F_search.edit_phone.Text := z.fon;
        F_search.edit_address.Text := z.adr;
        F_search.Caption := 'Поиск в записной книжке';
      end;
    until EOF(f);
    CloseFile(f);
  end;
end;

procedure TF_search.close_form_buttonClick(Sender: TObject);
begin
  Close;
end;

end.
