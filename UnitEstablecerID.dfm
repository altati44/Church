object FormEstablecerID: TFormEstablecerID
  Left = 388
  Top = 122
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Establecer Contrase'#241'a'
  ClientHeight = 136
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 262
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
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
      Left = 16
      Top = 19
      Width = 234
      Height = 26
      Brush.Color = clWindow
      Pen.Color = 7960953
    end
    object Edit1: TEdit
      Left = 18
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
    object Edit3: TEdit
      Left = 18
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
      TabOrder = 1
      Visible = False
      OnKeyPress = Edit3KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 262
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = -1
      Width = 104
      Height = 13
      Caption = 'Confirmar Contrase'#241'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 16
      Top = 13
      Width = 234
      Height = 26
      Brush.Color = clWindow
      Pen.Color = 7960953
    end
    object Edit2: TEdit
      Left = 18
      Top = 18
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
      OnKeyPress = Edit2KeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 95
    Width = 262
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 49
      Top = 11
      Width = 73
      Height = 22
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 143
      Top = 11
      Width = 73
      Height = 22
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 49
      Top = 11
      Width = 73
      Height = 22
      Caption = 'OK'
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
  end
end
