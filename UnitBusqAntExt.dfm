object FormBusqAntExt: TFormBusqAntExt
  Left = 251
  Top = 227
  Width = 470
  Height = 277
  Caption = 'B'#250'squedas anteriores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 243
    Align = alClient
    TabOrder = 0
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 460
      Height = 197
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HideSelection = False
      HotTrack = True
      Indent = 19
      MultiSelect = True
      MultiSelectStyle = [msControlSelect, msShiftSelect]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      RowSelect = True
      ShowHint = True
      ShowRoot = False
      TabOrder = 0
      OnKeyDown = TreeView1KeyDown
      OnMouseDown = TreeView1MouseDown
    end
    object Panel2: TPanel
      Left = 1
      Top = 198
      Width = 460
      Height = 44
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 31
        Width = 454
        Height = 8
        Align = alBottom
        BevelOuter = bvNone
        Color = clCream
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 454
        Height = 8
        Align = alTop
        BevelOuter = bvNone
        Color = clCream
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 1
        Top = 9
        Width = 454
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        Color = clCream
        TabOrder = 2
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 17
          Height = 23
          Align = alLeft
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 2
        end
        object Panel10: TPanel
          Left = 436
          Top = 0
          Width = 18
          Height = 23
          Align = alRight
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 3
        end
        object Panel7: TPanel
          Left = 17
          Top = 0
          Width = 200
          Height = 23
          Align = alLeft
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 1
          object LBorrar: TButton
            Left = 1
            Top = 0
            Width = 93
            Height = 22
            Caption = 'Borrar'
            TabOrder = 0
            OnClick = LBorrarClick
          end
          object LDesmarcar: TButton
            Left = 101
            Top = 0
            Width = 93
            Height = 22
            Caption = 'Desmarcar'
            TabOrder = 1
            OnClick = LDesmarcarClick
          end
        end
        object Panel8: TPanel
          Left = 232
          Top = 0
          Width = 204
          Height = 23
          Align = alRight
          BevelOuter = bvNone
          Color = clCream
          TabOrder = 0
          object Cancelar: TButton
            Left = 110
            Top = 0
            Width = 93
            Height = 22
            Caption = 'Cancelar'
            TabOrder = 0
            OnClick = CancelarClick
          end
          object LAceptar: TButton
            Left = 10
            Top = 0
            Width = 93
            Height = 22
            Caption = 'Aceptar'
            TabOrder = 1
            OnClick = LAceptarClick
          end
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 296
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Left = 328
    Top = 120
  end
end
