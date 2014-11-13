inherited insizeForm: TinsizeForm
  Caption = 'Size Form'
  ClientWidth = 497
  ExplicitWidth = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 497
    ExplicitWidth = 497
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 489
      inherited DBGrid1: TDBGrid
        Width = 489
        DataSource = MastData.DSMSize
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'SIZE'
            Title.Caption = 'Kode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KET'
            Title.Caption = 'Description'
            Width = 395
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
    Width = 497
    ExplicitWidth = 497
    inherited btnTambah: TButton
      Left = 0
      Height = 28
      OnClick = btnTambahClick
      ExplicitLeft = 0
      ExplicitHeight = 28
    end
    inherited btnEdit: TButton
      Left = 89
      Height = 28
      OnClick = btnEditClick
      ExplicitLeft = 89
      ExplicitHeight = 28
    end
    inherited btnCetak: TButton
      Left = 168
      Width = 85
      Height = 28
      ExplicitLeft = 168
      ExplicitWidth = 85
      ExplicitHeight = 28
    end
    inherited btnDelete: TButton
      Left = 252
      Height = 28
      OnClick = btnDeleteClick
      ExplicitLeft = 252
      ExplicitHeight = 28
    end
    inherited btnKeluar: TButton
      Left = 401
      Height = 28
      ExplicitLeft = 401
      ExplicitHeight = 28
    end
  end
  inherited Panel2: TPanel
    Width = 497
    ExplicitWidth = 497
    inherited btnCari: TButton
      Left = 322
      OnClick = btnCariClick
      ExplicitLeft = 322
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
