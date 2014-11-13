inherited inmrkForm: TinmrkForm
  Caption = 'Merek Form'
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
        DataSource = MastData.DSMMerek
        Columns = <
          item
            Expanded = False
            FieldName = 'MRK'
            Title.Caption = 'Kode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KET'
            Title.Caption = 'Description'
            Width = 396
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
      Height = 28
      OnClick = btnTambahClick
      ExplicitHeight = 28
    end
    inherited btnEdit: TButton
      Height = 28
      OnClick = btnEditClick
      ExplicitHeight = 28
    end
    inherited btnCetak: TButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited btnDelete: TButton
      Height = 28
      OnClick = btnDeleteClick
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
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
