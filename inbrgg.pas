unit inbrgg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DModul, mylib,
  DBCtrls, jpeg;

type
  Tinbrggform = class(TintemplateForm)
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inbrggform: Tinbrggform;

implementation
uses infbrgg;
{$R *.dfm}

procedure Tinbrggform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with MastData.MBarangg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From vsvinmbrgg');
      SQL.Add(' where Brg like '''+EPencarian.Text+'%'' OR Nama1 like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with MastData.MBarangG do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From vsvinmbrgg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tinbrggform.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if konfTanya('Apakah anda akan menghapus Barang ='+MastData.MBARANGGBrg.Value+'')=True then
  begin
    DeleteFile(MastData.MBARANGGGbr.Value);
    MastData.MBARANGG.Delete;
    MastData.MBarangg.Close;
    MastData.MBarangg.Open;
  end else
  begin
    DBGrid1.SetFocus;
  end;
end;

procedure Tinbrggform.btnEditClick(Sender: TObject);
begin
  inherited;
  try
    mastdata.MBarangg.Edit;
    infbrggForm := TinfbrggForm.create(nil);
    infbrggform.showmodal;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
  end;
end;

procedure Tinbrggform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with MastData.MBarangg do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From vsvinmbrgg');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tinbrggform.btnTambahClick(Sender: TObject);
begin
  inherited;
  try
  if mastdata.Mbarangg.active then
     mastdata.MBarangg.Append;
  infbrggForm := TinfbrggForm.create(nil);
  infbrggform.showmodal;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
  end;
end;

procedure Tinbrggform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
  begin
    btnTambahClick(sender);
  end;
  if key = vk_f1 then
  begin
    btnEditClick(sender);
  end;
  if key = vk_delete then
  begin
    btnDeleteClick(sender);
  end;
  if key = vk_escape then
  begin
    btnKeluarClick(sender);
  end;
end;

procedure Tinbrggform.FormCreate(Sender: TObject);
begin
  inherited;
  try
   MastData.MBARANGG.Close;
   MastData.MBARANGG.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
