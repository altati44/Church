object FormDateVisitas: TFormDateVisitas
  Left = 570
  Top = 471
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Visitado...'
  ClientHeight = 186
  ClientWidth = 170
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 170
    Height = 186
    BevelOuter = bvNone
    TabOrder = 0
    object MonthCalendar1: TMonthCalendar
      Left = 1
      Top = 1
      Width = 169
      Height = 153
      Align = alCustom
      Date = 39570.876916921300000000
      TabOrder = 0
      OnDblClick = MonthCalendar1DblClick
    end
    object Panel2: TPanel
      Left = 0
      Top = 154
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
