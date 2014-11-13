inherited apvalform: Tapvalform
  Caption = 'Form Setting Valuta Supplier'
  ClientWidth = 441
  ExplicitWidth = 447
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 441
    ExplicitWidth = 441
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 433
      ExplicitHeight = 323
      inherited DBGrid1: TDBGrid
        Width = 433
        DataSource = MastData.DSMAPVal
        Columns = <
          item
            Expanded = False
            FieldName = 'Val'
            Title.Caption = 'Valuta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ket'
            Title.Caption = 'Keterangan'
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tukar'
            Title.Alignment = taRightJustify
            Title.Caption = 'Nilai Tukar'
            Width = 106
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
    Width = 441
    ExplicitWidth = 441
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
      Left = 345
      ExplicitLeft = 345
    end
  end
  inherited Panel2: TPanel
    Width = 441
    ExplicitWidth = 441
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
