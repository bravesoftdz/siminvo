inherited ingdgform: Tingdgform
  Caption = 'Form Gudang'
  ClientWidth = 454
  ExplicitWidth = 460
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 454
    inherited TabSheet1: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 446
        DataSource = MastData.DSMGudang
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Gdg'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama'
            Width = 369
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TglU'
            Visible = False
          end>
      end
    end
  end
  inherited Panel1: TPanel
    Width = 454
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
      Left = 360
      ExplicitLeft = 360
    end
  end
  inherited Panel2: TPanel
    Width = 454
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
