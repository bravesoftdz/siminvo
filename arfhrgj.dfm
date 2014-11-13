inherited arfhrgjform: Tarfhrgjform
  Caption = 'Form Setting Harga Barang Per Jenis Harga'
  ClientHeight = 325
  ClientWidth = 461
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 469
  ExplicitHeight = 359
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 461
    Height = 325
    ExplicitWidth = 461
    ExplicitHeight = 325
    inherited PageControl1: TPageControl
      Width = 453
      Height = 276
      ExplicitWidth = 453
      ExplicitHeight = 276
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 445
        ExplicitHeight = 248
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 79
          Height = 16
          Caption = 'Kode Barang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblNama: TLabel
          Left = 152
          Top = 38
          Width = 47
          Height = 15
          Caption = 'lblNama'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 66
          Width = 73
          Height = 16
          Caption = 'Jenis Harga'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDesc: TLabel
          Left = 152
          Top = 87
          Width = 75
          Height = 15
          Caption = 'lblDescription'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 115
          Width = 28
          Height = 16
          Caption = 'HPP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 141
          Width = 69
          Height = 16
          Caption = 'Prosentase'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 205
          Top = 139
          Width = 11
          Height = 15
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 167
          Width = 90
          Height = 16
          Caption = 'Harga Terkecil'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 16
          Top = 193
          Width = 105
          Height = 16
          Caption = 'Harga Menengah'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 16
          Top = 219
          Width = 94
          Height = 16
          Caption = 'Harga Tertinggi'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EDTKodeBrg: TEdit
          Left = 152
          Top = 13
          Width = 281
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'EDTKodeBrg'
        end
        object cbHarga: TComboBox
          Left = 152
          Top = 60
          Width = 81
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'cbHarga'
          OnEnter = cbHargaEnter
          OnSelect = cbHargaSelect
        end
        object EDTHpp: TEdit
          Left = 152
          Top = 109
          Width = 199
          Height = 23
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'EDTHpp'
        end
        object edtPersen: TEdit
          Left = 152
          Top = 135
          Width = 47
          Height = 23
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'edtPersen'
        end
        object EDTNPersen: TEdit
          Left = 222
          Top = 136
          Width = 211
          Height = 23
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'EDTNPersen'
        end
        object EDTHrgKecil: TEdit
          Left = 152
          Top = 162
          Width = 281
          Height = 23
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'EDTHrgKecil'
          OnExit = EDTHrgKecilExit
          OnKeyDown = EDTHrgKecilKeyDown
        end
        object EDTHrgMenengah: TEdit
          Left = 152
          Top = 189
          Width = 281
          Height = 23
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = 'EDTHrgMenengah'
          OnExit = EDTHrgMenengahExit
          OnKeyDown = EDTHrgMenengahKeyDown
        end
        object EdtHrgTinggi: TEdit
          Left = 152
          Top = 216
          Width = 281
          Height = 23
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = 'EdtHrgTinggi'
        end
      end
      inherited TabSheet2: TTabSheet
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 445
        ExplicitHeight = 248
      end
    end
    inherited Panel2: TPanel
      Top = 278
      Width = 453
      ExplicitTop = 278
      ExplicitWidth = 453
      inherited btnCancel: TButton
        Left = 374
        ExplicitLeft = 374
      end
      inherited btnsimpan: TButton
        Left = 299
        ExplicitLeft = 299
      end
    end
  end
end
