unit infkbrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, dmodul,mylib, Mask,
  DBCtrls;

type
  Tinfkbrgform = class(TinftemplateForm)
    Label1: TLabel;
    DBEBRG: TDBEdit;
    Label2: TLabel;
    DBENOUR: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEGD: TDBEdit;
    Label5: TLabel;
    DBESTN: TDBEdit;
    Label6: TLabel;
    DBEQty: TDBEdit;
    Label7: TLabel;
    DBEHrg: TDBEdit;
    Label8: TLabel;
    DBECab: TDBEdit;
    DBLBRG: TDBLookupComboBox;
    DBENMBrg: TEdit;
    lblNamaCab: TLabel;
    lblNamaGDG: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure DBLBRGCloseUp(Sender: TObject);
    procedure DBLBRGEnter(Sender: TObject);
    procedure DBLBRGExit(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  infkbrgform: Tinfkbrgform;

implementation

{$R *.dfm}

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

procedure Tinfkbrgform.btnCancelClick(Sender: TObject);
begin
  mastData.MKonfBarangDetail.Cancel;
  with MastData.MKonfBarangDetail do
  begin
   close;
   SQL.Clear;
   SQL.Add(' Select * From svinmkbrg where Brg=:brg_');
   Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
   Open;
  end;
  inherited;
end;

procedure Tinfkbrgform.btnsimpanClick(Sender: TObject);
begin
  MastData.MKonfBarangDetailHSATUAN.AsFloat :=  ReturnToNormalx(DBEHrg.Text);
  if MastData.statKonfBarang = 0 then
  begin
  if konfTanya('ditambah')=true  then
  begin
    MastData.MKonfBarangDetail.Post;
    MastData.MKonfBarangDetail.Append;
    DBLBRG.SetFocus;
    abort;
  end else
  begin
    MastData.MKonfBarangDetail.Post;
    MastData.MKonfBarangDetail.Close;
    MastData.MKonfBarangDetail.Open;
  end;
  end else
  begin
    MastData.MKonfBarangDetail.Post;
    with MastData.MKonfBarangDetail do
    begin
     close;
     SQL.Clear;
     SQL.Add(' Select * From svinmkbrg where Brg=:brg_');
     Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
     Open;
    end;
  end;
  inherited;
end;

procedure Tinfkbrgform.DBLBRGCloseUp(Sender: TObject);
begin
  inherited;
  DBENMBrg.Text := MastData.MBarangNonKonfNama1.Value;
  DBESTN.Text   := MastData.MBarangNonKonfStn3.Value;
  DBEHrg.Text   := floattostr(MastData.MBarangNonKonfhbeli.AsFloat);
  ribuan(DBEHrg);
end;

procedure Tinfkbrgform.DBLBRGEnter(Sender: TObject);
begin
  inherited;
  MastData.MBarangNonKonf.Close;
  MastData.MBarangNonKonf.Open;
//  DBENMBrg.Text := MastData.MKonfBarangHeaderNMBrg.Value;
end;

procedure Tinfkbrgform.DBLBRGExit(Sender: TObject);
begin
  inherited;
  if DBLBRG.Text <> '' then
  begin
    DBENMBrg.Text := MastData.MBarangNonKonfNama1.Value;
    DBESTN.Text   := MastData.MBarangNonKonfStn3.Value;
    DBEHrg.Text   := floattostr(MastData.MBarangNonKonfhbeli.AsFloat);
    ribuan(DBEHrg);
  end else
  begin
    konfError('Item barang belum dipilih'#13#10'Silahkan pilih dahulu itemnya');
    DBLBRG.SetFocus;
  end;

end;

procedure Tinfkbrgform.FormCreate(Sender: TObject);
begin
  inherited;
  MastData.MBarangNonKonf.Close;
  MastData.MBarangNonKonf.Open;
  with MastData.QCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' Select Nama From svinmgdg where GDG=:Gdg_');
    Parameters.ParamByName('Gdg_').Value := MastData.MKonfBarangDetailGD.Value;
    Prepared := true;
    Open;
  end;
  if MastData.QCari.RecordCount > 1 then
    lblNamaGDG.Caption := MastData.QCari.Fields[0].Value else
    lblNamaGDG.Caption := '';
  with MastData.QCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' Select Ket From svinmcbg where CAB=:CAB_');
    Parameters.ParamByName('Cab_').Value := MastData.MKonfBarangDetailCab.Value;
    Prepared := true;
    Open;
  end;
  if MastData.QCari.RecordCount > 1 then
    lblNamaCab.Caption := MastData.QCari.Fields[0].Value else
    lblNamaCab.Caption := '';

end;

procedure Tinfkbrgform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if DBLBRG.Focused then
      DBEQty.SetFocus;
  end;
end;

procedure Tinfkbrgform.FormShow(Sender: TObject);
begin
  inherited;
  DBLBRG.SetFocus;
end;

end.
