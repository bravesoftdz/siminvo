unit inmotif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  DModul, Mylib, SearchTemplate ;

type
  TinmotifForm = class(TintemplateForm)
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
  inmotifForm: TinmotifForm;

implementation

{$R *.dfm}

procedure TinmotifForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MMotif do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmMotif');
      SQL.Add(' where Mtf like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MMotif do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmMotif');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinmotifForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MMotif do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmMotif');
      SQL.Add(' Where mtf = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MMotif.IsEmpty then
    begin
      MastData.MMotif.Delete;
      with MastData.MMotif do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmMotif');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Motif '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MMotif do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmMotif');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinmotifForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MMotif do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmMotif');
      SQL.Add(' Where mtf = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MMotif.IsEmpty then
    begin
      MastData.MMotif.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Motif '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MMotif do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmMotif');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinmotifForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MMotif do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmMotif');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinmotifForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MMotif.Active;
     MastData.MMotif.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TinmotifForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TinmotifForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MMotif.Close;
   MastData.MMotif.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
