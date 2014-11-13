unit insize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, mylib, searchTemplate;

type
  TinsizeForm = class(TintemplateForm)
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
  insizeForm: TinsizeForm;

implementation

{$R *.dfm}

procedure TinsizeForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MSize do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmsize');
      SQL.Add(' where Size like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MGolongan do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmsize');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinsizeForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MSize do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmsize');
      SQL.Add(' Where size = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MSize.IsEmpty then
    begin
      MastData.MSize.Delete;
      with MastData.MSize do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmgol');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode golongan '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MSize do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmgol');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinsizeForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MSize do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmSize');
      SQL.Add(' Where size = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MSize.IsEmpty then
    begin
      MastData.MSize.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode size '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MSize do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmsize');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinsizeForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MSize do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmsize');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinsizeForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MSize.Active;
     MastData.MSize.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TinsizeForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    Try
       MastData.MSize.Active;
       MastData.MSize.Append;
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

procedure TinsizeForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MSize.Close;
   MastData.MSize.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
