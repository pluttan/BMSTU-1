unit U_add;

{$mode objfpc}{$H+}
interface

uses
  Classes, Forms, StdCtrls, U_search;

type

  TF_add_new = class(TForm)
    record_button: TButton;
    close_form_button: TButton;
    edit_surname: TEdit;
    edit_name: TEdit;
    edit_phone: TEdit;
    edit_address: TEdit;
    LSurname: TLabel;
    LName: TLabel;
    LPhone: TLabel;
    LAddress: TLabel;
    procedure record_buttonClick(Sender: TObject);
    procedure close_form_buttonClick(Sender: TObject);
  end;

var
  F_add_new: TF_add_new;

implementation

{$R *.lfm}

var
  f: file of zap;
  z: zap;

procedure TF_add_new.record_buttonClick(Sender: TObject);
begin
  assignFile(f, 'kniga.dat');
  {$I-}
  Reset(F);
{$I+}
  if ioresult = 0 then
    seek(f, filesize(f))
  else
    rewrite(f);
  z.adr := F_add_new.edit_address.Text;
  z.fam := F_add_new.edit_surname.Text;
  z.fon := F_add_new.edit_phone.Text;
  z.Name := F_add_new.edit_name.Text;
  Write(f, z);
  CloseFile(f);
  F_add_new.Caption := 'Запись добавлена';
  F_add_new.edit_address.Text := '';
  F_add_new.edit_surname.Text := '';
  F_add_new.edit_phone.Text := '';
  F_add_new.edit_name.Text := '';
end;

procedure TF_add_new.close_form_buttonClick(Sender: TObject);
begin
  Close;
end;


end.
