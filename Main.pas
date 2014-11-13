unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ToolWin, ComCtrls, ImgList, ActnList, Buttons;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    System1: TMenuItem;
    Login1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Setting1: TMenuItem;
    MStock: TMenuItem;
    Jenis: TMenuItem;
    Golongan: TMenuItem;
    Merek: TMenuItem;
    Ukuran: TMenuItem;
    Warna: TMenuItem;
    Kualitas: TMenuItem;
    Motif: TMenuItem;
    N2: TMenuItem;
    Barang: TMenuItem;
    KetBarang: TMenuItem;
    Gudang: TMenuItem;
    HargaBarang: TMenuItem;
    NomorUrut: TMenuItem;
    N3: TMenuItem;
    MPembelian: TMenuItem;
    Valuta: TMenuItem;
    Suppier: TMenuItem;
    NoUrut: TMenuItem;
    MPenjualan: TMenuItem;
    ValutaJual: TMenuItem;
    Wilayah: TMenuItem;
    Sales: TMenuItem;
    KodeHarga: TMenuItem;
    N4: TMenuItem;
    Customer: TMenuItem;
    HargaJual: TMenuItem;
    NoUrutJual: TMenuItem;
    SaldoAwal: TMenuItem;
    SaldoAwalStock: TMenuItem;
    SaldoAwalHutang: TMenuItem;
    SaldoAwalPiutang: TMenuItem;
    Transaksi: TMenuItem;
    Pembelian: TMenuItem;
    PembelianBarang: TMenuItem;
    ReturnBarang: TMenuItem;
    PembelianKonsinyasi: TMenuItem;
    UangMukaPembelian: TMenuItem;
    Penjualan: TMenuItem;
    SalesOrder: TMenuItem;
    SuratJalan: TMenuItem;
    ReturSJ: TMenuItem;
    PenjualanBarang: TMenuItem;
    ReturPenjualan: TMenuItem;
    UangMukaPenjualan: TMenuItem;
    Stock: TMenuItem;
    KeluarMasukBarang: TMenuItem;
    PindahGudang: TMenuItem;
    RakitanBarang: TMenuItem;
    Hutang: TMenuItem;
    PembayaranHutang: TMenuItem;
    KoreksiHutang: TMenuItem;
    Piutang: TMenuItem;
    PembayaranPiutang: TMenuItem;
    KoreksiPiutang: TMenuItem;
    Proses: TMenuItem;
    ProsesSaldo: TMenuItem;
    ProsesSALStock: TMenuItem;
    ProsesSALlHutang: TMenuItem;
    ProsesSalPiutang: TMenuItem;
    ProsesPembelian: TMenuItem;
    Prosesbeli: TMenuItem;
    ReturPembelian: TMenuItem;
    ProsesPenjualan: TMenuItem;
    ProsesJual: TMenuItem;
    ProsesReturPenjualan: TMenuItem;
    ToolBar1: TToolBar;
    imgKecil: TImageList;
    ActionList1: TActionList;
    SALStock: TAction;
    SALHutang: TAction;
    SALPiutang: TAction;
    TBeliBarang: TAction;
    TReturBarang: TAction;
    TBeliKonsinyasi: TAction;
    TBeliUangMuka: TAction;
    TSalesOrder: TAction;
    TSuratJalan: TAction;
    TReturSJ: TAction;
    TJualBarang: TAction;
    TReturJual: TAction;
    TUangMukaJual: TAction;
    TKMBarang: TAction;
    TPindahGudang: TAction;
    TRakitanBarang: TAction;
    TBayarHutang: TAction;
    TKoreksiHutang: TAction;
    TBayarPiutang: TAction;
    TKoreksiPiutang: TAction;
    TPSALStock: TAction;
    TPSALHutang: TAction;
    TPSALPiutang: TAction;
    TPPembelian: TAction;
    TPReturBeli: TAction;
    TPPenjual: TAction;
    TPReturPenjualan: TAction;
    MJenis: TAction;
    MGolongan: TAction;
    MMerek: TAction;
    MUkuran: TAction;
    MWarna: TAction;
    MKualitas: TAction;
    MMotif: TAction;
    MBarang: TAction;
    MKetBarang: TAction;
    MGudang: TAction;
    MHrgPokok: TAction;
    MKonfBarang: TAction;
    MNoUrut: TAction;
    MValuta: TAction;
    MSupplier: TAction;
    MNoUrutBeli: TAction;
    MValutaJual: TAction;
    MWilayah: TAction;
    MSales: TAction;
    MKDHarga: TAction;
    MCustomer: TAction;
    MHrgjual: TAction;
    MNoUrutJual: TAction;
    Exit: TAction;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButton2: TSpeedButton;
    ToolButton2: TToolButton;
    SpeedButton3: TSpeedButton;
    procedure ExitExecute(Sender: TObject);
    procedure MJenisExecute(Sender: TObject);
    procedure MGolonganExecute(Sender: TObject);
    procedure MMerekExecute(Sender: TObject);
    procedure MUkuranExecute(Sender: TObject);
    procedure MWarnaExecute(Sender: TObject);
    procedure MKualitasExecute(Sender: TObject);
    procedure MMotifExecute(Sender: TObject);
    procedure MBarangExecute(Sender: TObject);
    procedure MKetBarangExecute(Sender: TObject);
    procedure MGudangExecute(Sender: TObject);
    procedure MKonfBarangExecute(Sender: TObject);
    procedure MValutaExecute(Sender: TObject);
    procedure MSupplierExecute(Sender: TObject);
    procedure MValutaJualExecute(Sender: TObject);
    procedure MWilayahExecute(Sender: TObject);
    procedure MSalesExecute(Sender: TObject);
    procedure MKDHargaExecute(Sender: TObject);
    procedure MCustomerExecute(Sender: TObject);
    procedure MHrgjualExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  LogoBitmap: TBitmap;
implementation

uses ingol, injns, inkualitas, inmrk, inmotif, insize, inwrn,
inbrg, inbrgg, ingdg, inkbrg, apval, apsup, arval, arwil, arsales, armhrg,
arcust, arhrgj;

{$R *.dfm}

function IsMDIChildOpen(const AFormName: TForm; const AMDIChildName : string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Pred(AFormName.MDIChildCount) DownTo 0 do
    if (AFormName.MDIChildren[i].Name = AMDIChildName) then
    begin
      Result := True;
      Break;
    end;
end;

procedure TMainForm.ExitExecute(Sender: TObject);
begin
  if MessageDlg('Apakah anda akan keluar dari system aplikasi',(mtConfirmation),[mbOK,mbCancel],0)=mrOk then
  begin
    if ActiveMDIChild <> nil then
      ActiveMDIChild.Close else
        self.Close;
  end;
end;

procedure TMainForm.MBarangExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'inbrgform') then
    inbrgform := Tinbrgform.create(Self);
    inbrgForm.Show;
    inbrgForm.BringToFront;
end;

procedure TMainForm.MCustomerExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'arcustForm') then
    arcustForm := TarcustForm.create(Self);
    arcustForm.Show;
    arcustForm.BringToFront;
end;

procedure TMainForm.MGolonganExecute(Sender: TObject);
begin
 if not IsMDIChildOpen(MainForm, 'ingolform') then
    ingolform := Tingolform.create(Self);
    ingolForm.Show;
    ingolForm.BringToFront;
end;

procedure TMainForm.MGudangExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'ingdgform') then
    ingdgform := Tingdgform.create(Self);
    ingdgform.Show;
    ingdgForm.BringToFront;
end;

procedure TMainForm.MHrgjualExecute(Sender: TObject);
begin
 if not IsMDIChildOpen(MainForm, 'arhrgjform') then
    arhrgjform := Tarhrgjform.create(Self);
    arhrgjform.Show;
    arhrgjform.BringToFront;
end;

procedure TMainForm.MJenisExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'injnsform') then
    injnsform := Tinjnsform.create(Self);
    injnsform.Show;
    injnsForm.BringToFront;
end;

procedure TMainForm.MKDHargaExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'armhrgform') then
    armhrgform := Tarmhrgform.create(Self);
    armhrgform.Show;
    armhrgform.BringToFront;
end;

procedure TMainForm.MKetBarangExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'inbrggform') then
    inbrggform := Tinbrggform.create(Self);
    inbrggform.Show;
    inbrggform.BringToFront;
end;

procedure TMainForm.MKonfBarangExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'inkbrgform') then
    inkbrgform := Tinkbrgform.create(Self);
    inkbrgform.Show;
    inkbrgForm.BringToFront;
end;

procedure TMainForm.MKualitasExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'inkualitasform') then
    inkualitasform := Tinkualitasform.create(Self);
    inkualitasform.Show;
    inkualitasForm.BringToFront;
end;

procedure TMainForm.MMerekExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'inmrkform') then
    inmrkform := Tinmrkform.create(Self);
    inmrkForm.Show;
    inmrkForm.BringToFront;
end;

procedure TMainForm.MMotifExecute(Sender: TObject);
begin
 if not IsMDIChildOpen(MainForm, 'inmotifform') then
    inmotifform := Tinmotifform.create(Self);
    inmotifForm.Show;
    inmotifForm.BringToFront;
end;

procedure TMainForm.MSalesExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'arsalesform') then
    arsalesform := Tarsalesform.create(self);
    arsalesform.Show;
    arsalesform.BringToFront;
end;

procedure TMainForm.MSupplierExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'apsupform') then
    apsupform := Tapsupform.create(self);
    apsupForm.Show;
    apsupForm.BringToFront;
end;

procedure TMainForm.MUkuranExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'insizeform') then
    insizeform := Tinsizeform.create(self);
    insizeForm.Show;
    insizeForm.BringToFront;
end;

procedure TMainForm.MValutaExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'apvalform') then
    apvalform := Tapvalform.create(Self);
    apvalform.Show;
    apvalform.BringToFront;
end;

procedure TMainForm.MValutaJualExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'arvalform') then
    arvalform := Tarvalform.create(Self);
    arvalform.Show;
    arvalform.BringToFront;
end;

procedure TMainForm.MWarnaExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'inwrnform') then
    inwrnform := Tinwrnform.create(Self);
    inwrnForm.Show;
    inwrnForm.BringToFront;
end;

procedure TMainForm.MWilayahExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'arwilform') then
    arwilform := Tarwilform.create(Self);
    arwilform.Show;
    arwilform.BringToFront;
end;

// ...
  initialization
  LogoBitmap := TBitmap.Create;
  LogoBitmap.LoadFromFile('reload.bmp');
  finalization
  LogoBitmap.Free;
end.
