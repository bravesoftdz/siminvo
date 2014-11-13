inherited inmotifForm: TinmotifForm
  Caption = 'Motif Form'
  ClientWidth = 474
  ExplicitWidth = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 474
    ExplicitWidth = 474
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 466
      inherited DBGrid1: TDBGrid
        Width = 466
        DataSource = MastData.DSMMotif
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'MTF'
            Title.Caption = 'Kode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KET'
            Title.Caption = 'Description'
            Width = 374
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
    Width = 474
    ExplicitWidth = 474
    inherited btnTambah: TButton
      Width = 91
      Height = 28
      OnClick = btnTambahClick
      ExplicitWidth = 91
      ExplicitHeight = 28
    end
    inherited btnEdit: TButton
      Left = 91
      Height = 28
      OnClick = btnEditClick
      ExplicitLeft = 91
      ExplicitHeight = 28
    end
    inherited btnCetak: TButton
      Left = 170
      Height = 28
      ExplicitLeft = 170
      ExplicitHeight = 28
    end
    inherited btnDelete: TButton
      Left = 249
      Height = 28
      OnClick = btnDeleteClick
      ExplicitLeft = 249
      ExplicitHeight = 28
    end
    inherited btnKeluar: TButton
      Left = 383
      Width = 85
      Height = 28
      ExplicitLeft = 383
      ExplicitWidth = 85
      ExplicitHeight = 28
    end
  end
  inherited Panel2: TPanel
    Width = 474
    ExplicitWidth = 474
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
