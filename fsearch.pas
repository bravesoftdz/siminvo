unit fsearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DB, ADODB, DModul, StrUtils, mylib;

type
  TfsearchForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    Label1: TLabel;
    EPencarian: TEdit;
    btnCari: TButton;
    btnRefresh: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsearchForm: TfsearchForm;

implementation

{$R *.dfm}

procedure TfsearchForm.btnCancelClick(Sender: TObject);
begin
  modalResult := MrNO;
  Self.Close;
end;

procedure TfsearchForm.btnCariClick(Sender: TObject);
begin
  case StringToCaseSelect(MastData.statSearch,['BRG']) of
  0: Begin
       With MastData.QCari do
       begin
         Close;
         SQL.Add(' Where Brg='''+EPencarian.Text+''' and Nama1='''+EPencarian.Text+'''');
         Open;
       end;
       DBGrid1.SetFocus;
     End;
  end;
end;

procedure TfsearchForm.btnOKClick(Sender: TObject);
begin
  modalResult := MrOK;
  Self.Hide;
end;

procedure TfsearchForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    modalresult := mrOK;
    self.Hide;
  end;
  if key = vk_escape then
  begin
    modalresult := mrOK;
    self.Hide;
  end;
end;

end.
