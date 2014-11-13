inherited inkualitasForm: TinkualitasForm
  Caption = 'Kualitas Form'
  ClientWidth = 466
  ExplicitWidth = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 466
    ExplicitWidth = 466
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 458
      inherited DBGrid1: TDBGrid
        Width = 458
        DataSource = MastData.DSMKualitas
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'KUALI'
            Title.Caption = 'Kode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KET'
            Title.Caption = 'Description'
            Width = 365
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
    Width = 466
    ExplicitWidth = 466
    inherited btnTambah: TButton
      Width = 95
      Height = 28
      OnClick = btnTambahClick
      ExplicitWidth = 95
      ExplicitHeight = 28
    end
    inherited btnEdit: TButton
      Left = 95
      Height = 28
      OnClick = btnEditClick
      ExplicitLeft = 95
      ExplicitHeight = 28
    end
    inherited btnCetak: TButton
      Left = 174
      Height = 28
      ExplicitLeft = 174
      ExplicitHeight = 28
    end
    inherited btnDelete: TButton
      Left = 253
      Width = 90
      Height = 28
      OnClick = btnDeleteClick
      ExplicitLeft = 253
      ExplicitWidth = 90
      ExplicitHeight = 28
    end
    inherited btnKeluar: TButton
      Left = 375
      Width = 85
      Height = 28
      ExplicitLeft = 375
      ExplicitWidth = 85
      ExplicitHeight = 28
    end
  end
  inherited Panel2: TPanel
    Width = 466
    ExplicitWidth = 466
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
