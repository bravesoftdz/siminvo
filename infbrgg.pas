unit infbrgg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls, DModul, Buttons, ExtDlgs,
  DBCtrls, Mask, jpeg;

type
  Tinfbrggform = class(TinftemplateForm)
    Label1: TLabel;
    Label2: TLabel;
    DBMKet: TDBMemo;
    Label3: TLabel;
    op: TOpenPictureDialog;
    btnopen: TSpeedButton;
    btnclear: TSpeedButton;
    DBLBarang: TDBLookupComboBox;
    DBENMBARANG: TEdit;
    img1: TImage;
    Edit1: TEdit;
    procedure DBLBarangCloseUp(Sender: TObject);
    procedure DBLBarangExit(Sender: TObject);
    procedure DBLBarangEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnopenClick(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  procedure simpanfoto;
  procedure hapusfoto;
    { Private declarations }
  public
  var
  fileSource, fileDest: string;
    { Public declarations }
  end;

var
  infbrggform: Tinfbrggform;

implementation

{$R *.dfm}

//procedure Tinfbrggform.tampilfoto;
//var
//lok3:string;
//begin//
//  if mastdata.MBARANGGGbr.AsString = '' then
//  begin
//    img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
//  end else
//    img1.Picture.LoadFromFile(mastdata.MBARANGGGbr.AsString);
//end;

procedure Tinfbrggform.simpanfoto;
var
  bmp: TBitmap;
  jpg: TJpegImage;
  scale: Double;
  lok1: string;
begin
  jpg := TJpegImage.Create;
  try
    jpg.Loadfromfile(op.filename);
    if jpg.Height > jpg.Width then
      scale := 400 / jpg.Height
    else
      scale := 400 / jpg.Width;
    bmp := TBitmap.Create;
    try
      {Create thumbnail bitmap, keep pictures aspect ratio}
      bmp.Width := Round(jpg.Width * scale);
      bmp.Height := Round(jpg.Height * scale);
      bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
      //Self.Canvas.Draw(100, 10, bmp);
      {Convert back to JPEG and save to file}
      //
    jpg.Loadfromfile(op.filename);
    if jpg.Height > jpg.Width then
      scale := 400 / jpg.Height
    else
      scale := 400 / jpg.Width;
      lok1:= ExtractFileDir(Application.ExeName);
      {Convert back to JPEG and save to file}
      //
      jpg.Assign(bmp);
      jpg.SaveToFile(ChangeFileExt(lok1+ '\Photo' + '\' +  DBLBarang.Text + '', '.jpg')); //ubah nama gambar menjadi = primary key field
    finally
      bmp.free;
    end;
  finally
    jpg.free;
  end;
  fileSource := ChangeFileExt(lok1 + '\Photo' + '\' + DBLBarang.Text + '', '.jpg');
  fileDest := lok1 + '\Photo' + '\' + DBLBarang.Text + '.jpg';
  edit1.Text := fileDest;
  CopyFile(pchar(fileSource), PChar(fileDest), false);
end;

procedure Tinfbrggform.hapusfoto;
var
  imge,lok2: string;
begin
  lok2:= ExtractFileDir(Application.ExeName);
  imge := Mastdata.MBARANGGGbr.AsString;
  DeleteFile(imge);
  img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
end;

procedure Tinfbrggform.btnCancelClick(Sender: TObject);
begin
  inherited;
  Mastdata.mbarangg.Cancel;
  img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
end;

procedure Tinfbrggform.DBLBarangCloseUp(Sender: TObject);
begin
  inherited;
  DBENMBARANG.Text := MastData.MBarangBRG.Value;
end;

procedure Tinfbrggform.DBLBarangEnter(Sender: TObject);
begin
  inherited;
  MastData.MBarang.Close;
  MastData.MBarang.Open;
end;

procedure Tinfbrggform.DBLBarangExit(Sender: TObject);
begin
  inherited;
  if DBLBarang.Text = '' then
  begin
    MessageDlg('Tidak Boleh Kosong'#13'Silahkan pilih Kode Barang Terlebih Dahulu !!!',(mtError),[mbOK],0);
    DBLBarang.SetFocus;
    Abort;
  end;
  DBENMBARANG.Text := MastData.MBarangBRG.Value;
end;

procedure Tinfbrggform.FormActivate(Sender: TObject);
begin
  inherited;
  if MastData.statGambar <> 1 then
    DBLBarang.SetFocus else
      DBMKet.SetFocus;
end;

procedure Tinfbrggform.FormCreate(Sender: TObject);
begin
  inherited;
  MastData.MBarang.Open;
  if MastData.statGambar = 1 then
  begin
    DBLBarang.ReadOnly := True;
    with MastData.QCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select BRG From svinmbrg where Nama1=:Nama_');
      Parameters.ParamByName('Nama_').Value := DBLBarang.Text;
      Prepared;
      Open;
    end;
    if MastData.QCari.RecordCount > 0 then
      DBENMBARANG.Text := MastData.QCari.Fields[0].Value;
    MastData.tampilfoto(img1);
  end else
      DBLBArang.ReadOnly := False;
end;

procedure Tinfbrggform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if DBLBarang.Focused then
      DBMKet.SetFocus;
  end;
end;

procedure Tinfbrggform.btnopenClick(Sender: TObject);
begin
  inherited;
  op.FileName := '';
  op.Execute;
  try
    img1.Picture.LoadFromFile(op.FileName);
    img1.Refresh;
    SimpanFoto;
  except
  ShowMessage('Belum ada foto');
  end;
end;

procedure Tinfbrggform.btnsimpanClick(Sender: TObject);
begin
  if MastData.statGambar = 1 then
  begin
    with MastData.sp_input_Gambar do
    begin
      close;
      Parameters.ParamByName('pathtemp').Value := edit1.Text;
      Parameters.ParamByName('tempketerangan').Value := DBMKet.Text;
      Parameters.ParamByName('tempbrgId').Value := DBENMBARANG.Text;
      ExecProc;
    end;
    ShowMessage('Data Berhasil Disimpan');
  end else
  begin
    MastData.MBARANGGGbr.AsString := Edit1.Text;
    MastData.MBarangg.Post;
  end;
  MastData.MBarangg.Close;
  MastData.MBarangg.Open;
  inherited;
end;

procedure Tinfbrggform.btnclearClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Anda yakin akan Menghapus Foto Ini..?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes) then begin
    hapusfoto;
    img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
    btnclear.Enabled := false;
  end;
end;

end.
