unit ingol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, mylib, DModul, searchtemplate;

type
  TingolForm = class(TintemplateForm)
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
  ingolForm: TingolForm;

implementation

{$R *.dfm}

procedure TingolForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MGolongan do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgol');
      SQL.Add(' where Gol like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
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
      SQL.Add(' Select * From svinmgol');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TingolForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MGolongan do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgol');
      SQL.Add(' Where gol = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MGolongan.IsEmpty then
    begin
      MastData.MGolongan.Delete;
      with MastData.MGolongan do
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
       with MastData.MGolongan do
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

procedure TingolForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MGolongan do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgol');
      SQL.Add(' Where gol = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MGolongan.IsEmpty then
    begin
      MastData.MGolongan.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode golongan '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MGolongan do
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

procedure TingolForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MGOlongan do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmgol');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TingolForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MGolongan.Active;
     MastData.MGolongan.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TingolForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    Try
       MastData.MGolongan.Active;
       MastData.MGolongan.Append;
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

procedure TingolForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.Mgolongan.Close;
   MastData.Mgolongan.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
