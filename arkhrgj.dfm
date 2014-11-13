inherited arkhrgjform: Tarkhrgjform
  Caption = 'Setting Harga Jual Perkode'
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 768
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Top = 49
    Height = 352
    ExplicitTop = 49
    ExplicitHeight = 352
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 754
      ExplicitHeight = 324
      inherited DBGrid1: TDBGrid
        Height = 221
      end
      object Panel3: TPanel
        Left = 0
        Top = 221
        Width = 754
        Height = 103
        Align = alBottom
        BevelInner = bvSpace
        BevelKind = bkFlat
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 4
          Width = 84
          Height = 16
          Caption = 'Nama Barang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 130
          Top = 51
          Width = 64
          Height = 16
          Caption = 'Harga Beli'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 360
          Top = 51
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
          Left = 443
          Top = 51
          Width = 58
          Height = 16
          Caption = 'Stn Besar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 543
          Top = 51
          Width = 86
          Height = 16
          Caption = 'Stn Menengah'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 650
          Top = 51
          Width = 51
          Height = 16
          Caption = 'Stn Kecil'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdtNama: TEdit
          Left = 8
          Top = 24
          Width = 729
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'EdtNama'
        end
        object EdtHrgBeli: TEdit
          Left = 8
          Top = 70
          Width = 187
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Edit1'
        end
        object EdtHpp: TEdit
          Left = 201
          Top = 70
          Width = 187
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'Edit1'
        end
        object EdtStn1: TEdit
          Left = 394
          Top = 70
          Width = 67
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Edit1'
        end
        object Edtisi1: TEdit
          Left = 463
          Top = 70
          Width = 67
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'Edit1'
        end
        object EdtStn2: TEdit
          Left = 532
          Top = 70
          Width = 67
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'Edit1'
        end
        object EdtIsi2: TEdit
          Left = 601
          Top = 70
          Width = 67
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = 'Edit1'
        end
        object EdtStn3: TEdit
          Left = 670
          Top = 70
          Width = 67
          Height = 24
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = 'Edit1'
        end
      end
      object pnlLoad: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 221
        Align = alClient
        BevelInner = bvSpace
        BevelKind = bkFlat
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = -1
        ExplicitTop = 3
        DesignSize = (
          750
          217)
        object Label8: TLabel
          Left = 8
          Top = 10
          Width = 127
          Height = 16
          Caption = 'Urutkan Berdasarkan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbRubah: TComboBox
          Left = 181
          Top = 7
          Width = 145
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '--- Silahkan Pilih ---'
          Items.Strings = (
            'Silahkan Pilih'
            'Barang'
            'Jenis'
            'Golongan'
            'Merek')
        end
        object cekBarang: TCheckBox
          Left = 8
          Top = 45
          Width = 110
          Height = 17
          Caption = 'Semua Barang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 68
          Width = 729
          Height = 79
          Caption = 'Pencarian Barang'
          TabOrder = 2
          object Label9: TLabel
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
          object Label10: TLabel
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
            Height = 23
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
            Height = 23
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
        object btnsimpan: TButton
          Left = 181
          Top = 153
          Width = 75
          Height = 30
          Anchors = [akRight, akBottom]
          Caption = 'Load'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object btnCancel: TButton
          Left = 256
          Top = 153
          Width = 75
          Height = 30
          Anchors = [akRight, akBottom]
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  inherited Panel1: TPanel
    inherited btnTambah: TButton
      Caption = 'F3 = Massal'
      OnClick = btnTambahClick
    end
    inherited btnEdit: TButton
      Caption = 'F1 = Load'
    end
    inherited btnCetak: TButton
      Caption = 'F5 = Load'
    end
    inherited btnDelete: TButton
      Caption = 'F7 = Cetak'
    end
  end
  inherited Panel2: TPanel
    Height = 49
    ExplicitHeight = 49
    inherited Label1: TLabel
      Width = 84
      Caption = 'Jenis Harga'
      ExplicitWidth = 84
    end
    object lblHarga: TLabel [1]
      Left = 190
      Top = 15
      Width = 70
      Height = 16
      Caption = 'Pencarian'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited EPencarian: TEdit
      Left = 92
      Width = 70
      ExplicitLeft = 92
      ExplicitWidth = 70
    end
    inherited btnCari: TButton
      Left = 162
      Top = 12
      Width = 27
      Caption = '...'
      ExplicitLeft = 162
      ExplicitTop = 12
      ExplicitWidth = 27
    end
    inherited btnRefresh: TButton
      Left = 674
      Top = 11
      Visible = False
      ExplicitLeft = 674
      ExplicitTop = 11
    end
  end
end
