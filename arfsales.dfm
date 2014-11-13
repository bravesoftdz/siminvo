inherited arfsalesform: Tarfsalesform
  Caption = 'Form Transaksi Master Sales'
  ClientHeight = 192
  ClientWidth = 404
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 412
  ExplicitHeight = 226
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 404
    Height = 192
    ExplicitWidth = 404
    ExplicitHeight = 192
    inherited PageControl1: TPageControl
      Width = 396
      Height = 143
      ExplicitWidth = 396
      ExplicitHeight = 143
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 388
        ExplicitHeight = 115
        object Label1: TLabel
          Left = 0
          Top = 8
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
        object Label2: TLabel
          Left = 0
          Top = 33
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
          Left = 0
          Top = 58
          Width = 43
          Height = 16
          Caption = 'Persen'
          FocusControl = DBEProsen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 0
          Top = 83
          Width = 48
          Height = 16
          Caption = 'Cabang'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBESales: TDBEdit
          Left = 67
          Top = 5
          Width = 134
          Height = 23
          Color = 15658734
          DataField = 'Sales'
          DataSource = MastData.DSMARSales
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBENama: TDBEdit
          Left = 67
          Top = 30
          Width = 300
          Height = 23
          Color = 15658734
          DataField = 'Nama'
          DataSource = MastData.DSMARSales
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEProsen: TDBEdit
          Left = 67
          Top = 55
          Width = 75
          Height = 23
          BiDiMode = bdRightToLeft
          Color = 15658734
          DataField = 'Persen'
          DataSource = MastData.DSMARSales
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 242
          Top = 80
          Width = 54
          Height = 23
          Color = 13750737
          DataField = 'Company'
          DataSource = MastData.DSMARSales
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object DBLCabang: TDBLookupComboBox
          Left = 67
          Top = 80
          Width = 174
          Height = 23
          Color = 15658734
          DataField = 'Company'
          DataSource = MastData.DSMARSales
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          KeyField = 'cab'
          ListField = 'Ket'
          ListSource = MastData.DSMCabang
          ParentFont = False
          TabOrder = 3
        end
      end
      inherited TabSheet2: TTabSheet
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 388
        ExplicitHeight = 115
      end
    end
    inherited Panel2: TPanel
      Top = 145
      Width = 396
      ExplicitTop = 145
      ExplicitWidth = 396
      inherited btnCancel: TButton
        Left = 317
        ExplicitLeft = 317
      end
      inherited btnsimpan: TButton
        Left = 242
        ExplicitLeft = 242
      end
    end
  end
end
