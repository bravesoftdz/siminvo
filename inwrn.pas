unit inwrn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, Mylib, SearchTemplate;

type
  TinwrnForm = class(TintemplateForm)
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inwrnForm: TinwrnForm;

implementation

{$R *.dfm}

procedure TinwrnForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MWarna do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmwrn');
      SQL.Add(' where Wrn like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MWarna do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmwrn');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinwrnForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MWarna do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmwrn');
      SQL.Add(' Where wrn = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MWarna.IsEmpty then
    begin
      MastData.MWarna.Delete;
      with MastData.MWarna do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmwrn');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Warna '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MGolongan do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmwrn');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinwrnForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MWarna do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmwrn');
      SQL.Add(' Where wrn = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MWarna.IsEmpty then
    begin
      MastData.MWarna.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Warna '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MWarna do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmwrn');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinwrnForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MWarna do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmwrn');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinwrnForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MWarna.Active;
     MastData.MWarna.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TinwrnForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    Try
       MastData.MWarna.Active;
       MastData.MWarna.Append;
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

procedure TinwrnForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MWarna.Close;
   MastData.MWarna.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
