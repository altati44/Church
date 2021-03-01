object Form11: TForm11
  Left = 450
  Top = 198
  Width = 178
  Height = 220
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Entrada'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 170
    Height = 185
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object MonthCalendar1: TMonthCalendar
      Left = 1
      Top = 0
      Width = 169
      Height = 153
      Align = alCustom
      Date = 39570.782390023150000000
      TabOrder = 0
      OnDblClick = MonthCalendar1DblClick
    end
    object Panel2: TPanel
      Left = 0
      Top = 153
      Width = 170
      Height = 32
      Align = alBottom
      TabOrder = 1
      object Aceptar: TButton
        Left = 13
        Top = 8
        Width = 60
        Height = 20
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = AceptarClick
      end
      object Cancelar: TButton
        Left = 96
        Top = 8
        Width = 60
        Height = 20
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = CancelarClick
      end
    end
  end
end
