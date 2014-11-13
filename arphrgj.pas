unit arphrgj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, infTemplate, StdCtrls, ComCtrls, ExtCtrls;

type
  Tarphrgjform = class(TinftemplateForm)
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbRubah: TComboBox;
    cbProses: TComboBox;
    cbNaik: TComboBox;
    EdtNilai: TEdit;
    EdtBulat: TEdit;
    EdtHarga: TEdit;
    EdtAwal: TEdit;
    EdtAkhir: TEdit;
    btnAwal: TButton;
    btnAkhir: TButton;
    lblAwal: TLabel;
    lblAkhir: TLabel;
    lblHarga: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arphrgjform: Tarphrgjform;

implementation

{$R *.dfm}

end.
