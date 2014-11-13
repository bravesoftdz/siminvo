inherited infbrgForm: TinfbrgForm
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Transaksi Barang Form'
  ClientHeight = 441
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 826
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 441
    Color = 13750737
    ExplicitHeight = 441
    inherited PageControl1: TPageControl
      Height = 392
      ExplicitHeight = 392
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 802
        ExplicitHeight = 364
        object Label1: TLabel
          Left = 3
          Top = 13
          Width = 79
          Height = 16
          Caption = 'Kode Barang'
          FocusControl = DBEBrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 40
          Width = 84
          Height = 16
          Caption = 'Nama Barang'
          FocusControl = DBENama1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 3
          Top = 306
          Width = 52
          Height = 16
          Caption = 'Barcode'
          FocusControl = DBEBarcode
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEBrg: TDBEdit
          Left = 100
          Top = 10
          Width = 394
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'BRG'
          DataSource = MastData.DSMBarang
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEBrgExit
        end
        object DBENama1: TDBEdit
          Left = 100
          Top = 37
          Width = 500
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'Nama1'
          DataSource = MastData.DSMBarang
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBENama2: TDBEdit
          Left = 100
          Top = 64
          Width = 500
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'Nama2'
          DataSource = MastData.DSMBarang
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 93
          Width = 799
          Height = 204
          TabOrder = 3
          object Label3: TLabel
            Left = 3
            Top = 7
            Width = 67
            Height = 16
            Caption = 'Kode Jenis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 3
            Top = 35
            Width = 94
            Height = 16
            Caption = 'Kode Golongan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 3
            Top = 64
            Width = 73
            Height = 16
            Caption = 'Kode Merek'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 3
            Top = 89
            Width = 79
            Height = 16
            Caption = 'Type Barang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 3
            Top = 120
            Width = 52
            Height = 16
            Caption = 'Satuan 1'
            FocusControl = DBESTN1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 170
            Top = 120
            Width = 68
            Height = 16
            Caption = 'Isi Satuan 1'
            FocusControl = DBEISI1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 3
            Top = 147
            Width = 52
            Height = 16
            Caption = 'Satuan 2'
            FocusControl = DBESTN2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 170
            Top = 147
            Width = 68
            Height = 16
            Caption = 'Isi Satuan 2'
            FocusControl = DBEISI2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 3
            Top = 174
            Width = 52
            Height = 16
            Caption = 'Satuan 3'
            FocusControl = DBESTN3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBESTN1: TDBEdit
            Left = 100
            Top = 117
            Width = 64
            Height = 23
            CharCase = ecUpperCase
            Color = 15658734
            DataField = 'Stn1'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEISI1: TDBEdit
            Left = 240
            Top = 117
            Width = 111
            Height = 23
            Color = 15658734
            DataField = 'Isi1'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBESTN2: TDBEdit
            Left = 100
            Top = 144
            Width = 64
            Height = 23
            CharCase = ecUpperCase
            Color = 15658734
            DataField = 'Stn2'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEISI2: TDBEdit
            Left = 240
            Top = 144
            Width = 111
            Height = 23
            Color = 15658734
            DataField = 'Isi2'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBESTN3: TDBEdit
            Left = 100
            Top = 171
            Width = 64
            Height = 23
            CharCase = ecUpperCase
            Color = 15658734
            DataField = 'Stn3'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBENMJenis: TEdit
            Left = 261
            Top = 5
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = 'DBENMJenis'
          end
          object DBENMGol: TEdit
            Left = 261
            Top = 32
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Text = 'Edit1'
          end
          object DBENMerek: TEdit
            Left = 261
            Top = 59
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            Text = 'Edit1'
          end
          object DBENMType: TEdit
            Left = 261
            Top = 86
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            Text = 'Edit1'
          end
          object DBLJenis: TDBLookupComboBox
            Left = 100
            Top = 5
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'Jenis'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'JNS'
            ListField = 'JNS'
            ListSource = MastData.DSMJenis
            ParentFont = False
            TabOrder = 9
            OnCloseUp = DBLJenisCloseUp
            OnEnter = DBLJenisEnter
            OnExit = DBLJenisExit
          end
          object DBLGol: TDBLookupComboBox
            Left = 100
            Top = 32
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'gol'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'Gol'
            ListField = 'Gol'
            ListSource = MastData.DSMGolongan
            ParentFont = False
            TabOrder = 10
            OnCloseUp = DBLGolCloseUp
            OnEnter = DBLGolEnter
            OnExit = DBLGolExit
          end
          object DBLMerek: TDBLookupComboBox
            Left = 100
            Top = 59
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'merek'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'MRK'
            ListField = 'MRK'
            ListSource = MastData.DSMMerek
            ParentFont = False
            TabOrder = 11
            OnCloseUp = DBLMerekCloseUp
            OnEnter = DBLMerekEnter
            OnExit = DBLMerekExit
          end
          object DBLType: TDBLookupComboBox
            Left = 100
            Top = 86
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'type'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'Type'
            ListField = 'Type'
            ListSource = MastData.DSMType
            ParentFont = False
            TabOrder = 12
            OnCloseUp = DBLTypeCloseUp
            OnEnter = DBLTypeEnter
            OnExit = DBLTypeExit
          end
        end
        object DBEBarcode: TDBEdit
          Left = 100
          Top = 303
          Width = 654
          Height = 23
          CharCase = ecUpperCase
          Color = 15658734
          DataField = 'barcode'
          DataSource = MastData.DSMBarang
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBClAktif: TDBCheckBox
          Left = 3
          Top = 332
          Width = 110
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Non Aktif'
          DataField = 'lAktif'
          DataSource = MastData.DSMBarang
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'NO'
          ValueUnchecked = 'YA'
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Group'
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 802
        ExplicitHeight = 364
        object GroupBox2: TGroupBox
          Left = 3
          Top = 0
          Width = 796
          Height = 121
          TabOrder = 0
          object Label13: TLabel
            Left = 8
            Top = 12
            Width = 82
            Height = 16
            Caption = 'Kode Kualitas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 39
            Width = 75
            Height = 16
            Caption = 'Kode Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 8
            Top = 66
            Width = 63
            Height = 16
            Caption = 'Kode Motif'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 8
            Top = 93
            Width = 78
            Height = 16
            Caption = 'Kode Ukuran'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBENMSIZE: TEdit
            Left = 271
            Top = 90
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Text = 'DBENMSIZE'
          end
          object DBENMMotif: TEdit
            Left = 271
            Top = 63
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = 'Edit1'
          end
          object DBENMWarna: TEdit
            Left = 271
            Top = 36
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Text = 'Edit1'
          end
          object DBENMKuali: TEdit
            Left = 271
            Top = 9
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            Text = 'DBENMJenis'
          end
          object DBLKuali: TDBLookupComboBox
            Left = 112
            Top = 9
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'kuali'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'KUALI'
            ListField = 'KUALI'
            ListSource = MastData.DSMKualitas
            ParentFont = False
            TabOrder = 0
            OnCloseUp = DBLKualiCloseUp
            OnEnter = DBLKualiEnter
            OnExit = DBLKualiExit
          end
          object DBLWarna: TDBLookupComboBox
            Left = 112
            Top = 36
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'wrn'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'WRN'
            ListField = 'WRN'
            ListSource = MastData.DSMWarna
            ParentFont = False
            TabOrder = 1
            OnCloseUp = DBLWarnaCloseUp
            OnEnter = DBLWarnaEnter
            OnExit = DBLWarnaExit
          end
          object DBLMotif: TDBLookupComboBox
            Left = 112
            Top = 63
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'mtf'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'MTF'
            ListField = 'MTF'
            ListSource = MastData.DSMMotif
            ParentFont = False
            TabOrder = 2
            OnCloseUp = DBLMotifCloseUp
            OnEnter = DBLMotifEnter
            OnExit = DBLMotifExit
          end
          object DBLSize: TDBLookupComboBox
            Left = 112
            Top = 90
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'size'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'SIZE'
            ListField = 'SIZE'
            ListSource = MastData.DSMSize
            ParentFont = False
            TabOrder = 3
            OnCloseUp = DBLSizeCloseUp
            OnEnter = DBLSizeEnter
            OnExit = DBLSizeExit
          end
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 123
          Width = 796
          Height = 105
          TabOrder = 1
          object Label17: TLabel
            Left = 8
            Top = 7
            Width = 46
            Height = 16
            Caption = 'Minimal'
            FocusControl = DBEMinimal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 252
            Top = 7
            Width = 50
            Height = 16
            Caption = 'Maximal'
            FocusControl = DBEMAXI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 8
            Top = 33
            Width = 68
            Height = 16
            Caption = 'Lokasi Rak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 8
            Top = 59
            Width = 85
            Height = 16
            Caption = 'Kode Supplier'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEMinimal: TDBEdit
            Left = 112
            Top = 4
            Width = 134
            Height = 23
            Color = 15658734
            DataField = 'Mini'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEMAXI: TDBEdit
            Left = 308
            Top = 4
            Width = 134
            Height = 23
            Color = 15658734
            DataField = 'Maxi'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBENMRAK: TEdit
            Left = 275
            Top = 30
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'DBENMSIZE'
          end
          object DBENMSUPP: TEdit
            Left = 275
            Top = 56
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = 'DBENMSIZE'
          end
          object DBCKonsinyasi: TDBCheckBox
            Left = 8
            Top = 83
            Width = 238
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Barang Konsinyasi'
            DataField = 'lNonkonsinyasi'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            ValueChecked = 'YA'
            ValueUnchecked = 'TIDAK'
          end
          object DBLRAK: TDBLookupComboBox
            Left = 111
            Top = 30
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'Rak'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'Rak'
            ListField = 'Rak'
            ListSource = MastData.DSMRAK
            ParentFont = False
            TabOrder = 4
            OnCloseUp = DBLRAKCloseUp
            OnEnter = DBLRAKEnter
            OnExit = DBLRAKExit
          end
          object DBLSUPP: TDBLookupComboBox
            Left = 111
            Top = 56
            Width = 158
            Height = 23
            Color = 15658734
            DataField = 'sup'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'SUP'
            ListField = 'SUP'
            ListSource = MastData.DSMSUP
            ParentFont = False
            TabOrder = 5
            OnCloseUp = DBLSUPPCloseUp
            OnEnter = DBLSUPPEnter
            OnExit = DBLSUPPExit
          end
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 229
          Width = 796
          Height = 60
          TabOrder = 2
          object Label21: TLabel
            Left = 8
            Top = 8
            Width = 62
            Height = 16
            Caption = 'HPP (Beli)'
            FocusControl = DBEHPBELI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 8
            Top = 35
            Width = 64
            Height = 16
            Caption = 'HPP (Jual)'
            FocusControl = DBEHPJUAL
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEHPBELI: TDBEdit
            Left = 112
            Top = 5
            Width = 217
            Height = 23
            Color = 15658734
            DataField = 'Hpp'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEHPJUAL: TDBEdit
            Left = 112
            Top = 32
            Width = 217
            Height = 23
            Color = 15658734
            DataField = 'hppjual'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object EHPBeli: TEdit
            Left = 333
            Top = 5
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'DBENMJenis'
            Visible = False
          end
          object EHPJual: TEdit
            Left = 333
            Top = 32
            Width = 250
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = 'Edit1'
            Visible = False
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Setting Harga'
        ImageIndex = 2
        object GroupBox5: TGroupBox
          Left = 3
          Top = 3
          Width = 796
          Height = 358
          TabOrder = 0
          object Label23: TLabel
            Left = 3
            Top = 35
            Width = 73
            Height = 16
            Caption = 'Kode Harga'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 3
            Top = 8
            Width = 64
            Height = 16
            Caption = 'Harga Beli'
            FocusControl = DBEHrgBeli
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 3
            Top = 96
            Width = 63
            Height = 16
            Caption = 'Hrg. Jual 1'
            FocusControl = DBEHrgJual1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 3
            Top = 123
            Width = 63
            Height = 16
            Caption = 'Hrg. Jual 2'
            FocusControl = DBEHrgJual2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 3
            Top = 150
            Width = 63
            Height = 16
            Caption = 'Hrg. Jual 3'
            FocusControl = DBEHrgJual3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 3
            Top = 62
            Width = 69
            Height = 16
            Caption = 'Persentase'
            FocusControl = DBEPersentase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 155
            Top = 62
            Width = 12
            Height = 16
            Caption = '%'
            FocusControl = DBENilaiPersentase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEHrgBeli: TDBEdit
            Left = 83
            Top = 5
            Width = 381
            Height = 23
            Color = 15658734
            DataField = 'hbeli'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = DBEHrgBeliExit
          end
          object DBEHrgJual1: TDBEdit
            Left = 83
            Top = 93
            Width = 381
            Height = 23
            Color = 15658734
            DataField = 'hjual1'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnExit = DBEHrgJual1Exit
          end
          object DBEHrgJual2: TDBEdit
            Left = 83
            Top = 120
            Width = 381
            Height = 23
            Color = 15658734
            DataField = 'hjual2'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnExit = DBEHrgJual2Exit
          end
          object DBEHrgJual3: TDBEdit
            Left = 83
            Top = 147
            Width = 381
            Height = 23
            Color = 15658734
            DataField = 'hjual3'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnExit = DBEHrgJual3Exit
          end
          object DBEPersentase: TDBEdit
            Left = 83
            Top = 59
            Width = 69
            Height = 23
            Color = 15658734
            DataField = 'persentjual'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DBEPersentaseExit
          end
          object DBENilaiPersentase: TDBEdit
            Left = 176
            Top = 59
            Width = 288
            Height = 23
            Color = 15658734
            DataField = 'persentnilai'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBENMKodeHarga: TEdit
            Left = 180
            Top = 31
            Width = 284
            Height = 23
            Color = 13750737
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Text = 'DBENMSIZE'
          end
          object DBLHarga: TDBLookupComboBox
            Left = 83
            Top = 31
            Width = 95
            Height = 23
            Color = 15658734
            DataField = 'KdHarga'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            KeyField = 'Hrg'
            ListField = 'Hrg'
            ListSource = MastData.DSMHRGJual
            ParentFont = False
            TabOrder = 7
            OnCloseUp = DBLHargaCloseUp
            OnEnter = DBLHargaEnter
            OnExit = DBLHargaExit
          end
        end
      end
    end
    inherited Panel2: TPanel
      Top = 394
      Color = 13750737
      ParentBackground = False
      ExplicitTop = 394
      inherited btnCancel: TButton
        Left = 732
        ExplicitLeft = 732
      end
    end
  end
end
