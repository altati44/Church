object Form2: TForm2
  Left = 209
  Top = 62
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Buscar'
  ClientHeight = 444
  ClientWidth = 612
  Color = 14540253
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
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
    Width = 612
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 5
      Width = 109
      Height = 13
      Caption = 'Consulta de b'#250'squeda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 476
      Top = 1
      Width = 121
      Height = 17
      Caption = 'B'#250'squeda avanzada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Panel8: TPanel
      Left = 9
      Top = 18
      Width = 599
      Height = 49
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      Color = clWhite
      TabOrder = 1
      object RichEdit1: TRichEdit
        Left = 2
        Top = 2
        Width = 591
        Height = 41
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantReturns = False
        OnKeyPress = RichEdit1KeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 612
    Height = 339
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 100
      Height = 13
      Caption = 'Rango de b'#250'squeda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 504
      Top = 12
      Width = 101
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Anteriores'
      Glyph.Data = {
        360D0000424D360D000000000000360400002800000030000000300000000100
        080000000000000900000000000000000000000100000000000000000000FFFF
        FF00F2F3F300E7E7E800F4F4F500E7E7E700A5A6A90070727B005C5D6A006A6B
        77009C9DA100E4E5E300D7D7D80072727A0037373F0038343100403A30002A26
        21002122260061636700D0D1D000ECECEB00787A7D00191A1B00635D4300B4A6
        6300CFBD6400ADA25700514B2A0002010500E2E3E300AAACB2003E3E3F006960
        3600D7CC5D00FCF46100FFF25900FBF66100D6CF5A0060562B00212022009294
        9A00FEFEFE00F6F7F80074768000423C2700CCB95400FFF65C00FFF24F00FFE7
        4900FFF14E00FFFB5D00D0C45A0036301B005E616C00F1F2F400DFE0E4005A5D
        65005F552700F1E25900FFF25600FDE04800FCDC4400FDDE4200FFF15300F3EA
        60005F55260052555F00D9DBDF00D8D9DE005758600063592600F3E65B00FFF0
        5800FEE14D00FCDE4700FDDF4900FFEF5B00F3E75B00655A240046474E00C8C9
        D000EFF0F300646570004D452100E5D55800FFF55B00FEE65500FDDE5200FEE3
        5200FFF76500F3E86C005E562B001F21250095969400FDFDFE00888996003934
        2700A7983B00FBF45900FFF75C00FFE75800FFF15600FFF95E00D4D071004955
        4E0000020E002D2B23009E9E9B00F5F5F400CECFD4005251550037300A00BFB2
        3E00FDF85E00FFFC5F00FEF65B00D2C144005B5A2C0012275800061768000A0B
        300024271E007E817C00FDFDFC00ACADB100383837004B421A008B7D2B00A299
        3500958832005C5223000E0B040000001D0008126F001B0F7800130226000E13
        120061676400D2D3D300F8F9F800B0B0B60052545B003A3833003E3A2B003C3B
        340044454D0049484C001E1C12000000160014055200370C49001E000A000504
        02004E515000C8C8C800FBFBFB00FCFCFD00DADDE000A1A3AA0082858E009595
        9E00B5B5BA00B6B5B7007574710024251D00000103001E000F0048000D001D00
        000001010100595C5C00D6D6D600F5F6F700ECEDEF00F1F1F400F4F4F400E6E6
        E600CDCECE00939490003539330002030100120000001C00000031353500A9AA
        AA00EBEBEC00B1B3B200545956000A100E003A3B3B00A2A3A300FDFDFD00CECE
        CE00767A79003C3F40003D3E3E007B7B7B00B2B2B200E9EAE900C5C5C500C2C2
        C200D4D4D400FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000C7C8C9CAAC0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000C0C1C2C3C4C5C600000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009C9CBABBBCBD0000BEBF0000000000000000000000000000000000000000
        0000000000000000000000000000ADAEAFB0B1B2B3B4B5B6B700B8B900000000
        000000000000000000000000000000000000000000000000000000009D9E9FA0
        A1A2A3A4A5A6A7A8A9AAABAC0000000000000000000000000000000000000000
        00000000000000000000008C8D8E8F909192939495969798999A9B9C00000000
        00000000000000000000000000000000000000000000000000007C7D7E7F8081
        82838485868788898A8B00000000000000000000000000000000000000000000
        000000000000000000006E6F707172737475767778797A7B1E00000000000000
        000000000000000000000000000000000000000000000000005F606162636465
        666768696A6B6C6D000000000000000000000000000000000000000000000000
        00000000000000000052535455565758595A5B5C5D5E02000000000000000000
        0000000000000000000000000000000000000000000000000045464748494A4B
        4C4D4E4F50510000000000000000000000000000000000000000000000000000
        00000000000000000038393A3B3C3D3E3F404142434400000000000000000000
        000000000000000000000000000000000000000000000000002B2C2D2E2F3031
        3233343536370000000000000000000000000000000000000000000000000000
        000000000000000000001F202122232425262728292A00000000000000000000
        000000000000000000000000000000000000000000000000000015161718191A
        1B1C1D131E000000000000000000000000000000000000000000000000000000
        00000000000000000000000C0D0E0F1011121314000000000000000000000000
        0000000000000000000000000000000000000000000000000000000005060708
        090A0B0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020304000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Margin = 0
      ParentBiDiMode = False
      Spacing = -14
      OnClick = SpeedButton7Click
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 17
      Width = 155
      Height = 22
      Style = csOwnerDrawFixed
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      Sorted = True
      TabOrder = 1
      Text = 'Global'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Global'
        'Selecci'#243'n')
    end
    object Panel3: TPanel
      Left = 187
      Top = 13
      Width = 286
      Height = 27
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 3
        Top = 3
        Width = 23
        Height = 22
        Caption = '('
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 27
        Top = 3
        Width = 23
        Height = 22
        Caption = ')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 55
        Top = 3
        Width = 23
        Height = 22
        Caption = '['
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 79
        Top = 3
        Width = 23
        Height = 22
        Caption = ']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 107
        Top = 3
        Width = 23
        Height = 22
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 131
        Top = 3
        Width = 23
        Height = 22
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = blGlyphBottom
        ParentFont = False
        OnClick = SpeedButton6Click
      end
      object SpeedButton8: TSpeedButton
        Left = 159
        Top = 3
        Width = 23
        Height = 22
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = blGlyphBottom
        ParentFont = False
        OnClick = SpeedButton8Click
      end
      object SpeedButton9: TSpeedButton
        Left = 183
        Top = 3
        Width = 23
        Height = 22
        Caption = '<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = blGlyphBottom
        ParentFont = False
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 207
        Top = 3
        Width = 23
        Height = 22
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = blGlyphBottom
        ParentFont = False
        OnClick = SpeedButton10Click
      end
      object SpeedButton11: TSpeedButton
        Left = 236
        Top = 3
        Width = 23
        Height = 22
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Layout = blGlyphBottom
        ParentFont = False
        OnClick = SpeedButton11Click
      end
      object SpeedButton12: TSpeedButton
        Left = 264
        Top = 3
        Width = 19
        Height = 22
        Caption = #39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = blGlyphBottom
        ParentFont = False
        OnClick = SpeedButton12Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 39
      Width = 598
      Height = 98
      Caption = 'Buscar por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 7
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Campos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 428
        Top = 9
        Width = 35
        Height = 13
        Caption = 'Distrito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 429
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Iglesia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 219
        Top = 9
        Width = 55
        Height = 13
        Caption = 'Asociaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 219
        Top = 56
        Width = 47
        Height = 13
        Caption = 'Provincia:'
      end
      object Label12: TLabel
        Left = 7
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Uni'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox2: TComboBox
        Left = 7
        Top = 31
        Width = 162
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        Sorted = True
        TabOrder = 0
        OnSelect = ComboBox2Select
        Items.Strings = (
          'Asociaci'#243'n'
          'Causa Desfraternizado'
          'Centro Trabajo/Estudio'
          'Condici'#243'n'
          'C'#243'nyuge Adventista'
          'Desfraternizado'
          'Direcci'#243'n'
          'Direcci'#243'n Trabajo/Estudio'
          'Distrito'
          'Dones'
          'Edad'
          'Enfermedades'
          'Estado Civil'
          'Ext Hogar'
          'Fallecido'
          'Fecha Bautismo'
          'Fecha Desfraternizado'
          'Fecha Nacimiento'
          'Foto'
          'Idiomas'
          'Iglesia'
          'Localidad'
          'Naci'#243' en Hogar ASD'
          'Nivel Escolar'
          'No Identidad'
          'Nombre'
          'Obrero que Trabaj'#243
          'Ocupaci'#243'n Actual'
          'Oficio'
          'Otra Informaci'#243'n'
          'Pastor que Bautiz'#243
          'Primer Apellido'
          'Provincia'
          'Rebautismo'
          'Religi'#243'n Practicada'
          'Salario'
          'Segundo Apellido'
          'Sexo'
          'Tel'#233'fono'
          'Traslado'
          'Uni'#243'n')
      end
      object ComboBox3: TComboBox
        Left = 429
        Top = 24
        Width = 162
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        Sorted = True
        TabOrder = 4
        OnChange = ComboBox3Change
        OnDropDown = ComboBox3DropDown
        OnKeyPress = ComboBox3KeyPress
        OnSelect = ComboBox3Select
      end
      object ComboBox4: TComboBox
        Left = 429
        Top = 71
        Width = 162
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        Sorted = True
        TabOrder = 5
        OnChange = ComboBox4Change
        OnDropDown = ComboBox4DropDown
        OnKeyPress = ComboBox4KeyPress
        OnSelect = ComboBox4Select
      end
      object ComboBox5: TComboBox
        Left = 218
        Top = 24
        Width = 162
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        Sorted = True
        TabOrder = 2
        OnChange = ComboBox5Change
        OnDropDown = ComboBox5DropDown
        OnKeyPress = ComboBox5KeyPress
        OnSelect = ComboBox5Select
      end
      object ComboBox6: TComboBox
        Left = 218
        Top = 71
        Width = 162
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        Sorted = True
        TabOrder = 3
        OnChange = ComboBox6Change
        OnDropDown = ComboBox6DropDown
        OnKeyPress = ComboBox6KeyPress
        OnSelect = ComboBox6Select
      end
      object ComboBox7: TComboBox
        Left = 7
        Top = 71
        Width = 162
        Height = 22
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        Sorted = True
        TabOrder = 1
        OnChange = ComboBox7Change
        OnDropDown = ComboBox7DropDown
        OnKeyPress = ComboBox7KeyPress
        OnSelect = ComboBox7Select
      end
    end
    object GroupBox2: TGroupBox
      Left = 23
      Top = 142
      Width = 567
      Height = 145
      Caption = 'Operadores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object ListBox1: TListBox
        Left = 9
        Top = 15
        Width = 85
        Height = 123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Nota...'
          '=, <, >...'
          'AND'
          'BETWEEN'
          'IN'
          'IS'
          'LIKE'
          'NOT'
          'NULL'
          'OR')
        ParentFont = False
        TabOrder = 1
        OnMouseDown = ListBox1MouseDown
      end
      object Panel4: TPanel
        Left = 104
        Top = 14
        Width = 453
        Height = 125
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14540253
        TabOrder = 0
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 449
          Height = 19
          Align = alTop
          Alignment = taLeftJustify
          Caption = 'Nota...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Memo1: TMemo
          Left = 2
          Top = 21
          Width = 449
          Height = 102
          Align = alClient
          BevelInner = bvLowered
          BorderStyle = bsNone
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Reference Sans Serif'
          Font.Style = []
          Lines.Strings = (
            
              '   Hemos incluido en esta secci'#243'n los operadores m'#225's usados a la' +
              ' hora de '
            
              'realizar una consulta. No son los '#250'nicos, pero estamos seguros q' +
              'ue si '
            
              'aprende a usarlos con habilidad, obtendr'#225' cualquier resultado de' +
              'seado.   '
            
              '   -Con un simple click sobre el operador lograr'#225' visualizar una' +
              ' breve '
            'descripci'#243'n de cada uno de ellos as'#237' como ejemplos de su uso.   '
            
              '   -Con un doble click sobre el operador lograr'#225' el mismo result' +
              'ado '
            
              'adem'#225's de que dicho operador se incluir'#225' en la consulta de b'#250'squ' +
              'eda, '
            
              'exceptuando los operadores relacionales que se incluyen como una' +
              ' '
            'facilidad en el panel que est'#225' debajo de Consulta de B'#250'squeda.')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 101
      Top = 290
      Width = 409
      Height = 45
      Caption = 'Aclaraci'#243'n:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Panel6: TPanel
        Left = 2
        Top = 15
        Width = 405
        Height = 28
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 0
        object Label8: TLabel
          Left = 3
          Top = 12
          Width = 132
          Height = 13
          Caption = 'alg'#250'n campo en la ventana '
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 4
          Top = -1
          Width = 396
          Height = 13
          Caption = 
            'Para que los resultados de la b'#250'squeda se hagan visibles, debe h' +
            'aber seleccionado'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 135
          Top = 12
          Width = 144
          Height = 13
          Caption = 'Configurar Tabla Maestra'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 281
          Top = 12
          Width = 112
          Height = 13
          Caption = 'del Men'#250' Herramientas.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 410
    Width = 612
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton13: TSpeedButton
      Left = 504
      Top = 2
      Width = 101
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Anteriores'
      Glyph.Data = {
        360D0000424D360D000000000000360400002800000030000000300000000100
        080000000000000900000000000000000000000100000000000000000000FFFF
        FF00F2F3F300E7E7E800F4F4F500E7E7E700A5A6A90070727B005C5D6A006A6B
        77009C9DA100E4E5E300D7D7D80072727A0037373F0038343100403A30002A26
        21002122260061636700D0D1D000ECECEB00787A7D00191A1B00635D4300B4A6
        6300CFBD6400ADA25700514B2A0002010500E2E3E300AAACB2003E3E3F006960
        3600D7CC5D00FCF46100FFF25900FBF66100D6CF5A0060562B00212022009294
        9A00FEFEFE00F6F7F80074768000423C2700CCB95400FFF65C00FFF24F00FFE7
        4900FFF14E00FFFB5D00D0C45A0036301B005E616C00F1F2F400DFE0E4005A5D
        65005F552700F1E25900FFF25600FDE04800FCDC4400FDDE4200FFF15300F3EA
        60005F55260052555F00D9DBDF00D8D9DE005758600063592600F3E65B00FFF0
        5800FEE14D00FCDE4700FDDF4900FFEF5B00F3E75B00655A240046474E00C8C9
        D000EFF0F300646570004D452100E5D55800FFF55B00FEE65500FDDE5200FEE3
        5200FFF76500F3E86C005E562B001F21250095969400FDFDFE00888996003934
        2700A7983B00FBF45900FFF75C00FFE75800FFF15600FFF95E00D4D071004955
        4E0000020E002D2B23009E9E9B00F5F5F400CECFD4005251550037300A00BFB2
        3E00FDF85E00FFFC5F00FEF65B00D2C144005B5A2C0012275800061768000A0B
        300024271E007E817C00FDFDFC00ACADB100383837004B421A008B7D2B00A299
        3500958832005C5223000E0B040000001D0008126F001B0F7800130226000E13
        120061676400D2D3D300F8F9F800B0B0B60052545B003A3833003E3A2B003C3B
        340044454D0049484C001E1C12000000160014055200370C49001E000A000504
        02004E515000C8C8C800FBFBFB00FCFCFD00DADDE000A1A3AA0082858E009595
        9E00B5B5BA00B6B5B7007574710024251D00000103001E000F0048000D001D00
        000001010100595C5C00D6D6D600F5F6F700ECEDEF00F1F1F400F4F4F400E6E6
        E600CDCECE00939490003539330002030100120000001C00000031353500A9AA
        AA00EBEBEC00B1B3B200545956000A100E003A3B3B00A2A3A300FDFDFD00CECE
        CE00767A79003C3F40003D3E3E007B7B7B00B2B2B200E9EAE900C5C5C500C2C2
        C200D4D4D400FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
        CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
        0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
        9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
        A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
        DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000C7C8C9CAAC0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000C0C1C2C3C4C5C600000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009C9CBABBBCBD0000BEBF0000000000000000000000000000000000000000
        0000000000000000000000000000ADAEAFB0B1B2B3B4B5B6B700B8B900000000
        000000000000000000000000000000000000000000000000000000009D9E9FA0
        A1A2A3A4A5A6A7A8A9AAABAC0000000000000000000000000000000000000000
        00000000000000000000008C8D8E8F909192939495969798999A9B9C00000000
        00000000000000000000000000000000000000000000000000007C7D7E7F8081
        82838485868788898A8B00000000000000000000000000000000000000000000
        000000000000000000006E6F707172737475767778797A7B1E00000000000000
        000000000000000000000000000000000000000000000000005F606162636465
        666768696A6B6C6D000000000000000000000000000000000000000000000000
        00000000000000000052535455565758595A5B5C5D5E02000000000000000000
        0000000000000000000000000000000000000000000000000045464748494A4B
        4C4D4E4F50510000000000000000000000000000000000000000000000000000
        00000000000000000038393A3B3C3D3E3F404142434400000000000000000000
        000000000000000000000000000000000000000000000000002B2C2D2E2F3031
        3233343536370000000000000000000000000000000000000000000000000000
        000000000000000000001F202122232425262728292A00000000000000000000
        000000000000000000000000000000000000000000000000000015161718191A
        1B1C1D131E000000000000000000000000000000000000000000000000000000
        00000000000000000000000C0D0E0F1011121314000000000000000000000000
        0000000000000000000000000000000000000000000000000000000005060708
        090A0B0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020304000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Margin = 0
      ParentBiDiMode = False
      Spacing = -14
      OnClick = SpeedButton7Click
    end
    object Button1: TButton
      Left = 208
      Top = 2
      Width = 95
      Height = 25
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 312
      Top = 2
      Width = 95
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
