unit apsup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,mylib,DModul,
  DBCtrls;

type
  TapsupForm = class(TintemplateForm)
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  apsupForm: TapsupForm;

implementation
uses apfsup, searchtemplate;
{$R *.dfm}

procedure TapsupForm.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MAPSup do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmsup');
      SQL.Add(' where Sup like '''+EPencarian.Text+'%'' Or Nama like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MAPSup do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmsup');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TapsupForm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MAPSup do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmsup');
      SQL.Add(' Where Sup = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MAPSup.IsEmpty then
    begin
      try
        MastData.MAPSup.Delete;
      finally
        btnRefreshClick(sender);
      end;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Supplier '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MAPSup do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svapmsup');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TapsupForm.btnEditClick(Sender: TObject);
begin
  inherited;
  if not Assigned(SearchTempleteForm) then
    SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
  if SearchTempleteForm.ShowModal=mrOK then
  begin
    with MastData.MAPSup do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmsup');
      SQL.Add(' Where Sup = '''+SearchTempleteForm.EPencarian.Text+''' OR NAMA = '''+ SearchTempleteForm.EPencarian.Text +'''');
      Open;
    end;
    if not MastData.MAPSup.IsEmpty then
    begin
      MastData.MAPSup.Edit;
      MastData.StatBarang := 1;
      apfsupform := Tapfsupform.create(nil);
      apfsupform.formstyle := fsnormal;
      apfsupform.Show;
    end else
    begin
      konfPeringatan('Maaf Kode atau Nama Supplier '+SearchTempleteForm.EPencarian.Text+' yang anda masukkan tidak ada');
       with MastData.MAPSup do
       begin
        close;
        SQL.Clear;
        SQL.Add(' Select * From svapmsup');
        Open;
       end;
       DBGrid1.SetFocus;
    end;
  end;
end;

procedure TapsupForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MAPSup do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svapmsup');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure TapsupForm.btnTambahClick(Sender: TObject);
begin
  inherited;
  Try
     MastData.MAPSup.Active;
     MastData.MAPSup.Append;
     MastData.statSupp := 0;
     apfsupform := Tapfsupform.create(nil);
     apfsupform.formstyle := fsnormal;
     apfsupform.Show;
  Except
     konfError('Maaf database tidak terkoneksi dengan baik'#13#10'Atau silahkan hubungi developer');
  End;
end;

procedure TapsupForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MAPVal.Close;
   MastData.MAPVal.Open;
   MastData.MAPSup.Close;
   MastData.MAPSup.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
