object FormEnfermedades: TFormEnfermedades
  Left = 383
  Top = 142
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Enfermedades'
  ClientHeight = 214
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object CheckEnfermedades: TCheckListBox
    Left = 0
    Top = 0
    Width = 225
    Height = 174
    ItemHeight = 13
    Sorted = True
    Style = lbOwnerDrawFixed
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 173
    Width = 225
    Height = 41
    Align = alCustom
    TabOrder = 1
    object Aceptar: TButton
      Left = 39
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = AceptarClick
    end
    object Cancelar: TButton
      Left = 119
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = CancelarClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 4
    Top = 181
    object Adicionar1: TMenuItem
      Caption = 'Adicionar'
      OnClick = Adicionar1Click
    end
    object Borrar1: TMenuItem
      Caption = 'Borrar'
      OnClick = Borrar1Click
    end
    object Seleccionartodos1: TMenuItem
      Caption = 'Seleccionar todos'
      OnClick = Seleccionartodos1Click
    end
  end
end
