object FormAddIdioma: TFormAddIdioma
  Left = 358
  Top = 121
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Introducir'
  ClientHeight = 115
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 115
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 31
      Height = 13
      Caption = 'Idioma'
      FocusControl = Edit1
    end
    object Edit1: TEdit
      Left = 24
      Top = 36
      Width = 277
      Height = 21
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 73
      Width = 327
      Height = 41
      Align = alBottom
      TabOrder = 1
      object Aceptar: TButton
        Left = 85
        Top = 8
        Width = 73
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = AceptarClick
      end
      object Cancelar: TButton
        Left = 168
        Top = 8
        Width = 73
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = CancelarClick
      end
    end
  end
end
