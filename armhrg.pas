unit armhrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, mylib, DModul;

type
  TarmhrgForm = class(TintemplateForm)
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
  armhrgForm: TarmhrgForm;

implementation
uses SearchTemplate, arfmhrg;
{$R *.dfm}

procedure TarmhrgForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MARHrg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmhrg');
      SQL.Add(' where hrg like '''+EPencarian.Text+'%'' Or ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MARhrg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmhrg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TarmhrgForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARHrg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmhrg');
      SQL.Add(' Where hrg = '''+SearchTempleteForm.EPencarian.Text+''' OR ket = '''+ SearchTempleteForm.EPencarian.Text +'''');
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
      konfPeringatan('Maaf Kode atau Nama Harga '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARSales do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svarmhrg');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TarmhrgForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARHrg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmhrg');
      SQL.Add(' Where hrg = '''+SearchTempleteForm.EPencarian.Text+''' OR ket = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MARHrg.IsEmpty then
    begin
      MastData.MARHrg.Edit;
      arfmhrgform := Tarfmhrgform.create(nil);
      arfmhrgform.formstyle := fsnormal;
      arfmhrgform.Show;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Harga '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARHrg do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svarmhrg');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TarmhrgForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MARhrg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmhrg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TarmhrgForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MARHrg.Active;
     MastData.MARHrg.Append;
     arfmhrgform := Tarfmhrgform.create(nil);
     arfmhrgform.formstyle := fsnormal;
     arfmhrgform.Show;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TarmhrgForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MARHrg.Close;
   MastData.MARHrg.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
