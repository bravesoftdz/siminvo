inherited apfsupform: Tapfsupform
  Caption = 'Form Transaksi Master Supplier'
  ClientHeight = 379
  ClientWidth = 481
  KeyPreview = True
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 489
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 481
    Height = 379
    ExplicitWidth = 481
    ExplicitHeight = 379
    inherited PageControl1: TPageControl
      Width = 473
      Height = 330
      ExplicitWidth = 473
      ExplicitHeight = 330
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 465
        ExplicitHeight = 302
        object Label1: TLabel
          Left = 3
          Top = 14
          Width = 85
          Height = 16
          Caption = 'Kode Supplier'
          FocusControl = DBESup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 41
          Width = 37
          Height = 16
          Caption = 'Nama'
          FocusControl = DBENama
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 3
          Top = 67
          Width = 42
          Height = 16
          Caption = 'Alamat'
          FocusControl = DBEAL1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 3
          Top = 119
          Width = 52
          Height = 16
          Caption = 'No. Telp'
          FocusControl = DBETelp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 3
          Top = 145
          Width = 46
          Height = 16
          Caption = 'No. Fax'
          FocusControl = DBEFax
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 3
          Top = 171
          Width = 41
          Height = 16
          Caption = 'NPWP'
          FocusControl = DBENPWP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 197
          Width = 25
          Height = 16
          Caption = 'Top'
          FocusControl = DBETERM
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 3
          Top = 223
          Width = 38
          Height = 16
          Caption = 'Valuta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 3
          Top = 249
          Width = 49
          Height = 16
          Caption = 'Wilayah'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 3
          Top = 274
          Width = 48
          Height = 16
          Caption = 'Cabang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 182
          Top = 197
          Width = 25
          Height = 16
          Caption = 'Hari'
          FocusControl = DBETERM
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBESup: TDBEdit
          Left = 120
          Top = 13
          Width = 134
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'SUP'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBENama: TDBEdit
          Left = 120
          Top = 38
          Width = 281
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'Nama'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEAL1: TDBEdit
          Left = 120
          Top = 64
          Width = 250
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'AL1'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEAL2: TDBEdit
          Left = 120
          Top = 90
          Width = 250
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'AL2'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBETelp: TDBEdit
          Left = 120
          Top = 116
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'Telp'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEFax: TDBEdit
          Left = 120
          Top = 142
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'Fax'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBENPWP: TDBEdit
          Left = 120
          Top = 168
          Width = 199
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'NPWP'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBETERM: TDBEdit
          Left = 120
          Top = 194
          Width = 57
          Height = 23
          BiDiMode = bdRightToLeft
          Color = 15658734
          DataField = 'Term'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
        end
        object DBLWil: TDBLookupComboBox
          Left = 120
          Top = 246
          Width = 150
          Height = 23
          Color = 15658734
          DataField = 'wil'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'Wil'
          ListField = 'Wil'
          ListSource = MastData.DSMWilayah
          ParentFont = False
          TabOrder = 9
          OnCloseUp = DBLWilCloseUp
          OnEnter = DBLWilEnter
          OnExit = DBLWilExit
        end
        object DBLCab: TDBLookupComboBox
          Left = 120
          Top = 271
          Width = 150
          Height = 23
          Color = 15658734
          DataField = 'cab'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'cab'
          ListField = 'cab'
          ListSource = MastData.DSMCabang
          ParentFont = False
          TabOrder = 10
          OnCloseUp = DBLCabCloseUp
          OnEnter = DBLCabEnter
          OnExit = DBLCabExit
        end
        object DBLVAL: TDBLookupComboBox
          Left = 120
          Top = 220
          Width = 150
          Height = 24
          Color = 15658734
          DataField = 'val'
          DataSource = MastData.DSMAPSup
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'Val'
          ListField = 'Val'
          ListSource = MastData.DSMAPVal
          ParentFont = False
          TabOrder = 8
          OnCloseUp = DBLVALCloseUp
          OnEnter = DBLVALEnter
          OnExit = DBLVALExit
        end
        object DBENMVal: TEdit
          Left = 270
          Top = 220
          Width = 193
          Height = 24
          CharCase = ecUpperCase
          Color = 13750737
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = 'DBENMVAL'
        end
        object DBENMWil: TEdit
          Left = 270
          Top = 246
          Width = 193
          Height = 24
          CharCase = ecUpperCase
          Color = 13750737
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = 'DBENMWIL'
        end
        object DBENMCab: TEdit
          Left = 270
          Top = 271
          Width = 193
          Height = 24
          CharCase = ecUpperCase
          Color = 13750737
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = 'DBENMCAB'
        end
      end
      inherited TabSheet2: TTabSheet
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 465
        ExplicitHeight = 302
      end
    end
    inherited Panel2: TPanel
      Top = 332
      Width = 473
      ExplicitTop = 332
      ExplicitWidth = 473
      inherited btnCancel: TButton
        Left = 394
        ExplicitLeft = 394
      end
      inherited btnsimpan: TButton
        Left = 319
        ExplicitLeft = 319
      end
    end
  end
end
