inherited infkbrgform: Tinfkbrgform
  Caption = 'Form Konfigurasi Master Barang'
  ClientHeight = 307
  ClientWidth = 542
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 341
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 542
    Height = 307
    inherited PageControl1: TPageControl
      Width = 534
      Height = 258
      ExplicitHeight = 404
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 22
        ExplicitWidth = 526
        ExplicitHeight = 230
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 67
          Height = 16
          Caption = 'Kode BRG.'
          FocusControl = DBEBRG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 36
          Width = 65
          Height = 16
          Caption = 'NO. URUT'
          FocusControl = DBENOUR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 64
          Width = 105
          Height = 16
          Caption = 'Kode BRG. Detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 92
          Width = 83
          Height = 16
          Caption = 'Kode Gudang'
          FocusControl = DBEGD
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 120
          Width = 35
          Height = 16
          Caption = 'STN3'
          FocusControl = DBESTN
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 148
          Width = 28
          Height = 16
          Caption = 'QTY'
          FocusControl = DBEQty
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 176
          Width = 70
          Height = 16
          Caption = 'Hrg. Satuan'
          FocusControl = DBEHrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 204
          Width = 48
          Height = 16
          Caption = 'Cabang'
          FocusControl = DBECab
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblNamaCab: TLabel
          Left = 197
          Top = 204
          Width = 3
          Height = 16
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblNamaGDG: TLabel
          Left = 157
          Top = 92
          Width = 3
          Height = 16
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEBRG: TDBEdit
          Left = 124
          Top = 5
          Width = 394
          Height = 23
          TabStop = False
          Color = 13750737
          DataField = 'BRG'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBENOUR: TDBEdit
          Left = 124
          Top = 33
          Width = 69
          Height = 23
          TabStop = False
          Color = 15658734
          DataField = 'NOUR'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEGD: TDBEdit
          Left = 124
          Top = 89
          Width = 30
          Height = 23
          TabStop = False
          Color = 13750737
          DataField = 'GD'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBESTN: TDBEdit
          Left = 124
          Top = 117
          Width = 69
          Height = 23
          TabStop = False
          Color = 13750737
          DataField = 'STN3'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEQty: TDBEdit
          Left = 124
          Top = 145
          Width = 69
          Height = 23
          Color = 15658734
          DataField = 'QTY'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEHrg: TDBEdit
          Left = 124
          Top = 173
          Width = 165
          Height = 23
          TabStop = False
          Color = 13750737
          DataField = 'HSATUAN'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBECab: TDBEdit
          Left = 124
          Top = 201
          Width = 69
          Height = 23
          TabStop = False
          Color = 13750737
          DataField = 'Cab'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBLBRG: TDBLookupComboBox
          Left = 124
          Top = 61
          Width = 215
          Height = 23
          Color = 15658734
          DataField = 'BRGD'
          DataSource = MastData.DSMKonfBarangDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'BRG'
          ListField = 'BRG'
          ListSource = MastData.DSMBarangNonKonf
          ParentFont = False
          TabOrder = 2
          OnCloseUp = DBLBRGCloseUp
          OnEnter = DBLBRGEnter
          OnExit = DBLBRGExit
        end
        object DBENMBrg: TEdit
          Left = 339
          Top = 61
          Width = 179
          Height = 23
          TabStop = False
          Color = 13750737
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = 'DBENMBrg'
        end
      end
      inherited TabSheet2: TTabSheet
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 802
        ExplicitHeight = 376
      end
    end
    inherited Panel2: TPanel
      Top = 260
      Width = 534
      inherited btnCancel: TButton
        Left = 455
        TabOrder = 1
      end
      inherited btnsimpan: TButton
        Left = 380
        TabOrder = 0
      end
    end
  end
end
