inherited injnsForm: TinjnsForm
  Caption = 'Jenis Form'
  ClientWidth = 491
  Scaled = False
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
        DataSource = MastData.DSMJenis
        FixedColor = clSkyBlue
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'JNS'
            Title.Caption = 'Kode Jenis'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KET'
            Title.Caption = 'Description'
            Width = 342
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
      Height = 29
      OnClick = btnTambahClick
      ExplicitHeight = 29
    end
    inherited btnEdit: TButton
      Height = 29
      OnClick = btnEditClick
      ExplicitHeight = 29
    end
    inherited btnCetak: TButton
      Height = 29
      ExplicitHeight = 29
    end
    inherited btnDelete: TButton
      Height = 29
      OnClick = btnDeleteClick
      ExplicitHeight = 29
    end
    inherited btnKeluar: TButton
      Left = 395
      Height = 29
      ExplicitLeft = 395
      ExplicitHeight = 29
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
