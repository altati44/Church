object FormEspera: TFormEspera
  Left = 374
  Top = 199
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Espere...'
  ClientHeight = 81
  ClientWidth = 224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 224
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 10
      Width = 98
      Height = 13
      Caption = 'Recopilando datos...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Panel3: TPanel
      Left = 8
      Top = 24
      Width = 205
      Height = 19
      BevelInner = bvLowered
      TabOrder = 0
      object ProgressExp: TJvSpecialProgress
        Left = 2
        Top = 2
        Width = 201
        Height = 15
        Align = alBottom
        Caption = '0%'
        EndColor = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Solid = True
        StartColor = 16771304
        Step = 1
        TextOption = toPercent
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 51
    Width = 224
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object ColorButton1: TButton
      Left = 138
      Top = 2
      Width = 75
      Height = 21
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = ColorButton1Click
    end
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <>
    BeforeInsert = JvMemoryData1BeforeInsert
    Left = 24
    Top = 56
  end
end
