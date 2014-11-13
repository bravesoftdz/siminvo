inherited inkbrgform: Tinkbrgform
  Caption = 'Form Barang Konfigurasi'
  ExplicitWidth = 768
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ExplicitWidth = 762
    ExplicitHeight = 351
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 754
      ExplicitHeight = 323
      inherited DBGrid1: TDBGrid
        Width = 375
        Align = alLeft
        DataSource = MastData.DSMKonfBarang
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'BRG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama1'
            Title.Caption = 'Nama'
            Width = 143
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 375
        Top = 0
        Width = 379
        Height = 323
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 2
          Width = 375
          Height = 286
          Align = alClient
          DataSource = MastData.DSMKonfBarangDetail
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
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
              FieldName = 'BRG'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NOUR'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BRGD'
              Width = 303
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STN3'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'QTY'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'HSATUAN'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TGLU'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Cab'
              Visible = False
            end>
        end
        object Panel4: TPanel
          Left = 2
          Top = 288
          Width = 375
          Height = 33
          Align = alBottom
          TabOrder = 1
          object Button1: TButton
            Left = 1
            Top = 2
            Width = 90
            Height = 30
            Hint = 'Tambah Detail Item Konfigurasi'
            Caption = 'F3 = Tambah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 90
            Top = 2
            Width = 90
            Height = 30
            Hint = 'Edit Detail Item Konfigurasi'
            Caption = 'F1 = Edit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 179
            Top = 2
            Width = 90
            Height = 30
            Hint = 'Hapus Detail Item Konfigurasi'
            Caption = 'Del = Delete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = Button3Click
          end
        end
      end
    end
  end
  inherited Panel1: TPanel
    ExplicitTop = 401
    ExplicitWidth = 762
    inherited btnTambah: TButton
      Visible = False
    end
    inherited btnEdit: TButton
      Visible = False
    end
    inherited btnCetak: TButton
      Visible = False
    end
    inherited btnDelete: TButton
      Visible = False
    end
  end
  inherited Panel2: TPanel
    ExplicitWidth = 762
    inherited EPencarian: TEdit
      Text = ''
    end
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
