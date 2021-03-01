object FormCheckKey: TFormCheckKey
  Left = 319
  Top = 289
  BorderStyle = bsDialog
  ClientHeight = 115
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 378
    Height = 82
    Align = alTop
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 374
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 45
        Top = 6
        Width = 3
        Height = 13
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 113
        Top = 23
        Width = 3
        Height = 13
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194432
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 52
      Width = 374
      Height = 28
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 374
        Height = 28
        Align = alClient
        Alignment = taCenter
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Button1: TButton
    Left = 32
    Top = 90
    Width = 75
    Height = 22
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 268
    Top = 90
    Width = 75
    Height = 22
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 117
    Top = 90
    Width = 75
    Height = 22
    TabOrder = 3
    OnClick = Button3Click
  end
  object icekey1: Ticekey
    Top = 87
  end
  object Abrir: TOpenDialog
    Filter = 'Key files (*.key)|*.key'
    Left = 352
    Top = 87
  end
  object JvComputerInfoEx1: TJvComputerInfoEx
    Left = 296
    Top = 88
  end
end
