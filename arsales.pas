unit arsales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, mylib, DModul;

type
  Tarsalesform = class(TintemplateForm)
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
  arsalesform: Tarsalesform;

implementation
uses arfsales, searchtemplate;
{$R *.dfm}

procedure Tarsalesform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MARSales do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmsales');
      SQL.Add(' where Sup like '''+EPencarian.Text+'%'' Or Nama like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MARSales do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmsales');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tarsalesform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARSales do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmsales');
      SQL.Add(' Where Sales = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MARSales.IsEmpty then
    begin
      try
        MastData.MARSales.Delete;
      finally
        btnRefreshClick(sender);
//        DBGrid1.SetFocus;
      end;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Sales '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARSales do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svarmsales');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tarsalesform.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARSales do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmsales');
      SQL.Add(' Where Sales = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MARSales.IsEmpty then
    begin
      MastData.MARSales.Edit;
      MastData.StatBarang := 1;
      arfsalesform := Tarfsalesform.create(nil);
      arfsalesform.formstyle := fsnormal;
      arfsalesform.Show;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Sales '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARSales do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svarmsales');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure Tarsalesform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MARSales do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmsales');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tarsalesform.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MARSales.Active;
     MastData.MARSales.Append;
     MastData.statSales := 0;
     arfsalesform := Tarfsalesform.create(nil);
     arfsalesform.formstyle := fsnormal;
     arfsalesform.Show;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure Tarsalesform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MARSales.Close;
   MastData.MARSales.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
