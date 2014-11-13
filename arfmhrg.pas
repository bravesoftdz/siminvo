unit arfmhrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, mylib, DModul, Mask,
  DBCtrls;

type
  Tarfmhrgform = class(TinftemplateForm)
    Label1: TLabel;
    DBEHrg: TDBEdit;
    Label2: TLabel;
    DBEKet: TDBEdit;
    Label3: TLabel;
    DBEVal: TDBEdit;
    DBLValuta: TDBLookupComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLValutaCloseUp(Sender: TObject);
    procedure DBLValutaEnter(Sender: TObject);
    procedure DBLValutaExit(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arfmhrgform: Tarfmhrgform;

implementation

{$R *.dfm}

procedure Tarfmhrgform.btnCancelClick(Sender: TObject);
begin
  inherited;
  MastData.MARHrg.Cancel;
  MastData.MARHrg.Close;
  mastdata.MARHrg.Open;
end;

procedure Tarfmhrgform.btnsimpanClick(Sender: TObject);
begin
  inherited;
  if DBLValuta.Text = '' then
  begin
    konfError('Data Valuta harap dipilih');
    DBLValuta.SetFocus;
    abort;
  end;
  MastData.MARHrg.Post;
  MastData.MARHrg.Close;
  mastdata.MARHrg.Open;
end;

procedure Tarfmhrgform.DBLValutaCloseUp(Sender: TObject);
begin
  inherited;
  DBEVal.Text := MastData.MAPValVal.Value;
end;

procedure Tarfmhrgform.DBLValutaEnter(Sender: TObject);
begin
  inherited;
  MastData.MARVal.Close;
  MastData.MARVal.Open;
end;

procedure Tarfmhrgform.DBLValutaExit(Sender: TObject);
begin
  inherited;
  DBEVal.Text := MastData.MAPValVal.Value;
end;

procedure Tarfmhrgform.FormCreate(Sender: TObject);
begin
  inherited;
  with MastData.MARVal do
  begin
    Close;
    Open;
  end;
  DBEHrg.Enabled := true;
  if MastData.statSales = 1 then
  begin
    DBEHrg.Enabled := false;
  end;
end;

procedure Tarfmhrgform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if DBEHrg.Focused then
       DBEKet.SetFocus else
    if DBEKet.Focused then
       DBLValuta.SetFocus else
    if DBLValuta.Focused then
       btnsimpan.SetFocus;
  end;
end;

procedure Tarfmhrgform.FormShow(Sender: TObject);
begin
  inherited;
  if MastData.statHrg =1  then
    DBEKet.SetFocus else
    DBEHrg.SetFocus;
end;

end.
