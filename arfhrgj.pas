unit arfhrgj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, mylib, DModul, ADODb, DB;

type
  Tarfhrgjform = class(TinftemplateForm)
    Label1: TLabel;
    EDTKodeBrg: TEdit;
    lblNama: TLabel;
    Label2: TLabel;
    cbHarga: TComboBox;
    lblDesc: TLabel;
    Label4: TLabel;
    EDTHpp: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtPersen: TEdit;
    EDTNPersen: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EDTHrgKecil: TEdit;
    EDTHrgMenengah: TEdit;
    EdtHrgTinggi: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cbHargaEnter(Sender: TObject);
    procedure EDTHrgKecilExit(Sender: TObject);
    procedure EDTHrgMenengahExit(Sender: TObject);
    procedure EDTHrgKecilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDTHrgMenengahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbHargaSelect(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    procedure Kosong;
    procedure TampilCombo;
//    procedure HitungHarga;
//    procedure HitungNHarga;
//    procedure HitungHarga2;
//    procedure HitungHarga1;
    { Private declarations }
  public
    { Public declarations }
  end;
  function HitungHarga(NPersen:Double;kodeBarang:String):double;
  function HitungPersen(Persen,NHpp:Double):double;
  function HitungNPersen(NPersen,NHpp:Double):double;
  function CariHpp(Barang:String):double;
  function HitungHarga2(NHarga3:Double;kodeBarang:String):double;
  function HitungHarga3(NHarga2:Double;kodeBarang:String):double;
var
  arfhrgjform: Tarfhrgjform;

implementation

{$R *.dfm}

procedure Tarfhrgjform.TampilCombo;
begin
  // Tgl. 27-Sep-2014
  // Tujuan untuk menampilkan Jenis Daftar harga didalam combobox
  // Created by Afes Oktavianus
  cbHarga.Items.Clear;
  EksekusiSQL(MastData.QCari,'Select Ket from svarmhrg', true );
  if not MastData.QCari.IsEmpty then
  begin
    while not MastData.QCari.Eof do
    begin
      cbHarga.Items.Add(mastData.QCari.Fields[0].value);
      mastData.QCari.Next;
    end;
  end;
end;

function HitungNPersen(NPersen,NHpp:Double):double;
var
  NPersen_ : Double;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mendapatkan persentase berdasarkan Hpp
  // 02-okt-2014
  NPersen_ := 0;
  NPersen_ := ((NPersen / NHpp) * 100);
  Result := NPersen_;
end;

function CariHpp(Barang:String):double;
var
  Hpp_ : Double;
  QHPP  : TAdoQuery;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mendapatkan nilai Hpp berdasarkan kode barang
  // 02-okt-2014
  Hpp_ := 0;
  QHPP := TADOQuery.Create(nil);
  QHPP.Connection := MastData.invConnection;
  EksekusiSQL(QHPP,'Select hpp from svinmhrgbeli where brg='''+barang+'''', true);
  if not QHPP.IsEmpty then
  begin
    Hpp_ := QHPP.Fields[0].Value;
  end;
  Result := HPP_;
end;

function HitungPersen(Persen,NHpp:Double):double;
var
  Persen_ : Double;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mendapatkan nilai persentase berdasarkan Hpp
  // 02-okt-2014
  Persen_ := 0;
  Persen_ := (((100+Persen)/100) * NHpp)- NHpp;
  Result := Persen_;
end;

function HitungHarga(NPersen:Double;kodeBarang:String):double;
var
  hpp_,h3_ : Double;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mendapatkan nilai tampilan Harga terkecil dari system berdasarkan hpp
  // 02-okt-2014
  hpp_   := 0; h3_ := 0;
  hpp_   := CariHpp(KodeBarang);
  h3_    := hpp_ + Npersen;
  result := h3_;
end;

function HitungHarga2(NHarga3:Double;kodeBarang:String):double;
var
  hpp_,h2_ : Double;
  isi2_    : integer;
  QHarga2  : TAdoQuery;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mendapatkan nilai tampilan Harga menengah dari system berdasarkan hpp
  // 02-okt-2014
  QHarga2 := TADOQuery.Create(nil);
  QHarga2.Connection := MastData.invConnection;
  EksekusiSQL(QHarga2,'Select Isi2 from svinmbrg where brg='''+kodebarang+'''',true);
  Isi2_   := 0; h2_ := 0;
  if not Qharga2.IsEmpty then
  begin
    Isi2_ := QHarga2.Fields[0].Value;
  end;
  h2_    := NHarga3 * Isi2_;
  result := h2_;
  QHarga2.Free;
end;

function HitungHarga3(NHarga2:Double;kodeBarang:String):double;
var
  hpp_,h1_ : Double;
  isi_     : integer;
  QHarga   : TAdoQuery;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mendapatkan nilai tampilan Harga menengah dari system berdasarkan hpp
  // 02-okt-2014
  QHarga := TADOQuery.Create(nil);
  QHarga.Connection := MastData.invConnection;
  EksekusiSQL(QHarga,'Select Isi1 from svinmbrg where brg='''+kodebarang+'''',true);
  Isi_   := 0; h1_ := 0;
  if not Qharga.IsEmpty then
  begin
    Isi_ := QHarga.Fields[0].Value;
  end;
  h1_    := NHarga2 * Isi_;
  result := h1_;
  QHarga.Free;
end;

procedure Tarfhrgjform.Kosong;
begin
  // Created by Afes Oktavianus
  // Tujuan untuk mengosongkan entri-an
  // 02-okt-2014
  EDTKodeBrg.Clear;
  EDTHpp.Text         := '0';
  edtPersen.Text      := '0';
  EDTNPersen.Text     := '0';
  EDTHrgKecil.Text    := '0';
  EDTHrgMenengah.Text := '0';
  EdtHrgTinggi.Text   := '0';
  cbHarga.ItemIndex   := -1;
  lblnama.Caption     := '';
  lblDesc.Caption     := '';
  //-------------------------
  edtNPersen.ReadOnly := false;
  edtPersen.ReadOnly  := false;
end;

procedure Tarfhrgjform.btnCancelClick(Sender: TObject);
begin
  modalresult := mrnone;
  self.Close;
  inherited;
end;

procedure Tarfhrgjform.btnsimpanClick(Sender: TObject);
begin
  ModalResult := mrOk;
  hide;
  inherited;
end;

procedure Tarfhrgjform.cbHargaEnter(Sender: TObject);
begin
  inherited;
  TampilCombo;
end;

procedure Tarfhrgjform.cbHargaSelect(Sender: TObject);
var
  QCari2 : TAdoquery;
begin
  inherited;
  // Tgl. 27-Sep-2014
  // Tujuan untuk menampilkan Jenis Daftar harga didalam combobox
  // Created by Afes Oktavianus
  QCari2 := TAdoQuery.Create(nil);
  QCari2.Connection := mastdata.invConnection;
  EksekusiSQL(QCari2,'Select hrg from svarmhrg where ket ='''+cbHarga.Text+'''', true );
  if not QCari2.IsEmpty then
  begin
    lblDesc.Caption := QCari2.Fields[0].value;
  end;
  QCari2.Free;
end;

procedure Tarfhrgjform.EDTHrgKecilExit(Sender: TObject);
begin
  inherited;
  if strtofloat(EDTHrgKecil.Text) > 0 then
  begin
    EDTHrgMenengah.Text := floattostr(HitungHarga2(Strtofloat(EDTHrgKecil.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga menengah sampai paling besar berdasarkan prosentase
    EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
    EDTHrgMenengah.SetFocus;
  end;
end;

procedure Tarfhrgjform.EDTHrgKecilKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if strtofloat(EDTHrgKecil.Text) > 0 then
    begin
      EDTHrgMenengah.Text := floattostr(HitungHarga2(Strtofloat(EDTHrgKecil.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga menengah sampai paling besar berdasarkan prosentase
      EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
      EDTHrgMenengah.SetFocus;
    end;
  end;
end;

procedure Tarfhrgjform.EDTHrgMenengahExit(Sender: TObject);
begin
  inherited;
  if strtofloat(EDTHrgMenengah.Text) > 0 then
  begin
    EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
    EdtHrgTinggi.SetFocus;
  end;
end;

procedure Tarfhrgjform.EDTHrgMenengahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if strtofloat(EDTHrgMenengah.Text) > 0 then
    begin
      EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
      EdtHrgTinggi.SetFocus;
    end;
  end;
end;

procedure Tarfhrgjform.FormCreate(Sender: TObject);
begin
  inherited;
  Kosong;
  KeyPreview := True;
  SetLocaleInfo(GetSystemDefaultLCID, LOCALE_SCURRENCY, '');
  SetLocaleInfo(GetSystemDefaultLCID, LOCALE_SThousand, ',');
  SetLocaleInfo(GetSystemDefaultLCID, LOCALE_SDecimal, '.');
end;

procedure Tarfhrgjform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if cbHarga.Focused then
       edtPersen.SetFocus else
    if edtPersen.Focused then
    begin
      if strtofloat(edtPersen.Text) = 0 then
      begin
        EDTNPersen.SetFocus
      end else
      if StrTofloat(edtPersen.Text) < 0 then
      begin
        konfError('Prosentase harus lebih besar dari 0');
        edtPersen.Clear;
        edtPersen.SetFocus;
        abort;
      end else
      begin
        edtNPersen.ReadOnly := true;
        EDTNPersen.Text := floattostr(HitungPersen(StrToFloat(edtPersen.Text),StrTofloat(EDTHpp.Text))); // Untuk menghitung tampilan Nilai prosentase
        HitungHarga(strtofloat(EDTNPersen.Text),EDTKodeBrg.Text); // Untuk menghitung tampilan awal harga terkecil sampai paling besar berdasarkan prosentase
        EDTHrgKecil.Text :=floattostr(HitungHarga(strtofloat(EDTNPersen.Text),EDTKodeBrg.Text));  // untuk menghitung tampilan awal harga terkecil sampai paling besar berdasarkan Nilai prosentase
        EDTHrgMenengah.Text := floattostr(HitungHarga2(Strtofloat(EDTHrgKecil.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga menengah sampai paling besar berdasarkan prosentase
        EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
        EDTHrgKecil.SetFocus;
      end;
    end else if EDTNPersen.Focused then
    begin
      edtPersen.ReadOnly := true;
      edtPersen.Text := floattostr(HitungNPersen(StrToFloat(edtNPersen.Text),StrTofloat(EDTHpp.Text)));  // Untuk menghitung tampilan prosentase
      EDTHrgKecil.Text :=floattostr(HitungHarga(strtofloat(EDTNPersen.Text),EDTKodeBrg.Text));  // untuk menghitung tampilan awal harga terkecil sampai paling besar berdasarkan Nilai prosentase
      EDTHrgMenengah.Text := floattostr(HitungHarga2(Strtofloat(EDTHrgKecil.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga menengah sampai paling besar berdasarkan prosentase
      EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
      EDTHrgKecil.SetFocus;
    end else if EDTHrgKecil.Focused then
    Begin
      EDTHrgMenengah.Text := floattostr(HitungHarga2(Strtofloat(EDTHrgKecil.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga menengah sampai paling besar berdasarkan prosentase
      EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
      EDTHrgMenengah.SetFocus;
    End else if EDTHrgMenengah.Focused then
    begin
      EdtHrgTinggi.Text := floattostr(HitungHarga3(Strtofloat(EDTHrgMenengah.Text),EDTKodeBrg.Text)); // Untuk menghitung tampilan harga paling besar berdasarkan prosentase
      EdtHrgTinggi.SetFocus;
    end else
    if EdtHrgTinggi.Focused then
       btnsimpan.SetFocus;
  end;
end;



procedure Tarfhrgjform.FormShow(Sender: TObject);
begin
  inherited;
  EDTHpp.Text := floattostr(CariHpp(EDTKodeBrg.Text));
end;

end.
