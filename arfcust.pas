unit arfcust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, mylib, DModul, DBCtrls,
  Mask, Grids, DBGrids, DB, MemDS, VirtualTable, ADODB;

type
  TarfcustForm = class(TinftemplateForm)
    Label1: TLabel;
    DBECustID: TDBEdit;
    Label2: TLabel;
    DBENama: TDBEdit;
    tc1: TTabControl;
    Panel3: TPanel;
    DBEAlamat1: TDBEdit;
    DBEAlamat2: TDBEdit;
    DBEAlamat3: TDBEdit;
    DBEAlamatKirim1: TDBEdit;
    DBEAlamatKirim2: TDBEdit;
    DBEAlamatKirim3: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    DBETelp: TDBEdit;
    Label6: TLabel;
    DBEFax: TDBEdit;
    Label7: TLabel;
    DBEHP: TDBEdit;
    Label8: TLabel;
    DBESales: TDBEdit;
    Label9: TLabel;
    DBEWilayah: TDBEdit;
    DBLSales: TDBLookupComboBox;
    DBLWilayah: TDBLookupComboBox;
    Label10: TLabel;
    DBEHarga: TDBEdit;
    Label11: TLabel;
    DBEDisc1: TDBEdit;
    Label12: TLabel;
    DBENota2: TDBEdit;
    Label13: TLabel;
    DBEItem1: TDBEdit;
    Label14: TLabel;
    DBEItem2: TDBEdit;
    DBLHarga: TDBLookupComboBox;
    Label15: TLabel;
    DBETOP: TDBEdit;
    Label16: TLabel;
    DBELimit: TDBEdit;
    Label17: TLabel;
    Panel5: TPanel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    DBENPWP: TDBEdit;
    DBEKeterangan: TDBEdit;
    DBEValuta: TDBEdit;
    DBLValuta: TDBLookupComboBox;
    DBESaldo: TDBEdit;
    DBEGiro: TDBEdit;
    DBEEmail: TDBEdit;
    DBCPKP: TDBCheckBox;
    DBCBlackList: TDBCheckBox;
    DBCOver: TDBCheckBox;
    Label19: TLabel;
    DBEWeb: TDBEdit;
    pnlPerson: TPanel;
    pnlRekening: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label3: TLabel;
    Label4: TLabel;
    vtPerson: TVirtualTable;
    vtRekening: TVirtualTable;
    vtPersonContac: TStringField;
    vtPersonNama: TStringField;
    vtPersonJabatan: TStringField;
    vtPersonAlamat: TStringField;
    vtRekeningnorek: TStringField;
    vtRekeningKet: TStringField;
    vtRekeningBank: TStringField;
    DSVTPerson: TDataSource;
    DSVTRekening: TDataSource;
    procedure tc1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBETelpKeyPress(Sender: TObject; var Key: Char);
    procedure DBLSalesEnter(Sender: TObject);
    procedure DBLWilayahEnter(Sender: TObject);
    procedure DBLHargaEnter(Sender: TObject);
    procedure DBLValutaEnter(Sender: TObject);
    procedure DBECustIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBENamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEAlamatKirim1Enter(Sender: TObject);
  private
    procedure insertvirtual; // procedure untuk insert virtual table kedalam table asli
    procedure copyAlamat;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arfcustForm: TarfcustForm;

implementation
uses arcust;
{$R *.dfm}

procedure TarfcustForm.insertvirtual;
var
  QPerson, QRekening :TAdoQuery;
begin
  // Tgl 21-09-2014
  // Tujuan untuk mengambil data di table Person dan Rekening
  // untuk diinsertkan kedalam table virtual milik vtPerson dan vtRekening
  // created by Afes
  try
    // Insert data table person kedalam vtPerson menggunakan looping
    vtPerson.Close;
    vtPerson.Open;
    vtPerson.Clear;
    QPerson := TADOQuery.Create(nil);
    QPerson.Connection := MastData.invConnection;
    _SQL := 'Select Contac, Nama, Jabatan, Alamat from svarmperson where Cust ='''+DBECustID.Text+'''';
    EksekusiSQL(QPerson,_SQL, true);
    while not QPerson.Eof do
    begin
      vtPerson.Insert;
      vtPersonContac.Value := QPerson.Fields[0].Value;
      vtPersonNama.Value   := QPerson.Fields[1].Value;
      vtPersonJabatan.Value:= QPerson.Fields[2].Value;
      vtPersonAlamat.Value := QPerson.Fields[3].Value;
      vtperson.Post;
      QPerson.Next;
    end;
    QPerson.Free;
    vtRekening.Close;
    vtRekening.Open;
    vtRekening.Clear;
    QRekening := TADOQuery.Create(nil);
    QRekening.Connection := MastData.invConnection;
    _SQL := 'Select norek, ket, Bank from svarmrek where Cust ='''+DBECustID.Text+'''';
    EksekusiSQL(QPerson,_SQL, true);
    while not QPerson.Eof do
    begin
      vtRekening.Insert;
      vtRekeningnorek.Value := QPerson.Fields[0].Value;
      vtRekeningKet.Value   := QPerson.Fields[1].Value;
      vtRekeningBank.Value  := QPerson.Fields[2].Value;
      vtRekening.Post;
      QRekening.Next;
    end;
    QRekening.Free;
  Except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.');
    MastData.MARCust.Cancel;
    self.close;
  end;
end;

procedure TARFCustForm.copyAlamat;
begin
  // Tgl. 27-Sep-2014
  // Tujuan untuk mengkopi alamat konsumen menjadi alamat kirim
  // created by afes oktavianus
  DBEAlamatKirim1.Text := DBEAlamat1.Text;
  DBEAlamatKirim2.Text := DBEAlamat2.Text;
  DBEAlamatKirim3.Text := DBEAlamat3.Text;
end;

procedure TarfcustForm.btnCancelClick(Sender: TObject);
begin
  MastData.MARCust.Cancel;
  arcustForm.btnRefreshClick(Sender);
  inherited;
end;

procedure TarfcustForm.btnsimpanClick(Sender: TObject);
var
  QLocal : TAdoQuery;
begin
  with MastData do
  begin
    If (MARCustCust.Value = '') Then
    begin
      konfError('Maaf Kode Customer harap diisi...!!!');
      DBECustID.SetFocus;
      abort;
    end;
    IF (MARCustNama.value = '') Then
    begin
      konfError('Maaf Cust Nama harap diisi...!!!');
      DBENama.SetFocus;
      abort
    end;
    IF (MARCustTerm.AsInteger < 0) Then
    begin
      konfError('Maaf Term of Payment tidak boleh < 0...!!!');
      DBETOP.SetFocus;
      abort;
    end;
    If (MARCustVal.Value = '') then
    begin
      konfError('Maaf Kode Valuta harap diisi...!!!');
      DBEValuta.SetFocus;
      abort;
    end;
  end;
  MastData.MARCust.Post;
  mastData.MARCust.Close;
  MastData.MARCust.Open;
  // Simpan data Person dari table virtual kedalam table svarmperson
  while not vtPerson.eof do
  begin
    QLocal := TADOQuery.Create(nil);
    QLocal.Connection := MastData.invConnection;
    EksekusiSQL(QLocal,'Select 1 From svarmperson where cust = '''+DBECustID.Text+''' and Contac ='''+vtPersonContac.Value+'''',true);
    if NOT QLocal.IsEmpty then
    begin
      mastdata.MARPerson.Open;
      mastdata.MARPerson.Edit;
      MastData.MARPersonNama.Value   := vtPersonNama.Value;
      MastData.MARPersonjabatan.Value:= vtPersonJabatan.Value;
      MastData.MARPersonAlamat.Value := vtPersonAlamat.Value;
      MastData.MARPerson.Post;
    end else
    begin
      mastdata.MARPerson.Open;
      mastdata.MARPerson.Append;
      MastData.MARPersonContac.Value := vtPersonContac.Value;
      MastData.MARPersonCust.Value   := DBECustID.Text;
      MastData.MARPersonNama.Value   := vtPersonNama.Value;
      MastData.MARPersonjabatan.Value:= vtPersonJabatan.Value;
      MastData.MARPersonAlamat.Value := vtPersonAlamat.Value;
      MastData.MARPerson.Post;
    end;
    QLocal.Free;
    vtperson.Next;
  end;
  // Simpan data Rekening dari table virtual kedalam table svarcustrek
  while not vtRekening.eof do
  begin
    QLocal := TADOQuery.Create(nil);
    QLocal.Connection := MastData.invConnection;
    EksekusiSQL(QLocal,'Select 1 From svarmcustrek where cust = '''+DBECustID.Text+''' and Bank ='''+vtRekeningBank.Value+'''',true);
    if NOT QLocal.IsEmpty then
    begin
      mastdata.MARCustRek.Open;
      mastdata.MARPerson.Edit;
      MastData.MARCustReknorek.Value  := vtRekeningnorek.Value;
      MastData.MARCustRekket.Value    := vtRekeningKet.Value;
      MastData.MARCustRek.Post;
    end else
    begin
      mastdata.MARCustRek.Open;
      mastdata.MARPerson.Append;
      MastData.MARCustReknorek.Value  := vtRekeningnorek.Value;
      MastData.MARCustRekCust.Value   := DBECustID.Text;
      MastData.MARCustRekBank.Value   := vtRekeningBank.Value;
      MastData.MARCustRekket.Value    := vtRekeningKet.Value;
      MastData.MARCustRek.Post;
    end;
    QLocal.Free;
    vtRekening.Next;
  end;
  konfBerhasil('Data berhasil disimpan');
  arcustForm.btnRefreshClick(Sender);
  inherited;
end;

procedure TarfcustForm.DBEAlamatKirim1Enter(Sender: TObject);
begin
  inherited;
  if konfTanya('sama dengan alamat konsumen...?') then
  begin
    copyAlamat;
  end else
  begin
    DBEAlamatKirim1.SetFocus
  end;
end;

procedure TarfcustForm.DBECustIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if DBECustID.Text = '' then
    begin
      konfPeringatan('Customer ID harap diisi');
      DBECustID.SetFocus;
      abort;
    end;
  end;
end;

procedure TarfcustForm.DBENamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    if MastData.statCust = 1 then
    begin
      if tc1.TabIndex = 1 then
      begin
        vtPerson.Append;
        dbgrid1.SetFocus;
      end;
      if tc1.TabIndex = 2 then
      begin
        vtRekening.Append;
        dbgrid2.SetFocus;
      end;
    end;
  end;
  if key = vk_F1 then
  begin
    if MastData.statCust = 1 then
    begin
      if tc1.TabIndex = 1 then
      begin
        vtPerson.Edit;
        dbgrid1.SetFocus;
      end;
      if tc1.TabIndex = 2 then
      begin
        vtRekening.Edit;
        dbgrid2.SetFocus;
      end;
    end;
  end;
end;

procedure TarfcustForm.DBETelpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key in ['a'..'z','A'..'B','!','@','#','$','%','^','^','&','*',':',';','<','>','?','?'] then
    key := #0;
end;

procedure TarfcustForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    column : Integer;
begin
  inherited;
  if key = vk_Return then
  begin
    // jika melewati list indext maka konferror akan dijalankan.
    Try
      DBGrid1.SelectedField := vtperson.Fields[DBGrid1.SelectedIndex+1];
    Except
      konfError('Untuk melanjutkan tekan tanda panah bawah pada keyboard');
      DBGrid1.SelectedIndex := 0;
      abort;
    end;
    Key := 0;
  end;
end;

procedure TarfcustForm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_Return then
  begin
    // jika melewati list indext maka konferror akan dijalankan.
    Try
      DBGrid1.SelectedField := vtperson.Fields[DBGrid1.SelectedIndex+1];
    Except
      konfError('Untuk melanjutkan tekan tanda panah bawah pada keyboard');
      DBGrid1.SelectedIndex := 0;
      abort;
    end;
  end;
end;

procedure TarfcustForm.DBLHargaEnter(Sender: TObject);
begin
  inherited;
  MastData.MARHrg.Close;
  MastData.MARHrg.Open;
end;

procedure TarfcustForm.DBLSalesEnter(Sender: TObject);
begin
  inherited;
  MastData.MARSales.Close;
  MastData.MARSales.Open;
end;

procedure TarfcustForm.DBLValutaEnter(Sender: TObject);
begin
  inherited;
  MastData.MARVal.Close;
  MastData.MARVal.Open;
end;

procedure TarfcustForm.DBLWilayahEnter(Sender: TObject);
begin
  inherited;
  MastData.MWilayah.Close;
  MastData.MWilayah.Open;
end;

procedure TarfcustForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
    mastData.MWilayah.Close;
    mastData.MWilayah.open;
    mastData.MARSales.Close;
    mastData.MARSales.Open;
    mastData.MARHrg.Close;
    mastData.MARHrg.Open;
    mastData.MARVal.Close;
    mastData.MARVal.Open;
    KeyPreview := true;
  Except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.');
    MastData.MARCust.Cancel;
    self.close;
  end;
  if MastData.statCust = 1 then
  begin
    DBECustID.Enabled := false;
    if DBEDisc1.Text <> '0' then
    begin
      DBENota2.Enabled := false;
      DBENota2.Color := $00D1D1D1;
    end;
    if DBEItem1.Text <> '0' then
    begin
      DBEItem2.Enabled := false;
      DBEItem2.Color := $00D1D1D1;
    end;
    insertvirtual;
  end;
end;

procedure TarfcustForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if DBECustID.Focused then
       DBENama.SetFocus else
    if DBENama.Focused then
       DBEAlamat1.SetFocus else
    if DBEAlamat1.Focused then
       DBEAlamat2.SetFocus else
    if DBEAlamat2.Focused then
       DBEAlamat3.SetFocus else
    if DBEAlamat3.Focused then
       DBEAlamatKirim1.SetFocus else
    if DBEAlamatKirim1.Focused then
       DBEAlamatKirim2.SetFocus else
    if DBEAlamatKirim2.Focused then
       DBEAlamatKirim3.SetFocus else
    if DBEAlamatKirim3.Focused then
       DBETelp.SetFocus else
    if DBETelp.Focused then
       DBLHarga.SetFocus else
    if DBLHarga.Focused then
       DBEFax.SetFocus else
    if DBEfax.Focused then
       DBEDisc1.SetFocus else
    if DBEDisc1.Focused then
    begin
       if DBEDisc1.Text ='0' then
       begin
          DBENota2.SetFocus
       end else
       begin
          DBENota2.Enabled := false;
          DBEHP.SetFocus;
       end;
    end else if
       DBENota2.Focused then
       DBEHP.SetFocus else
    if DBEHP.Focused then
       DBEItem1.SetFocus else
    if DBEItem1.Focused then
    begin
       if DBEItem1.Text = '0' then
       begin
         DBEItem2.SetFocus
       end else
       begin
         DBEItem2.Enabled := false;
         DBLSales.SetFocus;
       end;
    end else if
        DBEItem2.Focused then
        DBLSales.SetFocus else
    if DBLSales.Focused then
       DBETOP.SetFocus else
    if DBETOP.Focused then
       DBLWilayah.SetFocus else
    if DBLWilayah.Focused then
       DBELimit.SetFocus else
    if DBELimit.Focused then
       DBENPWP.SetFocus else
    if DBENPWP.Focused then
      DBCPKP.SetFocus else
    if DBCPkp.Focused then
       DBCBlackList.SetFocus else
    if DBCBlackList.Focused then
       DBCOver.SetFocus else
    if DBCOver.Focused then
    begin
      if DBCBlackList.Checked = True then
      begin
        DBEKeterangan.SetFocus;
      end else
      begin
        DBEKeterangan.Enabled := false;
        DBEEmail.SetFocus;
      end;
    end else
    if DBEKeterangan.Focused then
       DBEEmail.SetFocus else
    if DBEEmail.Focused then
       DBLValuta.SetFocus else
    if DBLValuta.Focused then
       DBEWeb.SetFocus else
    if DBEWeb.Focused then
       btnsimpan.SetFocus;
  end;
end;

procedure TarfcustForm.FormShow(Sender: TObject);
begin
  inherited;
  if DBECustID.Enabled = false then
  begin
    DBENama.SetFocus;
  end;
end;

procedure TarfcustForm.tc1Change(Sender: TObject);
begin
  inherited;
  if tc1.TabIndex = 1 then
  begin
    MastData.MARPerson.Close;
    MAstdata.MARPerson.Open;
    pnlPerson.Left := 9;
    pnlPerson.Top := 8;
    pnlPerson.Show;
    pnlrekening.Hide;
  end;
  if tc1.TabIndex = 2 then
  begin
    MastData.MARCustRek.Close;
    MAstdata.MARCustRek.Open;
    pnlRekening.Show;
    pnlrekening.Left := 8;
    pnlrekening.Top := 9;
    pnlPerson.hide;
  end;
  if tc1.TabIndex = 0 then
  begin
    pnlperson.Hide;
    pnlRekening.Hide;
  end;
end;

end.
