inherited inbrggform: Tinbrggform
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form Keterangan Gambar'
  ClientHeight = 438
  ClientWidth = 446
  ExplicitWidth = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 446
    Height = 351
    inherited TabSheet1: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 438
        Height = 323
        DataSource = MastData.DSMMBRGG
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Brg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama1'
            Title.Caption = 'Barang'
            Width = 206
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ket'
            Width = 203
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gbr'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tglu'
            Visible = False
          end>
      end
    end
  end
  inherited Panel1: TPanel
    Top = 401
    Width = 446
    inherited btnTambah: TButton
      Top = 4
      Height = 27
      OnClick = btnTambahClick
      ExplicitTop = 4
      ExplicitHeight = 27
    end
    inherited btnEdit: TButton
      Top = 4
      Height = 27
      OnClick = btnEditClick
      ExplicitTop = 4
      ExplicitHeight = 27
    end
    inherited btnCetak: TButton
      Top = 4
      Height = 27
      ExplicitTop = 4
      ExplicitHeight = 27
    end
    inherited btnDelete: TButton
      Top = 4
      Height = 27
      OnClick = btnDeleteClick
      ExplicitTop = 4
      ExplicitHeight = 27
    end
    inherited btnKeluar: TButton
      Left = 353
      Top = 4
      Width = 88
      Height = 27
      ExplicitLeft = 353
      ExplicitTop = 4
      ExplicitWidth = 88
      ExplicitHeight = 27
    end
  end
  inherited Panel2: TPanel
    Width = 446
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
