unit inmrk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, mylib, searchtemplate;

type
  TinmrkForm = class(TintemplateForm)
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inmrkForm: TinmrkForm;

implementation

{$R *.dfm}

procedure TinmrkForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MMerek do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmmrk');
      SQL.Add(' where mrk like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MMerek do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmmrk');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinmrkForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MMerek do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmmrk');
      SQL.Add(' Where mrk = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MMerek.IsEmpty then
    begin
      MastData.MMerek.Delete;
      with MastData.MMerek do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmmrk');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode merek '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MMerek do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmmrk');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinmrkForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MMerek do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmmrk');
      SQL.Add(' Where mrk = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MMerek.IsEmpty then
    begin
      MastData.MMerek.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode merek '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MMerek do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svinmmrk');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TinmrkForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MMerek do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmmrk');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TinmrkForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MMerek.Active;
     MastData.MMerek.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TinmrkForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MMerek.Close;
   MastData.MMerek.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
