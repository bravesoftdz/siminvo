unit arkhrgj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls;

type
  Tarkhrgjform = class(TintemplateForm)
    lblHarga: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    EdtNama: TEdit;
    Label3: TLabel;
    EdtHrgBeli: TEdit;
    Label4: TLabel;
    EdtHpp: TEdit;
    Label5: TLabel;
    EdtStn1: TEdit;
    Edtisi1: TEdit;
    Label6: TLabel;
    EdtStn2: TEdit;
    EdtIsi2: TEdit;
    EdtStn3: TEdit;
    Label7: TLabel;
    pnlLoad: TPanel;
    Label8: TLabel;
    cbRubah: TComboBox;
    cekBarang: TCheckBox;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    lblAwal: TLabel;
    lblAkhir: TLabel;
    EdtAwal: TEdit;
    EdtAkhir: TEdit;
    btnAwal: TButton;
    btnAkhir: TButton;
    btnsimpan: TButton;
    btnCancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Awal;
    procedure tampilmassal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arkhrgjform: Tarkhrgjform;

implementation
uses arphrgj;
{$R *.dfm}

procedure Tarkhrgjform.tampilmassal;
begin
  arphrgjform := Tarphrgjform.Create(nil);
  arphrgjform.FormStyle := fsMDIChild;
  arphrgjform.Position  := poDefaultPosOnly;
  arphrgjform.Show;
end;

procedure Tarkhrgjform.Awal;
begin
  EdtHrgBeli.Text := '0';
  EdtHpp.Text     := '0';
  Edtisi1.Text    := '1';
  EdtIsi2.Text    := '1';
  EdtNama.Clear;
  EdtStn1.Clear;
  EdtStn2.Clear;
  EdtStn3.Clear;
  EdtHrgBeli.Enabled := False;
  EdtHpp.Enabled := False;
  Edtisi1.Enabled := False;
  EdtIsi2.Enabled := False;
  EdtNama.Enabled := False;
  EdtStn1.Enabled := False;
  EdtStn2.Enabled := False;
  EdtStn3.Enabled := False;
  EdtHrgBeli.Color:= $00D1D1D1;
  EdtHpp.Color:= $00D1D1D1;
  Edtisi1.Color:= $00D1D1D1;
  EdtIsi2.Color:= $00D1D1D1;
  EdtNama.Color:= $00D1D1D1;
  EdtStn1.Color:= $00D1D1D1;
  EdtStn2.Color:= $00D1D1D1;
  EdtStn3.Color:= $00D1D1D1;
end;

procedure Tarkhrgjform.btnTambahClick(Sender: TObject);
begin
  inherited;
  tampilmassal;
end;

procedure Tarkhrgjform.FormCreate(Sender: TObject);
begin
  inherited;
  pnlload.Hide;
  Awal;
end;

procedure Tarkhrgjform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #114 then
  begin
    tampilmassal;
  end;
end;

end.
