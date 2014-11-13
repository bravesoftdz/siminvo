object inftemplateForm: TinftemplateForm
  Left = 0
  Top = 0
  Caption = 'Transaksi Template Form'
  ClientHeight = 453
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 453
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvSpace
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 810
      Height = 404
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 445
      object TabSheet1: TTabSheet
        Caption = 'General'
        ExplicitHeight = 417
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        ExplicitHeight = 417
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 406
      Width = 810
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 1
      DesignSize = (
        810
        41)
      object btnCancel: TButton
        Left = 731
        Top = 6
        Width = 75
        Height = 30
        Anchors = [akRight, akBottom]
        Caption = 'Cancel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCancelClick
      end
      object btnsimpan: TButton
        Left = 656
        Top = 6
        Width = 75
        Height = 30
        Anchors = [akRight, akBottom]
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnsimpanClick
      end
    end
  end
end
