object intemplateForm: TintemplateForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Template Form'
  ClientHeight = 438
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 50
    Width = 762
    Height = 351
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'General'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 754
        Height = 323
        Align = alClient
        DrawingStyle = gdsGradient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid1KeyDown
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 762
    Height = 37
    Align = alBottom
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvLowered
    Color = 13750737
    ParentBackground = False
    TabOrder = 1
    object btnTambah: TButton
      Left = 1
      Top = 2
      Width = 90
      Height = 30
      Caption = 'F3 = Tambah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnEdit: TButton
      Left = 90
      Top = 2
      Width = 80
      Height = 30
      Caption = 'F1 = Edit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnCetak: TButton
      Left = 169
      Top = 2
      Width = 80
      Height = 30
      Caption = 'F7 = Cetak'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object btnDelete: TButton
      Left = 248
      Top = 2
      Width = 85
      Height = 30
      Caption = 'Del = Delete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnKeluar: TButton
      Left = 665
      Top = 2
      Width = 90
      Height = 30
      Caption = 'Esc = Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnKeluarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 50
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvLowered
    Color = 4268321
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 16
      Width = 70
      Height = 16
      Caption = 'Pencarian'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EPencarian: TEdit
      Left = 88
      Top = 13
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
      Top = 13
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
    end
    object btnRefresh: TButton
      Left = 377
      Top = 13
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
end
