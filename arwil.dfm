inherited arwilform: Tarwilform
  Caption = 'Form Setting Data Master Wilayah Customer'
  ClientWidth = 445
  ExplicitWidth = 451
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 445
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 754
      ExplicitHeight = 323
      inherited DBGrid1: TDBGrid
        Width = 437
        DataSource = MastData.DSMWilayah
        Columns = <
          item
            Expanded = False
            FieldName = 'Wil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nama'
            Width = 327
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
    Width = 445
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
      Left = 349
      ExplicitLeft = 349
    end
  end
  inherited Panel2: TPanel
    Width = 445
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
