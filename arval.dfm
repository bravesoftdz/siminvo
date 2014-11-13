inherited arvalform: Tarvalform
  Caption = 'Form Setting Valuta Customer'
  ClientWidth = 448
  ExplicitWidth = 454
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 448
    ExplicitWidth = 448
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 440
      ExplicitHeight = 323
      inherited DBGrid1: TDBGrid
        Width = 440
        DataSource = MastData.DSMARVal
        Columns = <
          item
            Expanded = False
            FieldName = 'Val'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ket'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tukar'
            Width = 110
            Visible = True
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
    Width = 448
    ExplicitWidth = 448
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
      Left = 352
      ExplicitLeft = 352
    end
  end
  inherited Panel2: TPanel
    Width = 448
    ExplicitWidth = 448
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
