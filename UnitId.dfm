object FormID: TFormID
  Left = 391
  Top = 142
  BorderStyle = bsDialog
  Caption = 'Contrase'#241'a'
  ClientHeight = 89
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 5
    Width = 104
    Height = 13
    Caption = 'Introducir Contrase'#241'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 13
    Top = 19
    Width = 234
    Height = 26
    Brush.Color = clWindow
    Pen.Color = 7960953
  end
  object Edit1: TEdit
    Left = 15
    Top = 24
    Width = 231
    Height = 17
    AutoSize = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 45
    Top = 58
    Width = 73
    Height = 22
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 139
    Top = 58
    Width = 73
    Height = 22
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
