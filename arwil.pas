unit arwil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, mylib, DModul;

type
  Tarwilform = class(TintemplateForm)
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arwilform: Tarwilform;

implementation
uses searchtemplate;

{$R *.dfm}

procedure Tarwilform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MWilayah do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svMWilayah');
      SQL.Add(' where wil like '''+EPencarian.Text+'%'' Or Nama like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MWilayah do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svMWilayah');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tarwilform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MWilayah do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svMWilayah');
      SQL.Add(' Where val = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MWilayah.IsEmpty then
    begin
      MastData.MWilayah.Delete;
      with MastData.MWilayah do
      begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svMWilayah');
        Open;
      end;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Wilayah '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MWilayah do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svMWilayah');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tarwilform.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MWilayah do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svmwilayah');
      SQL.Add(' Where val = '''+SearchTempleteForm.EPencarian.Text+'''');
      Open;
    end;
    if not MastData.MWilayah.IsEmpty then
    begin
      MastData.MWilayah.Edit;
      DBGrid1.SetFocus;
    end else
    begin
      konfPeringatan('Maaf kode Wilayah '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MWilayah do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svmwilayah');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tarwilform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MWilayah do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svMWilayah');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tarwilform.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MWilayah.Active;
     MastData.MWilayah.Append;
     DBGrid1.SetFocus;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tarwilform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MWilayah.Close;
   MastData.MWilayah.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
