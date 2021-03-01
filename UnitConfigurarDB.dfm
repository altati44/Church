object FormConfigurarDB: TFormConfigurarDB
  Left = 179
  Top = 166
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Configurar Tabla Maestra...'
  ClientHeight = 252
  ClientWidth = 662
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 252
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 33
      Width = 98
      Height = 13
      Caption = 'Campos Disponibles:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 243
      Top = 33
      Width = 88
      Height = 13
      Caption = 'Campos a Mostrar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 406
      Top = 116
      Width = 26
      Height = 26
      Hint = 'Mover Abajo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 406
      Top = 86
      Width = 26
      Height = 26
      Hint = 'Mover Arriba'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label10: TLabel
      Left = 449
      Top = 32
      Width = 88
      Height = 13
      Caption = 'Tambi'#233'n Mostrar...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 158
      Top = 33
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 370
      Top = 33
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ListBox1: TListBox
      Left = 29
      Top = 48
      Width = 154
      Height = 149
      Color = clCream
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Causa Desfraternizado'
        'Centro Trabajo/Estudio'
        'Condici'#243'n'
        'C'#243'nyuge Adventista'
        'Desfraternizado'
        'Direcci'#243'n'
        'Direcci'#243'n Trabajo/Estudio'
        'Dones'
        'Edad'
        'Estado Civil'
        'Ext Hogar'
        'Fallecido'
        'Fecha Bautismo'
        'Fecha Desfraternizado'
        'Fecha Nacimiento'
        'Localidad'
        'Naci'#243' en Hogar ASD'
        'Nivel Escolar'
        'No Identidad'
        'Nombre'
        'Obrero que Trabaj'#243
        'Ocupaci'#243'n Actual'
        'Oficio'
        'Pastor que Bautiz'#243
        'Primer Apellido'
        'Rebautismo'
        'Religi'#243'n Practicada'
        'Salario'
        'Segundo Apellido'
        'Sexo'
        'Tel'#233'fono'
        'Traslado')
      MultiSelect = True
      ParentFont = False
      Sorted = True
      TabOrder = 0
      OnDblClick = SpeedButton4Click
      OnDragDrop = ListBox1DragDrop
      OnDragOver = ListBox1DragOver
      OnKeyDown = ListBox1KeyDown
    end
    object Panel4: TPanel
      Left = 197
      Top = 59
      Width = 31
      Height = 127
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object SpeedButton4: TSpeedButton
        Left = 3
        Top = 6
        Width = 27
        Height = 25
        Hint = 'Adicionar uno'
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 3
        Top = 33
        Width = 27
        Height = 25
        Hint = 'Quitar uno'
        Caption = '<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 3
        Top = 70
        Width = 27
        Height = 25
        Hint = 'Adicionar todos'
        Caption = '>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 3
        Top = 97
        Width = 27
        Height = 25
        Hint = 'Quitar todos'
        Caption = '<<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
    end
    object ListBox2: TListBox
      Left = 243
      Top = 48
      Width = 154
      Height = 149
      Color = clCream
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 1
      OnDblClick = SpeedButton5Click
      OnDragDrop = ListBox2DragDrop
      OnDragOver = ListBox2DragOver
      OnKeyDown = ListBox2KeyDown
    end
    object Panel10: TPanel
      Left = 449
      Top = 48
      Width = 190
      Height = 152
      BorderStyle = bsSingle
      Color = clInfoBk
      TabOrder = 2
      object CheckBox2: TCheckBox
        Left = 5
        Top = 37
        Width = 110
        Height = 18
        Caption = 'Traslados----------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 5
        Top = 19
        Width = 110
        Height = 18
        Caption = 'Fallecidos---------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CheckBox4: TCheckBox
        Left = 5
        Top = 1
        Width = 110
        Height = 18
        Caption = 'Desfraternizados----'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBox5: TCheckBox
        Left = 5
        Top = 109
        Width = 110
        Height = 18
        Caption = 'Distrito--------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox5Click
      end
      object CheckBox6: TCheckBox
        Left = 5
        Top = 127
        Width = 110
        Height = 18
        Caption = 'Iglesia---------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox6Click
      end
      object CheckBox7: TCheckBox
        Left = 5
        Top = 73
        Width = 110
        Height = 18
        Caption = 'Asociaci'#243'n-------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox7Click
      end
      object CheckBox8: TCheckBox
        Left = 5
        Top = 91
        Width = 110
        Height = 18
        Caption = 'Provincia----------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox8Click
      end
      object CheckBox9: TCheckBox
        Left = 5
        Top = 55
        Width = 110
        Height = 18
        Caption = 'Uni'#243'n----------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox9Click
      end
      object Panel9: TPanel
        Left = 114
        Top = 19
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 8
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 15778303
        end
        object Image2: TImage
          Left = 27
          Top = 2
          Width = 13
          Height = 13
          Picture.Data = {
            07544269746D6170DE000000424DDE0000000000000076000000280000000D00
            00000D0000000100040000000000680000000000000000000000100000000000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0000000000000000000FFFFFFFFFFF00000FFFFFFFFFFF00000FFFF2FFFFFF
            00000FFF222FFFFF00000FF22222FFFF00000FF22F222FFF00000FF2FFF222FF
            00000FFFFFFF22FF00000FFFFFFFF2FF00000FFFFFFFFFFF00000FFFFFFFFFFF
            00000000000000000000}
        end
      end
      object Panel8: TPanel
        Left = 114
        Top = 127
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 9
        object Shape8: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 15526121
        end
        object Label13: TLabel
          Left = 4
          Top = 2
          Width = 39
          Height = 13
          Caption = 'Iglesia...'
          Transparent = True
        end
      end
      object Panel7: TPanel
        Left = 114
        Top = 109
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 10
        object Shape7: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 15526121
        end
        object Label9: TLabel
          Left = 4
          Top = 2
          Width = 41
          Height = 13
          Caption = 'Distrito...'
          Transparent = True
        end
      end
      object Panel6: TPanel
        Left = 114
        Top = 91
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 11
        object Shape6: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 15526121
        end
        object Label8: TLabel
          Left = 4
          Top = 2
          Width = 53
          Height = 13
          Caption = 'Provincia...'
          Transparent = True
        end
      end
      object Panel5: TPanel
        Left = 114
        Top = 73
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 12
        object Shape5: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 15526121
        end
        object Label7: TLabel
          Left = 4
          Top = 2
          Width = 61
          Height = 13
          Caption = 'Asociaci'#243'n...'
          Transparent = True
        end
      end
      object Panel3: TPanel
        Left = 114
        Top = 55
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 13
        object Shape4: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 15526121
        end
        object Label6: TLabel
          Left = 4
          Top = 2
          Width = 37
          Height = 13
          Caption = 'Uni'#243'n...'
          Transparent = True
        end
      end
      object Panel19: TPanel
        Left = 114
        Top = 1
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 14
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 12320767
        end
        object Image1: TImage
          Left = 27
          Top = 2
          Width = 13
          Height = 13
          Picture.Data = {
            07544269746D6170DE000000424DDE0000000000000076000000280000000D00
            00000D0000000100040000000000680000000000000000000000100000000000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0000000000000000000FFFFFFFFFFF00000FFFFFFFFFFF00000FFFF2FFFFFF
            00000FFF222FFFFF00000FF22222FFFF00000FF22F222FFF00000FF2FFF222FF
            00000FFFFFFF22FF00000FFFFFFFF2FF00000FFFFFFFFFFF00000FFFFFFFFFFF
            00000000000000000000}
        end
      end
      object Panel11: TPanel
        Left = 114
        Top = 37
        Width = 67
        Height = 17
        Align = alCustom
        BevelOuter = bvNone
        Color = 12320767
        TabOrder = 15
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 67
          Height = 17
          Align = alClient
          Brush.Color = 11468718
        end
        object Image3: TImage
          Left = 27
          Top = 2
          Width = 13
          Height = 13
          Picture.Data = {
            07544269746D6170DE000000424DDE0000000000000076000000280000000D00
            00000D0000000100040000000000680000000000000000000000100000000000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0000000000000000000FFFFFFFFFFF00000FFFFFFFFFFF00000FFFF2FFFFFF
            00000FFF222FFFFF00000FF22222FFFF00000FF22F222FFF00000FF2FFF222FF
            00000FFFFFFF22FF00000FFFFFFFF2FF00000FFFFFFFFFFF00000FFFFFFFFFFF
            00000000000000000000}
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 210
      Width = 660
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object dxButtonAceptar: TButton
        Left = 226
        Top = 8
        Width = 95
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = dxButtonAceptarClick
      end
      object dxButtonCerrar: TButton
        Left = 335
        Top = 8
        Width = 95
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = dxButtonCerrarClick
      end
    end
  end
end
