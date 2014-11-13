object fsearchForm: TfsearchForm
  Left = 0
  Top = 0
  Caption = 'Form Pencarian'
  ClientHeight = 426
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 426
    Align = alClient
    Color = 13750737
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 511
      Height = 48
      Align = alTop
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvNone
      Color = 4268321
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 12
        Width = 61
        Height = 16
        Caption = 'Pencarian'
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object EPencarian: TEdit
        Left = 88
        Top = 9
        Width = 233
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'EDIT1'
      end
      object btnCari: TButton
        Left = 321
        Top = 9
        Width = 56
        Height = 24
        Caption = 'Cari'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnCariClick
      end
      object btnRefresh: TButton
        Left = 377
        Top = 9
        Width = 56
        Height = 24
        Caption = 'Refresh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 49
      Width = 511
      Height = 335
      Align = alClient
      DataSource = DataSource1
      DrawingStyle = gdsGradient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          Width = 380
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 384
      Width = 511
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 2
      object btnCancel: TButton
        Left = 434
        Top = 6
        Width = 75
        Height = 30
        Caption = 'CANCEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCancelClick
      end
      object btnOK: TButton
        Left = 359
        Top = 6
        Width = 75
        Height = 30
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnOKClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = MastData.QCari
    Left = 88
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Connection = MastData.invConnection
    Parameters = <>
    Left = 48
    Top = 136
  end
end
