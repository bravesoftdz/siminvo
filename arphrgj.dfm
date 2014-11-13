inherited arphrgjform: Tarphrgjform
  Caption = 'Proses Perubahan Harga Jual'
  ClientHeight = 358
  ClientWidth = 630
  ExplicitWidth = 638
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 630
    Height = 358
    inherited PageControl1: TPageControl
      Width = 622
      Height = 309
      ExplicitHeight = 404
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 802
        ExplicitHeight = 376
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 147
          Height = 16
          Caption = 'Perubahan Berdasarkan'
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
        object Label5: TLabel
          Left = 3
          Top = 173
          Width = 78
          Height = 16
          Caption = 'Jenis Proses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 3
          Top = 197
          Width = 84
          Height = 16
          Caption = 'Kenaikan Dari'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 221
          Width = 27
          Height = 16
          Caption = 'Nilai'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 3
          Top = 247
          Width = 72
          Height = 16
          Caption = 'Pembulatan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblHarga: TLabel
          Left = 379
          Top = 35
          Width = 52
          Height = 16
          Caption = 'lblHarga'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox1: TCheckBox
          Left = 3
          Top = 60
          Width = 110
          Height = 17
          Caption = 'Semua Barang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 85
          Width = 606
          Height = 79
          Caption = 'Pencarian Barang'
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 23
            Width = 64
            Height = 16
            Caption = 'Kode Awal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 50
            Width = 65
            Height = 16
            Caption = 'Kode Akhir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblAwal: TLabel
            Left = 408
            Top = 23
            Width = 43
            Height = 16
            Caption = 'lblAwal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblAkhir: TLabel
            Left = 408
            Top = 50
            Width = 44
            Height = 16
            Caption = 'lblAkhir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EdtAwal: TEdit
            Left = 173
            Top = 21
            Width = 201
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'Edit3'
          end
          object EdtAkhir: TEdit
            Left = 173
            Top = 47
            Width = 201
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'Edit3'
          end
          object btnAwal: TButton
            Left = 374
            Top = 21
            Width = 32
            Height = 25
            Caption = '...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object btnAkhir: TButton
            Left = 374
            Top = 47
            Width = 33
            Height = 25
            Caption = '...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
        object cbRubah: TComboBox
          Left = 176
          Top = 7
          Width = 145
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '--- Silahkan Pilih ---'
          Items.Strings = (
            'Silahkan Pilih'
            'Barang'
            'Jenis'
            'Golongan'
            'Merek')
        end
        object cbProses: TComboBox
          Left = 176
          Top = 170
          Width = 185
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = '--- Silahkan Pilih ---'
          Items.Strings = (
            '--- Silahkan Pilih ---'
            'Berdasarkan Nilai'
            'Berdasarkan Prosentase')
        end
        object cbNaik: TComboBox
          Left = 176
          Top = 194
          Width = 185
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 4
          Text = '--- Silahkan Pilih ---'
          Items.Strings = (
            '--- Silahkan Pilih ---'
            'HPP'
            'Harga Jual')
        end
        object EdtNilai: TEdit
          Left = 176
          Top = 218
          Width = 169
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'EdtNilai'
        end
        object EdtBulat: TEdit
          Left = 176
          Top = 244
          Width = 169
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = 'EdtBulat'
        end
        object EdtHarga: TEdit
          Left = 176
          Top = 32
          Width = 201
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = 'EdtHarga'
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
      Top = 311
      Width = 622
      inherited btnCancel: TButton
        Left = 543
      end
      inherited btnsimpan: TButton
        Left = 468
        Caption = 'Proses'
      end
    end
  end
end
