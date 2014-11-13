unit injns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, mylib
  , searchtemplate;

type
  TinjnsForm = class(TintemplateForm)
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  injnsForm: TinjnsForm;

implementation

{$R *.dfm}

procedure TinjnsForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MJenis do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      SQL.Add(' where Jns like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MJenis do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinjnsForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MJenis do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      SQL.Add(' Where Jns = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MJenis.IsEmpty then
    begin
      MastData.MJenis.Delete;
      with MastData.MJenis do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmJns');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode jenis '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MJenis do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmJns');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinjnsForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MJenis do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      SQL.Add(' Where Jns = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MJenis.IsEmpty then
    begin
      MastData.MJenis.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode jenis '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MJenis do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmJns');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinjnsForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MJenis do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinjnsForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MJenis.Active;
     MastData.MJenis.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TinjnsForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    Try
       MastData.MJenis.Active;
       MastData.MJenis.Append;
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

procedure TinjnsForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MJenis.Close;
   MastData.MJenis.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
