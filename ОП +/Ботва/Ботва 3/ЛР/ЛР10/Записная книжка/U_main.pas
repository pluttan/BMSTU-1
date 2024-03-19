unit U_main;
 {$mode objfpc}{$H+}
interface

uses
  Classes, Forms, StdCtrls, U_search, U_add;

type

  TF_main = class(TForm)
    add_new_button: TButton;
    search_button: TButton;
    close_form_button: TButton;
    procedure open_to_add(Sender: TObject);
    procedure open_to_search(Sender: TObject);
    procedure close_form(Sender: TObject);
  end;

var
  F_main: TF_main;

implementation

{$R *.lfm}

procedure TF_main.open_to_add(Sender: TObject);
begin
  F_add_new.Show;
end;

procedure TF_main.open_to_search(Sender: TObject);
begin
  F_search.Show;
end;

procedure TF_main.close_form(Sender: TObject);
begin
  Close;
end;


end.

