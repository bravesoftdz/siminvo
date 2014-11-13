inherited arfcustForm: TarfcustForm
  ActiveControl = DBECustID
  Caption = 'Form Transaksi Master Customer'
  ClientHeight = 562
  ClientWidth = 869
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitLeft = -140
  ExplicitTop = -116
  ExplicitWidth = 877
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 869
    Height = 562
    ExplicitWidth = 869
    ExplicitHeight = 562
    inherited PageControl1: TPageControl
      Width = 861
      Height = 513
      ExplicitWidth = 861
      ExplicitHeight = 513
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 853
        ExplicitHeight = 485
        object Label1: TLabel
          Left = 3
          Top = 6
          Width = 73
          Height = 16
          Caption = 'Customer ID'
          FocusControl = DBECustID
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 33
          Width = 97
          Height = 16
          Caption = 'Nama Customer'
          FocusControl = DBENama
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBECustID: TDBEdit
          Left = 129
          Top = 3
          Width = 134
          Height = 23
          CharCase = ecUpperCase
          DataField = 'Cust'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBECustIDKeyDown
        end
        object DBENama: TDBEdit
          Left = 129
          Top = 30
          Width = 394
          Height = 23
          CharCase = ecUpperCase
          DataField = 'Nama'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBENamaKeyDown
        end
        object tc1: TTabControl
          Left = 2
          Top = 59
          Width = 847
          Height = 423
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 2
          TabPosition = tpBottom
          Tabs.Strings = (
            'Info Standard'
            'Info Person'
            'Info Rekening')
          TabIndex = 0
          OnChange = tc1Change
          DesignSize = (
            847
            423)
          object Panel3: TPanel
            Left = 8
            Top = 8
            Width = 829
            Height = 112
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelKind = bkFlat
            TabOrder = 0
            DesignSize = (
              825
              108)
            object Label3: TLabel
              Left = 8
              Top = 5
              Width = 42
              Height = 16
              Caption = 'Alamat'
              FocusControl = DBENama
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 423
              Top = 5
              Width = 74
              Height = 16
              Caption = 'Alamat Kirim'
              FocusControl = DBENama
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEAlamat1: TDBEdit
              Left = 8
              Top = 24
              Width = 370
              Height = 23
              Anchors = [akLeft, akTop, akRight, akBottom]
              CharCase = ecUpperCase
              DataField = 'Al1'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEAlamat2: TDBEdit
              Left = 8
              Top = 49
              Width = 370
              Height = 23
              Anchors = [akLeft, akTop, akRight, akBottom]
              CharCase = ecUpperCase
              DataField = 'Al2'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEAlamat3: TDBEdit
              Left = 8
              Top = 76
              Width = 370
              Height = 23
              Anchors = [akLeft, akTop, akRight, akBottom]
              CharCase = ecUpperCase
              DataField = 'Al3'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEAlamatKirim1: TDBEdit
              Left = 424
              Top = 24
              Width = 370
              Height = 23
              Anchors = [akLeft, akTop, akRight, akBottom]
              CharCase = ecUpperCase
              DataField = 'Alkirim1'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEAlamatKirim1Enter
            end
            object DBEAlamatKirim2: TDBEdit
              Left = 424
              Top = 49
              Width = 370
              Height = 23
              Anchors = [akLeft, akTop, akRight, akBottom]
              CharCase = ecUpperCase
              DataField = 'Alkirim2'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEAlamatKirim3: TDBEdit
              Left = 424
              Top = 76
              Width = 370
              Height = 23
              Anchors = [akLeft, akTop, akRight, akBottom]
              CharCase = ecUpperCase
              DataField = 'Alkirim3'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
          object Panel4: TPanel
            Left = 8
            Top = 121
            Width = 829
            Height = 135
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelKind = bkFlat
            TabOrder = 1
            object Label5: TLabel
              Left = 8
              Top = 8
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
            object Label6: TLabel
              Left = 8
              Top = 32
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
            object Label7: TLabel
              Left = 8
              Top = 56
              Width = 95
              Height = 16
              Caption = 'No. Handphone'
              FocusControl = DBEHP
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 8
              Top = 80
              Width = 35
              Height = 16
              Caption = 'Sales'
              FocusControl = DBESales
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 8
              Top = 106
              Width = 49
              Height = 16
              Caption = 'Wilayah'
              FocusControl = DBEWilayah
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 424
              Top = 6
              Width = 65
              Height = 16
              Caption = 'Jns. Harga'
              FocusControl = DBEHarga
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 424
              Top = 32
              Width = 59
              Height = 16
              Caption = 'Disc Nota'
              FocusControl = DBEDisc1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 547
              Top = 32
              Width = 12
              Height = 16
              Caption = '%'
              FocusControl = DBENota2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 424
              Top = 56
              Width = 55
              Height = 16
              Caption = 'Disc Item'
              FocusControl = DBEItem1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 547
              Top = 56
              Width = 12
              Height = 16
              Caption = '%'
              FocusControl = DBEItem2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 424
              Top = 80
              Width = 28
              Height = 16
              Caption = 'TOP'
              FocusControl = DBETOP
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 424
              Top = 106
              Width = 64
              Height = 16
              Caption = 'Kredit Limit'
              FocusControl = DBELimit
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 565
              Top = 80
              Width = 32
              Height = 16
              Caption = '/ Hari'
              FocusControl = DBETOP
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBETelp: TDBEdit
              Left = 116
              Top = 3
              Width = 150
              Height = 23
              DataField = 'Telp'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBETelpKeyPress
            end
            object DBEFax: TDBEdit
              Left = 116
              Top = 28
              Width = 150
              Height = 23
              DataField = 'fax'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyPress = DBETelpKeyPress
            end
            object DBEHP: TDBEdit
              Left = 116
              Top = 53
              Width = 150
              Height = 23
              DataField = 'Hp'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnKeyPress = DBETelpKeyPress
            end
            object DBESales: TDBEdit
              Left = 187
              Top = 78
              Width = 215
              Height = 23
              Color = 13750737
              DataField = 'NMSales'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object DBEWilayah: TDBEdit
              Left = 187
              Top = 103
              Width = 215
              Height = 23
              Color = 13750737
              DataField = 'Nama'
              DataSource = MastData.DSMWilayah
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
            end
            object DBLSales: TDBLookupComboBox
              Left = 116
              Top = 78
              Width = 69
              Height = 23
              DataField = 'Sales'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              KeyField = 'Sales'
              ListField = 'Sales'
              ListSource = MastData.DSMARSales
              ParentFont = False
              TabOrder = 8
              OnEnter = DBLSalesEnter
            end
            object DBLWilayah: TDBLookupComboBox
              Left = 116
              Top = 103
              Width = 69
              Height = 23
              DataField = 'Wil'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              KeyField = 'Wil'
              ListField = 'Wil'
              ListSource = MastData.DSMWilayah
              ParentFont = False
              TabOrder = 10
              OnEnter = DBLWilayahEnter
            end
            object DBEHarga: TDBEdit
              Left = 543
              Top = 3
              Width = 222
              Height = 23
              Color = 13750737
              DataField = 'NMHarga'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
            end
            object DBEDisc1: TDBEdit
              Left = 493
              Top = 28
              Width = 48
              Height = 23
              DataField = 'DiscNota1'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnKeyPress = DBETelpKeyPress
            end
            object DBENota2: TDBEdit
              Left = 568
              Top = 27
              Width = 150
              Height = 23
              BiDiMode = bdRightToLeft
              DataField = 'DiscNota2'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 4
              OnKeyPress = DBETelpKeyPress
            end
            object DBEItem1: TDBEdit
              Left = 493
              Top = 53
              Width = 48
              Height = 23
              DataField = 'DiscItem1'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnKeyPress = DBETelpKeyPress
            end
            object DBEItem2: TDBEdit
              Left = 568
              Top = 53
              Width = 150
              Height = 23
              BiDiMode = bdRightToLeft
              DataField = 'DiscItem2'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 7
              OnKeyPress = DBETelpKeyPress
            end
            object DBLHarga: TDBLookupComboBox
              Left = 493
              Top = 3
              Width = 48
              Height = 23
              DataField = 'KdHarga'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              KeyField = 'Hrg'
              ListField = 'Hrg'
              ListSource = MastData.DSMARHrg
              ParentFont = False
              TabOrder = 1
              OnEnter = DBLHargaEnter
            end
            object DBETOP: TDBEdit
              Left = 493
              Top = 78
              Width = 66
              Height = 23
              DataField = 'Term'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnKeyPress = DBETelpKeyPress
            end
            object DBELimit: TDBEdit
              Left = 493
              Top = 103
              Width = 156
              Height = 23
              BiDiMode = bdRightToLeft
              DataField = 'Limit'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 11
              OnKeyPress = DBETelpKeyPress
            end
          end
          object Panel5: TPanel
            Left = 8
            Top = 258
            Width = 829
            Height = 140
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelKind = bkFlat
            TabOrder = 2
            object Label18: TLabel
              Left = 8
              Top = 8
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
            object Label21: TLabel
              Left = 8
              Top = 78
              Width = 82
              Height = 16
              Caption = 'Ket. Black List'
              FocusControl = DBEKeterangan
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 8
              Top = 105
              Width = 73
              Height = 16
              Caption = 'Kode Valuta'
              FocusControl = DBEValuta
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 424
              Top = 6
              Width = 73
              Height = 16
              Caption = 'Saldo Kredit'
              FocusControl = DBESaldo
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 424
              Top = 32
              Width = 96
              Height = 16
              Caption = 'Sal. GR. Mundur'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 424
              Top = 78
              Width = 34
              Height = 16
              Caption = 'Email'
              FocusControl = DBEEmail
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 424
              Top = 105
              Width = 73
              Height = 16
              Caption = 'Home Page'
              FocusControl = DBEWeb
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBENPWP: TDBEdit
              Left = 116
              Top = 3
              Width = 150
              Height = 23
              DataField = 'Telp'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEKeterangan: TDBEdit
              Left = 116
              Top = 75
              Width = 286
              Height = 23
              DataField = 'KetBlack'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEValuta: TDBEdit
              Left = 187
              Top = 102
              Width = 215
              Height = 23
              Color = 13750737
              DataField = 'NMValuta'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object DBLValuta: TDBLookupComboBox
              Left = 116
              Top = 102
              Width = 69
              Height = 23
              DataField = 'Val'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              KeyField = 'Val'
              ListField = 'Val'
              ListSource = MastData.DSMARVal
              ParentFont = False
              TabOrder = 5
              OnEnter = DBLValutaEnter
            end
            object DBESaldo: TDBEdit
              Left = 533
              Top = 2
              Width = 222
              Height = 23
              BiDiMode = bdRightToLeft
              Color = 13750737
              DataField = 'Saldo'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 8
            end
            object DBEGiro: TDBEdit
              Left = 533
              Top = 28
              Width = 222
              Height = 23
              BiDiMode = bdRightToLeft
              Color = 13750737
              DataField = 'DiscNota2'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 9
            end
            object DBEEmail: TDBEdit
              Left = 533
              Top = 75
              Width = 272
              Height = 23
              BiDiMode = bdLeftToRight
              DataField = 'Email'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 4
            end
            object DBCPKP: TDBCheckBox
              Left = 8
              Top = 31
              Width = 123
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = 'PKP / Non PKP        '
              DataField = 'Pkp'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCBlackList: TDBCheckBox
              Left = 8
              Top = 55
              Width = 123
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = 'Black List                '
              DataField = 'Blacklist'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCOver: TDBCheckBox
              Left = 424
              Top = 55
              Width = 123
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = 'Boleh Over Limit   '
              DataField = 'BolehOver'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 10
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBEWeb: TDBEdit
              Left = 533
              Top = 102
              Width = 272
              Height = 23
              DataField = 'Web'
              DataSource = MastData.DSMARCust
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
          end
          object pnlPerson: TPanel
            Left = -247
            Top = 3
            Width = 829
            Height = 390
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelKind = bkFlat
            TabOrder = 3
            Visible = False
            object DBGrid1: TDBGrid
              Left = 7
              Top = 2
              Width = 810
              Height = 341
              DataSource = DSVTPerson
              DrawingStyle = gdsGradient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnKeyDown = DBGrid1KeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Contac'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nama'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Jabatan'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Alamat'
                  Visible = True
                end>
            end
            object DBNavigator1: TDBNavigator
              Left = 7
              Top = 349
              Width = 240
              Height = 25
              DataSource = DSVTPerson
              TabOrder = 1
            end
          end
          object pnlRekening: TPanel
            Left = -238
            Top = 288
            Width = 829
            Height = 390
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelKind = bkFlat
            TabOrder = 4
            Visible = False
            object DBGrid2: TDBGrid
              Left = 8
              Top = 2
              Width = 810
              Height = 344
              DataSource = DSVTRekening
              DrawingStyle = gdsGradient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnKeyDown = DBGrid2KeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Bank'
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'norek'
                  Width = 234
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cust'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Ket'
                  Width = 374
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tglU'
                  Visible = False
                end>
            end
            object DBNavigator2: TDBNavigator
              Left = 8
              Top = 352
              Width = 240
              Height = 25
              DataSource = MastData.DSMARCustRek
              TabOrder = 1
            end
          end
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Person'
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 853
        ExplicitHeight = 485
      end
    end
    inherited Panel2: TPanel
      Top = 515
      Width = 861
      ExplicitTop = 515
      ExplicitWidth = 861
      inherited btnCancel: TButton
        Left = 782
        ExplicitLeft = 782
      end
      inherited btnsimpan: TButton
        Left = 707
        ExplicitLeft = 707
      end
    end
  end
  object vtPerson: TVirtualTable
    FieldDefs = <
      item
        Name = 'Contac'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nama'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Jabatan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Alamat'
        DataType = ftString
        Size = 20
      end>
    Left = 320
    Top = 40
    Data = {
      030004000600436F6E74616301000A000000000004004E616D61010032000000
      000007004A61626174616E01001400000000000600416C616D61740100140000
      000000000000000000}
    object vtPersonContac: TStringField
      FieldName = 'Contac'
      Required = True
      Size = 10
    end
    object vtPersonNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object vtPersonJabatan: TStringField
      FieldName = 'Jabatan'
      Size = 50
    end
    object vtPersonAlamat: TStringField
      FieldName = 'Alamat'
      Size = 50
    end
  end
  object vtRekening: TVirtualTable
    Left = 392
    Top = 40
    Data = {03000000000000000000}
    object vtRekeningnorek: TStringField
      FieldName = 'norek'
      Size = 50
    end
    object vtRekeningKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object vtRekeningBank: TStringField
      FieldName = 'Bank'
      Size = 10
    end
  end
  object DSVTPerson: TDataSource
    DataSet = vtPerson
    Left = 320
    Top = 8
  end
  object DSVTRekening: TDataSource
    DataSet = vtRekening
    Left = 392
    Top = 8
  end
end
