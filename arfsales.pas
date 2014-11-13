unit arfsales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, DModul, Mylib, Mask,
  DBCtrls;

type
  Tarfsalesform = class(TinftemplateForm)
    Label1: TLabel;
    DBESales: TDBEdit;
    Label2: TLabel;
    DBENama: TDBEdit;
    Label3: TLabel;
    DBEProsen: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBLCabang: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arfsalesform: Tarfsalesform;

implementation

{$R *.dfm}

procedure Tarfsalesform.btnCancelClick(Sender: TObject);
begin
  MastData.MARSales.Cancel;
  Mastdata.MARSales.Close;
  mastdata.MARSales.Open;
  inherited;
end;

procedure Tarfsalesform.btnsimpanClick(Sender: TObject);
begin
  if MastData.MARSalesPersen.AsFloat < 0 then
  begin
     konfError('Prosentase Sales harus > 0');
     DBEProsen.SetFocus;
     abort;
  end;
  if MastData.MARSalesCompany.Value = '' then
  begin
     konfError('Nama Cabang perusahaan harus diisi');
     DBLCabang.SetFocus;
     abort;
  end;
  MastData.MARSales.Post;
  MastData.MARSales.Close;
  mastdata.MARSales.Open;
  inherited;
end;

procedure Tarfsalesform.FormCreate(Sender: TObject);
begin
  inherited;
  with MastData.MCabang do
  begin
    Close;
    Open;
  end;
  DBESales.ReadOnly := False;
  if MastData.statSales = 1 then
  begin
    DBESales.ReadOnly := True;
  end;
end;

procedure Tarfsalesform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key :=#0;
    if DBESales.Focused then
       DBENama.SetFocus else
    if DBENama.Focused then
       DBEProsen.SetFocus else
    if DBEProsen.Focused then
       DBLCabang.SetFocus else
    if DBLCabang.Focused then
       btnsimpan.SetFocus;
  end;
end;

procedure Tarfsalesform.FormShow(Sender: TObject);
begin
  inherited;
  if MastData.statSales = 0 then
  begin
     DBESales.Enabled:= True;
     DBESales.SetFocus
  end else
  begin
     DBESales.Enabled:= false;
     DBENama.SetFocus;
  end;
end;

end.
