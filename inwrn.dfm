inherited inwrnForm: TinwrnForm
  Caption = 'Warna Form'
  ClientWidth = 491
  ExplicitWidth = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 491
    ExplicitWidth = 491
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 483
      inherited DBGrid1: TDBGrid
        Width = 483
        DataSource = MastData.DSMWarna
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'WRN'
            Title.Caption = 'Kode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KET'
            Title.Caption = 'Description'
            Width = 389
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TGLU'
            Visible = False
          end>
      end
    end
  end
  inherited Panel1: TPanel
    Width = 491
    ExplicitWidth = 491
    inherited btnTambah: TButton
      Top = 3
      Height = 29
      OnClick = btnTambahClick
      ExplicitTop = 3
      ExplicitHeight = 29
    end
    inherited btnEdit: TButton
      Top = 3
      Height = 29
      OnClick = btnEditClick
      ExplicitTop = 3
      ExplicitHeight = 29
    end
    inherited btnCetak: TButton
      Top = 3
      Height = 29
      ExplicitTop = 3
      ExplicitHeight = 29
    end
    inherited btnDelete: TButton
      Top = 3
      Height = 29
      OnClick = btnDeleteClick
      ExplicitTop = 3
      ExplicitHeight = 29
    end
    inherited btnKeluar: TButton
      Left = 392
      Width = 93
      Height = 28
      ExplicitLeft = 392
      ExplicitWidth = 93
      ExplicitHeight = 28
    end
  end
  inherited Panel2: TPanel
    Width = 491
    ExplicitWidth = 491
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
