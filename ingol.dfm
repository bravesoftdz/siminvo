inherited ingolForm: TingolForm
  Caption = 'Golongan Form'
  ClientWidth = 499
  ExplicitWidth = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 499
    ExplicitWidth = 499
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 491
      inherited DBGrid1: TDBGrid
        Width = 491
        DataSource = MastData.DSMGolongan
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Gol'
            Title.Caption = 'Kode Golongan'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ket'
            Title.Caption = 'Description'
            Width = 486
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
    Width = 499
    ExplicitWidth = 499
    inherited btnTambah: TButton
      Left = 0
      Top = 1
      OnClick = btnTambahClick
      ExplicitLeft = 0
      ExplicitTop = 1
    end
    inherited btnEdit: TButton
      Left = 89
      Top = 1
      OnClick = btnEditClick
      ExplicitLeft = 89
      ExplicitTop = 1
    end
    inherited btnCetak: TButton
      Left = 168
      Top = 1
      ExplicitLeft = 168
      ExplicitTop = 1
    end
    inherited btnDelete: TButton
      Left = 247
      Top = 1
      OnClick = btnDeleteClick
      ExplicitLeft = 247
      ExplicitTop = 1
    end
    inherited btnKeluar: TButton
      Left = 403
      Top = 1
      ExplicitLeft = 403
      ExplicitTop = 1
    end
  end
  inherited Panel2: TPanel
    Width = 499
    ExplicitWidth = 499
    inherited btnCari: TButton
      OnClick = btnCariClick
    end
    inherited btnRefresh: TButton
      OnClick = btnRefreshClick
    end
  end
end
