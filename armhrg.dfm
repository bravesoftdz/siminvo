inherited armhrgForm: TarmhrgForm
  Caption = 'Form Setting Master Harga Penjualan'
  ClientWidth = 443
  ExplicitWidth = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 443
    inherited TabSheet1: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 435
        DataSource = MastData.DSMARHrg
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'Hrg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ket'
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Val'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tglu'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NamaVal'
            Visible = True
          end>
      end
    end
  end
  inherited Panel1: TPanel
    Width = 443
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
      Left = 347
      ExplicitLeft = 347
    end
  end
  inherited Panel2: TPanel
    Width = 443
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
