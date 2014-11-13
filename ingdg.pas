unit ingdg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, mylib;

type
  Tingdgform = class(TintemplateForm)
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ingdgform: Tingdgform;

implementation
uses searchtemplate;
{$R *.dfm}

procedure Tingdgform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MGudang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgdg');
      SQL.Add(' where gdg like '''+EPencarian.Text+'%'' Or Nama like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MGudang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgdg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tingdgform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MGudang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgdg');
      SQL.Add(' Where gdg = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MGudang.IsEmpty then
    begin
      MastData.MGudang.Delete;
      with MastData.MGudang do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmgdg');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode gudang '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MJenis do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmgdg');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tingdgform.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MGudang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmGdg');
      SQL.Add(' Where Gdg = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MGudang.IsEmpty then
    begin
      MastData.MGudang.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Gudang '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MGudang do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmgdg');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tingdgform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MGudang do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgdg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tingdgform.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MGudang.Active;
     MastData.MGudang.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tingdgform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    Try
       MastData.MGudang.Active;
       MastData.MGudang.Append;
       DBGrid1.SetFocus;
    Except
       konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
    End;
  end;
  if key = vk_F1 then
  begin
    btnEditClick(sender);
  end;
  if key = vk_Delete then
  begin
    btnDeleteClick(sender);
  end;
end;

procedure Tingdgform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MGudang.Close;
   MastData.MGudang.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
