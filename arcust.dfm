inherited arcustForm: TarcustForm
  Caption = 'Form Customer'
  Position = poDefaultPosOnly
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
        Width = 400
        DataSource = MastData.DSMARCust
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'Cust'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama'
            Width = 305
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Al1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Al2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Al3'
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
            FieldName = 'Npwp'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Term'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Limit'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Pkp'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Wil'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Klink'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Cab'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Sales'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Val'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'KdHarga'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Alkirim1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Alkirim2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Alkirim3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DiscNota1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DiscNota2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DiscItem1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DiscItem2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Blacklist'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SaldoS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Email'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Web'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Hp'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'KetBlack'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BolehOver'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TglU'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Member'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Validdate'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'fax'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'GiroM'
            Visible = False
          end>
      end
      object Panel3: TPanel
        Left = 400
        Top = 0
        Width = 354
        Height = 323
        Align = alRight
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 42
          Height = 16
          Caption = 'Alamat'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 115
          Top = 8
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'Al1'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 115
          Top = 33
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'Al2'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 115
          Top = 58
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'Al3'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 84
          Width = 52
          Height = 16
          Caption = 'No. Telp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 109
          Width = 46
          Height = 16
          Caption = 'No. Fax'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 185
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
        object Label6: TLabel
          Left = 8
          Top = 134
          Width = 38
          Height = 16
          Caption = 'Harga'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 159
          Width = 28
          Height = 16
          Caption = 'TOP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 115
          Top = 84
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'Telp'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 115
          Top = 109
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'fax'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 115
          Top = 185
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'NMValuta'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 115
          Top = 134
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'NMHarga'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 115
          Top = 159
          Width = 47
          Height = 15
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Term'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 235
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
        object Label9: TLabel
          Left = 8
          Top = 210
          Width = 35
          Height = 16
          Caption = 'Sales'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 261
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
        object Label12: TLabel
          Left = 164
          Top = 159
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
        object DBText9: TDBText
          Left = 115
          Top = 210
          Width = 47
          Height = 15
          AutoSize = True
          DataField = 'NMSales'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 115
          Top = 235
          Width = 54
          Height = 15
          AutoSize = True
          DataField = 'NMCabang'
          DataSource = MastData.DSMARCust
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 115
          Top = 261
          Width = 54
          Height = 15
          AutoSize = True
          DataField = 'NMWilayah'
          DataSource = MastData.DSMARCust
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
