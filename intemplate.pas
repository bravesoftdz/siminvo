unit intemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids;

type
  TintemplateForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    btnTambah: TButton;
    btnEdit: TButton;
    btnCetak: TButton;
    btnDelete: TButton;
    btnKeluar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    EPencarian: TEdit;
    btnCari: TButton;
    btnRefresh: TButton;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  intemplateForm: TintemplateForm;

implementation

{$R *.dfm}

procedure TintemplateForm.btnKeluarClick(Sender: TObject);
begin
  if ActiveMDIChild <> nil then
  ActiveMDIChild.Close else
  self.Close;
end;

procedure TintemplateForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F1 then
  begin
    btnEdit.Click;
  end;
  if key = vk_F3 then
  begin
    btnTambah.Click;
  end;
  if key = vk_f7 then
  begin
     btnCetak.Click;
  end;
  if key = vk_delete then
  begin
    btnDelete.Click;
  end;
end;

procedure TintemplateForm.FormActivate(Sender: TObject);
begin
  DBGrid1.SetFocus;
end;

procedure TintemplateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TintemplateForm.FormCreate(Sender: TObject);
begin
  EPencarian.Clear;
end;

procedure TintemplateForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    btnKeluarClick(sender);
  end;
end;

procedure TintemplateForm.FormShow(Sender: TObject);
begin
  DBGrid1.SetFocus;
end;

end.
