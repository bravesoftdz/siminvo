inherited arfmhrgform: Tarfmhrgform
  Caption = 'Form Transaksi Data Harga'
  ClientHeight = 160
  ClientWidth = 438
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 446
  ExplicitHeight = 194
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 438
    Height = 160
    inherited PageControl1: TPageControl
      Width = 430
      Height = 111
      ExplicitHeight = 404
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 802
        ExplicitHeight = 376
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 73
          Height = 16
          Caption = 'Kode Harga'
          FocusControl = DBEHrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 33
          Width = 69
          Height = 16
          Caption = 'Keterangan'
          FocusControl = DBEKet
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 58
          Width = 38
          Height = 16
          Caption = 'Valuta'
          FocusControl = DBEVal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEHrg: TDBEdit
          Left = 89
          Top = 5
          Width = 100
          Height = 23
          Color = 15658734
          DataField = 'Hrg'
          DataSource = MastData.DSMARHrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEKet: TDBEdit
          Left = 89
          Top = 30
          Width = 297
          Height = 23
          Color = 15658734
          DataField = 'Ket'
          DataSource = MastData.DSMARHrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEVal: TDBEdit
          Left = 235
          Top = 55
          Width = 60
          Height = 23
          Color = 13750737
          DataField = 'Val'
          DataSource = MastData.DSMARHrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBLValuta: TDBLookupComboBox
          Left = 89
          Top = 55
          Width = 145
          Height = 23
          Color = 15658734
          DataField = 'Val'
          DataSource = MastData.DSMARHrg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'Val'
          ListField = 'Ket'
          ListSource = MastData.DSMARVal
          ParentFont = False
          TabOrder = 3
          OnCloseUp = DBLValutaCloseUp
          OnEnter = DBLValutaEnter
          OnExit = DBLValutaExit
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
      Top = 113
      Width = 430
      inherited btnCancel: TButton
        Left = 351
      end
      inherited btnsimpan: TButton
        Left = 276
      end
    end
  end
end
