unit apfsup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, mylib, DModul, Mask,
  DBCtrls;

type
  Tapfsupform = class(TinftemplateForm)
    Label1: TLabel;
    DBESup: TDBEdit;
    Label2: TLabel;
    DBENama: TDBEdit;
    Label3: TLabel;
    DBEAL1: TDBEdit;
    DBEAL2: TDBEdit;
    Label4: TLabel;
    DBETelp: TDBEdit;
    Label5: TLabel;
    DBEFax: TDBEdit;
    Label6: TLabel;
    DBENPWP: TDBEdit;
    Label7: TLabel;
    DBETERM: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLWil: TDBLookupComboBox;
    DBLCab: TDBLookupComboBox;
    DBLVAL: TDBLookupComboBox;
    Label11: TLabel;
    DBENMVal: TEdit;
    DBENMWil: TEdit;
    DBENMCab: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBLVALCloseUp(Sender: TObject);
    procedure DBLVALExit(Sender: TObject);
    procedure DBLVALEnter(Sender: TObject);
    procedure DBLWilEnter(Sender: TObject);
    procedure DBLWilExit(Sender: TObject);
    procedure DBLWilCloseUp(Sender: TObject);
    procedure DBLCabCloseUp(Sender: TObject);
    procedure DBLCabExit(Sender: TObject);
    procedure DBLCabEnter(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  apfsupform: Tapfsupform;

implementation

{$R *.dfm}

procedure Tapfsupform.btnCancelClick(Sender: TObject);
begin
  mastData.MAPSup.Cancel;
  with MastData.MAPSup do
  begin
   close;
   SQL.Clear;
   SQL.Add(' Select * From svapmsup');
   Open;
  end;
  inherited;
end;

procedure Tapfsupform.btnsimpanClick(Sender: TObject);
begin
  with MastData do
  begin
    If (MAPSupSUP.Value = '') Then
    begin
      konfError('Maaf Kode Supplier harap diisi...!!!');
      DBESup.SetFocus;
      abort;
    end;
    IF (MAPSupNPWP.value = '') Then
    begin
      konfError('Maaf NPWP harap diisi...!!!');
      DBENPWP.SetFocus;
      abort
    end;
    IF (MAPSupTerm.AsInteger < 0) Then
    begin
      konfError('Maaf Term of Payment tidak boleh < 0...!!!');
      DBESup.SetFocus;
      abort;
    end;
    If (MAPSupval.Value = '') then
    begin
      konfError('Maaf Kode Valuta harap diisi...!!!');
      DBESup.SetFocus;
      abort;
    end;
  end;
  MastData.MAPSup.Post;
  mastData.MAPSup.Close;
  MastData.MAPSup.Open;
  inherited;
end;

procedure Tapfsupform.DBLCabCloseUp(Sender: TObject);
begin
  inherited;
  DBENMCab.Text := MastData.MCabangKet.Value;
end;

procedure Tapfsupform.DBLCabEnter(Sender: TObject);
begin
  inherited;
  MastData.MCabang.Close;
  MastData.MCabang.Open;
end;

procedure Tapfsupform.DBLCabExit(Sender: TObject);
begin
  inherited;
  DBENMCab.Text := MastData.MCabangKet.Value;
end;

procedure Tapfsupform.DBLVALCloseUp(Sender: TObject);
begin
  inherited;
  DBENMVal.Text := MastData.MAPValKet.Value;
end;

procedure Tapfsupform.DBLVALEnter(Sender: TObject);
begin
  inherited;
  MastData.MAPVal.Close;
  MastData.MAPVal.Open;
end;

procedure Tapfsupform.DBLVALExit(Sender: TObject);
begin
  inherited;
  DBENMVal.Text := MastData.MAPValKet.Value;
end;

procedure Tapfsupform.DBLWilCloseUp(Sender: TObject);
begin
  inherited;
  DBENMWil.Text := MastData.MWilayahNama.Value;
end;

procedure Tapfsupform.DBLWilEnter(Sender: TObject);
begin
  inherited;
  MastData.MWilayah.Close;
  MastData.MWilayah.Open;
end;

procedure Tapfsupform.DBLWilExit(Sender: TObject);
begin
  inherited;
  DBENMWil.Text := MastData.MWilayahNama.Value;
end;

procedure Tapfsupform.FormCreate(Sender: TObject);
begin
  inherited;
  Try
    with MastData do
    begin
      MAPVal.Close;
      MAPVAl.Open;
      MWilayah.Close;
      MWilayah.Open;
      MCabang.Close;
      MCabang.Open;
    end;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  End;
  DBENMVal.Clear;
  DBENMWil.Clear;
  DBENMCab.Clear;
  if MastData.statSupp =  1 then
  begin
    try
      // Valuta
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svapmval where val = '''+DBLVAL.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMVal.Text := MastData.QCari.Fields[0].Value else
         DBENMVal.Text := '';
      // Wilayah
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Nama From svmwilayah where wil = '''+DBLWil.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMWil.Text := MastData.QCari.Fields[0].Value else
         DBENMWil.Text := '';
      // Cabang
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmcbg where cab = '''+DBLCab.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMCab.Text := MastData.QCari.Fields[0].Value else
         DBENMCab.Text := '';
    except
      konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
      self.close;
    end;
  end;
end;

procedure Tapfsupform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if DBESup.Focused then
       DBENama.SetFocus else
    if DBENama.Focused then
       DBEAL1.SetFocus else
    if DBEAL1.Focused then
       DBEAL2.SetFocus else
    if DBEAL2.Focused then
       DBETelp.SetFocus else
    if DBETelp.Focused then
       DBEFax.SetFocus else
    if DBEFax.Focused then
       DBENPWP.SetFocus else
    if DBENPWP.Focused then
       DBETERM.SetFocus else
    if DBETERM.Focused then
       DBLVAL.SetFocus else
    if DBLVAL.Focused then
       DBLWil.SetFocus else
    if DBLWil.Focused then
       DBLCab.SetFocus else
    if DBLCab.Focused then
       btnsimpan.SetFocus;
  end;
end;

procedure Tapfsupform.FormShow(Sender: TObject);
begin
  inherited;
  if MastData.statSupp = 0 then
  DBESup.SetFocus else
  DBENama.setfocus;
end;

end.
