unit fsearchjenis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fsearch, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ADODB, DModul, mylib;

type
  Tfsearchjenisform = class(TfsearchForm)
    ADOQuery1JNS: TStringField;
    ADOQuery1KET: TStringField;
    ADOQuery1TGLU: TDateTimeField;
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsearchjenisform: Tfsearchjenisform;

implementation
uses infbrg;
{$R *.dfm}

procedure Tfsearchjenisform.btnCariClick(Sender: TObject);
begin
  inherited;
  if EPencarian.Text <> '' then
  begin
    with ADOQuery1 do
    begin
      close;
      SQL.Add(' where Jns like '''+EPencarian.Text+'%'' Or Ket like '''+EPencarian.Text+'%''');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
  if EPencarian.Text = '' then
  begin
    with ADOQuery1 do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tfsearchjenisform.btnRefreshClick(Sender: TObject);
begin
  inherited;
  if (EPencarian.Text <> '') or (EPencarian.Text = '') then
  begin
    with ADOQuery1 do
    begin
      close;
      SQL.Clear;
      SQL.Add(' Select * From svinmJns');
      Open;
    end;
    DBGrid1.SetFocus;
  end;
end;

procedure Tfsearchjenisform.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with MastData do
  begin
    if MBarang.State in [DSEdit, dsInsert] then
    begin
      MBarangJenis.Value := ADOQuery1JNS.Value;
      with infbrgform do
      begin
        infbrgform := infbrgform.Create(self);
        infbrgForm.DBENMJenis.Text := ADOQuery1KET.Value;
      end;
    end;
  end;
end;

procedure Tfsearchjenisform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    with MastData do
    begin
      if MBarang.State in [DSEdit, dsInsert] then
      begin
        MBarangJenis.Value := ADOQuery1JNS.Value;
        with infbrgform do
        begin
          infbrgform := infbrgform.Create(self);
          infbrgForm.DBENMJenis.Text := ADOQuery1KET.Value;
        end;
      end;
    end;
  end;
  if key = vk_Escape then
  begin
    btnCancelClick(Sender);
  end;
end;

procedure Tfsearchjenisform.FormCreate(Sender: TObject);
begin
  inherited;
  MastData := TMastData.Create(Application);
  try
   AdoQuery1.Close;
   AdoQuery1.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    self.close;
  end;
end;

end.
