inherited inbrgform: Tinbrgform
  Caption = 'Barang Form'
  ClientHeight = 556
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 469
    OnChange = PageControl1Change
    ExplicitHeight = 469
    inherited TabSheet1: TTabSheet
      Caption = 'Browse'
      ExplicitHeight = 441
      inherited DBGrid1: TDBGrid
        Height = 441
        DataSource = MastData.DSMBarang
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'BRG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama1'
            Width = 408
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Jenis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'merek'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stn1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stn2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stn3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Maxi'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Mini'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Isi1'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Isi2'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hpp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hbeli'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hjual1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hjual2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hjual3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lks'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'sup'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'model'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'klink'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'barcode'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'namabar'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'berat'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vol'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'slevel'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'kuali'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'wrn'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'mtf'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'size'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tglu'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lNonkonsinyasi'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lAktif'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cab'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lstatAll'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Rak'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'KdHarga'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hppjual'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'persentjual'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'persentnilai'
            Visible = False
          end>
      end
    end
    object List: TTabSheet
      Caption = 'List'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 393
        Height = 441
        Align = alLeft
        DataSource = MastData.DSMBarang
        DrawingStyle = gdsGradient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnColExit = DBGrid2ColExit
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'BRG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama1'
            Width = 408
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Jenis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gol'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'merek'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stn1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stn2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stn3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Maxi'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Mini'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Isi1'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Isi2'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hpp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hbeli'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hjual1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hjual2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hjual3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lks'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'sup'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'model'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'klink'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'barcode'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'namabar'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'berat'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vol'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'slevel'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'kuali'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'wrn'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'mtf'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'size'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tglu'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lNonkonsinyasi'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lAktif'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cab'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lstatAll'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Rak'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'KdHarga'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'hppjual'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'persentjual'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'persentnilai'
            Visible = False
          end>
      end
      object Panel3: TPanel
        Left = 393
        Top = 0
        Width = 361
        Height = 441
        Align = alClient
        BevelInner = bvRaised
        BevelKind = bkSoft
        BevelOuter = bvLowered
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 4
          Top = 1
          Width = 347
          Height = 154
          Caption = 'Grouping'
          TabOrder = 0
          object Label5: TLabel
            Left = 8
            Top = 65
            Width = 26
            Height = 15
            Caption = 'Type'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 8
            Top = 82
            Width = 44
            Height = 15
            Caption = 'Kualitas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 99
            Width = 36
            Height = 15
            Caption = 'Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 8
            Top = 116
            Width = 27
            Height = 15
            Caption = 'Motif'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 8
            Top = 133
            Width = 24
            Height = 15
            Caption = 'Size'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 96
            Top = 15
            Width = 65
            Height = 17
            DataField = 'NMJenis'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 96
            Top = 31
            Width = 65
            Height = 17
            DataField = 'NMGolongan'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 96
            Top = 48
            Width = 65
            Height = 17
            DataField = 'NMMerek'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 96
            Top = 65
            Width = 65
            Height = 17
            DataField = 'NMType'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 96
            Top = 82
            Width = 65
            Height = 17
            DataField = 'NMKualitas'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 96
            Top = 99
            Width = 65
            Height = 17
            DataField = 'NMWarna'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 96
            Top = 116
            Width = 65
            Height = 17
            DataField = 'NMMotif'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 96
            Top = 133
            Width = 65
            Height = 17
            DataField = 'NMSize'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 48
            Width = 35
            Height = 15
            Caption = 'Merek'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 8
            Top = 15
            Width = 29
            Height = 15
            Caption = 'Jenis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 32
            Width = 54
            Height = 15
            Caption = 'Golongan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 157
          Width = 347
          Height = 96
          Caption = 'Unit'
          TabOrder = 1
          object Label10: TLabel
            Left = 8
            Top = 15
            Width = 49
            Height = 15
            Caption = 'Satuan 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 33
            Width = 49
            Height = 15
            Caption = 'Satuan 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 52
            Width = 49
            Height = 15
            Caption = 'Satuan 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 184
            Top = 15
            Width = 22
            Height = 15
            Caption = 'Isi 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 184
            Top = 33
            Width = 22
            Height = 15
            Caption = 'Isi 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 8
            Top = 71
            Width = 45
            Height = 15
            Caption = 'Minimal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 184
            Top = 71
            Width = 24
            Height = 15
            Caption = 'Max'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 96
            Top = 15
            Width = 65
            Height = 17
            DataField = 'Stn1'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 96
            Top = 33
            Width = 65
            Height = 17
            DataField = 'Stn2'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText11: TDBText
            Left = 96
            Top = 52
            Width = 65
            Height = 17
            DataField = 'Stn3'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 272
            Top = 15
            Width = 65
            Height = 17
            DataField = 'Isi1'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText13: TDBText
            Left = 272
            Top = 33
            Width = 65
            Height = 17
            DataField = 'Isi2'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText14: TDBText
            Left = 96
            Top = 71
            Width = 65
            Height = 17
            DataField = 'Mini'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText15: TDBText
            Left = 272
            Top = 71
            Width = 65
            Height = 17
            DataField = 'Maxi'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object GroupBox3: TGroupBox
          Left = 4
          Top = 254
          Width = 347
          Height = 108
          Caption = 'Harga'
          TabOrder = 2
          object Label19: TLabel
            Left = 8
            Top = 69
            Width = 70
            Height = 15
            Caption = 'Harga Jual 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 8
            Top = 88
            Width = 70
            Height = 15
            Caption = 'Harga Jual 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText18: TDBText
            Left = 96
            Top = 69
            Width = 65
            Height = 17
            DataField = 'hjual2'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText19: TDBText
            Left = 96
            Top = 88
            Width = 65
            Height = 17
            DataField = 'hjual3'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 8
            Top = 15
            Width = 58
            Height = 15
            Caption = 'Harga Beli'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 8
            Top = 33
            Width = 66
            Height = 15
            Caption = 'Jenis Harga'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 8
            Top = 51
            Width = 70
            Height = 15
            Caption = 'Harga Jual 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText17: TDBText
            Left = 96
            Top = 51
            Width = 65
            Height = 17
            DataField = 'hjual1'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText16: TDBText
            Left = 96
            Top = 33
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'NMHRG'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText20: TDBText
            Left = 96
            Top = 15
            Width = 65
            Height = 17
            DataField = 'hbeli'
            DataSource = MastData.DSMBarang
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 519
    ExplicitTop = 519
    inherited btnTambah: TButton
      OnClick = btnTambahClick
    end
    inherited btnEdit: TButton
      OnClick = btnEditClick
    end
    inherited btnDelete: TButton
      OnClick = btnDeleteClick
    end
    inherited btnKeluar: TButton
      Left = 666
      ExplicitLeft = 666
    end
  end
  inherited Panel2: TPanel
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
