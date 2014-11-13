inherited arhrgjform: Tarhrgjform
  ActiveControl = EDTBarang
  Caption = 'Setting Harga Jual Customer'
  ClientWidth = 796
  OnKeyPress = FormKeyPress
  ExplicitWidth = 802
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Top = 118
    Width = 796
    Height = 283
    ExplicitTop = 118
    ExplicitWidth = 796
    ExplicitHeight = 283
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 788
      ExplicitHeight = 255
      inherited DBGrid1: TDBGrid
        Width = 788
        Height = 214
        DataSource = DSVTHJual
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnMouseActivate = DBGrid1MouseActivate
        OnMouseDown = DBGrid1MouseDown
        OnMouseUp = DBGrid1MouseUp
        OnMouseWheelDown = DBGrid1MouseWheelDown
        OnMouseWheelUp = DBGrid1MouseWheelUp
        Columns = <
          item
            Expanded = False
            FieldName = 'vtHJualHrg'
            Title.Caption = 'Jenis Harga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vtHJuaHpp'
            Title.Caption = 'HPP'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vtHJualProfit'
            Title.Caption = 'Profit'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vtHJualNProfit'
            Title.Caption = 'Nilai Profit'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vtHJualKecil'
            Title.Caption = 'Hrg. Jual Terkecil'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vtHJualMenengah'
            Title.Caption = 'Hrg. Jual Menengah'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vtHJualTinggi'
            Title.Caption = 'Hrg. Jual Tertinggi'
            Visible = True
          end>
      end
      object cbb1: TComboBox
        Left = 280
        Top = 64
        Width = 145
        Height = 21
        TabOrder = 1
        Text = 'cbb1'
        Visible = False
      end
      object pnlHarga: TPanel
        Left = 0
        Top = 214
        Width = 788
        Height = 41
        Align = alBottom
        Alignment = taLeftJustify
        Caption = '  Panel4'
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
      end
    end
  end
  inherited Panel1: TPanel
    Width = 796
    ExplicitWidth = 796
    inherited btnTambah: TButton
      Width = 95
      Caption = 'F3 = Perkode'
      OnClick = btnTambahClick
      ExplicitWidth = 95
    end
    inherited btnEdit: TButton
      Left = 95
      Width = 102
      Caption = 'F1 = Terendah'
      ExplicitLeft = 95
      ExplicitWidth = 102
    end
    inherited btnCetak: TButton
      Left = 196
      Width = 114
      Caption = 'Alt+F3 = Tambah'
      OnClick = btnCetakClick
      ExplicitLeft = 196
      ExplicitWidth = 114
    end
    inherited btnDelete: TButton
      Left = 309
      Caption = 'Del = Bersih'
      ExplicitLeft = 309
    end
    inherited btnKeluar: TButton
      Left = 700
      ExplicitLeft = 700
    end
  end
  inherited Panel2: TPanel
    Width = 796
    Visible = False
    ExplicitWidth = 796
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 796
    Height = 68
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvLowered
    Color = 4268321
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      Left = 5
      Top = 16
      Width = 90
      Height = 16
      Caption = 'Kode Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNamaBarang: TLabel
      Left = 101
      Top = 42
      Width = 4
      Height = 16
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EDTBarang: TEdit
      Left = 101
      Top = 13
      Width = 220
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'EDIT1'
      OnExit = EDTBarangExit
      OnKeyDown = EDTBarangKeyDown
    end
    object Button1: TButton
      Left = 321
      Top = 12
      Width = 56
      Height = 24
      Caption = 'Cari'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object vtHJual: TVirtualTable
    AfterPost = vtHJualAfterPost
    OnNewRecord = vtHJualNewRecord
    FieldDefs = <
      item
        Name = 'vtHJualHrg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'vtHJuaHpp'
        DataType = ftCurrency
      end
      item
        Name = 'vtHJualProfit'
        DataType = ftFloat
      end
      item
        Name = 'vtHJualNProfit'
        DataType = ftCurrency
      end
      item
        Name = 'vtHJualKecil'
        DataType = ftCurrency
      end
      item
        Name = 'vtHJualMenengah'
        DataType = ftCurrency
      end
      item
        Name = 'vtHJualTinggi'
        DataType = ftCurrency
      end>
    Left = 328
    Top = 136
    Data = {
      030007000A007674484A75616C487267010014000000000009007674484A7561
      48707007000000000000000D007674484A75616C50726F666974060000000000
      00000E007674484A75616C4E50726F66697407000000000000000C007674484A
      75616C4B6563696C07000000000000000F007674484A75616C4D656E656E6761
      6807000000000000000D007674484A75616C54696E6767690700000000000000
      000000000000}
    object vtHJualvtHJualHrg: TStringField
      FieldName = 'vtHJualHrg'
      OnValidate = vtHJualvtHJualHrgValidate
    end
    object vtHJualvtHJuaHpp: TCurrencyField
      FieldName = 'vtHJuaHpp'
    end
    object vtHJualvtHJualProfit: TFloatField
      FieldName = 'vtHJualProfit'
      OnValidate = vtHJualvtHJualProfitValidate
    end
    object vtHJualvtHJualNProfit: TCurrencyField
      FieldName = 'vtHJualNProfit'
    end
    object vtHJualvtHJualKecil: TCurrencyField
      FieldName = 'vtHJualKecil'
    end
    object vtHJualvtHJualMenengah: TCurrencyField
      FieldName = 'vtHJualMenengah'
    end
    object vtHJualvtHJualTinggi: TCurrencyField
      FieldName = 'vtHJualTinggi'
    end
  end
  object DSVTHJual: TDataSource
    DataSet = vtHJual
    Left = 536
    Top = 16
  end
end
