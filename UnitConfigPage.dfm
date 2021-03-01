object FormConfigPage: TFormConfigPage
  Left = 295
  Top = 186
  BorderStyle = bsDialog
  Caption = 'Configurar p'#225'gina'
  ClientHeight = 258
  ClientWidth = 445
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
    Top = 218
    Width = 445
    Height = 40
    Align = alBottom
    TabOrder = 0
    object Aceptar: TButton
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = AceptarClick
    end
    object Cancelar: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = CancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 218
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 225
      Height = 218
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Papel'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 217
          Height = 190
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 8
            Top = 8
            Width = 201
            Height = 167
            Caption = 'Tama'#241'o del papel: '
            TabOrder = 0
            object Label1: TLabel
              Left = 16
              Top = 62
              Width = 34
              Height = 13
              Caption = 'Ancho:'
            end
            object Label2: TLabel
              Left = 16
              Top = 92
              Width = 21
              Height = 13
              Caption = 'Alto:'
            end
            object ComboBox1: TComboBox
              Left = 16
              Top = 19
              Width = 174
              Height = 21
              BevelInner = bvSpace
              BevelOuter = bvSpace
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              OnChange = ComboBox1Change
              Items.Strings = (
                'Carta'
                'Oficio'
                'Ejecutivo'
                'A4'
                'Tama'#241'o personal')
            end
            object Edit1: TEdit
              Left = 91
              Top = 58
              Width = 75
              Height = 24
              AutoSize = False
              BevelInner = bvSpace
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '2,0 cm'
              OnExit = Edit1Exit
              OnKeyPress = Edit1KeyPress
            end
            object Panel6: TPanel
              Left = 164
              Top = 58
              Width = 25
              Height = 24
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = clWindow
              TabOrder = 2
              object UpDown1: TUpDown
                Left = 1
                Top = 0
                Width = 19
                Height = 20
                Min = -10000
                Max = 10000
                Position = 1
                TabOrder = 0
                OnClick = UpDown1Click
              end
            end
            object Edit2: TEdit
              Left = 92
              Top = 88
              Width = 75
              Height = 24
              AutoSize = False
              BevelInner = bvSpace
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = '2,0 cm'
              OnExit = Edit1Exit
              OnKeyPress = Edit1KeyPress
            end
            object Panel8: TPanel
              Left = 164
              Top = 88
              Width = 25
              Height = 24
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = clWindow
              TabOrder = 3
              object UpDown2: TUpDown
                Left = 1
                Top = 0
                Width = 19
                Height = 20
                Min = -10000
                Max = 10000
                Position = 1
                TabOrder = 0
                OnClick = UpDown2Click
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'M'#225'rgenes'
        ImageIndex = 1
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 217
          Height = 190
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object GroupBox3: TGroupBox
            Left = 5
            Top = 8
            Width = 204
            Height = 167
            Caption = 'M'#225'rgenes: '
            TabOrder = 0
            object Label3: TLabel
              Left = 18
              Top = 33
              Width = 42
              Height = 13
              Caption = 'Superior:'
            end
            object Label4: TLabel
              Left = 18
              Top = 61
              Width = 46
              Height = 13
              Caption = 'Izquierdo:'
            end
            object Label5: TLabel
              Left = 18
              Top = 106
              Width = 35
              Height = 13
              Caption = 'Inferior:'
            end
            object Label6: TLabel
              Left = 18
              Top = 134
              Width = 44
              Height = 13
              Caption = 'Derecho:'
            end
            object Edit3: TEdit
              Left = 87
              Top = 30
              Width = 75
              Height = 24
              AutoSize = False
              BevelInner = bvSpace
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '2,0 cm'
              OnExit = Edit3Exit
              OnKeyPress = Edit3KeyPress
            end
            object Panel9: TPanel
              Left = 160
              Top = 30
              Width = 25
              Height = 24
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = clWindow
              TabOrder = 0
              object UpDown3: TUpDown
                Left = 1
                Top = 0
                Width = 19
                Height = 20
                Min = -10000
                Max = 10000
                Position = 1
                TabOrder = 0
                OnClick = UpDown3Click
              end
            end
            object Edit4: TEdit
              Left = 87
              Top = 56
              Width = 75
              Height = 24
              AutoSize = False
              BevelInner = bvSpace
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = '2,0 cm'
              OnExit = Edit3Exit
              OnKeyPress = Edit3KeyPress
            end
            object Edit5: TEdit
              Left = 87
              Top = 100
              Width = 75
              Height = 24
              AutoSize = False
              BevelInner = bvSpace
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Text = '2,0 cm'
              OnExit = Edit3Exit
              OnKeyPress = Edit3KeyPress
            end
            object Edit6: TEdit
              Left = 87
              Top = 126
              Width = 75
              Height = 24
              AutoSize = False
              BevelInner = bvSpace
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              Text = '2,0 cm'
              OnExit = Edit3Exit
              OnKeyPress = Edit3KeyPress
            end
            object Panel10: TPanel
              Left = 160
              Top = 56
              Width = 25
              Height = 24
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = clWindow
              TabOrder = 2
              object UpDown4: TUpDown
                Left = 1
                Top = 0
                Width = 19
                Height = 20
                Min = -10000
                Max = 10000
                Position = 1
                TabOrder = 0
                OnClick = UpDown4Click
              end
            end
            object Panel11: TPanel
              Left = 160
              Top = 100
              Width = 25
              Height = 24
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = clWindow
              TabOrder = 4
              object UpDown5: TUpDown
                Left = 1
                Top = 0
                Width = 19
                Height = 20
                Min = -10000
                Max = 10000
                Position = 1
                TabOrder = 0
                OnClick = UpDown5Click
              end
            end
            object Panel12: TPanel
              Left = 160
              Top = 126
              Width = 25
              Height = 24
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = clWindow
              TabOrder = 6
              object UpDown6: TUpDown
                Left = 1
                Top = 0
                Width = 19
                Height = 20
                Min = -10000
                Max = 10000
                Position = 1
                TabOrder = 0
                OnClick = UpDown6Click
              end
            end
          end
        end
      end
    end
  end
  object Panel13: TPanel
    Left = 225
    Top = 0
    Width = 220
    Height = 218
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Panel14: TPanel
      Left = 0
      Top = 0
      Width = 220
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 0
      Top = 22
      Width = 220
      Height = 196
      Align = alClient
      Color = clWhite
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 19
        Top = 10
        Width = 185
        Height = 167
        Caption = 'Orientaci'#243'n: '
        TabOrder = 0
        object RadioButton1: TRadioButton
          Left = 16
          Top = 49
          Width = 86
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Vertical'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 16
          Top = 106
          Width = 88
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Horizontal'
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object Panel5: TPanel
          Left = 112
          Top = 26
          Width = 59
          Height = 59
          BevelInner = bvSpace
          BevelOuter = bvSpace
          BorderStyle = bsSingle
          Color = clAqua
          TabOrder = 2
          object Image1: TImage
            Left = 3
            Top = 3
            Width = 48
            Height = 48
            AutoSize = True
            Picture.Data = {
              07544269746D6170F6040000424DF60400000000000076000000280000003000
              0000300000000100040000000000800400000000000000000000100000000000
              0000000000000000800000800000008080008000000080008000808000008080
              8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
              FF000000000000000000000000000000000000000000000000000FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              F000000000000000000000000FFFFFFFFFF00FFFFFFFFFFF0000000000000000
              000000000FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFF
              0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFF
              FFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFF
              0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFF
              FFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFF07FFFFFFFFFFFFF70FF00FFFFFFFFFF00FFFFFFFFFFF
              0FFF808FFFFFFFFFFF808FF00FFFFFFFFFF00FFFFFFFFFFF0FFF807FFFFFFFFF
              FF708FF00FFFFFFFFFF00FFFFFFFFFFF0FFFF70FFFFFFFFFFF07FFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFFF808FFFFFFFFF808FFF00FFFFFFFFFF00FFFFFFFFFFF
              0FFFFF07FFFFFFFFF70FFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFF7000000000
              007FFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFF8000000000008FFFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFFFFF00FFFFFFF00FFFFF00FFFFFFFFFF00FFFFFFFFFFF
              0FFFFFF708FFFFF807FFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFF807FFFFF7
              08FFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFF70FFFFF07FFFFFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFFFFFF808FFF808FFFFFF00FFFFFFFFFF00FFFFFFFFFFF
              0FFFFFFFF07FFF70FFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFF70FFF07
              FFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFF808F808FFFFFFF00FFFFFFF
              FFF00FFFFFFFFFFF0FFFFFFFFF07F70FFFFFFFF00FFFFFFFFFF00FFFFFFFFFFF
              0FFFFFFFFF70807FFFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFF80008F
              FFFFFFF00FFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFF000FFF0000000FFFFFFFF
              FFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFF0FFFF0FFFFFFFFFFFF00FFFFFFFFFFF
              0FFFFFFFFFFFFFFFF0FFF0FFFFFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFF
              F0FF0FFFFFFFFFFFFFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFF0F0FFFFFFFFFFFF
              FFF00FFFFFFFFFFF0FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFFF
              000000000000000000FFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000
              0000}
          end
        end
        object Panel15: TPanel
          Left = 112
          Top = 87
          Width = 59
          Height = 59
          BevelInner = bvSpace
          BevelOuter = bvSpace
          BorderStyle = bsSingle
          TabOrder = 3
          object Image2: TImage
            Left = 3
            Top = 3
            Width = 48
            Height = 48
            AutoSize = True
            Picture.Data = {
              07544269746D6170F6040000424DF60400000000000076000000280000003000
              0000300000000100040000000000800400000000000000000000100000000000
              0000000000000000800000800000008080008000000080008000808000008080
              8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
              FF000000000000000000000000000000000000000000000000000FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFF000000000000000000000000000000000000FFFFF00FFFFF0FFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFF00FFFFF0FFFFFFF07FFFFFFFFFFFF
              F70FFFFFFFFFF0FFFFF00FFFFF0FFFFFFF808FFFFFFFFFFF808FFFFFFFFFF0FF
              FFF00FFFFF0FFFFFFF807FFFFFFFFFFF708FFFFFFFFFF0FFFFF00FFFFF0FFFFF
              FFF70FFFFFFFFFFF07FFFFFFFFFFF0FFFFF00FFFFF0FFFFFFFF808FFFFFFFFF8
              08FFFFFFFFFFF0FFFFF00FFFFF0FFFFFFFFF07FFFFFFFFF70FFFFFFFFFFFF0FF
              FFF00FFFFF0FFFFFFFFF7000000000007FFFFFFFFFFFF0FFFFF00FFFFF0FFFFF
              FFFF8000000000008FFFFFFFFFFFF0FFFFF00FFFFF0FFFFFFFFFF00FFFFFFF00
              FFFFFFFFFFFFF0FFFFF00FFFFF0FFFFFFFFFF708FFFFF807FFFFFFFFFFFFF0FF
              FFF00FFFFF0FFFFFFFFFF807FFFFF708FFFFFFFFFFFFF0FFFFF00FFFFF0FFFFF
              FFFFFF70FFFFF07FFFFFFFFFFFFFF0FFFFF00FFFFF0FFFFFFFFFFF808FFF808F
              FFFFFFFFFFFFF0FFFFF00FFFFF0FFFFFFFFFFFF07FFF70FFFFFFFFFFFFFFF0FF
              FFF00FFFFF0FFFFFFFFFFFF70FFF07FFFFFFFFFFFFFFF0FFFFF00FFFFF0FFFFF
              FFFFFFF808F808FFFFFFFFF0000000FFFFF00FFFFF0FFFFFFFFFFFFF07F70FFF
              FFFFFFF0FFFF0FFFFFF00FFFFF0FFFFFFFFFFFFF70807FFFFFFFFFF0FFF0FFFF
              FFF00FFFFF0FFFFFFFFFFFFF80008FFFFFFFFFF0FF0FFFFFFFF00FFFFF0FFFFF
              FFFFFFFFF000FFFFFFFFFFF0F0FFFFFFFFF00FFFFF0FFFFFFFFFFFFFFFFFFFFF
              FFFFFFF00FFFFFFFFFF00FFFFF000000000000000000000000000000FFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000
              0000}
          end
        end
      end
    end
  end
end
