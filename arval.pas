unit arval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, mylib;

type
  Tarvalform = class(TintemplateForm)
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arvalform: Tarvalform;

implementation

uses searchtemplate;

{$R *.dfm}

procedure Tarvalform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MARVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmval');
      SQL.Add(' where Val like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MARVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmval');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tarvalform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svaRmval');
      SQL.Add(' Where val = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MARVal.IsEmpty then
    begin
      MastData.MARVal.Delete;
      with MastData.MARVal do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svaRmval');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Valuta '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARVal do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svaRmval');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tarvalform.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svaRmval');
      SQL.Add(' Where val = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MARVal.IsEmpty then
    begin
      MastData.MARVal.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Valuta '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARVal do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svaRmVal');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tarvalform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MARVal do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmval');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tarvalform.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MARVal.Active;
     MastData.MARVal.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tarvalform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MARVal.Close;
   MastData.MARVal.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
