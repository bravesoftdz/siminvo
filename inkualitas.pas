unit inkualitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, mylib, DModul,
  Searchtemplate;

type
  TinkualitasForm = class(TintemplateForm)
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inkualitasForm: TinkualitasForm;

implementation

{$R *.dfm}

procedure TinkualitasForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MKualitas do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmKualitas');
      SQL.Add(' where Kuali like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MKualitas do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmKualitas');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinkualitasForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MKualitas do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmKualitas');
      SQL.Add(' Where Kuali = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MKualitas.IsEmpty then
    begin
      MastData.MKualitas.Delete;
      with MastData.MKualitas do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmKualitas');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Kualitas '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MKualitas do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmKualitas');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinkualitasForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MKualitas do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmKualitas');
      SQL.Add(' Where Kuali = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MKualitas.IsEmpty then
    begin
      MastData.MKualitas.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Kualitas '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MKualitas do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmKualitas');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinkualitasForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MKualitas do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmkualitas');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinkualitasForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MKualitas.Active;
     MastData.MKualitas.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TinkualitasForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F3 then
  begin
    btnTambahClick(sender);
  end;
  if Key = vk_F1 then
  begin
    btnEditClick(sender);
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

procedure TinkualitasForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MKualitas.Close;
   MastData.MKualitas.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
