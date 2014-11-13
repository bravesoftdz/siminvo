inherited apsupForm: TapsupForm
  Caption = 'Form Supplier'
  ExplicitWidth = 768
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 754
      ExplicitHeight = 323
      inherited DBGrid1: TDBGrid
        Width = 401
        Align = alLeft
        DataSource = MastData.DSMAPSup
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'SUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama'
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AL1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AL2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Telp'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Perso'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NPWP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Term'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Klink'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'cab'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'val'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TglU'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'wil'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Fax'
            Visible = False
          end>
      end
      object Panel3: TPanel
        Left = 401
        Top = 0
        Width = 353
        Height = 323
        Align = alClient
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvSpace
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 2
          Top = 2
          Width = 345
          Height = 315
          Align = alClient
          Caption = 'Information'
          TabOrder = 0
          object DBText1: TDBText
            Left = 123
            Top = 24
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'AL1'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 8
            Top = 24
            Width = 38
            Height = 15
            Caption = 'Alamat'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 123
            Top = 52
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'AL2'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 80
            Width = 46
            Height = 15
            Caption = 'No. Telp'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 138
            Width = 83
            Height = 15
            Caption = 'Contact Person'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 196
            Width = 36
            Height = 15
            Caption = 'NPWP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 8
            Top = 167
            Width = 24
            Height = 15
            Caption = 'TOP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 254
            Width = 43
            Height = 15
            Caption = 'Cabang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 8
            Top = 225
            Width = 34
            Height = 15
            Caption = 'Valuta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 8
            Top = 283
            Width = 43
            Height = 15
            Caption = 'Wilayah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 109
            Width = 42
            Height = 15
            Caption = 'No. Fax'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 123
            Top = 81
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'Telp'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 123
            Top = 139
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'Perso'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 123
            Top = 196
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'NPWP'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 134
            Top = 167
            Width = 54
            Height = 15
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'Term'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 123
            Top = 254
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'NMCabang'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 123
            Top = 225
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'NMValuta'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 123
            Top = 283
            Width = 54
            Height = 15
            AutoSize = True
            DataField = 'NMWilayah'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 123
            Top = 110
            Width = 62
            Height = 15
            AutoSize = True
            DataField = 'Fax'
            DataSource = MastData.DSMAPSup
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 193
            Top = 167
            Width = 23
            Height = 15
            Caption = 'Hari'
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
    inherited btnTambah: TButton
      OnClick = btnTambahClick
    end
    inherited btnEdit: TButton
      OnClick = btnEditClick
    end
    inherited btnDelete: TButton
      OnClick = btnDeleteClick
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
