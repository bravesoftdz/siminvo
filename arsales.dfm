inherited arsalesform: Tarsalesform
  Caption = 'Form Daftar Master Sales'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = MastData.DSMARSales
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'Sales'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama'
            Width = 386
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Persen'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Company'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tglu'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NamaCabang'
            Width = 231
            Visible = True
          end>
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
