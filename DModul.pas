unit DModul;

interface

uses
  SysUtils, Classes, DB, ADODB, mylib, windows, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, jpeg;

type
  TMastData = class(TDataModule)
    invConnection: TADOConnection;
    DSMTable: TDataSource;
    DSMJenis: TDataSource;
    ADOQuery1: TADOQuery;
    MJenis: TADOQuery;
    MJenisJNS: TStringField;
    MJenisKET: TStringField;
    MJenisTGLU: TDateTimeField;
    MGolongan: TADOQuery;
    DSMGolongan: TDataSource;
    MGolonganGol: TStringField;
    MGolonganKet: TStringField;
    MGolonganTglU: TDateTimeField;
    DSMMerek: TDataSource;
    MMerek: TADOQuery;
    MMerekMRK: TStringField;
    MMerekKET: TStringField;
    MMerekTGLU: TDateTimeField;
    DSMSize: TDataSource;
    MSize: TADOQuery;
    MSizeSIZE: TStringField;
    MSizeKET: TStringField;
    MSizeTGLU: TDateTimeField;
    DSMWarna: TDataSource;
    MWarna: TADOQuery;
    MWarnaWRN: TStringField;
    MWarnaKET: TStringField;
    MWarnaTGLU: TDateTimeField;
    DSMKualitas: TDataSource;
    MKualitas: TADOQuery;
    MKualitasKUALI: TStringField;
    MKualitasKET: TStringField;
    MKualitasTGLU: TDateTimeField;
    DSMMotif: TDataSource;
    MMotif: TADOQuery;
    MMotifMTF: TStringField;
    MMotifKET: TStringField;
    MMotifTGLU: TDateTimeField;
    DSMBarang: TDataSource;
    MBarang: TADOQuery;
    MBarangBRG: TStringField;
    MBarangNama1: TStringField;
    MBarangNama2: TStringField;
    MBarangJenis: TStringField;
    MBarangStn1: TStringField;
    MBarangStn2: TStringField;
    MBarangStn3: TStringField;
    MBarangMaxi: TFMTBCDField;
    MBarangMini: TFMTBCDField;
    MBarangIsi1: TFMTBCDField;
    MBarangIsi2: TFMTBCDField;
    MBarangHpp: TFMTBCDField;
    MBaranghbeli: TFMTBCDField;
    MBaranghjual1: TFMTBCDField;
    MBaranghjual2: TFMTBCDField;
    MBaranghjual3: TFMTBCDField;
    MBaranglks: TStringField;
    MBarangsup: TStringField;
    MBaranggol: TStringField;
    MBarangmerek: TStringField;
    MBarangtype: TStringField;
    MBarangmodel: TStringField;
    MBarangklink: TStringField;
    MBarangstatus: TSmallintField;
    MBarangbarcode: TStringField;
    MBarangnamabar: TStringField;
    MBarangberat: TFMTBCDField;
    MBarangvol: TFMTBCDField;
    MBarangslevel: TFMTBCDField;
    MBarangkuali: TStringField;
    MBarangwrn: TStringField;
    MBarangmtf: TStringField;
    MBarangsize: TStringField;
    MBarangtglu: TDateTimeField;
    MBaranglNonkonsinyasi: TStringField;
    MBaranglAktif: TStringField;
    MBarangcab: TStringField;
    MBaranglstatAll: TBooleanField;
    MBarangRak: TStringField;
    MBarangKdHarga: TStringField;
    MBaranghppjual: TFMTBCDField;
    MBarangpersentjual: TFMTBCDField;
    MBarangpersentnilai: TFMTBCDField;
    QCari: TADOQuery;
    DSMType: TDataSource;
    MType: TADOQuery;
    MTypeType: TStringField;
    MTypeKet: TStringField;
    MTypeTglU: TDateTimeField;
    MBarangNMJenis: TStringField;
    MBarangNMGolongan: TStringField;
    MBarangNMMerek: TStringField;
    MBarangNMType: TStringField;
    MBarangNMKualitas: TStringField;
    MBarangNMWarna: TStringField;
    MBarangNMSize: TStringField;
    MBarangNMMotif: TStringField;
    DSMHRGJual: TDataSource;
    MHRGJual: TADOQuery;
    MHRGJualHrg: TStringField;
    MHRGJualKet: TStringField;
    MHRGJualVal: TStringField;
    MHRGJualTglu: TDateTimeField;
    MBarangNMHRG: TStringField;
    DSMSUP: TDataSource;
    MSUPP: TADOQuery;
    MSUPPSUP: TStringField;
    MSUPPNama: TStringField;
    MSUPPAL1: TStringField;
    MSUPPAL2: TStringField;
    MSUPPTelp: TStringField;
    MSUPPPerso: TStringField;
    MSUPPNPWP: TStringField;
    MSUPPTerm: TSmallintField;
    MSUPPKlink: TStringField;
    MSUPPcab: TStringField;
    MSUPPval: TStringField;
    MSUPPTglU: TDateTimeField;
    MSUPPwil: TStringField;
    MSUPPFax: TStringField;
    DSMRAK: TDataSource;
    MRAK: TADOQuery;
    MRAKRak: TStringField;
    MRAKKet: TStringField;
    MRAKTglU: TDateTimeField;
    DSMMBRGG: TDataSource;
    MBARANGG: TADOQuery;
    MBARANGGBrg: TStringField;
    MBARANGGKet: TMemoField;
    MBARANGGTglu: TDateTimeField;
    MBARANGGGbr: TMemoField;
    sp_input_gambar: TADOStoredProc;
    MBARANGGNama1: TStringField;
    DSMGudang: TDataSource;
    MGudang: TADOQuery;
    MGudangGdg: TStringField;
    MGudangNama: TStringField;
    MGudangTglU: TDateTimeField;
    DSMKonfBarang: TDataSource;
    MKonfBarangHeader: TADOQuery;
    MKonfBarangHeaderBRG: TStringField;
    DSMKonfBarangDetail: TDataSource;
    MKonfBarangDetail: TADOQuery;
    MKonfBarangDetailBRG: TStringField;
    MKonfBarangDetailNOUR: TSmallintField;
    MKonfBarangDetailBRGD: TStringField;
    MKonfBarangDetailGD: TStringField;
    MKonfBarangDetailSTN3: TStringField;
    MKonfBarangDetailQTY: TFMTBCDField;
    MKonfBarangDetailHSATUAN: TFMTBCDField;
    MKonfBarangDetailTGLU: TDateTimeField;
    MKonfBarangDetailCab: TStringField;
    DSMPXSetup: TDataSource;
    PXSetup: TADOQuery;
    PXSetupNama: TStringField;
    PXSetupCompany: TStringField;
    PXSetupAlamat1: TStringField;
    PXSetupAlamat2: TStringField;
    PXSetupTelp: TStringField;
    PXSetupNPWP: TStringField;
    PXSetupGDGU: TStringField;
    PXSetupSTNU: TSmallintField;
    PXSetupVALU: TStringField;
    PXSetupMTDP: TSmallintField;
    PXSetupJBLT: TSmallintField;
    PXSetupNBLT1: TFMTBCDField;
    PXSetupNBLT2: TFMTBCDField;
    PXSetupLKGL: TBooleanField;
    PXSetupTGLP: TDateTimeField;
    PXSetupLOGO: TBlobField;
    PXSetupLOGOLAP: TBlobField;
    PXSetupTPLOGO: TBooleanField;
    PXSetupTPNAMA: TBooleanField;
    PXSetupJUALO: TSmallintField;
    PXSetupfiledbSys1: TMemoField;
    PXSetupfiledbSys2: TMemoField;
    PXSetuptglInstall: TDateTimeField;
    PXSetuplnoaktif: TBooleanField;
    PXSetupcopyright: TStringField;
    PXSetupmsaktif: TIntegerField;
    PXSetupaktif: TIntegerField;
    PXSetupCab: TStringField;
    PXSetuplfifoaveg: TBooleanField;
    PXSetuphrgu: TStringField;
    PXSetupprefiksltahu: TStringField;
    PXSetupprefikslbulan: TStringField;
    PXSetupprefiksltgl: TStringField;
    PXSetupdisctingkat: TStringField;
    DSMBarangNonKonf: TDataSource;
    MBarangNonKonf: TADOQuery;
    MBarangNonKonfBRG: TStringField;
    MBarangNonKonfNama1: TStringField;
    MBarangNonKonfNama2: TStringField;
    MBarangNonKonfJenis: TStringField;
    MBarangNonKonfStn1: TStringField;
    MBarangNonKonfStn2: TStringField;
    MBarangNonKonfStn3: TStringField;
    MBarangNonKonfMaxi: TFMTBCDField;
    MBarangNonKonfMini: TFMTBCDField;
    MBarangNonKonfIsi1: TFMTBCDField;
    MBarangNonKonfIsi2: TFMTBCDField;
    MBarangNonKonfHpp: TFMTBCDField;
    MBarangNonKonfhbeli: TFMTBCDField;
    MBarangNonKonfhjual1: TFMTBCDField;
    MBarangNonKonfhjual2: TFMTBCDField;
    MBarangNonKonfhjual3: TFMTBCDField;
    MBarangNonKonflks: TStringField;
    MBarangNonKonfsup: TStringField;
    MBarangNonKonfgol: TStringField;
    MBarangNonKonfmerek: TStringField;
    MBarangNonKonftype: TStringField;
    MBarangNonKonfmodel: TStringField;
    MBarangNonKonfklink: TStringField;
    MBarangNonKonfstatus: TSmallintField;
    MBarangNonKonfbarcode: TStringField;
    MBarangNonKonfnamabar: TStringField;
    MBarangNonKonfberat: TFMTBCDField;
    MBarangNonKonfvol: TFMTBCDField;
    MBarangNonKonfslevel: TFMTBCDField;
    MBarangNonKonfkuali: TStringField;
    MBarangNonKonfwrn: TStringField;
    MBarangNonKonfmtf: TStringField;
    MBarangNonKonfsize: TStringField;
    MBarangNonKonftglu: TDateTimeField;
    MBarangNonKonflNonkonsinyasi: TStringField;
    MBarangNonKonflAktif: TStringField;
    MBarangNonKonfcab: TStringField;
    MBarangNonKonflstatAll: TBooleanField;
    MBarangNonKonfRak: TStringField;
    MBarangNonKonfKdHarga: TStringField;
    MBarangNonKonfhppjual: TFMTBCDField;
    MBarangNonKonfpersentjual: TFMTBCDField;
    MBarangNonKonfpersentnilai: TFMTBCDField;
    MKonfBarangHeaderNama1: TStringField;
    DSMAPVal: TDataSource;
    MAPVal: TADOQuery;
    MAPValVal: TStringField;
    MAPValKet: TStringField;
    MAPValTukar: TFMTBCDField;
    MAPValTglu: TDateTimeField;
    DSMAPSup: TDataSource;
    MAPSup: TADOQuery;
    MAPSupSUP: TStringField;
    MAPSupNama: TStringField;
    MAPSupAL1: TStringField;
    MAPSupAL2: TStringField;
    MAPSupTelp: TStringField;
    MAPSupPerso: TStringField;
    MAPSupNPWP: TStringField;
    MAPSupTerm: TSmallintField;
    MAPSupKlink: TStringField;
    MAPSupcab: TStringField;
    MAPSupval: TStringField;
    MAPSupTglU: TDateTimeField;
    MAPSupwil: TStringField;
    MAPSupFax: TStringField;
    DSMWilayah: TDataSource;
    MWilayah: TADOQuery;
    MWilayahWil: TStringField;
    MWilayahNama: TStringField;
    MWilayahTglU: TDateTimeField;
    MAPSupNMWilayah: TStringField;
    MAPSupNMValuta: TStringField;
    DSMCabang: TDataSource;
    MCabang: TADOQuery;
    MCabangcab: TStringField;
    MCabangKet: TStringField;
    MCabangtglU: TDateTimeField;
    MAPSupNMCabang: TStringField;
    MARVal: TADOQuery;
    DSMARVal: TDataSource;
    MARValVal: TStringField;
    MARValKet: TStringField;
    MARValTukar: TFMTBCDField;
    MARValTglu: TDateTimeField;
    DSMARSales: TDataSource;
    MARSales: TADOQuery;
    MARSalesSales: TStringField;
    MARSalesNama: TStringField;
    MARSalesPersen: TFMTBCDField;
    MARSalesCompany: TStringField;
    MARSalesTglu: TDateTimeField;
    MARSalesNamaCabang: TStringField;
    DSMARHrg: TDataSource;
    MARHrg: TADOQuery;
    MARHrgHrg: TStringField;
    MARHrgKet: TStringField;
    MARHrgVal: TStringField;
    MARHrgTglu: TDateTimeField;
    MARHrgNamaVal: TStringField;
    DSMARCust: TDataSource;
    MARCust: TADOQuery;
    MARCustCust: TStringField;
    MARCustNama: TStringField;
    MARCustAl1: TStringField;
    MARCustAl2: TStringField;
    MARCustAl3: TStringField;
    MARCustTelp: TStringField;
    MARCustPerso: TStringField;
    MARCustNpwp: TStringField;
    MARCustTerm: TSmallintField;
    MARCustLimit: TFMTBCDField;
    MARCustPkp: TBooleanField;
    MARCustWil: TStringField;
    MARCustKlink: TStringField;
    MARCustCab: TStringField;
    MARCustSales: TStringField;
    MARCustVal: TStringField;
    MARCustKdHarga: TStringField;
    MARCustAlkirim1: TStringField;
    MARCustAlkirim2: TStringField;
    MARCustAlkirim3: TStringField;
    MARCustDiscNota1: TFMTBCDField;
    MARCustDiscNota2: TFMTBCDField;
    MARCustDiscItem1: TFMTBCDField;
    MARCustDiscItem2: TFMTBCDField;
    MARCustBlacklist: TBooleanField;
    MARCustSaldo: TFMTBCDField;
    MARCustSaldoS: TFMTBCDField;
    MARCustEmail: TStringField;
    MARCustWeb: TStringField;
    MARCustHp: TStringField;
    MARCustKetBlack: TStringField;
    MARCustBolehOver: TSmallintField;
    MARCustTglU: TDateTimeField;
    MARCustMember: TStringField;
    MARCustValiddate: TDateTimeField;
    MARCustfax: TStringField;
    MARCustGiroM: TFMTBCDField;
    MARCustNMWilayah: TStringField;
    MARCustNMCabang: TStringField;
    MARCustNMSales: TStringField;
    MARCustNMValuta: TStringField;
    MARCustNMHarga: TStringField;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    MARPerson: TADOTable;
    DSMARPerson: TDataSource;
    MARPersonContac: TStringField;
    MARPersonCust: TStringField;
    MARPersonNama: TStringField;
    MARPersonTglu: TDateTimeField;
    MARPersonjabatan: TStringField;
    MARPersonAlamat: TStringField;
    MARCustRek: TADOTable;
    DSMARCustRek: TDataSource;
    MARCustReknorek: TStringField;
    MARCustRekCust: TStringField;
    MARCustRekket: TStringField;
    MARCustRektglU: TDateTimeField;
    MARCustRekBank: TStringField;
    DSMARHJual: TDataSource;
    MARHJual: TADOQuery;
    MARHJualCab: TStringField;
    MARHJualHrg: TStringField;
    MARHJualBrg: TStringField;
    MARHJualHpp: TFMTBCDField;
    MARHJualProfit: TFMTBCDField;
    MARHJualProfitnilai: TFMTBCDField;
    MARHJualH1: TFMTBCDField;
    MARHJualH2: TFMTBCDField;
    MARHJualH3: TFMTBCDField;
    MARHJualTglU: TDateTimeField;
    MARHJualCreate_id: TStringField;
    MARHJualModify_id: TStringField;
    MARHJualCreate_Tgl: TDateTimeField;
    sp_input_hjual: TADOStoredProc;
    procedure MJenisNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure invConnectionAfterConnect(Sender: TObject);
    procedure MGolonganNewRecord(DataSet: TDataSet);
    procedure MMerekNewRecord(DataSet: TDataSet);
    procedure MSizeNewRecord(DataSet: TDataSet);
    procedure MWarnaNewRecord(DataSet: TDataSet);
    procedure MBarangNewRecord(DataSet: TDataSet);
    procedure MMotifNewRecord(DataSet: TDataSet);
    procedure MKualitasNewRecord(DataSet: TDataSet);
    procedure MBARANGGNewRecord(DataSet: TDataSet);
    procedure MBARANGGBeforeInsert(DataSet: TDataSet);
    procedure MBARANGGBeforeEdit(DataSet: TDataSet);
    procedure MBarangPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure MKonfBarangHeaderAfterScroll(DataSet: TDataSet);
    procedure MKonfBarangDetailNewRecord(DataSet: TDataSet);
    procedure MKonfBarangDetailBeforeInsert(DataSet: TDataSet);
    procedure MKonfBarangDetailBeforeEdit(DataSet: TDataSet);
    procedure MAPValNewRecord(DataSet: TDataSet);
    procedure MAPSupBeforeInsert(DataSet: TDataSet);
    procedure MAPSupBeforeEdit(DataSet: TDataSet);
    procedure MAPSupNewRecord(DataSet: TDataSet);
    procedure MAPSupPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure MARSalesBeforeEdit(DataSet: TDataSet);
    procedure MARSalesBeforeInsert(DataSet: TDataSet);
    procedure MARSalesNewRecord(DataSet: TDataSet);
    procedure MARValNewRecord(DataSet: TDataSet);
    procedure MARHrgBeforeEdit(DataSet: TDataSet);
    procedure MARHrgBeforeInsert(DataSet: TDataSet);
    procedure MARHrgNewRecord(DataSet: TDataSet);
    procedure MARPersonNewRecord(DataSet: TDataSet);
    procedure MARCustNewRecord(DataSet: TDataSet);
    procedure MARHJualNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    statBarang, statGambar, statKonfBarang, statSupp, statSales, statHrg, statCust : smallint;
    statSearch : String;
    procedure tampilfoto(var img:TImage);
    { Public declarations }
  end;

var
  MastData: TMastData;

implementation

{$R *.dfm}

procedure TMastData.tampilfoto(var img:TImage);
var
lok3:string;
begin//
  if mastdata.MBARANGGGbr.AsString = '' then
  begin
    img.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
  end else
    img.Picture.LoadFromFile(mastdata.MBARANGGGbr.AsString);
end;

function ReturnToNormal(strNilai:string):Double;
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

procedure TMastData.DataModuleCreate(Sender: TObject);
begin
  statSearch :='';
  if invConnection.Connected = false then
  begin
    invConnection.Close;
    invConnection.ConnectionString := DBConnectMasterMysql;
  end;
end;

procedure TMastData.invConnectionAfterConnect(Sender: TObject);
begin
//  MJenis.Close;
//  MGolongan.Close;
//  MMerek.Close;
//  MSize.Close;
//  MWarna.Close;
//  MKualitas.Close;
//  MMotif.Close;
//  MBarang.Close;
//  MJenis.Open;
//  MGolongan.Open;
//  MMerek.Open;
//  MSize.Open;
//  MWarna.Open;
//  MKualitas.Open;
//  MMotif.Open;
//  MBarang.Open;
  PXSetup.Close;
  PXSetup.Open;
//  MWilayah.Close;
//  MWilayah.Open;
  MCabang.Close;
  MCabang.Open;
end;

procedure TMastData.MAPSupBeforeEdit(DataSet: TDataSet);
begin
  statSupp := 1;
end;

procedure TMastData.MAPSupBeforeInsert(DataSet: TDataSet);
begin
  statSupp := 0;
end;

procedure TMastData.MAPSupNewRecord(DataSet: TDataSet);
begin
  MAPSupTglU.Value := now;
end;

procedure TMastData.MAPSupPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  MAPSup.Close;
  MAPSup.Open;
end;

procedure TMastData.MAPValNewRecord(DataSet: TDataSet);
begin
  MAPValTglu.Value := now;
end;

procedure TMastData.MARCustNewRecord(DataSet: TDataSet);
begin
  MARCustCab.Value := PXSetupCab.Value;
end;

procedure TMastData.MARHJualNewRecord(DataSet: TDataSet);
begin
  MARHJualCab.Value := PXSetupCab.Value;
end;

procedure TMastData.MARHrgBeforeEdit(DataSet: TDataSet);
begin
  statHrg := 1;
end;

procedure TMastData.MARHrgBeforeInsert(DataSet: TDataSet);
begin
  statHrg := 0;
end;

procedure TMastData.MARHrgNewRecord(DataSet: TDataSet);
begin
  MARHrgTglu.Value := now;
end;

procedure TMastData.MARPersonNewRecord(DataSet: TDataSet);
begin
  MARPersonCust.Value := MARCustCust.Value;
  MARPersonTglu.Value := now;
end;

procedure TMastData.MARSalesBeforeEdit(DataSet: TDataSet);
begin
  statSales := 1;
end;

procedure TMastData.MARSalesBeforeInsert(DataSet: TDataSet);
begin
  statSales := 0;
end;

procedure TMastData.MARSalesNewRecord(DataSet: TDataSet);
begin
  MARSalesTglu.Value := now;
end;

procedure TMastData.MARValNewRecord(DataSet: TDataSet);
begin
  MARValTglu.Value := now;
end;

procedure TMastData.MBARANGGBeforeEdit(DataSet: TDataSet);
begin
  statGambar := 1;
end;

procedure TMastData.MBARANGGBeforeInsert(DataSet: TDataSet);
begin
  statGambar := 0;
end;

procedure TMastData.MBARANGGNewRecord(DataSet: TDataSet);
begin
  MBARANGGTglu.Value := now;
end;

procedure TMastData.MBarangNewRecord(DataSet: TDataSet);
begin
  MBarangMaxi.AsInteger  := 0;
  MBarangMini.AsInteger  := 0;
  MBarangIsi1.AsInteger  := 1;
  MBarangIsi2.AsInteger  := 1;
  MBaranghbeli.AsCurrency := 0;
  MBarangHpp.AsCurrency := 0;
  MBaranghjual1.AsCurrency := 0;
  MBaranghjual2.AsCurrency := 0;
  MBaranghjual3.AsCurrency := 0;
  MBaranghppjual.AsCurrency := 0;
  MBarangtglu.Value := Now;
end;

procedure TMastData.MBarangPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
MBarang.Close;
MBarang.Open;
end;

procedure TMastData.MGolonganNewRecord(DataSet: TDataSet);
begin
  MGolonganTglU.Value := now;
end;

procedure TMastData.MJenisNewRecord(DataSet: TDataSet);
begin
  MJenisTGLU.Value := now;
end;

procedure TMastData.MKonfBarangDetailBeforeEdit(DataSet: TDataSet);
begin
  statKonfBarang := 1;
end;

procedure TMastData.MKonfBarangDetailBeforeInsert(DataSet: TDataSet);
begin
  statKonfBarang := 0;
end;

procedure TMastData.MKonfBarangDetailNewRecord(DataSet: TDataSet);
var
  i : smallint;
begin
  i := 0;
  MKonfBarangDetailBRG.Value := MKonfBarangHeaderBRG.Value;
  with QCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' Select ifnull(Max(NOUR),0) From svinmkbrg where Brg=:Brg_');
    Parameters.ParamByName('Brg_').Value := MKonfBarangHeaderBRG.Value;
    Prepared:=true;
    Open;
  end;
  if Not QCari.IsEmpty then
  begin
    i := QCari.Fields[0].Value;
    inc(i);
  end else
  begin
    i := 1;
  end;
  MKonfBarangDetailNOUR.Value := i;
  MKonfBarangDetailCab.Value := PXSetupCab.Value;
  MKonfBarangDetailGD.Value  := PXSetupGDGU.Value;
  MKonfBarangDetailTGLU.Value := now;
end;

procedure TMastData.MKonfBarangHeaderAfterScroll(DataSet: TDataSet);
begin
  MKonfBarangDetail.Close;
   MKonfBarangDetail.Parameters.ParamByName('Brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
   MKonfBarangDetail.Open;
end;

procedure TMastData.MKualitasNewRecord(DataSet: TDataSet);
begin
  MKualitasTGLU.Value := now;
end;

procedure TMastData.MMerekNewRecord(DataSet: TDataSet);
begin
  MMerekTGLU.Value := now;
end;

procedure TMastData.MMotifNewRecord(DataSet: TDataSet);
begin
  MMotifTGLU.Value := now;
end;

procedure TMastData.MSizeNewRecord(DataSet: TDataSet);
begin
  MSizeTGLU.Value := now;
end;

procedure TMastData.MWarnaNewRecord(DataSet: TDataSet);
begin
  MWarnaTGLU.Value :=now;
end;

end.
