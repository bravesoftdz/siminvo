unit infbrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, DModul, mylib, Mask,
  DBCtrls, fsearchjenis;

type
  TinfbrgForm = class(TinftemplateForm)
    Label1: TLabel;
    DBEBrg: TDBEdit;
    Label2: TLabel;
    DBENama1: TDBEdit;
    DBENama2: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBESTN1: TDBEdit;
    Label8: TLabel;
    DBEISI1: TDBEdit;
    Label9: TLabel;
    DBESTN2: TDBEdit;
    Label10: TLabel;
    DBEISI2: TDBEdit;
    Label11: TLabel;
    DBESTN3: TDBEdit;
    DBEBarcode: TDBEdit;
    Label12: TLabel;
    DBENMJenis: TEdit;
    DBENMGol: TEdit;
    DBENMerek: TEdit;
    DBENMType: TEdit;
    DBClAktif: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBENMSIZE: TEdit;
    DBENMMotif: TEdit;
    DBENMWarna: TEdit;
    DBENMKuali: TEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DBEMinimal: TDBEdit;
    Label18: TLabel;
    DBEMAXI: TDBEdit;
    Label19: TLabel;
    DBENMRAK: TEdit;
    Label20: TLabel;
    DBENMSUPP: TEdit;
    DBCKonsinyasi: TDBCheckBox;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    DBEHPBELI: TDBEdit;
    Label22: TLabel;
    DBEHPJUAL: TDBEdit;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    DBEHrgBeli: TDBEdit;
    Label25: TLabel;
    DBEHrgJual1: TDBEdit;
    Label26: TLabel;
    DBEHrgJual2: TDBEdit;
    Label27: TLabel;
    DBEHrgJual3: TDBEdit;
    Label28: TLabel;
    DBEPersentase: TDBEdit;
    Label29: TLabel;
    DBENilaiPersentase: TDBEdit;
    DBENMKodeHarga: TEdit;
    EHPBeli: TEdit;
    EHPJual: TEdit;
    DBLJenis: TDBLookupComboBox;
    DBLGol: TDBLookupComboBox;
    DBLMerek: TDBLookupComboBox;
    DBLType: TDBLookupComboBox;
    DBLKuali: TDBLookupComboBox;
    DBLWarna: TDBLookupComboBox;
    DBLMotif: TDBLookupComboBox;
    DBLSize: TDBLookupComboBox;
    DBLRAK: TDBLookupComboBox;
    DBLSUPP: TDBLookupComboBox;
    DBLHarga: TDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLKualiCloseUp(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLJenisCloseUp(Sender: TObject);
    procedure DBLGolCloseUp(Sender: TObject);
    procedure DBLMerekCloseUp(Sender: TObject);
    procedure DBLTypeCloseUp(Sender: TObject);
    procedure DBLWarnaCloseUp(Sender: TObject);
    procedure DBLMotifCloseUp(Sender: TObject);
    procedure DBLSizeCloseUp(Sender: TObject);
    procedure DBLRAKCloseUp(Sender: TObject);
    procedure DBLSUPPCloseUp(Sender: TObject);
    procedure DBLHargaCloseUp(Sender: TObject);
    procedure DBEBrgExit(Sender: TObject);
    procedure DBLJenisEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEPersentaseExit(Sender: TObject);
    procedure DBEHrgBeliExit(Sender: TObject);
    procedure DBEHrgJual3Exit(Sender: TObject);
    procedure DBEHrgJual2Exit(Sender: TObject);
    procedure DBEHrgJual1Exit(Sender: TObject);
    procedure DBLJenisExit(Sender: TObject);
    procedure DBLGolExit(Sender: TObject);
    procedure DBLMerekExit(Sender: TObject);
    procedure DBLTypeExit(Sender: TObject);
    procedure DBLKualiExit(Sender: TObject);
    procedure DBLWarnaExit(Sender: TObject);
    procedure DBLMotifExit(Sender: TObject);
    procedure DBLSizeExit(Sender: TObject);
    procedure DBLRAKExit(Sender: TObject);
    procedure DBLSUPPExit(Sender: TObject);
    procedure DBLHargaExit(Sender: TObject);
    procedure DBLGolEnter(Sender: TObject);
    procedure DBLMerekEnter(Sender: TObject);
    procedure DBLTypeEnter(Sender: TObject);
    procedure DBLKualiEnter(Sender: TObject);
    procedure DBLWarnaEnter(Sender: TObject);
    procedure DBLMotifEnter(Sender: TObject);
    procedure DBLSizeEnter(Sender: TObject);
    procedure DBLRAKEnter(Sender: TObject);
    procedure DBLSUPPEnter(Sender: TObject);
    procedure DBLHargaEnter(Sender: TObject);
  private
    { Private declarations }
  public
//  function hitung1(var beli_,Hjual3,Hjual2,persen_:Double):Double;
//  function hitung2(var beli_,Hjual3,persen_:Double):Double;
//  function hitung3(var beli_,persen_:Double):Double;
    { Public declarations }
  end;

var
  infbrgForm: TinfbrgForm;

implementation

{$R *.dfm}

function ReturnToNormalx(strNilai:string):Double;
var p,decimal,thousand:string;
buff: string;
i:Integer;
begin
  decimal:='';
  i:= GetLocaleInfo(LOCALE_SYSTEM_DEFAULT,LOCALE_SDECIMAL,nil,0);
  SetLength(decimal,i-1);
  GetLocaleInfo(LOCALE_SYSTEM_DEFAULT,LOCALE_SDECIMAL,PWideChar(decimal),i);

  i:=GetLocaleInfo(LOCALE_SYSTEM_DEFAULT,LOCALE_STHOUSAND,nil,0);
  thousand:='';
  SetLength(thousand,i-1);
  GetLocaleInfo(LOCALE_SYSTEM_DEFAULT,LOCALE_STHOUSAND,pWideChar(thousand),i);

  p:=StringReplace(strNilai,decimal,'.',[rfReplaceAll]);
  p:=StringReplace(p,thousand,'',[rfReplaceAll]);
  Result:=StrToFloat(p);
end;

procedure ribuan(edit : TDBEdit);
var
 sRupiah: string;
 iRupiah: Currency;
begin
 //ribuan --> currency ( menyesuaikan setting windows )
 sRupiah := edit.Text;
 sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
 sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik . pemisah //ribuan IDR
 iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

//currency --> format ribuan
 edit.Text := FormatCurr('#,###',iRupiah);
 edit.SelStart := length(edit.text);
end;

Function hitung3(var beli_,persen_:Double):Double;
var
  hasil : Double;
begin
  hasil := 0;
  if persen_ > 0 then
  begin
    hasil := ROUND(((100+ Persen_)/100) * beli_);
  end;
  Result := hasil;
end;

Function hitung2(var beli_,isi2_, persen_:Double):Double;
var
  hasil : Double;
begin
  hasil := 0;
  if persen_ > 0 then
  begin
    hasil := Round(((100+ Persen_)/100) * beli_ * isi2_);
  end;
  Result := hasil;
end;

Function hitung1(var beli_,isi1_, persen_:Double):Double;
var
  hasil : Double;
begin
  hasil := 0;
  if persen_ > 0 then
  begin
    hasil := Round(((100+ Persen_)/100) * beli_ * isi1_);
  end;
  Result := hasil;
end;

Function hitungPersen(var beli_,persen_:Double):Double;
var
  hasil : Double;
begin
  hasil := 0;
  if persen_ > 0 then
  begin
    hasil := (persen_/100) * beli_;
  end;
  Result := hasil;
end;

procedure TinfbrgForm.btnCancelClick(Sender: TObject);
begin
  mastData.MBarang.Cancel;
  with MastData.MBarang do
  begin
   close;
   SQL.Clear;
   SQL.Add(' Select * From svinmbrg');
   Open;
  end;
  inherited;
end;

procedure TinfbrgForm.btnsimpanClick(Sender: TObject);
begin
  with MastData do
  begin
    If MBarangBRG.Value = '' then
    begin
      konfError('Maaf Kode Barang harap diisi...!!!');
      DBEBrg.SetFocus;
      abort;
    end else
    if MBarangIsi1.AsInteger < 0 then
    begin
      konfError('Maaf isi barang terhadap satuan 1 tidak bisa kurang dari 0...!!!');
      DBEISI1.SetFocus;
      abort;
    end else
    if MBarangIsi2.AsInteger < 0 then
    begin
      konfError('Maaf isi barang terhadap satuan 2 tidak bisa kurang dari 0...!!!');
      DBEISI2.SetFocus;
      abort;
    end else
    if MBarangMini.AsInteger < 0 then
    begin
      konfError('Maaf minimal barang tidak bisa kurang dari 0...!!!');
      DBEMinimal.SetFocus;
      abort;
    end else
    if MBarangMaxi.AsInteger < 0 then
    begin
      konfError('Maaf maximal barang tidak bisa kurang dari 0...!!!');
      DBEMAXI.SetFocus;
      abort;
    end else
    if MBaranghbeli.AsInteger < 0 then
    begin
      konfError('Maaf harga beli barang tidak bisa kurang dari 0...!!!');
      DBEHPBELI.SetFocus;
      abort;
    end else
    if MBaranghjual1.AsInteger < 0 then
    begin
      konfError('Maaf harga jual barang terhadap satuan 1 tidak bisa kurang dari 0...!!!');
      DBEHrgJual1.SetFocus;
      abort;
    end else
    if MBaranghjual2.AsInteger < 0 then
    begin
      konfError('Maaf harga jual barang terhadap satuan 2 tidak bisa kurang dari 0...!!!');
      DBEHrgJual2.SetFocus;
      abort;
    end else
    if MBaranghjual3.AsInteger < 0 then
    begin
      konfError('Maaf harga jual barang terhadap satuan 3 tidak bisa kurang dari 0...!!!');
      DBEHrgJual3.SetFocus;
      abort;
    end;
    MBaranghbeli.AsFloat := ReturnToNormalx(DBEHrgBeli.Text);
    MBaranghjual1.AsFloat := ReturnToNormalx(DBEHrgJual1.Text);
    MBaranghjual2.AsFloat := ReturnToNormalx(DBEHrgJual2.Text);
    MBaranghjual3.AsFloat := ReturnToNormalx(DBEHrgJual3.Text);
    MBarangpersentnilai.AsFloat := ReturnToNormalx(DBENilaiPersentase.Text);
  end;
  MastData.MBarang.Post;
  mastData.MBarang.Close;
  MastData.MBarang.Open;
  inherited;
end;

procedure TinfbrgForm.Button1Click(Sender: TObject);
begin
  inherited;
  fSearchjenisform := TfSearchJenisForm.Create(self);
  fsearchJenisform.formstyle := fsStayontop;
  fsearchjenisform.show;
end;

procedure TinfbrgForm.DBEBrgExit(Sender: TObject);
begin
  inherited;
  if DBEBrg.Text <> '' then
    MastData.MBarangbarcode.Value := DBEBrg.Text;
end;

procedure TinfbrgForm.DBEHrgBeliExit(Sender: TObject);
begin
  inherited;
  ribuan(DBEHrgBeli);
end;

procedure TinfbrgForm.DBEHrgJual1Exit(Sender: TObject);
begin
  inherited;
  ribuan(DBEHrgJual1);
end;

procedure TinfbrgForm.DBEHrgJual2Exit(Sender: TObject);
begin
  inherited;
  Ribuan(DBEHrgJual2);
end;

procedure TinfbrgForm.DBEHrgJual3Exit(Sender: TObject);
begin
  inherited;
  Ribuan(DBEHrgJual3);
end;

procedure TinfbrgForm.DBEPersentaseExit(Sender: TObject);
var
  belixxx_ : double;
  persenxxx_ : double;
  Jual1, Jual2, Jual3, isi2_, isi1_ : Double;
begin
  inherited;
  belixxx_ := 0;
  persenxxx_ := 0;
  Jual1 := 0;
  Jual2 := 0;
  Jual3 := 0;
  Isi1_ := 0;
  Isi2_ := 0;
  belixxx_ := ReturnToNormalx(DBEHrgBeli.Text);
  if (DBEPersentase.Text <> '') OR (StrToFloat(DBEPersentase.Text) > 0)then
  begin
    persenxxx_ := StrToFloat(DBEPersentase.Text);
    MastData.MBaranghjual3.AsFloat := hitung3(belixxx_,persenxxx_);
    DBEHrgJual3.Text := floattostr(MastData.MBaranghjual3.AsFloat);
    Ribuan(DBEHrgJual3);
    Jual3 := MastData.MBaranghjual3.AsFloat;
    MastData.MBarangpersentnilai.AsFloat:= hitungPersen(belixxx_,persenxxx_);
    DBENilaiPersentase.Text := Floattostr(MastData.MBarangpersentnilai.AsFloat);
    Ribuan(DBENilaiPersentase);
    Isi2_  := MastData.MBarangIsi2.AsFloat;
    Isi1_ := MastData.MBarangIsi1.AsFloat;
    MastData.MBaranghjual2.AsFloat := hitung2(Jual3,Isi2_, persenxxx_);
    DBEHrgJual2.Text := FLoattostr(MastData.MBaranghjual2.AsFloat);
    Ribuan(DBEHrgJual2);
    Jual2 := MastData.MBaranghjual2.AsFloat;
    MastData.MBaranghjual1.AsFloat := hitung1(Jual2,isi1_, persenxxx_);
    DBEHrgJual1.Text := Floattostr(MastData.MBaranghjual1.AsFloat);
    Ribuan(DBEHrgJual1)
  end;
end;

procedure TinfbrgForm.DBLGolCloseUp(Sender: TObject);
begin
  inherited;
  DBENMGol.Text   := MastData.MGolonganKet.Value;
end;

procedure TinfbrgForm.DBLGolEnter(Sender: TObject);
begin
  inherited;
  MastData.MGolongan.Close;
  MastData.MGolongan.Open;
end;

procedure TinfbrgForm.DBLGolExit(Sender: TObject);
begin
  inherited;
  DBENMGol.Text   := MastData.MGolonganKet.Value;
end;

procedure TinfbrgForm.DBLHargaCloseUp(Sender: TObject);
begin
  inherited;
  DBENMKodeHarga.Text := MastData.MHRGJualKet.Value;
end;

procedure TinfbrgForm.DBLHargaEnter(Sender: TObject);
begin
  inherited;
  MastData.MHRGJual.Close;
  MastData.MHRGJual.Open;
end;

procedure TinfbrgForm.DBLHargaExit(Sender: TObject);
begin
  inherited;
  DBENMKodeHarga.Text := MastData.MHRGJualKet.Value;
end;

procedure TinfbrgForm.DBLJenisCloseUp(Sender: TObject);
begin
  inherited;
  DBENMJenis.Text := MastData.MJenisKET.Value;
end;

procedure TinfbrgForm.DBLJenisEnter(Sender: TObject);
begin
  inherited;
  MastData.MJenis.Close;
  MastData.MJenis.Open;
end;

procedure TinfbrgForm.DBLJenisExit(Sender: TObject);
begin
  inherited;
  DBENMJenis.Text := MastData.MJenisKET.Value;
end;

procedure TinfbrgForm.DBLKualiCloseUp(Sender: TObject);
begin
  inherited;
  DBENMKuali.Text := MastData.MKualitasKET.Value;
end;

procedure TinfbrgForm.DBLKualiEnter(Sender: TObject);
begin
  inherited;
  MastData.MKualitas.Close;
  MastData.MKualitas.Open;
end;

procedure TinfbrgForm.DBLKualiExit(Sender: TObject);
begin
  inherited;
  DBENMKuali.Text := MastData.MKualitasKET.Value;
end;

procedure TinfbrgForm.DBLMerekCloseUp(Sender: TObject);
begin
  inherited;
  DBENMerek.Text := MastData.MMerekKET.Value;
end;

procedure TinfbrgForm.DBLMerekEnter(Sender: TObject);
begin
  inherited;
  MastData.MMerek.Close;
  MastData.MMerek.Open;
end;

procedure TinfbrgForm.DBLMerekExit(Sender: TObject);
begin
  inherited;
  DBENMerek.Text := MastData.MMerekKET.Value;
end;

procedure TinfbrgForm.DBLMotifCloseUp(Sender: TObject);
begin
  inherited;
  DBENMMotif.Text := MastData.MMotifKET.Value;
end;

procedure TinfbrgForm.DBLMotifEnter(Sender: TObject);
begin
  inherited;
  MastData.MMotif.Close;
  MastData.MMotif.Open;
end;

procedure TinfbrgForm.DBLMotifExit(Sender: TObject);
begin
  inherited;
  DBENMMotif.Text := MastData.MMotifKET.Value;
end;

procedure TinfbrgForm.DBLRAKCloseUp(Sender: TObject);
begin
  inherited;
  DBENMRAK.Text := MastData.MRAKKet.Value;
end;

procedure TinfbrgForm.DBLRAKEnter(Sender: TObject);
begin
  inherited;
  MastData.MRAK.Close;
  MastData.MRAK.Open;
end;

procedure TinfbrgForm.DBLRAKExit(Sender: TObject);
begin
  inherited;
  DBENMRAK.Text := MastData.MRAKKet.Value;
end;

procedure TinfbrgForm.DBLSizeCloseUp(Sender: TObject);
begin
  inherited;
  DBENMSIZE.Text  := MastData.MSizeKET.Value;
end;

procedure TinfbrgForm.DBLSizeEnter(Sender: TObject);
begin
  inherited;
  MastData.MSize.Close;
  MastData.MSize.Open;
end;

procedure TinfbrgForm.DBLSizeExit(Sender: TObject);
begin
  inherited;
  DBENMSIZE.Text  := MastData.MSizeKET.Value;
end;

procedure TinfbrgForm.DBLSUPPCloseUp(Sender: TObject);
begin
  inherited;
  DBENMSUPP.Text  := MastData.MSUPPNama.Value;
end;

procedure TinfbrgForm.DBLSUPPEnter(Sender: TObject);
begin
  inherited;
  MastData.MSUPP.Close;
  MastData.MSUPP.Open;
end;

procedure TinfbrgForm.DBLSUPPExit(Sender: TObject);
begin
  inherited;
  DBENMSUPP.Text  := MastData.MSUPPNama.Value;
end;

procedure TinfbrgForm.DBLTypeCloseUp(Sender: TObject);
begin
  inherited;
  DBENMType.Text := MastData.MTypeKet.Value;
end;

procedure TinfbrgForm.DBLTypeEnter(Sender: TObject);
begin
  inherited;
  MastData.MType.Close;
  MastData.MType.Open;
end;

Procedure TinfbrgForm.DBLTypeExit(Sender: TObject);
begin
  inherited;
  DBENMType.Text := MastData.MTypeKet.Value;
end;

procedure TinfbrgForm.DBLWarnaCloseUp(Sender: TObject);
begin
  inherited;
  DBENMWarna.Text := MastData.MWarnaKET.Value;
end;

procedure TinfbrgForm.DBLWarnaEnter(Sender: TObject);
begin
  inherited;
  MastData.MWarna.Close;
  MastData.MWarna.Open;
end;

procedure TinfbrgForm.DBLWarnaExit(Sender: TObject);
begin
  inherited;
  DBENMWarna.Text := MastData.MWarnaKET.Value;
end;

procedure TinfbrgForm.FormActivate(Sender: TObject);
begin
  inherited;
  DBEBrg.SetFocus;
end;

procedure TinfbrgForm.FormCreate(Sender: TObject);
begin
  inherited;
  DBENMJenis.Clear;
  DBENMGol.Clear;
  DBENMerek.Clear;
  DBENMType.Clear;
  DBENMSIZE.Clear;
  DBENMMotif.Clear;
  DBENMWarna.Clear;
  DBENMKuali.Clear;
  DBENMKodeHarga.Clear;
  DBENMRAK.Clear;
  DBENMSUPP.Clear;
  IF MastData.StatBarang = 1 then
  begin
    Try
      // Jenis
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmjns where Jns = '''+DBLJenis.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMJenis.Text := MastData.QCari.Fields[0].Value else
         DBENMJenis.Text := '';
      // Golongan
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmgol where gol = '''+DBLGol.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMGol.Text := MastData.QCari.Fields[0].Value else
         DBENMGol.Text := '';
      // Merek
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmmrk where mrk = '''+DBLMerek.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMerek.Text := MastData.QCari.Fields[0].Value else
         DBENMerek.Text := '';
      // Type
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmtype where type = '''+DBLType.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMType.Text := MastData.QCari.Fields[0].Value else
         DBENMType.Text := '';
      // Kualitas
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmkualitas where Kuali = '''+DBLKUALI.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMKuali.Text := MastData.QCari.Fields[0].Value else
         DBENMKuali.Text := '';
      // Warna
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmwrn where wrn = '''+DBLWARNA.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMWarna.Text := MastData.QCari.Fields[0].Value else
         DBENMWarna.Text := '';
      // Motif
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmmotif where mtf = '''+DBLMotif.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMMotif.Text := MastData.QCari.Fields[0].Value else
         DBENMMotif.Text := '';
      // Ukuran
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmsize where size = '''+DBLSIZE.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMSIZE.Text := MastData.QCari.Fields[0].Value else
         DBENMSIZE.Text := '';
      // Rak
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svinmrak where rak = '''+DBLSIZE.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMRAK.Text := MastData.QCari.Fields[0].Value else
         DBENMRAK.Text := '';
      // Supplier
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Nama From svapmsup where sup = '''+DBLSIZE.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMSUPP.Text := MastData.QCari.Fields[0].Value else
         DBENMSUPP.Text := '';
      // Kode Harga
      With MastData.QCari do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' Select Ket From svarmhrg where hrg = '''+DBLHarga.Text+'''');
        Prepared := True;
        Open;
      end;
      if not MastData.QCari.IsEmpty then
         DBENMKodeHarga.Text := MastData.QCari.Fields[0].Value else
         DBENMKodeHarga.Text := '';
    Except
      konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
      self.Close;
    End;
    Ribuan(DBEHrgBeli);
    Ribuan(DBEHrgJual1);
    Ribuan(DBEHrgJual2);
    Ribuan(DBEHrgJual3);
    Ribuan(DBEHPBELI);
    Ribuan(DBEHPJUAL);
  end;
end;

procedure TinfbrgForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if DBEBrg.Focused then
      DBENama1.SetFocus else
    if DBENama1.Focused  then
      DBENama2.SetFocus else
    if DBENama2.Focused then
      DBLJenis.SetFocus else
    if DBLJenis.Focused then
      DBLGol.SetFocus else
    if DBLGol.Focused then
      DBLMerek.SetFocus else
    if DBLMerek.Focused then
      DBLType.SetFocus else
    if DBLType.Focused then
      DBESTN1.SetFocus else
    if DBESTN1.Focused then
      DBEISI1.SetFocus else
    if DBEISI1.Focused then
      DBESTN2.SetFocus else
    if DBESTN2.Focused then
       DBEISI2.SetFocus else
    if DBEISI2.Focused then
      DBESTN3.SetFocus else
    if DBESTN3.Focused then
      if konfTanya('Apakah Kode Barcode akan sama dengan Kode Barang ?')= True then
      begin
          if konfTanya('Apakah Barang akan diNonaktifkan terlebih dahulu ?') = True then
          begin
            DBClAktif.SetFocus end else
          begin
            PageControl1.ActivePageIndex := 1;
            DBLKuali.SetFocus;
          end
      end Else
      begin
        DBEBarcode.SetFocus
      end
    else if DBEBarcode.Focused then
    begin
        if konfTanya('Apakah Barang akan diNonaktifkan terlebih dahulu ?') = True then
        begin
          DBClAktif.SetFocus end else
        begin
          PageControl1.ActivePageIndex := 1;
          DBLKuali.SetFocus;
        end
    end
    else if DBClAktif.Focused then
      begin
        PageControl1.ActivePageIndex := 1;
        DBLKuali.SetFocus;
      End
    else if DBLKuali.Focused then
      DBLWarna.SetFocus else
    if DBLWarna.Focused then
      DBLMotif.SetFocus else
    if DBLMotif.Focused then
      DBLSize.SetFocus else
    if DBLSize.Focused then
      DBEMinimal.SetFocus else
    if DBEMinimal.Focused then
      DBEMAXI.SetFocus else
    if DBEMAXI.Focused then
      DBLRAK.SetFocus else
    if DBLRAK.Focused then
      DBLSUPP.SetFocus else
    if DBLSUPP.Focused then
      if konfTanya('Apakah barang termasuk barang konsinyasi ?') = True then
      begin
        DBCKonsinyasi.SetFocus
      end else
      begin
        PageControl1.ActivePageIndex :=2;
        DBEHrgBeli.SetFocus
      end
    else if DBCKonsinyasi.Focused then
      begin
       PageControl1.ActivePageIndex :=2;
       DBEHrgBeli.SetFocus;
      End
    else if DBEHrgBeli.Focused then
    DBLHarga.SetFocus else
    if DBLHarga.Focused then
    DBEPersentase.SetFocus else
    IF DBEPersentase.focused then
      DBEHrgJual3.SetFocus else
    if DBLKuali.Focused then
      DBLWarna.SetFocus;
  end;
end;

procedure TinfbrgForm.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
end;

end.
