unit searchtemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSearchTempleteForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    EPencarian: TEdit;
    btnOk: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure EPencarianKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchTempleteForm: TSearchTempleteForm;

implementation

{$R *.dfm}

procedure TSearchTempleteForm.btnOkClick(Sender: TObject);
begin
  if EPencarian.Text <>'' then
  begin
    ModalResult := mrOk;
    hide;
  end else
  begin
    ModalResult := mrNo;
    self.Close;
  end;
end;

procedure TSearchTempleteForm.EPencarianKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    btnOk.Click;
  end;
end;

procedure TSearchTempleteForm.FormCreate(Sender: TObject);
begin
  EPencarian.Clear;
end;

procedure TSearchTempleteForm.FormDestroy(Sender: TObject);
begin
  EPencarian.Clear;
end;

end.
