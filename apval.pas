unit apval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, mylib, Dmodul;

type
  Tapvalform = class(TintemplateForm)
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
  apvalform: Tapvalform;

implementation
uses searchtemplate;
{$R *.dfm}

procedure Tapvalform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MAPVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmval');
      SQL.Add(' where Val like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MApval do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmval');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tapvalform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MAPVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmval');
      SQL.Add(' Where val = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MAPVal.IsEmpty then
    begin
      MastData.MAPVal.Delete;
      with MastData.MAPVal do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svapmval');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Valuta '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MAPVal do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svapmval');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tapvalform.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MAPVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmval');
      SQL.Add(' Where val = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MAPVal.IsEmpty then
    begin
      MastData.MAPVal.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Valuta '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MAPVal do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svapmVal');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tapvalform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MAPVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmval');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tapvalform.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MAPVal.Active;
     MastData.MAPVal.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tapvalform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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
  if key = vk_Delete then
  begin
    btnDeleteClick(sender);
  end;
end;

procedure Tapvalform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MAPVal.Close;
   MastData.MAPVal.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
