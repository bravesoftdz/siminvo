inherited fsearchjenisform: Tfsearchjenisform
  Caption = 'Search Jenis Form'
  OnCreate = FormCreate
  ExplicitWidth = 521
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited btnRefresh: TButton
        OnClick = btnRefreshClick
      end
    end
    inherited DBGrid1: TDBGrid
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'JNS'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KET'
          Width = 380
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ADOQuery1
  end
  inherited ADOQuery1: TADOQuery
    CursorType = ctStatic
    CommandTimeout = 3000
    SQL.Strings = (
      'Select * From svinmjns')
    object ADOQuery1JNS: TStringField
      FieldName = 'JNS'
      Size = 10
    end
    object ADOQuery1KET: TStringField
      FieldName = 'KET'
      Size = 30
    end
    object ADOQuery1TGLU: TDateTimeField
      FieldName = 'TGLU'
      Visible = False
    end
  end
end
