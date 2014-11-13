object SearchTempleteForm: TSearchTempleteForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'SearchTempleteForm'
  ClientHeight = 57
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 57
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 385
      Height = 55
      Align = alClient
      Caption = 'Silahkan masukkan kode yang ingin diedit'
      TabOrder = 0
      object EPencarian: TEdit
        Left = 8
        Top = 20
        Width = 313
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'EPencarian'
        OnKeyDown = EPencarianKeyDown
      end
      object btnOk: TButton
        Left = 323
        Top = 19
        Width = 38
        Height = 26
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnOkClick
      end
    end
  end
end
