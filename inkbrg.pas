unit inkbrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, Mylib;

type
  Tinkbrgform = class(TintemplateForm)
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inkbrgform: Tinkbrgform;

implementation
uses infkbrg,searchtemplate;
{$R *.dfm}

procedure Tinkbrgform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MKonfBarangHeader do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      SQL.Add(' where Brg like '''+EPencarian.Text+'%'' Or Nama1 like '''+EPencarian.Text+'%'' and type = 02');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MKonfBarangHeader do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      SQL.Add('  where type =''02''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tinkbrgform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  with MastData.MKonfBarangHeader do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmbrg');
      SQL.Add('  where type =''02''');
      Open;
    end;
end;

procedure Tinkbrgform.Button1Click(Sender: TObject);
begin
  inherited;
  Try
     MastData.MKonfBarangDetail.Active;
     MastData.MKonfBarangDetail.Append;
     MastData.statKonfBarang := 0;
     infkbrgform := Tinfkbrgform.create(nil);
     infkbrgform.formstyle := fsnormal;
     infkbrgform.Show;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tinkbrgform.Button2Click(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MKonfBarangDetail do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmkbrg');
      SQL.Add(' Where Brg=:Brg_ and Brgd = '''+SearchTempleteForm.EPencarian.Text+'''');
      Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
      Open;
    end;
    if not MastData.MBarang.IsEmpty then
    begin
      MastData.MKonfBarangDetail.Edit;
      infkbrgform := Tinfkbrgform.create(nil);
      infkbrgform.formstyle := fsnormal;
      infkbrgform.Show;
    end else
    begin
      konfPeringatan('Maaf kode Barang '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MKonfBarangDetail do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmkbrg');
        SQL.Add(' Where Brg=:Brg_');
        Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tinkbrgform.Button3Click(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MKonfBarangDetail do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmkbrg');
      SQL.Add(' Where Brg=:Brg_ and Brgd = '''+SearchTempleteForm.EPencarian.Text+'''');
      Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
      Open;
    end;
    if not MastData.MBarang.IsEmpty then
    begin
      MastData.MKonfBarangDetail.Delete;
      with MastData.MKonfBarangDetail do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmkbrg');
        SQL.Add(' Where Brg=:Brg_');
        Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
        Open;
       end;
    end else
    begin
      konfPeringatan('Maaf kode Barang '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MKonfBarangDetail do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmkbrg');
        SQL.Add(' Where Brg=:Brg_');
        Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tinkbrgform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
  begin
    Button1Click(sender);
  end;
  if key = vk_f1 then
  begin
    Button2Click(sender);
  end;
  if key = vk_delete then
  begin
    Button3Click(sender);
  end;
end;

procedure Tinkbrgform.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
  begin
    Button1Click(sender);
  end;
  if key = vk_f1 then
  begin
    Button2Click(sender);
  end;
  if key = vk_delete then
  begin
    Button1Click(sender);
  end;
end;

procedure Tinkbrgform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MKonfBarangHeader.Close;
   MastData.MKonfBarangHeader.Open;
//   MastData.MKonfBarangDetail.close;
//   MastData.MKonfBarangDetail.Parameters.ParamByName('brg_').Value := MastData.MKonfBarangHeaderBRG.Value;
//   MastData.MKonfBarangDetail.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
