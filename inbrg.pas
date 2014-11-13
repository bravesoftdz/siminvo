unit inbrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, Mylib,
  SearchTemplate, infbrg, DBCtrls;

type
  Tinbrgform = class(TintemplateForm)
    List: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    DBText18: TDBText;
    DBText19: TDBText;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText17: TDBText;
    DBText16: TDBText;
    DBText20: TDBText;
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inbrgform: Tinbrgform;

implementation

{$R *.dfm}

procedure ribuan(lbl : TDBText);
var
 sRupiah: string;
 iRupiah: Currency;
begin
 //ribuan --> currency ( menyesuaikan setting windows )
 sRupiah := lbl.Caption;
 sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
 sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik . pemisah //ribuan IDR
 iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

//currency --> format ribuan
 lbl.Caption := FormatCurr('#,###',iRupiah);
 lbl.GlowSize := length(lbl.Caption);
end;

procedure Tinbrgform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MBarang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      SQL.Add(' where Brg like '''+EPencarian.Text+'%'' Or Nama1 like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MBarang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tinbrgform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MBarang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      SQL.Add(' Where Brg = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA1 = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MBarang.IsEmpty then
    begin
      try
        MastData.MBarang.Delete;
      finally
        btnRefreshClick(sender);
      end;
    end else
    begin
      konfPeringatan('Maaf kode Barang atau Nama '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MBarang do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmbrg');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tinbrgform.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MBarang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      SQL.Add(' Where Brg = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA1 = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MBarang.IsEmpty then
    begin
      MastData.MBarang.Edit;
      MastData.StatBarang := 1;
      infbrgform := Tinfbrgform.create(nil);
      infbrgform.formstyle := fsnormal;
      infbrgform.Show;
    end else
    begin
      konfPeringatan('Maaf kode Barang atau Nama '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MBarang do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmbrg');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tinbrgform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MBarang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tinbrgform.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MBarang.Active;
     MastData.MBarang.Append;
     MastData.StatBarang := 0;
     infbrgform := Tinfbrgform.create(nil);
     infbrgform.formstyle := fsnormal;
     infbrgform.Show;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tinbrgform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    btnTambahClick(sender);
  end;
  if key = vk_F1 then
  begin
    btnEditClick(sender);
  end;
  if key = vk_f7 then
  begin

  end;
  if key = vk_Delete then
  begin
    btnDeleteClick(sender);
  end;
  if key = vk_escape then
  begin
    btnKeluarClick(sender);
  end;
end;

procedure Tinbrgform.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
  ribuan(DBText20);
  ribuan(DBText17);
  ribuan(DBText18);
  ribuan(DBText19);
end;

procedure Tinbrgform.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    btnTambahClick(sender);
  end;
  if key = vk_F1 then
  begin
    btnEditClick(sender);
  end;
  if key = vk_f7 then
  begin

  end;
  if key = vk_Delete then
  begin

  end;
  if key = vk_escape then
  begin
    btnKeluarClick(sender);
  end;
end;

procedure Tinbrgform.FormCreate(Sender: TObject);
begin
  inherited;
//  MastData := TMastData.Create(Application);
  try
   MastData.MBarang.Close;
   MastData.MBarang.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

procedure Tinbrgform.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex = 1 then
  begin
    ribuan(DBText20);
    ribuan(DBText17);
    ribuan(DBText18);
    ribuan(DBText19);
  end;
end;

end.
