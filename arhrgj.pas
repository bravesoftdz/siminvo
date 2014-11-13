unit arhrgj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, intemplate, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DB, MemDS,
  VirtualTable, mylib, DModul, ADODb;

type
  Tarhrgjform = class(TintemplateForm)
    vtHJual: TVirtualTable;
    DSVTHJual: TDataSource;
    Panel3: TPanel;
    Label2: TLabel;
    EDTBarang: TEdit;
    Button1: TButton;
    lblNamaBarang: TLabel;
    cbb1: TComboBox;
    vtHJualvtHJualHrg: TStringField;
    vtHJualvtHJuaHpp: TCurrencyField;
    vtHJualvtHJualProfit: TFloatField;
    vtHJualvtHJualNProfit: TCurrencyField;
    vtHJualvtHJualKecil: TCurrencyField;
    vtHJualvtHJualMenengah: TCurrencyField;
    vtHJualvtHJualTinggi: TCurrencyField;
    pnlHarga: TPanel;
    procedure EDTBarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure vtHJualvtHJualHrgValidate(Sender: TField);
    procedure vtHJualAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure vtHJualNewRecord(DataSet: TDataSet);
    procedure vtHJualvtHJualProfitValidate(Sender: TField);
    procedure btnCetakClick(Sender: TObject);
    procedure EDTBarangExit(Sender: TObject);
    procedure DBGrid1MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btnTambahClick(Sender: TObject);
  private
    procedure TampilBarang;
    procedure TampilHarga;
    procedure TampilCombo;
    procedure CariHpp;
    procedure hitungNProfit;
    procedure hitungH3;
    procedure hitungH2;
    procedure hitungH1;
    procedure TampilKode;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  arhrgjform: Tarhrgjform;
  _SQL, Hrg_, cab_, stattran_ :String;
  Stat_ : SmallInt; // untuk penanda status form edit atau insert
  Isi2_, Isi_ : Double; // Untuk mengambil nilai Isi2 dan isi1 dari table barang
implementation
uses fSearch, arfhrgj, SearchTemplate, arkhrgj;
{$R *.dfm}

procedure TArHrgJForm.TampilCombo;
begin
  // Tgl. 27-Sep-2014
  // Tujuan untuk menampilkan Jenis Daftar harga didalam combobox
  // Created by Afes Oktavianus
  Cbb1.Items.Clear;
  EksekusiSQL(MastData.QCari,'Select Ket from svarmhrg', true );
  if not MastData.QCari.IsEmpty then
  begin
    while not MastData.QCari.Eof do
    begin
      Cbb1.Items.Add(mastData.QCari.Fields[0].value);
      mastData.QCari.Next;
    end;
  end;
end;

procedure TARHrgJForm.CariHpp;
begin
  // Tgl. 27-Sep-2014
  // Tujuan untuk menampilkan Hpp barang berdasarkan Barang yang dicari
  // Created by Afes Oktavianus
  _SQL :=' Select hpp from svinmhrgbeli where brg = '''+EDTBarang.Text+'''';
  EksekusiSQL(MastData.QCari,_SQL,True);
  if not MastData.QCari.IsEmpty then
     vtHJualvtHJuaHpp.Value := MastData.QCari.Fields[0].Value else
     vtHJualvtHJuaHpp.Value := 0;
//  vtHJualvtHJuaHpp.ReadOnly := True;
end;

procedure TARHrgJform.hitungNProfit;
begin
  // Tgl. 28-Sep-2014
  // Tujuan untuk menghitung nilai profit berdasarkan Hpp
  // Created by Afes Oktavianus
  vtHJualvtHJualNProfit.Value := ((100+vtHJualvtHJualProfit.Value)/100) * vtHJualvtHJuaHpp.Value;
end;

procedure TARHrgJform.hitungH3;
begin
  // Tgl. 28-Sep-2014
  // Tujuan untuk menghitung nilai harga Jual terkecil
  // Created by Afes Oktavianus
  vtHJualvtHJualKecil.Value := vtHJualvtHJuaHpp.Value + vtHJualvtHJualNProfit.AsCurrency;
end;

procedure TARHrgJform.hitungH2;
var
  QCekIsiSTN2 : TAdoQuery;
begin
  // Tgl. 28-Sep-2014
  // Tujuan untuk menghitung nilai harga jual menengah
  // Created by Afes Oktavianus
  QCekIsiSTN2 := TAdoQuery.Create(nil);
  QCekIsiSTN2.Connection := MastData.invConnection;
  _SQL        :=' Select Isi2 from svinmbrg where Brg='''+EDTBarang.Text+'''';
  EksekusiSQL(QCekIsiSTN2,_SQL,True);
  if not QCekIsiSTN2.Fields[0].Value then
  Isi2_ := QCekIsiSTN2.fields[0].value;
  vtHJualvtHJualKecil.Value := (vtHJualvtHJuaHpp.Value + vtHJualvtHJualNProfit.Value) * Isi2_;
  QCekIsiStn2.free;
end;

procedure TARHrgJform.hitungH1;
var
  QCekIsiSTN1 : TAdoQuery;
begin
  // Tgl. 28-Sep-2014
  // Tujuan untuk menghitung nilai harga jual tertinggi
  // Created by Afes Oktavianus
  QCekIsiSTN1 := TAdoQuery.Create(nil);
  QCekIsiSTN1.Connection := MastData.invConnection;
  _SQL        :=' Select Isi2 from svinmbrg where Brg='''+EDTBarang.Text+'''';
  EksekusiSQL(QCekIsiSTN1,_SQL,True);
  if not QCekIsiSTN1.Fields[0].Value then
  isi_ := QCekIsiSTN1.fields[0].value;
  vtHJualvtHJualKecil.Value := (((vtHJualvtHJuaHpp.Value + vtHJualvtHJualNProfit.Value) * Isi2_) * Isi_);
  QCekIsiStn1.Free;
end;

procedure TARHrgJForm.TampilKode;
begin
  // Tgl. 15-Okt-2014
  // Tujuan untuk menampilkan form proses berdasarkan jenis harga
  // Created by Afes Oktavianus
  arkhrgjform := Tarkhrgjform.Create(nil);
  arkhrgjform.FormStyle := fsMDIChild;
  arkhrgjform.Position  := poDefaultPosOnly;
  arkhrgjform.Show;
end;

procedure Tarhrgjform.btnCetakClick(Sender: TObject);
var
  xlblHarga : string;
begin
  inherited;
  if btncetak.Caption = 'Alt+F3 = Tambah' then
  begin
    arfhrgjform := Tarfhrgjform.create(nil);
    arfhrgjform.formstyle := fsNormal;
    arfhrgjform.EDTKodeBrg.Text := EDTBarang.Text;
    arfhrgjform.lblNama.Caption := lblNamaBarang.Caption;
    arfhrgjform.Hide;
    if arfhrgjform.ShowModal = mrOk then
    begin
      Stat_ := 1;
      with vtHJual do
      begin
        Append;
        vtHJualvtHJualHrg.Value     := arfhrgjform.lblDesc.Caption;
        vtHJualvtHJuaHpp.Value      := strtofloat(arfhrgjform.EDTHpp.Text);
        vtHJualvtHJualProfit.Value  := strtofloat(arfhrgjform.edtPersen.Text);
        vtHJualvtHJualNProfit.Value := strtofloat(arfhrgjform.EDTNPersen.Text);
        vtHJualvtHJualKecil.Value   := strtofloat(arfhrgjform.EDTHrgKecil.Text);
        vtHJualvtHJualMenengah.Value:= strtofloat(arfhrgjform.EDTHrgMenengah.Text);
        vtHJualvtHJualTinggi.Value  := strtofloat(arfhrgjform.EdtHrgTinggi.Text);
        vtHJual.Post;
      end;
    end;
  end;
  if btncetak.Caption = 'Alt+F1 = Edit' then
  begin
    Stat_ := 1;
    xlblHarga :='';
    if not Assigned(SearchTempleteForm) then
      SearchTempleteForm := TSearchTempleteForm.create(Application);
    SearchTempleteForm.FormStyle := fsStayOnTop;
    SearchTempleteForm.hide;
    if SearchTempleteForm.ShowModal=mrOK then
    begin
      EksekusiSQL(mastData.QCari,'select Hrg from svarmhrg where ket = '''+SearchTempleteForm.EPencarian.Text+'''',true );
      SearchTempleteForm.EPencarian.Text := '';
      if not MastData.QCari.IsEmpty then
      begin
        xlblHarga := MastData.QCari.Fields[0].Value;
        EksekusiSQL(mastData.QCari,' Select Hrg, Hpp, Profit, ProfitNilai, H1, H2, H3 from svarmhjbrg Where hrg = '''+xlblHarga+'''', true);
        if not MastData.QCari.IsEmpty then
        begin
            // Tampilkan hasil pencarian kedalam form edit harga jual
            arfhrgjform := Tarfhrgjform.create(nil);
            arfhrgjform.formstyle := fsNormal;
            arfhrgjform.EDTKodeBrg.Text      := EDTBarang.Text;
            arfhrgjform.lblNama.Caption      := lblNamaBarang.Caption;
            arfhrgjform.EDTHpp.Text          := ambilkoma(floattostr(MastData.QCari.Fields[1].Value));
            arfhrgjform.edtPersen.Text       := ambilkoma(floattostr(MastData.QCari.Fields[2].Value));
            arfhrgjform.EDTNPersen.Text      := ambilkoma(floattostr(MastData.QCari.Fields[3].Value));
            arfhrgjform.EDTHrgKecil.Text     := ambilkoma(floattostr(MastData.QCari.Fields[6].Value));
            arfhrgjform.EDTHrgMenengah.Text  := ambilkoma(floattostr(MastData.QCari.Fields[5].Value));
            arfhrgjform.EdtHrgTinggi.Text    := ambilkoma(floattostr(MastData.QCari.Fields[4].Value));
            arfhrgjform.lblDesc.caption      := MastData.QCari.Fields[0].Value;
            // Tampilkan nama harga kedalam combo box
            EksekusiSQL(mastdata.QCari,'select Ket from svarmhrg where Hrg = '''+MastData.QCari.Fields[0].Value+'''',true);
            if not MastData.QCari.IsEmpty then
               arfhrgjform.cbHarga.Text         := MastData.QCari.Fields[0].Value else
               arfhrgjform.cbHarga.Text         := '';
            arfhrgjform.Hide;
            if arfhrgjform.ShowModal = mrOk then
            begin
              with vtHJual do
              begin
                Edit;
                vtHJualvtHJualHrg.Value     := arfhrgjform.lblDesc.Caption;
                vtHJualvtHJuaHpp.Value      := strtofloat(arfhrgjform.EDTHpp.Text);
                vtHJualvtHJualProfit.Value  := strtofloat(arfhrgjform.edtPersen.Text);
                vtHJualvtHJualNProfit.Value := strtofloat(arfhrgjform.EDTNPersen.Text);
                vtHJualvtHJualKecil.Value   := strtofloat(arfhrgjform.EDTHrgKecil.Text);
                vtHJualvtHJualMenengah.Value:= strtofloat(arfhrgjform.EDTHrgMenengah.Text);
                vtHJualvtHJualTinggi.Value  := strtofloat(arfhrgjform.EdtHrgTinggi.Text);
                vtHJual.Post;
              end;
            end;
        end;
      end;
    end;
  end;
end;

procedure Tarhrgjform.btnTambahClick(Sender: TObject);
begin
  inherited;
  TampilKode;
end;

procedure Tarhrgjform.Button1Click(Sender: TObject);
begin
  inherited;
  if EDTBarang.Text = '' then
  begin
    konfError('Silahkan pilih terlebih dahulu data barang yang akan disetting');
    TampilBarang;
  end;
end;

procedure Tarhrgjform.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  TampilCombo;
  DBGrid1.Columns[0].PickList:=Cbb1.Items;
end;

procedure Tarhrgjform.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sso : TShiftState;
  xlblHarga : String;
begin
  inherited;
  sso:= [];
  xlblHarga :='';
  if key = vk_F4 then
  begin
    vtHJual.Append;
    DBGrid1.SetFocus;
  end;
  if key = vk_Return then
  begin
    // jika melewati list indext maka konferror akan dijalankan.
    Try
      DBGrid1.SelectedField := vtHJual.Fields[DBGrid1.SelectedIndex+1];
    Except
      konfError('Untuk melanjutkan tekan tanda panah bawah pada keyboard');
      DBGrid1.SelectedIndex := 0;
      abort;
    end;
    Key := 0;
  end;
  if key = vk_f3 then
  begin
    // Combine dengan tombol Shift (Alt+F3) maka akan menjalankan perintah ini
    if (ssAlt in Shift) then
    begin
    Stat_ := 1;
    arfhrgjform := Tarfhrgjform.create(nil);
    arfhrgjform.formstyle := fsNormal;
    arfhrgjform.EDTKodeBrg.Text := EDTBarang.Text;
    arfhrgjform.lblNama.Caption := lblNamaBarang.Caption;
    arfhrgjform.Hide;
      if arfhrgjform.ShowModal = mrOk then
      begin
        with vtHJual do
        begin
          Append;
          vtHJualvtHJualHrg.Value     := arfhrgjform.lblDesc.Caption;
          vtHJualvtHJuaHpp.Value      := strtofloat(arfhrgjform.EDTHpp.Text);
          vtHJualvtHJualProfit.Value  := strtofloat(arfhrgjform.edtPersen.Text);
          vtHJualvtHJualNProfit.Value := strtofloat(arfhrgjform.EDTNPersen.Text);
          vtHJualvtHJualKecil.Value   := strtofloat(arfhrgjform.EDTHrgKecil.Text);
          vtHJualvtHJualMenengah.Value:= strtofloat(arfhrgjform.EDTHrgMenengah.Text);
          vtHJualvtHJualTinggi.Value  := strtofloat(arfhrgjform.EdtHrgTinggi.Text);
          vtHJual.Post;
        end;
      end;
      abort;
    end;
  end;
  if key = vk_F1 then
  begin
    // jika menggunakan combine tombol (Alt+F1) maka akan muncul form cari
    if (ssAlt in Shift) then
    begin
      Stat_ := 1;
      if not Assigned(SearchTempleteForm) then
        SearchTempleteForm := TSearchTempleteForm.create(Application);
      SearchTempleteForm.FormStyle := fsStayOnTop;
      SearchTempleteForm.hide;
      if SearchTempleteForm.ShowModal=mrOK then
      begin
        EksekusiSQL(mastData.QCari,'select Hrg from svarmhrg where ket = '''+SearchTempleteForm.EPencarian.Text+'''',true );
        if not MastData.QCari.IsEmpty then
        begin
          xlblHarga := MastData.QCari.Fields[0].Value;
          EksekusiSQL(mastData.QCari,' Select Hrg, Hpp, Profit, ProfitNilai, H1, H2, H3 from svarmhjbrg Where hrg = '''+xlblHarga+'''', true);
          if not MastData.QCari.IsEmpty then
          begin
              // Tampilkan hasil pencarian kedalam form edit harga jual
              arfhrgjform := Tarfhrgjform.create(nil);
              arfhrgjform.formstyle := fsNormal;
              arfhrgjform.EDTKodeBrg.Text      := EDTBarang.Text;
              arfhrgjform.lblNama.Caption      := lblNamaBarang.Caption;
              arfhrgjform.EDTHpp.Text          := ambilkoma(floattostr(MastData.QCari.Fields[1].Value));
              arfhrgjform.edtPersen.Text       := ambilkoma(floattostr(MastData.QCari.Fields[2].Value));
              arfhrgjform.EDTNPersen.Text      := ambilkoma(floattostr(MastData.QCari.Fields[3].Value));
              arfhrgjform.EDTHrgKecil.Text     := ambilkoma(floattostr(MastData.QCari.Fields[6].Value));
              arfhrgjform.EDTHrgMenengah.Text  := ambilkoma(floattostr(MastData.QCari.Fields[5].Value));
              arfhrgjform.EdtHrgTinggi.Text    := ambilkoma(floattostr(MastData.QCari.Fields[4].Value));
              arfhrgjform.lblDesc.caption      := MastData.QCari.Fields[0].Value;
              // Tampilkan nama harga kedalam combo box
              EksekusiSQL(mastdata.QCari,'select Ket from svarmhrg where Hrg = '''+MastData.QCari.Fields[0].Value+'''',true);
              if not MastData.QCari.IsEmpty then
                 arfhrgjform.cbHarga.Text         := MastData.QCari.Fields[0].Value else
                 arfhrgjform.cbHarga.Text         := '';
              arfhrgjform.Hide;
              if arfhrgjform.ShowModal = mrOk then
              begin
                with vtHJual do
                begin
                  Edit;
                  vtHJualvtHJualHrg.Value     := arfhrgjform.lblDesc.caption;
                  vtHJualvtHJuaHpp.Value      := strtofloat(arfhrgjform.EDTHpp.Text);
                  vtHJualvtHJualProfit.Value  := strtofloat(arfhrgjform.edtPersen.Text);
                  vtHJualvtHJualNProfit.Value := strtofloat(arfhrgjform.EDTNPersen.Text);
                  vtHJualvtHJualKecil.Value   := strtofloat(arfhrgjform.EDTHrgKecil.Text);
                  vtHJualvtHJualMenengah.Value:= strtofloat(arfhrgjform.EDTHrgMenengah.Text);
                  vtHJualvtHJualTinggi.Value  := strtofloat(arfhrgjform.EdtHrgTinggi.Text);
                  vtHJual.Post;
                end;
//                vtHJual.Clear;
//                vtHJual.close;
//                TampilHarga;
//                DBGrid1.SetFocus;
//                abort;
              end;
          end;
        end;
      end;
    end else if (sso=shift) then
    begin

    end;
  end;
end;

procedure Tarhrgjform.DBGrid1MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
//  EksekusiSQL(mastdata.qcari,'Select Ket from svarmhrg where ket='''+vtHJualvtHJualHrg.Value+'''', true );
//  if not mastdata.QCari.IsEmpty then
//  begin
//    vtHjual.Edit;
//    vtHJualvtHJualHrg.Value := mastdata.QCari.Fields[0].Value;
//    vthjual.Post
//  end
end;

procedure Tarhrgjform.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if vtHJual.Active = true then
  begin
    EksekusiSQL(mastdata.QCari,'Select Hrg, Ket from svarmhrg where Hrg='''+vtHJualvtHJualHrg.Value+'''', true );
    pnlHarga.Caption := ' Keterangan Jenis Harga : '+mastdata.QCari.Fields[1].Value;
  end;
end;

procedure Tarhrgjform.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if vtHJual.Active = true then
  begin
    EksekusiSQL(mastdata.QCari,'Select Hrg, Ket from svarmhrg where Hrg='''+vtHJualvtHJualHrg.Value+'''', true );
    pnlHarga.Caption := ' Keterangan Jenis Harga : '+mastdata.QCari.Fields[1].Value;
  end;
end;

procedure Tarhrgjform.DBGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  if vtHJual.Active = true then
  begin
    EksekusiSQL(mastdata.QCari,'Select Hrg, Ket from svarmhrg where Hrg='''+vtHJualvtHJualHrg.Value+'''', true );
    pnlHarga.Caption := ' Keterangan Jenis Harga : '+mastdata.QCari.Fields[1].Value;
  end;
end;

procedure Tarhrgjform.DBGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  if vtHJual.Active = true then
  begin
    EksekusiSQL(mastdata.QCari,'Select Hrg, Ket from svarmhrg where Hrg='''+vtHJualvtHJualHrg.Value+'''', true );
    pnlHarga.Caption := ' Keterangan Jenis Harga : '+mastdata.QCari.Fields[1].Value;
  end;
end;

procedure Tarhrgjform.EDTBarangExit(Sender: TObject);
begin
  inherited;
//  if EDTBarang.Text = '' then
//  begin
//    konfError('Silahkan pilih terlebih dahulu data barang yang akan disetting');
//    TampilBarang;
//  end;
end;

procedure Tarhrgjform.EDTBarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    if EDTBarang.Text = '' then
    begin
      konfError('Silahkan pilih terlebih dahulu data barang yang akan disetting');
      TampilBarang;
    end;
  end;
end;

procedure Tarhrgjform.FormCreate(Sender: TObject);
begin
  stat_ := 0; // untuk menandakan transaksi sebagai browse
  EksekusiSQL(mastdata.QCari,'Select Cab from svlmpsys',true);
  if not mastdata.QCari.IsEmpty then
    cab_ := MastData.QCari.Fields[0].Value else
    cab_ := '01';
  EDTBarang.Clear;
  KeyPreview := True;
  pnlharga.caption := '';
  SetLocaleInfo(GetSystemDefaultLCID, LOCALE_SCURRENCY, '');
  SetLocaleInfo(GetSystemDefaultLCID, LOCALE_SThousand, ',');
  SetLocaleInfo(GetSystemDefaultLCID, LOCALE_SDecimal, '.');
  inherited;
end;

procedure Tarhrgjform.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var
//  sso : TShiftState;
//  xlblHarga : String;
begin
  inherited;
//  sso:= [];
//  xlblHarga :='';
//  if key = vk_F4 then
//  begin
//    vtHJual.Append;
//    DBGrid1.SetFocus;
//  end;
//  if key = vk_Return then
//  begin
//    // jika melewati list indext maka konferror akan dijalankan.
//    Try
//      DBGrid1.SelectedField := vtHJual.Fields[DBGrid1.SelectedIndex+1];
//    Except
//      konfError('Untuk melanjutkan tekan tanda panah bawah pada keyboard');
//      DBGrid1.SelectedIndex := 0;
//      abort;
//    end;
//    Key := 0;
//  end;
//  if key = vk_f3 then
//  begin
//    // Combine dengan tombol Shift (Alt+F3) maka akan menjalankan perintah ini
//    if (ssAlt in Shift) then
//    begin
//    Stat_ := 1;
//    arfhrgjform := Tarfhrgjform.create(nil);
//    arfhrgjform.formstyle := fsNormal;
//    arfhrgjform.EDTKodeBrg.Text := EDTBarang.Text;
//    arfhrgjform.lblNama.Caption := lblNamaBarang.Caption;
//    arfhrgjform.Hide;
//      if arfhrgjform.ShowModal = mrOk then
//      begin
//        with vtHJual do
//        begin
//          Append;
//          vtHJualvtHJualHrg.Value     := arfhrgjform.lblDesc.Caption;
//          vtHJualvtHJuaHpp.Value      := strtofloat(arfhrgjform.EDTHpp.Text);
//          vtHJualvtHJualProfit.Value  := strtofloat(arfhrgjform.edtPersen.Text);
//          vtHJualvtHJualNProfit.Value := strtofloat(arfhrgjform.EDTNPersen.Text);
//          vtHJualvtHJualKecil.Value   := strtofloat(arfhrgjform.EDTHrgKecil.Text);
//          vtHJualvtHJualMenengah.Value:= strtofloat(arfhrgjform.EDTHrgMenengah.Text);
//          vtHJualvtHJualTinggi.Value  := strtofloat(arfhrgjform.EdtHrgTinggi.Text);
//          vtHJual.Post;
//        end;
//      end;
//    end else if (sso=Shift) then
//    begin
//
//    end;
//  end;
//  if key = vk_F1 then
//  begin
//    // jika menggunakan combine tombol (Alt+F1) maka akan muncul form cari
//    if (ssAlt in Shift) then
//    begin
//      Stat_ := 1;
//      if not Assigned(SearchTempleteForm) then
//        SearchTempleteForm := TSearchTempleteForm.create(Application);
//      SearchTempleteForm.FormStyle := fsStayOnTop;
//      SearchTempleteForm.hide;
//      if SearchTempleteForm.ShowModal=mrOK then
//      begin
//        EksekusiSQL(mastData.QCari,'select Hrg from svarmhrg where ket = '''+SearchTempleteForm.EPencarian.Text+'''',true );
//        if not MastData.QCari.IsEmpty then
//        begin
//          xlblHarga := MastData.QCari.Fields[0].Value;
//          EksekusiSQL(mastData.QCari,' Select Hrg, Hpp, Profit, ProfitNilai, H1, H2, H3 from svarmhjbrg Where hrg = '''+xlblHarga+'''', true);
//          if not MastData.QCari.IsEmpty then
//          begin
//              // Tampilkan hasil pencarian kedalam form edit harga jual
//              arfhrgjform := Tarfhrgjform.create(nil);
//              arfhrgjform.formstyle := fsNormal;
//              arfhrgjform.EDTKodeBrg.Text      := EDTBarang.Text;
//              arfhrgjform.lblNama.Caption      := lblNamaBarang.Caption;
//              arfhrgjform.EDTHpp.Text          := floattostr(MastData.QCari.Fields[1].Value);
//              arfhrgjform.edtPersen.Text       := floattostr(MastData.QCari.Fields[2].Value);
//              arfhrgjform.EDTNPersen.Text      := floattostr(MastData.QCari.Fields[3].Value);
//              arfhrgjform.EDTHrgKecil.Text     := floattostr(MastData.QCari.Fields[6].Value);
//              arfhrgjform.EDTHrgMenengah.Text  := floattostr(MastData.QCari.Fields[5].Value);
//              arfhrgjform.EdtHrgTinggi.Text    := floattostr(MastData.QCari.Fields[4].Value);
//              arfhrgjform.lblDesc.caption      := MastData.QCari.Fields[0].Value;
//              // Tampilkan nama harga kedalam combo box
//              EksekusiSQL(mastdata.QCari,'select Ket from svarmhrg where Hrg = '''+MastData.QCari.Fields[0].Value+'''',true);
//              if not MastData.QCari.IsEmpty then
//                 arfhrgjform.cbHarga.Text         := MastData.QCari.Fields[0].Value else
//                 arfhrgjform.cbHarga.Text         := '';
//              arfhrgjform.Hide;
//              if arfhrgjform.ShowModal = mrOk then
//              begin
//                with vtHJual do
//                begin
//                  Edit;
//                  vtHJualvtHJualHrg.Value     := arfhrgjform.lblDesc.caption;
//                  vtHJualvtHJuaHpp.Value      := strtofloat(arfhrgjform.EDTHpp.Text);
//                  vtHJualvtHJualProfit.Value  := strtofloat(arfhrgjform.edtPersen.Text);
//                  vtHJualvtHJualNProfit.Value := strtofloat(arfhrgjform.EDTNPersen.Text);
//                  vtHJualvtHJualKecil.Value   := strtofloat(arfhrgjform.EDTHrgKecil.Text);
//                  vtHJualvtHJualMenengah.Value:= strtofloat(arfhrgjform.EDTHrgMenengah.Text);
//                  vtHJualvtHJualTinggi.Value  := strtofloat(arfhrgjform.EdtHrgTinggi.Text);
//                  vtHJual.Post;
//                end;
//                TampilCombo;
//              end;
//          end;
//        end;
//      end;
//    end else if (sso=shift) then
//    begin
//
//    end;
//  end;

end;

procedure Tarhrgjform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  key := #0;
end;

procedure Tarhrgjform.FormShow(Sender: TObject);
begin
  EDTBarang.SetFocus;
  inherited;
end;

procedure Tarhrgjform.TampilBarang;
begin
  // Tgl. 27-Sep-2014
  // Tujuan untuk mencari data barang yang tidak diblock atau hanya yang aktif saja yang
  // bisa ditampilkan
  // Created by Afes Oktavianus
  lblNamaBarang.Caption := '';
  _SQL := ' Select Brg, Nama1 from svinmbrg where lAktif <> ''No'' order by Brg Asc ';
  EksekusiSQL(MastData.QCari,_SQL,True);
  if NOT MastData.QCari.IsEmpty then
  begin
    MastData.statSearch := 'BRG';
    fsearchForm := TfsearchForm.Create(nil);
    fsearchForm.FormStyle := fsNormal;
    fsearchForm.DataSource1.DataSet := MastData.QCari;
    fsearchForm.DBGrid1.Columns.Clear;
    fsearchForm.DBGrid1.Columns[0].FieldName := MastData.QCari.Fields[0].Value;
    fsearchForm.DBGrid1.Columns[1].FieldName := MastData.QCari.Fields[1].Value;
    fsearchForm.Hide;
    if fsearchForm.ShowModal = mrOK then
    begin
      edtbarang.Text := MastData.QCari.Fields[0].Value;
      lblNamaBarang.Caption := MastData.QCari.Fields[1].Value;
      tampilharga;
      fsearchForm.Close;
    end;
  end else
  begin
    konfError('Aktifkan terlebih dahulu barang yang akan disetting'#13#10'Di master barang..!!!');
    EDTBarang.SetFocus;
    abort;
  end;
end;

procedure TARHrgJForm.TampilHarga;
var
  QJenis :TAdoQuery;
begin
  // Tgl. 27-Sep-2014
  // Tujuan untuk menampilkan Daftar harga berdasakan Barang yang dipilih
  // bisa ditampilkan
  // Created by Afes Oktavianus
  try
    vtHJual.Clear;
    QJenis := TAdoQuery.Create(nil);
    Qjenis.Connection := MastData.invConnection;
    _SQL := ' SELECT j.Hrg, ifnull(j.Hpp,0) as HPP, ifnull(j.Profit,0) as Profit, ifnull(j.Profitnilai,0) as ProfitNilai,'+
            ' ifnull(j.H1,0) As H1, ifnull(j.H2,0) As H2, ifnull(j.H3,0) As H3 FROM svarmhjbrg AS j where BRG ='''+EDTBarang.Text+'''';
    EksekusiSQL(MastData.QCari,_SQl,True);
    if not MastData.QCari.isempty then
    begin
      While not MastData.QCari.Eof Do
      begin
        vtHJual.Close;
        vtHjual.Open;
        vtHjual.Append;
        EksekusiSQL(QJenis,'Select Hrg, Ket from svarmhrg where Hrg='''+MastData.QCari.Fields[0].Value+'''', true );
        if not QJenis.IsEmpty then
        begin
          vtHJualvtHJualHrg.Value := QJenis.Fields[0].Value;
          pnlHarga.Caption        := ' Keterangan Jenis Harga : '+QJenis.Fields[1].Value;
          Hrg_                    := QJenis.Fields[0].Value // disimpan kedalam variable local gunanya untuk disimpan nanti
        end else
        begin
          vtHJualvtHJualHrg.Value := '';
          Hrg_                    := '';
          pnlHarga.Caption        := '';
        end;
        vtHJualvtHJuaHpp.Value := MastData.QCari.Fields[1].Value;
        vtHJualvtHJualProfit.Value := MastData.QCari.Fields[2].Value;
        vtHJualvtHJualNProfit.Value := MastData.QCari.Fields[3].Value;
        vtHJualvtHJualKecil.Value := MastData.QCari.Fields[6].Value;
        vtHJualvtHJualMenengah.Value := MastData.QCari.Fields[5].Value;
        vtHJualvtHJualTinggi.Value := MastData.QCari.Fields[4].Value;
        vtHjual.Post;
        mastData.QCari.Next;
      end;
      btnCetak.Caption := 'Alt+F1 = Edit';
      btnCetak.Width   := 100;
      btnDelete.Left   := btnDelete.Left - 14;
  end else
  begin
    vtHJual.Open;
    DBGrid1.SetFocus;
    btnCetak.Caption := 'Alt+F3 = Tambah';
    btnCetak.Width   := 114;
    btnDelete.Left   := 309;
  end;
  Qjenis.Free;
  Except
     konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
               'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
               'developer sistem ini untuk penanganan lebih lanjut.');
     EDTBarang.SetFocus;
  end;
end;

procedure Tarhrgjform.vtHJualAfterPost(DataSet: TDataSet);
var
  QCek : TAdoquery;
begin
  inherited;
  if stat_ = 1 then
  begin
    QCek := TAdoQuery.Create(nil);
    Qcek.Connection := MastData.invConnection;
    EksekusiSQL(Qcek,'Select 1 from svarmhjbrg where cab = '''+cab_+''' and hrg = '''+vtHJualvtHJualHrg.Value+''' and brg ='''+edtbarang.Text+'''',true );
    if not QCek.IsEmpty then
      stattran_ := 'Change' else stattran_ := 'Tambah';
  //  vtHJualvtHJuaHpp.ReadOnly := False;
    with MastData.sp_input_hjual do
    begin
      close;
      Parameters.ParamByName('tempbrg').Value := EDTBarang.Text;
      Parameters.ParamByName('temphpp').Value := vtHJualvtHJuaHpp.Value;
      Parameters.ParamByName('statTransaksi').Value := stattran_;
      Parameters.ParamByName('tempcab').Value := cab_;
      Parameters.ParamByName('temphrg').Value := vtHJualvtHJualHrg.Value;
      Parameters.ParamByName('tempprofit').Value := vtHJualvtHJualProfit.Value;
      Parameters.ParamByName('tempnilaiprofit').Value := vtHJualvtHJualNProfit.Value;
      Parameters.ParamByName('temph1').Value := vtHJualvtHJualTinggi.Value;
      Parameters.ParamByName('temph2').Value := vtHJualvtHJualMenengah.Value;
      Parameters.ParamByName('temph3').Value := vtHJualvtHJualKecil.Value;
      ExecProc;
    end;
    konfBerhasil('Data Berhasil disimpan');
    DBGrid1.SetFocus;
    abort;
  end;
end;

procedure Tarhrgjform.vtHJualNewRecord(DataSet: TDataSet);
begin
  inherited;
//  vtHJualvtHJuaHpp.Value := 0;
//  vtHJualvtHJualProfit.Value := 0;
//  vtHJualvtHJualNProfit.Value := 0;
//  vtHJualvtHJualKecil.Value := 0;
//  vtHJualvtHJualMenengah.Value := 0;
//  vtHJualvtHJualTinggi.Value := 0;
end;

procedure Tarhrgjform.vtHJualvtHJualHrgValidate(Sender: TField);
var
  QCekHpp:TAdoQuery;
begin
  inherited;
  if stat_ = 0 then
  begin
    if vtHJualvtHJualHrg.Value = '' then
    begin
      konfError('Jenis harga harap dipilih terlebih dahulu');
      dbgrid1.SetFocus;
      abort;
    end else
    begin
      QCekHpp := TAdoQuery.Create(nil);
      QCekHpp.Connection := mastData.invConnection;
      _SQL := ' SELECT ifnull(j.Hpp,0) as HPP FROM svarmhjbrg AS j where BRG ='''+EDTBarang.Text+'''';
      EksekusiSQL(QCekHpp,_SQl,True);
      if QcekHpp.IsEmpty then
        CariHpp;
      QCekHpp.Free;
    end;
  end;
end;

procedure Tarhrgjform.vtHJualvtHJualProfitValidate(Sender: TField);
begin
  inherited;
  if vtHJualvtHJualProfit.Value > 0 then
  begin
//    hitungNProfit;
//    hitungH3;
//    hitungH2;
//    hitungH1;
  end;
end;

end.


