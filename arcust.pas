unit arcust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, Mylib,
  DBCtrls;

type
  TarcustForm = class(TintemplateForm)
    Panel3: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arcustForm: TarcustForm;

implementation
uses arfcust, fsearch, searchtemplate;
{$R *.dfm}

procedure TarcustForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MARCust do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmcust');
      SQL.Add(' where cust like '''+EPencarian.Text+'%'' Or Nama like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MARCust do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmcust');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TarcustForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARCust do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmcust');
      SQL.Add(' Where Cust = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MArcust.IsEmpty then
    begin
      try
        MastData.MArcust.Delete;
      finally
        btnRefreshClick(sender);
      end;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Customer '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARCust do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svarmCust');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TarcustForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MARCust do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmcust');
      SQL.Add(' Where Cust= '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MARCust.IsEmpty then
    begin
      MastData.MARCust.Edit;
      MastData.statCust := 1;
      arfcustform := Tarfcustform.create(nil);
      arfcustform.formstyle := fsnormal;
      arfcustform.Show;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Customer '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MARCust do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svarmCust');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TarcustForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MARCust do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svarmcust');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TarcustForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MARCust.Active;
     MastData.MARCust.Append;
     MastData.statCust := 0;
     arfcustform := Tarfcustform.create(nil);
     arfcustform.formstyle := fsnormal;
     arfcustform.Show;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TarcustForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MARVal.Close;
   MastData.MARVal.Open;
   MastData.MARCust.Close;
   MastData.MARCust.Open;
   MastData.MARPerson.Close;
   MastData.MARPerson.Open;
   MastData.MWilayah.Close;
   MastData.MWilayah.Open;
   MastData.MCabang.Close;
   MastData.MCabang.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
