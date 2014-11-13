unit infTemplate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TinftemplateForm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    btnCancel: TButton;
    btnsimpan: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inftemplateForm: TinftemplateForm;

implementation

{$R *.dfm}

procedure TinftemplateForm.btnCancelClick(Sender: TObject);
begin
  modalResult := mrNone;
  Close;
end;

procedure TinftemplateForm.btnsimpanClick(Sender: TObject);
begin
  modalResult := mrOk;
  hide;
end;

procedure TinftemplateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
