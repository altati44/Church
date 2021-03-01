object Form1: TForm1
  Left = 81
  Top = 73
  Width = 859
  Height = 594
  Caption = 'Church - lasptaniSoft'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 209
    Top = 34
    Height = 487
    AutoSnap = False
    Beveled = True
    ResizeStyle = rsUpdate
    OnMoved = Splitter1Moved
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 34
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 0
    object ToolBar2: TToolBar
      Left = 2
      Top = 2
      Width = 588
      Height = 30
      Align = alLeft
      ButtonHeight = 25
      ButtonWidth = 24
      Caption = 'ToolBar2'
      DisabledImages = ImageList6
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      HotImages = ImageList5
      Images = ImageList4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object ToolButton33: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton33'
        ImageIndex = 17
        Style = tbsDivider
      end
      object ToolButton14: TToolButton
        Left = 8
        Top = 0
        Action = AbrirBD
      end
      object ToolButton20: TToolButton
        Left = 32
        Top = 0
        Action = ImportarDB
      end
      object ToolButton21: TToolButton
        Left = 56
        Top = 0
        Action = ExportarDB
      end
      object ToolButton22: TToolButton
        Left = 80
        Top = 0
        Action = CerrarDBExt
      end
      object ToolButton32: TToolButton
        Left = 104
        Top = 0
        Width = 20
        Caption = 'ToolButton32'
        ImageIndex = 17
        Style = tbsDivider
      end
      object ToolButton39: TToolButton
        Left = 124
        Top = 0
        Action = OrdenarDB
      end
      object ToolButton23: TToolButton
        Left = 148
        Top = 0
        Action = MostrarDBMaster
      end
      object ToolButton15: TToolButton
        Left = 172
        Top = 0
        Action = BuscarDB
      end
      object ToolButton24: TToolButton
        Left = 196
        Top = 0
        Action = ImprimirDB
      end
      object ToolButton2: TToolButton
        Left = 220
        Top = 0
        Action = Configurar
      end
      object ButtonCandado: TToolButton
        Left = 244
        Top = 0
        Action = Candado
        Enabled = False
        Style = tbsCheck
      end
      object ToolButton25: TToolButton
        Left = 268
        Top = 0
        Width = 20
        Caption = 'ToolButton25'
        ImageIndex = 10
        Style = tbsDivider
      end
      object ButtonInfoAdiciona: TToolButton
        Left = 288
        Top = 0
        Action = PanelInfoAdicional
        Style = tbsCheck
      end
      object ButtonFoto: TToolButton
        Left = 312
        Top = 0
        Action = PanelFotografia
        Enabled = False
        Style = tbsCheck
      end
      object ButtonIdioma: TToolButton
        Left = 336
        Top = 0
        Action = PanelIdiomas
        Enabled = False
        Style = tbsCheck
      end
      object ButtonEnfermedad: TToolButton
        Left = 360
        Top = 0
        Action = PanelEnfermedades
        Enabled = False
        Style = tbsCheck
      end
      object ButtonOtraInf: TToolButton
        Left = 384
        Top = 0
        Action = PanelOtraInfo
        Enabled = False
        Style = tbsCheck
      end
      object ButtonVisitas: TToolButton
        Left = 408
        Top = 0
        Action = PanelVisitados
        Enabled = False
        Style = tbsCheck
      end
      object ToolButton35: TToolButton
        Left = 432
        Top = 0
        Width = 20
        Caption = 'ToolButton35'
        ImageIndex = 5
        Style = tbsDivider
      end
      object ToolButton19: TToolButton
        Left = 452
        Top = 0
        Action = Copiar
      end
      object ToolButton18: TToolButton
        Left = 476
        Top = 0
        Action = Cortar
      end
      object ToolButton16: TToolButton
        Left = 500
        Top = 0
        Action = Pegar
      end
      object ToolButton36: TToolButton
        Left = 524
        Top = 0
        Width = 20
        Caption = 'ToolButton36'
        ImageIndex = 5
        Style = tbsDivider
      end
      object ToolButton1: TToolButton
        Left = 544
        Top = 0
        Action = CerrarChurch
      end
      object ToolButton3: TToolButton
        Left = 568
        Top = 0
        Width = 20
        Caption = 'ToolButton3'
        ImageIndex = 20
        Style = tbsDivider
      end
    end
    object Panel52: TPanel
      Left = 590
      Top = 2
      Width = 256
      Height = 30
      Align = alLeft
      AutoSize = True
      BevelInner = bvLowered
      BorderStyle = bsSingle
      TabOrder = 1
      object Panel66: TPanel
        Left = 2
        Top = 2
        Width = 60
        Height = 22
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = -2
          Width = 60
          Height = 13
          Align = alCustom
          Alignment = taCenter
          Caption = ' Buscar por: '
        end
        object LabelGrid1: TLabel
          Left = 0
          Top = 9
          Width = 3
          Height = 13
          Align = alCustom
          Alignment = taCenter
        end
      end
      object Panel67: TPanel
        Left = 171
        Top = 2
        Width = 79
        Height = 22
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object ButtonSiguiente: TSpeedButton
          Left = 56
          Top = 0
          Width = 23
          Height = 22
          Hint = 'Buscar siguiente'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF566B77333536FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52ABDA7EA9BE343435FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF167FB732A5E483AABE333434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1784BE0D9BEC3BAEED82A9BD3334
            34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002F95CC1B87C11E88C21B
            86C1148DCF21A9F717A3F53AACEB82A9BD333434FFFFFFFFFFFFFFFFFFFFFFFF
            00000047C5FF38B3F83FB8FB3FB7FB3FB7FB43B7F946BAFE2CB1FF16A2F43AAD
            EB81A8BD383C3DFFFFFFFFFFFF00000070A4BC30B0F34FBFFE57C3FF56C2FF55
            C1FF54C1FF5FC2FF47BBFF25AFFF14A2F43DAEEC526B7800000000000083B0C6
            59C7FF73CAFA82D2FF82D2FF82D2FF7ED0FF72C9FF6BC7FF51BFFF2DB2FF15A1
            F340B0ED536C7900000057778749C3FF48B4F363C2FA64C1FA63C1FA62C1FA65
            C2FA77C9F883D1FE66C6FF37AEF242AFEB84AABE3A3D3EFFFFFF4563722794CE
            2589C1258AC12589C12589C1258AC12087C02A95CF6FC7F84AB6F449B1EB87AB
            BE343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF1D86BE33A9EA4CB4ED85AABE333434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF177FB739A8E487ACBF343435FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF56ADDB81AAC0343535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF596D77343637FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = ButtonSiguienteClick
        end
        object ButtonBuscar: TSpeedButton
          Left = 0
          Top = 0
          Width = 23
          Height = 22
          Hint = 'Buscar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2048626B7A8AFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2250
            6B94E3FE66C2F72A3A4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF24557095E4FE64CAFE0D5281FFFFFF68513D8A6648
            84634C815E477F5C477955436D4435693E2E693D2F76463759606B81D8FD61CA
            FF0D5584FFFFFFFFFFFFB89575FFFBECFFFFFEFFFDFAF7EBEBDAC4B7DFCAABE1
            D1B4D9C6B5D0B7B2D1C2C382BBE0205F89FFFFFFFFFFFFFFFFFFB09071FFFAF0
            FFFFFFF8F7FBD8C5B4F4E0ABFFFFC7FFFFDEFFFFEFEBE7DFBDABAAE1CBC96135
            23FFFFFFFFFFFFFFFFFFB19171FFF8EEFFFFFFE6DCD8EED29EFDE8ADFEF8C5FF
            FFD9FFFFEBFFFFFDE3DDD4E2CAC6683B29FFFFFFFFFFFFFFFFFFB29272FFF9EF
            FFFFFFE7D5C4F7D99EFBE6AEFDF4C1FFFFD7FFFFE0FFFFE8F8F8DFDBC4BF683C
            2BFFFFFFFFFFFFFFFFFFB39473FFF9EFFFFFFFECD9C7F7D89CFDF4C5FEF9DBFE
            F8CBFFFFD3FFFFD6F9F9D2E1CCC5683E2CFFFFFFFFFFFFFFFFFFB49574FFF9EF
            FFFFFFF2E9E5F3CF9AFEF5C1FFFFDEFCF1C0FCF1BBFFF8BFEDE5C4EDDBD9683D
            2BFFFFFFFFFFFFFFFFFFB59775FFFBF2FFFFFFFDFFFFF0DFCEF6D8A1FCE9AEFB
            E5ABFBE4A9F3E4B7E9E6E2FAF0EF683E2CFFFFFFFFFFFFFFFFFFB99B78FFF2E0
            FFF7F0FFF5EDFDF2ECF4D9C6F3CCA4F3CFA5F1CCABF1D5C9FCE6DFFDDCD1683A
            27FFFFFFFFFFFFFFFFFF98774EFFD388FFC784FFB874FFAA66FF9C5AFF8A4AFF
            7A39FF6A28FF5B17FF540DFF4F0D691E03FFFFFFFFFFFFFFFFFFFFFFFFBE8A49
            C88D4CC38041C17638BE6B2EBC6024BA551BB84911B53E07B63700A82E00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = ButtonBuscarClick
        end
        object ButtonAnterior: TSpeedButton
          Left = 32
          Top = 0
          Width = 23
          Height = 22
          Hint = 'Buscar anterior'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33353656
            6B77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF3434357EA9BE52ABDAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33343483AABE32A5E416
            7FB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF33343482A9BD3BAEED0D9BEC1784BEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33343482A9BD3AACEB17A3F521A9F714
            8DCF1B86C11E88C21B87C12F95CC000000FFFFFFFFFFFFFFFFFFFFFFFF383C3D
            81A8BD3AADEB16A2F42CB1FF46BAFE43B7F93FB7FB3FB7FB3FB8FB38B3F847C5
            FF000000FFFFFFFFFFFF000000526B783DAEEC14A2F425AFFF47BBFF5FC2FF54
            C1FF55C1FF56C2FF57C3FF4FBFFE30B0F370A4BC000000FFFFFF000000536C79
            40B0ED15A1F32DB2FF51BFFF6BC7FF72C9FF7ED0FF82D2FF82D2FF82D2FF73CA
            FA59C7FF83B0C6000000FFFFFF3A3D3E84AABE42AFEB37AEF266C6FF83D1FE77
            C9F865C2FA62C1FA63C1FA64C1FA63C2FA48B4F349C3FF577787FFFFFFFFFFFF
            34343487ABBE49B1EB4AB6F46FC7F82A95CF2087C0258AC12589C12589C1258A
            C12589C12794CE456372FFFFFFFFFFFFFFFFFF33343485AABE4CB4ED33A9EA1D
            86BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF34343587ACBF39A8E4177FB7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF34353581AAC056
            ADDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF343637596D77FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = ButtonAnteriorClick
        end
      end
      object Panel4: TPanel
        Left = 62
        Top = 2
        Width = 109
        Height = 22
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel4'
        TabOrder = 2
        object EditBuscar2: TJvEdit
          Left = 1
          Top = 2
          Width = 107
          Height = 19
          Flat = True
          ParentCtl3D = False
          Align = alCustom
          Modified = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = EditBuscar2KeyPress
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 209
    Height = 487
    Align = alLeft
    BevelOuter = bvNone
    Color = clActiveCaption
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 209
      Height = 24
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clScrollBar
      TabOrder = 0
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 180
        Height = 24
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'Explorador de Iglesias'
        TabOrder = 0
      end
      object Panel16: TPanel
        Left = 180
        Top = 0
        Width = 29
        Height = 24
        Align = alRight
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 26
          Height = 22
          Align = alCustom
          Caption = 'ToolBar1'
          DisabledImages = ImageList6
          EdgeInner = esNone
          EdgeOuter = esNone
          Flat = True
          HotImages = ImageList5
          Images = ImageList4
          TabOrder = 0
          Transparent = True
          object ButtonMas: TToolButton
            Left = 0
            Top = 0
            Hint = 'Expandir/Contraer'
            Caption = 'ButtonMas'
            Enabled = False
            ImageIndex = 21
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
            OnClick = ButtonMasClick
          end
        end
      end
    end
    object TreeView1: TTreeView
      Left = 0
      Top = 24
      Width = 209
      Height = 463
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HideSelection = False
      HotTrack = True
      Images = ImageList1
      Indent = 19
      MultiSelectStyle = []
      ParentFont = False
      PopupMenu = PopupMenu1
      RowSelect = True
      SortType = stText
      StateImages = ImageList2
      TabOrder = 1
      OnCollapsed = TreeView1Collapsed
      OnCollapsing = TreeView1Collapsing
      OnCustomDrawItem = TreeView1CustomDrawItem
      OnEdited = TreeView1Edited
      OnExpanding = TreeView1Expanding
      OnExpanded = TreeView1Expanded
      OnKeyPress = TreeView1KeyPress
      OnMouseDown = TreeView1MouseDown
    end
  end
  object BarraEstado: TStatusBar
    Left = 0
    Top = 521
    Width = 851
    Height = 19
    Color = clInactiveBorder
    Panels = <
      item
        Text = 'Registro 0'
        Width = 130
      end
      item
        Text = '0 Miembro (s)'
        Width = 140
      end
      item
        Text = 'Visitado: 0'
        Width = 120
      end
      item
        Text = 'Seleccionados: 0'
        Width = 140
      end
      item
        Width = 400
      end>
  end
  object PageControl1: TPageControl
    Left = 212
    Top = 34
    Width = 639
    Height = 487
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HotTrack = True
    MultiLine = True
    ParentFont = False
    TabHeight = 27
    TabOrder = 3
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Tabla Maestra'
      Highlighted = True
      ImageIndex = 2
      object SplitterAdicional: TSplitter
        Left = 0
        Top = 269
        Width = 631
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        AutoSnap = False
        Beveled = True
        MinSize = 1
        ResizeStyle = rsUpdate
        Visible = False
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 631
        Height = 269
        Align = alClient
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 244
          Width = 629
          Height = 24
          Align = alBottom
          AutoSize = True
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 2
            Width = 278
            Height = 20
            DataSource = DSTMiembros
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            Hints.Strings = (
              'Primer Registro'
              'Registro Anterior'
              'Registro Siguiente'
              #218'ltimo Registro'
              'Adicionar un Registro'
              'Borrar Registro(s)'
              'Editar Registro'
              'Guardar los Cambios'
              'Cancelar la Edici'#243'n'
              'Refrescar los Datos')
            ParentShowHint = False
            ConfirmDelete = False
            ShowHint = True
            TabOrder = 0
            BeforeAction = DBNavigator1BeforeAction
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 21
          Width = 629
          Height = 45
          Align = alTop
          AutoSize = True
          BevelInner = bvLowered
          BiDiMode = bdLeftToRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          object LIglesia: TLabel
            Left = 67
            Top = 29
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LDistrito: TLabel
            Left = 67
            Top = 17
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LAsociacion: TLabel
            Left = 2
            Top = 21
            Width = 625
            Height = 19
            Align = alTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LProvincia: TLabel
            Left = 67
            Top = 5
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LUnion: TLabel
            Left = 2
            Top = 2
            Width = 625
            Height = 19
            Align = alTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Panel17: TPanel
            Left = 4
            Top = 4
            Width = 58
            Height = 15
            Align = alCustom
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' Provincia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Panel22: TPanel
            Left = 4
            Top = 17
            Width = 58
            Height = 14
            Align = alCustom
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' Distrito:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Panel23: TPanel
            Left = 4
            Top = 29
            Width = 58
            Height = 14
            Align = alCustom
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' Iglesia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object Panel21: TPanel
          Left = 1
          Top = 1
          Width = 629
          Height = 20
          Hint = 'T'#237'tulo del informe, clic para cambiar'
          Align = alTop
          BevelInner = bvLowered
          Caption = 'Listado de Miembros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Panel21Click
          OnResize = Panel21Resize
          object Edit1: TJvEdit
            Left = 2
            Top = 2
            Width = 625
            Height = 16
            Hint = 'Introduzca el t'#237'tulo que llevar'#225' su informe'
            BevelInner = bvNone
            BevelOuter = bvNone
            Flat = True
            ParentCtl3D = False
            Align = alClient
            Alignment = taCenter
            Modified = False
            TabOrder = 0
            Text = 'Listado de Miembros'
            Visible = False
            OnExit = Edit1Exit
            OnKeyPress = Edit1KeyPress
          end
        end
        object DBGrid1: TJvDBUltimGrid
          Left = 1
          Top = 66
          Width = 629
          Height = 178
          Align = alClient
          Color = clCream
          FixedColor = clMoneyGreen
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          OnColEnter = DBGrid1ColEnter
          OnColExit = DBGrid1ColExit
          OnColumnMoved = DBGrid1ColumnMoved
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnEditButtonClick = DBGrid1EditButtonClick
          OnExit = DBGrid1Exit
          OnKeyDown = DBGrid1KeyDown
          OnKeyPress = DBGrid1KeyPress
          OnKeyUp = DBGrid1KeyUp
          OnMouseDown = DBGrid1MouseDown
          OnMouseUp = DBGrid1MouseUp
          OnTitleClick = DBGrid1TitleClick
          MultiSelect = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnColumnResized = DBGrid1ColumnResized
          FieldsCheck.Strings = (
            'Fallecido'
            'Desfraternizado'
            'Traslado')
          FieldsCheckColor.Strings = (
            '$00F0C1FF'
            '$00BBFFFF'
            '$00AEFFAE')
          ExOptions = [eoENTERlikeTAB, eoKeepSelection]
        end
      end
      object PanelAdicional: TPanel
        Left = 0
        Top = 272
        Width = 631
        Height = 178
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object SplitterEnfermedades: TSplitter
          Left = 416
          Top = 18
          Height = 160
          AutoSnap = False
          Beveled = True
          MinSize = 10
          ResizeStyle = rsUpdate
          Visible = False
        end
        object SplitterFoto: TSplitter
          Left = 140
          Top = 18
          Height = 160
          AutoSnap = False
          Beveled = True
          MinSize = 10
          ResizeStyle = rsUpdate
        end
        object SplitterIdiomas: TSplitter
          Left = 223
          Top = 18
          Height = 160
          AutoSnap = False
          Beveled = True
          MinSize = 10
          ResizeStyle = rsUpdate
          Visible = False
        end
        object PanelFoto: TPanel
          Left = 0
          Top = 18
          Width = 140
          Height = 160
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 140
            Height = 20
            Align = alTop
            Alignment = taRightJustify
            BevelInner = bvLowered
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Panel5: TPanel
              Left = 2
              Top = 2
              Width = 15
              Height = 16
              Align = alLeft
              Color = clScrollBar
              TabOrder = 0
              object CheckBox1: TCheckBox
                Left = 1
                Top = -1
                Width = 15
                Height = 17
                Hint = 'Ampliar'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = CheckBox1Click
              end
            end
            object Panel15: TPanel
              Left = 17
              Top = 2
              Width = 121
              Height = 16
              Align = alClient
              Alignment = taLeftJustify
              Caption = 'Fotograf'#237'a (140x140)'
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 20
            Width = 140
            Height = 140
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBImage1: TDBImage
              Left = 0
              Top = 0
              Width = 140
              Height = 140
              Hint = 'Boble click para buscar Imagen'
              Align = alClient
              DataField = 'Foto'
              DataSource = DSTMiembros
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnDblClick = DBImage1DblClick
              OnKeyDown = DBImage1KeyDown
            end
          end
        end
        object PanelInfo: TPanel
          Left = 419
          Top = 18
          Width = 212
          Height = 160
          Align = alClient
          AutoSize = True
          TabOrder = 1
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 210
            Height = 19
            Align = alTop
            BevelInner = bvLowered
            BorderWidth = 1
            Caption = 'Otra Informaci'#243'n...'
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBMemo1: TDBMemo
            Left = 1
            Top = 20
            Width = 210
            Height = 139
            Align = alClient
            Color = clWhite
            DataField = 'Otra Informaci'#243'n'
            DataSource = DSTMiembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
        object PanelVisitas: TPanel
          Left = 419
          Top = 18
          Width = 212
          Height = 160
          Align = alClient
          Color = clScrollBar
          TabOrder = 2
          Visible = False
          OnResize = PanelVisitasResize
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 210
            Height = 17
            Align = alTop
            BevelInner = bvLowered
            Caption = '"Las visitas personales son de gran valor." - Elena G. de White'
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel58: TPanel
            Left = 1
            Top = 18
            Width = 210
            Height = 141
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Panel10: TPanel
              Left = 0
              Top = 117
              Width = 210
              Height = 24
              Align = alBottom
              AutoSize = True
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBNavigVisitas: TDBNavigator
                Left = 2
                Top = 2
                Width = 206
                Height = 20
                DataSource = DSTVisitas
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alBottom
                Hints.Strings = (
                  'Primer Registro'
                  'Registro Anterior'
                  'Registro Siguiente'
                  #218'ltimo Registro'
                  'Adicionar un Registro'
                  'Borrar Registro(s)'
                  'Editar Registro'
                  'Guardar los Cambios'
                  'Cancelar la Edici'#243'n'
                  'Refrescar los Datos')
                ParentShowHint = False
                ConfirmDelete = False
                ShowHint = True
                TabOrder = 0
                BeforeAction = DBNavigVisitasBeforeAction
              end
            end
            object DBGrid2: TJvDBUltimGrid
              Left = 0
              Top = 0
              Width = 210
              Height = 117
              Align = alClient
              DataSource = DSTVisitas
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnEditButtonClick = DBGrid2EditButtonClick
              OnKeyDown = DBGrid2KeyDown
              OnKeyPress = DBGrid2KeyPress
              OnKeyUp = DBGrid2KeyUp
              OnMouseDown = DBGrid2MouseDown
              OnMouseUp = DBGrid2MouseUp
              MultiSelect = True
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnColumnResized = DBGrid2ColumnResized
              ExOptions = [eoENTERlikeTAB, eoKeepSelection]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Fecha'
                  Visible = False
                end
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'Visitado'
                  Width = 191
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Notas'
                  Width = 435
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IdVisitas'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdMiembro'
                  Visible = False
                end>
            end
          end
        end
        object PanelEnfermedad: TPanel
          Left = 226
          Top = 18
          Width = 190
          Height = 160
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          Visible = False
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 190
            Height = 19
            Align = alTop
            BevelInner = bvLowered
            Caption = 'Enfermedades'
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Panel45: TPanel
              Left = 2
              Top = 2
              Width = 20
              Height = 15
              Align = alLeft
              Color = clScrollBar
              TabOrder = 0
              object BEnfermedad: TJvXPButton
                Left = 1
                Top = 1
                Width = 18
                Height = 13
                Hint = 'Adicionar/Quitar Enfermedad'
                Caption = '+'
                Enabled = False
                TabOrder = 0
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = BEnfermedadClick
              end
            end
          end
          object DBMemoEnfermedades: TDBMemo
            Left = 0
            Top = 19
            Width = 190
            Height = 141
            Align = alClient
            DataField = 'Enfermedades'
            DataSource = DSTMiembros
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
            WordWrap = False
          end
        end
        object PanelIdioma: TPanel
          Left = 143
          Top = 18
          Width = 80
          Height = 160
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          Visible = False
          object Panel37: TPanel
            Left = 0
            Top = 0
            Width = 80
            Height = 19
            Align = alTop
            BevelInner = bvLowered
            Caption = 'Idiomas'
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Panel35: TPanel
              Left = 2
              Top = 2
              Width = 20
              Height = 15
              Align = alLeft
              Color = clScrollBar
              TabOrder = 0
              object BIdioma: TJvXPButton
                Left = 1
                Top = 1
                Width = 18
                Height = 13
                Hint = 'Adicionar/Quitar Idioma'
                Caption = '+'
                Enabled = False
                TabOrder = 0
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = BIdiomaClick
              end
            end
          end
          object DBMemoIdiomas: TDBMemo
            Left = 0
            Top = 19
            Width = 80
            Height = 141
            Align = alClient
            DataField = 'Idiomas'
            DataSource = DSTMiembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
            WordWrap = False
          end
        end
        object Panel48: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 18
          Align = alTop
          BevelInner = bvLowered
          Caption = 'Informaci'#243'n Adicional del Miembro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pastores (Dist/Igl)'
      ImageIndex = 2
      object Splitter9: TSplitter
        Left = 0
        Top = 139
        Width = 631
        Height = 3
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        MinSize = 60
        ResizeStyle = rsUpdate
      end
      object Splitter11: TSplitter
        Left = 0
        Top = 337
        Width = 631
        Height = 3
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        MinSize = 60
        ResizeStyle = rsUpdate
      end
      object Panel42: TPanel
        Left = 0
        Top = 0
        Width = 631
        Height = 139
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel43: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object PanelPastorD: TPanel
            Left = 0
            Top = 0
            Width = 631
            Height = 20
            Align = alClient
            BevelInner = bvLowered
            Caption = 'Pastores por Distritos'
            Color = clActiveBorder
            TabOrder = 0
          end
        end
        object Panel50: TPanel
          Left = 0
          Top = 20
          Width = 631
          Height = 119
          Align = alClient
          TabOrder = 1
          object DBGridPastorDistrito: TJvDBUltimGrid
            Left = 1
            Top = 1
            Width = 629
            Height = 117
            Align = alClient
            DataSource = DSTPastorDistrito
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEditButtonClick = DBGridPastorDistritoEditButtonClick
            OnEnter = DBGridPastorDistritoEnter
            OnKeyDown = DBGridPastorDistritoKeyDown
            OnKeyPress = DBGridPastorDistritoKeyPress
            OnKeyUp = DBGridPastorDistritoKeyUp
            OnMouseDown = DBGridPastorDistritoMouseDown
            OnMouseUp = DBGridPastorDistritoMouseUp
            OnTitleClick = DBGridPastorDistritoTitleClick
            MultiSelect = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            OnColumnResized = DBGridPastorDistritoColumnResized
            ExOptions = [eoENTERlikeTAB, eoKeepSelection]
            Columns = <
              item
                Expanded = False
                FieldName = 'IdPastorDistrito'
                Visible = False
              end
              item
                ButtonStyle = cbsNone
                Expanded = False
                FieldName = 'Nombre'
                Width = 90
                Visible = True
              end
              item
                ButtonStyle = cbsNone
                Expanded = False
                FieldName = 'Primer Apellido'
                Width = 86
                Visible = True
              end
              item
                ButtonStyle = cbsNone
                Expanded = False
                FieldName = 'Segundo Apellido'
                Width = 86
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'Entrada'
                Width = 82
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'Salida'
                Width = 82
                Visible = True
              end
              item
                ButtonStyle = cbsNone
                Expanded = False
                FieldName = 'IdDistrito'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Tel'#233'fono'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Direcci'#243'n'
                Width = 273
                Visible = True
              end>
          end
        end
      end
      object Panel51: TPanel
        Left = 0
        Top = 142
        Width = 631
        Height = 195
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object PanelPastorI: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 20
          Align = alTop
          BevelInner = bvLowered
          Caption = 'Pastores por Iglesia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBGridPastorIglesia: TJvDBUltimGrid
          Left = 0
          Top = 20
          Width = 631
          Height = 175
          Align = alClient
          DataSource = DSTPastorIglesia
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = DBGridPastorIglesiaEditButtonClick
          OnEnter = DBGridPastorIglesiaEnter
          OnKeyDown = DBGridPastorIglesiaKeyDown
          OnKeyPress = DBGridPastorIglesiaKeyPress
          OnKeyUp = DBGridPastorIglesiaKeyUp
          OnMouseDown = DBGridPastorIglesiaMouseDown
          OnMouseUp = DBGridPastorIglesiaMouseUp
          OnTitleClick = DBGridPastorIglesiaTitleClick
          MultiSelect = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnColumnResized = DBGridPastorIglesiaColumnResized
          ExOptions = [eoENTERlikeTAB, eoKeepSelection]
          Columns = <
            item
              Expanded = False
              FieldName = 'IdPastorIglesia'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Nombre'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Primer Apellido'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Segundo Apellido'
              Width = 86
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'Entrada'
              Width = 82
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'Salida'
              Width = 82
              Visible = True
            end
            item
              ButtonStyle = cbsNone
              Expanded = False
              FieldName = 'IdIglesia'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Tel'#233'fono'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Direcci'#243'n'
              Width = 273
              Visible = True
            end>
        end
      end
      object Panel53: TPanel
        Left = 0
        Top = 426
        Width = 631
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Panel49: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 24
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object DBNavigatorObreros: TDBNavigator
            Left = 2
            Top = 2
            Width = 278
            Height = 20
            DataSource = DSTPastorDistrito
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            Hints.Strings = (
              'Primer Registro'
              'Registro Anterior'
              'Registro Siguiente'
              #218'ltimo Registro'
              'Adicionar un Registro'
              'Borrar Registro(s)'
              'Editar Registro'
              'Guardar los Cambios'
              'Cancelar la Edici'#243'n'
              'Refrescar los Datos')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            BeforeAction = DBNavigatorObrerosBeforeAction
          end
        end
      end
      object Panel39: TPanel
        Left = 0
        Top = 340
        Width = 631
        Height = 86
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        object PanelObreras: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 20
          Align = alTop
          BevelInner = bvLowered
          Caption = 'Obreras B'#237'blicas por Iglesia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBGridObreras: TJvDBUltimGrid
          Left = 0
          Top = 20
          Width = 631
          Height = 66
          Align = alClient
          DataSource = DSTObreras
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = DBGridObrerasEditButtonClick
          OnEnter = DBGridObrerasEnter
          OnKeyDown = DBGridObrerasKeyDown
          OnKeyPress = DBGridObrerasKeyPress
          OnKeyUp = DBGridObrerasKeyUp
          OnMouseDown = DBGridObrerasMouseDown
          OnMouseUp = DBGridObrerasMouseUp
          OnTitleClick = DBGridObrerasTitleClick
          MultiSelect = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnColumnResized = DBGridObrerasColumnResized
          ExOptions = [eoENTERlikeTAB, eoKeepSelection]
          Columns = <
            item
              Expanded = False
              FieldName = 'IdObreras'
              ReadOnly = False
              Visible = False
            end
            item
              ButtonStyle = cbsNone
              Expanded = False
              FieldName = 'Nombre'
              Width = 90
              Visible = True
            end
            item
              ButtonStyle = cbsNone
              Expanded = False
              FieldName = 'Primer Apellido'
              Width = 86
              Visible = True
            end
            item
              ButtonStyle = cbsNone
              Expanded = False
              FieldName = 'Segundo Apellido'
              Width = 86
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'Entrada'
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'Salida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IdIglesia'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Tel'#233'fono'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Direcci'#243'n'
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Nombramientos'
      ImageIndex = 3
      object Panel30: TPanel
        Left = 0
        Top = 0
        Width = 631
        Height = 450
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter6: TSplitter
          Left = 0
          Top = 407
          Width = 631
          Height = 3
          Cursor = crVSplit
          Align = alTop
          AutoSnap = False
          ResizeStyle = rsUpdate
        end
        object Panel31: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel32: TPanel
            Left = 0
            Top = 0
            Width = 631
            Height = 20
            Align = alClient
            BevelInner = bvLowered
            Caption = 'Nombramientos por Iglesia'
            TabOrder = 0
          end
        end
        object Panel38: TPanel
          Left = 0
          Top = 20
          Width = 631
          Height = 387
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 143
            Height = 387
            Align = alLeft
            TabOrder = 0
            object Image1: TImage
              Left = 48
              Top = 136
              Width = 41
              Height = 41
              Picture.Data = {
                055449636F6E0000010008002020100001000400E80200008600000010101000
                01000400280100006E0300003030000001000800A80E00009604000020200000
                01000800A80800003E130000101000000100080068050000E61B000030300000
                01002000A82500004E2100002020000001002000A8100000F646000010100000
                01002000680400009E5700002800000020000000400000000100040000000000
                0000000000000000000000000000000000000000000000000000000000800000
                00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
                00FFFF00FF000000FF00FF00FFFF0000FFFFFF00111111111111111111111111
                1111111111111111111111111111111111111111111111111111000111111111
                1111111111111111110078800111111111111111111111110077788880011111
                1111111111111100777780088880011111111111111100777788788008888001
                1111111111007777887878888008888001111111107777887778788888800888
                8001111118778877777878888888800888801111188877777778788888888880
                08801111887877777778788888888888800011118F7877777778F88888888888
                888001118F78777777F8877888888888888800118F787777FF77788778888888
                888808018F7877FF7777777887788888888807808F78FF777997788778877888
                888807888FF8877AA7788777770887788888081188F778877887777700F70887
                788801111188F77888877700FFFF077887780111111188F7788800FFFCCF7087
                7881111111111188F7788FFCCFFFF088811111111111111188F778FFFFCCF701
                11111111111111111188F8FFCCFFFF7011111111111111111111888FFFFCCFF7
                01111111111111111111118FFCCFFFFF701111111111111111111118FFFFFCCF
                F700111111111111111111118FFCCFFFFF881111111111111111111118FFFFFF
                881111111111111111111111118FFF8811111111111111111111111111188811
                1111111111111111111111111111111111111111FFFFFFFFFFFFFFFFFFF1FFFF
                FFC07FFFFF001FFFFC0007FFF00001FFC000007F8000001F8000000F8000000F
                0000000F00000007000000030000000100000000000000000000000300000007
                C0000007F000001FFC00007FFF0001FFFFC000FFFFF0007FFFFC003FFFFE000F
                FFFF000FFFFF803FFFFFC0FFFFFFE3FFFFFFFFFF280000001000000020000000
                0100040000000000000000000000000000000000000000000000000000000000
                000000000080000000808000800000008000800080800000C0C0C00080808000
                0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0011111100
                0111111111110078800111111100778008800111107788788008800118887778
                8880080188777778888880018F7777F8888888808F77FF77788888808FFF7799
                777888808F77AA7778807880188F77788FF0700111188F8FFFFF01111111188F
                FFFFF01111111118FFFFFF00111111118FFF88111111111118881111FC7F7788
                F01F7888C0070888800111118001887700017888000080080000111100007777
                0000788880018880E0071111F8037777FE007888FF038888FF8F111128000000
                3000000060000000010008000000000000000000000000000000000000000000
                00000000000000009966660096666600976868009F6F6F00946767008F696900
                916B6B008D686800CC999900B98C8C00BF92920093707000C3969600B1888800
                A6808000B38C8C0090717100977777009174740096797900A1838300997D7D00
                6C595900A68A8A00997F7F009C828200957C7C00665656007F6C6C0088757500
                927F7F009F8C8C00D2BBBB00A7959500AFA2A200B4A8A800B6AAAA00FFF2F200
                B9B3B300FFF9F9009B747300AC828100CCB2B100A6777400A6787600A2777500
                B38B8900A6757100C69B9700E6D8D700DFCCCA00ECE2E100FFA69900FFBCB300
                FFC7BF00FFE9E600F2EBEA00FFAC9F00FFD3CC00B3827800B98D8400BF978F00
                C6A29A00D9C1BB00ECE0DD00B9897B00D2B4AC00E6D3CC00FFB69900FFB79A00
                FFBB9F00FFC9B300D2AE9F00FFBC9D00D29F8900CC9F8B00FFD7C600FFE1D200
                F8F4F200FFC09F00FFC4A200ECD7CC00FFEFE600ECD5C700E6BDA100E6C4AE00
                FFC9A000FFCBA500F2D8C500FFFBF800FFC69900FFC89D00FFCDA600FFCFA700
                FFD1AA00F9D6B600FFD7AE00FFD7B000FFD8B200FFDAB500FFDDBB00FFE0C100
                FFE8D200FFEBD700FFEEDD00FFF1E300FFF9F300FFE3C600FFE6CC00FFF4E800
                FFF7EE0066FF990056A26F00486F550052785E0065786B0059CC80006B756F00
                FFFFFF00FDFDFD00FAFAFA00F7F7F700F5F5F500F2F2F200F1F1F100EFEFEF00
                EDEDED00EAEAEA00E9E9E900E7E7E700E5E5E500E3E3E300E0E0E000DEDEDE00
                DDDDDD00DADADA00D9D9D900D7D7D700D4D4D400D2D2D200D1D1D100CFCFCF00
                CCCCCC00CACACA00C9C9C900C6C6C600C5C5C500C2C2C200C0C0C000BFBFBF00
                BDBDBD00BBBBBB00B9B9B900B7B7B700B4B4B400B2B2B200B0B0B000AEAEAE00
                ACACAC00ABABAB00A9A9A900A7A7A700A5A5A500A2A2A200A0A0A0009E9E9E00
                9C9C9C009B9B9B0099999900979797009494940093939300919191008F8F8F00
                8D8D8D008A8A8A0089898900868686008585850083838300808080007F7F7F00
                7C7C7C007A7A7A0079797900777777007575750073737300707070006F6F6F00
                6C6C6C006A6A6A0069696900666666006464640063636300616161005E5E5E00
                5C5C5C005B5B5B0059595900575757005454540053535300515151004E4E4E00
                4C4C4C004A4A4A0048484800464646004545450043434300414141003E3E3E00
                3D3D3D003B3B3B00393939003737370034343400333333000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000CDDBD8BB000000000000C1
                DADAC10000000000000000000000000000000000000000000000000000000000
                000000C0DAD5BBD7DADACE0000B6D8170A7FA9CECA0000000000000000000000
                0000000000000000000000000000000000B5D6D4AB828DA0B3CADADADB1C0A09
                0D7777779BC2CEA7000000000000000000000000000000000000000000000000
                CFD9B5877C7E8E9D9C9BA3BA0F090B1FB8B0957D777789B5CEB5000000000000
                0000000000000000000000000000C7D8C0917B7C7E7F8F9E9D9C9B9B0E1DC8C3
                BDB8B4AEA08879777CA2CBC100000000000000000000000000000000B9D5CB9B
                7A7B7C7E7F80919F9E9D9C9BC7D3CDC8C3BDB8B4AEA9A08F7D77778FBBC50000
                0000000000000000000000D1D0A6797A7B7C7E7F808292A19F9E9D9CC4D7D3CD
                C8C3BDB8B4AEA9A39D9484787782A9B3000000000000000000C9D5B17D797A7B
                7C7E7F80828393A2A19F9E9D9CA3B4C8CDC8C3BDB8B4AEA9A39D9893857B77BF
                0000000000000000D4BD8778797A7B7C7E7F8082838494A3A2A19F9E9D9C9B9B
                A0AFBEC3BDB8B4AEA9A39D989BABBFBE00000000000000B8D37778797A7B7C7E
                7F808283848DACA9A3A2A19F9E9D9C9B9B9A999DA9B6B8B4AEB5C2C2D0D6D400
                00000000000000B8D278797A7B7C7E7F8082838FABC2C2C2BEB4ACA19F9E9D9C
                9B9B9A9998979AA5C2DCDCA38FB5D20000000000000000B8D1797A7B7C7E7F80
                8293B2C2B39B98A9B1BDC2C0B5AA9E9D9C9B9B9A999897959498AE9B91B1D100
                00000000000000B8D07A7B7C7E7F809AB2C2AB96888A99A6A5A4A5AFB8C2C0B7
                AB9E9B9B9A999897959498A49BB1D00000000000000000B8CF7B7C7E7F99BAC2
                AB8D87888A8B9AA7A6A5A4A3A3A4ABB5C0C2B6AA9D9A99989795767571BACF00
                00000000000000B8CE7C829CBABEA3888587888A8B8C8484919AA3A4A3A3A2A1
                9FAAB2BEC2BBAB9D9897747075C2CE0000000000000000B8BEA0BEBA9A878485
                87888A8B8C8A7E7F8080808A949DA3A2A19F9E9DA4AFBBC2BAADAC7273BACE00
                00000000000000B9C7B6998283848587888A8B8C8E827E7E7F8080808182868E
                969E9F9E9D9C9BA0ABB7C2BDAEB6CD0000000000000000B9B980828384858788
                8A8B8C8E877D7E9EA1998F858081828282838891999D9C9B9B9A9BA8B5C6CC00
                00000000000000B8B88283848587888A8B8C8E8B7D7D90997E86919EA49A8D84
                8282838383858C93999B9A9998B1CB0000000000000000B8B883848587888A8B
                8C8E8E7F7C8DA0807E7E7E7F808A949EA1988E858383848585898F9499B1CA00
                00000000000000B6B8848587888A8B8C8E8E7E7B8CA07F7D7D7E7E7E7F808080
                838E98A2A2968D848585858687AAC90000000000000000B8B88A87888A8B8C8E
                8E7E7A8F9D7E7C7C7D7D7E7E7E7F808080818282858F9BA4A0978B8586BFC100
                0000000000000000C4AF888A8B8C8E8B7D859AAC887B7B7C7C7D7D7E7E7E7F80
                80808182828283838892A9879DC60000000000000000000000C5B39A8F8F8C90
                9EACB7ABB7BFB0A396857D7D7E7E7E7F808080818282828383969789C2B20000
                00000000000000000000B8C5C2C0B3A3A39485949F9DA0A6ADB7BEB1A093877E
                7F80808081828282919F88B9BB00000000000000000000000000000000BD9980
                80808092A29F9D9B9997959BA3ACB8BAADA19084808184989A89B8BB00000000
                00000000000000000000000000BB8E7C7C7C7C9BA4A29F9D9B99979593908E8B
                98A1ACBF93929E8E9EBFB1000000000000000000000000000000000000BF8579
                787728267C818B92969B99979593908E8B8A87B7A69EA5BEBA00000000000000
                00000000000000000000000000B8A527313A35353536373B38287F83888D9190
                8E8B8AC2BCB4A40000000000000000000000000000000000000000000000001E
                425E5D51504A4645454547484D4E534F7C818FBF000000000000000000000000
                000000000000000000000000000000144C626262626262625F5E58575C5B5B5B
                4B20B3B100000000000000000000000000000000000000000000000000000007
                556464646464646464646464646463613C000000000000000000000000000000
                0000000000000000000000000000000160656565656565656565656565656565
                3000000000000000000000000000000000000000000000000000000000000030
                6666666666666666666666666666666602000000000000000000000000000000
                00000000000000000000000000001A3D6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C56
                0700000000000000000000000000000000000000000000000000000000000749
                6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D491A000000000000000000000000000000
                000000000000000000000000000001596767676767676767676767676767673E
                0000000000000000000000000000000000000000000000000000000000222C68
                6868686868686868686868686868682C00000000000000000000000000000000
                000000000000000000000000000C3F696969696969696969696969696969540C
                000000000000000000000000000000000000000000000000000000000001526A
                6A6A6A6A6A6A6A6A6A6A6A6A6A6A432200000000000000000000000000000000
                0000000000000000000000001A2D6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E2E00
                0000000000000000000000000000000000000000000000000000000005406F6F
                6F6F6F6F6F6F6F6F6F6F6F6F6F44120000000000000000000000000000000000
                00000000000000000000001A2A6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B2F0000
                00000000000000000000000000000000000000000000000000000004415A5A5A
                5A5A5A5A5A5A5A5A5A5A5A5A3316000000000000000000000000000000000000
                0000000000000000000003102B2B213232323977777777777777773429000000
                0000000000000000000000000000000000000000000000000000000000252423
                191B1B1306081518101010110000000000000000000000000000000000000000
                00000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFF87E1FFFF0000FFFE0180
                7FFF0000FFF800000FFF0000FFF0000003FF0000FFC0000000FF0000FF000000
                003F0000FE000000000F0000F8000000000F0000F0000000000F0000E0000000
                001F0000E0000000001F0000E0000000001F0000E0000000001F0000E0000000
                001F0000E0000000001F0000E0000000001F0000E0000000001F0000E0000000
                001F0000E0000000001F0000E0000000001F0000E0000000001F0000E0000000
                001F0000F0000000003F0000F8000000003F0000FC000000007F0000FF800000
                00FF0000FF80000001FF0000FF80000007FF0000FF8000001FFF0000FFE00000
                FFFF0000FFE00000FFFF0000FFE00007FFFF0000FFE00007FFFF0000FFE00007
                FFFF0000FFC00007FFFF0000FFC00007FFFF0000FFC0000FFFFF0000FF80000F
                FFFF0000FF80000FFFFF0000FF80000FFFFF0000FF00001FFFFF0000FF00001F
                FFFF0000FE00003FFFFF0000FE00003FFFFF0000FC00007FFFFF0000FF8000FF
                FFFF000028000000200000004000000001000800000000000000000000000000
                00000000000000000000000000000000C2939300AD868600B8929200AC898900
                80666600B28F8F00B18E8E00745E5E00AD909000695959008A767600CCB3B300
                C6AEAE007A6D6D00695F5F007F757500BBAEAE00B0A6A600D6CCCC0045424200
                504D4D00B9B3B300DAD4D400A77C7B00AC807D00AC827F00926F6C00A5878300
                FFB3A600ECE1DF00FFC5B900E6B6AD00BF958B00FFD6CC00BF958A00D9BFB800
                FFE6DF00D9BCB200F1E3DE00CCA29200D9B7A800F2D4C600FFBC9900FFC29F00
                FFCAAC00FFC5A200FFC8A500FFD3B900F2E6DF00FFCCA800E6BA9B00F2DBCA00
                FFD0AA00F9D4B200FFD6AD00FFD7B000FFDAB500FFDBB700FFDFBE00FFE7CF00
                FFECD900FFF8F100FFFDFB00FFE4C800FFF0E000FFF5EA0056BF79006E9E7E00
                70A0800059AF7600FFFFFF00FEFEFE00FBFBFB00FAFAFA00F8F8F800F7F7F700
                F6F6F600F4F4F400F3F3F300F2F2F200F1F1F100EFEFEF00EEEEEE00EDEDED00
                EBEBEB00EAEAEA00E8E8E800E7E7E700E6E6E600E5E5E500E3E3E300E2E2E200
                E1E1E100E0E0E000DFDFDF00DEDEDE00DBDBDB00DADADA00D9D9D900D8D8D800
                D7D7D700D6D6D600D5D5D500D4D4D400D3D3D300D2D2D200D1D1D100D0D0D000
                CFCFCF00CECECE00CDCDCD00CCCCCC00CBCBCB00CACACA00C8C8C800C7C7C700
                C6C6C600C5C5C500C3C3C300C1C1C100C0C0C000BFBFBF00BEBEBE00BDBDBD00
                BCBCBC00BBBBBB00BABABA00B9B9B900B8B8B800B7B7B700B6B6B600B5B5B500
                B4B4B400B3B3B300B2B2B200B1B1B100B0B0B000AFAFAF00AEAEAE00ADADAD00
                ACACAC00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7A700A6A6A600A5A5A500
                A4A4A400A3A3A300A2A2A200A1A1A100A0A0A0009F9F9F009E9E9E009D9D9D00
                9C9C9C009B9B9B009A9A9A009999990097979700969696009494940092929200
                909090008F8F8F008E8E8E008D8D8D008C8C8C008B8B8B008A8A8A0089898900
                8888880087878700858585008484840083838300828282008181810080808000
                7F7F7F007E7E7E007D7D7D007C7C7C007A7A7A00797979007878780077777700
                7676760075757500747474007373730071717100707070006F6F6F006E6E6E00
                6D6D6D006B6B6B0067676700666666006565650063636300606060005F5F5F00
                5E5E5E005C5C5C005A5A5A005959590057575700555555005252520051515100
                505050004F4F4F004E4E4E004D4D4D004C4C4C004B4B4B004A4A4A0049494900
                48484800474747004545450044444400414141003D3D3D003C3C3C003A3A3A00
                3535350033333300000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000AAAAAA000000AAAA
                AA00000000000000000000000000000000000000000000AFDADACCA9BCBCC3DB
                D3C100000000000000000000000000000000000000BCD8D8CEE5E4E0DA140512
                C7E3D7C700000000000000000000000000000000CCDFA2507996C41505010317
                4759B3DEDDCD000000000000000000000000BCE1B25650537C898611020EC3B6
                9E6A4F5093D4E0D0B200000000000000BCDBC5664D5053567F8C898EE2D5CCC3
                B6A79C76564770BDDFAA0000000000BDCF77494D50535659838F8C89AAC5D1CC
                C3B6A79C8A75594AC6AA000000009E9848494D505356595C8E928F8C898683A0
                B0BEB6A79C92A8C1DCAA000000009D6C494D5053565985BEC8B9AA978C898683
                808297A5D7E680BBDCAA000000009B6E4D50535D92BDA4778CA6B3C4C0A69286
                83807D7A779873ACDAAA000000009C71505A90BDA36E6266869B97959FB1C0BF
                AD92807D7A4546BCD9AA00000000B482A0C4946260626669555D6E8191928F95
                A6BFC2AA8D4443C9D8AA00000000BBBC81595C6062666B60535C555657627484
                8C898BA1B4CAC9BAD6AA00000000B965595C6062666B68517A8086816B5B5859
                5D6D7783838598C0D5AA00000000B7595C6062666B6D526B765253576A7C877E
                6E5E5B5D646F77ACD2AA00000000AA636062666B6C52697E505152535455565F
                7283887B6D5E60ADC3000000000000A862666B665F899F6B4E50515253545556
                575859617B8E6CCB0000000000000000B5A2A18F9E898AA3ABA2967C67535455
                565758598473BA00000000000000000000009A565656838E87807A8C9AA79C98
                785C608376B80000000000000000000000009F4C4B4A62747887807A756F6969
                978E8897AE00000000000000000000000000A216201D1D1F222527565E676967
                99C4900000000000000000000000000000000021333735322F2E2C2B2D302A13
                AF00000000000000000000000000000000000007363A3A3A3A3A3A3A3938330A
                000000000000000000000000000000000000001A3B3B3B3B3B3B3B3B3B3B280F
                00000000000000000000000000000000000000214040404040404040404023B7
                00000000000000000000000000000000000021293C3C3C3C3C3C3C3C3C3C1B00
                00000000000000000000000000000000000004343D3D3D3D3D3D3D3D3D340800
                0000000000000000000000000000000000001941414141414141414141261000
                00000000000000000000000000000000002124424242424242424242421C0000
                0000000000000000000000000000000000183E3E3E3E3E3E3E3E3E3E310B0000
                00000000000000000000000000000000061E3F3F3F3F3F3F3F3F3F3F09000000
                000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0D00000000
                000000000000000000000000FFF1C7FFFFE003FFFF8000FFFF00003FFC000007
                F0000003E0000003C0000003C0000003C0000003C0000003C0000003C0000003
                C0000003C0000003C0000007E000000FF000001FFC00003FFC00007FFC0001FF
                FE0007FFFE000FFFFE000FFFFE000FFFFC001FFFFC001FFFFC001FFFF8003FFF
                F8003FFFF0007FFFF000FFFF2800000010000000200000000100080000000000
                000000000000000000000000000000000000000000000000A68686009E8B8B00
                73676700554F4F00C4BBBB00817B7B00B6B3B300CEBAB9007A636100E6D8D700
                FFD2C700FBD7CE00D5BFB900B0A19D00CBABA100FFD4C500EFDCD500DFC3B700
                DBC1B500E5E1DF00FFD6B300FFD4AF00F9DDC400FFDCB800FFE5CB00FFEDDC00
                FFF7EE007AAA8A0067847100FAFAFA00F2F2F200F1F1F100F0F0F000EEEEEE00
                EDEDED00ECECEC00EAEAEA00E9E9E900E8E8E800E7E7E700E5E5E500E1E1E100
                E0E0E000D9D9D900D8D8D800D5D5D500D4D4D400D2D2D200CFCFCF00CECECE00
                CCCCCC00C9C9C900C2C2C200C0C0C000BFBFBF00BEBEBE00BDBDBD00BCBCBC00
                BABABA00B6B6B600B5B5B500B4B4B400B3B3B300B2B2B200B1B1B100AEAEAE00
                ACACAC00ABABAB00AAAAAA00A6A6A600A5A5A500A0A0A0009F9F9F009E9E9E00
                9D9D9D009B9B9B0097979700959595009494940093939300929292008E8E8E00
                8D8D8D008C8C8C00898989008888880086868600858585008383830082828200
                808080007E7E7E007C7C7C007A7A7A007676760073737300717171006D6D6D00
                64646400606060005F5F5F00585858005757570055555500505050004E4E4E00
                4545450043434300000000000000000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000057575757575757
                00000000000000004F646B6C04066A686057000000000063462040020107293E
                67695E0000004C22202743506562543A26416100003D1E1F2D4E5C4D40464F52
                55635E00003D2D484C3444535B5949371C665D00005F462C2D2D2D2B31384B55
                1D675A00004A2A2D30342E323536332F33615700003D2E354547312123252C37
                3856000000003D3424403B423C39393F5700000000000005100B0C1114285857
                000000000000000D1818181516095700000000000000000F1919191917030000
                00000000000000121A1A1A1A13510000000000000000081B1B1B1B1B0E000000
                0000000000000A0A0A0A0A0A0A00000000000000F80F9D6CF0035053E00185BE
                C001AA9780018683800197A5800180BB8001000080039B6EC007535DE00FA477
                E01FB3C4E03F9286E03F7D7AC07F73ACC07F0000280000003000000060000000
                0100200000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000003000000000000000000000000000000000000000000000000
                0000000000000000000000000000000100000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000003
                000000131A1A1A3F000000180000000A00000001000000000000000000000000
                00000000000000000000000D1313132A000000180000000C0000000100000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000010000000F1616164D
                2B2B2BD3343434FF303030F1242424A110101035000000120000000700000000
                0000000900000021252525AF313131F8313131F8252525B00F0F0F3700000010
                0000000300000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000A11111135272727B0363636FF
                414141FF747474FF3D3D3DFF363636FF363636FF2C2C2CD52222228000000028
                212121932F2F2FF16C5959FFB98C8CFFECECECFF999999FF4D4D4DFF292929C8
                1515154D00000013000000060000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000040000001B25252593333333F1434343FF959595FF
                E7E7E7FFD0D0D0FFAAAAAAFF858585FF575757FF373737FF373737FF343434FF
                665656FFB98C8CFFCC9999FFC39696FFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FF
                666666FF2A2A2AD41D1D1D700000001900000009000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000001000000131C1C1C61313131DE393939FF808080FFDDDDDDFFF2F2F2FF
                EFEFEFFFCECECEFFB0B0B0FFB2B2B2FFB4B4B4FFA5A5A5FF777777FFA68080FF
                CC9999FFBF9292FF927F7FFF7A7A7AFF8A8A8AFFC0C0C0FFF1F1F1FFFFFFFFFF
                FFFFFFFFD9D9D9FF808080FF3C3C3CE8222222910000001E0000000C00000001
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000000C
                111111382F2F2FC83B3B3BFF6A6A6AFFC8C8C8FFF5F5F5FFF2F2F2FFEFEFEFFF
                EDEDEDFFCCCCCCFFAEAEAEFFB0B0B0FFB2B2B2FFB4B4B4FFB5B5B5FFB18888FF
                7F6C6CFF5B5B5BFF646464FF707070FF7A7A7AFF838383FF8F8F8FFFABABABFF
                DBDBDBFFFAFAFAFFFFFFFFFFF2F2F2FFA6A6A6FF4A4A4AF1252525AF0F0F0F35
                0000000F00000003000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000060000001F2A2A2AA1
                3B3B3BF8545454FFB3B3B3FFF7F7F7FFF5F5F5FFF2F2F2FFEFEFEFFFEDEDEDFF
                EAEAEAFFC9C9C9FFACACACFFAEAEAEFFB0B0B0FFB2B2B2FFB4B4B4FF5C5C5CFF
                454545FF515151FF5B5B5BFF646464FF707070FF7A7A7AFF838383FF8F8F8FFF
                999999FFAAAAAAFFCDCDCDFFF1F1F1FFFFFFFFFFFFFFFFFFCCCCCCFF727272F9
                272727BC1616164B0000000C0000000000000000000000000000000000000000
                0000000000000000000000000000000300000016232323743B3B3BF04A4A4AFF
                9D9D9DFFFAFAFAFFF7F7F7FFF5F5F5FFF2F2F2FFEFEFEFFFEDEDEDFFEAEAEAFF
                E7E7E7FFC6C6C6FFA9A9A9FFACACACFFAEAEAEFFB0B0B0FFB2B2B2FF636363FF
                3C3C3CFF454545FF515151FF5B5B5BFF646464FF707070FF7A7A7AFF838383FF
                8F8F8FFF999999FFA5A5A5FFB0B0B0FFC3C3C3FFE3E3E3FFFCFCFCFFFFFFFFFF
                E6E6E6FF999999FF2323238D0000000900000000000000000000000000000000
                0000000000000000000000071B1B1B4D363636D3414141FF888888FFF1F1F1FF
                FAFAFAFFF7F7F7FFF5F5F5FFF2F2F2FFEFEFEFFFEDEDEDFFEAEAEAFFE7E7E7FF
                E5E5E5FFC5C5C5FFA7A7A7FFA9A9A9FFACACACFFAEAEAEFFB0B0B0FFB2B2B2FF
                A4A4A4FF838383FF5B5B5BFF515151FF5B5B5BFF646464FF707070FF7A7A7AFF
                838383FF8F8F8FFF999999FFA5A5A5FFB0B0B0FFBBBBBBFFC4C4C4FFE0E0E0FF
                F4F4F4FFFFFFFFFF262626AE0000000C00000000000000000000000000000000
                000000000000000424242457424242FF717171FFDCDCDCFFFDFDFDFFFAFAFAFF
                F7F7F7FFF5F5F5FFF2F2F2FFEFEFEFFFEDEDEDFFEAEAEAFFE7E7E7FFE5E5E5FF
                E3E3E3FFC2C2C2FFA5A5A5FFA7A7A7FFA9A9A9FFACACACFFAEAEAEFFB0B0B0FF
                B2B2B2FFB4B4B4FFB5B5B5FFABABABFF8C8C8CFF6F6F6FFF646464FF707070FF
                7A7A7AFF838383FF8F8F8FFF999999FFA5A5A5FFB0B0B0FFBBBBBBFFB3B3B3FF
                959595FF6C6C6CFF262626AA0000000C00000000000000000000000000000000
                00000000000000062929296B444444FFFFFFFFFFFDFDFDFFFAFAFAFFF7F7F7FF
                F5F5F5FFF2F2F2FFEFEFEFFFEDEDEDFFEAEAEAFFE7E7E7FFE5E5E5FFE3E3E3FF
                D1D1D1FF939393FF989898FFA5A5A5FFA7A7A7FFA9A9A9FFACACACFFAEAEAEFF
                B0B0B0FFB2B2B2FFB4B4B4FFB5B5B5FFB7B7B7FFB9B9B9FFB0B0B0FF989898FF
                7F7F7FFF7A7A7AFF838383FF8F8F8FFF818181FF666666FF676767FF4A4A4AFF
                3E3E3EFF3E3E3EF9000000220000000000000000000000000000000000000000
                00000000000000062929296D464646FFFDFDFDFFFAFAFAFFF7F7F7FFF5F5F5FF
                F2F2F2FFEFEFEFFFEDEDEDFFEAEAEAFFE7E7E7FFE5E5E5FFCCCCCCFF949494FF
                666666FF666666FF666666FF6E6E6EFF828282FF939393FFA9A9A9FFACACACFF
                AEAEAEFFB0B0B0FFB2B2B2FFB4B4B4FFB5B5B5FFB7B7B7FFB9B9B9FFBBBBBBFF
                BDBDBDFFB6B6B6FF9F9F9FFF656565FF333333FF333333FFA4A4A4FFCBCBCBFF
                808080FF464646FF000000180000000000000000000000000000000000000000
                00000000000000062A2A2A6D484848FFFAFAFAFFF7F7F7FFF5F5F5FFF2F2F2FF
                EFEFEFFFEDEDEDFFEAEAEAFFE7E7E7FFC5C5C5FF868686FF666666FF848484FF
                B5B5B5FFBBBBBBFF989898FF888888FF717171FF666666FF6A6A6AFF808080FF
                969696FFAEAEAEFFB0B0B0FFB2B2B2FFB4B4B4FFB5B5B5FFB7B7B7FFB9B9B9FF
                BBBBBBFFBDBDBDFFC0C0C0FFC2C2C2FFBBBBBBFF8E8E8EFFB5B5B5FFC9C9C9FF
                898989FF484848FF000000180000000000000000000000000000000000000000
                00000000000000062C2C2C6D4A4A4AFFF7F7F7FFF5F5F5FFF2F2F2FFEFEFEFFF
                EDEDEDFFEAEAEAFFB7B7B7FF868686FF666666FF949494FFBFBFBFFFDADADAFF
                D7D7D7FFB8B8B8FF9E9E9EFFA0A0A0FFA2A2A2FFA0A0A0FF8D8D8DFF7A7A7AFF
                666666FF6A6A6AFF7D7D7DFF949494FFADADADFFB4B4B4FFB5B5B5FFB7B7B7FF
                B9B9B9FFBBBBBBFFBDBDBDFFC0C0C0FFC2C2C2FFBBBBBBFFA1A1A1FFB5B5B5FF
                898989FF4A4A4AFF000000180000000000000000000000000000000000000000
                00000000000000062D2D2D6D4C4C4CFFF5F5F5FFF2F2F2FFEFEFEFFFEDEDEDFF
                B9B9B9FF767676FF666666FF949494FFD1D1D1FFDDDDDDFFDADADAFFD7D7D7FF
                D4D4D4FFB6B6B6FF9C9C9CFF9E9E9EFFA0A0A0FFA2A2A2FFA4A4A4FFA5A5A5FF
                A3A3A3FF949494FF808080FF6A6A6AFF666666FF7E7E7EFF979797FFB0B0B0FF
                B7B7B7FFB9B9B9FFBBBBBBFFBDBDBDFFC0C0C0FF6B756FFF59CC80FF56A26FFF
                777777FF4C4C4CFF000000180000000000000000000000000000000000000000
                00000000000000062C2C2C714E4E4EFFF2F2F2FFE7E7E7FFB2B2B2FF777777FF
                6E6E6EFFA5A5A5FFDBDBDBFFE0E0E0FFDDDDDDFFDADADAFFD7D7D7FFD4D4D4FF
                D2D2D2FFE2E2E2FFE2E2E2FFC8C8C8FFB6B6B6FFA4A4A4FFA2A2A2FFA4A4A4FF
                A5A5A5FFA7A7A7FFA9A9A9FFACACACFF979797FF868686FF6F6F6FFF666666FF
                757575FF949494FFAFAFAFFFBBBBBBFFBDBDBDFF65786BFF66FF99FF59CC80FF
                656565FF4E4E4EFF000000180000000000000000000000000000000000000000
                000000000000000C3B3B3BAD6F6F6FFFABABABFF6F6F6FFF767676FFB6B6B6FF
                DDDDDDFFE3E3E3FFE0E0E0FFDDDDDDFFDADADAFFD7D7D7FFD4D4D4FFD2D2D2FF
                D6D6D6FFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFD7D7D7FFC1C1C1FF
                B0B0B0FFA5A5A5FFA7A7A7FFA9A9A9FFACACACFFAEAEAEFFB0B0B0FFA3A3A3FF
                8D8D8DFF757575FF666666FF767676FF919191FF939393FF486F55FF52785EFF
                777777FF4F4F4FFF000000180000000000000000000000000000000000000000
                000000000000000C3B3B3BB05C5C5CFF7F7F7FFFB8B8B8FFE7E7E7FFE5E5E5FF
                E3E3E3FFE0E0E0FFDDDDDDFFDADADAFFD7D7D7FFD4D4D4FFD2D2D2FFCFCFCFFF
                E7E7E7FFEEEEEEFFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FF
                E7E7E7FFDEDEDEFFCECECEFFBFBFBFFFADADADFFACACACFFAEAEAEFFB0B0B0FF
                B2B2B2FFB4B4B4FFABABABFF949494FF7B7B7BFF666666FF717171FF8E8E8EFF
                7E7E7EFF515151FF000000180000000000000000000000000000000000000000
                000000000000000C3C3C3CB0797979FFEAEAEAFFE7E7E7FFE5E5E5FFE3E3E3FF
                E0E0E0FFDDDDDDFFDADADAFFD7D7D7FFD4D4D4FFD2D2D2FFCFCFCFFFDDDDDDFF
                F1F1F1FFEFEFEFFFAEAEAEFFA9A9A9FFB8B8B8FFCCCCCCFFE0E0E0FFEAEAEAFF
                E9E9E9FFE7E7E7FFE7E7E7FFE6E6E6FFE5E5E5FFDADADAFFC8C8C8FFB8B8B8FF
                B0B0B0FFB2B2B2FFB4B4B4FFB5B5B5FFB7B7B7FFB4B4B4FF9B9B9BFF818181FF
                5D5D5DFF535353FF000000180000000000000000000000000000000000000000
                000000000000000C3E3E3EB07A7A7AFFE7E7E7FFE5E5E5FFE3E3E3FFE0E0E0FF
                DDDDDDFFDADADAFFD7D7D7FFD4D4D4FFD2D2D2FFCFCFCFFFD4D4D4FFF0F0F0FF
                F1F1F1FFCACACAFFB9B9B9FFEEEEEEFFDEDEDEFFC8C8C8FFAEAEAEFFA3A3A3FF
                B7B7B7FFD0D0D0FFE2E2E2FFE7E7E7FFE6E6E6FFE5E5E5FFE4E4E4FFE4E4E4FF
                DFDFDFFFD2D2D2FFC4C4C4FFB9B9B9FFB5B5B5FFB7B7B7FFB9B9B9FFBBBBBBFF
                898989FF555555FF000000180000000000000000000000000000000000000000
                000000000000000C3F3F3FB07A7A7AFFE5E5E5FFE3E3E3FFE0E0E0FFDDDDDDFF
                DADADAFFD7D7D7FFD4D4D4FFD2D2D2FFCFCFCFFFCFCFCFFFEDEDEDFFF3F3F3FF
                D1D1D1FFAAAAAAFFEBEBEBFFEFEFEFFFEEEEEEFFEEEEEEFFEDEDEDFFEBEBEBFF
                D6D6D6FFC2C2C2FFADADADFFA8A8A8FFBBBBBBFFCECECEFFE0E0E0FFE4E4E4FF
                E4E4E4FFE2E2E2FFE1E1E1FFE1E1E1FFD8D8D8FFCCCCCCFFC1C1C1FFB9B9B9FF
                898989FF575757FF000000180000000000000000000000000000000000000000
                000000000000000C414141AD7B7B7BFFE3E3E3FFE0E0E0FFDDDDDDFFDADADAFF
                D7D7D7FFD4D4D4FFD2D2D2FFCFCFCFFFCFCFCFFFEEEEEEFFF5F5F5FFD2D2D2FF
                AAAAAAFFEDEDEDFFF1F1F1FFF1F1F1FFEFEFEFFFEEEEEEFFEEEEEEFFEDEDEDFF
                EBEBEBFFEAEAEAFFEAEAEAFFE4E4E4FFCFCFCFFFBBBBBBFFA7A7A7FFA7A7A7FF
                BFBFBFFFD1D1D1FFE2E2E2FFE1E1E1FFE1E1E1FFE0E0E0FFDEDEDEFFDDDDDDFF
                969696FF585858FF000000180000000000000000000000000000000000000000
                00000000000000073A3A3A7D636363FFD7D7D7FFDDDDDDFFDADADAFFD7D7D7FF
                D4D4D4FFD2D2D2FFCFCFCFFFCFCFCFFFEFEFEFFFF7F7F7FFCDCDCDFFB0B0B0FF
                EFEFEFFFF3F3F3FFF2F2F2FFF1F1F1FFF1F1F1FFEFEFEFFFEEEEEEFFEEEEEEFF
                EDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFE7E7E7FFE7E7E7FFE1E1E1FF
                CDCDCDFFB5B5B5FFA2A2A2FFABABABFFBDBDBDFFD3D3D3FFE0E0E0FFDEDEDEFF
                6B6B6BFF4A4A4AD3000000100000000000000000000000000000000000000000
                00000000000000000000001B535353E78D8D8DFFDADADAFFD7D7D7FFD4D4D4FF
                D2D2D2FFCFCFCFFFD5D5D5FFF1F1F1FFE1E1E1FFB6B6B6FF929292FFDBDBDBFF
                F5F5F5FFF4F4F4FFF3F3F3FFF2F2F2FFF1F1F1FFF1F1F1FFEFEFEFFFEEEEEEFF
                EEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFE7E7E7FFE7E7E7FF
                E6E6E6FFE5E5E5FFE4E4E4FFDBDBDBFFC7C7C7FF999999FFDCDCDCFFAFAFAFFF
                595959F82626264D000000030000000000000000000000000000000000000000
                0000000000000000000000032727274D575757F0848484FFB7B7B7FFCDCDCDFF
                CBCBCBFFD2D2D2FFCACACAFFAEAEAEFF929292FF7B7B7BFF959595FF7C7C7CFF
                6B6B6BFF8A8A8AFFA4A4A4FFBEBEBEFFE1E1E1FFF1F1F1FFF1F1F1FFEFEFEFFF
                EEEEEEFFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFE7E7E7FF
                E7E7E7FFE6E6E6FFE5E5E5FFE4E4E4FFBEBEBEFFBDBDBDFFD9D9D9FF666666FF
                414141A10000000D000000000000000000000000000000000000000000000000
                000000000000000000000000000000041D1D1D35494949BB5D5D5DF8676767FF
                6A6A6AFF858585FFA4A4A4FFA4A4A4FFC2C2C2FFDFDFDFFFC3C3C3FFACACACFF
                B0B0B0FFAAAAAAFF9E9E9EFF919191FF7C7C7CFF6F6F6FFF898989FFABABABFF
                C4C4C4FFDDDDDDFFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FF
                E7E7E7FFE7E7E7FFE6E6E6FFC9C9C9FFACACACFFDBDBDBFF797979FF4D4D4DC7
                0000001900000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000010000000D000000181B1B1B3A
                4E4E4ECEB9B9B9FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFC6C6C6FFA6A6A6FF
                ACACACFFB0B0B0FFB4B4B4FFB8B8B8FFBDBDBDFFC0C0C0FFB3B3B3FFA4A4A4FF
                939393FF7A7A7AFF777777FF909090FFA9A9A9FFCACACAFFE2E2E2FFEAEAEAFF
                E9E9E9FFE3E3E3FFBBBBBBFFB6B6B6FFD8D8D8FF7A7A7AFF4E4E4EC70000001E
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000010
                505050CBCFCFCFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFB4B4B4FFA1A1A1FF
                A6A6A6FFACACACFFB0B0B0FFB4B4B4FFB8B8B8FFBDBDBDFFC0C0C0FFC5C5C5FF
                CACACAFFCECECEFFD3D3D3FFBBBBBBFFA8A8A8FF939393FF6D6D6DFFC4C4C4FF
                C6C6C6FFADADADFFCFCFCFFFADADADFF686868F8444444A10000001900000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000012
                575757DFDFDFDFFFFBFBFBFFFCFCFCFFFEFEFEFFFFF9F9FFFFF2F2FFF3F3F3FF
                E8E8E8FFD3D3D3FFC6C6C6FFBFBFBFFFB4B4B4FFB8B8B8FFBDBDBDFFC0C0C0FF
                C5C5C5FFCACACAFFCECECEFFD3D3D3FFD7D7D7FFDCDCDCFF7C7C7CFF9E9E9EFF
                ADADADFFA0A0A0FF6A6A6AF9505050C82B2B2B4B0000000D0000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000012
                646464DB9F9F9FFFB9B3B3FFC69B97FFFFAC9FFFFFA699FFFFA699FFFFA699FF
                FFBCB3FFFFC7BFFFFFD3CCFFFFE9E6FFFFF9F9FFEDEDEDFFE5E5E5FFDADADAFF
                D1D1D1FFC9C9C9FFCACACAFFCECECEFFD3D3D3FFD7D7D7FF666666FF505050CC
                4B4B4BAF4141417E212121320000001000000003000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000163535355D644B4BC3B9897BFFFFCFA7FFFFCDA6FFFFC4A2FFFFC09FFF
                FFBC9DFFFFB79AFFFFB699FFFFB699FFFFB699FFFFBB9FFFFFC9B3FFFFD7C6FF
                FFE1D2FFFFEFE6FFF8F4F2FFF2F2F2FFE8E8E8FFCCCCCCFF575757E000000021
                0000000C00000007000000010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000012734C4CBFCC9F8BFFFFD7B0FFFFD7B0FFFFD7B0FFFFD7B0FF
                FFD7B0FFFFD7B0FFFFD7B0FFFFD1AAFFFFCEA7FFFFCBA5FFFFC9A0FFFFC89DFF
                FFC699FFFFC699FFFFC699FFD29F89FF9F8C8CFF747474E04D4D4DAA0000000C
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000012825757E0E6BDA1FFFFDAB5FFFFDAB5FFFFDAB5FFFFDAB5FF
                FFDAB5FFFFDAB5FFFFDAB5FFFFDAB5FFFFDAB5FFFFDAB5FFFFDAB5FFFFDAB5FF
                FFDAB5FFFFD8B2FFFFD7AEFFB38278FF52363678000000180000000C00000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000001E996666FFF9D6B6FFFFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFF
                FFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFF
                FFDDBBFFFFDDBBFFFFDDBBFFA67571FF472F2F45000000030000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000065A3C3C6DA67571FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FF
                FFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FF
                FFE0C1FFFFE0C1FFFFE0C1FF936262F900000019000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000C6F4A4AB0B98D84FFFFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FF
                FFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FFFFE3C6FF
                FFE3C6FFFFE3C6FFE6C4AEFF825757E000000012000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000013825757E0D2AE9FFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFF
                FFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFF
                FFE6CCFFFFE6CCFFD2AE9FFF6F4A4AB00000000C000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000001
                2E1F1F35996666FFF2D8C5FFFFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FF
                FFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FFFFE8D2FF
                FFE8D2FFFFE8D2FFBF978FFF5A3C3C6D00000006000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000009
                65444491A67774FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FF
                FFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FFFFEBD7FF
                FFEBD7FFFFEBD7FFA67774FF0000001E00000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000012
                7E5454D5C6A29AFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFF
                FFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFF
                FFEEDDFFECD5C7FF7E5454D50000001000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000012C1E1E37
                996666FFECD7CCFFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FF
                FFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FFFFF1E3FF
                FFF1E3FFD2B4ACFF654444910000000900000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000C704B4BAF
                A67876FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FF
                FFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FFFFF4E8FF
                FFF4E8FFA07472F9302020330000000100000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000218E5E5EF1
                D9C1BBFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFF
                FFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFF
                E6D3CCFF7A5151C8000000100000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000106F4A4AB0AC8281FF
                FFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FF
                FFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FF
                B38B89FF402A2A4D000000030000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000A493131649F6F6FFFECE0DDFF
                FFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FF
                FFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFFFFBF8FFDFCCCAFF
                744E4EBC00000010000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000664434362946363F7B38C8CFFCCB2B1FF
                CCB2B1FFD2BBBBFFE6D8D7FFE6D8D7FFE6D8D7FFF2EBEAFFFFFEFEFFFFFEFEFF
                FFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFECE2E1FF916665E7
                2E1F1F3500000001000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000006000000160000001B452E2E47
                583B3B6F563A3A71533737766D4949B36B4848B66B4848B6704A4AC4815656E3
                805656E4967575E5A08282EEB38C8CFFB38C8CFFB38C8CFF764F4FCE2C1E1E37
                0000000300000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000FFFFDFF7
                FFFF0000FFFF03E0FFFF0000FFFC00803FFF0000FFF800000FFF0000FFE00000
                03FF0000FF800000007F0000FF000000001F0000FC000000000F0000F0000000
                00070000E000000000070000C000000000070000C0000000000F0000C0000000
                000F0000C0000000000F0000C0000000000F0000C0000000000F0000C0000000
                000F0000C0000000000F0000C0000000000F0000C0000000000F0000C0000000
                000F0000C0000000000F0000C0000000000F0000C0000000000F0000E0000000
                000F0000E0000000001F0000F0000000003F0000F8000000007F0000FF000000
                00FF0000FF00000001FF0000FF00000003FF0000FF8000000FFF0000FFC00000
                7FFF0000FFC00000FFFF0000FFC00001FFFF0000FF800003FFFF0000FF800003
                FFFF0000FF800003FFFF0000FF000003FFFF0000FF000007FFFF0000FF000007
                FFFF0000FE000007FFFF0000FE000007FFFF0000FE00000FFFFF0000FC00000F
                FFFF0000F800001FFFFF0000F000001FFFFF0000F800003FFFFF000028000000
                2000000040000000010020000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000010000001200000039000000520000002A
                000000100000000700000004000000180000003F0000004B0000001E0000000A
                0000000100000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000C0000002A131313841C1C1CCA040404B7000000A0
                0000007300000049000000431515159D181818C8000000AD0000008E00000058
                000000270000000F000000030000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000060000001E09090962252525D04D4D4DFF5C5C5CFF353535FF252525E7
                161616CD0D0D0DBE343131EA806666FFB0A6A6FF626262F71A1A1AD9050505B5
                0000009800000067000000310000001200000004000000000000000000000000
                0000000000000000000000000000000000000000000000000000000300000016
                00000043222222B9414141FA969696FFF2F2F2FFC0C0C0FFA3A3A3FF6E6E6EFF
                504D4DFF806666FFC29393FFB89292FFDAD4D4FFFFFFFFFFE6E6E6FF7F7F7FFB
                2F2F2FE2090909BE000000A10000007000000039000000160000000600000000
                00000000000000000000000000000000000000010000000F0000003319191997
                333333EE828282FFEAEAEAFFF2F2F2FFEEEEEEFFBDBDBDFFB0B0B0FFB3B3B3FF
                BBAEAEFFAD8686FF7A6D6DFF6F6F6FFF7E7E7EFF9B9B9BFFD2D2D2FFF3F3F3FF
                F2F2F2FFA6A6A6FF3F3F3FE70C0C0CC4000000A60000007D0000003C00000006
                000000000000000000000000000000010000001E11111174303030DF6D6D6DFF
                D6D6D6FFF6F6F6FFF2F2F2FFEEEEEEFFEAEAEAFFBABABAFFADADADFFB0B0B0FF
                ABABABFF3D3D3DFF505050FF5F5F5FFF6F6F6FFF7E7E7EFF8E8E8EFF9D9D9DFF
                C5C5C5FFEAEAEAFFFFFFFFFFCCCCCCFF6D6D6DEF101010C60000007400000012
                0000000000000000000000002727271B313131AA565656F9C3C3C3FFFBFBFBFF
                F6F6F6FFF2F2F2FFEEEEEEFFEAEAEAFFE6E6E6FFB6B6B6FFAAAAAAFFADADADFF
                B0B0B0FF8B8B8BFF6D6D6DFF575757FF5F5F5FFF6F6F6FFF7E7E7EFF8E8E8EFF
                9D9D9DFFAFAFAFFFC6C6C6FFE6E6E6FFFAFAFAFF606060ED000000710000000F
                00000000000000000000000040404086A1A1A1FFFEFEFEFFFBFBFBFFF6F6F6FF
                F2F2F2FFEEEEEEFFEAEAEAFFE6E6E6FFE2E2E2FFABABABFFA7A7A7FFAAAAAAFF
                ADADADFFB0B0B0FFB3B3B3FFB6B6B6FF999999FF848484FF757575FF7E7E7EFF
                8E8E8EFF9D9D9DFFA7A7A7FF8D8D8DFF717171FF323232E2000000630000000C
                00000000000000000000000043434386D0D0D0FFFBFBFBFFF6F6F6FFF2F2F2FF
                EEEEEEFFEAEAEAFFE6E6E6FFB4B4B4FF757575FF666666FF7A7A7AFF8B8B8BFF
                A2A2A2FFADADADFFB0B0B0FFB3B3B3FFB6B6B6FFB9B9B9FFB7B7B7FFA2A2A2FF
                909090FF4E4E4EFF333333FFB9B9B9FF787878FF292929D9000000600000000C
                00000000000000000000000046464686CECECEFFF6F6F6FFF2F2F2FFEEEEEEFF
                E1E1E1FFA7A7A7FF767676FF929292FFC3C3C3FFADADADFF8F8F8FFF818181FF
                6E6E6EFF737373FF8F8F8FFFA7A7A7FFB3B3B3FFB6B6B6FFB9B9B9FFBCBCBCFF
                BFBFBFFFC3C3C3FFA1A1A1FFC8C8C8FF898989FF2B2B2BD9000000600000000C
                00000000000000000000000048484888CBCBCBFFF2F2F2FFE5E5E5FFA9A9A9FF
                767676FF949494FFCECECEFFDADADAFFD6D6D6FFB3B3B3FF9E9E9EFFA2A2A2FF
                A4A4A4FF9A9A9AFF838383FF737373FF747474FF888888FFA7A7A7FFB9B9B9FF
                BCBCBCFFBFBFBFFF70A080FF59AF76FF777777FF2D2D2DD9000000600000000C
                0000000000000000000000004C4C4CB5B7B7B7FF999999FF6E6E6EFFA5A5A5FF
                DADADAFFDEDEDEFFDADADAFFD6D6D6FFD3D3D3FFEBEBEBFFE1E1E1FFCECECEFF
                B8B8B8FFA8A8A8FFA7A7A7FFAAAAAAFFA4A4A4FF8F8F8FFF747474FF707070FF
                8B8B8BFFACACACFF6E9E7EFF56BF79FF656565FF2E2E2ED9000000600000000C
                0000000000000000000000004F4F4FC4777777FFB8B8B8FFE6E6E6FFE2E2E2FF
                DEDEDEFFDADADAFFD6D6D6FFD1D1D1FFDEDEDEFFEEEEEEFFE2E2E2FFEBEBEBFF
                EAEAEAFFE8E8E8FFDADADAFFC7C7C7FFB5B5B5FFADADADFFB0B0B0FFAEAEAEFF
                979797FF808080FF636363FF656565FF797979FF303030D9000000600000000C
                000000000000000000000000525252C4D7D7D7FFE6E6E6FFE2E2E2FFDEDEDEFF
                DADADAFFD6D6D6FFD1D1D1FFD4D4D4FFF1F1F1FFBFBFBFFFB9B9B9FFB3B3B3FF
                B8B8B8FFD1D1D1FFE3E3E3FFE7E7E7FFE6E6E6FFE1E1E1FFCFCFCFFFC3C3C3FF
                B6B6B6FFB6B6B6FFB4B4B4FFA1A1A1FF737373FF313131D90000005D0000000C
                000000000000000000000000555555C3E6E6E6FFE2E2E2FFDEDEDEFFDADADAFF
                D6D6D6FFD1D1D1FFCFCFCFFFEFEFEFFFD1D1D1FFC5C5C5FFEFEFEFFFEEEEEEFF
                E8E8E8FFD2D2D2FFBDBDBDFFB2B2B2FFBBBBBBFFCECECEFFE0E0E0FFE3E3E3FF
                E1E1E1FFD8D8D8FFCDCDCDFFC3C3C3FF898989FF343434D60000004800000009
                000000000000000000000000585858B1D9D9D9FFDEDEDEFFDADADAFFD6D6D6FF
                D1D1D1FFD0D0D0FFEFEFEFFFD3D3D3FFBBBBBBFFF2F2F2FFF1F1F1FFEFEFEFFF
                EEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFDFDFDFFFCACACAFFB6B6B6FFB1B1B1FF
                BEBEBEFFCFCFCFFFE0E0E0FFDEDEDEFF888888FF303030B10000001C00000000
                0000000000000000000000005C5C5C408D8D8DFFDADADAFFD6D6D6FFD1D1D1FF
                D6D6D6FFDFDFDFFFB0B0B0FF9A9A9AFFD1D1D1FFF4F4F4FFF2F2F2FFF1F1F1FF
                EFEFEFFFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6E6FF
                DBDBDBFFBEBEBEFFABABABFFD0D0D0FF525252EA0000003C0000000400000000
                000000000000000000000000000000005F5F5F60777777F0969696FF979797FF
                AAAAAAFF9B9B9BFFB0B0B0FFAFAFAFFF949494FF8A8A8AFF969696FFA3A3A3FF
                BDBDBDFFD5D5D5FFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FF
                E6E6E6FFB5B5B5FFC8C8C8FF757575F82E2E2E63000000090000000000000000
                0000000000000000000000000000000000000000616161105F5F5F418B8B8BD4
                EAEAEAFFEAEAEAFFEAEAEAFFB6B6B6FFABABABFFB2B2B2FFB9B9B9FFBFBFBFFF
                ADADADFF9F9F9FFF8E8E8EFF9D9D9DFFA1A1A1FFC1C1C1FFE2E2E2FFDEDEDEFF
                B6B6B6FFC5C5C5FF787878F73434345A00000007000000000000000000000000
                000000000000000000000000000000000000000000000000000000008D8D8DE2
                F7F7F7FFF8F8F8FFFAFAFAFFDADADAFFC7C7C7FFC1C1C1FFB2B2B2FFB9B9B9FF
                BFBFBFFFC6C6C6FFCDCDCDFFD3D3D3FFD3D3D3FFA2A2A2FFABABABFFB1B1B1FF
                A2A2A2FF686868CB404040320000000300000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000878787DF
                B9B3B3FFE6B6ADFFFFB3A6FFFFB3A6FFFFC5B9FFFFD6CCFFFFE6DFFFF1E3DEFF
                EAEAEAFFE0E0E0FFD5D5D5FFD3D3D3FFD5D5D5FFA0A0A0FF434343C457575783
                5050502900000003000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                90606088E6BA9BFFFFD6ADFFFFD0AAFFFFCCA8FFFFC8A5FFFFC5A2FFFFC29FFF
                FFBC99FFFFCAACFFFFD3B9FFF2D4C6FFD6CCCCFF7F7F7FF40000001E00000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                926262B7F9D4B2FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FF
                FFDBB7FFFFDAB5FFFFD7B0FFE6BA9BFF3E2929C6000000310000000400000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000003
                A37470E5FFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFF
                FFDFBEFFFFDFBEFFFFDFBEFFCCA292FF291B1BB30000001C0000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000077505029
                BF958BFFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FF
                FFE4C8FFFFE4C8FFFFE4C8FFBF958AFF00000082000000120000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000008C5E5E7A
                D9B7A8FFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFF
                FFE7CFFFFFE7CFFFFFE7CFFF896360EC000000580000000A0000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000018E5F5FBC
                F2DBCAFFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FF
                FFECD9FFFFECD9FFF2DBCAFF533838CE00000034000000040000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000583A3A1CAC807DFF
                FFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FF
                FFF0E0FFFFF0E0FFD9BCB2FF2F1F1F9D00000018000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000183575796D9BFB8FF
                FFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFF
                FFF5EAFFFFF5EAFF9F7F7BEF0000004F00000009000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000048303022A37776F5FFF8F1FF
                FFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FF
                FFF8F1FFF2E6DFFF543838AF0000001C00000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000003936262B6ECE1DFFFFFFDFBFF
                FFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFF
                FFFDFBFFA58584E70000002D0000000100000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000099666620966464629463638492626286
                C3ABAB86B89797C2B69595C4BFA1A1C4D5C1C1D2CCB3B3FFCCB3B3FFCCB3B3FF
                BB9D9DD448303022000000010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFC000FFFF80003FFE00000FF8000003E0000001C0000001C0000001
                C0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000001
                C0000003C0000003E0000007F000000FFC00001FFC00007FFE0003FFFE0003FF
                FC0007FFFC0007FFFC0007FFF80007FFF8000FFFF0000FFFF0001FFFE0001FFF
                E0003FFF28000000100000002000000001002000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000000F
                000000340000007400000079000000580000006C0000007C000000460000001B
                0000000900000000000000000000000000000000000000070000002110101072
                434343D82E2E2EE3151515CD352E2ED7746D6DE7202020CA000000AA0000008C
                000000510000001F00000000000000000000000700000045363636C5A4A4A4FA
                F1F1F1FFB2B2B2FF9E8B8BFFA68686FFB6B3B3FFE5E5E5FFB2B2B2F7363636D5
                000000AF0000008500000016000000003939395C949494EFEEEEEEFFF1F1F1FF
                E8E8E8FFACACACFF939393FF5F5F5FFF6D6D6DFF8C8C8CFFBCBCBCFFE9E9E9FF
                B0B0B0FB0000008E0000001300000000BCBCBCC4FAFAFAFFF2F2F2FFD8D8D8FF
                959595FF7E7E7EFF979797FFB2B2B2FFA6A6A6FF949494FF8E8E8EFF898989FF
                5C5C5CF2000000850000001200000000ACACACE2D8D8D8FFA0A0A0FF9B9B9BFF
                C9C9C9FFABABABFF8D8D8DFF808080FF838383FF9F9F9FFFBFBFBFFF7AAA8AFF
                4B4B4BED000000830000001200000000767676FFA6A6A6FFD9D9D9FFD8D8D8FF
                D8D8D8FFD8D8D8FFE0E0E0FFCFCFCFFFBEBEBEFF9D9D9DFF898989FF678471FF
                4A4A4AED0000007D00000012000000009E9E9EFFE1E1E1FFD8D8D8FFD2D2D2FF
                C9C9C9FFD5D5D5FFCECECEFFC2C2C2FFC0C0C0FFCCCCCCFFD4D4D4FFCCCCCCFF
                646464EA0000005A0000000C00000000939393BFD5D5D5FFC2C2C2FFAAAAAAFF
                A5A5A5FFCFCFCFFFF0F0F0FFEDEDEDFFEAEAEAFFD9D9D9FFBFBFBFFFBEBEBEFF
                585858B50000001B0000000000000000616161106A6A6A61C9C9C9FFECECECFF
                B2B2B2FFBABABAFFAEAEAEFFB6B6B6FFBDBDBDFFBDBDBDFFB3B3B3FF868686B9
                000000160000000000000000000000000000000000000000BCB2B2E1FFD4C5FF
                FFD2C7FFFBD7CEFFEFDCD5FFE5E1DFFFE7E7E7FF646464C86363636700000009
                000000000000000000000000000000000000000000000000B2897D8AFFDCB8FF
                FFDCB8FFFFDCB8FFFFD6B3FFFFD4AFFF644947DB161616490000000700000000
                000000000000000000000000000000000000000000000001C19B90D7FFE5CBFF
                FFE5CBFFFFE5CBFFFFE5CBFFF9DDC4FF372525B20000001C0000000000000000
                0000000000000000000000000000000000000000583A3A1CDFC3B7FFFFEDDCFF
                FFEDDCFFFFEDDCFFFFEDDCFFDAC0B4FA0000006D0000000F0000000000000000
                0000000000000000000000000000000000000001A5807E8BFFF7EEFFFFF7EEFF
                FFF7EEFFFFF7EEFFFFF7EEFFA08E89D400000031000000030000000000000000
                0000000000000000000000000000000099666610C7ABAAAFF3EEEDD2E6D8D7FF
                E6D8D7FFE6D8D7FFE9DEDDF16040403300000003000000000000000000000000
                000000000000000000000000F0030000C0010000800043868000D0FF8000FBFF
                8000F6FF8000F2FF8000EEFF8001EAFF8003E6FFE007B4FFE00F75FFC01F66FF
                C01F7AFF801F8BFF803FA2FF}
            end
            object Panel34: TPanel
              Left = 1
              Top = 1
              Width = 141
              Height = 64
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel18: TPanel
                Left = 0
                Top = 40
                Width = 141
                Height = 24
                Align = alBottom
                BevelInner = bvLowered
                TabOrder = 0
                object DBNavigAnnos: TDBNavigator
                  Left = 2
                  Top = 2
                  Width = 138
                  Height = 20
                  DataSource = DSTAnnos
                  VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
                  Align = alLeft
                  Hints.Strings = (
                    'Primer Registro'
                    'Registro Anterior'
                    'Registro Siguiente'
                    #218'ltimo Registro'
                    'Adicionar un Registro'
                    'Borrar Registro(s)'
                    'Editar Registro'
                    'Guardar los Cambios'
                    'Cancelar la Edici'#243'n'
                    'Refrescar los Datos')
                  ParentShowHint = False
                  ConfirmDelete = False
                  ShowHint = True
                  TabOrder = 0
                  BeforeAction = DBNavigAnnosBeforeAction
                end
              end
              object DBGridAnnos: TJvDBUltimGrid
                Left = 0
                Top = 0
                Width = 141
                Height = 40
                Align = alClient
                DataSource = DSTAnnos
                Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnEditButtonClick = DBGridAnnosEditButtonClick
                OnExit = DBGridAnnosExit
                OnKeyDown = DBGridAnnosKeyDown
                OnKeyPress = DBGridAnnosKeyPress
                OnKeyUp = DBGridAnnosKeyUp
                OnMouseDown = DBGridAnnosMouseDown
                OnMouseUp = DBGridAnnosMouseUp
                MultiSelect = True
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                ExOptions = [eoENTERlikeTAB, eoKeepSelection]
                Columns = <
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'Fecha'
                    Title.Alignment = taCenter
                    Width = 140
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IdAnnos'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'IdIglesia'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'Junta Iglesia'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'Notas'
                    Visible = False
                  end>
              end
            end
            object ButtonImpNombramientos: TButton
              Left = 20
              Top = 88
              Width = 103
              Height = 25
              Hint = 'Imprimir los nombramientos del a'#241'o'
              Caption = 'Nombramientos'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = ButtonImpNombramientosClick
            end
            object ButtonImpNotas: TButton
              Left = 20
              Top = 200
              Width = 103
              Height = 25
              Hint = 'Imprimir las notas del a'#241'o'
              Caption = 'Notas'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = ButtonImpNotasClick
            end
          end
          object Panel62: TPanel
            Left = 143
            Top = 0
            Width = 488
            Height = 387
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Panel59: TPanel
              Left = 0
              Top = 363
              Width = 488
              Height = 24
              Align = alBottom
              BevelInner = bvLowered
              TabOrder = 0
              object DBNavigNombramientosIgl: TDBNavigator
                Left = 2
                Top = 2
                Width = 278
                Height = 20
                DataSource = DSTNombramientosIgl
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alLeft
                Hints.Strings = (
                  'Primer Registro'
                  'Registro Anterior'
                  'Registro Siguiente'
                  #218'ltimo Registro'
                  'Adicionar un Registro'
                  'Borrar Registro(s)'
                  'Editar Registro'
                  'Guardar los Cambios'
                  'Cancelar la Edici'#243'n'
                  'Refrescar los Datos')
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                BeforeAction = DBNavigNombramientosIglBeforeAction
              end
            end
            object DBGridNombramientosIgl: TJvDBUltimGrid
              Left = 0
              Top = 0
              Width = 488
              Height = 363
              Align = alClient
              DataSource = DSTNombramientosIgl
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnExit = DBGridNombramientosIglExit
              OnKeyDown = DBGridNombramientosIglKeyDown
              OnKeyPress = DBGridNombramientosIglKeyPress
              OnKeyUp = DBGridNombramientosIglKeyUp
              OnMouseDown = DBGridNombramientosIglMouseDown
              OnMouseUp = DBGridNombramientosIglMouseUp
              OnTitleClick = DBGridNombramientosIglTitleClick
              MultiSelect = True
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnColumnResized = DBGridNombramientosIglColumnResized
              ExOptions = [eoENTERlikeTAB, eoKeepSelection]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Nombre'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Primer Apellido'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Segundo Apellido'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cargo'
                  PickList.Strings = (
                    'Primer Anciano'
                    'Anciano'
                    'Sec. Iglesia'
                    'Dtr. Di'#225'conos'
                    'Dtr. Diaconisas'
                    'Di'#225'cono'
                    'Diaconisa'
                    'Dtor. M. Personal'
                    'Sec. M. Personal'
                    'Coord. Interesados'
                    'Dtr. Extensi'#243'n de Hogar'
                    'Asoc. Extensi'#243'n de Hogar'
                    'Dtr. Sociedad de Hombres'
                    'Dtr. Dorcas'
                    'Sec. Dorcas'
                    'Dtr. Asuntos Religiosos'
                    'Dtr. Escuela Sab'#225'tica'
                    'Sec. G. Escuela Sab'#225'tica'
                    'Sec. Asoc. Escuela Sab'#225'tica'
                    'Dtr. Asoc. Escuela Sab'#225'tica'
                    'Maestro Juvenil'
                    'Maestro de J'#243'venes'
                    'Maestro de Adultos'
                    'Maestro de Visitas'
                    'Maestro Clase Bautismal'
                    'Maestro Clase Post Bautismal'
                    'Dtr. M. Mujer'
                    'Sec. M. Mujer'
                    'Dtr. Vida Familiar'
                    'Sec. Vida Familiar'
                    'Dtr. General. JA'
                    'Sec. General. JA'
                    'Dtr. Asoc. JA'
                    'Sec. Asoc. JA'
                    'Dtr. Club de Conquistadores'
                    'Dtr. Esp. Profes'#237'a'
                    'Dtr. de Oraci'#243'n'
                    'Sec. de Oraci'#243'n'
                    'Dtr. Devocional'
                    'Dtr. Operador de Audio'
                    'Asistente Operador Audio'
                    'Dtr. Ministerio Infantil'
                    'Dtr. Cuna'
                    'Maestro de Cuna'
                    'Dtr. Jard'#237'n'
                    'Maestro Jard'#237'n'
                    'Dtr. Primarios'
                    'Maestro Primarios'
                    'Dtr. Menores'
                    'Maestro Menores'
                    'Dtr. EBV (CCC)'
                    'Asoc. EBV (CCC)'
                    'Dtr. Arte y Cultura'
                    'Dr. Mayordom'#237'a'
                    'Dtr. Comunicaciones'
                    'Asoc. Comunicaciones'
                    'Responsable de Limpieza'
                    'Varios')
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IdAnnos'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Notas'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdNombramientosIgl'
                  Visible = False
                end>
            end
          end
        end
        object Panel26: TPanel
          Left = 0
          Top = 410
          Width = 631
          Height = 40
          Align = alClient
          TabOrder = 2
          object Panel27: TPanel
            Left = 1
            Top = 1
            Width = 629
            Height = 38
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel29: TPanel
              Left = 0
              Top = 0
              Width = 629
              Height = 18
              Align = alTop
              BevelInner = bvLowered
              Caption = 'Notas referentes al a'#241'o...'
              TabOrder = 0
            end
            object DBMemo2: TDBMemo
              Left = 0
              Top = 18
              Width = 629
              Height = 20
              Align = alClient
              DataField = 'Notas'
              DataSource = DSTAnnos
              ScrollBars = ssVertical
              TabOrder = 1
              OnEnter = DBMemo2Enter
              OnKeyDown = DBMemo2KeyDown
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tabla Importar/Exportar'
      ImageIndex = 4
      object Splitter10: TSplitter
        Left = 0
        Top = 288
        Width = 631
        Height = 2
        Cursor = crVSplit
        Align = alBottom
        Beveled = True
        MinSize = 1
        ResizeStyle = rsUpdate
      end
      object Panel20: TPanel
        Left = 0
        Top = 290
        Width = 631
        Height = 160
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter5: TSplitter
          Left = 140
          Top = 0
          Height = 160
          AutoSnap = False
          Beveled = True
          MinSize = 1
          ResizeStyle = rsUpdate
        end
        object Panel41: TPanel
          Left = 0
          Top = 0
          Width = 140
          Height = 160
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Panel46: TPanel
            Left = 0
            Top = 0
            Width = 140
            Height = 20
            Align = alTop
            Alignment = taRightJustify
            BevelInner = bvLowered
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Panel47: TPanel
              Left = 2
              Top = 2
              Width = 15
              Height = 16
              Align = alLeft
              Color = clScrollBar
              TabOrder = 0
              object CheckBox10: TCheckBox
                Left = 1
                Top = -1
                Width = 15
                Height = 17
                Hint = 'Ampliar'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = CheckBox10Click
              end
            end
            object Panel54: TPanel
              Left = 17
              Top = 2
              Width = 121
              Height = 16
              Align = alClient
              Caption = 'Fotograf'#237'a'
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel55: TPanel
            Left = 0
            Top = 20
            Width = 140
            Height = 140
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBImage2: TDBImage
              Left = 0
              Top = 0
              Width = 140
              Height = 140
              Hint = 'Click para buscar Imagen'
              Align = alClient
              DataField = 'Foto'
              DataSource = DSImportMiembros
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
        end
        object Panel56: TPanel
          Left = 143
          Top = 0
          Width = 488
          Height = 160
          Align = alClient
          AutoSize = True
          TabOrder = 1
          object Panel57: TPanel
            Left = 1
            Top = 1
            Width = 486
            Height = 19
            Align = alTop
            BevelInner = bvLowered
            BorderWidth = 1
            Caption = 'Otra Informaci'#243'n'
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBMemo4: TDBMemo
            Left = 1
            Top = 20
            Width = 486
            Height = 139
            Align = alClient
            Color = clWhite
            DataField = 'Otra Informaci'#243'n'
            DataSource = DSImportMiembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
      end
      object Panel60: TPanel
        Left = 0
        Top = 0
        Width = 631
        Height = 288
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel61: TPanel
          Left = 0
          Top = 264
          Width = 631
          Height = 24
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object PanelExt: TPanel
            Left = 2
            Top = 2
            Width = 116
            Height = 20
            Align = alLeft
            Alignment = taLeftJustify
            Caption = ' 0 Miembro(s)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel19: TPanel
            Left = 406
            Top = 2
            Width = 223
            Height = 20
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Panel40: TPanel
              Left = 0
              Top = 0
              Width = 72
              Height = 20
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object dxButtonImp: TSpeedButton
                Left = 0
                Top = 0
                Width = 72
                Height = 20
                Hint = 'Copia estos registros para la Base de Datos Maestra...'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                  FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                  00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                  F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                  00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                  F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                  3333777777777777333333399033333333333337773333333333333903333333
                  3333333773333333333333303333333333333337333333333333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = dxButtonImpClick
              end
            end
            object Panel44: TPanel
              Left = 72
              Top = 0
              Width = 72
              Height = 20
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object dxButtonExp: TSpeedButton
                Left = 0
                Top = 0
                Width = 72
                Height = 20
                Hint = 'Copia los registros desde la Base de Datos Maestra hacia esta...'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
                  333333333333337FF3333333333333903333333333333377FF33333333333399
                  03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
                  99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
                  99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
                  03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
                  33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
                  33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
                  3333777777333333333333333333333333333333333333333333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = dxButtonExpClick
              end
            end
          end
          object DBNavigatorExt: TDBNavigator
            Left = 118
            Top = 2
            Width = 288
            Height = 20
            DataSource = DSImportMiembros
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            Hints.Strings = (
              'Primer Registro'
              'Registro Anterior'
              'Registro Siguiente'
              #218'ltimo Registro'
              'Adicionar un Registro'
              'Borrar Registro(s)'
              'Editar Registro'
              'Guardar los Cambios'
              'Cancelar la Edici'#243'n'
              'Refrescar los Datos')
            ParentShowHint = False
            ConfirmDelete = False
            ShowHint = True
            TabOrder = 2
          end
        end
        object Panel63: TPanel
          Left = 0
          Top = 22
          Width = 631
          Height = 51
          Align = alTop
          AutoSize = True
          BevelInner = bvLowered
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
          object LabelIgl: TLabel
            Left = 65
            Top = 33
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelDist: TLabel
            Left = 65
            Top = 18
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelAsoc: TLabel
            Left = 2
            Top = 21
            Width = 5
            Height = 19
            Align = alTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LabelProv: TLabel
            Left = 65
            Top = 3
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelUnion: TLabel
            Left = 2
            Top = 2
            Width = 5
            Height = 19
            Align = alTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Panel24: TPanel
            Left = 4
            Top = 2
            Width = 58
            Height = 17
            Align = alCustom
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' Provincia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Panel25: TPanel
            Left = 1
            Top = 17
            Width = 61
            Height = 17
            Align = alCustom
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' Distrito:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Panel36: TPanel
            Left = 4
            Top = 32
            Width = 58
            Height = 17
            Align = alCustom
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = ' Iglesia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object Panel64: TPanel
          Left = 0
          Top = 0
          Width = 631
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel65: TPanel
            Left = 0
            Top = 0
            Width = 631
            Height = 22
            Align = alClient
            BevelInner = bvLowered
            Caption = 'Base de Datos Externa'
            TabOrder = 0
          end
        end
        object DBGridExt: TJvDBUltimGrid
          Left = 0
          Top = 73
          Width = 631
          Height = 191
          Align = alClient
          DataSource = DSImportMiembros
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridExtDrawColumnCell
          OnMouseDown = DBGridExtMouseDown
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnColumnResized = DBGridExtColumnResized
          FieldsCheck.Strings = (
            'Fallecido'
            'Desfraternizado'
            'Traslado')
          FieldsCheckColor.Strings = (
            '$00F0C1FF'
            '$00BBFFFF'
            '$00AEFFAE')
          ExOptions = [eoENTERlikeTAB, eoKeepSelection]
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 32
    Top = 92
    Bitmap = {
      494C01010F001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000500000000100180000000000003C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000FF00000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000FF0000FF00000000000000000000000000000000FF000000
      000000000000000000FF0000FF0000FF00000000000000000000000000000000
      000000000000000000FF7B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000FF0000FF0000FF00000000000000000000FF000000
      000000000000FF0000FF0000FF00000000000000000000000000000000000000
      00000000FF00000000FFFF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000FF0000FF0000FF0000FF00000000000000FF000000
      FF0000FF0000FF0000FF0000FF00000000000000000000000000000000000000
      00000000FF00000000FFFF00007B7B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000FF00000000000000000000000000000000000000000000
      00FF0000FF00000000FFFF0000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000FF0000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000FF00000000000000000000000000000000000000000000
      00FF0000FF00000000FFFF0000FF00007B7B7B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000000000000000000000000000000000000000000000FF00
      00FF0000FF00000000FFFF0000FF0000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000000000000000000000000000000000000000000000FF00
      00FF0000FF00000000FFFF0000FF0000FF00007B7B7B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000000000000000000000000000000000000000000000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000000000000000000000000000000000000000000000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF00007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000FF00000000FFFF0000
      FF0000000000000000000000000000000000000000000000FF0000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF0000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000FF00000000FFFF0000
      FF0000000000000000000000000000000000000000000000FF0000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF0000FF00007B7B7B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000FFFF0000
      000000000000000000000000000000000000000000FF0000FF0000FF0000FF00
      00FF00000000000000FF000000FF0000FF0000FF0000FF0000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000FFFF0000
      000000000000000000000000000000000000000000FF0000FF0000FF00000000
      000000000000000000FF0000000000007B7B7BFF0000FF0000FF00007B7B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000000000FF0000FF0000FF00000000000000
      000000000000000000FF000000000000000000000000FF0000FF0000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000000000FF0000000000000000000000000000007B7B7BFF000000
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
      0000000000000000000000000000000000000000000000009393938C8C8C3B34
      4E8E8E8E8C8C8C3B344E8E8E8E8C8C8C3B344E8E8E8E8C8C8C00000000000000
      0000000000000000B9B9B9A6A6A600009DFFFFFFFFFFFF00008AFFFFFFFFFFFF
      000093B0B0A6A6A6A60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008C8C8C8080803029
      4383838280808030294383838280808030294383838280808000000000000000
      0000000000000000A6A6A680808000006DFFFFFFFFFFFF000047FFFFFFFFFFFF
      00005A9393808080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008C8C8C8080803029
      43838382818181342D4685858480808030294383838280808000000000000000
      0000000000000000A6A6A680808000006DFFFFFFFFFFFF000047FFFFFFFFFFFF
      00005A9393808080800000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000737300BDBD000000000000
      0000000000000000000000000000000000000000000000008C8C8C8080803029
      43838382818181342D4685858480808030294383838280808000000000000000
      0000000000000000A6A6A680808000006DFFFFFFFFFFFF000047FFFFFFFFFFFF
      00005A9393808080800000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000888800E7E7000000000000
      0000000000000000000000000000000000000000000000008C8C8C8080803029
      4383838280808030294383838280808030294383838280808000000000000000
      0000000000000000A6A6A680808000006DFFFFFFFFFFFF000047FFFFFFFFFFFF
      00005A9393808080800000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000525200B7B7000000000000
      0000000000000000000000000000000000000000000000008C8C8C8080802F29
      42848483838382332C4586868483838230294381828180808000000000000000
      0000000000000000A6A6A6808080000077FFFFFFFFFFFF000055FFFFFFFFFFFF
      00006D89898080808000000000000000000000000000000000000000000000FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000000000
      000000000000000000030300868600FFFF00FFFF00FFFF00FFFF00E0E000FFFF
      00CCCC0008080000000000000000000000000000000000008C8C8C8080808182
      818283822E27412F28412F284181828182838281818080808000000000000000
      0000000000000000A6A6A680808085857B7B7B6D00005F0000630000636D6D63
      8585778484808080800000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000003A3A00737300575700ACAC00EAEA003030005858
      0049490000000000000000000000000000000000000000009090908686868686
      868787878989888A8A898A8A8988888786868686868686868600000000000000
      0000000000000000B0B0B0939393939393989893A1A193A6A693A6A6939C9C93
      9393939393939393930000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000005F5F00C5C5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000939300F7F7000000000000
      000000000000000000000000000000000000000000463F5A453E58443D56443D
      56443D56443D56443D56443D56413B538678A9413B53443D56453E5800000000
      00000000000000CC0000C30000B90000B90000B90000B90000B90000B90000AB
      0000FF0000AB0000B90000C30000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003232005454000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000796C9800000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000008477A77F72A08477A700000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000FF0000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008174A400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008787876D6D
      6D6D6D6D6D6D6D00000000000000000000000000000000000000000000000000
      00000000000000000000000E0E8700006D00006D00006D000000000000000000
      0000000000000000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C6C6C6C6D6D6D979797B2B2B200000000000000000000000000
      00000000000000000000000D0D8600006D00006C00006C00006C00006D2E2E97
      6464B20000000000000000000000000000000000000000000000008787876D6D
      6D6D6D6D6D6D6D00000000000000000000000000000000000000000000000000
      00000000000000000000000E0E8700006D00006D00006D000000000000000000
      0000000000000000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6A6A6A90909000000000000000
      00000000000000000000000D0D8600006D00006C00006C00006C00006C00006C
      00006C00006A2020900000000000000000000000000000000000008787876D6D
      6D6D6D6D6D6D6D00000000000000000000000000000000000000000000000000
      00000000000000000000000E0E8700006D00006D00006D000000000000000000
      0000000000000000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C6C6C6C6A6A6A6A6A6A6D6D6D6B6B6B6D6D6D6F6F6F00000000
      00000000000000000000000D0D8600006D00006C00006C00006C00006A00006A
      00006D00006B00006D00006F0000000000000000000000000000008787876D6D
      6D6D6D6D6D6D6D00000000000000000000000000000000000000000000000000
      00000000000000000000000E0E8700006D00006D00006D000000000000000000
      0000000000000000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000000000009595956C6C6C6B6B6B6D6D6D92929200
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      2B2B9500006C00006B00006D2525920000000000000000000000008989896D6D
      6D6D6D6D6D6D6D00000000000000000000000000000000000000000000000000
      000000000000000000000011118900006D00006D00006D000000000000000000
      0000000000000000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000000000000000008F8F8F6C6C6C6B6B6B6A6A6A00
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      0000001E1E8F00006C00006B00006A0000006C6C6C6C6C6C6A6A6A6B6B6B6B6B
      6B6C6C6C6C6C6C6D6D6D6D6D6D6E6E6E000000ACACAC00000000000000000000
      000000006C00006C00006A00006B00006B00006C00006C00006D00006D00006E
      0000005959AC0000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000000000000000000000006A6A6A6C6C6C6C6C6CAF
      AFAF0000000000000000000B0B8600006D00006C00006C000000000000000000
      00000000000000006A00006C00006C5F5FAF6C6C6C6C6C6C6D6D6D6C6C6C6C6C
      6C6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D0000006A6A6A86868600000000000000
      000000006C00006C00006D00006C00006C00006D00006D00006D00006D00006D
      00000000006A0D0D860000000000000000000000000000000000007E7E7E6D6D
      6D6C6C6C6C6C6C0000000000000000000000000000006A6A6A6C6C6C6C6C6C72
      727200000000000000000000007E00006D00006C00006C000000000000000000
      00000000000000006A00006C00006C0000726C6C6C6C6C6C8686867575756C6C
      6C6C6C6C6C6C6C6D6D6D6D6D6D6D6D6D0000006C6C6C6C6C6CC4C4C400000000
      000000006C00006C0D0D8600007500006C00006C00006C00006D00006D00006D
      00000000006C00006C8888C40000000000000000006D6D6D6D6D6D6C6C6C6B6B
      6B6B6B6B6B6B6B6B6B6B6D6D6D0000000000000000007070706C6C6C6C6C6C6B
      6B6B00000000006D00006D00006C00006B00006B00006B00006B00006D000000
      00000000000000007000006C00006C00006B0000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000000000006B6B6B6C6C6C6D6D6D7C7C7C00000000
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      00006B00006C00006D00007C0000000000000000006D6D6D6B6B6B6C6C6C6C6C
      6C6C6C6C6C6C6C6C6C6C6D6D6D0000000000000000006A6A6A6C6C6C6B6B6B87
      878700000000006D00006B00006C00006C00006C00006C00006C00006D000000
      00000000000000006A00006C00006B0D0D870000000000000000008787876D6D
      6D6D6D6D6D6D6D0000000000000000009595956E6E6E6C6C6C72727200000000
      00000000000000000000000E0E8700006D00006D00006D000000000000000000
      29299500006E00006C0000720000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C000000000000000000000000C1C1C16A6A6A6C6C6C6C6C6CA8
      A8A80000000000000000000B0B8600006D00006C00006C000000000000000000
      0000008282C100006A00006C00006C5151A80000000000000000008787876D6D
      6D6D6D6D6D6D6D0000000000000000007B7B7B6D6D6D6C6C6C76767600000000
      00000000000000000000000E0E8700006D00006D00006D000000000000000000
      00007B00006D00006C0000760000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C000000000000000000FCFCFC6A6A6A6C6C6C6B6B6B6E6E6E00
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      F8F8FC00006A00006C00006B00006E0000000000000000000000008787876D6D
      6D6D6D6D6D6D6D6B6B6B9D9D9D7474746D6D6D6D6D6D6D6D6D85858500000000
      00000000000000000000000E0E8700006D00006D00006D00006B39399D000074
      00006D00006D00006D0909850000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000009393936A6A6A6C6C6C6B6B6B6A6A6AA7A7A700
      00000000000000000000000D0D8600006D00006C00006C000000000000262693
      00006A00006C00006B00006A4F4FA70000000000000000000000008787876D6D
      6D6D6D6D6D6D6D6C6C6C6F6F6F6D6D6D6D6D6D6E6E6E6A6A6A00000000000000
      00000000000000000000000E0E8700006D00006D00006D00006C00006F00006D
      00006D00006E00006A0000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000006D6D6D6B6B6B6D6D6D6A6A6AA7A7A700000000
      00000000000000000000000D0D8600006D00006C00006C00000000000000006D
      00006B00006D00006A4F4FA70000000000000000000000000000008787876D6D
      6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6B6B6B8E8E8E00000000000000000000
      00000000000000000000000E0E8700006D00006D00006D00006D00006D00006D
      00006B1C1C8E0000000000000000000000000000000000000000008686866D6D
      6D6C6C6C6C6C6C0000000000006B6B6B6A6A6A919191F5F5F500000000000000
      00000000000000000000000D0D8600006D00006C00006C00000000000000006B
      00006A212191EBEBF50000000000000000000000000000000000000000000000
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
      000000009999998A8A8A7C7C7C7F7F7F84848472727200000000000000000000
      000000000000000000000000000000000000000031319913138A00007C00007F
      0707840000720000000000000000000000000000006D6D6D6E6E6E6A6A6A0000
      000000000000000000006D6D6D6D6D6D6C6C6C6E6E6E6E6E6E7F7F7F00000000
      000000000000006D00006E00006A00000000000000000000000000006D00006D
      00006C00006E00006E00007F0000000000000000000000000000000000000000
      007171716868686D6D6D6C6C6C6A6A6A6D6D6D6A6A6A6565659D9D9D00000000
      000000000000000000000000000000000000007100006800006D00006C00006A
      00006D00006A00006539399D0000000000000000007979796E6E6E6F6F6F9E9E
      9E0000000000000000006E6E6E6D6D6D6D6D6D6E6E6E6E6E6EA5A5A500000000
      000000000000007900006E00006F3C3C9E00000000000000000000006E00006D
      00006D00006E00006E4B4BA50000000000000000000000000000000000007171
      716C6C6C6A6A6A6666667171717E7E7E5F5F5F6666666A6A6A676767A3A3A300
      000000000000000000000000000000007100006C00006A00006600007100007E
      00005F00006600006A0000674747A30000000000009A9A9A6B6B6B6E6E6E7373
      73000000000000000000000000F1F1F16A6A6A6E6E6E6A6A6A00000000000000
      000000000033339A00006B00006E000073000000000000000000000000E2E2F1
      00006A00006E00006A000000000000000000000000000000000000D2D2D26161
      616A6A6A6565650000000000000000000000007C7C7C6C6C6C6A6A6A62626200
      0000000000000000000000A5A5D200006100006A000065000000000000000000
      00000000007C00006C00006A0000620000006C6C6C6C6C6C6C6C6C6D6D6D6D6D
      6D6B6B6B6E6E6E6C6C6C000000CACACA6B6B6B6E6E6E7D7D7D00000000000000
      000000006C00006C00006C00006D00006D00006B00006E00006C0000009595CA
      00006B00006E00007D0000000000000000000000000000000000007777776969
      696A6A6A707070000000000000000000000000A1A1A16868686A6A6A6B6B6B00
      000000000000000000000000007700006900006A000070000000000000000000
      0000004343A100006800006A00006B0000006D6D6D6E6E6E6E6E6E6D6D6D6E6E
      6E6E6E6E6E6E6E6F6F6F0000009090906E6E6E6E6E6EABABAB00000000000000
      000000006D00006E00006E00006D00006E00006E00006E00006F000000212190
      00006E00006E5656AB0000000000000000000000000000000000006666666B6B
      6B6969695C5C5C000000000000000000000000EBEBEB6262626A6A6A66666600
      000000000000000000000000006600006B00006900005C000000000000000000
      000000D7D7EB00006200006A0000660000006D6D6D8181818181816C6C6C6E6E
      6E7070707F7F7F9393930000006A6A6A6D6D6D6A6A6A00000000000000000000
      000000006D03038103038100006C00006E00007000007F27279300000000006A
      00006D00006A0000000000000000000000000000000000000000006767676A6A
      6A6767675D5D5D000000000000000000000000EAEAEA6363636A6A6A65656500
      000000000000000000000000006700006A00006700005D000000000000000000
      000000D5D5EA00006300006A0000650000000000000000000000006B6B6B6E6E
      6E6A6A6AECECEC0000009292926C6C6C6E6E6E7C7C7C00000000000000000000
      000000000000000000000000006B00006E00006ADADAEC00000025259200006C
      00006E00007C0000000000000000000000000000000000000000006767676A6A
      6A6E6E6E6C6C6C000000000000000000000000EBEBEB6363636A6A6A65656500
      000000000000000000000000006700006A00006E00006C000000000000000000
      000000D7D7EB00006300006A0000650000000000000000000000008080806E6E
      6E6F6F6FBCBCBC0000008585856E6E6E6F6F6FB0B0B000000000000000000000
      000000000000000000000000008000006E00006F7979BC00000009098500006E
      00006F6060B00000000000000000000000000000008E8E8E8989896E6E6E6A6A
      6A6F6F6F6767678585858E8E8E000000000000EBEBEB6363636A6A6A65656500
      00000000001B1B8E11118900006E00006A00006F0000670909851B1B8E000000
      000000D7D7EB00006300006A0000650000000000000000000000009D9D9D6B6B
      6B6D6D6D7676760000006A6A6A6E6E6E6A6A6A00000000000000000000000000
      000000000000000000000039399D00006B00006D00007600000000006A00006E
      00006A0000000000000000000000000000000000007575756C6C6C6F6F6F6D6D
      6D6D6D6D6E6E6E6D6D6D696969000000000000EBEBEB6363636A6A6A65656500
      000000000000007500006C00006F00006D00006D00006E00006D000069000000
      000000D7D7EB00006300006A0000650000000000000000000000000000006B6B
      6B6E6E6E6E6E6EC2C2C26C6C6C6D6D6D7C7C7C00000000000000000000000000
      000000000000000000000000000000006B00006E00006E8484C200006C00006D
      00007C0000000000000000000000000000000000007878786B6B6B6D6D6D6D6D
      6D6D6D6D6E6E6E6C6C6C686868000000000000F3F3F35F5F5F67676762626200
      000000000000007800006B00006D00006D00006D00006E00006C000068000000
      000000E7E7F300005F0000670000620000000000000000000000000000008181
      816E6E6E6E6E6E6A6A6A6E6E6E6F6F6FB3B3B300000000000000000000000000
      000000000000000000000000000003038100006E00006E00006A00006E00006F
      6767B30000000000000000000000000000000000008F8F8F7F7F7F6D6D6D6D6D
      6D6C6C6C6666667272729494940000000000000000008D8D8D8E8E8E8C8C8C00
      00000000001D1D8F00007F00006D00006D00006C000066000072272794000000
      00000000000019198D1B1B8E17178C000000000000000000000000000000A0A0
      A06B6B6B6E6E6E6E6E6E6E6E6E6A6A6A00000000000000000000000000000000
      00000000000000000000000000004141A000006B00006E00006E00006E00006A
      0000000000000000000000000000000000000000000000000000006868686B6B
      6B6A6A6A5D5D5D00000000000000000000000000000000000000000000000000
      000000000000000000000000006800006B00006A00005D000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      006A6A6A6D6D6D6E6E6E6D6D6D7C7C7C00000000000000000000000000000000
      000000000000000000000000000000000000006A00006D00006E00006D00007C
      0000000000000000000000000000000000000000000000000000007070707575
      7574747469696900000000000000000000000000000000000000000000000000
      0000000000000000000000000070000075000074000069000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      008686866F6F6F6E6E6E6F6F6FB7B7B700000000000000000000000000000000
      00000000000000000000000000000000000B0B8600006F00006E00006F6F6FB7
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFBF7EFEFF0000FFFF8F78FE7F0000
      FFFFC371FC7F0000FFFFC141FC3F0000FC7FE003F83F0000FC7FE003F81F0000
      FC7FF007F01F0000E00FF007F00F0000E00FF80FE00F0000E00FF80FE0070000
      FC7FFC1FC0070000FC7FFC1FC0030000FC7FFE3F82830000FFFFFE3F8EC10000
      FFFFFF7F1EF10000FFFFFF7F7EF90000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C003C003FFFFFFFFC003C003FFFFFFFFC003C003FC7FF87FC003C003FC7FF87F
      C003C003FC7FFC7FC003C003E00FC00FC003C003E00FC00FC003C003E00FC00F
      C003C003FC7FE87F00000000FC7FF87F00010001FC7FF87FC003C003FFFFFCFF
      FF8FFF8FFFFFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFE1FFE1FFE01FE01F
      E1FFE1FFE007E007E1FFE1FFE003E003E1FFE1FFE1C1E1C1E1FFE1FFE1E1E1E1
      002F002FE1F0E1F000270027E1F0E1F00023002380708070E1C3E1C380708070
      E1C3E1C3E1E0E1E0E1C3E1C3E1C1E1C1E003E003E181E181E007E007E183E183
      E00FE00FE187E187FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFC0F8F038F03
      F803F80387038703F001F00187878787E1E1E1E100870087E1E1E1E100870087
      E1E1E1E1008F008FE1E1E1E1E10FE10FE1E1E1E1E10FE10F80618061E11FE11F
      80618061F01FF01F80618061F01FF01F80718071F03FF03FE1FFE1FFF83FF83F
      E1FFE1FFF83FF83FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList4
    Left = 4
    Top = 92
    object NuevaUnin1: TMenuItem
      Action = NuevaU
    end
    object NuevaAsociacin1: TMenuItem
      Action = NuevaA
    end
    object NuevaProvincia1: TMenuItem
      Action = NuevaP
    end
    object NuevoDistrito1: TMenuItem
      Action = NuevoD
    end
    object NuevaIglesia1: TMenuItem
      Action = NuevaI
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Borrar1: TMenuItem
      Action = BorraNodo
    end
    object BorrarTodos1: TMenuItem
      Action = BorraTodos
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageList4
    Left = 93
    Top = 93
    object Archivo1: TMenuItem
      Caption = '&Archivo'
      object AbrirBasedeDatos1: TMenuItem
        Action = AbrirBD
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Configurar1: TMenuItem
        Action = ConfigPage
      end
      object Imprimir1: TMenuItem
        Action = ImprimirDB
      end
      object ImprimirFormularioLleno1: TMenuItem
        Caption = 'Imprimir Formulario &Lleno'
        OnClick = ImprimirFormularioLleno1Click
      end
      object ImprimirFormularioVaco1: TMenuItem
        Caption = 'Imprimir Formulario &Vac'#237'o'
        OnClick = ImprimirFormularioVaco1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ImportarDatos1: TMenuItem
        Action = ImportarDB
      end
      object ExportarDatos1: TMenuItem
        Action = ExportarDB
      end
      object CerrarConeccinExterior1: TMenuItem
        Action = CerrarDBExt
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object CerrarChurch2: TMenuItem
        Action = CerrarChurch
      end
    end
    object Edicin1: TMenuItem
      Caption = '&Edici'#243'n'
      object NuevaUnin2: TMenuItem
        Action = NuevaU
      end
      object NuevaAsociacin2: TMenuItem
        Action = NuevaA
      end
      object NuevaProvincia2: TMenuItem
        Action = NuevaP
      end
      object NuevaIglesia2: TMenuItem
        Action = NuevoD
      end
      object NuevaIglesia3: TMenuItem
        Action = NuevaI
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Borrar2: TMenuItem
        Action = BorraNodo
      end
      object Borrartodos2: TMenuItem
        Action = BorraTodos
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Copiar1: TMenuItem
        Action = Copiar
      end
      object Cortar1: TMenuItem
        Action = Cortar
      end
      object Pegar1: TMenuItem
        Action = Pegar
      end
    end
    object B1: TMenuItem
      Caption = '&Buscar'
      object Ventanadebsqueda1: TMenuItem
        Action = BuscarDB
      end
    end
    object Herramientas1: TMenuItem
      Caption = 'Herramientas'
      object ConfigurarTablaMaestra1: TMenuItem
        Action = Configurar
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object EstablecerContrasea1: TMenuItem
        Caption = 'Establecer &Contrase'#241'a'
        OnClick = EstablecerContrasea1Click
      end
      object Eliminar1: TMenuItem
        Caption = '&Eliminar Contrase'#241'a'
        OnClick = Eliminar1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object EliminarRegistrosSueltos1: TMenuItem
        Caption = 'Eliminar &Registros Sueltos'
        ShortCut = 119
        OnClick = EliminarRegistrosSueltos1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object ActualizarEdaddelosMiembros1: TMenuItem
        Caption = 'Actualizar Edad de los Miembros por No &Identidad'
        OnClick = ActualizarEdaddelosMiembros1Click
      end
      object ActualizarEdaddelosMiembrosporNoIdentidad1: TMenuItem
        Caption = 'Actualizar Edad de los Miembros por Fecha &Nacimiento'
        OnClick = ActualizarEdaddelosMiembrosporNoIdentidad1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object GuardarConfiguraciones1: TMenuItem
        Action = GuardarConfiguraciones
        AutoCheck = True
      end
    end
    object Ayuda1: TMenuItem
      Caption = '&Ayuda'
      object Ayudadelprograma1: TMenuItem
        Action = Ayuda
      end
      object Acercade1: TMenuItem
        Caption = '&Acerca de...'
        OnClick = Acercade1Click
      end
    end
  end
  object DSTUnion: TDataSource
    DataSet = ADOTUnion
    Left = 256
    Top = 446
  end
  object ADOTUnion: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = ADOTUnionAfterPost
    AfterDelete = ADOTUnionAfterDelete
    CommandText = 'select Uni'#243'n, IdUnion from TUnion Order by Uni'#243'n'
    Parameters = <>
    Left = 256
    Top = 413
    object ADOTUnionUnin: TWideStringField
      FieldName = 'Uni'#243'n'
    end
    object ADOTUnionIdUnion: TAutoIncField
      FieldName = 'IdUnion'
      ReadOnly = True
    end
  end
  object ADOTAsociacion: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select Asociaci'#243'n, IdUnion, IdAsociacion from TAsociacion Order ' +
      'by Asociaci'#243'n'
    DataSource = DSTUnion
    IndexFieldNames = 'IdUnion'
    MasterFields = 'IdUnion'
    Parameters = <>
    Left = 294
    Top = 413
  end
  object ADOTProvincia: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select Provincia, IdProvincia, IdAsociacion from TProvincia Orde' +
      'r by Provincia'
    DataSource = DSTAsociacion
    IndexFieldNames = 'IdAsociacion'
    MasterFields = 'IdAsociacion'
    Parameters = <>
    Left = 349
    Top = 303
  end
  object ADOTDistrito: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select Distrito, IdDistrito, IdProvincia from TDistrito Order by' +
      ' Distrito'
    DataSource = DSTProvincia
    IndexFieldNames = 'IdProvincia'
    MasterFields = 'IdProvincia'
    Parameters = <>
    Left = 387
    Top = 303
  end
  object ADOTIglesia: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from TIglesia Order by Iglesia'
    DataSource = DSTDistrito
    IndexFieldNames = 'IdDistrito'
    MasterFields = 'IdDistrito'
    Parameters = <>
    Left = 460
    Top = 303
  end
  object ADOTVisitas: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforeInsert = ADOTVisitasBeforeInsert
    AfterPost = ADOTVisitasAfterPost
    AfterDelete = ADOTVisitasAfterDelete
    CommandText = 
      'select Fecha, Visitado, Notas, IdVisitas, IdMiembro from TVisita' +
      's order by Fecha'
    DataSource = DSTMiembros
    IndexFieldNames = 'IdMiembro'
    MasterFields = 'IdMiembro'
    Parameters = <>
    Left = 670
    Top = 367
    object ADOTVisitasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADOTVisitasVisitado: TWideStringField
      FieldName = 'Visitado'
      Size = 60
    end
    object ADOTVisitasNotas: TWideStringField
      FieldName = 'Notas'
      Size = 255
    end
    object ADOTVisitasIdVisitas: TAutoIncField
      FieldName = 'IdVisitas'
      ReadOnly = True
    end
    object ADOTVisitasIdMiembro: TIntegerField
      FieldName = 'IdMiembro'
    end
  end
  object ADOTPastorIglesia: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterDelete = ADOTPastorIglesiaAfterDelete
    CommandText = 
      'select * from TPastorIglesia order by [Entrada],[Primer Apellido' +
      '],[Segundo Apellido],Nombre'
    DataSource = DSTIglesia
    IndexFieldNames = 'IdIglesia'
    MasterFields = 'IdIglesia'
    Parameters = <>
    Left = 495
    Top = 331
    object ADOTPastorIglesiaIdPastorIglesia: TAutoIncField
      FieldName = 'IdPastorIglesia'
      ReadOnly = True
    end
    object ADOTPastorIglesiaNombre: TWideStringField
      FieldName = 'Nombre'
    end
    object ADOTPastorIglesiaPrimerApellido: TWideStringField
      FieldName = 'Primer Apellido'
    end
    object ADOTPastorIglesiaSegundoApellido: TWideStringField
      FieldName = 'Segundo Apellido'
    end
    object ADOTPastorIglesiaEntrada: TDateTimeField
      FieldName = 'Entrada'
      OnSetText = ADOTPastorIglesiaEntradaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTPastorIglesiaSalida: TDateTimeField
      FieldName = 'Salida'
      OnSetText = ADOTPastorIglesiaSalidaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTPastorIglesiaIdIglesia: TIntegerField
      FieldName = 'IdIglesia'
    end
    object ADOTPastorIglesiaTelfono: TIntegerField
      FieldName = 'Tel'#233'fono'
    end
    object ADOTPastorIglesiaDireccin: TWideStringField
      DisplayWidth = 35
      FieldName = 'Direcci'#243'n'
      Size = 35
    end
  end
  object ADOTNombramientosIgl: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforeInsert = ADOTNombramientosIglBeforeInsert
    AfterDelete = ADOTNombramientosIglAfterDelete
    CommandText = 
      'select * from TNombramientosIgl Order by [Primer Apellido],[Segu' +
      'ndo Apellido],Nombre, Cargo'
    DataSource = DSTAnnos
    IndexFieldNames = 'IdAnnos'
    MasterFields = 'IdAnnos'
    Parameters = <>
    Left = 564
    Top = 367
    object ADOTNombramientosIglIdNombramientosIgl: TAutoIncField
      FieldName = 'IdNombramientosIgl'
      ReadOnly = True
    end
    object ADOTNombramientosIglNombre: TWideStringField
      FieldName = 'Nombre'
    end
    object ADOTNombramientosIglPrimerApellido: TWideStringField
      FieldName = 'Primer Apellido'
    end
    object ADOTNombramientosIglSegundoApellido: TWideStringField
      FieldName = 'Segundo Apellido'
    end
    object ADOTNombramientosIglCargo: TWideStringField
      DisplayWidth = 30
      FieldName = 'Cargo'
      Size = 30
    end
    object ADOTNombramientosIglIdAnnos: TIntegerField
      FieldName = 'IdAnnos'
    end
    object ADOTNombramientosIglNotas: TMemoField
      FieldName = 'Notas'
      BlobType = ftMemo
    end
  end
  object ADOTAnnos: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterDelete = ADOTAnnosAfterDelete
    OnEditError = ADOTAnnosEditError
    OnPostError = ADOTAnnosPostError
    CommandText = 'select * from TAnnos'
    DataSource = DSTIglesia
    IndexFieldNames = 'IdIglesia'
    MasterFields = 'IdIglesia'
    Parameters = <>
    Left = 529
    Top = 331
    object ADOTAnnosIdAnnos: TAutoIncField
      FieldName = 'IdAnnos'
      ReadOnly = True
    end
    object ADOTAnnosFecha: TDateTimeField
      FieldName = 'Fecha'
      OnSetText = ADOTAnnosFechaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTAnnosIdIglesia: TIntegerField
      FieldName = 'IdIglesia'
    end
    object ADOTAnnosJuntaIglesia: TMemoField
      FieldName = 'Junta Iglesia'
      BlobType = ftMemo
    end
    object ADOTAnnosNotas: TMemoField
      FieldName = 'Notas'
      BlobType = ftMemo
    end
  end
  object DSTAsociacion: TDataSource
    DataSet = ADOTAsociacion
    Left = 294
    Top = 446
  end
  object DSTProvincia: TDataSource
    DataSet = ADOTProvincia
    Left = 349
    Top = 332
  end
  object DSTDistrito: TDataSource
    DataSet = ADOTDistrito
    Left = 387
    Top = 332
  end
  object DSTIglesia: TDataSource
    DataSet = ADOTIglesia
    Left = 460
    Top = 332
  end
  object DSTVisitas: TDataSource
    DataSet = ADOTVisitas
    Left = 670
    Top = 399
  end
  object DSTPastorIglesia: TDataSource
    DataSet = ADOTPastorIglesia
    Left = 495
    Top = 366
  end
  object DSTNombramientosIgl: TDataSource
    DataSet = ADOTNombramientosIgl
    Left = 564
    Top = 399
  end
  object DSTAnnos: TDataSource
    DataSet = ADOTAnnos
    Left = 529
    Top = 366
  end
  object ADOTPastorDistrito: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterDelete = ADOTPastorDistritoAfterDelete
    CommandText = 
      'select * from TPastorDistrito Order By [Entrada],[Primer Apellid' +
      'o], [Segundo Apellido],Nombre'
    DataSource = DSTDistrito
    IndexFieldNames = 'IdDistrito'
    MasterFields = 'IdDistrito'
    Parameters = <>
    Left = 421
    Top = 332
    object ADOTPastorDistritoIdPastorDistrito: TAutoIncField
      FieldName = 'IdPastorDistrito'
      ReadOnly = True
    end
    object ADOTPastorDistritoNombre: TWideStringField
      FieldName = 'Nombre'
    end
    object ADOTPastorDistritoPrimerApellido: TWideStringField
      FieldName = 'Primer Apellido'
    end
    object ADOTPastorDistritoSegundoApellido: TWideStringField
      FieldName = 'Segundo Apellido'
    end
    object ADOTPastorDistritoEntrada: TDateTimeField
      FieldName = 'Entrada'
      OnSetText = ADOTPastorDistritoEntradaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTPastorDistritoSalida: TDateTimeField
      FieldName = 'Salida'
      OnSetText = ADOTPastorDistritoSalidaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTPastorDistritoIdDistrito: TIntegerField
      FieldName = 'IdDistrito'
    end
    object ADOTPastorDistritoTelfono: TIntegerField
      FieldName = 'Tel'#233'fono'
    end
    object ADOTPastorDistritoDireccin: TWideStringField
      DisplayWidth = 35
      FieldName = 'Direcci'#243'n'
      Size = 35
    end
  end
  object DSTPastorDistrito: TDataSource
    DataSet = ADOTPastorDistrito
    Left = 421
    Top = 367
  end
  object ADOTObreras: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterDelete = ADOTObrerasAfterDelete
    CommandText = 
      'select * from TObreras Order By Entrada,[Primer Apellido], [Segu' +
      'ndo Apellido],Nombre'
    DataSource = DSTIglesia
    IndexFieldNames = 'IdIglesia'
    MasterFields = 'IdIglesia'
    Parameters = <>
    Left = 602
    Top = 335
    object ADOTObrerasIdObreras: TAutoIncField
      FieldName = 'IdObreras'
      ReadOnly = True
    end
    object ADOTObrerasNombre: TWideStringField
      FieldName = 'Nombre'
    end
    object ADOTObrerasPrimerApellido: TWideStringField
      FieldName = 'Primer Apellido'
    end
    object ADOTObrerasSegundoApellido: TWideStringField
      FieldName = 'Segundo Apellido'
    end
    object ADOTObrerasEntrada: TDateTimeField
      FieldName = 'Entrada'
      OnSetText = ADOTObrerasEntradaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTObrerasSalida: TDateTimeField
      FieldName = 'Salida'
      OnSetText = ADOTObrerasSalidaSetText
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object ADOTObrerasIdIglesia: TIntegerField
      FieldName = 'IdIglesia'
    end
    object ADOTObrerasTelfono: TIntegerField
      FieldName = 'Tel'#233'fono'
    end
    object ADOTObrerasDireccin: TWideStringField
      DisplayWidth = 35
      FieldName = 'Direcci'#243'n'
      Size = 35
    end
  end
  object DSTObreras: TDataSource
    DataSet = ADOTObreras
    Left = 602
    Top = 367
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADOTMiembrosAfterOpen
    BeforeClose = ADODataSet1BeforeClose
    AfterScroll = ADODataSet1AfterScroll
    AfterRefresh = ADODataSet1AfterScroll
    OnFetchProgress = ADODataSet1FetchProgress
    CommandText = 'select IdMiembro from TMiembros'
    Parameters = <>
    Left = 407
    Top = 158
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 439
    Top = 158
  end
  object PopupMenu2: TPopupMenu
    Left = 128
    Top = 93
  end
  object ADOImportMiembros: TADODataSet
    AutoCalcFields = False
    Connection = ADOConnection2
    CursorType = ctStatic
    AfterOpen = ADOImportMiembrosAfterOpen
    AfterPost = ADOImportMiembrosAfterPost
    CommandText = 'select * from TMiembros'
    DataSource = DSImportIglesia
    IndexFieldNames = 'IdIglesia'
    MasterFields = 'IdIglesia'
    Parameters = <>
    Left = 744
    Top = 346
  end
  object DSImportMiembros: TDataSource
    DataSet = ADOImportMiembros
    Left = 776
    Top = 345
  end
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 712
    Top = 152
  end
  object ADOImportUnion: TADODataSet
    Connection = ADOConnection2
    CursorType = ctStatic
    CommandText = 'select * from TUnion Order by Uni'#243'n'
    Parameters = <>
    Left = 744
    Top = 187
  end
  object ADOImportAsociacion: TADODataSet
    Connection = ADOConnection2
    CursorType = ctStatic
    CommandText = 'select * from TAsociacion Order By Asociaci'#243'n'
    DataSource = DSImportUnion
    IndexFieldNames = 'IdUnion'
    MasterFields = 'IdUnion'
    Parameters = <>
    Left = 744
    Top = 219
  end
  object ADOImportProvincia: TADODataSet
    Connection = ADOConnection2
    CursorType = ctStatic
    CommandText = 'select * from TProvincia Order By Provincia'
    DataSource = DSImportAsociacion
    IndexFieldNames = 'IdAsociacion'
    MasterFields = 'IdAsociacion'
    Parameters = <>
    Left = 744
    Top = 251
  end
  object ADOImportDistrito: TADODataSet
    Connection = ADOConnection2
    CursorType = ctStatic
    CommandText = 'select * from TDistrito Order By Distrito'
    DataSource = DSImportProvincia
    IndexFieldNames = 'IdProvincia'
    MasterFields = 'IdProvincia'
    Parameters = <>
    Left = 744
    Top = 283
  end
  object DSImportUnion: TDataSource
    DataSet = ADOImportUnion
    Left = 776
    Top = 187
  end
  object DSImportAsociacion: TDataSource
    DataSet = ADOImportAsociacion
    Left = 776
    Top = 219
  end
  object DSImportProvincia: TDataSource
    DataSet = ADOImportProvincia
    Left = 776
    Top = 251
  end
  object DSImportDistrito: TDataSource
    DataSet = ADOImportDistrito
    Left = 776
    Top = 283
  end
  object ADOImportIglesia: TADODataSet
    Connection = ADOConnection2
    CursorType = ctStatic
    CommandText = 'select * from TIglesia Order By Iglesia'
    DataSource = DSImportDistrito
    IndexFieldNames = 'IdDistrito'
    MasterFields = 'IdDistrito'
    Parameters = <>
    Left = 744
    Top = 315
  end
  object DSImportIglesia: TDataSource
    DataSet = ADOImportIglesia
    Left = 776
    Top = 315
  end
  object ADOImportExport: TADODataSet
    Connection = ADOConnection2
    ExecuteOptions = [eoAsyncFetch]
    Parameters = <>
    Left = 527
    Top = 198
  end
  object AbrirBaseDatos: TOpenDialog
    DefaultExt = '.mdb'
    Filter = 'Base de Datos (*.mdb)|*.mdb'
    Left = 40
    Top = 149
  end
  object ActionEditar: TActionList
    Images = ImageList4
    Left = 136
    Top = 181
    object AbrirBD: TAction
      Category = 'DBAcciones'
      Caption = '&Abrir Base de Datos'
      Hint = 'Abrir Base de Datos Maestra'
      ImageIndex = 0
      ShortCut = 16449
      OnExecute = AbrirBDExecute
    end
    object ImportarDB: TAction
      Category = 'DBAcciones'
      Caption = '&Importar Datos'
      Hint = 'Importar'
      ImageIndex = 5
      ShortCut = 116
      OnExecute = ImportarDBExecute
    end
    object ExportarDB: TAction
      Category = 'DBAcciones'
      Caption = '&Exportar Datos'
      Hint = 'Exportar'
      ImageIndex = 6
      ShortCut = 117
      OnExecute = ExportarDBExecute
    end
    object MostrarDBMaster: TAction
      Category = 'DBAcciones'
      Caption = '&Mostrar Tabla Maestra'
      Hint = 'Mostrar Tabla Maestra'
      ImageIndex = 8
      OnExecute = MostrarDBMasterExecute
    end
    object BuscarDB: TAction
      Category = 'DBAcciones'
      Caption = '&Buscar en Tabla Maestra'
      Hint = 'Buscar en Tabla Mestra'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = BuscarDBExecute
    end
    object OrdenarDB: TAction
      Category = 'DBAcciones'
      Caption = '&Ordenar Tabla Maestra'
      Hint = 'Ordenar Tabla Maestra'
      ImageIndex = 18
      OnExecute = OrdenarDBExecute
    end
    object ImprimirDB: TAction
      Category = 'DBAcciones'
      Caption = 'Im&primir'
      Hint = 'Imprimir Tabla Maestra'
      ImageIndex = 9
      ShortCut = 16464
      OnExecute = ImprimirDBExecute
    end
    object PanelInfoAdicional: TAction
      Category = 'DBAcciones'
      Caption = 'Mostra/Ocultar Informaci'#243'n Adicional'
      Hint = 'Mostrar Panel de Informaci'#243'n Adicional'
      ImageIndex = 11
      OnExecute = PanelInfoAdicionalExecute
    end
    object PanelFotografia: TAction
      Category = 'DBAcciones'
      Caption = 'Mostra/Ocultar Foto'
      Checked = True
      Hint = 'Mostrar Panel de Fotograf'#237'as'
      ImageIndex = 13
      OnExecute = PanelFotografiaExecute
    end
    object PanelIdiomas: TAction
      Category = 'DBAcciones'
      Caption = 'Mostra/Ocultar Idiomas'
      Hint = 'Mostrar Panel de Idiomas'
      ImageIndex = 14
      OnExecute = PanelIdiomasExecute
    end
    object PanelEnfermedades: TAction
      Category = 'DBAcciones'
      Caption = 'Mostra/Ocultar Enfermedades'
      Hint = 'Mostrar Panel de Enfermedades'
      ImageIndex = 16
      OnExecute = PanelEnfermedadesExecute
    end
    object PanelOtraInfo: TAction
      Category = 'DBAcciones'
      Caption = 'Mostra/Ocultar Otra Info...'
      Checked = True
      Hint = 'Mostrar Panel de Otra Informaci'#243'n'
      ImageIndex = 12
      OnExecute = PanelOtraInfoExecute
    end
    object PanelVisitados: TAction
      Category = 'DBAcciones'
      Caption = 'Mostra/Ocultar Visitas'
      Hint = 'Mostrar Panel de Visitas'
      ImageIndex = 15
      OnExecute = PanelVisitadosExecute
    end
    object Candado: TAction
      Category = 'DBAcciones'
      Caption = 'Candado'
      Hint = 'Bloquear/Desbloquear la Edici'#243'n en la Tabla Maestra'
      ImageIndex = 17
      OnExecute = CandadoExecute
    end
    object Pegar: TAction
      Category = 'DBAcciones'
      Caption = 'Pegar'
      Hint = 'Pegar'
      ImageIndex = 2
      OnExecute = PegarExecute
      OnUpdate = PegarUpdate
    end
    object Cortar: TAction
      Category = 'DBAcciones'
      Caption = 'Cortar'
      Hint = 'Cortar'
      ImageIndex = 3
      OnExecute = CortarExecute
      OnUpdate = CortarUpdate
    end
    object Copiar: TAction
      Category = 'DBAcciones'
      Caption = 'Copiar'
      Hint = 'Copiar'
      ImageIndex = 4
      OnExecute = CopiarExecute
    end
    object CerrarDBExt: TAction
      Category = 'DBAcciones'
      Caption = 'Cerrar Base de &Datos Externa'
      Hint = 'Cerrar Base de Datos Exterior'
      ImageIndex = 7
      ShortCut = 118
      OnExecute = CerrarDBExtExecute
    end
    object CerrarChurch: TAction
      Category = 'DBAcciones'
      Caption = 'Cerrar Church'
      Hint = 'Cerrar Church'
      ImageIndex = 19
      ShortCut = 32856
      OnExecute = CerrarChurchExecute
    end
    object Configurar: TAction
      Category = 'DBAcciones'
      Caption = 'Con&figurar Tabla Maestra'
      Hint = 'Configurar Tabla Maestra'
      ImageIndex = 20
      ShortCut = 120
      OnExecute = ConfigurarExecute
    end
    object ConfigPage: TAction
      Category = 'DBAcciones'
      Caption = 'Configurar P'#225'gina'
      Hint = 'Configurar P'#225'gina'
      ShortCut = 121
      OnExecute = ConfigPageExecute
    end
    object NuevaU: TAction
      Category = 'DBAcciones'
      Caption = 'Nueva Uni'#243'n'
      ImageIndex = 24
      OnExecute = NuevaUExecute
      OnUpdate = NuevaUUpdate
    end
    object NuevaA: TAction
      Category = 'DBAcciones'
      Caption = 'Nueva Asociaci'#243'n'
      ImageIndex = 25
      OnExecute = NuevaAExecute
      OnUpdate = NuevaAUpdate
    end
    object NuevaP: TAction
      Category = 'DBAcciones'
      Caption = 'Nueva Provincia'
      ImageIndex = 26
      OnExecute = NuevaPExecute
      OnUpdate = NuevaPUpdate
    end
    object NuevoD: TAction
      Category = 'DBAcciones'
      Caption = 'Nuevo Distrito'
      ImageIndex = 27
      OnExecute = NuevoDExecute
      OnUpdate = NuevoDUpdate
    end
    object NuevaI: TAction
      Category = 'DBAcciones'
      Caption = 'Nueva Iglesia'
      ImageIndex = 28
      OnExecute = NuevaIExecute
      OnUpdate = NuevaIUpdate
    end
    object BorraNodo: TAction
      Category = 'DBAcciones'
      Caption = 'Borrar'
      OnExecute = BorraNodoExecute
      OnUpdate = BorraNodoUpdate
    end
    object BorraTodos: TAction
      Category = 'DBAcciones'
      Caption = 'Borrar todos'
      OnExecute = BorraTodosExecute
      OnUpdate = BorraTodosUpdate
    end
    object Ayuda: TAction
      Category = 'DBAcciones'
      Caption = 'Ayuda'
      ShortCut = 112
      OnExecute = AyudaExecute
    end
    object SeleccionarTodos: TAction
      Category = 'DBAcciones'
      Caption = 'Seleccionar todos'
      OnExecute = SeleccionarTodosExecute
      OnUpdate = SeleccionarTodosUpdate
    end
    object SeleccionarNada: TAction
      Category = 'DBAcciones'
      Caption = 'Seleccionar ninguno'
      OnExecute = SeleccionarNadaExecute
      OnUpdate = SeleccionarNadaUpdate
    end
    object GuardarConfiguraciones: TAction
      Category = 'DBAcciones'
      AutoCheck = True
      Caption = 'Guardar Configuraciones'
      Checked = True
      ImageIndex = 29
      OnExecute = GuardarConfiguracionesExecute
    end
    object InsertarRegistro: TAction
      Category = 'DBAcciones'
      Caption = 'Insertar registro'
      OnExecute = InsertarRegistroExecute
      OnUpdate = InsertarRegistroUpdate
    end
    object BorraRegistro: TAction
      Category = 'DBAcciones'
      Caption = 'Borrar registro'
      OnExecute = BorraRegistroExecute
      OnUpdate = BorraRegistroUpdate
    end
  end
  object DSTMiembros: TDataSource
    DataSet = ADOTMiembros
    OnStateChange = DSTMiembrosStateChange
    Left = 631
    Top = 366
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    AfterConnect = ADOConnection1AfterConnect
    Left = 224
    Top = 420
  end
  object ADOTMiembros: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterOpen = ADOTMiembrosAfterOpen
    BeforeClose = ADOTMiembrosBeforeClose
    AfterClose = ADOTMiembrosAfterClose
    BeforePost = ADOTMiembrosBeforePost
    AfterPost = ADOTMiembrosAfterPost
    AfterDelete = ADOTMiembrosAfterDelete
    AfterScroll = ADOTMiembrosAfterScroll
    OnDeleteError = ADOTMiembrosDeleteError
    OnEditError = ADOTMiembrosEditError
    CommandText = 'select * from TMiembros'
    DataSource = DSTIglesia
    IndexFieldNames = 'IdIglesia'
    MasterFields = 'IdIglesia'
    Parameters = <>
    Left = 632
    Top = 334
  end
  object ADOIdiomas: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Idiomas order by Idioma'
    Parameters = <>
    Left = 408
    Top = 222
  end
  object ADOEnfermedades: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select * from Enfermedades order by Enfermedad'
    Parameters = <>
    Left = 440
    Top = 222
  end
  object ImageListFUENTE: TImageList
    Left = 60
    Top = 258
    Bitmap = {
      494C01014B004F00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000004000000040010000010018000000000000F0
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000C8A19BB08E88B08E88000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000B08E8890746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000A8878190746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF0000FF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      0000000000000000000000E1B5AED0A8A1C09B94A0817B90746F90746FB08E88
      D0A8A1D0A8A100000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF0000FF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      0000000000000000000000B08E8890746F90746F90746F90746F90746F90746F
      90746F90746F00000000000000000000000000000000000000000000FFFF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF00FFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      0000000000000000000000E1B5AED0A8A1C09B94A0817B90746F90746FB08E88
      D0A8A1D0A8A100000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF0000FF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000A8878190746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF0000FF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000B08E8890746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000C8A19BB08E88B08E88000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFF00FFFF00FFFF00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024262272786D72786D373A340000
      00000000000000000000000000000000000000090A096A706572786D666C6100
      0000211434673FA6663FA6311E50000000000000000000000000000000000000
      00000008050E603B9A663FA65C38950000000600481100E50F00E507006E0000
      000000000000000000000000000000000000000100131000D50F00E50F00CD00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000282B267F86797F86797E8578373A
      340000000000000000000000000000000909096D74687F86797F867972786D00
      000025163B6F46B96E46B96F46B7311E50000000000000000000000000000000
      08050D623DA06F46B96E46B9643FA60000000600510B00FF0800FF0B00FD0600
      6E0000000000000000000000000000000100120E00DC0B00FF0800FF0A00E500
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000282B267F86797F86797F86797E85
      78373A340000000000000000000909096D74687E85797F86797F867972786D00
      000025163B7046B96E46B96E46B96F46B7311E5000000000000000000008050D
      623DA06F46B86E46B96E46B9653FA60000000600510D00FF0800FF0800FF0B00
      FD06006E0000000000000000000100120E00DC0B00FE0800FF0800FF0C00E500
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000080808696F657E85797F86797F86
      797E8578373A35000000090A096E74697F86797F86797F86797D84782F322D00
      000007040C5F3A9A6F46B86E46B96E46B96F46B7311F5000000008050E633DA0
      6F46B96E46B96E46B96E45B72A1A450000000100100F00D40C00FE0800FF0800
      FF0B00FD06006F0000000100130F00DD0B00FF0800FF0800FF0B00FC05005F00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060706696F647E85797F86
      797F86797E85783E423B6E74697F86797F86797F86797D847830322E00000000
      00000000000504095E3A996F46B86E46B97046B97046B737225B633DA07146B9
      6F46B96E46B96E45B72A1A4600000000000000000000000D0E00D30B00FE0800
      FF0C00FF0E00FD07007D0F00DD0E00FF0B00FF0800FF0B00FC05006000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000060706696F647F86
      790000007F86797F86797F86790000007F86797D847830322E00000000000000
      00000000000000000504095E3A997046B90000007246B97046B97046B9000000
      7046B96E45B72A1A4600000000000000000000000000000000000D0E00D30C00
      FF0000001100FF0D00FF0D00FF0000000D00FF0B00FC05006000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000060706696F
      657F86790000007F86790000007F86797D847830322E00000000000000000000
      00000000000000000000000604095F3A9A7246B90000007346B90000007346B9
      7045B72A1A4600000000000000000000000000000000000000000001000D0E00
      D41000FF0000001200FF0000001200FF1000FC05006000000000000000000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF0000000000000000000000000000000000000000000000001011
      0F7A81757F86790000000000007F86794B4F4700000000000000000000000000
      00000000000000000000000000000E09176C44B27246B90000000000007246B9
      42296D0000000000000000000000000000000000000000000000000000000100
      200B00F61000FF0000000000001100FF07009600000000000000000000000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF0000000000000000000000000000000000000000000909096E74
      697F86790000000000000000007F86797E8578373A3500000000000000000000
      000000000000000000000008050D633DA07146B90000000000000000007346B9
      7046B7311F500000000000000000000000000000000000000000000100120E00
      DD0E00FF0000000000000000001200FF0E00FD06006F00000000000000000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF0000000000000000000000000000000000000909096D74687F86
      790000007F86797F86797F86790000007F86797E8578373A3500000000000000
      000000000000000008050D633DA07046B90000007346B97246B97246B9000000
      7046B96F46B7311F500000000000000000000000000000000100120F00DC0D00
      FF0000001300FF1000FF1000FF0000000D00FF0C00FD06006F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000909096D74687E85797F86
      797F86797D8478363933696F657F86797F86797F86797E8578373A3400000000
      000000000008050D623DA06F46B86F46B97246B97145B7301E4E5F3A9A7246B9
      7046B96E46B96F46B7311E500000000000000000000100120E00DC0B00FE0A00
      FF1100FF1100FC07006C0E00D41100FF0D00FF0800FF0B00FD06006E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0B0A6E74697F86797F86797F86
      797D847830322E000000060706696F647E85797F86797F86797E8578373A3400
      00000A060F633DA06F46B96E46B96F46B97045B72A1A460000000504095E3A99
      6F46B86E46B96E46B96F46B7311E500000000200151000DD0B00FF0800FF0900
      FF0E00FC05006000000000000D0E00D30B00FE0800FF0800FF0B00FD06006E00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000282B267F86797F86797F86797D84
      7830322E000000000000000000060706696F647E85797F86797F867972786D00
      000025163B7046B96E46B96E46B96E45B72B1A46000000000000000000050409
      5E3A996F46B86E46B96E46B9653FA60000000600510D00FF0800FF0800FF0B00
      FC06006000000000000000000000000D0E00D30C00FE0800FF0800FF0B00E500
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000282B267F86797F86797D84783032
      2E000000000000000000000000000000070707696F647F86797F867972786D00
      000025163B7146B96F46B96F45B72A1A46000000000000000000000000000000
      06040A5E3A997046B96F46B9653FA60000000600510E00FF0B00FF0D00FC0500
      6000000000000000000000000000000000000E0E00D30D00FF0B00FF0D00E500
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0E0C282B26282B262224210000
      00000000000000000000000000000000000000080808282B26282B2624262300
      00000C071325163B25163B1F1332000000000000000000000000000000000000
      00000007040C25163B25163B21143500000002001A0600510600510500450000
      0000000000000000000000000000000000000001001006005106005106004900
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000009A9A9A000000000000000000000000000000FF
      FFFF000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      00000000000000000000000000B2B2B20000000000007B7B7B9C9C9CBABABA00
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      00FFFFFFFDFDFD000000000000F4F4F44545450000008B8B8B00000000000000
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F52000000000000000000000000000000000000F4F4
      F46565654D4D4DFEFEFE000000000000DADADA000000000000EFEFEF00000000
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F52000000000000000000000000000000F6F6F64F4F
      4F000000000000717171FEFEFE000000000000D0D0D0000000262626FDFDFD00
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F52000000000000000000000000000000BCBCBC0B0B
      0B0000000000003434349E9E9EE2E2E27D7D7D76767600000000000089898900
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F52000000000000000000000000000000F8F8F8DBDB
      DB5F5F5F313131FEFEFEFFFFFFAAAAAA00000000000000000000000010101000
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      006B6B6B4D4D4D000000000000FFFFFFB7B7B7D2D2D2EEEEEEFDFDFDFCFCFC00
      0000000000EEF3F50000160D3C5A000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5EFEE1600005A1E0D290500000000000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      005F5F5F49494900000000000000000000000000000000000000000000000000
      0000000000EEF4F50000170D3C5B000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F2F2F20000003334340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000F5F0EE1700005B1E0D290500000000000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      006161614A4A4A000000B8B8B8000000777777FFFFFF000000C2C2C22424246D
      6D6D000000F1F5F80000190D3B58000329000000000000000000000000000000
      000000000017124461526F85000000000000000000F4F4F40000003333330D0C
      090000000000000000000000000000000000000000003A3A3A6C6C6C00000000
      0000000000F8F2F1190000581C0D290800000000000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      00737373494949000000A6A6A6000000000000191919000000000000000000A4
      A4A40000007B95A6001D400F3F5C002749B8CAD1000000000000000000000000
      000000000017124461526F850000000000000000009090911515153636361F20
      20C5C5C50000000000000000000000000000000000003A3A3A6C6C6D00000000
      0000000000A6847B4000005C1E0F490E00D1BAB8000000000000000000000000
      000000170000612112855F520000000000000000000000000000000000000000
      007171714B4B4B000000EEEEEE080808000000000000000000000000000000FC
      FCFC9AA9B700113700224300305200193E000C31A9BAC5EFF5F7000010204160
      00000000002210435E5B768A000000000000A9A9A90A0A0A1B1B1B2728281313
      14040404B6B6B7F2F2F200000040404000000000000037373873737400000000
      0000B7A39A3700004304005212003E0000310000C5AFA9F7F0EF100000603420
      0000002200005E1E108A665B0000000000000000000000000000000000000000
      00494949090909000000FFFFFF6A6A6A0000006C6C6CBCBCBC0000004F4F4FFE
      FEFE0022430D3857FFFFFF000000FFFFFF00244900001CFFFFFF000023002D4E
      294E6A00183A0D3C5B0937584B6E83396179191919323232FFFFFF000000FFFF
      FF1E1E1F020000FFFFFF0000002525264A4A4A0F0F1033343430303068686859
      595A430100571F0DFFFFFF000000FFFFFF490D001C0400FFFFFF2300004E0F00
      6A3A293A00005B1F0D581D0983574B7947390000000000000000000000000000
      007F7F7F595959000000000000BCBCBC000000000000454545000000CACACAFC
      FCFC0F3D5C163D5ACBDAE1000000FFFFFF002043000C30FFFFFF00001D0C3857
      0C3C5B093A590A38570B3C59093B5B073958363636383838D5D5D6000000FFFF
      FF191A1A0E0C0BFFFFFF0000003232323333343232323131313232323132322F
      2F305C200F5A2816E1CECB000000FFFFFF430500300100FFFFFF1D0000571D0C
      5B1E0C591A09571C0A591B0B5B1B095816070000000000000000000000000000
      00FEFEFEFEFEFE000000000000EBEBEB212121000000000000151515FCFCFC00
      0000000D33001C3E92A8B40000007896AE00193B000018FFFFFF000021073856
      00163900072C001F42000F3500082E001136090909101010A4A4A40000009393
      930B0B0B000000FFFFFF0000002F2F301111110303031414140D0D0D06060612
      12123300003E0000B49892000000AE85783B0000180000FFFFFF210000561907
      3900002C00004200003500002E00003604000000000000000000000000000000
      00000000000000000000000000FEFEFEA2A2A2000000000000BABABAFEFEFE00
      0000F0F5F7809BABDFE8EC000000DBEEF77795A4FFFFFFEFF5F800001F0D3959
      FFFFFFFFFFFF507088000000000000000000F3F3F3969697E6E6E6000000EAEA
      EA8E8E8EFFFFFFF4F4F4000000323334FFFFFFFFFFFF6D6D6D00000000000000
      0000F7F0F0AB8980ECE1DF000000F7DFDBA47F77FFFFFFF8F0EF1F000059210D
      FFFFFFFFFFFF885F500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FCAFBB
      FA0000FB0016FB0000FB0000F80007FFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FBC3CC
      FA000FFB142EFB94A8FBB0BDFDC8D10000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFC000000000000FBF7FA
      FB6B7FFB0017F8A2B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F8FC918BFA8175FBFFFFFE000000000000
      FBE3E8FA1F3CFA1829FBF3F70000000000000000000000000000000000000000
      00000000000000FAFAFAEFEFEF000000000000F0F0F000000000000000000000
      0000000000000000000000000000000000000000000000FCFCFDFFF1F4FB0013
      FB0002FEF3F50000000000000000000000000000000000000000000000000000
      00000000000000FCFCFCF6F7FA4A5FB14A58B1F8F8F900000000000000000000
      0000000000000000000000F9FCFA8277FB0000FB0C00FB9E8FFBFFFFFE000000
      000000FDD9E0FA0F2FFA536AFCFFFF0000000000000000000000000000000000
      00000000F9F9F9000000FDFDFD000000FEFEFEFDFDFD00000000000000000000
      0000000000000000000000000000000000000000FDFBFB000000FCFFFFFD000B
      FDFFFFFDFEFF0000000000000000000000000000000000000000000000000000
      00000000FCFCFC000000FEFEFD4D5EB0FEFEFEFEFEFE00000000000000000000
      0000000000000000000000D0CCFD5244F92110FD2D1DFB6F61FCBBB6FBFFEBE7
      FC99A4FB93A1FB2741FA1623FBA1B00000000000000000000000000000000000
      00FCFCFC000000000000FEFEFEF8F8F8000000FEFEFE00000000000000000000
      0000000000000000000000000000000000FEFEFC4F2FFF5435FFFEFFFEFDF8FE
      FF0C1AFDFFFF0000000000000000000000000000000000000000000000000000
      00FDFDFD6DC16F72C273FFFEFEFBFBFB5869B3FEFEFE00000000000000000000
      0000000000000000000000F9FCFDE6E4FD8C86FB6865FAFFFFFEFFFFFFFFBEC0
      F60003FA0000FA0000FB0000F93D600000000000000000000000000000000000
      00F8F8F8D6D6D6CACACAF7F7F7000000000000F1F1F100000000000000000000
      0000000000000000000000000000000000FAFDFDE2DEFFDAD5FFFDF9FBFB000D
      FF0B1CFCF5F60000000000000000000000000000000000000000000000000000
      00FCFCFCEBF2EBE5F0E4FBFBFB4A5DB1576AB3F8F8F800000000000000000000
      0000000000000000000000000000000000948EFC7E77FC000000000000FFFFFF
      FCC9CCFBDCE2FBF2F6FCFFFFFBFFFF0000000000000000000000000000000000
      00000000E0E0E0E0E0E0E5E5E5FEFEFEFEFEFEE4E4E400000000000000000000
      0000000000000000000000000000000000000000E9E6FFE9E7FFFFE9EBFEFFFF
      FEFFFFFFE8EA0000000000000000000000000000000000000000000000000000
      00000000EFF6EFF0F6F0F1F3F7FFFFFEFFFFFEF1F2F600000000000000000000
      00000000000000000000000000000000008D81FF7E71FC000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E0E0E0E4E4E41D1D1D00000000000063636300000000000000000000
      0000000000000000000000000000000000000000E9E6FFEBEAFFFF4756FF041A
      FF0319FF7F8A0000000000000000000000000000000000000000000000000000
      00000000EFF6EFF1F9F0808FC65267B15166B1A8B2D600000000000000000000
      00000000000000000000000000000000008C84FF7B75FD000000FFD8BCFF2648
      F992A5FFFFFF000000FCD0D5F95269F9899F000000000000000000000000FAFA
      FA000000DEDEDEE1E1E1E4E4E4030303000000FCFCFC00000000000000000000
      0000000000000000000000000000FCFCFD000000E8E5FEEBE8FFFDEAECFF3043
      FC000DFBFFFF000000000000000000000000000000000000000000000000FCFC
      FC000000EFF4EFEFF8EFF3F3F47182BE4B5EB1FEFEFC00000000000000000000
      00000000000000000000000000000000009B90FF7E71FD000000FFC1B7F70000
      FB0019FB4564FB2845FA0624FA0005FAB3C8000000000000000000000000FAFA
      FA000000F9F9F9F9F9F9FCFCFC000000000000FBFBFB00000000000000000000
      0000000000000000000000000000FCFCFE000000FDFBFBFDFBFBFBFFFFFC0012
      FF2D40FBFEFE000000000000000000000000000000000000000000000000FDFD
      FD000000FCFCFCFCFCFCFEFEFC4B60B16F80BDFDFDFC00000000000000000000
      00000000000000000000000000000000009990FF7E72FF000000FFF8EDF93C55
      FA0006FB264CFB2947FB000DFB2A45FBFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007D72FC4F40FC000000FFFFFFFB8999
      F80016FB889DFBCAD3FB0424FA7487FDFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000A69BFC887EFD000000000000FCCAD3
      F80A2EFB324EFB6A81FB102CFBD6DDFBFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FEFFFEFFFFFD000000000000FAF2F3
      F94E68FB0000FB0522F8475FFBFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FDFFFF
      FDB3C2F8001BFB2B3EFBC6D5FEFFFF0000000000000808080A0A0A0A0A0A0A0A
      0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A08080802020200
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000C7C7C7
      5454544F4F4F3B3B3B232323525252FDFDFD3939398282828787878888888888
      888888888888888888888888888888888888888888888787878888886A6A6A03
      0303000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000048486F3E3E5F3E3E5F3E3E
      5F3E3E5F3E3E5F3E3E5F3D3D5D3C3C5C3C3C5C3C3C5C3C3C5C3C3C5C3C3C5C0D
      0D15000000000000000000000000000000000000000000000000000000D3D3D3
      5252525B5B5BB4B4B4C7C7C7D8D8D80000003D3D3D8A8A8A8E8E8E8F8F8F8F8F
      8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E8E8E8E8E8E71717104
      040452547E4A4A724949704B4D724D4D754C4C754D4E774E4E774E4E774D4D77
      4D4E774A4A7148486E414663202130000000000000D6D6DCE5E5E5E5E5E5E5E5
      E5E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E5E5E5E5E5E5D9D9DB26
      2626000000000000000000000000000000FFFFFFFDFDFD000000000000F5F5F5
      9898984F4F4FBCBCBC0000000000000000000E0E0E2D2D2D2F2F2F3030302E2E
      2E3030302E2E2E3030302E2E2E3030302E2E2E3131312C2C2C2F2F2F1F1F1F00
      0000DBDBDCD4C6D6DBCEDDFEFEFDFCFBFCFCFBFBFEFEFEFDFDFDFEFEFDFEFEFD
      FEFEFDE1D9E5CBB9CECCCCD8484A50000000000000EBEBF0FDFDFCFDFCFCFDFC
      FCFDFDFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCEBEBF122
      2222000000000000000000000000F8F8F89E9E9E898989FFFFFF000000000000
      E9E9E9656565555555F4F4F40000000000004848489090909292929696969191
      919696969090909898988F8F8F9898988E8E8E9898988E8E8E9696966C6C6C05
      05048787AF65649A6B6A9E66689A64649A64649A64649A64649A64649A64649A
      64649A64649A68679C64649A31314C000000000000EBEBF0FDFCFCFDFCFCFDFC
      FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBEBEBEF21
      2122000000000000000000F9F9F98D8D8D2B2B2B3232329B9B9BFDFDFD000000
      000000E4E4E45A5A5A888888FEFEFE000000565656C2C2C2C9C9C9C8C8C8C9C9
      C9C6C6C6CBCBCBC6C6C6CBCBCBC5C5C5CCCCCCC6C6C6C2C1C4A59BB99F9F9F0F
      0F0FD9DAE6A2A1C2AAABC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFD2D2E18182AACACBDD3E4153000000000000EAEAF2FCFCFBFDFCFBFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCEBEBF020
      2022000000000000000000D3D3D36161613B3B3B4545457C7C7CC0C0C0ECECEC
      B8B8B8B4B4B4696969515151BEBEBE000000565656B0B0B0B4B4B4B6B6B6B4B4
      B4B7B7B7B2B2B2B8B8B8B2B2B2B8B8B8B2B2B2B9B9B9AEAEAEACACAC8989890B
      0A088888B165659A68689C7979A86B6B9E6B6B9E6B6B9E6B6B9E6B6B9E6B6B9E
      6C6C9F65659A64649A68689A32324C000000000000EAEAF2FCFCFBFDFCFBFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCEBEBF021
      2122000000000000000000FAFAFAE6E6E69B9B9B828282FFFFFFFFFFFFCECECE
      5555555151515454544F4F4F7777770000001212122B2B2B2C2C2C3636363E3E
      3E4242423E3E3E4242423E3E3E4343433E3E3E3F3F3F2929293030301E1E1E00
      0000D5D6E49D9CBFAAAAC7FBFBFCF0F0F6F0F1F6F0F1F6F0F1F6F0F1F6F0F1F6
      F0F1F6CACADC8282ABC7C7D83E4258000000000000EAEAF2FCFCFBFDFCFBFCFC
      FBFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFCFBEBEBEF23
      2323000000000000000000000000000000A2A2A2909090000000000000FFFFFF
      D7D7D7E4E4E4F3F3F3FFFFFFFEFEFE0000000000000000000000003434348B8B
      8B8888888888888888888C8C8C9292928E8E8E6E6E6E06060600000000000000
      00008E8EB565659A6C6C9F8382AE7776A57776A67776A67776A67776A67776A6
      7877A66C6B9F64649A6F6FA1363652000000000000EAEAF2FCFCFBFDFDFDFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFCFBFDFCFBECEBF123
      2323000000000000000000000000000000969696878787000000000000000000
      000000000000000000000000000000000000000000000000000000565656A2A2
      A25656565050505050507D7D7DB0B0B08686869A9A9A12121200000000000000
      0000CDCEDF9797BBA4A4C4EEEDF4E3E3ECE3E3ECE3E3ECE3E3ECE3E3ECE3E3EC
      E3E3EDC1C1D67E7EA9BEBED53E3F5F000000000000EAEAF2FCFCFBFCFCFBFDFC
      FBFDFCFBFDFCFBFDFCFBFCFCFBFDFCFBFDFCFBFDFCFBFDFDFCFDFCFBECEBF023
      23230000000000000000000000000000009A9A9A909090000000D4D4D4696969
      B0B0B0FFFFFF000000DCDCDC868686ABABAB000000000000000000565656B6B6
      B68585858484848888889C9C9CBBBBBBA1A1A198989810101000000000000000
      00009D9DBF68689C6E6EA09595B98A8AB38A8AB28A8AB28A8AB28989B28A8AB2
      8B8BB37778A764649A7878A53A3A5A000000000000EBEAF2FDFDFCFDFDFDFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFDFDFDFCFDFDFCFDFDFCFDFDFCFDFDFDEDECF124
      2424000000000000000000000000000000AAAAAA898989000000C8C8C8535353
      4F4F4F7F7F7F6C6C6C515151494949C4C4C4000000000000000000565656A5A5
      A55E5E5E888888ACACAC5B5B5B56565655555538383800000000000000000000
      0000BCBBD2B8B0CBBCB6D0BEBFD4B9B8D1B8B8D0B9B8D1B8B8D1B8B8D0B7B6D0
      B3B2CDB3AFCAB1A8C58F8EB5464767000000000000C9C9C9C2C2C2C2C2C2C2C2
      C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C0C0C0BDBDBDBDBDBDBCBCBCBABABA1C
      1B22000000000000000000000000000000A8A8A88C8C8C000000F2F2F2777777
      4C4C4C6B6B6B6E6E6E5555556C6C6CFAFAFA000000000000000000565656B3B3
      B3808080A2A2A29090902A2A2A72727256565601010100000000000000000000
      00006F6FA17E78A77B75A58081AC8282AE8182AD8181AC8181AD8181AC8685B0
      8F8EAF8885AD87809F8080806D6D6D0000000000005C597F5E5E735D5C745D5B
      755B59775D5C755A59745958745755765756768E8E8E82828272727269696927
      27270000000000000000000000000000008888885F5F5F000000FFFFFFADADAD
      535353ACACACD8D8D85151519E9E9EF7F7F7000000000000000000565656A9A9
      A98B8B8BCBCBCB969696464646A3A3A34E4E4E01000000000000000000000000
      00004F4E7858578352517A52517A51507852527B52527A5050774F4E7653537C
      61618F5F5F8E5F5F8E52557E5A5A8B00000000000070689C746D9F736C9F736B
      9F716A9D736B9F726B9E726A9E70689D6F689A706B99706B99706A9C6D679B00
      0000000000000000000000000000000000A8A8A8969696000000000000D8D8D8
      575757737373999999585858E0E0E0F8F8F8000000000000000000545454ACAC
      AC969696CBCBCB92929220202034343400000000000000000000000000000000
      00006564986C699B67659A67659A67659A67659A67659A67659A656398666398
      66659A67659A66659A5F5E8E4D4A710000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFEFEFE000000000000F2F2F2
      8585854C4C4C5151517E7E7EFAFAFA0000000000000000000000002121216464
      646868686A6A6A42424200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FCFCFC
      CACACA515151686868D5D5D5FCFCFC0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1D1C1D1818180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000909090969696969696959595949494
      9393939494949393939494947E7E7E0000000000000000000000000000000000
      000000000D0D0D2121211E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E18181800
      00000000000000000000000000000000000000001D1C1E312D34322F353A353E
      37343A1B162119161C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000AEAEAEE1DDE7D9D5DFD4CFDDCEC8D9
      C9C2D6C6BED5C5BFD3C7BED89494940000000000000000000000000000000000
      00000000575757DDDDDDDEDEDEDEDEDEDDDDDDDEDEDEDDDDDDDEDEDEB2B2B200
      000000000019181A262626363636342A3C3A334038353B38353A37343A37333A
      38353A1B16211C172219171B00000000000052537D48486F675E8F675E8F3333
      4D4B4B734D4D754D4D764D4D764D4D754D4D754B4B7436364B635A8B13141E00
      0000000000000000000000000000000000B4B4B4EBE7F0D9D5E0D3CDDDCEC8D9
      C9C2D7C4BBD3C2B9D1C7BEDA9696960000000000000000000000000000000000
      00000000696969FCFCFCEEEEEEF7F7F7FBFBFBEFEFEFF2F2F2F5F5F5D3D3D300
      00000000004949496D6D6D7575757676766C6C6C6666665858584848483D3D3D
      36303B1B16211D17231D1724000000000000DBDBDCD7C7D96460746158872A2A
      2AFCFAFCFDFDFDFDFDFDFEFEFDFDFDFDFFFFFF6A6A6A635B8BAAAAAA46485000
      0000000000000000000000000000000000BBBBBBF1EFF5CAC7CFC4C0CAC1BCC9
      BDB8C6BAB4C4B8B2C3C8BDDA9696960000000000000000000000000000000000
      00000000686868BDBDBD3B3B3B727272BEBEBE404040353535606060BBBBBB00
      00000000003E3C4035283E3B373E6A6A6A7373737070706C6C6C6C6C6C6D6D6D
      6C6C6C1A15211D17231D17240000000000008787AF65649A7070A15A5480655C
      8E18182565659A64649A64649965659A4C476C5D558169698964649A31314B00
      00007474749898989797979797979A9A9ABBBBBBFAFAFAE9E8ECE2DFE8DDD9E4
      D7D2E1D1CBDDCEC8D9D0C7E098989800000000000000000007070B0303040000
      00000000676767E8E8E8BCBCBCD5D5D5E4E4E4C0C0C0C6C6C6CBCBCBD0D0D000
      00000000003B33419696968E8E8E3A343F3C3B3D6666667474746E6E6E6D6D6D
      6D6D6D1A15201D17231D1724000000000000D9DAE6A2A2C0ABABC6FEFFFE5F5A
      7F635B886C6C6CFFFFFFFFFFFE6B6B6B5A5380CCCCCC8181A9CBCCDA3F425200
      00007C7C7CDCDCDCDBD7E2D6D0DECDCAD3C3C3C3FAFAFAD1D0D3CCCAD0C9C6CE
      C6C2CCC2BECAC1BCC9D7CFE49B9B9B0000000000000000004B4B732929400101
      02000000676767C0C0C0757575A0A0A0444444727272C9C9C9797979BDBDBD00
      00000000007A7A7A9292929696963D36424242423C393E38333D575757747474
      7C7C7C1915201D17231D17240000000000008888B165659A68689B7979A67070
      9C5A53805D558130313D524D755C548075758864649864649A67679B32324C00
      00007E7E7EE6E6E6DDD9E4D5D0DECDC9D4C8C8C8FEFEFEF0F0F0EFEFF0EBEAED
      E6E3EAE1DDE7DCD8E3E0DAEA9E9E9E00000000000000000065659A5858882B2B
      42000000626262E5E5E5C4C4C4DCDCDCB8B8B8C6C6C6EAEAEAC7C7C7CACACA00
      00000000005E5E5E9C9C9C505050352A40636363A3A3A3F3F3F3FFFFFFFEFEFE
      8C8C8C3E3E3E1D17231D1724000000000000D5D6E49D9CBFAAAAC7FBFBFBF0F0
      F4F1F1F4717079645C8A5B5480E5E5E5F1F1F1CACADC8282ABC7C7D83D415700
      0000848484EFEFEFD5D4D8C4C1CABFBDC2CACACAFAFAFAD3D2D5CFCED2CFCDD2
      CECCD0CBCACECAC9CCE5E2E9A0A0A000000034344F65659A64649964649A5858
      88292940606060BFBFBF4F4F4F808080C6C6C650505049494946464636363600
      0000000000626262A3A3A3FEFFFFFFFFFFFFFFFFFCFCFCFEFEFEFDFDFDF7F7F7
      8C8C8C6868681A16211D17240000000000008E8EB565659A6C6C9F8383AC7776
      A47978A45953766159886159832C2C2C7877A76B6B9D64649A6F6FA135355200
      0000898989F4F4F4EDECEFE4E2E8DBDADFCECECEFFFFFEFEFFFEFFFFFFFFFFFF
      FCFCFCEBEBEBCBCBCBB8B8B88C8C8C00000034344F65659A64649A64649A6565
      9A5858885454546E6E6EA5A5A5C8C8C8B2B2B22C2C2CA3A3A38383830D0D0D00
      00000000006C6C6CC2C2C2FEFEFEFEFEFEFEFEFEFDFEFDFDFDFDFEFEFEFEFDFE
      8C8C8C6565653D3D3D1D1724000000000000CDCEDF9797BBA5A5C2EEEEF2E9E9
      F065636D5E5886CCCCCC929292665E8F2A2A2ABFBED57F7FA6BFBFD33F405D00
      00008E8E8EF6F6F6DDDDDECDCBD0C8C7CACDCDCDFEFEFEFDFDFDFEFFFEFFFFFF
      FDFDFDD8D8D89B9B9B98989898989800000034344F65659A64649A64649A6464
      9A65659A575786535353868686E2E2E2B3B3B3494949D5D5D55B5B5B00000000
      00000000005E5E5EDADADAFEFEFEFFFEFFFEFDFEE8EEE8C0D6C090B690719871
      9292928C8C8C7373731B16220000000000009D9DBF68689B6E6E9E9595B9544E
      72645B898282828A8AAD8A8AB17C7C7C685F8E1E1C2C5858877778A53A3A5800
      0000949494F7F7F7F4F4F4F0F0F0E8E8E8D8D8D8FEFEFEFEFEFEFFFFFEFEFEFE
      FFFFFED8D8D8A6A6A6A096B099989A00000033334F65659A65659A6464996464
      9964649A4D4D77575757B8B8B8F3F3F3B9B9B91F1F1F3F3F3F00000000000000
      00000000006868689E9E9E6FA06F6696666498649393939C9C9CCACACAD7D7D7
      FBFBFBA1A1A1696969565656000000000000BCBBD1B8B0CABFBACC615E6F625A
      89969696B9B8CCB8B8D1B8B8D0B7B6CDB5B5B75B54813F395876767644446500
      0000989898F8F8F8DFDEE0CFCDD2CDCCCFCBCBCBD9D9D9D8D8D8D6D6D6D5D5D5
      D8D8D8C0C0C0A8A8A8B7B7B700000000000033334F65659A64649A6464996464
      994C4C751515212424246C6C6C6A6A6A47474700000000000000000000000000
      0000000000000000BABABAC7C7C7FFFFFFFFFFFFFFFFFFFEFEFEE3D8E3CCB4CC
      B087B0ACACAC7B7B7B4444440000000000006F6FA17E79A7554F786259885452
      638282AD8181AC8181AD8181AC8685B08E8EAE8E8BB357527C7E7E7E6D6D6D00
      00009A9A9AF8F8F8FEFEFEFEFFFEFDFDFDF4F4F4EBEBEBC8C8C8B4B4B49A9A9A
      7E7E7EBBBBBB00000000000000000000000033334F65659A6464996464994C4C
      7518182600000000000000000000000000000000000000000000000000000000
      0000000000000000000000B0B0B09E6B9E9364939A659A8C8C8C9B919BC2C2C2
      CDCDCDE6E6E6B4B4B45858580000000000004F4E775B57826058864B45695251
      7C52527B52517A504F774F4E7553537C61618F5F5F8E5E5E8F52547D5B5B8B00
      00009E9E9EF8F8F8FDFDFDFEFEFEFFFFFFFDFDFDF3F3F3A2A2A29D9D9D969696
      9B9B9B00000000000000000000000000000000000000000065659A4B4B741818
      2500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3B3B3FFFFFFFEFEFDFFFFFFFCFCFCDBDBE7
      BDBDD49B9BBEB6B6B65A5A5A00000000000065649867658E5D568467659A6765
      9A67659A67659A67659A65639765639765649A67659A66659A5F5D8F4D4A7200
      0000A5A5A5FAFAFAFEFEFEFFFFFEFFFFFEFEFEFEF4F4F4A8A8A8A79EB6A7A7A7
      0000000000000000000000000000000000000000000000002A2A4014141E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEBEBE6464987D7D8268686A6E6E6E707070
      5A5A5A6565650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0A0A0D4D4D4D6D6D6D6D6D6D6D6D6D6D6D6CFCFCFA2A2A2B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080808080808080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000A5A5A5686868787878D2D2D200000000000000000000000000
      000000000000000000000000000000000000000000000000000000000064649A
      4343660303040000000000000000000000000000000000000000000000000000
      008080808080807F7F7F7F7F7F00000000000000000000000000000000000000
      00000000000000006464999F9FAAAEAEAEAEAEAE000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009B9B9B51526945456A46466C767676CECECE00000000000000000000
      000000000000000000000000000000000000000000000000000000000064649A
      6363984242640202030000000000000000000000000000000000000000008080
      808080807F7F7F9A64647F7F7F808080808080848484A0A0A000000000000000
      000000000000000065659A65659A65659A7676817777837C7C7C7E7E7E7E7E7E
      0000000000000000000000000000000000000000000000000000000000000000
      009393934E4E754D4D774E4E784D4D774B4B727B7B7BD8D8D800000000000000
      00000404040C0C0C0404040404040000002E2E4765659A65659A64649A64649A
      64649A6363984040630202030000000000000000000000000000008080808080
      807F7F7F9A64649A65658080808080808080808585859E9E9EBDBDBD00000000
      000000000065659A65659A65659A65659A64649964649965659A6464997E7E7E
      7E7E7E0000000000000000000000000000000000000000000000000000008C8C
      8C53537E55558357578555558352527E4F4F794C4C758C8C8C00000000000000
      0000787878F0F0F0E1E1E1E1E1E170707029294065659A65659A64649A64649A
      64649A64649A6464984242640202040000000000000000008080808080807F7F
      7F9A64649A65659A65658A7474837B7B837B7B8080808686868B8B8B00000000
      000000000065659A64649A65649A64649A64649A65649A64649A65649A646498
      605B837E7E7E0000000000000000000000000000000000000000008F8F8F5353
      805858875C5C8D5D5D8E5A5A8957578554548051517B505077A2A2A200000000
      0000909090FFFFFFFBFBFBFFFFFF88888826263A65659A65659A65659A64649A
      64649A64649A6464996464994444670000000000008080808080807F7F7F9A64
      649A65659A65659A65659A65659A65659A64647F7F7F7F7F7F808080A1A1A100
      0000000000659A9A659A9A97BBBB659A937CA9A6A3C0BA689C9C9ABDBB659A95
      659A9A8383837E7E7E000000818181000000000000000000A2A2A273737A6060
      885D5D8E5E5E905E5E8F5D5D8F5B5B8C58588855558252527D666677BCBCBC00
      00008585859A9A9A08080887878780808025253865659A65659A64649A64649A
      64649A64649A64649955558112121C0000000000000000007F7F7F9A64649A65
      659A65659A65659A65659A65659A65659A64647F7F7F7E7E7E808080A2A2A200
      0000000000000000649A9A8494AB506F7B535E7E929292525B7BB7BBCB608B94
      6499997E7E7E000000000000000000000000000000ABABAB9E9E9E9090917A7A
      8C63638E5E5E905E5E905E5E8F5E5E8F5C5C8D5A5A8957578454548093939300
      0000898989F2F2F2C3C3C3F5F5F58686861F1F3064649A64649A64649A65659A
      64649A65659A53537E1010180000000000000000009A65659A65659A65659A65
      659A65659A65659A65659A65659A65659A64647F7F7F7F7F7F8080809E9E9E00
      0000000000659A9A649A99B5C6CC4F6C79394B586B6E9E7F86A4B9B9B9576785
      659A9A7E7E7E7F7F7F000000000000000000000000C4C4C4B5B5B5A7A7B29494
      A27C7C8F64648E5E5E915E5E905E5E905D5D8F5D5D8F5B5B8B585887656582C8
      C8C8868686A5A5A5202020989898EAEAEACACACADFDFE9E0E0E99696962B2B41
      64649A52527E0F0F170000000000000000000000009A65659A65659A65659A65
      659A65659A65659A65659A65659A65659A64647F7F7F7E7E7E8080809D9D9D00
      0000000000000000649A9AAEC1C746626A3636529B9AA5868686AEAEAE5E908E
      6499996E8E8E7E7E7E000000000000000000000000D2D2D2C2C2C8B4B4BDA9A9
      B59B9BA988889977778A66668E62628F6B6B8C5E5E8F5F5F8F63638C676786A6
      A6AA898989E9E9E9B3B3B3EDEDEDFEFEFEFFFFFFFFFFFFFFFFFFB6B6B61A1A27
      5B5B8C11111A0000000000000000000000000000000000009A65659A65659A65
      659A65659A65659A65659A65659A65659A64647F7F7F7F7F7F808080A0A0A000
      0000000000000000649A9A64999A548080627D97605C8E8EA9AA4E7777659A9A
      649A9A649A9A7E7E7E7E7E7E000000000000000000DEDEDECFCFD4C0C0C8B6B6
      BEABABB4A0A0AC9393A28A8A9988889891919F8686978080917E7E8F7D7D8D7D
      7D8E878787AFAFAF323232A3A3A3B1B1B12F2F2F3434343232321D1D1D040407
      1919260000000000000000000000000000000000000000000000009A65659A65
      659A65659A65659A65659A65659A65659A64647F7F7F7E7E7E808080A5A5A500
      000000000000000064999A64999A649999374F531D2C234F7177649898659A9A
      64999A64999A659A9A7E7E7E8484847E7E7E000000E6E6E6E3E3E6CBCBD2C1C1
      C8B7B7BFACACB7A1A1AE9696A59898A6A4A4B29898A78A8A9B84849683839377
      778E898989E2E2E29B9B9BDDDDDD7D7D7D212121B2B2B25E5E5E010101000000
      0000000000000000000000000000000000000000000000000000000000009A65
      659A65659A65659A65659A65659A65659A64647F7F7F7E7E7E808080AAAAAA00
      00008686868585857D7D7D647D99647E9A65809A65849A65819A657E9A657E9A
      657E9A647E9A657E9A657E9965809A787878000000E9E9E9EAEAEAE3E3E5CECE
      D4C2C2C8B8B8C0B0B0B9A9A9B5BABAC2B6B6BEA8A8B29999A78C8C9D87879988
      8899878787B9B9B9929292F9F9F97C7C7C6A6A6AF1F1F13F3F3F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      009A65659A65659A6565000000000000000000000000000000000000B5B5B500
      000065659A65659A65659A65659A65659A65659A65659A65659A65659A65659A
      65659A65659A65659A64659A65659A65659A000000000000E8E8E8E8E8E8E8E8
      E9DDDDDFD1D1D6C6C6CCCDCDD1E1E1E3C8C8D0B6B6BFA7A7B49B9BA88B8B9BAF
      AFB5949494E3E3E3C6C6C6FFFFFF8D8D8D1818183C3C3C000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A65659A656500000000000000000000000000000000000000000000
      000065659A65659A65659A65659A65659A65659A65659A65659A65659A65659A
      000000000000000000000000000000000000000000000000000000000000D9D9
      DBD1D1D5CBCCCFD8D8D9000000E2E2E2E0E0E1D2D2D8C3C3CBACACB7B2B3B800
      00003D3D3D8787877D7D7D797979303030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000009A656500000000000000000000000000000000000000000000
      000065659A65659A65659A65659A65659A65659A65659A000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000DDDDDDC7C7CBBABAC2C9C9C900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242424646464E4E4E3D3D3D1717
      170000000000000909091818182E2E2E3434342424240A0A0A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0098989866666664646465656564646465656565656565656562626200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003838383B3B3B8484849292923333
      332626263A3A3A5B5B5B6868687171718282828888886E6E6E3E3E3E10101000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000003030304C4C4C0000000000007373737777776A6A6A6C6C
      6CC6C6C6F9FAF9F8F8F8F6F6F6F6F6F6F3F3F3F4F4F4F2F2F2BEBEBE00000000
      00000000000000000000007C75A46C67999B92C4000000000000000000000000
      776EA96F689E0000000000000000000000003E3E3E4141419C9C9CC0C0C09393
      939C9C9C8A98A67F7F7F6C6C6C6868687C7C7C969A9DA0AFBAA1AAB27E7E7E00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003A3A3A4E4E715B5B5B0000000000006868689B9B9F9898989292
      92C6C6C6E6E6E6989898989898989898989898969696CBCBCBB4B4B400000000
      00000000000000008F89AE37325E46416A353562857EAA00000000000047447E
      423E643935626F68910000000000000000005A5A5A636363ADADADCFCFCFB1B1
      B1B3C2CEB2C0CBB0BBC4B1BCC4B2B6B9BABABA7676766D6D6D888888B2B2B200
      0000000000000000000000000000000000000000000000000000000000000000
      0000003E3E3E4E4E715959A64A4A4A0000000000006B6B6BA2A2A39898989393
      93C5C5C5F0F0F0BBBBBBC0C0C0C0C0C0C1C1C1C0C0C0DCDCDCB4B4B400000000
      0000000000000000827CA66154920000008479B65A5286000000827D9E5C518C
      0000008779B7564B86000000000000000000737373808080B9B9B9D4D4D4C4C4
      C4D8D8D8E1E2E2DDDDDDC7C7C7969696A1A1A1ABABABA3A7A8575B5D3F3F3F00
      00000000001C1C1E1A1A1D16171D15161C13141C0F111C0E101B0E111B0E111B
      4242424E4E715959A64E4E4E000000000000000000707070A7A7AA9B9B9B9898
      98C6C6C6F6F6F6DADADADFDFDFDEDEDEDCDCDCD9D9D9E3E3E3B4B4B400000000
      0000000000000000948FAA5B518C0000008980B84A42760000005F558F7B739C
      00000067579E5E51910000000000000000006060606A6A6A6565656464649393
      93ACACACAAAAAAB2B2B2B2B2B2B8CBCEB8CCCFB8CCCFAEC1C793939328353B00
      0000828282FAFAFAF6F6F6F2F2F2F0F0F0BBBBBB9898989B9B9B9C9C9CD6D6D6
      C0C0C0848484515151000000000000000000000000707070ACACB29F9F9F9A9A
      9AC9C9C9F7F7F7C0C0C0C6C6C6C5C5C5C3C3C3C2C2C2E0E0E0B6B6B600000000
      00000000000000000000004C457F524785534785473E72C2C1C74F47834B3F74
      584E91433D72AEA8C9000000000000000000848484A3A3A3969696CFD2D3BDD0
      D1BED0D1BECFD0BDD1D3BDD2D4BDD2D4BDD2D4BDD2D4B3C6CBC4C9C952575900
      0000848484FFFFFFFEFEFEFBFBFBA4A4A4D9D4E5E2DBEAECE7F2F3EFF7C6C6C6
      A7A7A7D5D5D5000000000000000000000000000000727272B3B3BAA5A5A59E9E
      9ECACACAF4F4F4989898989898989898979797969696D1D1D1B8B8B800000000
      00000000000000000000000000005750893F3D713835626C678E47417A3C3969
      5453778A80B3000000000000000000000000878787ABB8BE888888E1E1E1C3D7
      D8C2D7D7C2D7D7C2D7D7C2D7D7C2D7D7C2D7D7C2D7D7B5C9CED8E2E394949400
      0000868686FFFFFFFFFFFFCACACACFCBDDD1CDDDE4DEEAEEE9F3F7F5F9FCFCFD
      A3A3A3DADADA000000000000000000000000000000757575B9B9C0ACACACA4A4
      A4CBCBCBFEFEFEFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFF5F5F5B3B3B300000000
      0000000000000000000000000000000000000000706F736D6D6D686868B4B2BC
      000000000000000000000000000000000000888888AFC0C7909090B0B0B0E0E0
      E0DBE1E1D5E0E1D2E0E0CEDFDFCDDEDECDDEDECDDEDEBBCED3E4EBEBD0D0D000
      0000888888FFFFFFFFFFFFBCBCBCCAC7D8DAD5E5E5E0ECEBE6F1F2EEF6F4F1F8
      ECECECDCDCDC000000000000000000000000000000767676BCBBC4B2B2B2ACAC
      ACCACACAFEFFFEFCFCFCF9F9F9F5F5F5F6F6F6E4E4E4CACACA99999900000000
      0000000000000000000000000000000000000000868686CDCDCD7878789C9C9C
      000000000000000000000000000000000000898989B6C8CEAEBDC29696968A8A
      8A8A8A8A909090AEAEAEEAEAEAE0E9E9DEEAEADEEAEAC5D4D9EDF3F3ECEFF000
      00008A8A8AFFFFFFFFFFFFC3C3C3CECADAE1DCE9DDD9E7EAE5EFEAE4F1ECE6F2
      EAE5EFE0E0E0000000000000000000000000000000787878BDBCC6B4B4B4B1B1
      B1C8C8C8FEFEFEFBFBFBFBFBFBFBFBFBF1F1F1878787989898A4A4A400000000
      00000000000000000000000000000000009292929E9E9E7171718F8F8F8F8F8F
      0000000000000000000000000000000000008A8A8ABDCFD2B7CBCFB7CBCFB7C9
      CCB6C8CBB4C0C39E9E9E9D9D9DCCCCCCDADADAEAEBEBDDE4E6F8F8F8FAFAFA00
      00008C8C8CFFFFFFFFFFFFD0D0D0CAC7D8E7E2ECF3EFF7DAD6E4DED8E7E1DAE9
      D2D2D2E3E3E30000000000000000000000000000007B7B7BC7C7D2B5B5B5B2B2
      B2C6C6C6FAFAFAF8F8F8F9F9F9F8F8F8F4F4F4979797AFAFAF00000000000000
      00000000000000000000000000000000008C8C8C9D9D9DAAAAAA8686869A9A9A
      9A9A9A0000000000000000000000000000008B8B8BC4D6D7C0D6D6C0D6D6C0D6
      D6C0D6D6C0D6D6C0D3D3B2B2B29898988C8C8C848484828282929292AEAEAE00
      00008E8E8EFFFFFFFFFFFFFCFCFCBBBACAD1CDDEDAD5E5CFCBDDCCC8DAD4CFE1
      DEDEDEE9E9E90000000000000000000000000000007C7C7CC9C9D6C0C0C0B8B8
      B8B6B6B6B1B1B1AAAAAAA9A9A9A2A2A29F9F9F9D9D9D5D5D5D00000000000000
      0000000000000000000000000000AAAAAAB2B2B29696960000000000009D9D9D
      989898000000000000000000000000000000909090CDDBDBC1D7D7C1D7D7C1D7
      D7D1DFDFD5D8D8CFD7D7CAD7D8C6D6D6C6D8D8C4D7D786868600000000000000
      00008F8F90FFFFFFFFFFFFFFFFFFFAFAFACECECEBCBACEC3C1D1CECED3E4E4E4
      F8F8F8ECECEC0000000000000000000000000000007D7D7DCBCBD6C3C3C3BCBC
      BCB1B1B1B2B2B2AEAEAEABABABA4A4A4A7A7AA9896AA5C5C5C00000000000000
      0000000000000000000000000000969696A2A2A20000000000000000009B9B9B
      9A9A9ABEBEBE000000000000000000000000727272D1D1D1D7E1E1D1DEDED0DD
      DDBCBCBC6363637676768282828C8C8C9A9A9AABABAB84848400000000000000
      00008B8B8FABAAD1A2A3CD999CC89095C2858DBE7B85B8717DB26774AB5B6CA7
      5B6BA6556799000000000000000000000000000000777777D1D1D19090909898
      989D9D9D9999999C9C9C989898959595949494A8A8A85F5F5F00000000000000
      0000000000000000000000000000838383000000000000000000000000000000
      8282829292920000000000000000000000003D525C6C6C6C8080809292929C9C
      9C67676700000000000000000000000000000044515741505800000000000000
      00005F5F5FAFADCCA5A4C69B9CC29396BB898DB47F86AE767EA76B76A2616D9C
      58679E4B5B89000000000000000000000000000000ACACAC989898A9A9A9A7A7
      A7FFFFFFFFFFFFFFFFFFFCFCFC9E9E9E929292858585A3A3A300000000000000
      00000000000000000000000000006A6A6A000000000000000000000000000000
      ABABAB7878780000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009B9B9B8080809F9F
      9F9292929191919191918E8E8E959595868686A2A2A200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000ABABAB0000000000000000000000001E77A21E77A21E77A21E77A21E77
      A21E77A21F78A21F78A21F78A21F78A21F78A21D77A21C76A21D76A21C76A21B
      76A25E5E5E565656565656585858595959585858585858585858565656565656
      5656565656565656565555555455556060600000000000000202030606080808
      0C08080C08080C08080C08080C08080C08080B08080B02020400000000000000
      0000070707040404000000000000545454000000000000000000000000000000
      0000000000000000000000000000000000003388AA79C2D279C2D279C2D279C2
      D279C2D279C2D279C2D279C2D279C2D279C2D279C2D279C2D279C2D274BECF1B
      76A27070701C1C1C1C1C1C3434348686869C9C9C5252527878782424242E2E2E
      1C1C1C1C1C1C1C1C1C1E1E1E3737375154550000000000000D0D131E1E2F2929
      3F29293E29293F29293F29293F29293F29293E27273B0F0F1600000000000000
      00004040404444443E3E3E000000BEBEBEACACAC2C2C2C171717111111000000
      0000000000000000000000000000000000003087A8000000000000000000DEEB
      E2584D4C9F9396120A2216210D0000000000000000000000000000007DC5D41A
      77A26A6A6A000101000101080808D7D7D7535353888888292929323232020202
      0202020001010001010101011E1E1E5255560000000000000F0F182525393232
      4C32324C32324D32324D32324D32324D32324C2F2F4912121B00000000000000
      00003232327373738C8C8C4E4E4E6666666363636868687B7B7B828282565656
      2222220000000000000000000000000000003087A800000000000028221FD9D9
      DAFFFFFFFFFFFFA3C6FD9CBBFF00000012115F0000000000000000007DC5D41A
      77A2686868000000000000272727C6C6C6FFFFFFF8F9FBC6C6C6C3C3C3000000
      3A3A3A0000000000000001011D1D1D5255560000000000000F0F182525393232
      4C32324C32324D32324D32324D32324D32324C2F2F4912121B00000000000000
      00003A3A3A8C8C8CC0C0C0A2A2A29B9B9B8484846262626F6F6F8C8C8CACACAC
      ADADAD6262620000000000000000000000003087A80000000000000000020000
      07000000425068778DB8506D924968AC0000000000000000000000007DC5D41A
      77A269696900000000000002020414141E0101016363639B9B9B7070707B7B7B
      0000000000000000000001011D1D1D5255560000000000001010182626393232
      4D32324D33334D33334D33334D33334D32324D30304912121C00000000000000
      00005F5F5FA2A2A2D2D2D2CFCFC5CACAC5CDCDC9BCBCBCB6B6B6ADADADDCDCDC
      A6A6A6BABABA6666660000000000000000003087A8000000000000000000030D
      3880A6CFABC4F8B5D2FF98B7DA6586A80000110000000000000000007DC5D41A
      77A26969690000000000000000002727279E9E9EC1C1C1CECECEB2B2B2838383
      0B0B120101010000000001001D1D1D5255560000000000001010182626393232
      4D32324D33334D33334D33334D33334D32324D30304912121C00000000000000
      0000818181A3A3A3C3C3C3C8C8C8C8C8C8CACACAC2C2C2BCBCBCB9B9BADFDFDF
      ECECECB6B6B64E4E4E0000000000000000003087A80106080000002546874E65
      8D9BB0E68BA2CF544FB9343B9397B1E04D5C764868870000290000007DC5D41A
      77A2696969000000020204525252666666B3B3B3AAAAAA8A8A8A686868B5B5B5
      62626266666614151D0101001C1C1C5255560000000000001010182626393232
      4D32324D33334D33334D33334D32324D35375031324B12121C00000000000000
      0000000000C0C0C0F0F0F0F3F3F3E5E5E5DFDFDFD8D6DDC4C3CAAFAEBA9C9CAB
      B4B4B4DEDEDECCCCCC7676760000000000003087A801060F537FA50000127D9D
      C8A1B5F4B5CCFF92ADDE819CC3B0C9FF6E83AC3F64890719261F35717DC5D41A
      77A269696904040775757507070A9C9C9CC3C3C3CDD1DBB6B6B69C9C9CCBCFD8
      8A8A8A6464641616164646461C1C1C5254550000000000001010182626393232
      4D32324D33334D33334D33334D33354F4458693B475A12121C00000000000000
      0000000000F2F2F2F9F9F9F4F2F5EDECEDCECECEDDDDDDC9C8CEB5B4BFA1A1AF
      8F8F9E8E8E97C0C0C0D2D2D29C9C9C0000003087A8254D6C1C334E051F3C718C
      BD93A8EBA5BFFF6685BA6580B981A0E37F9ACC07244C0000002D4B687DC5D41A
      77A26666663F3F3F343434242424939393B6B6B6CACBCE9494948E8E8EAEAEAE
      A0A0A02E2E2E0405064747475656565656560000000000001010182626393232
      4D32324C32324D32324D33334D33334D3B455B353B5212121C00000000000000
      0000BBBBBBFEFEFEFAFAFAF4F3F5EDECEDE2E2E3C7C7C7CECECEBCBBC2A8A7B4
      9493A58686987F80909E9E9EBDBDBD0000003087A84C5E6A15263F3D5D814F72
      AAA0B2F2A8B2EC7893C85C79A96B6A9E7286BB1C3E6400050E56636F7DC5D41A
      77A2626262525252313131585858787878BBBBBBCCCCCC9E9E9E8282828C8C8C
      939393404040090A0C5F5F5F9E9E9E5757570000000000001010182626393232
      4C3D3D464141434141434141434040443737492F2F4912121C00000000000000
      0000E0E0E0FDFDFDFAFAFAF4F3F5EEEDEFE4E2E6D9D8DCC3C3C3C5C5C5A9A8B5
      9A99A88A8A9D83849385858F7A7A7A0000003087A8858A8C0B1F340E2A490E2A
      5B4C56744C4F6A7896C36D8DB84E6081617AA9000013000000BBB8B37DC5D41A
      77A26161618282822B2B2B2B2B2B3D3D3D6161616868689E9E9E929292787878
      8686860A0A0F000001AEAEAE9090905656560000000000001010182626394040
      435B5B5B6767676767676767676565654D4D4D2F2F4912121C00000000000000
      0000B2B2B2FEFEFEFAFAFAF4F3F4EEEDEFE4E3E6D9D7DDCCCBCFBCBCBCAFAEB8
      9B9BAA8C8B9F8888998686867071750000003087A8C5C3BE00092711395C2345
      701F477C748FBEBCD2FFB5CBFC96ACE06684B8000920000014DDD7D27DC5D41A
      77A2636363B7B7B71D1D1D3333334B4B4B4B4B4B929292D6D7DAD0D0D0B6B6B6
      8B8B8B1014190B0D12C6C6C6B0B0B05858580000000000001010182626394444
      446C6C6C9898649898649898648D8D675555552F2F4912121C00000000000000
      0000C0C0C0FDFDFDF9F9F9F3F2F3EFEDF0E4E3E6D8D6DCCDCCD2BCBCBCBABABA
      ACABB18C8B9C8F8F9B7878787272750000003087A8DBD9D50000173454744557
      724770A09DBAEFBBDBFFA2BFFA98B2EA2C486959677D000F1DC5C1BF7DC5D41A
      77A2616161C9C9C90F0F115555555A5A5A6B6B6BB9B9B9D1D6DEC4C4C4BABABA
      4C4C4C666666191919B3B3B3BABABA5858580000000000001010182626394444
      446A6A6A9292669292669292668787695454542F2F4912121C00000000000000
      0000000000C0C0C0EEEEEEF3F3F3CECECED2D2D2DCDCDDCCCBD0C2C1C8B5B4B9
      AAAAAAB0B0B09999996868737272750000003087A8EAEFE5C4C9CB192A440B1F
      330C224528426C4934409BC9FF6187BE092342142336BDBEBCDDDCDB7DC5D41A
      77A2616161DADADABBBBBB3A3A3A2020202A2A2A5050503A3A3AC0CAD6888888
      2C2C2C282828BDBDBDCCCCCCC5C5C55858580000000000000F0F182525393B3B
      465353535A5A5A5A5A5A5A5A5A5959594949492F2F4812121B00000000000000
      0000000000000000000000A6A6A6000000000000A2A2A2CDCDCDC7C5CDB5B3BD
      AEACB8A7A7A799999998989876767637373A3087A8342A4FFFFFFF000A240A19
      2C3E566A000F3D745319372923000000000810000113FFFFFFFDFDFE79C2D21A
      77A2646464373737FFFFFE0E10141E1E1E5050502828284444442F2F2F010102
      0A0B0C0F0F0FFDFCFBEBEBEB0D0D0D5154550000000000000F0F172424383131
      4A32324933334933334932324932324930304A2E2E4711111B00000000000000
      0000000000000000000000000000000000000000000000000000A6A6A6C3C3C3
      B0AEB9B0B0B00000000000009E9E9E484848358AAB358AAB358AAB358AAB358A
      AB358AAB358AAB358AAB358AAB358AAB358AAB358AAB358AAB358AAB358AAB1A
      77A26969696767676060606A6A6A6A6A6A6666666767676868686969696A6A6A
      6A6A6A6A6A6A6060606161617272725A5A5A00000000000008080B13131C1919
      2619192619192719192719192719192719192718182409090D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      A8A8A8B6B6B60000000000000000000000000000000000000000000000000000
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
      0000184356141D1E141D1E1A2240767A6D848B8B46464868656C1B2524252B28
      141D1E141D1E141D1E151E1F2738380000005033335933330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000404040524B44333333333333000000000000000000000000464646464646
      0000000000000000000000000000000000004242424646460000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000013405400010100010102020DD1DDD257524F8F8289231E342A392C020303
      010104000101000101000202151F1F0000004433334A33338787873333330000
      000000001010281C4193297CE2308FF515215E06060600000000000000000000
      0000373737373737C8C8C8383839393048393048483AAB483AAB4536A34C45C6
      4C4BE8402B850000000000000000000000003C3C3C3F3F3F8787873333330000
      000000001C1C1C6A6245A99062C29E6343423006060600000000000000000000
      0000133F530000000000002B2324C8C4C5FFFFFFF4F8FF9EBCEE95B0F2000000
      141360000000000000000101151E1E000000333333333333DEDEDE365886387D
      D93C9EFF2775DB1743A9153EA4256ED445A3FF45A3FF24397B00000000000000
      00004A4A4A505050E3E3E36E70758688ED5050E84C43BC483AAB4B42B97F84D2
      8AA1F08688ED8688ED433F4E000000000000333333333333DEDEDE5E5E5EA191
      70D1A86AA08B627C7144796E40998760D3AB71D3AB7156544900000000000000
      0000133F540000000000000000060000320000024E5E787C90BB506C914E6BA8
      000000000000000000000101151E1E000000555555606060EBEBEB63829975BF
      FF7FC5FF76C0FF70BFFF6ABDF2BCDFF92956835F9CC696E7FF77A7E200000000
      00005B5B5B666666F2F2F2797A7DA0A8F3A6B2F3A9BBF4BEDBF7B7CEF26F7494
      3858B71F327D6F7494A1AEF3000000000000555555606060EBEBEB7E7E7EDFBF
      95E1C39DDFBF96DDBB92CCAD90E8DBCD5B5751939392E6C1AFBBB19E00000000
      0000133F540000000000000000000B1743799CC29DB2E5AAC6F390B0D46180A5
      00001D000002000000000100151E1E0000006D6D6D808080FDFDFD8C9999D2F0
      FFDCF2FFE5FAFFB5CFE24E81A66EBACC82E7FF0A99C912121229316B00000000
      0000888888929292C8C8C83838399A9A9AC8C6CA9A9A9A80889994B4F194B4F1
      94B4F16D85D00000000000000000000000006D6D6D808080FDFDFD929292F4E7
      DDF7EDE4F9EFEBCCCCCC7A7A7A9E9D9CE2B39F975C3C1212124A4A4A00000000
      0000134054000000000006244580495E828EA4D8879FCD5A57BD3A439791ACDA
      4D5B77476684010630010100141D1D00000026495635505D33333333333385E5
      F28389A98BF1FF8BF1FF8BF1FF8BF1FF8BF1FF9CF9FC00446500000000000000
      0000173FB55B7ACAE1E6F79CC0F29CC0F29CC0F29CC0F29CC0F29CC0F29CC0F2
      9CC0F2B9D7F62032890000000000000000003E3E3E494949333333333333D2AF
      A5969696E4B4A6E4B4A6E4B4A6E4B4A6E4B4A6E4BAB44D2F1800000000000000
      000013405400000B4F789B0000117695C29BADECABC3FD90A9DD7A93BFA7C0FC
      697FAA4064890719241F366E141D1A0000000099CC59C6F99FD9EC95FBFF95FB
      FF95FBFF95FBFF95FBFF95FBFF95FBFF95FBFFB9FFFF0086B900000000000000
      0000173FB56F84E7667DC4A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3
      A5CCF3C9E0F8667DC40000000000000000009C5630D1A381D1C2BAE6B6AEE6B6
      AEE6B6AEE6B6AEE6B6AEE6B6AEE6B6AEE6B6AEEFCDC98E502B00000000000000
      0000123F5221425D1C2F4B08203F6D8AB98BA0E2A2BBF66A87BD6581B87F9DDE
      7994C70B295100060A2C4762383D5D0000000099CC66CCFF0083B6BAFFFF9EFF
      FF9EFFFF9EFFFF9EFFFF9EFFFF9EFFFF9EFFFFCCFFFFB3F2F9002C4100000000
      0000173FB57E95ED2D3F97FFFFFFE3EFFBC9E0F8B9D7F6B9D7F6B9D7F6B9D7F6
      B9D7F6DAEAFADAEAFA2D3A7A0000000000009C5630DBAD8A8B4F2BEFCECAE8BA
      B5E8BAB5E8BAB5E8BAB5E8BAB5E8BAB5E8BAB5F3DBD8E6CDC6321E0F00000000
      0000103D5148545D1D2D453755784B6DA492A6E4A9B3EF7691C55C79A97375A4
      6E82B91D3E6301091452616C848D860000000099CC73D9FF5DC3EC108FBF70C6
      E2BFE6F2FFFFFFC6FFFFC2FFFFC2FFFFC2FFFFDFFFFFDFFFFF0079AC00000000
      0000173FB58DAAEF8DAAEF7990D63D519A142F98284AB2F7FBFED2E6F9D2E6F9
      D2E6F9E8F2FCECF4FD4D68B90000000000009C5630DEAF94C19E888E5E41BAA4
      98E0D6D1FFFFFFF2D6D3F1D4D0F1D4D0F1D4D0F7E8E7F7E8E7844D2800000000
      0000103D50848183172A3F0F2A471732634D57755962787895C36C8CB75D7093
      627CAA000219000001B0AFAB7882810000000099CC86ECFF86ECFF86ECFF86EC
      FF86ECFF4DB3D2CFECF5EDFFFFE0FFFFDBFFFFF2FFFFF2FFFF97D9EC00101800
      0000173FB599BBF299BBF299BBF299BBF299BBF299BBF21534A1899CD2C7CEEF
      FFFFFFFFFFFFFFFFFFFFFFFF6E70750000009C5630E3B3A2E3B3A2E3B3A2E3B3
      A2E3B3A29E8B81E7E0DDFBF2F1F8E9E7F7E5E3FCF6F5FCF6F5CFBDB4120B0600
      0000113E51BBB7B30718330E35572446721E42786E88B7B7CCF9ACC3F592A7DB
      6380B300102900071DCBC5C1959D9B0000000099CC99FFFF99FFFF99FFFF99FF
      FF99FFFF99FFFF73D9E6399FBF0A7CAC0083B640ACD28FD2E9DFF2F9005D8C00
      0000173FB5A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3
      8AA6D44753894753894753890000000000009C5630E7B6B1E7B6B1E7B6B1E7B6
      B1E7B6B1E7B6B1BFA29A8579738153358B4F2B9B8477CAB8AEF0EBE86B412100
      0000103C50CCC7C502071E36547443567241689594B1DDB2D0FD9AB6EF92ADE3
      2E4B6A5364790F1723B5B3B29DA59F0000000099CC99FFFF99FFFF99FFFF99FF
      FFDCFAFFC3FCFFAEFEFF99FFFF99FFFF99FFFF00000000000000000000000000
      00001535A4B9D7F6A5CCF3A5CCF3C3DDF7284AB27389C9ABB8DFDBE0F3D7E8FA
      BDD6F60000000000000000000000000000009C5630E7B6B1E7B6B1E7B6B1E7B6
      B1F7E9E4F1D6D1ECC6C1E7B6B1E7B6B1E7B6B100000000000000000000000000
      00000F3C50DFDED5B7BBBF27344D0B21350E254630476F43313F97C4FF5D7FB2
      112948182839BCBEBECBCBCD9AA3BB000000006695EFFEFFD2FFFFB9FFFFE4F7
      FC005A86005D8C0072A30080B32E9FC96BC4E200000000000000000000000000
      00000000005062B47389C9ABB8DF7389C9000000000000000000000000284AB2
      284AB2000000000000000000000000000000724423FBF4F3F4DFDDEFCDC9F5EE
      EB673E1F6B41217D4926894F2A8F7668B8A19500000000000000000000000000
      0000113F523A2747FFFFFE0108210F1A2E3C506512153E6F4E1A3B2922000003
      010C15040A1AFFFCF9ECEAE9080D0F000000000000005D8B00608F0072A3006F
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000006A40216D42227D49267C4A
      2600000000000000000000000000000000000000000000000000000000000000
      00001640511340520F3B4F154053154154133E52133F52133F53133F54144054
      144054144154103C4F103C4F1944570000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070000110000
      1500001500001500001500001500001500001500001400000A00000000000000
      0000000000000000000007000614002125002A2A002A2A002A2A002A2A002A2A
      002A2A0029290014140000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000220000540000
      6800006800006800006800006800006800006800006500003200000000000000
      00000000000000000000220017600088AC00C6CB00D0D000D0D000D0D000D0D0
      00D0D000C9C90064640000000000000000000000B60000A60000A60000A70000
      A70000A60000A60000A60000A60000A60000A60000A60000A60000A600008E00
      0000B63000A62600A62400A72600A72800A62800A62800A62800A62800A62800
      A62800A62800A62800A628008E260000000000000000000000002A0000670000
      8000008000008000008000008000008000008000007C00003E00000000000000
      000000000000000000002A00076A003C9D00B5DA00F5FA00FEFE00FFFF00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF453FFF00
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF9E4100000000000000000000002A0000670000
      8000008000008000008000008000008000008000007C00003E00000000000000
      000000000000000000002A000067000683003B9B00B3CF00F4F400FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFEFBFFFCF9FFFDF9FFFD
      F9FFFDF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFEFB2225FF00
      0000FFFFFFFBFFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFF
      F9FFFFF9FFFFF9FFFFFBFFFFFF7D2200000000000000000000002A0000670000
      8000008000008000008000008000008000008000007C00003E00000000000000
      000000000000000000002A000067000080000678003C6000C1C200FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFDFAFFFEFCFFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFB2221FF00
      0000FFFFFFFAFFFFFCFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFBFFFFFF832100000000000000000000002A0000670000
      8000008000008000008000008000008000008000007C00003E00000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFCF7FFFDFAFFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFB291DFF00
      0000FFFFFFF7FFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFBFFFFFF8C1D00000000000000000000002A0000670000
      80000080000080000080000080000180000C8500098000003E00000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFCF7FFFDFAFFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFB2E21FF00
      0000FFFFFFF7FFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFBFFFFFF902100000000000000000000002A0000670000
      800000800000800000800000800007830056AA00449E00023F00000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFCF7FFFDFAFFFDF8FFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDF93123FF00
      0000FFFFFFF7FFFFFAFFFFF8FFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFF9FFFFFF932200000000000000000000002A0000670000
      80000080000080000080000080000381002C9600238D00013E00000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFCF7FFFEFDFFFDFBFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFFFF3625FF00
      0000FFFFFFF7FFFFFDFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFFFFFFFF972500000000000000000000002A0000670101
      7F0B0B7A0F0F780F0F780F0F780E0E7806067D00007C00003E00000000000000
      000000000000000000002A000067000080000173001E4200AAAB00F8F800FEFE
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFCF7FFFDF8FFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDF8FFFDFAFFFDFAFFFEFEFFFFFFFFFFFF3F27FF00
      0000FFFFFFF7FFFFF8FFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFF8FFFFFAFFFF
      FAFFFFFEFFFFFFFFFFFFFFFFFF9F2700000000000000000000002A0000671313
      75797942A1A12FA1A12FA1A12F98983241415E01017A00003E00000000000000
      000000000000000000002A000067000080000F8100668A00818200CCCC00FDFD
      00FFFF00F7F7007B7B000000000000000000FFFFFFFFFFF9FFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFF442DFF00
      0000FFFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFFFFFFFFA12D00000000000000000000002A0000671E1E
      70BEBE1FFDFD01FDFD01FDFD01F0F00667674B01017A00003E00000000000000
      000000000000000000002A00006700008000097C004B6F00919100DCDC00FEFE
      00FFFF00F7F7007B7B000000000000000000FFE2FCD5AAFED7AAFFD2AAFFD6AA
      FFD6AAFFD8AAFED5AAFED2AAFFD5AAFEC8A2FCCCA3FAC99EFCBA87FF1C00FF00
      0000EEFFE2FEF6AAFFF8AAFFF4AAFFF7AAFFF7AAFEFAAAFEF6AAFFF5AAFEF6AA
      FCECA1FAF0A3FCEE9EFFF187FF9B0000000000000000000000002A0000671D1D
      70B8B822F5F505F5F505F5F505E8E80A63634D01017A00003E00000000000000
      000000000000000000002A01016606067C02027100173B00AEAF00FDFD00FEFE
      00FFFF00F7F7007B7B0000000000000000000B00C40100CB0700CA0500CB0B00
      D10A00D20600CB0700C80800CB0B00C94023FF0400C95940FFEDFF001500DD00
      0000C45F00CB5B00CA6000CB5F00D16600D26500CB6000C85F00CB6100C96300
      FF9C23C95C00FFAC40005AFFDD720000000000000000000000002A0000670D0D
      785454557070477070477070476A6A4A2D2D6800007B00003E00000000000000
      000000000000000000002A14145C5E5E5027275E02183800AFAF00FEFE00FFFF
      00FFFF00F7F7007B7B0000000000000000002300FF2500FF2100FF2100FF2200
      FF2200FF2300FF2500FF2400FF2500FF1D00FC2000FF1E00FE2000FF1B00FF00
      0000FF9100FF9B00FF9300FF9100FF9100FF9400FF9600FF9A00FF9400FF9300
      FC8500FF8D00FE8600FF9600FF87000000000000000000000000280000640000
      7C03037A03037A03037A03037A03037A01017B00007800003C00000000000000
      0000000000000000000028222252B0B0238F8F2723392600AAAA00F7F700F8F8
      00F8F800F0F00077770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000150000340000
      4100004100004100004100004100004100004100003F00001F00000000000000
      000000000000000000001512122B65650E717101222E0B005A59008181008282
      008282007E7E003E3E0000000000000000000000000C07040F09060E0A060E0A
      060E0A060E0A060E0A060E0A060E0A060E0A060E0A060E0A060C080504010100
      000000000006070D06070F06070F06070F06070F06070F06070F06070F06070F
      06070F06070F06070F06070F0303060000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F3223B07455B27A5CB37A5CB37A
      5CB37A5CB37A5CB37A5CB37A5CB37A5CB37A5CB37A5CB2795BB37A5C925F4304
      0301242951525DB35863B65863B65863B65863B65863B65863B65863B65863B6
      5863B65863B65863B65863B6404A930303060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000543626B57D5FB78265B88366B883
      66B88366B88366B88366B88366B88366B88366B88366B78265B783669B654806
      0302262C575D68B8646EBB646EBB646EBB646EBB646EBB646EBB646EBB646EBB
      646EBB646EBB646EBB646EBB454F9D0304080000D20000B70000B40000BA0000
      BD0000BC0000C10000C10000BE0000BE0000C10000B90000AE000CA200003000
      0000721B005819005512005411065D11005811005E11005A11005A11005A1100
      591500541500581500591213120000000000150C083D291D402A1E412B1E3F29
      1D412A1E3F291D422C1F3F291D422A1E3E2A1E422C1F432E1C48311D2F211400
      00000A0B161C21411D21421E22441D21421E22441D21421E22441D21421E2345
      1C21411E23451C21411E234514182F000000F1F4FFFFCFFFFFD5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFACFFECDAFF16318A00
      0000FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFBF5FFFF4D3E4600000064402CBA8366BA866ABC8A6FB985
      69BD8A70B98467BE8B71B98266BE8C72B78265C292737759BF825FCB593D980C
      06002D34666771BC6A73BD6E77BF6872BD6F79C06670BC717AC16670BC727BC1
      646EBB727BC169BD5E6ECA614A97400203052F30FF0000FF0000FE0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FA0000FF00007000
      0000FD922AFF6A00FF6500FF6300FF5000FF5100FF5100FF5100FF5100FF4C00
      FF5000FF5D00FF6400F669003A0000000000784B34D8BCACDCC4B7DBC1B4DCC3
      B6DBC0B2DDC5B8DBC0B2DDC6B9DABFB1DEC6B9D7BCB2B491F49158FD8E69D518
      1109363E7BABB1DAB6BBDFB3B8DEB6BBDFB2B7DDB8BCE0B2B7DDB8BCE0B2B7DD
      B9BEE0B1B6DD9DF6916CFF5876D46A0B0C18E8EFFF7578FF7173FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E4FF2328FED6DEFF001C7C00
      0000E7F9FFFFC16EFCBB84F1FFFFF6FFFFF6FFFFF6FFFFF2FFFFF2FFFFF2FFFF
      F6FFFFF6FFFFFF8A1EDDFFFF28283F000000774C35CEA893D0AC97D2AE9AD2AC
      97D3AF9CCFAA96D3B19DD0A995D3B09ECEA995D1AE9E9E82D99C70EA7352BD18
      0F00363E7B939AD099A0D29CA2D3989ED29DA4D4969DD19DA4D4969DD19FA5D5
      959CD09FA5D58ED9857EEE6F5FBD5306070F292CFF0000FF0000FF0C0BFF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FE0000FF00006E00
      0000E48A2DFF4F00FC5700FF7D00FF4D00FF4E00FF4E00FF4E00FF4E00FF4900
      FF5100FF5200FF3E00D97A1D2A00000000001A100B3C261A3D271A4C30205638
      265C3B285638265D3B285637265D3C295636255839262F1D2B291C432C1F1300
      00000D0F1E1B1F3E1C203F22274D272D58292F5E272D582A305F272D582A305F
      262C57272D581C203F1E234514172D000000DEE4FF726FFF7571FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D1FF2B2AFED3D4FF00168400
      0000EAF1FFFFC069FCC282F6FFFFFBFFFFF7FFFFF7FFFFF7FFFFF7FFFFF7FFFF
      FBFFFFFBFBF5FF9621DEFFFF342A3B000000000000000000000000492E20B57E
      60B47B5CB4795BB4795BB77F61BA8569B8806396634608040300000000000000
      000000000000000000000021264B5D68B85A65B75964B65964B6606AB96872BD
      616CBA434D98040509000000000000000000353AFF0000FF0000FF2221FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FE0000FF00007A00
      0000EB8E3FFF5400FC5F00FB8A14FF6300FF6400FF6000FF6000FF6000FF5F00
      FF6700FF5A00FF4600DF8D33360000000000000000000000000000774C35C598
      80784C356F47326E4632A77053CCA794B2795AC08F7519110B00000000000000
      0000000000000000000000353D787F87C7363E7B3239713239714D59B0939AD0
      5863B6757EC20B0C18000000000000000000CCCDFF6165FF6366FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEFF1D1CFEC1C1FF00009000
      0000F1EDF1FFB356F7B570F6FFFFFEFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
      FEFFFFFBE5D5FF8D13DFFAFF3D2D30000000000000000000000000784D35D1AF
      9CB0795AAE785BB17B5EC19278D3B3A1C3977FC08C71160D0900000000000000
      0000000000000000000000353D7A99A0D25661B55560B45964B6767FC3A1A7D6
      7C84C5717AC10A0C170000000000000000006168FF0000FF0000FF444CFF2725
      FF2426FF2423FF2423FF2422FF2322FF2A28FF0206FF0000FE060EFF00008A00
      0000FCAD67FF5800FF5900FF9C43FF8B09FF8707FF8707FF8C07FF8C07FF8602
      FF8B0EFF7400FF3F00E6843D430700000000000000000000000000774C35C69B
      8482533AB27B5ECAA28E7F5238784C35754B344D312200000000000000000000
      0000000000000000000000353D78838BC83B44865C66B78B93CC384181363E7B
      343C7723284F000000000000000000000000B2AFFFD19FFED2A4FFB4BDFFA4A6
      FFA8A3FFA8A3FFA4A6FFA7A2FFA19BFF9795FFB08DFFCA87FF6454FF0000A800
      0000F5E4CBFFFF99FFFFA6FFE4D6FFDFB6FFE0BBFFE0B7FFDBBBFFDFB6FFE0B2
      FAD3AAFFEBA0FFFF6CF8CF8E603C1A000000000000000000000000784D35CEAB
      98A97357C59981BB85683A261B9B674A774D3601000000000000000000000000
      0000000000000000000000353D7A959CD0515CB38088C76771BC1B1F3E46509F
      343C770000010000000000000000000000000000FF2E00FF2100FF121BFF1117
      FF1117FF0D0FFF0D0BFF100BFF2123FF4E4CFF503DFF6A2AFC5879B72A2EA600
      0000A5754DB7A66CACA364A08D9AA3908CA39091A39087A39482A28F86A89996
      B3ABADB4AE9C9CB4915C7ACC5A637F000000000000000000000000774C35C89F
      8AB57F62DEC7B8BD896E613D2AC698806B453001000000000000000000000000
      0000000000000000000000353D788890CB606AB9B6BBDF6C76BF2C3264818AC8
      2F366C0000000000000000000000000000000000A70000CB0000B40000BA0000
      B60000BA0000B70000B10000AB0000BF0000EC0000EB0000EC0000C10000DD00
      0000BC4600C54F00BE3E00C13D00C54500C54900C54500C53F00C43E00C54400
      D25A00CD4F00A24308773A26A36414000000000000000000000000744A33C9A3
      8FBC8A6FDDC5B8BB85682C1E15492E2000000000000000000000000000000000
      0000000000000000000000343B768B93CC6C76BFB5BADE6670BC14182F22274D
      0000000000000000000000000000000000000800FF1909FF0500FF0800FF1300
      FF0E00FF1600FF0B00FF0F00FF0F00FB0700FF0E00FF0900FF0000F60E00B300
      0000E98719FFA234F4901BF88F18F89817F89320F49C26F4921AF3900EF3870E
      F58E16F98B11F09224D37D1FCD67000000000000000000000000002D1C148B59
      3D915C40925C415B3A2800000000000000000000000000000000000000000000
      00000000000000000000001518303E478D414B94424B96292F5D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000001E05341A052B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      350D042B0C050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000020053534075A35075D3D086B3A09651900371B023000000000000000
      0000000000000000000000000000000000000000360F045B16065E16066C1A07
      661908370600300B020000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001A042E27103B390C603602
      643C066D3A09673B09663A09653A08653B09661900371B00391B032F00000000
      00000000002E0B043C170F611B0B6513016E1705681808671A08661908661907
      671A08370600390700300B030000000000000007D00000BC2600DB2900DF0000
      560000C10002C40001C50001C50000C40001C40000BB02008B1E03B400054900
      0000721B005819002C01D02900DF2908005811005E11005A11005A11005A1100
      5915005415003F0F0D2602A81100000000000000004B19796849916F54956D54
      97694B8D66438A58337E4A1D733F12683A06651900371B003A1B003B00000000
      00000000007A2818934D479756529953528F50498C4C41803C31742B1C692011
      6618053706003A07003B0600000000000000BFC3F8EE9FFD4F20E42900DF3928
      7DD1CCCEFFFFFDFEFDFCFFFEFCFFFEFCFEFEFC5938BA2900DF7C74D70C278C00
      0000FAFFFFFFFFFF512FE52900DF39297DD1D1D1FFFFFFFFFFFFFFFFFFFFFFFF
      FEFEFE5F4ABA2900DFB0AFDA4D3E46000000000000420B713C00663F096C6847
      8D705294684E936A4A8D694B8D6A4C8D694B8D1700361B003A1B003B00000000
      0000000000721E0A6618006D1C088F4E45965750954E4C8F51488F50498F524A
      8F50493604003A07003B06000000000000003839FE0200FE0C09FF2601E02900
      DF0000500000E90000FE0000FE0000FC2100CE2900DF0604EA0000FE00007D00
      0000FD922AFF6A00FF65003606D02900DF501A00E94B00FF5100FF5100FC4C00
      3A08B52900DFEA5C00F669003A000000000000000044056F5C9CD15986C34007
      6C3F0C6C65438A6D5295694C906A4C8D6B4D8D1700351B003A1B003B00000000
      0000000000701E04D35AC7C557AC6D1C066D1D0B8C4B41975350924F4A8F524A
      8F534B3504003A07003B0600000000000000C0C4FF6664FF7376FFFFFFFF2900
      DF2900DF616161F5F5F5FCFCFC3A18CE2900DFA8A9ED2E2FFDA8ACFF05178C00
      0000E7F9FFFFC16EFCBB84F1FFFF2900DF2900DF5E6161E9F5F5F0FCFC3918CE
      2900DFE5EDEDFF8A1EDDFFFF28283F0000000000005156A35A91CA5C9BD04207
      71450E753F0A6D3B0769542D816C56927863941500351B003A1B003B00000000
      0000000000A54F72CC58BAD25AC5721C0676200D6E1C096A180683352B945554
      9665613502003A07003B06000000000000003A3BFF0000FF0505FF2222FF0A0B
      FF2900DF2601D705056B2201CD2900DF0C0CED0000FF0000FE0406FE00007E00
      0000E48A2DFF4F00FC5700FF7D00FF4D002900DF2D02D06B21003908B52900DF
      ED4C00FF5200FF3E00D97A1D2A00000000000000004B318C5EA7DB421F823700
      6A64398D9F8FB8F1EFF7FFFFFFFFFFFD8A8B8D3A2B501B003A1B003B00000000
      00000000008E2F35DD5CD4841E1D6A12008F4537BA8F8DF7EFF0FFFFFFFDFFFE
      8F888D512C2A3A07003B0600000000000000BABDFF5E5CFF7572FFFAF8FFE7E7
      FFE7E8FF350EE02900DF2900DFC7C8DBE7E9FFAAA7FF312FFEA1A2FE03189300
      0000EAF1FFFFC069FCC282F6FFFFFBFFFFF7FFFF360FE02900DF2900DFD5DBDB
      FBFFFFFBFBF5FF9621DEFFFF342A3B0000000000005F4183A592B4FEFFFFFFFF
      FFFFFFFFFCFBFCFEFEFEFDFDFDF7F7F78B8D8E676A681500371B003B00000000
      000000000085463FB69890FFFEFFFFFFFFFFFFFFFCFCFBFEFEFEFDFDFDF7F7F7
      90899065656C3702003B06000000000000004447FF0100FF0C0CFF3431FF201C
      FF201DFC2701DA2900DF2900DF0C0B591E1BE30C0BFF0000FE1311FF00008800
      0000EB8E3FFF5400FC5F00FB8A14FF6300FC63002F04D12900DF2900DF592200
      E35C00FF5A00FF4600DF8D33360000000000000000696C6EC1C1C2FEFEFEFEFE
      FEFEFEFEFCFFFCFBFFFBFEFDFEFFFCFF8A8D8D636566372B4E1B003B00000000
      0000000000706770C3C0C1FEFEFEFEFEFEFEFEFEFCFDFFFBFCFFFEFEFDFFFEFC
      8D888F6861684F2A2A3B0600000000000000ADAEFF5353FF6969FFE3E2FFCED0
      FC3614CE2900DFB8BAE16850EC2900DF403D597978C9292AFE9495FF00079D00
      0000F1EDF1FFB356F7B570F6FFFFFCFCFC3A18CE2900DFDEE1E17960EC2900DF
      4D4A59C6B5A8FF8D13DFFAFF3D2D300000000000005D5E5ED9DBDAFFFDFFFFFE
      FFFFFCFFD8FED897FF9747FF4710F910968C978C8C8C72747216003800000000
      00000000005E5B60D9D8DCFFFEFDFFFFFEFFFEFCD8E5FE97BBFF4787FF0E61FB
      99928A8B8E8A7072763802000000000000005D5EFF0506FF0F12FF4F52FC2806
      CE2900DF3333D43D3DFF3C3DFF3B32F92900DF15087F00009A1F21FE00009400
      0000FCAD67FF5800FF5900FC9B433A0EB62900DFD47106FF8C07FF8C07D76D2B
      2900DF461A469A2700E6843D430700000000000000646B6779C47911FE1102FA
      0200FC004ED84E57E157C1D3C1CFDFCFFAFCFAA0A0A268686A4D466600000000
      000000000063626D7793C61064FF0058FC0058FC4C7EDA5587E3C0C7D4CED4E0
      FAFBFCA49EA06C6668684449000000000000938EFFA37CFF9D82F52E0ECC2900
      DF6661C28C8AFF8B8AFF8B89FF8C87FF8280FF2900DF2F0CC33D37CE0205AB00
      0000F5E4CBFFFF99F5F5A03714C92900DFB79F92FFE0B7FFDBBBFFDFB6FFE0B2
      FAD3AA2900DF3A1BB2C9A873603C1A000000000000000000BEB5BFC1CDC1FFFF
      FFFFFFFFFFFFFFFFFDFFFDBEFDFE82FEFF38FFA6B3A97A7B7C42444600000000
      0000000000000000C0BBB4C0C5CEFFFFFFFFFFFFFFFFFFFFFEFDFEE7BDFFD381
      FFB938A4A6B57E787D4741460000000000001211FF3B20FF2901DA2900DF2313
      B52F31FF2F2EFF2F30FF302EFF3836FF4442FB4334FE4519ED3956C82524B500
      0000A5754DB7A66C2D06D42900DF4D3789A39091A39087A39482A28F86A89996
      B3ABADB4AE9C7170AD5C7ACC5A637F000000000000000000000000ADB3AFFF0A
      FFF502F5FF00FFD840D8ED3EEEC6B9CADFB6E4EEDEEEB4B4B557585A00000000
      0000000000000000000000ABACB5FFA90AF7A100FFA600DAA33EF0B03CCBC0B8
      E5CFB5EFE9DDB6B3B45C555A0000000000000400C60401D92900DF1F01C00501
      C70301CC0301CB0301C60501C30301CE0402EE0301EC0101EC000CD00000E500
      0000BC4600C54F002900DF3708A6C54500C54900C54500C53F00C43E00C54400
      D25A00CD4F00A24308773A26A36414000000000000000000000000000000AEB9
      AFFFFFFFFFFFFCFFFFFFF9FAFEC4C3FF9492FF5B5AFFA8A8C557595D00000000
      0000000000000000000000000000ACB0BBFFFFFFFCFFFEFFFFFFFEF9FCFFC3D7
      FF92B6FF5A93C6A7B25F555C0000000000000800FC1406FE0A00FF0B00FF0D00
      FF0B00FF0D00FF0B00FF0B00FB0D00FB0500FF0D00FF0700FF0701EB1000BB00
      0000E98719FFA234F4901BF88F18F89817F89320F49C26F4921AF3900EF3870E
      F58E16F98B11F09224D37D1FCD6700000000000000000000000000000000BEC3
      B80001FC1818E71615BD2C2DB14B4B9450516471725800000000000000000000
      0000000000000000000000000000B7C3C4FC0059EA1560BF134EB32A5B964964
      664E5856746B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000B0B0B1D1D1D1313131212121212121212121212121212120E0E0E00
      00000000000000000000000000000000000000000B0B0B1D1D1D131313121212
      1212121212121212121212120E0E0E0000000000000000000000000000000000
      0000000080808080808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000808080808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000005E5E5EF4F4F4F0F0F0EFEFEFEDEDEDEEEEEEF0F0F0F0F0F0C0C0C000
      00000000000000000000000000000000000000005E5E5EF4F4F4F0F0F0EFEFEF
      EDEDEDEEEEEEF0F0F0F0F0F0C0C0C00000000000000000000000000000000000
      0080808080808080808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000808080808080808080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000006E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E400
      00000000000000000000000000000000000000006E6E6EFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE4E4E40000000000000000000000000000008080
      808080805500FF808080808080808080C0C0C0C0C0C000000000000000000000
      0000000000000000000000000000808080808080FF0000808080808080808080
      C0C0C0C0C0C00000000000000000000000000000000000000000000000000000
      000000006B6B6BC5C5C52222225D5D5DBCBCBC2929291818184A4A4ABBBBBB00
      00000000000000000000000000000000000000006B6B6BC5C5C52222225D5D5D
      BCBCBC2929291818184A4A4ABBBBBB0000000000000000000000008080808080
      805500FF5500FF808080808080808080C0C0C0C0C0C000000000000000000000
      0000000000000000000000808080808080FF0000FF0000808080808080808080
      C0C0C0C0C0C00000000000000000000000000000000000000000030000000000
      000000006C6C6CFDFDFDC0C0C0E2E2E2F5F5F5C9C9C9D2D2D2D1D1D1DEDEDE00
      00000000000000000300000000000000000000006C6C6CFDFDFDC0C0C0E2E2E2
      F5F5F5C9C9C9D2D2D2D1D1D1DEDEDE0000000000000000008080808080805500
      FF5500FF5500FF5500FF5500FF5500FF80808080808000000000000000000000
      0000000000000000808080808080FF0000FF0000FF0000FF0000FF0000FF0000
      8080808080800000000000000000000000000000000000000000C800006A0000
      000000006A6A68CDCDCD6A6A6A9F9F9F303030646464D3D3D3727272C3C3C300
      0000000000000000C800146A000A000000000000686A6ACDCDCD6A6A6A9F9F9F
      303030646464D3D3D3727272C3C3C30000000000008080808080805500FF5500
      FF5500FF5500FF5500FF5500FF5500FF808080808080C0C0C000000000000000
      0000000000808080808080FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      808080808080C0C0C00000000000000000000000000000000000FF0000EA0000
      6900000069695CFBFBFAC9C9C9EAEAEABFBFBFCCCCCCFDFDFDD0D0D0DCDCDC00
      0000000000000000FF001BEA001769000A0000005C6967FAFBFAC9C9C9EAEAEA
      BFBFBFCCCCCCFDFDFDD0D0D0DCDCDC0000000000000000005500FF5500FF5500
      FF5500FF5500FF5500FF5500FF5500FF808080808080C0C0C000000000000000
      0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      808080808080C0C0C00000000000000000000000790000FF0000FF0000FF0000
      E6000064676755D5D5C8464645767676D0D0D04747474040403B3B3B2D2D2D00
      000079000CFF001CFF0019FF0019E60017640007556765C8D5D4454646767676
      D0D0D04747474040403B3B3B2D2D2D0000000000005500FF5500FF5500FF5500
      FF5500FF5500FF5500FF5500FF5500FF808080808080C0C0C0C0C0C000000000
      0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      808080808080C0C0C0C0C0C00000000000000000790000FF0000FF0000FE0000
      FF0000E61E1E86757567ABABA2CECECDBABABA151515A7A7A789898906060600
      000079000CFF001CFF001AFE0019FF0019E60015861E28677574A2ABAACDCECE
      BABABA151515A7A7A78989890606060000000000000000005500FF5500FF5500
      FF5500FF5500FF5500FF5500FF5500FF808080808080C0C0C0C0C0C000000000
      0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      808080808080C0C0C0C0C0C00000000000000000790000FF0000FF0000FF0000
      FE0000FF0000E6151587868687EEEEEDBDBDBD3C3C3CEFEFEF67676700000000
      000079000CFF001CFF001AFF001AFE0019FF0019E60011871521878687EDEEEE
      BDBDBD3C3C3CEFEFEF6767670000000000000000000000000000005500FF5500
      FF5500FF5500FF5500FF5500FF5500FF808080808080C0C0C0C0C0C000000000
      0000000000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      808080808080C0C0C0C0C0C00000000000000000790000FF0000FF0000FF0000
      FF0000FF0000CC393979C8C8C1FFFFFFC9C9C913131342424200000000000000
      000079000CFF001CFF001AFF001AFF0019FF001ACC0012793940C1C8C7FFFFFF
      C9C9C91313134242420000000000000000000000000000000000000000005500
      FF5500FF5500FF5500FF5500FF5500FF808080808080C0C0C0C0C0C000000000
      0000000000000000000000000000FF0000FF0000FF0000FF0000FF0000FF0000
      808080808080C0C0C0C0C0C00000000000000000790000FF0000FF0000FF0000
      FF0000C600002F2A2A157A7A7171717049494900000000000000000000000000
      000079000CFF001CFF001AFF0019FF001AC600132F0004152A28717A79707171
      4949490000000000000000000000000000000000000000000000000000000000
      005500FF5500FF000000000000000000000000000000C0C0C0C0C0C000000000
      0000000000000000000000000000000000FF0000FF0000000000000000000000
      000000000000C0C0C0C0C0C00000000000000000790000FF0000FF0000FF0000
      C600003600000000000000000000000000000000000000000000000000000000
      000079000CFF001CFF0019FF001AC60013360005000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000005500FF000000000000000000000000000000000000C0C0C000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000C0C0C00000000000000000000000000000FF0000C80000
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF001BC80014390005000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000C0C0C000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000C0C0C000000000000000000000000000005900001C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005900091C0004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F0F0F0E0E0E1E4E4E4
      F0F0F00000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000757BD92123B0383BBABCC4EC00000000000000000000000000
      0000000000000000000000000000000000000000EDEDEDB9B9B965666C797978
      D7D7D8F0F0F00000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B900000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B918000000000000000000000000000000000000000000000000000000000000
      000000006367D6090AB30000B00101B32B2EC3B3BBEB00000000000000000000
      0000000000000000000000000000000000E7E7E8A2A2A150506C3D3D713F3F73
      747478D6D6D6EFEFEF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000AB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF2500AB18000000000000000000000000000000000000000000000000000000
      004F52DA0404C30000C50000C80000C50001BE3133C9C3CCF000000000000000
      0000000000000000000000000000E4E4E49797954A4A7A45457E46468045457E
      42427A7A7A7DDEDEDE0000000000000000000000000000000000000000000000
      000000650000FF0000FF0000FF0000FF0000FF0000FF0000AA00000000000000
      0000000000000000000000000000000000650000FF2B00FF2300FF2200FF2300
      FF2300FF2300AA18000000000000000000000000000000000000000000004245
      DA0102D20000D90000DD0000D90000D10000C90101C24549D200000000000000
      0000000000000000000000E1E1E290908F4B4B864C4C8B4E4E8D4C4C8B494986
      47478145457C8C8C8AE7E7E7000000000000777777FFFFFFFFFFFFFFFFFF8787
      7F0000550000FF0000FF0000FF0000FF0000FF0000FF0000FF0000AE00000000
      0000777777FFFFFFFFFFFFFFFFFF7F8587550000FF2700FF2300FF2200FF2200
      FF2200FF2300FF2300AE18000000000000000000000000000000004346DB0101
      D50000E00000EA0000EC0000E50000DD0000D50000CD0404C7696EE000000000
      0000000000000000E4E4E49292914B4B894F4F905252965252975151924E4E8E
      4B4B884848844C4C7DAEAEABEEEEEE000000848484FFFFFFFFFFFFFFFFFFA2A2
      9B0000410000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C500
      0000848484FFFFFFFFFFFFFFFFFF9BA0A2410000FF2700FF2300FF2200FF2200
      FF2200FF2200FF2300FF2400C51B000000000000000000006467E31616D90505
      E40000EC0000EE0000EE0000ED0000E80000E00000D80000D01112D08C93EE00
      0000000000EBEBEBA5A5A56D6D8157579153539753539A535399525298525295
      4F4F904C4C8B4A4A8661617ECFCFD0F0F0F06C6C6CA4A4A40000006565658484
      7F0000350000FF0000FF0000FF0000FF0000FF0000FF0000FF0000E800002D00
      00006C6C6CA4A4A40000006565657F8484350000FF1E00FF1C00FF1E00FF2200
      FF2300FF2300FF2400E81E002D08000000000000006F72E85D5DE23A3AE91818
      EF0505EE0000EF0000EF0000EE0000EE0000EA0000E40000DC0000D5474AE200
      0000EFEFEFC9C9C99E9E9D87879B6F6F965B5B9754549954549A535399535399
      5252975151924E4E8D494A8A959597ECECEC787878FFFFFFC8C8C8FFFFFF9494
      900000220000FF0000FF0000FF0000FF0000FF0000FF0000DE00001900000000
      0000787878FFFFFFC8C8C8FFFFFF909294220000FF0000FF0000FF0000FF0A00
      FF2500FF2400DE1E001904000000000000000000009B9EEE7C7CF06666F44646
      F21D1DF00505EF0000EF0000EF0000EF0000EE0000ED0000E80000E00C0CDEA1
      A8F3EDEDEDC5C5C5AFAFBC9F9FB98B8BAB7272995B5B9754549A545498545498
      5353995353985151944F4F8F606088D4D5D86E6E6EBCBCBC000000898989FEFE
      FCC1C1DEDFDFFFE4E4FF9292B100004C0000FF0000E500001900000000000000
      00006E6E6EBCBCBC000000898989FCFDFEDEC3C1FFE7DFFFE9E4B196924C0000
      FF2400E51E00190400000000000000000000000000AEAFF69494F77D7DF66B6B
      F55353F33232F11515F00707EF0404EF0A0AEF0101EF0202EE0606EB0B0BE662
      67F1EDEDEECECED8BCBCCDAEAEC3A2A2BC9393B07E7EA36C6C955F5F965A5A98
      6363945454995656975A5A9561618E9E9EB3787878FFFFFFB5B5B5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF0F0BB0000260000FF00002400000000000000000000
      0000787878FFFFFFB5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBE8F0260000
      FF1F00240600000000000000000000000000000000C5C6FAACACF99191F78080
      F66D6DF55B5BF44545F23434F13131F14141F22E2EF12222F12020F01E1EEE1E
      1FEFEDEDECDBDCE3CBCBD8BABACDB0B0C4A4A4BD9898B48B8BAA7F7FA37F7FA1
      8888A87D7DA075759B73739A737397727299737373C6C6C6111111989898B7B7
      B708080810100E0E0E0E08080400000000004000000000000000000000000000
      0000737373C6C6C6111111989898B7B7B70808080E10100E0E0E040808000000
      400400000000000000000000000000000000000000D4D8FACFCFFBA6A6F89494
      F78282F67070F55E5EF44B4BF34D4DF36363F44D4DF33535F22B2BF12727F016
      16F0EEEEEEE4E5E8E0E0E8C7C7D6BCBCCEB1B1C6A6A6BE9A9AB68D8DAE8F8FAF
      9E9EB88F8FAF8080A57A7AA078789D6D6D98757575FFFFFF929292E5E5E57F7F
      7F000000BABABA5C5C5C00000000000000000000000000000000000000000000
      0000757575FFFFFF929292E5E5E57F7F7F000000BABABA5C5C5C000000000000
      000000000000000000000000000000000000000000DCE4F9DCDDFBCECEFBABAB
      F99696F88585F67575F66B6BF58888F77F7FF66767F54F4FF33939F23131F132
      34F1000000EBEBECE9E9EDE0E0E8CACAD9BDBDCEB2B2C6A9A9C0A2A2BCB5B5C7
      AFAFC59F9FBB9090AF8383A67E7EA27F7FA2757575D5D5D5868686FFFFFF8888
      885E5E5EFFFFFF51515100000000000000000000000000000000000000000000
      0000757575D5D5D5868686FFFFFF8888885E5E5EFFFFFF515151000000000000
      000000000000000000000000000000000000000000000000DAE0F9D7D8FBD8D8
      FBC4C4FAB0B0F99C9DF7A7AAF8CBCBFBA0A0F88181F66868F45252F33939F276
      7BF3000000000000EBEBEAE6E7EBE5E5EBD9D9E2CCCDD9C2C2D0C9CAD5DEDEE5
      C3C3D4B0B0C5A0A0BA9292B18383A5B6B7C5939393FFFFFFD3D3D3FFFFFFA6A6
      A600000041414100000000000000000000000000000000000000000000000000
      0000939393FFFFFFD3D3D3FFFFFFA6A6A6000000414141000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEC1
      F9AFAFF9A6A8F8BCC2F8D7DEF9CDD0F9C8C8FAB2B2F99797F76F6FF5777BF400
      0000000000000000000000EEEEEEE7E7E8E3E3E6E0E1E3E8E8E9EEEDEDE0E1E5
      DDDDE4CECEDBBEBED0A6A6BDACADBFEBEAEA343434A1A1A18F8F8F8989893535
      3500000000000000000000000000000000000000000000000000000000000000
      0000343434A1A1A18F8F8F898989353535000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000E0E9F9C4C8F99D9EF78788F79FA4F500000000
      0000000000000000000000000000000000000000000000000000000000EFEFEF
      E1E2E5D1D1DAC7C8D3D4D4D9ECECEB0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007374A57374A57374A57374A57374A57374A57374A57374A57374A560679200
      0000000000000000000000000000000000A57B73A57B73A57B73A57B73A57B73
      A57B73A57B73A57B73A57B73926260000000000000000000000000663CFF3600
      FFCFB6FF000000000000000000000000682AFF4511FF00000000000000000000
      0000000000000000000000A46A6EA36167DF9D9D000000000000000000000000
      B36668AB5E650000000000000000000000000000000000000000000000000000
      008E8ABBDFCCFFD9BFFFD2B6FFC9AAFFC5A1FFBF9CFFBC9CFFBC9CFF6C6AA800
      0000000000000000000000000000000000BB978AFFE8CCFFE5BFFFDFB6FFD9AA
      FFD6A1FFD19CFFCE9CFFCE9CA8776A000000000000000000E2D1FF0400850E00
      96070095A68DFF0000000000000400A80B009D10009A2A00FD00000000000000
      0000000000000000B087893D0E1555242B450E1FB18182000000000000732C3A
      50262C4D1A219467680000000000000000000000000000000000000000000000
      009290BBEADAFFDECEFFDCC1FFD2BBFFC9AFFFC5A2FFC49CFFBC9CFF6C6AA800
      0000000000000000000000000000000000BB9A90FFF1DAFFE7CEFFE7C1FFDEBB
      FFD8AFFFD6A2FFD69CFFCE9CA8776A000000000000000000AA90FF2D00FF0000
      00FDEBFF0300C90000009B83FF2E00FF000000EDD8FF1100C100000000000000
      0000000000000000A87174964B4B000000D38B8B864448000000A08285914547
      000000D58C89873F420000000000000000000000000000000000000000000000
      009896C4F4EDFFBD9BF3B995F3B490F3AF89F3AD85F3A97FF3C39CFF6D6AA800
      0000000000000000000000000000000000C4A096FFF7EDF3CD9BF3CA95F3C690
      F3C289F3C185F3BE7FFFD59CA8786A000000000000000000CEB2FF2300EF0000
      00FFFFFF00007C0000005E25FF430BFF0000009066FF1C00F300000000000000
      0000000000000000AA898A8A3F43000000D4929A6E3337000000904345B78A8A
      000000B1525195444400000000000000000056577B7374A57374A57374A57374
      A5A09CC7FEF9FFF4EFFFECE2FFE6DAFFDECEFFD8BDFFD1B7FFC7ABFF6E6CA800
      00007B5C56A57B73A57B73A57B73A57B73C7A89CFFFFF9FFF7EFFFF1E2FFEDDA
      FFE7CEFFE4BDFFDEB7FFD6ABA8796C0000000000000000000000000D00D82400
      E42B00E20C0087FFFCFF2F00FF2500B22400F31000A7FFFFFF00000000000000
      00000000000000000000007229338035358A3D3B6F3435E4F6F381333A723431
      973B4360212AE1C6C900000000000000000056577BE1D0FFDCC3FFD4B8FFCCAF
      FFA29FD0FFFFFFC4A7F3C4A4F3BF9FF3BA99F3B793F3B38DF3D4BBFF7070A800
      00007B5C56FFEAD0FFE7C3FFE1B8FFDBAFD0AB9FFFFFFFF3D2A7F3D2A4F3CE9F
      F3CB99F3C993F3C68DFFE0BBA87A700000000000000000000000000000002700
      FF0700980000852407FA0700BA0000710500A9DACAFF00000000000000000000
      0000000000000000000000000000853740631F2E541A249B60667B26305D202B
      663B45BE808200000000000000000000000056577BF0E2FFE0D0FFDDC9FFD4BD
      FFAAA2DAFFFFFFFFFFFFFFFFFFF5F5FFF3E9FFEAE2FFE7D6FFDDC6FF7576A800
      00007B5C56FFF5E2FFE9D0FFE7C9FFE0BDDAB4A2FFFFFFFFFFFFFFFFFFFFF7F5
      FFF7E9FFEFE2FFEFD6FFE7C6A87D750000000000000000000000000000000000
      000000004128DE3726A42514A2ECDBFF00000000000000000000000000000000
      00000000000000000000000000000000000000007170705F6B6A5D5E5FE6E2E2
      0000000000000000000000000000000000005A5984F7F1FFCBB0F6B997F3B591
      F3ADA5E0FFFFFFC4A8F3C4A8F3C4A8F3C4A5F3C2A3F3BE9DF3E7D8FF787BA800
      0000846259FFFAF1F6D8B0F3CA97F3C791E0B8A5FFFFFFF3D2A8F3D2A8F3D2A8
      F3D2A5F3D1A3F3CE9DFFEED8A87E780000000000000000000000000000000000
      000000005135E2FFFFFF3824A7DBBEFF00000000000000000000000000000000
      0000000000000000000000000000000000000000838585FBFCFC727373A2A3A3
      000000000000000000000000000000000000615C87FFFDFFF6F1FFF1EAFFE9DE
      FFAFA2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEF0D0D0D2B8B3B96E759400
      000087695CFFFFFDFFF9F1FFF5EAFFEFDEE6BBA2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF0EEEED2D0D0B9B9B3946E6E0000000000000000000000000000000000
      00E0C2FF9A8DF3341ABE6E5FDE6F51E100000000000000000000000000000000
      0000000000000000000000000000000000949797A5A5A55B58588E9090959596
      000000000000000000000000000000000000635F91FFFFFFD3BEF6C4A4F3C0A1
      F3B4A2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCEC7F73C77D63D17773BE00
      0000916C5FFFFFFFF6DDBEF3D2A4F3CFA1E9C1A2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFECDFDCC78E73D19163BE85730000000000000000000000000000000000
      004326E6765FD8DCBDFF5F43F7B49BE7F2CEFF00000000000000000000000000
      0000000000000000000000000000000000868686A1A1A1C3C4C48A8A8A9E9E9E
      9E9F9F0000000000000000000000000000006B639AFFFFFFFFFFFFFFFFFFF9FA
      FFC0AEF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCECA179E69154F300000000
      00009A7563FFFFFFFFFFFFFFFFFFFFF9F9F3CDAEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFECE0DCE6B579F3AE54000000000000000000000000000000000000F1CC
      FFBCABFFA593FD0000000000006E5EF15D3EDB00000000000000000000000000
      0000000000000000000000000000AFB0B0BFBFBF9999990000000000009D9D9D
      9A9C9C0000000000000000000000000000007063A0FFFFFFD3BEF6C4A8F3C4A8
      F3B49FEECAC1EECAC1EECAC1EECAC1EECAC1EEB5ADE09679DA00000000000000
      0000A07B63FFFFFFF6DDBEF3D2A8F3D2A8EEC29FEED2C1EED2C1EED2C1EED2C1
      EED2C1E0BEADDAA879000000000000000000000000000000000000000000997F
      FFA693F8000000000000000000D6B8FF8D7AE9FFF8FF00000000000000000000
      0000000000000000000000000000929494AAAAAA000000000000000000A8A8A8
      9E9E9EE0E0E00000000000000000000000006F63A6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF9F9F9D4D5DAC0BBC1989AA400000000000000000000000000000000
      0000A67B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DAD4D4C1C1BBA49898
      0000000000000000000000000000000000000000000000000000000000006C45
      FF0000000000000000000000000000007353F89884FF00000000000000000000
      0000000000000000000000000000838484000000000000000000000000000000
      7476769E9E9E0000000000000000000000007869ACFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF7773BB8169D17662C800000000000000000000000000000000
      0000AC8469FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB8473D19469C88962
      0000000000000000000000000000000000000000000000000000000000006648
      FF000000000000000000000000000000FFFFFF7A5CFF00000000000000000000
      0000000000000000000000000000585D5D000000000000000000000000000000
      BABCBD777877000000000000000000000000816FB3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF8575C59E62F7996CE300000000000000000000000000000000
      0000B38D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC59475F7B962E3AF6C
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F3CEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000C1C1C1000000000000000000000000816FB3CAC1EECAC1EECAC1EECAC1
      EECAC1EECAC1EE8275C1BA99E700000000000000000000000000000000000000
      0000B38D6FEED2C1EED2C1EED2C1EED2C1EED2C1EED2C1C19075E7C899000000
      0000000000000000000000000000000000000000000000000000000000000000
      001111111C1C1C1C1C1C1C1C1C19191905050500000000000000000000000000
      00000000000000000000000000000000001A190D282514282514292615242314
      0A09060000000000000000000000000000000000000000000000000000000000
      00A2A5983F3C4237343A3A363C3B383D3B383E3C373F3B373E4C4A4D00000000
      00000000000000000000000000000000007B96CB586776526474546674556674
      5566745567745566745C6C780000000000000000000000000000000C0C0C1818
      186F6F6F9191918383838A8A8A8E8E8E3E3E3E0F0F0F05050500000000000000
      000000000000000000000014120B242213948B50B4AC74ABA362AFA46AB2AA6E
      55502E18160C0A09050000000000000000000000000000009280BF5638B14D2B
      B7E9EDD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE8EC00000000
      0000000000000000DEB140D29815D79A0CA8C2F7F8F3FFFBFBFFFFF9FFFAF9FF
      F7F3FFFDF7FFF1EEFFCFD4E90000000000000000000000001919195454547171
      71A0A0A09090904949496A6A6AA5A5A587878767676735353507070700000000
      0000000000000000242213716B3C968D52BFB787B3AB73625D358E854CC2BC8E
      ADA3668A814B4946270C0B08000000000000000000643DCA6D65FF6857E34A36
      EACFD3B2F3FAF154961A5D9D265F9E275F9E285F9E29C2D0BAD1CDD400000000
      0000000000D5A114FFAF46FDAC39FFA32294B0ECECE7F92223D42A2AD62B2BD6
      2B2CD62B2CD6B4B2E5C1C7DB0000000000000000000D0D0D6767679E9E9EA8A8
      A8B1B1B18A8A8A2F2F2F5B5B5BA6A6A6ADADADA5A5A58E8E8E34343400000000
      000000000014140B8A8249BDB585C4BF91CAC49EAFA66B423D227A7242C3BC90
      C7C198C1BA8EB3AA6E4742260000000000000000006846BA726CEB685CD65541
      E1CBCFAEFFFFFCB1CA96C3D5ADC3D6AEC4D6AEC4D6AFE6EEDDD3CFD600000000
      0000000000CC9F19FFAE4CF6A741FDA92D93B2EAF2F3FF8F92E79DA1EA9EA2EA
      9EA2EA9FA2EACFD0F5C2C8DB0000000000000000000F0F0F6969699292929595
      95ACACAC969696363636676767ACACAC9F9F9F9393938A8A8A36363600000000
      000000000014160C8C844BB5AD75B6AD7AC7C097B7AF7A4C46288A824AC6BF96
      BEB686B5AF75AFA66B4B45280000000000000000006C4BB87A71ED6B5FD8574C
      E3CDD1ACFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFF5EBFFD2CDD600000000
      0000000000CC9E1DFFB053F6A947FDA53893B3EBFDFFFFFAF6F8FFFFFCFFFDFC
      FEFFFCF5F3FAEFEBEFC2C2DB000000000000000000121212767676A5A5A5A6A6
      A6A6A6A65252520F0F0F262626868686A9A9A9A5A5A59D9D9D3E3E3E00000000
      00000000001B180D9D9456C2BC8EC3BA8FC2BD8F70683B17160C35321CACA266
      C4BF94C1BA8EBCB682554E2D0101000000000000006D4DB78180F27067D85B4E
      E3CACDAEFFFFFFB4CCA3C6D8B8CEE1B6C5D7B5C6D8B6EAF1E4D6D2D900000000
      0000000000CC9F1EFFB364F7AC4EFDA93C95B5E9FFFFFF9C9BE6A9A7EAA7ABEE
      A3A4EAA4A5EAD7D8F4C9CBDB0000000000000000000F0F0F6969699292929292
      928989893535350D0D0D1515156666669292929292928C8C8C37373700000000
      000000000017160D8D844BB5AC76B4AD76AEA66848442814140B1F1D10897F48
      B4AD76B4AD76B1A86C4C47270000000000000000006F4EB79590F6736EDA6153
      E5CACAAFFFFFFF478C0A519316529317529418539519C4D9B5D8D6DA00000000
      0000000000CCA020FFBE74F7AC58FEAB4297B6E7FFFFFF181AD12021D32122D3
      2222D32223D3B5B3ECCED4DC0000000000000000000F0F0F6F6F6F9999999A9A
      9A9797977F7F7F7373737676768D8D8D9A9A9A9B9B9B92929239393900000000
      000000000017160C948B4FBAB37EBBB27EB8B07BA89E5C9A8F529D9354B2A96D
      BAB37EBCB37FB6AD734E492A0101000000000000007154B49497F9827ADE6860
      E9C6C7ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D1D400000000
      0000000000CCA023FFB97EF8B565FEAE5296B3E5FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFEFEC9CCD50000000000000000000000002828283A3A3A4040
      403E3E3E3939393C3C3C3838383A3A3A4141413E3E3E35353514141400000000
      00000000000000003C3720534D2C534D2C544F2D544F2D544F2D4D49294F4A2A
      59522E554F2C4944271D1A100000000000000000007154B49C9EFA8486E07C75
      ECC6C6ADFFFFFFFDFCFDF2FEF1F6FDF1FFFFF8FBFBFDD3D1D6A7A5AA00000000
      0000000000CCA123FFBE84F8B272FFB76699B5E3FFFFFFFFFFFFFBF7FFF7F5FF
      F9FEFFF5F8F7DBD7CCB0B0A70000000000000000000000000000000A0A0A4B4B
      4B2525250000000000000000000707074848482B2B2B00000000000000000000
      00000000000000000000000000000000000000000000000000000000000C0C07
      605A343B361F0000000000000000000000000000007457B29A9BFA8B89E2817F
      EEC0C0A8FFFFFFFDFCFDFEFCFEFAFFFBFFFFFF5C595F92A576C9CAB500000000
      0000000000CCA226FFBE85F9B677FFB76F97B2E1FFFFFFFFFFFFFFFFFFFEFFFF
      FFFFFF5C729B636DCF89A5E10000000000000000000000000000001212127474
      743939390000000000000000000C0C0C6F6F6F42424200000000000000000000
      0000000000000000000000000000000000000000000000000000000000121009
      8D834C5C57310503020000000000000000000000007A5DB1B9B8FF8684E1827F
      EDC9C8B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7A7ECBD2BE00000000000000
      0000000000CAA42CFFD0A0F9B574FFB8729CB9E4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF6779B39098E50000000000000000000000000000000000001616167575
      753D3D3D00000000000000000011111170707044444402020200000000000000
      0000000000000000000000010000080904030303000000000000000000000000
      4541247C754338361E0000000000000000000000007A62AFB4B6FFA09EE79391
      EACBCB9ABFBE98B0B087B2B388ABAD7FABAD7BA2A5703F246E00000000000000
      0000000000CAA42EFFCDA0FAC58EFCC082BBAAB6BCA6ADB2A0A2B2A0A4B09897
      AD9895A99581A6840A0000000000000000000000000000000000004B4B4B7878
      787171712222220606060808084D4D4D80808060606044444400000000000000
      00000000000000000000000F0E07595531322E1A010100000000000000000000
      19170D94894F5A56310000010000000000000000007A61AFB6BEFFA29DFFAAA5
      FF817DFF807CFF7372FF746BFF7165FF5E54FF5746F045248B00000000000000
      0000000000CAA42DFFCAA6FFCC8EFFD290FFC06DFFC16CFFBA63FFBE5CFFBD55
      FFB347FFAD39B18A0B0000000000000000000000000000000000003434344040
      408888887A7A7A62626266666691919162626236363600000000000000000000
      000000000000000000000012120A847E4792884E2C2A170805040B0A060A0906
      615C34A498574944280101010000000000000000007A62B5B5BFFF9394749899
      879A9A8692927C95967F92937C9E9F879FA1816D67F949288B00000000000000
      0000000000CDA52EFFCCA78593A0939AA1969EA6919AA2939CA58F99A2929CA6
      8997A6FFAF52B1890E0000000000000000000000000000000000000000000606
      063B3B3B5555555454545555555050501E1E1E00000000000000000000000000
      0000000000000000000000060703413E24968D52787041716B3C807845807845
      A59958726A3E1C190F000000000000000000000000FFFFFFACA5F6FAFDEBB9BB
      B5FFFFFFFFFFFFFFFFFFFFFFFFB7B8B5BEC1B67868DBFFFFFF00000000000000
      0000000000FFFFEAFAC281CFD8ECADB0B8FFFFFFFFFFFFFFFFFFFFFFFFB1B2B6
      AAADBBF1AD4BFFFCE30000000000000000000000000000000000000000000000
      0000000001010102020202020201010100000000000000000000000000000000
      00000000000000000000000000000708043A361F534D2C6B653A787040776F3F
      5A56311F1D10000000000000000000000000000000000000FBFEF2D1D3CBD8DB
      D49595957F7F7F8080807A7A7AC1C2BED6D8D3FCFFED00000000000000000000
      0000000000000000F0E5B6DECD8CC5C1BA9C9C9C9291909392918E8E8DBCB7AC
      E4D18CECE3B80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001A160C2923132923132A24142620120B090500000000000000000000000000
      00000000000000000000000000000000000A0B06242314292615292615282515
      1B19100000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000004A4B14434B5400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000142F4B54434300000000000000000000000016120A251F
      119B8449BBA56DB29A5CB59E63B8A168584B2A18150C0B090500000000000000
      00000000000000000000000B090619170D595330B2A86EAFA66BAAA261B4AC73
      9C93552B271617150B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E5B160C0BB457526400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000163D5EB2EFFE4390C5000000000000000000251F117563379E86
      4AC4B182BAA46C665730947E46C7B689B39B5F907B444C41240E0C0600000000
      0000000000000000100D084F4A2A8A844AAEA468C2BC8E8F874C615935B2A86E
      C0B98A9B925478713F2D29180000000000000000000000000000000000000000
      000000000000000000000000000000000000006660160C0BB40000FF524E4300
      0000000000000000000000000000000000000000000000000000000000000000
      000000174466B2EFFE56BBF11B5B8D00000000000016120A907B44C3B07FC9B8
      8DCFC099B69F6443391F806D3CC9B78BCCBC94C7B587B8A168493E2300000000
      0000000000020101534D2CB5AC73C2BB8FC8C299C3BC907C75423E3D22ADA366
      C9C29CC5BE92BFB788998F52201D10000000090A3208093207093004082F0408
      2D03082C00072B00072900082900082967611C0C0BB40000FF59524300000000
      0000321C09321B083119072F16052E14042C12032B0F01290D00290C00290C00
      1C4868B2EFFE55BBF11B649800000000000000000017140B937D45BBA66FBDA8
      73CCBB92BDA8734F4325907B44CBBB91C3B181BBA66FB69F644E422400000000
      000000000002020256512EB1A76DB8AF72C1B986C7C0968B834A494428B7AE75
      C7C198B7B07BB6AE769A9153211F120000003438CFF9F9FAF5F6F6F1F3F4EDF1
      F3B3BBC3888EA98B8FAB909CA8CFD5DCBBC3C5342FD85F574300000000000000
      0000CF7E35FAF9F9F7F5F5F5F1F1F3EDEEC3B3B3A99288AB968BA89090DCCFCF
      C5BBBE51B6ED1B6BA10000000000000000000000001B170DA68D4EC7B689C7B6
      89C8B68A74623617140B382F1AB39B5FCAB98EC7B689C2AF7E584B2A01010100
      0000000000020101615C34BBB387868DCA8B94CE666DA936311D17140C6A6339
      C1B98CC3BC8FC3BC8FA9A0622624150000003639D1FFFFFFFDFDFEFAFBFC939A
      B6D0BCFDDFC7FEECDAFFF3E7FFBDBFD09DA7B1D0D8DA00031600000000000000
      0000D18237FFFFFFFEFDFDFCFAFAB79E93FDF1BCFEFBC8FFFFDAFFFFE8D0C4BD
      B19D9DDAD1D416070000000000000000000000000018150C937D45BBA66FBBA6
      6FB59D614C412416120A211C0F8D7843BBA66FBBA66FB7A0654F432500000000
      00000000000202045451316470B74C5FD8455AE4444E8A211E1014120B444024
      ACA364B5AC76B5AE779B92542221110000003939D2FFFFFFFFFFFFC4CAD0BFAD
      FBC1B0FAE3CBFDEEDDFFF7EFFFFCFAFF97A1AFD4DBE000031600000000000000
      0000D38539FFFFFFFFFFFFD0C4C4FBE6AEFBE7B0FEFDCBFFFFDDFFFFEFFFFFFA
      AF9A98E0D4D516070000000000000000000000000017140B9B8449C0AB78C0AB
      78BEAA76AF9555A0884CA38B4DB7A067C0AB78C0AC7ABBA66F52452601010100
      00000016AD0005212C36724356D4253FE66171D26A75B49F94539B9053A69D5B
      B7B07BBBB27FBCB37FA299582320130000003A3AD5FFFFFFFFFFFF9FA2D9B5A6
      F9D2BDFDE4CEFEEBD8FFF2E5FFF4EAFFEBE0F8D7DDE200031600000000000000
      0000D5883BFFFFFFFFFFFFD9B99FFADFA6FDF2BDFEFCCFFFFFD8FFFFE6FFFFEB
      F8F7E0E2D7D81607000000000000000000000000000000003A321C5347275B4D
      2B574A295044265649285044265347275B4D2B584B2A4C41241E190E00000000
      00000021FC0018B5001DDF011BCA061471232C63242E655650294F4A2A4E4929
      524E2C59532F504C2A3D3B200E0B060000003D3CD7FFFFFFFFFFFFA1A1E5BBAB
      F9DDC8FDD5C3FDEAD6FEEAD6FFECD9FFE9D6FEDAE1E500031600000000000000
      0000D78B3DFFFFFFFFFFFFE6C3A1FAE3ABFDF8C9FDF2C4FEFED6FFFFD6FFFFD9
      FEFDD6E5DBDC160700000000000000000000000000000000000000100E086A5A
      32352D190000000000000000000E0C0665562F3D341D00000000000000000000
      00000000000022FD0021FA001CD80015A50014A00015AF00021C000016010003
      2D291869623918160C000000000000000000413FDAFFFFFFFFFFFFC4C8DDB4A6
      F9E7D1FDF3E7FFD2BEFCD9C2FDDEC5FEC8BFE5DFE4E800031600000000000000
      0000DA8F3FFFFFFFFFFFFFDDCDC5FADEA6FEFED1FFFFE8FCF1BEFDF7C2FEFAC6
      E5DBC0E8E0E11607000000000000000000000000000000000000001D180DA28A
      4C52452600000000000000000014110A9B84495E502C00000000000000000000
      00000021FE0021FF0022FC0021F51025AD0B1C980925DF001EE60019BE000126
      4440249F97572521140000000000000000004441DBFFFFFFFFFFFFFCFCFC948F
      F5C3B0FBD2BDFDBEADFBB9A8FAC7B4FCDADEE3E5E8EC00031600000000000000
      0000DC9241FFFFFFFFFFFFFCFCFCF5C790FBE8B1FDF2BDFBE5AEFAE2A9FCEBB4
      E3DADAECE5E5160700000000000000000000000000000000000000221D10A38B
      4D5649280302010000000000001B170D9C854A61522D05050300000000000000
      00000022FF0022FE0020FA001ABC30366B4A4C68161F58000A57000000000000
      464025A196562523140000000000000000004641DEFFFFFFFFFFFFFFFFFFF9F9
      FAADAEEF9B91F7A79BF7B2ADF4E2E4E7F6F7F9EAECEF00031600000000000000
      0000DE9542FFFFFFFFFFFFFFFFFFFAF9F9EFCEAEF7CE92F8D69BF4D6AEE8E2E2
      F9F6F6EFEAEA1607000000000000000000000000000000000000006A5A32A68D
      4E9E864A322B180C0A060E0C066D5C33AF955585713F61522D00000000000000
      00000000000020FE0022F800139A323A6D92884E0F1019000000000000000000
      484428A19656292816000000000000000000413BDF7F7CFF7072FF626CFF5464
      FE445CFF3455FF244CFF1443FE033BFF023AFF023EEC00031600000000000000
      0000DF933BFFC17CFFB570FFA763FF9954FF8A45FF7A35FF6A25FF5A14FF4A04
      FF4903EC3C031607000000000000000000000000000000000000004B40235B4D
      2BB59D61AA90508975418F7943BAA46C8874404C412400000000000000000000
      00000022FF0000000020FA001BCD414A8AA89E5B635E350C0C07070603292616
      8E874DA49A58686137000000000000000000292698867EFB7370FA6367FA5561
      F94559F83651F7274AF61742F6083AF50237F40136D300000200000000000000
      0000986326FBC57EFAB871FAAA63F99B55F88C46F77C37F66D28F65D18F54D09
      F44703D336020200000000000000000000000000000000000000000000000C0A
      065448287665387665387866387160352C251400000000000000000000000000
      00000000000000000021FC0021FA222B648A8049B3A972857D477F76439C9355
      B1A86C615C344C44280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0004030205050307060305050305050300000000000000000000000000000000
      00000000000000000021FC0020FA0000002E2C19736B3E7A7242797141797141
      5C57311210090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002421
      4600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000058300F010000000000000000000000000000
      000000000000000000000000000000000000000000000000344FC97D8CCCAEAE
      AEAEAEAE00000000000000000000000000000000000000000000000000000000
      00000000000000000000FF6363FFB8B8ACD0D095000000000000000000000000
      0000000000000000000000000000000000004E4E4E424242272727000000AFA9
      E5C8C4DC06061C02050100000000000000000000000000000000000000000000
      00006933334B3A3A272726371200F9C595ECD0B4220C00000006000000000000
      0000000000000000000000000000000000000000000000003450CB3450CB3450
      CB475AB0475BB37C7C7C656E977E7E7E00000000000000000000000000000000
      00000000000000000000FF0000FF0000FF0F0FEE0A0AF583837C3131CC999968
      0000000000000000000000000000000000003939397D7D7D9494945050504C4C
      4C525F3F849B45BED156C9DB56576D2A03070100000000000000000000000000
      0000403232807A7A959594674C3A5E4C3A23387B1E5BC2308FF73298FF103587
      0000080000000000000000000000000000000000003450CB3450CB3450CB3450
      CB3450C93450C93450CB344FC9656E987E7E7E00000000000000000000000000
      00000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF3130CC
      9796650000000000000000000000000000004242428C8C8CBCBCBCD4E184D5E0
      6C9BB04C65812E7D963998AB4CD6DA98E5E7904A5B3700000000000000000000
      00004242428C8C8BB7BCC069B2FC4DADFF206FDC0F39A01551BA216FD67FC0F3
      78CAFF1D2C750000000000000000000000000000003450CB3450CA344FCA3450
      CA3450CA344ECA3450CA344FCA344EC83137AD7E7E7E00000000000000000000
      00000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      1E00DF9771690000000000000000000000006A6A6A9F9F9FC5C5C5EBEA9EECE9
      A8EEE4B0DED3ADE8D9B78A8A8AFDFEFC979797EBDAAB4E613C00000000000000
      00006A6A6A9F9F9FC2C7C88AD5FF95DDFF9FECFF99E6F2A6F4F96184B3FBFCFF
      8C87A799F2FD212D7C00000000000000000000000034CBAF34CBAF76DCC934CB
      9A52D3B386DDBD38CCB07ADDC434CBA134CBAE7E88857E7E7E00000081818100
      000000000000FFFF00FFFF53FFFF00FFD526FFFB75FFE000FFFF6BFFFB00FFE8
      00FFFF4EC4AF8A75750000008C7E7E0000009D9D9DACACACB3B3B3B7B7B7BFBF
      BFC5C5C5BBBBBBA79CEA817AE3E7E8F0F2F2F2B5B7C40C133700000000000000
      00009D9D9DACACACB2B0B7A6ABC8B0B0CEBAB8D2CCBDA9FFC487FFA35EF7E6E0
      F3F0F2DBAD9E430D0000000000000000000000000000000034CAAE5CA2D32A97
      A12B61A68E91952B5CA29FBBE332C2C134C9AE7E7E7E00000000000000000000
      000000000000000000FFFF3781FF0087C00029D67876BD000DC6A9B4FF00C4F5
      00FFFF659A99000000000000000000000000000000C4BDEAFBF7FDF6EEFBF0E5
      FAE6DEF5D2C4F2B3A6EC8E87E56967DF8084DDE9E9E9DEDEDE484D7F00000000
      0000000000F9D5AEFFFFF5FFFFEAFFFCE0FDF2D6FFE8B7FFCF93FFAE6DFF8E47
      F99564E6E7ECE2D9DDA2472510020000000000000034CBAF34CAAE9EDDE3298F
      9F1E60733C5ECD5584CE9FBFD32D72AF34CBAE7E7E7E7F7F7F00000000000000
      000000000000FFFF00FFFF94E8FF0082C20046890000FF2439FF9CC2FF0032D9
      00FFFF5CA2A2966B6B000000000000000000000000FFFFFFFBF8FDF6EEFBF3E8
      FAA397DEE3D6F6B9ACED9B90E77370E1585ADC373ED5C7C8D1D6D6D6AAABAE00
      0000663604FFFFFFFFFFF6FFFFEAFFFEE3F6BF7FFFF4CDFFD39AFFBB78FF9652
      FF7C35FF5B0DE3BFB5DCD1D3CB9A8D1D070000000000000034CAAE94DDE12487
      8C1C2A6C7680C9868686A7B0B531BD9E34C9AE3EBEA77E7E7E00000000000000
      000000000000000000FFFF88E5FF0079A200008C5639FB7285A69FB2D600EFE5
      00FFFF03FBFB9964640000000000000000009990C2FFFFFFFBF8FDF6EEFBF0E5
      F9E9DCF7A598DFD4CEEF9C90E7857CE35F5EDD474ED83B46D6636DCFD5D5D500
      0000E0AD72FFFFFFFFFFF6FFFFEAFFFCDFFFF8D4F7C280FAE1C3FFBC78FFA860
      FF853CFF6720FF5812F3703FD8D2D826020000000000000034CAAE34CAAF2BA9
      903399C63040BA69CFBF289D8634CBB034CAAE34CAAE7E7E7E7E7E7E00000000
      000000000000000000FFFF00FFFF00E0CF0081FF0600F73CFFFF00D9C800FFFF
      00FFFF00FFFF54AAAA9D6262000000000000F7F3FCFFFFFFFBF8FDF6EEFBF0E5
      F9E3D6F6D2C4F2BDADEBC6C1E9867DE36B66DE5250DA424CD74B58D82B3BC700
      0000FFFCF0FFFFFFFFFFF6FFFFEAFFFCDFFFF4CDFFE7B7FDD89BF8D4B2FFAA61
      FF9245FF7B2BFF5F1AFE6125F1410133120300000000000034CAB034CAB034C9
      AF1C6E6B0F3A192A9C9934C8AE34CBB034CAAF34CAB034CBB05D9E927A8E897E
      7E7E00000000000000FFFF00FFFF00FFFF00858400470300B6BB00FFFF00FFFF
      00FFFF00FFFF00FFFF29F0D43FDABEA87458726A99FFFFFFFBF8FDF6EEFBF0E5
      F9E3D6F6D2C4F2C3B4EFA8A0D98075E26E69DF5351DA4A49D84855C93745C600
      0000C5873EFFFFFFFFFFF6FFFFEAFFFCDFFFF4CDFFE7B7FFDCA4F0BC89FFA658
      FF9449FF7D2CFF7522F2581FF2490B2D12048686868585855083AA3495C93496
      CA349DCB34A8CB34A0CB3497CB3497CB3497CB3496CA3497CB3597C9349BCB69
      6D88B3B37EBAA26C1BAEF00078FF007CFF008BFF009CFF0095FF0080FF007AFF
      007AFF007AFF007BFF0080FF008AFF4336BB9A8DD9FFFFFFFBF8FDF6EEFBF0E5
      F9E2D4F6D2C4F2C0B1EFA898E6AEABD87D78E25351DA5757DB2B2FB43644C600
      0000F4B872FFFFFFFFFFF6FFFFEAFFFCDFFFF3CBFFE7B7FFDAA1FCC882EEBD95
      FFA05BFF7D2CFF7F33DB4D04F2480A3413043450CB3450CB3450CB3451CB3450
      CB3450CB3450CB3450CB3451CB3451CB3451CB3451CB3451CB3451CA3452CB34
      51CB0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000008F81D5FFFEFFFAF4FDCAC0
      EDD4D2EAD7C9F3C0B1EEB0A1EBA493E8786FC8B1AFE05A5CD23131B23744C700
      0000000000F2B064FFFFFEFFFFF2FBDDB2F6DDC6FFECBDFFDAA0FFCE8DFFC77C
      EB974CF3BF9CF77835DA5509F34C0B3112023450CB3450CB3450CB3450CB3450
      CB3450CB3450CB3450CB3450CB3450CB00000000000000000000000000000000
      00000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000000000000000000000000000000000000000000000000000006A61A30000
      00000000605BA6DCD6F0AE9DEA9F90E78F82E5786FE180809C8183C0282FBF00
      0000000000000000E68B27CF8335000000000000D2752FFAE7CCFFCE88FFC178
      FFB268FF9E51C47E58E18B60E74B00270E033450CB3450CB3450CB3450CB3450
      CB3450CB3450CB00000000000000000000000000000000000000000000000000
      00000000FF0000FF0000FF0000FF0000FF0000FF0000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007573ABCCC0F1877AE39A90E7000000000000A4A5C111
      173C000000000000000000000000000000000000000000000000D2824CFEE0B3
      FFAD5EFFBA781D0300B94300DCA4894914040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009090B4C9C6F300000000000000000000
      0000000000000000000000000000000000000000000000000000000000BB4800
      D5966FFFD8BA000000000000000000000000424D3E000000000000003E000000
      2800000040000000400100000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000F83FF83FF83F0000F83FF83FF83F0000F83FF83FF83F0000
      C007C007C0070000C007C007C0070000C007C007C0070000C007C007C0070000
      C007C007C0070000F83FF83FF83F0000F83FF83FF83F0000F83FF83FF83F0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFF07E107E107E1FFFF
      03C103C103C1FFFF018101810181FFFF000100010001FFFF800380038003FFFF
      C447C447C447C007E28FE28FE28FC007F18FF18FF18FC007E387E387E387C007
      C443C443C443C007800180018001FFFF010101010101FFFF038103810381FFFF
      07C107C107C1FFFF0FE10FE10FE1FFFFFF8087E387E387E3FF8187E387E387E3
      F98787E387E387E3F0C387E387E387E3E06187E387E387E3E00187E387E387E3
      E00187E387E387E3F98187E387E387E3F9FF87E387E387E3F90887E387E387E3
      F90083E383E383E3F900002300230023F900100010001000F980100010001000
      F981100010001000FF81100710071007FFFFFFFFFFFFFF80FFFFFFFFFFFFFF81
      FFFFFFFFFFFFF987FFFFFFFFFFFFF0C3FE0FFE0FFE0FE061FD0FFD0FFD0FE001
      F80FF80FF80FE001F80FF80FF80FF981FC0FFC0FFC0FF9FFFC0FFC0FFC0FF908
      F40FF40FF40FF900F40FF40FF40FF900FFFFFFFFFFFFF900FFFFFFFFFFFFF980
      FFFFFFFFFFFFF981FFFFFFFFFFFFFF810001FFFFFFFFFF800000FFFF8000FF81
      000000018000F987000000018000F0C3000000018000E061000000018000E001
      000000018000E001000000018000F981000000018000F9FFC00700018000F908
      C00700018000F900C00700018000F900C00700018000F900C00F00018001F980
      C01F0001FFFFF981C03FFFFFFFFFFF81FFFFFFCFFFFFF801F800FC07FFFFF801
      F80080030001F801F80080030001F801F800800300010001C800800300010001
      C000800300010001C00080030001000100008003000100010001800300010001
      00038003000100010003800300010003000FC0030001000F001FE0030001001F
      C7FFF0030001003FCFFFF00FFFFF007FFFFFFF9FFC7FFFFFFE1FFF8FF87FC3FF
      FC0FFF87F007C03FF8070003E003801FF0070001C003800FE003000080018005
      C0010001C001C00F8001000380018007800000078001C0078000000FC001C003
      8000001FE001C0008000007FF0010000800000FFF8FD0000C00001FFFCFF003F
      F08103FFFEFF01FFFFC307FFFFFFFFFF0607FFFFF803FFFF0001FFF98003E3CF
      0001FFF18003C1870001FFE18003C927000180038003C927000100078003E007
      0001000F8003F00F0001000F8003FC3F0001000F8003FC3F0001000F8003F83F
      0001000F8007F81F0001000F8007F19F0007000F8007F38F0007000F8007F7CF
      03E7000F8007F7CFFFFFFFFFC00FFFEF00000000C00737FF00000000C007107F
      00000000C007001F00000000C007000F00000000C007000700000000C0070007
      00000000C007800300000000C007800100000000C007000100000000C0070001
      00000000C007000100000000C007000100000000C007800100000000C007EC00
      00000000C007FF0C00000000C007FFCFFFFFFFFFFFFF0000FFFFFFFFFFFF0000
      0F3F0F3F0F3F0000000F000F000F000000030003000300000003000300030000
      0003000F00030000000700070007000000070007000700000003000300030000
      000300030003000000010001000100000001000300010000001F001F001F0000
      001F879F001F000087FFFFFF87FF0000FFFFFFFFC007C007FFFFFFFFC007C007
      00010001C007C00700010001C007C00700010001C007C00700010001C007C007
      00010001C007C00700010001C007C00700010001C007C00700010001C007C007
      00010001C007C00700010001C007C00700010001C007C00700010001C007C007
      00010001C007C007FFFFFFFFC007C00700010001FFFFFFFF00000000FFFFFFFF
      0000000000010001000000000001000100000000000100010000000000010001
      000000000001000100000000000100010000000000010001C007C00700010001
      C007C00700010001C007C00700010001C007C00700010001C00FC00F00010001
      C01FC01F00010001C03FC03FFFFFFFFFFFCFFFCFFFFFFFFFFC07FC07FFFFFFFF
      8003800300010001800380030001000180038003000100018003800300010001
      8003800300010001800380030001000180038003000100018003800300010001
      80038003000100018003800300010001C003C00300010001E003E00300010001
      F003F00300010001F00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFF800F800
      FCFFFCFFF800F800F8FFF8FFF800F800F00FF00FF800F800E00FE00FC800C800
      C00FC00FC000C00080078007C000C000C007C007000000008003800300010001
      C003C00300030003E003E00300070007F003F003000F000FF9F3F9F3001F001F
      FDFBFDFBC7FFC7FFFFFBFFFBCFFFCFFFFFFFFE1FFF9FFF9FFE1FFC0FFFCFFFCF
      FC0FF807FFC7FFC7F807F00700030003F007E00300010001E003C00100000000
      C0018000000100018001000000030003800000000007000780000000000F000F
      80000000001F001F80000000007F007F8000800000FF00FFC000C00001FF01FF
      F001E00003FF03FFFF83FF81FFFFFFFFFFFFFFFFF801F801E3CFE3CFF801F801
      C187C187F801F801C927C927F801F801C927C92700010001E007E00700010001
      F00FF00F00010001FC3FFC3F00010001FC3FFC3F00010001F83FF83F00010001
      F81FF81F00030003F19FF19F00070007F38FF38F003F003FF7CFF7CF003F003F
      F7CFF7CF003F003FFFEFFFEF007F007FF81FF81FF803F803E007E007C003C003
      C003C00380038003800380038003800380018001800380038001800180038003
      80018001800380038001800180038003C003C00380038003E007E00780038003
      E387FF8780078007E187E3C780078007E007E1C380078007E00FE00380078007
      F01FE00780078007F83FF00FC00FC00FFFFFFFFFF81FF81FFFF8FFF8E007E007
      FFF0FFF0C003C003FFE0FFE08003800100010001800180010003000380018001
      0007000780018001000700078001000100070007C003000100070007E0078003
      00070007E387000700070007E18700C700070007E00781C700070007E00F4007
      00070007F01FC007FFFFFFFFF83FC80FFFFFFFFF77FF12FFC3FFC3FF107F001F
      C03FC03F001F000F801F801F000F0007800F800F000700078005800500070007
      C00FC00F800380018007800780010000C007C00700010000C003C00300010000
      C000C0000001000000000000000100000000000080018000003F003FEC01CC00
      01FF01FFFF0CFF00FFFFFFFFFFCFFF8F00000000000000000000000000000000
      000000000000}
  end
  object ImageList5: TImageList
    Left = 72
    Top = 187
    Bitmap = {
      494C010118001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001001800000000000060
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001A190D282514282514292615242314
      0A0906000000000000000000000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000014120B242213948B50B4AC74ABA362AFA46AB2AA6E
      55502E18160C0A0905000000000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000242213716B3C968D52BFB787B3AB73625D358E854CC2BC8E
      ADA3668A814B4946270C0B08000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000014140B8A8249BDB585C4BF91CAC49EAFA66B423D227A7242C3BC90
      C7C198C1BA8EB3AA6E474226000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000014160C8C844BB5AD75B6AD7AC7C097B7AF7A4C46288A824AC6BF96
      BEB686B5AF75AFA66B4B4528000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001B180D9D9456C2BC8EC3BA8FC2BD8F70683B17160C35321CACA266
      C4BF94C1BA8EBCB682554E2D010100000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000000000000000000000FFFF0000FF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000017160D8D844BB5AC76B4AD76AEA66848442814140B1F1D10897F48
      B4AD76B4AD76B1A86C4C4727000000000000000000EEF3F50000160D3C5A0003
      29000000000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF0000FF00FFFF00FFFF
      00FFFF00FFFF00000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      000000000017160C948B4FBAB37EBBB27EB8B07BA89E5C9A8F529D9354B2A96D
      BAB37EBCB37FB6AD734E492A010100000000000000EEF4F50000170D3C5B0003
      29000000000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000FFFF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF00FFFF00000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      00000000000000003C3720534D2C534D2C544F2D544F2D544F2D4D49294F4A2A
      59522E554F2C4944271D1A10000000000000000000F1F5F80000190D3B580003
      29000000000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF0000FF00FFFF00FFFF
      00FFFF00FFFF00000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      00000000000000000000000000000000000000000000000000000000000C0C07
      605A343B361F0000000000000000000000000000007B95A6001D400F3F5C0027
      49B8CAD1000000000000000000000000000000000017124461526F8500000000
      000000000000000000000000000000000000000000FFFF0000FF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000121009
      8D834C5C57310503020000000000000000009AA9B70011370022430030520019
      3E000C31A9BAC5EFF5F700001020416000000000002210435E5B768A00000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000080904030303000000000000000000000000
      4541247C754338361E0000000000000000000022430D3857FFFFFF000000FFFF
      FF00244900001CFFFFFF000023002D4E294E6A00183A0D3C5B0937584B6E8339
      617900000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000F0E07595531322E1A010100000000000000000000
      19170D94894F5A56310000010000000000000F3D5C163D5ACBDAE1000000FFFF
      FF002043000C30FFFFFF00001D0C38570C3C5B093A590A38570B3C59093B5B07
      3958000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000012120A847E4792884E2C2A170805040B0A060A0906
      615C34A49857494428010101000000000000000D33001C3E92A8B40000007896
      AE00193B000018FFFFFF00002107385600163900072C001F42000F3500082E00
      1136000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000060703413E24968D52787041716B3C807845807845
      A59958726A3E1C190F000000000000000000F0F5F7809BABDFE8EC000000DBEE
      F77795A4FFFFFFEFF5F800001F0D3959FFFFFFFFFFFF50708800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000708043A361F534D2C6B653A787040776F3F
      5A56311F1D100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0B06242314292615292615282515
      1B19100000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FCAFBBFA0000FB0016FB0000FB0000F80007FF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000757BD92123B0383BBABCC4EC00000000000000000000000000
      00000000000000000000000B090619170D595330B2A86EAFA66BAAA261B4AC73
      9C93552B271617150B0000000000000000000000000000000000000000000000
      00000000000000000000000000FBC3CCFA000FFB142EFB94A8FBB0BDFDC8D100
      00000600481100E50F00E507006E000000000000000000000000000000000000
      0000000100131000D50F00E50F00CD0000000000000000000000000000000000
      000000006367D6090AB30000B00101B32B2EC3B3BBEB00000000000000000000
      0000000000000000100D084F4A2A8A844AAEA468C2BC8E8F874C615935B2A86E
      C0B98A9B925478713F2D29180000000000000000000000000000000000000000
      00FFFFFFFFFFFC000000000000FBF7FAFB6B7FFB0017F8A2B500000000000000
      00000600510B00FF0800FF0B00FD06006E000000000000000000000000000000
      0100120E00DC0B00FF0800FF0A00E50000000000000000000000000000000000
      004F52DA0404C30000C50000C80000C50001BE3133C9C3CCF000000000000000
      0000000000020101534D2CB5AC73C2BB8FC8C299C3BC907C75423E3D22ADA366
      C9C29CC5BE92BFB788998F52201D10000000000000000000000000000000F9F8
      FC918BFA8175FBFFFFFE000000000000FBE3E8FA1F3CFA1829FBF3F700000000
      00000600510D00FF0800FF0800FF0B00FD06006E000000000000000000010012
      0E00DC0B00FE0800FF0800FF0C00E50000000000000000000000000000004245
      DA0102D20000D90000DD0000D90000D10000C90101C24549D200000000000000
      000000000002020256512EB1A76DB8AF72C1B986C7C0968B834A494428B7AE75
      C7C198B7B07BB6AE769A9153211F12000000000000000000000000F9FCFA8277
      FB0000FB0C00FB9E8FFBFFFFFE000000000000FDD9E0FA0F2FFA536AFCFFFF00
      00000100100F00D40C00FE0800FF0800FF0B00FD06006F0000000100130F00DD
      0B00FF0800FF0800FF0B00FC05005F0000000000000000000000004346DB0101
      D50000E00000EA0000EC0000E50000DD0000D50000CD0404C7696EE000000000
      0000000000020101615C34BBB387868DCA8B94CE666DA936311D17140C6A6339
      C1B98CC3BC8FC3BC8FA9A062262415000000000000000000000000D0CCFD5244
      F92110FD2D1DFB6F61FCBBB6FBFFEBE7FC99A4FB93A1FB2741FA1623FBA1B000
      000000000000000D0E00D30B00FE0800FF0C00FF0E00FD07007D0F00DD0E00FF
      0B00FF0800FF0B00FC0500600000000000000000000000006467E31616D90505
      E40000EC0000EE0000EE0000ED0000E80000E00000D80000D01112D08C93EE00
      00000000000202045451316470B74C5FD8455AE4444E8A211E1014120B444024
      ACA364B5AC76B5AE779B9254222111000000000000000000000000F9FCFDE6E4
      FD8C86FB6865FAFFFFFEFFFFFFFFBEC0F60003FA0000FA0000FB0000F93D6000
      000000000000000000000D0E00D30C00FF0000001100FF0D00FF0D00FF000000
      0D00FF0B00FC0500600000000000000000000000006F72E85D5DE23A3AE91818
      EF0505EE0000EF0000EF0000EE0000EE0000EA0000E40000DC0000D5474AE200
      00000016AD0005212C36724356D4253FE66171D26A75B49F94539B9053A69D5B
      B7B07BBBB27FBCB37FA299582320130000000000000000000000000000000000
      00948EFC7E77FC000000000000FFFFFFFCC9CCFBDCE2FBF2F6FCFFFFFBFFFF00
      000000000000000000000001000D0E00D41000FF0000001200FF0000001200FF
      1000FC0500600000000000000000000000000000009B9EEE7C7CF06666F44646
      F21D1DF00505EF0000EF0000EF0000EF0000EE0000ED0000E80000E00C0CDEA1
      A8F30021FC0018B5001DDF011BCA061471232C63242E655650294F4A2A4E4929
      524E2C59532F504C2A3D3B200E0B060000000000000000000000000000000000
      008D81FF7E71FC00000000000000000000000000000000000000000000000000
      00000000000000000000000000000100200B00F61000FF0000000000001100FF
      070096000000000000000000000000000000000000AEAFF69494F77D7DF66B6B
      F55353F33232F11515F00707EF0404EF0A0AEF0101EF0202EE0606EB0B0BE662
      67F10000000022FD0021FA001CD80015A50014A00015AF00021C000016010003
      2D291869623918160C0000000000000000000000000000000000000000000000
      008C84FF7B75FD000000FFD8BCFF2648F992A5FFFFFF000000FCD0D5F95269F9
      899F0000000000000000000100120E00DD0E00FF0000000000000000001200FF
      0E00FD06006F000000000000000000000000000000C5C6FAACACF99191F78080
      F66D6DF55B5BF44545F23434F13131F14141F22E2EF12222F12020F01E1EEE1E
      1FEF0021FE0021FF0022FC0021F51025AD0B1C980925DF001EE60019BE000126
      4440249F97572521140000000000000000000000000000000000000000000000
      009B90FF7E71FD000000FFC1B7F70000FB0019FB4564FB2845FA0624FA0005FA
      B3C80000000000000100120F00DC0D00FF0000001300FF1000FF1000FF000000
      0D00FF0C00FD06006F000000000000000000000000D4D8FACFCFFBA6A6F89494
      F78282F67070F55E5EF44B4BF34D4DF36363F44D4DF33535F22B2BF12727F016
      16F00022FF0022FE0020FA001ABC30366B4A4C68161F58000A57000000000000
      464025A196562523140000000000000000000000000000000000000000000000
      009990FF7E72FF000000FFF8EDF93C55FA0006FB264CFB2947FB000DFB2A45FB
      FFFF0000000100120E00DC0B00FE0A00FF1100FF1100FC07006C0E00D41100FF
      0D00FF0800FF0B00FD06006E000000000000000000DCE4F9DCDDFBCECEFBABAB
      F99696F88585F67575F66B6BF58888F77F7FF66767F54F4FF33939F23131F132
      34F10000000020FE0022F800139A323A6D92884E0F1019000000000000000000
      484428A196562928160000000000000000000000000000000000000000000000
      007D72FC4F40FC000000FFFFFFFB8999F80016FB889DFBCAD3FB0424FA7487FD
      FFFF0200151000DD0B00FF0800FF0900FF0E00FC05006000000000000D0E00D3
      0B00FE0800FF0800FF0B00FD06006E000000000000000000DAE0F9D7D8FBD8D8
      FBC4C4FAB0B0F99C9DF7A7AAF8CBCBFBA0A0F88181F66868F45252F33939F276
      7BF30022FF0000000020FA001BCD414A8AA89E5B635E350C0C07070603292616
      8E874DA49A586861370000000000000000000000000000000000000000000000
      00A69BFC887EFD000000000000FCCAD3F80A2EFB324EFB6A81FB102CFBD6DDFB
      FFFF0600510D00FF0800FF0800FF0B00FC06006000000000000000000000000D
      0E00D30C00FE0800FF0800FF0B00E5000000000000000000000000000000BEC1
      F9AFAFF9A6A8F8BCC2F8D7DEF9CDD0F9C8C8FAB2B2F99797F76F6FF5777BF400
      00000000000000000021FC0021FA222B648A8049B3A972857D477F76439C9355
      B1A86C615C344C44280000000000000000000000000000000000000000000000
      00FEFFFEFFFFFD000000000000FAF2F3F94E68FB0000FB0522F8475FFBFFFF00
      00000600510E00FF0B00FF0D00FC050060000000000000000000000000000000
      00000E0E00D30D00FF0B00FF0D00E50000000000000000000000000000000000
      00000000000000000000000000E0E9F9C4C8F99D9EF78788F79FA4F500000000
      00000000000000000021FC0020FA0000002E2C19736B3E7A7242797141797141
      5C57311210090000000000000000000000000000000000000000000000000000
      00000000000000000000000000FDFFFFFDB3C2F8001BFB2B3EFBC6D5FEFFFF00
      000002001A060051060051050045000000000000000000000000000000000000
      0000000100100600510600510600490000000000000000000000000000000000
      000000000000000000000000000000001E05341A052B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007000614002125002A2A002A2A002A2A002A2A002A2A
      002A2A0029290014140000000000000000000000000000000000000000000000
      0000000020053534075A35075D3D086B3A09651900371B023000000000000000
      0000184356141D1E141D1E1A2240767A6D848B8B46464868656C1B2524252B28
      141D1E141D1E141D1E151E1F2738380000000000000000000000FF6363FFB8B8
      ACD0D09500000000000000000000000000000000000000000000000000000000
      00000000000000000000220017600088AC00C6CB00D0D000D0D000D0D000D0D0
      00D0D000C9C90064640000000000000000000000001A042E27103B390C603602
      643C066D3A09673B09663A09653A08653B09661900371B00391B032F00000000
      000013405400010100010102020DD1DDD257524F8F8289231E342A392C020303
      010104000101000101000202151F1F0000000000000000000000FF0000FF0000
      FF0F0FEE0A0AF583837C3131CC99996800000000000000000000000000000000
      000000000000000000002A00076A003C9D00B5DA00F5FA00FEFE00FFFF00FFFF
      00FFFF00F7F7007B7B0000000000000000000000004B19796849916F54956D54
      97694B8D66438A58337E4A1D733F12683A06651900371B003A1B003B00000000
      0000133F530000000000002B2324C8C4C5FFFFFFF4F8FF9EBCEE95B0F2000000
      141360000000000000000101151E1E0000000000000000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF3130CC97966500000000000000000000000000
      000000000000000000002A000067000683003B9B00B3CF00F4F400FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000000000420B713C00663F096C6847
      8D705294684E936A4A8D694B8D6A4C8D694B8D1700361B003A1B003B00000000
      0000133F540000000000000000060000320000024E5E787C90BB506C914E6BA8
      000000000000000000000101151E1E0000000000000000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF1E00DF97716900000000000000000000
      000000000000000000002A000067000080000678003C6000C1C200FEFE00FFFF
      00FFFF00F7F7007B7B00000000000000000000000044056F5C9CD15986C34007
      6C3F0C6C65438A6D5295694C906A4C8D6B4D8D1700351B003A1B003B00000000
      0000133F540000000000000000000B1743799CC29DB2E5AAC6F390B0D46180A5
      00001D000002000000000100151E1E00000000000000FFFF00FFFF53FFFF00FF
      D526FFFB75FFE000FFFF6BFFFB00FFE800FFFF4EC4AF8A75750000008C7E7E00
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B0000000000000000000000005156A35A91CA5C9BD04207
      71450E753F0A6D3B0769542D816C56927863941500351B003A1B003B00000000
      0000134054000000000006244580495E828EA4D8879FCD5A57BD3A439791ACDA
      4D5B77476684010630010100141D1D00000000000000000000FFFF3781FF0087
      C00029D67876BD000DC6A9B4FF00C4F500FFFF659A9900000000000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B0000000000000000000000004B318C5EA7DB421F823700
      6A64398D9F8FB8F1EFF7FFFFFFFFFFFD8A8B8D3A2B501B003A1B003B00000000
      000013405400000B4F789B0000117695C29BADECABC3FD90A9DD7A93BFA7C0FC
      697FAA4064890719241F366E141D1A00000000000000FFFF00FFFF94E8FF0082
      C20046890000FF2439FF9CC2FF0032D900FFFF5CA2A2966B6B00000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B0000000000000000000000005F4183A592B4FEFFFFFFFF
      FFFFFFFFFCFBFCFEFEFEFDFDFDF7F7F78B8D8E676A681500371B003B00000000
      0000123F5221425D1C2F4B08203F6D8AB98BA0E2A2BBF66A87BD6581B87F9DDE
      7994C70B295100060A2C4762383D5D00000000000000000000FFFF88E5FF0079
      A200008C5639FB7285A69FB2D600EFE500FFFF03FBFB99646400000000000000
      000000000000000000002A00006700008000007200163A00AFB000FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000000000696C6EC1C1C2FEFEFEFEFE
      FEFEFEFEFCFFFCFBFFFBFEFDFEFFFCFF8A8D8D636566372B4E1B003B00000000
      0000103D5148545D1D2D453755784B6DA492A6E4A9B3EF7691C55C79A97375A4
      6E82B91D3E6301091452616C848D8600000000000000000000FFFF00FFFF00E0
      CF0081FF0600F73CFFFF00D9C800FFFF00FFFF00FFFF54AAAA9D626200000000
      000000000000000000002A000067000080000173001E4200AAAB00F8F800FEFE
      00FFFF00F7F7007B7B0000000000000000000000005D5E5ED9DBDAFFFDFFFFFE
      FFFFFCFFD8FED897FF9747FF4710F910968C978C8C8C72747216003800000000
      0000103D50848183172A3F0F2A471732634D57755962787895C36C8CB75D7093
      627CAA000219000001B0AFAB78828100000000000000000000FFFF00FFFF00FF
      FF00858400470300B6BB00FFFF00FFFF00FFFF00FFFF00FFFF29F0D43FDABEA8
      745800000000000000002A000067000080000F8100668A00818200CCCC00FDFD
      00FFFF00F7F7007B7B000000000000000000000000646B6779C47911FE1102FA
      0200FC004ED84E57E157C1D3C1CFDFCFFAFCFAA0A0A268686A4D466600000000
      0000113E51BBB7B30718330E35572446721E42786E88B7B7CCF9ACC3F592A7DB
      6380B300102900071DCBC5C1959D9B000000B3B37EBAA26C1BAEF00078FF007C
      FF008BFF009CFF0095FF0080FF007AFF007AFF007AFF007BFF0080FF008AFF43
      36BB00000000000000002A00006700008000097C004B6F00919100DCDC00FEFE
      00FFFF00F7F7007B7B000000000000000000000000000000BEB5BFC1CDC1FFFF
      FFFFFFFFFFFFFFFFFDFFFDBEFDFE82FEFF38FFA6B3A97A7B7C42444600000000
      0000103C50CCC7C502071E36547443567241689594B1DDB2D0FD9AB6EF92ADE3
      2E4B6A5364790F1723B5B3B29DA59F0000000000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF00000000000000002A01016606067C02027100173B00AEAF00FDFD00FEFE
      00FFFF00F7F7007B7B000000000000000000000000000000000000ADB3AFFF0A
      FFF502F5FF00FFD840D8ED3EEEC6B9CADFB6E4EEDEEEB4B4B557585A00000000
      00000F3C50DFDED5B7BBBF27344D0B21350E254630476F43313F97C4FF5D7FB2
      112948182839BCBEBECBCBCD9AA3BB0000000000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF00000000000000000000000000000000
      000000000000000000002A14145C5E5E5027275E02183800AFAF00FEFE00FFFF
      00FFFF00F7F7007B7B000000000000000000000000000000000000000000AEB9
      AFFFFFFFFFFFFCFFFFFFF9FAFEC4C3FF9492FF5B5AFFA8A8C557595D00000000
      0000113F523A2747FFFFFE0108210F1A2E3C506512153E6F4E1A3B2922000003
      010C15040A1AFFFCF9ECEAE9080D0F0000000000FF0000FF0000FF0000FF0000
      FF0000FF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000028222252B0B0238F8F2723392600AAAA00F7F700F8F8
      00F8F800F0F0007777000000000000000000000000000000000000000000BEC3
      B80001FC1818E71615BD2C2DB14B4B9450516471725800000000000000000000
      00001640511340520F3B4F154053154154133E52133F52133F53133F54144054
      144054144154103C4F103C4F1944570000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001512122B65650E717101222E0B005A59008181008282
      008282007E7E003E3E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006070D06070F06070F06070F06070F06070F06070F06070F06070F
      06070F06070F06070F06070F0303060000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242951525DB35863B65863B65863B65863B65863B65863B65863B65863B6
      5863B65863B65863B65863B6404A930303060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000D20000B70000B40000BA0000
      BD0000BC0000C10000C10000BE0000BE0000C10000B90000AE000CA200003000
      0000262C575D68B8646EBB646EBB646EBB646EBB646EBB646EBB646EBB646EBB
      646EBB646EBB646EBB646EBB454F9D0304080000B60000A60000A60000A70000
      A70000A60000A60000A60000A60000A60000A60000A60000A60000A600008E00
      0000000000000000C0C0C00000000000000000000000000000005500FF5500FF
      000000000000000000000000000000000000F1F4FFFFCFFFFFD5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFACFFECDAFF16318A00
      00000A0B161C21411D21421E22441D21421E22441D21421E22441D21421E2345
      1C21411E23451C21411E234514182F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF453FFF00
      0000000000000000C0C0C0BEBEBE0000000000000000000000005500FF5500FF
      5500FF0000000000000000000000000000002F30FF0000FF0000FE0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FA0000FF00007000
      00002D34666771BC6A73BD6E77BF6872BD6F79C06670BC717AC16670BC727BC1
      646EBB727BC169BD5E6ECA614A9740020305FFFFFFFFFEFBFFFCF9FFFDF9FFFD
      F9FFFDF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFCF9FFFEFB2225FF00
      0000000000000000C0C0C09A9A9A786A946B45B95500FE5500FF5500FF5500FF
      5500FF5500FF000000000000000000000000E8EFFF7578FF7173FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E4FF2328FED6DEFF001C7C00
      0000363E7BABB1DAB6BBDFB3B8DEB6BBDFB2B7DDB8BCE0B2B7DDB8BCE0B2B7DD
      B9BEE0B1B6DD9DF6916CFF5876D46A0B0C18FFFFFFFFFDFAFFFEFCFFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFB2221FF00
      0000000000000000C0C0C09B9B9B776797693FBE5502FC5500FF5500FF5500FF
      5500FF5500FF5500FF000000000000000000292CFF0000FF0000FF0C0BFF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FE0000FF00006E00
      0000363E7B939AD099A0D29CA2D3989ED29DA4D4969DD19DA4D4969DD19FA5D5
      959CD09FA5D58ED9857EEE6F5FBD5306070FFFFFFFFFFCF7FFFDFAFFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFB291DFF00
      0000000000000000C0C0C09D9D9D7665996940BE5502FC5500FF5500FF5500FF
      5500FF5500FF5500FF5500FF000000000000DEE4FF726FFF7571FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D1FF2B2AFED3D4FF00168400
      00000D0F1E1B1F3E1C203F22274D272D58292F5E272D582A305F272D582A305F
      262C57272D581C203F1E234514172D000000FFFFFFFFFCF7FFFDFAFFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFB2E21FF00
      0000000000000000C0C0C09E9E9E7665996A40BD5501FD5500FF5500FF5500FF
      5500FF5500FF5500FF5500FF5500FF000000353AFF0000FF0000FF2221FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FE0000FF00007A00
      000000000000000000000021264B5D68B85A65B75964B65964B6606AB96872BD
      616CBA434D98040509000000000000000000FFFFFFFFFCF7FFFDFAFFFDF8FFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDF93123FF00
      0000000000000000C0C0C09E9E9E76649A6A41BD5501FD5500FF5500FF5500FF
      5500FF5500FF5500FF5B12EC000000000000CCCDFF6165FF6366FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEFF1D1CFEC1C1FF00009000
      0000000000000000000000353D787F87C7363E7B3239713239714D59B0939AD0
      5863B6757EC20B0C18000000000000000000FFFFFFFFFCF7FFFEFDFFFDFBFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFDFAFFFFFF3625FF00
      00000000000000000000009A9A9A7665996A40BD5501FD5500FF5500FF5500FF
      5500FF5500FE6021DC7E7B830000000000006168FF0000FF0000FF444CFF2725
      FF2426FF2423FF2423FF2422FF2322FF2A28FF0206FF0000FE060EFF00008A00
      0000000000000000000000353D7A99A0D25661B55560B45964B6767FC3A1A7D6
      7C84C5717AC10A0C17000000000000000000FFFFFFFFFCF7FFFDF8FFFDFAFFFD
      FAFFFDFAFFFDFAFFFDFAFFFDF8FFFDFAFFFDFAFFFEFEFFFFFFFFFFFF3F27FF00
      00000000000000000000000000008C7BAF745BA6642DD1642DD15B14EA5500FF
      5500FE6124D97E7C82000000000000000000B2AFFFD19FFED2A4FFB4BDFFA4A6
      FFA8A3FFA8A3FFA4A6FFA7A2FFA19BFF9795FFB08DFFCA87FF6454FF0000A800
      0000000000000000000000353D78838BC83B44865C66B78B93CC384181363E7B
      343C7723284F000000000000000000000000FFFFFFFFFFF9FFFFFAFFFFFAFFFF
      FAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFF442DFF00
      0000000000000000000000000000B2B2B2939393808080808080683BC45500FE
      6228D67E7D810000000000000000000000000000FF2E00FF2100FF121BFF1117
      FF1117FF0D0FFF0D0BFF100BFF2123FF4E4CFF503DFF6A2AFC5879B72A2EA600
      0000000000000000000000353D7A959CD0515CB38088C76771BC1B1F3E46509F
      343C77000001000000000000000000000000FFE2FCD5AAFED7AAFFD2AAFFD6AA
      FFD6AAFFD8AAFED5AAFED2AAFFD5AAFEC8A2FCCCA3FAC99EFCBA87FF1C00FF00
      0000000000000000000000000000A9A9A9A1A1A1808080808080683AC4632CD2
      7F7E810000000000000000000000000000000000A70000CB0000B40000BA0000
      B60000BA0000B70000B10000AB0000BF0000EC0000EB0000EC0000C10000DD00
      0000000000000000000000353D788890CB606AB9B6BBDF6C76BF2C3264818AC8
      2F366C0000000000000000000000000000000B00C40100CB0700CA0500CB0B00
      D10A00D20600CB0700C80800CB0B00C94023FF0400C95940FFEDFF001500DD00
      00000000000000000000000000000000000000000000000000007766987F7E80
      0000000000000000000000000000000000000800FF1909FF0500FF0800FF1300
      FF0E00FF1600FF0B00FF0F00FF0F00FB0700FF0E00FF0900FF0000F60E00B300
      0000000000000000000000343B768B93CC6C76BFB5BADE6670BC14182F22274D
      0000000000000000000000000000000000002300FF2500FF2100FF2100FF2200
      FF2200FF2300FF2500FF2400FF2500FF1D00FC2000FF1E00FE2000FF1B00FF00
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000001518303E478D414B94424B96292F5D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007374A57374A57374A57374A57374A57374A57374A57374A57374A560679200
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      008E8ABBDFCCFFD9BFFFD2B6FFC9AAFFC5A1FFBF9CFFBC9CFFBC9CFF6C6AA800
      00000000000000000000000000000000000000000B0B0B1D1D1D131313121212
      1212121212121212121212120E0E0E0000000000000000000000000000000000
      000000000000000000000000000000000000B900000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      009290BBEADAFFDECEFFDCC1FFD2BBFFC9AFFFC5A2FFC49CFFBC9CFF6C6AA800
      00000000000000000000000000000000000000005E5E5EF4F4F4F0F0F0EFEFEF
      EDEDEDEEEEEEF0F0F0F0F0F0C0C0C00000000000000000000000000000000000
      000000000000000000000000000000000000FF0000AB00000000000000000000
      00000007D00000BC2600DB2900DF0000560000C10002C40001C50001C50000C4
      0001C40000BB02008B1E03B40005490000000000000000000000000000000000
      009896C4F4EDFFBD9BF3B995F3B490F3AF89F3AD85F3A97FF3C39CFF6D6AA800
      00000000000000000000000000000000000000006E6E6EFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE4E4E40000000000000000000000000000000000
      000000650000FF0000FF0000FF0000FF0000FF0000FF0000AA00000000000000
      0000BFC3F8EE9FFD4F20E42900DF39287DD1CCCEFFFFFDFEFDFCFFFEFCFFFEFC
      FEFEFC5938BA2900DF7C74D70C278C00000056577B7374A57374A57374A57374
      A5A09CC7FEF9FFF4EFFFECE2FFE6DAFFDECEFFD8BDFFD1B7FFC7ABFF6E6CA800
      00000000000000000000000000000000000000006B6B6BC5C5C52222225D5D5D
      BCBCBC2929291818184A4A4ABBBBBB000000777777FFFFFFFFFFFFFFFFFF8787
      7F0000550000FF0000FF0000FF0000FF0000FF0000FF0000FF0000AE00000000
      00003839FE0200FE0C09FF2601E02900DF0000500000E90000FE0000FE0000FC
      2100CE2900DF0604EA0000FE00007D00000056577BE1D0FFDCC3FFD4B8FFCCAF
      FFA29FD0FFFFFFC4A7F3C4A4F3BF9FF3BA99F3B793F3B38DF3D4BBFF7070A800
      00000000000000000000030000000000000000006C6C6CFDFDFDC0C0C0E2E2E2
      F5F5F5C9C9C9D2D2D2D1D1D1DEDEDE000000848484FFFFFFFFFFFFFFFFFFA2A2
      9B0000410000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C500
      0000C0C4FF6664FF7376FFFFFFFF2900DF2900DF616161F5F5F5FCFCFC3A18CE
      2900DFA8A9ED2E2FFDA8ACFF05178C00000056577BF0E2FFE0D0FFDDC9FFD4BD
      FFAAA2DAFFFFFFFFFFFFFFFFFFF5F5FFF3E9FFEAE2FFE7D6FFDDC6FF7576A800
      00000000000000000000C800006A0000000000006A6A68CDCDCD6A6A6A9F9F9F
      303030646464D3D3D3727272C3C3C30000006C6C6CA4A4A40000006565658484
      7F0000350000FF0000FF0000FF0000FF0000FF0000FF0000FF0000E800002D00
      00003A3BFF0000FF0505FF2222FF0A0BFF2900DF2601D705056B2201CD2900DF
      0C0CED0000FF0000FE0406FE00007E0000005A5984F7F1FFCBB0F6B997F3B591
      F3ADA5E0FFFFFFC4A8F3C4A8F3C4A8F3C4A5F3C2A3F3BE9DF3E7D8FF787BA800
      00000000000000000000FF0000EA00006900000069695CFBFBFAC9C9C9EAEAEA
      BFBFBFCCCCCCFDFDFDD0D0D0DCDCDC000000787878FFFFFFC8C8C8FFFFFF9494
      900000220000FF0000FF0000FF0000FF0000FF0000FF0000DE00001900000000
      0000BABDFF5E5CFF7572FFFAF8FFE7E7FFE7E8FF350EE02900DF2900DFC7C8DB
      E7E9FFAAA7FF312FFEA1A2FE031893000000615C87FFFDFFF6F1FFF1EAFFE9DE
      FFAFA2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEF0D0D0D2B8B3B96E759400
      00000000790000FF0000FF0000FF0000E6000064676755D5D5C8464645767676
      D0D0D04747474040403B3B3B2D2D2D0000006E6E6EBCBCBC000000898989FEFE
      FCC1C1DEDFDFFFE4E4FF9292B100004C0000FF0000E500001900000000000000
      00004447FF0100FF0C0CFF3431FF201CFF201DFC2701DA2900DF2900DF0C0B59
      1E1BE30C0BFF0000FE1311FF000088000000635F91FFFFFFD3BEF6C4A4F3C0A1
      F3B4A2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCEC7F73C77D63D17773BE00
      00000000790000FF0000FF0000FE0000FF0000E61E1E86757567ABABA2CECECD
      BABABA151515A7A7A7898989060606000000787878FFFFFFB5B5B5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF0F0BB0000260000FF00002400000000000000000000
      0000ADAEFF5353FF6969FFE3E2FFCED0FC3614CE2900DFB8BAE16850EC2900DF
      403D597978C9292AFE9495FF00079D0000006B639AFFFFFFFFFFFFFFFFFFF9FA
      FFC0AEF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCECA179E69154F300000000
      00000000790000FF0000FF0000FF0000FE0000FF0000E6151587868687EEEEED
      BDBDBD3C3C3CEFEFEF676767000000000000737373C6C6C6111111989898B7B7
      B708080810100E0E0E0E08080400000000004000000000000000000000000000
      00005D5EFF0506FF0F12FF4F52FC2806CE2900DF3333D43D3DFF3C3DFF3B32F9
      2900DF15087F00009A1F21FE0000940000007063A0FFFFFFD3BEF6C4A8F3C4A8
      F3B49FEECAC1EECAC1EECAC1EECAC1EECAC1EEB5ADE09679DA00000000000000
      00000000790000FF0000FF0000FF0000FF0000FF0000CC393979C8C8C1FFFFFF
      C9C9C9131313424242000000000000000000757575FFFFFF929292E5E5E57F7F
      7F000000BABABA5C5C5C00000000000000000000000000000000000000000000
      0000938EFFA37CFF9D82F52E0ECC2900DF6661C28C8AFF8B8AFF8B89FF8C87FF
      8280FF2900DF2F0CC33D37CE0205AB0000006F63A6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF9F9F9D4D5DAC0BBC1989AA400000000000000000000000000000000
      00000000790000FF0000FF0000FF0000FF0000C600002F2A2A157A7A71717170
      494949000000000000000000000000000000757575D5D5D5868686FFFFFF8888
      885E5E5EFFFFFF51515100000000000000000000000000000000000000000000
      00001211FF3B20FF2901DA2900DF2313B52F31FF2F2EFF2F30FF302EFF3836FF
      4442FB4334FE4519ED3956C82524B50000007869ACFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF7773BB8169D17662C800000000000000000000000000000000
      00000000790000FF0000FF0000FF0000C6000036000000000000000000000000
      000000000000000000000000000000000000939393FFFFFFD3D3D3FFFFFFA6A6
      A600000041414100000000000000000000000000000000000000000000000000
      00000400C60401D92900DF1F01C00501C70301CC0301CB0301C60501C30301CE
      0402EE0301EC0101EC000CD00000E5000000816FB3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF8575C59E62F7996CE300000000000000000000000000000000
      00000000000000000000FF0000C8000039000000000000000000000000000000
      000000000000000000000000000000000000343434A1A1A18F8F8F8989893535
      3500000000000000000000000000000000000000000000000000000000000000
      00000800FC1406FE0A00FF0B00FF0D00FF0B00FF0D00FF0B00FF0B00FB0D00FB
      0500FF0D00FF0700FF0701EB1000BB000000816FB3CAC1EECAC1EECAC1EECAC1
      EECAC1EECAC1EE8275C1BA99E700000000000000000000000000000000000000
      000000000000000000005900001C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00A2A5983F3C4237343A3A363C3B383D3B383E3C373F3B373E4C4A4D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004A4B14434B540000000000000000009280BF5638B14D2B
      B7E9EDD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE8EC00000000
      0000000000000000000000663CFF3600FFCFB6FF000000000000000000000000
      682AFF4511FF000000000000000000000000404040524B443333333333330000
      0000000000000000000046464646464600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005E5B160C0BB4575264000000000000643DCA6D65FF6857E34A36
      EACFD3B2F3FAF154961A5D9D265F9E275F9E285F9E29C2D0BAD1CDD400000000
      0000000000000000E2D1FF0400850E0096070095A68DFF0000000000000400A8
      0B009D10009A2A00FD000000000000000000373737373737C8C8C83838393930
      48393048483AAB483AAB4536A34C45C64C4BE8402B8500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006660160C0BB40000FF524E430000000000006846BA726CEB685CD65541
      E1CBCFAEFFFFFCB1CA96C3D5ADC3D6AEC4D6AEC4D6AFE6EEDDD3CFD600000000
      0000000000000000AA90FF2D00FF000000FDEBFF0300C90000009B83FF2E00FF
      000000EDD8FF1100C10000000000000000004A4A4A505050E3E3E36E70758688
      ED5050E84C43BC483AAB4B42B97F84D28AA1F08688ED8688ED433F4E00000000
      0000090A3208093207093004082F04082D03082C00072B000729000829000829
      67611C0C0BB40000FF5952430000000000000000006C4BB87A71ED6B5FD8574C
      E3CDD1ACFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFF5EBFFD2CDD600000000
      0000000000000000CEB2FF2300EF000000FFFFFF00007C0000005E25FF430BFF
      0000009066FF1C00F30000000000000000005B5B5B666666F2F2F2797A7DA0A8
      F3A6B2F3A9BBF4BEDBF7B7CEF26F74943858B71F327D6F7494A1AEF300000000
      00003438CFF9F9FAF5F6F6F1F3F4EDF1F3B3BBC3888EA98B8FAB909CA8CFD5DC
      BBC3C5342FD85F57430000000000000000000000006D4DB78180F27067D85B4E
      E3CACDAEFFFFFFB4CCA3C6D8B8CEE1B6C5D7B5C6D8B6EAF1E4D6D2D900000000
      00000000000000000000000D00D82400E42B00E20C0087FFFCFF2F00FF2500B2
      2400F31000A7FFFFFF000000000000000000888888929292C8C8C83838399A9A
      9AC8C6CA9A9A9A80889994B4F194B4F194B4F16D85D000000000000000000000
      00003639D1FFFFFFFDFDFEFAFBFC939AB6D0BCFDDFC7FEECDAFFF3E7FFBDBFD0
      9DA7B1D0D8DA0003160000000000000000000000006F4EB79590F6736EDA6153
      E5CACAAFFFFFFF478C0A519316529317529418539519C4D9B5D8D6DA00000000
      00000000000000000000000000002700FF0700980000852407FA0700BA000071
      0500A9DACAFF000000000000000000000000173FB55B7ACAE1E6F79CC0F29CC0
      F29CC0F29CC0F29CC0F29CC0F29CC0F29CC0F2B9D7F620328900000000000000
      00003939D2FFFFFFFFFFFFC4CAD0BFADFBC1B0FAE3CBFDEEDDFFF7EFFFFCFAFF
      97A1AFD4DBE00003160000000000000000000000007154B49497F9827ADE6860
      E9C6C7ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D1D400000000
      00000000000000000000000000000000000000004128DE3726A42514A2ECDBFF
      000000000000000000000000000000000000173FB56F84E7667DC4A5CCF3A5CC
      F3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF3C9E0F8667DC400000000000000
      00003A3AD5FFFFFFFFFFFF9FA2D9B5A6F9D2BDFDE4CEFEEBD8FFF2E5FFF4EAFF
      EBE0F8D7DDE20003160000000000000000000000007154B49C9EFA8486E07C75
      ECC6C6ADFFFFFFFDFCFDF2FEF1F6FDF1FFFFF8FBFBFDD3D1D6A7A5AA00000000
      00000000000000000000000000000000000000005135E2FFFFFF3824A7DBBEFF
      000000000000000000000000000000000000173FB57E95ED2D3F97FFFFFFE3EF
      FBC9E0F8B9D7F6B9D7F6B9D7F6B9D7F6B9D7F6DAEAFADAEAFA2D3A7A00000000
      00003D3CD7FFFFFFFFFFFFA1A1E5BBABF9DDC8FDD5C3FDEAD6FEEAD6FFECD9FF
      E9D6FEDAE1E50003160000000000000000000000007457B29A9BFA8B89E2817F
      EEC0C0A8FFFFFFFDFCFDFEFCFEFAFFFBFFFFFF5C595F92A576C9CAB500000000
      0000000000000000000000000000000000E0C2FF9A8DF3341ABE6E5FDE6F51E1
      000000000000000000000000000000000000173FB58DAAEF8DAAEF7990D63D51
      9A142F98284AB2F7FBFED2E6F9D2E6F9D2E6F9E8F2FCECF4FD4D68B900000000
      0000413FDAFFFFFFFFFFFFC4C8DDB4A6F9E7D1FDF3E7FFD2BEFCD9C2FDDEC5FE
      C8BFE5DFE4E80003160000000000000000000000007A5DB1B9B8FF8684E1827F
      EDC9C8B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7A7ECBD2BE00000000000000
      00000000000000000000000000000000004326E6765FD8DCBDFF5F43F7B49BE7
      F2CEFF000000000000000000000000000000173FB599BBF299BBF299BBF299BB
      F299BBF299BBF21534A1899CD2C7CEEFFFFFFFFFFFFFFFFFFFFFFFFF6E707500
      00004441DBFFFFFFFFFFFFFCFCFC948FF5C3B0FBD2BDFDBEADFBB9A8FAC7B4FC
      DADEE3E5E8EC0003160000000000000000000000007A62AFB4B6FFA09EE79391
      EACBCB9ABFBE98B0B087B2B388ABAD7FABAD7BA2A5703F246E00000000000000
      0000000000000000000000000000F1CCFFBCABFFA593FD0000000000006E5EF1
      5D3EDB000000000000000000000000000000173FB5A5CCF3A5CCF3A5CCF3A5CC
      F3A5CCF3A5CCF3A5CCF3A5CCF3A5CCF38AA6D447538947538947538900000000
      00004641DEFFFFFFFFFFFFFFFFFFF9F9FAADAEEF9B91F7A79BF7B2ADF4E2E4E7
      F6F7F9EAECEF0003160000000000000000000000007A61AFB6BEFFA29DFFAAA5
      FF817DFF807CFF7372FF746BFF7165FF5E54FF5746F045248B00000000000000
      0000000000000000000000000000997FFFA693F8000000000000000000D6B8FF
      8D7AE9FFF8FF0000000000000000000000001535A4B9D7F6A5CCF3A5CCF3C3DD
      F7284AB27389C9ABB8DFDBE0F3D7E8FABDD6F600000000000000000000000000
      0000413BDF7F7CFF7072FF626CFF5464FE445CFF3455FF244CFF1443FE033BFF
      023AFF023EEC0003160000000000000000000000007A62B5B5BFFF9394749899
      879A9A8692927C95967F92937C9E9F879FA1816D67F949288B00000000000000
      00000000000000000000000000006C45FF000000000000000000000000000000
      7353F89884FF0000000000000000000000000000005062B47389C9ABB8DF7389
      C9000000000000000000000000284AB2284AB200000000000000000000000000
      0000292698867EFB7370FA6367FA5561F94559F83651F7274AF61742F6083AF5
      0237F40136D3000002000000000000000000000000FFFFFFACA5F6FAFDEBB9BB
      B5FFFFFFFFFFFFFFFFFFFFFFFFB7B8B5BEC1B67868DBFFFFFF00000000000000
      00000000000000000000000000006648FF000000000000000000000000000000
      FFFFFF7A5CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FBFEF2D1D3CBD8DB
      D49595957F7F7F8080807A7A7AC1C2BED6D8D3FCFFED00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000F3CEFF000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000087E3FFFFFFFFF81F87E3FFFFFFFFE007
      87E3FFFFFFFFC00387E3F83FFFFF800387E3F83FFFFF800187E3F83FFFFF8001
      87E3C007C007800187E3C007C007800187E3C007C007C00387E3C007C007E007
      83E3C007C007FF870023F83FFFFFE3C71000F83FFFFFE1C31000F83FFFFFE003
      1000FFFFFFFFE0071007FFFFFFFFF00FFFFFF81FFF80FFFFFE1FE007FF8107E1
      FC0FC003F98703C1F8078001F0C30181F0078001E0610001E0038001E0018003
      C0018001E001C44780010001F981E28F80000001F9FFF18F80008003F908E387
      80000007F900C443800000C7F9008001800081C7F9000101C0004007F9800381
      F001C007F98107C1FF83C80FFF810FE1FFCF0000FFFFC007FC070000C3FFC007
      80030000C03FC00780030000801FC00780030000800FC007800300008005C007
      80030000C00FC007800300008007C00780030000C007C00780030000C003C007
      80030000C000C007800300000000C007C00300000000C007E0030000003FC007
      F003000001FFC007F00F0000FFFFC007FFFF0001FFFFFFFFFFFF0000FFFFFFFF
      000100000001DF3F000100000001CF1F000100000001C00F000100000001C007
      000100000001C003000100000001C001000100000001C0030001C0070001E003
      0001C0070001F0070001C0070001F00F0001C0070001F01F0001C00F0001FF3F
      0001C01F0001FF7FFFFFC03FFFFFFFFFF801FFFFFF9FFFFFF801F800FFCFFFFF
      F801F800FFC70001F801F800000300010001F800000100010001C80000000001
      0001C000000100010001C00000030001000100000007000100010001000F0001
      00030003001F000100070007007F0001003F000F00FF0001003F001F01FF0001
      003FC7FF03FF0001007FCFFFFFFFFFFFFFFFFFFFF803FFFFFFFFFFF8C003E3CF
      0F3FFFF08003C187000FFFE08003C927000300018003C927000300038003E007
      000F00078003F00F000700078003FC3F000700078003FC3F000300078003F83F
      000300078007F81F000100078007F19F000300078007F38F001F00078007F7CF
      879F00078007F7CFFFFFFFFFC00FFFEF00000000000000000000000000000000
      000000000000}
  end
  object ImageList4: TImageList
    Left = 40
    Top = 187
    Bitmap = {
      494C01011E002200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000900000000100180000000000006C
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
      000000000000000000000000000000000000000017D67B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B9B9B9A6A6A60000
      9DFFFFFFFFFFFF00008AFFFFFFFFFFFF000093B0B0A6A6A6A600000000000000
      00000000000000000000000000000000002CD37F9CF6C6BAF3D7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A68080800000
      6DFFFFFFFFFFFF000047FFFFFFFFFFFF00005A93938080808000000000000000
      000000000000000000000000000030CE7C57E9947CF0B09EF8CBB6F3D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A68080800000
      6DFFFFFFFFFFFF000047FFFFFFFFFFFF00005A93938080808000000000000000
      000000000000000000000027C97305DB5C35E37B5DEA9878EFAD7DF0B18AEDB8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A68080800000
      6DFFFFFFFFFFFF000047FFFFFFFFFFFF00005A93938080808000000000000000
      000000000000000013C46500CF4C00D55509DC6031E27846E5874CE78B3FE482
      44E4890000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A68080800000
      6DFFFFFFFFFFFF000047FFFFFFFFFFFF00005A93938080808000000000000000
      000000000000BC5300C33F00C94611D2592DDB6F3FE17D4BE38443E28021DE6D
      00D75813D9650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A68080800000
      77FFFFFFFFFFFF000055FFFFFFFFFFFF00006D89898080808000000000000000
      000013BC4F00B42F44CD6C77DB9375DE9564DE8C00000000000078E59D74E499
      78E39A65DD8C04CC500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A68080808585
      7B7B7B6D00005F0000630000636D6D6385857784848080808000000000000000
      000000000079D48D90DBA191DFA46ADA8C00000000000000000000000095E6AD
      8FE4A88FE2A795E1A80EC2470000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B0B0B09393939393
      93989893A1A193A6A693A6A6939C9C9393939393939393939300000000000000
      00000000000000007ED89364D482000000000000000000000000000000000000
      B4E9C1ABE6BAABE4B8B2E4BD21BA470000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CFEED5C6EBCDC6EACCCDEBD13AB7500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000C30000B90000
      B90000B90000B90000B90000B90000AB0000FF0000AB0000B90000C300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFF2E2DFF2E2E6F4E86BC8760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000E6F5E84EBE5A0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000FF0000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
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
      0000000031319913138A00007C00007F07078400007200000000000000000000
      000000000000006D00006E00006A00000000000000000000000000006D00006D
      00006C00006E00006E00007F0000000000000000000000000000000E0E870000
      6D00006D00006D00000000000000000000000000000000000000000000000000
      00000000000000000000000D0D8600006D00006C00006C00006C00006D2E2E97
      6464B20000000000000000000000000000000000000000000000000000000000
      0000007100006800006D00006C00006A00006D00006A00006539399D00000000
      000000000000007900006E00006F3C3C9E00000000000000000000006E00006D
      00006D00006E00006E4B4BA50000000000000000000000000000000E0E870000
      6D00006D00006D00000000000000000000000000000000000000000000000000
      00000000000000000000000D0D8600006D00006C00006C00006C00006C00006C
      00006C00006A2020900000000000000000000000000000000000000000000000
      7100006C00006A00006600007100007E00005F00006600006A0000674747A300
      000000000033339A00006B00006E000073000000000000000000000000E2E2F1
      00006A00006E00006A0000000000000000000000000000000000000E0E870000
      6D00006D00006D00000000000000000000000000000000000000000000000000
      00000000000000000000000D0D8600006D00006C00006C00006C00006A00006A
      00006D00006B00006D00006F000000000000000000000000000000A5A5D20000
      6100006A00006500000000000000000000000000007C00006C00006A00006200
      000000006C00006C00006C00006D00006D00006B00006E00006C0000009595CA
      00006B00006E00007D0000000000000000000000000000000000000E0E870000
      6D00006D00006D00000000000000000000000000000000000000000000000000
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      2B2B9500006C00006B00006D2525920000000000000000000000000000770000
      6900006A0000700000000000000000000000004343A100006800006A00006B00
      000000006D00006E00006E00006D00006E00006E00006E00006F000000212190
      00006E00006E5656AB0000000000000000000000000000000000001111890000
      6D00006D00006D00000000000000000000000000000000000000000000000000
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      0000001E1E8F00006C00006B00006A0000000000000000000000000000660000
      6B00006900005C000000000000000000000000D7D7EB00006200006A00006600
      000000006D03038103038100006C00006E00007000007F27279300000000006A
      00006D00006A00000000000000000000000000006C00006C00006A00006B0000
      6B00006C00006C00006D00006D00006E0000005959AC00000000000000000000
      00000000000000000000000B0B8600006D00006C00006C000000000000000000
      00000000000000006A00006C00006C5F5FAF0000000000000000000000670000
      6A00006700005D000000000000000000000000D5D5EA00006300006A00006500
      000000000000000000000000006B00006E00006ADADAEC00000025259200006C
      00006E00007C00000000000000000000000000006C00006C00006D00006C0000
      6C00006D00006D00006D00006D00006D00000000006A0D0D8600000000000000
      000000000000000000000000007E00006D00006C00006C000000000000000000
      00000000000000006A00006C00006C0000720000000000000000000000670000
      6A00006E00006C000000000000000000000000D7D7EB00006300006A00006500
      000000000000000000000000008000006E00006F7979BC00000009098500006E
      00006F6060B000000000000000000000000000006C00006C0D0D860000750000
      6C00006C00006C00006D00006D00006D00000000006C00006C8888C400000000
      000000000000006D00006D00006C00006B00006B00006B00006B00006D000000
      00000000000000007000006C00006C00006B0000001B1B8E11118900006E0000
      6A00006F0000670909851B1B8E000000000000D7D7EB00006300006A00006500
      000000000000000000000039399D00006B00006D00007600000000006A00006E
      00006A0000000000000000000000000000000000000000000000000D0D860000
      6D00006C00006C00000000000000000000006B00006C00006D00007C00000000
      000000000000006D00006B00006C00006C00006C00006C00006C00006D000000
      00000000000000006A00006C00006B0D0D8700000000007500006C00006F0000
      6D00006D00006E00006D000069000000000000D7D7EB00006300006A00006500
      000000000000000000000000000000006B00006E00006E8484C200006C00006D
      00007C0000000000000000000000000000000000000000000000000E0E870000
      6D00006D00006D00000000000000000029299500006E00006C00007200000000
      00000000000000000000000B0B8600006D00006C00006C000000000000000000
      0000008282C100006A00006C00006C5151A800000000007800006B00006D0000
      6D00006D00006E00006C000068000000000000E7E7F300005F00006700006200
      000000000000000000000000000003038100006E00006E00006A00006E00006F
      6767B30000000000000000000000000000000000000000000000000E0E870000
      6D00006D00006D00000000000000000000007B00006D00006C00007600000000
      00000000000000000000000D0D8600006D00006C00006C000000000000000000
      F8F8FC00006A00006C00006B00006E0000000000001D1D8F00007F00006D0000
      6D00006C00006600007227279400000000000000000019198D1B1B8E17178C00
      00000000000000000000000000004141A000006B00006E00006E00006E00006A
      0000000000000000000000000000000000000000000000000000000E0E870000
      6D00006D00006D00006B39399D00007400006D00006D00006D09098500000000
      00000000000000000000000D0D8600006D00006C00006C000000000000262693
      00006A00006C00006B00006A4F4FA70000000000000000000000000000680000
      6B00006A00005D00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000006A00006D00006E00006D00007C
      0000000000000000000000000000000000000000000000000000000E0E870000
      6D00006D00006D00006C00006F00006D00006D00006E00006A00000000000000
      00000000000000000000000D0D8600006D00006C00006C00000000000000006D
      00006B00006D00006A4F4FA70000000000000000000000000000000000700000
      7500007400006900000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000B0B8600006F00006E00006F6F6FB7
      0000000000000000000000000000000000000000000000000000000E0E870000
      6D00006D00006D00006D00006D00006D00006B1C1C8E00000000000000000000
      00000000000000000000000D0D8600006D00006C00006C00000000000000006B
      00006A212191EBEBF50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001A190D282514282514292615242314
      0A0906000000000000000000000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000014120B242213948B50B4AC74ABA362AFA46AB2AA6E
      55502E18160C0A0905000000000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000242213716B3C968D52BFB787B3AB73625D358E854CC2BC8E
      ADA3668A814B4946270C0B08000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000014140B8A8249BDB585C4BF91CAC49EAFA66B423D227A7242C3BC90
      C7C198C1BA8EB3AA6E474226000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000014160C8C844BB5AD75B6AD7AC7C097B7AF7A4C46288A824AC6BF96
      BEB686B5AF75AFA66B4B4528000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001B180D9D9456C2BC8EC3BA8FC2BD8F70683B17160C35321CACA266
      C4BF94C1BA8EBCB682554E2D010100000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000017160D8D844BB5AC76B4AD76AEA66848442814140B1F1D10897F48
      B4AD76B4AD76B1A86C4C4727000000000000000000F5EFEE1600005A1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      000000000017160C948B4FBAB37EBBB27EB8B07BA89E5C9A8F529D9354B2A96D
      BAB37EBCB37FB6AD734E492A010100000000000000F5F0EE1700005B1E0D2905
      00000000000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      00000000000000003C3720534D2C534D2C544F2D544F2D544F2D4D49294F4A2A
      59522E554F2C4944271D1A10000000000000000000F8F2F1190000581C0D2908
      00000000000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00000000000000000000000000000000000000000000FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
      00000000000000000000000000000000000000000000000000000000000C0C07
      605A343B361F000000000000000000000000000000A6847B4000005C1E0F490E
      00D1BAB8000000000000000000000000000000170000612112855F5200000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000121009
      8D834C5C5731050302000000000000000000B7A39A3700004304005212003E00
      00310000C5AFA9F7F0EF1000006034200000002200005E1E108A665B00000000
      000000000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000080904030303000000000000000000000000
      4541247C754338361E000000000000000000430100571F0DFFFFFF000000FFFF
      FF490D001C0400FFFFFF2300004E0F006A3A293A00005B1F0D581D0983574B79
      473900000000000000000000000000000000000000FFFF00FFFF00FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000F0E07595531322E1A010100000000000000000000
      19170D94894F5A56310000010000000000005C200F5A2816E1CECB000000FFFF
      FF430500300100FFFFFF1D0000571D0C5B1E0C591A09571C0A591B0B5B1B0958
      1607000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000012120A847E4792884E2C2A170805040B0A060A0906
      615C34A498574944280101010000000000003300003E0000B49892000000AE85
      783B0000180000FFFFFF2100005619073900002C00004200003500002E000036
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000060703413E24968D52787041716B3C807845807845
      A59958726A3E1C190F000000000000000000F7F0F0AB8980ECE1DF000000F7DF
      DBA47F77FFFFFFF8F0EF1F000059210DFFFFFFFFFFFF885F5000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000708043A361F534D2C6B653A787040776F3F
      5A56311F1D100000000000000000000000000000000000000000000000000000
      00000000000000F0F0F0E0E0E1E4E4E4F0F0F000000000000000000000000000
      00000000000000000000000000000000001A160C2923132923132A2414262012
      0B09050000000000000000000000000000000000000000000000000000000000
      000000000000000000000000009A9A9A000000000000000000000000000000FF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000EDEDEDB9B9B965666C797978D7D7D8F0F0F000000000000000000000
      000000000000000000000016120A251F119B8449BBA56DB29A5CB59E63B8A168
      584B2A18150C0B09050000000000000000000000000000000000000000000000
      00000000000000000000000000B2B2B20000000000007B7B7B9C9C9CBABABA00
      0000211434673FA6663FA6311E50000000000000000000000000000000000000
      00000008050E603B9A663FA65C38950000000000000000000000000000000000
      00E7E7E8A2A2A150506C3D3D713F3F73747478D6D6D6EFEFEF00000000000000
      0000000000000000251F117563379E864AC4B182BAA46C665730947E46C7B689
      B39B5F907B444C41240E0C060000000000000000000000000000000000000000
      00FFFFFFFDFDFD000000000000F4F4F44545450000008B8B8B00000000000000
      000025163B6F46B96E46B96F46B7311E50000000000000000000000000000000
      08050D623DA06F46B96E46B9643FA6000000000000000000000000000000E4E4
      E49797954A4A7A45457E46468045457E42427A7A7A7DDEDEDE00000000000000
      000000000016120A907B44C3B07FC9B88DCFC099B69F6443391F806D3CC9B78B
      CCBC94C7B587B8A168493E23000000000000000000000000000000000000F4F4
      F46565654D4D4DFEFEFE000000000000DADADA000000000000EFEFEF00000000
      000025163B7046B96E46B96E46B96F46B7311E5000000000000000000008050D
      623DA06F46B86E46B96E46B9653FA6000000000000000000000000E1E1E29090
      8F4B4B864C4C8B4E4E8D4C4C8B49498647478145457C8C8C8AE7E7E700000000
      000000000017140B937D45BBA66FBDA873CCBB92BDA8734F4325907B44CBBB91
      C3B181BBA66FB69F644E4224000000000000000000000000000000F6F6F64F4F
      4F000000000000717171FEFEFE000000000000D0D0D0000000262626FDFDFD00
      000007040C5F3A9A6F46B86E46B96E46B96F46B7311F5000000008050E633DA0
      6F46B96E46B96E46B96E45B72A1A45000000000000000000E4E4E49292914B4B
      894F4F905252965252975151924E4E8E4B4B884848844C4C7DAEAEABEEEEEE00
      00000000001B170DA68D4EC7B689C7B689C8B68A74623617140B382F1AB39B5F
      CAB98EC7B689C2AF7E584B2A010101000000000000000000000000BCBCBC0B0B
      0B0000000000003434349E9E9EE2E2E27D7D7D76767600000000000089898900
      00000000000504095E3A996F46B86E46B97046B97046B737225B633DA07146B9
      6F46B96E46B96E45B72A1A46000000000000000000EBEBEBA5A5A56D6D815757
      9153539753539A5353995252985252954F4F904C4C8B4A4A8661617ECFCFD0F0
      F0F000000018150C937D45BBA66FBBA66FB59D614C412416120A211C0F8D7843
      BBA66FBBA66FB7A0654F4325000000000000000000000000000000F8F8F8DBDB
      DB5F5F5F313131FEFEFEFFFFFFAAAAAA00000000000000000000000010101000
      00000000000000000504095E3A997046B90000007246B97046B97046B9000000
      7046B96E45B72A1A46000000000000000000EFEFEFC9C9C99E9E9D87879B6F6F
      965B5B9754549954549A5353995353995252975151924E4E8D494A8A959597EC
      ECEC00000017140B9B8449C0AB78C0AB78BEAA76AF9555A0884CA38B4DB7A067
      C0AB78C0AC7ABBA66F5245260101010000000000000000000000000000000000
      006B6B6B4D4D4D000000000000FFFFFFB7B7B7D2D2D2EEEEEEFDFDFDFCFCFC00
      00000000000000000000000604095F3A9A7246B90000007346B90000007346B9
      7045B72A1A46000000000000000000000000EDEDEDC5C5C5AFAFBC9F9FB98B8B
      AB7272995B5B9754549A5454985454985353995353985151944F4F8F606088D4
      D5D80000000000003A321C5347275B4D2B574A29504426564928504426534727
      5B4D2B584B2A4C41241E190E0000000000000000000000000000000000000000
      005F5F5F49494900000000000000000000000000000000000000000000000000
      00000000000000000000000000000E09176C44B27246B90000000000007246B9
      42296D000000000000000000000000000000EDEDEECECED8BCBCCDAEAEC3A2A2
      BC9393B07E7EA36C6C955F5F965A5A986363945454995656975A5A9561618E9E
      9EB3000000000000000000100E086A5A32352D190000000000000000000E0C06
      65562F3D341D0000000000000000000000000000000000000000000000000000
      006161614A4A4A000000B8B8B8000000777777FFFFFF000000C2C2C22424246D
      6D6D00000000000000000008050D633DA07146B90000000000000000007346B9
      7046B7311F50000000000000000000000000EDEDECDBDCE3CBCBD8BABACDB0B0
      C4A4A4BD9898B48B8BAA7F7FA37F7FA18888A87D7DA075759B73739A73739772
      72990000000000000000001D180DA28A4C52452600000000000000000014110A
      9B84495E502C0000000000000000000000000000000000000000000000000000
      00737373494949000000A6A6A6000000000000191919000000000000000000A4
      A4A400000000000008050D633DA07046B90000007346B97246B97246B9000000
      7046B96F46B7311F50000000000000000000EEEEEEE4E5E8E0E0E8C7C7D6BCBC
      CEB1B1C6A6A6BE9A9AB68D8DAE8F8FAF9E9EB88F8FAF8080A57A7AA078789D6D
      6D98000000000000000000221D10A38B4D5649280302010000000000001B170D
      9C854A61522D0505030000000000000000000000000000000000000000000000
      007171714B4B4B000000EEEEEE080808000000000000000000000000000000FC
      FCFC00000008050D623DA06F46B86F46B97246B97145B7301E4E5F3A9A7246B9
      7046B96E46B96F46B7311E50000000000000000000EBEBECE9E9EDE0E0E8CACA
      D9BDBDCEB2B2C6A9A9C0A2A2BCB5B5C7AFAFC59F9FBB9090AF8383A67E7EA27F
      7FA20000000000000000006A5A32A68D4E9E864A322B180C0A060E0C066D5C33
      AF955585713F61522D0000000000000000000000000000000000000000000000
      00494949090909000000FFFFFF6A6A6A0000006C6C6CBCBCBC0000004F4F4FFE
      FEFE0A060F633DA06F46B96E46B96F46B97045B72A1A460000000504095E3A99
      6F46B86E46B96E46B96F46B7311E50000000000000000000EBEBEAE6E7EBE5E5
      EBD9D9E2CCCDD9C2C2D0C9CAD5DEDEE5C3C3D4B0B0C5A0A0BA9292B18383A5B6
      B7C50000000000000000004B40235B4D2BB59D61AA90508975418F7943BAA46C
      8874404C41240000000000000000000000000000000000000000000000000000
      007F7F7F595959000000000000BCBCBC000000000000454545000000CACACAFC
      FCFC25163B7046B96E46B96E46B96E45B72B1A46000000000000000000050409
      5E3A996F46B86E46B96E46B9653FA6000000000000000000000000EEEEEEE7E7
      E8E3E3E6E0E1E3E8E8E9EEEDEDE0E1E5DDDDE4CECEDBBEBED0A6A6BDACADBFEB
      EAEA0000000000000000000000000C0A06544828766538766538786638716035
      2C25140000000000000000000000000000000000000000000000000000000000
      00FEFEFEFEFEFE000000000000EBEBEB212121000000000000151515FCFCFC00
      000025163B7146B96F46B96F45B72A1A46000000000000000000000000000000
      06040A5E3A997046B96F46B9653FA60000000000000000000000000000000000
      00000000000000000000000000EFEFEFE1E2E5D1D1DAC7C8D3D4D4D9ECECEB00
      0000000000000000000000000000000000040302050503070603050503050503
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FEFEFEA2A2A2000000000000BABABAFEFEFE00
      00000C071325163B25163B1F1332000000000000000000000000000000000000
      00000007040C25163B25163B2114350000000000000000000000000000000000
      00000000000000000000000000000000350D042B0C0500000000000000000000
      00001E77A21E77A21E77A21E77A21E77A21E77A21F78A21F78A21F78A21F78A2
      1F78A21D77A21C76A21D76A21C76A21B76A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007000011000015000015000015000015000015000015
      00001500001400000A0000000000000000000000000000000000000000000000
      00000000360F045B16065E16066C1A07661908370600300B0200000000000000
      00003388AA79C2D279C2D279C2D279C2D279C2D279C2D279C2D279C2D279C2D2
      79C2D279C2D279C2D279C2D274BECF1B76A2000000000000344FC97D8CCCAEAE
      AEAEAEAE00000000000000000000000000000000000000000000000000000000
      0000000000000000000022000054000068000068000068000068000068000068
      0000680000650000320000000000000000000000002E0B043C170F611B0B6513
      016E1705681808671A08661908661907671A08370600390700300B0300000000
      00003087A8000000000000000000DEEBE2584D4C9F9396120A2216210D000000
      0000000000000000000000007DC5D41A77A20000000000003450CB3450CB3450
      CB475AB0475BB37C7C7C656E977E7E7E00000000000000000000000000000000
      000000000000000000002A000067000080000080000080000080000080000080
      00008000007C00003E0000000000000000000000007A2818934D479756529953
      528F50498C4C41803C31742B1C6920116618053706003A07003B060000000000
      00003087A800000000000028221FD9D9DAFFFFFFFFFFFFA3C6FD9CBBFF000000
      12115F0000000000000000007DC5D41A77A20000003450CB3450CB3450CB3450
      CB3450C93450C93450CB344FC9656E987E7E7E00000000000000000000000000
      000000000000000000002A000067000080000080000080000080000080000080
      00008000007C00003E000000000000000000000000721E0A6618006D1C088F4E
      45965750954E4C8F51488F50498F524A8F50493604003A07003B060000000000
      00003087A8000000000000000002000007000000425068778DB8506D924968AC
      0000000000000000000000007DC5D41A77A20000003450CB3450CA344FCA3450
      CA3450CA344ECA3450CA344FCA344EC83137AD7E7E7E00000000000000000000
      000000000000000000002A000067000080000080000080000080000080000080
      00008000007C00003E000000000000000000000000701E04D35AC7C557AC6D1C
      066D1D0B8C4B41975350924F4A8F524A8F534B3504003A07003B060000000000
      00003087A8000000000000000000030D3880A6CFABC4F8B5D2FF98B7DA6586A8
      0000110000000000000000007DC5D41A77A200000034CBAF34CBAF76DCC934CB
      9A52D3B386DDBD38CCB07ADDC434CBA134CBAE7E88857E7E7E00000081818100
      000000000000000000002A000067000080000080000080000080000080000080
      00008000007C00003E000000000000000000000000A54F72CC58BAD25AC5721C
      0676200D6E1C096A180683352B9455549665613502003A07003B060000000000
      00003087A80106080000002546874E658D9BB0E68BA2CF544FB9343B9397B1E0
      4D5C764868870000290000007DC5D41A77A200000000000034CAAE5CA2D32A97
      A12B61A68E91952B5CA29FBBE332C2C134C9AE7E7E7E00000000000000000000
      000000000000000000002A000067000080000080000080000080000080000180
      000C8500098000003E0000000000000000000000008E2F35DD5CD4841E1D6A12
      008F4537BA8F8DF7EFF0FFFFFFFDFFFE8F888D512C2A3A07003B060000000000
      00003087A801060F537FA50000127D9DC8A1B5F4B5CCFF92ADDE819CC3B0C9FF
      6E83AC3F64890719261F35717DC5D41A77A200000034CBAF34CAAE9EDDE3298F
      9F1E60733C5ECD5584CE9FBFD32D72AF34CBAE7E7E7E7F7F7F00000000000000
      000000000000000000002A000067000080000080000080000080000080000783
      0056AA00449E00023F00000000000000000000000085463FB69890FFFEFFFFFF
      FFFFFFFFFCFCFBFEFEFEFDFDFDF7F7F790899065656C3702003B060000000000
      00003087A8254D6C1C334E051F3C718CBD93A8EBA5BFFF6685BA6580B981A0E3
      7F9ACC07244C0000002D4B687DC5D41A77A200000000000034CAAE94DDE12487
      8C1C2A6C7680C9868686A7B0B531BD9E34C9AE3EBEA77E7E7E00000000000000
      000000000000000000002A000067000080000080000080000080000080000381
      002C9600238D00013E000000000000000000000000706770C3C0C1FEFEFEFEFE
      FEFEFEFEFCFDFFFBFCFFFEFEFDFFFEFC8D888F6861684F2A2A3B060000000000
      00003087A84C5E6A15263F3D5D814F72AAA0B2F2A8B2EC7893C85C79A96B6A9E
      7286BB1C3E6400050E56636F7DC5D41A77A200000000000034CAAE34CAAF2BA9
      903399C63040BA69CFBF289D8634CBB034CAAE34CAAE7E7E7E7E7E7E00000000
      000000000000000000002A00006701017F0B0B7A0F0F780F0F780F0F780E0E78
      06067D00007C00003E0000000000000000000000005E5B60D9D8DCFFFEFDFFFF
      FEFFFEFCD8E5FE97BBFF4787FF0E61FB99928A8B8E8A70727638020000000000
      00003087A8858A8C0B1F340E2A490E2A5B4C56744C4F6A7896C36D8DB84E6081
      617AA9000013000000BBB8B37DC5D41A77A200000000000034CAB034CAB034C9
      AF1C6E6B0F3A192A9C9934C8AE34CBB034CAAF34CAB034CBB05D9E927A8E897E
      7E7E00000000000000002A000067131375797942A1A12FA1A12FA1A12F989832
      41415E01017A00003E00000000000000000000000063626D7793C61064FF0058
      FC0058FC4C7EDA5587E3C0C7D4CED4E0FAFBFCA49EA06C666868444900000000
      00003087A8C5C3BE00092711395C2345701F477C748FBEBCD2FFB5CBFC96ACE0
      6684B8000920000014DDD7D27DC5D41A77A28686868585855083AA3495C93496
      CA349DCB34A8CB34A0CB3497CB3497CB3497CB3496CA3497CB3597C9349BCB69
      6D8800000000000000002A0000671E1E70BEBE1FFDFD01FDFD01FDFD01F0F006
      67674B01017A00003E000000000000000000000000000000C0BBB4C0C5CEFFFF
      FFFFFFFFFFFFFFFFFEFDFEE7BDFFD381FFB938A4A6B57E787D47414600000000
      00003087A8DBD9D50000173454744557724770A09DBAEFBBDBFFA2BFFA98B2EA
      2C486959677D000F1DC5C1BF7DC5D41A77A23450CB3450CB3450CB3451CB3450
      CB3450CB3450CB3450CB3451CB3451CB3451CB3451CB3451CB3451CA3452CB34
      51CB00000000000000002A0000671D1D70B8B822F5F505F5F505F5F505E8E80A
      63634D01017A00003E000000000000000000000000000000000000ABACB5FFA9
      0AF7A100FFA600DAA33EF0B03CCBC0B8E5CFB5EFE9DDB6B3B45C555A00000000
      00003087A8EAEFE5C4C9CB192A440B1F330C224528426C4934409BC9FF6187BE
      092342142336BDBEBCDDDCDB7DC5D41A77A23450CB3450CB3450CB3450CB3450
      CB3450CB3450CB3450CB3450CB3450CB00000000000000000000000000000000
      000000000000000000002A0000670D0D785454557070477070477070476A6A4A
      2D2D6800007B00003E000000000000000000000000000000000000000000ACB0
      BBFFFFFFFCFFFEFFFFFFFEF9FCFFC3D7FF92B6FF5A93C6A7B25F555C00000000
      00003087A8342A4FFFFFFF000A240A192C3E566A000F3D745319372923000000
      000810000113FFFFFFFDFDFE79C2D21A77A23450CB3450CB3450CB3450CB3450
      CB3450CB3450CB00000000000000000000000000000000000000000000000000
      000000000000000000002800006400007C03037A03037A03037A03037A03037A
      01017B00007800003C000000000000000000000000000000000000000000B7C3
      C4FC0059EA1560BF134EB32A5B964964664E5856746B00000000000000000000
      0000358AAB358AAB358AAB358AAB358AAB358AAB358AAB358AAB358AAB358AAB
      358AAB358AAB358AAB358AAB358AAB1A77A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015000034000041000041000041000041000041000041
      00004100003F00001F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000C07040F09060E0A060E0A060E0A060E0A060E0A060E0A060E0A06
      0E0A060E0A060E0A060C08050401010000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F3223B07455B27A5CB37A5CB37A5CB37A5CB37A5CB37A5CB37A5CB37A5C
      B37A5CB37A5CB2795BB37A5C925F430403010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000721B005819005512005411065D11
      005811005E11005A11005A11005A110059150054150058150059121312000000
      0000543626B57D5FB78265B88366B88366B88366B88366B88366B88366B88366
      B88366B88366B78265B783669B6548060302B63000A62600A62400A72600A728
      00A62800A62800A62800A62800A62800A62800A62800A62800A628008E260000
      0000000000000000C0C0C0000000000000000000000000000000FF2600FF2600
      000000000000000000000000000000000000FAFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF5FFFF4D3E4600
      0000150C083D291D402A1E412B1E3F291D412A1E3F291D422C1F3F291D422A1E
      3E2A1E422C1F432E1C48311D2F2114000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E4100
      0000000000000000C0C0C0BEBEBE000000000000000000000000FF2600FF2600
      FF2600000000000000000000000000000000FD922AFF6A00FF6500FF6300FF50
      00FF5100FF5100FF5100FF5100FF4C00FF5000FF5D00FF6400F669003A000000
      000064402CBA8366BA866ABC8A6FB98569BD8A70B98467BE8B71B98266BE8C72
      B78265C292737759BF825FCB593D980C0600FFFFFFFBFFFFF9FFFFF9FFFFF9FF
      FFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFFBFFFFFF7D2200
      0000000000000000C0C0C09A9A9A94706AB95645FE2600FF2600FF2600FF2600
      FF2600FF2600000000000000000000000000E7F9FFFFC16EFCBB84F1FFFFF6FF
      FFF6FFFFF6FFFFF2FFFFF2FFFFF2FFFFF6FFFFF6FFFFFF8A1EDDFFFF28283F00
      0000784B34D8BCACDCC4B7DBC1B4DCC3B6DBC0B2DDC5B8DBC0B2DDC6B9DABFB1
      DEC6B9D7BCB2B491F49158FD8E69D5181109FFFFFFFAFFFFFCFFFFFAFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFBFFFFFF832100
      0000000000000000C0C0C09B9B9B976E67BE523FFC2702FF2600FF2600FF2600
      FF2600FF2600FF2600000000000000000000E48A2DFF4F00FC5700FF7D00FF4D
      00FF4E00FF4E00FF4E00FF4E00FF4900FF5100FF5200FF3E00D97A1D2A000000
      0000774C35CEA893D0AC97D2AE9AD2AC97D3AF9CCFAA96D3B19DD0A995D3B09E
      CEA995D1AE9E9E82D99C70EA7352BD180F00FFFFFFF7FFFFFAFFFFFAFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFBFFFFFF8C1D00
      0000000000000000C0C0C09D9D9D996C65BE5240FC2702FF2600FF2600FF2600
      FF2600FF2600FF2600FF2600000000000000EAF1FFFFC069FCC282F6FFFFFBFF
      FFF7FFFFF7FFFFF7FFFFF7FFFFF7FFFFFBFFFFFBFBF5FF9621DEFFFF342A3B00
      00001A100B3C261A3D271A4C30205638265C3B285638265D3B285637265D3C29
      5636255839262F1D2B291C432C1F13000000FFFFFFF7FFFFFAFFFFFAFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFBFFFFFF902100
      0000000000000000C0C0C09E9E9E996C65BD5340FD2701FF2600FF2600FF2600
      FF2600FF2600FF2600FF2600FF2600000000EB8E3FFF5400FC5F00FB8A14FF63
      00FF6400FF6000FF6000FF6000FF5F00FF6700FF5A00FF4600DF8D3336000000
      0000000000000000000000492E20B57E60B47B5CB4795BB4795BB77F61BA8569
      B88063966346080403000000000000000000FFFFFFF7FFFFFAFFFFF8FFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFF9FFFFFF932200
      0000000000000000C0C0C09E9E9E9A6C64BD5341FD2701FF2600FF2600FF2600
      FF2600FF2600FF2600EC3312000000000000F1EDF1FFB356F7B570F6FFFFFEFF
      FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFEFFFFFBE5D5FF8D13DFFAFF3D2D3000
      0000000000000000000000774C35C59880784C356F47326E4632A77053CCA794
      B2795AC08F7519110B000000000000000000FFFFFFF7FFFFFDFFFFFBFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFFFFFFFF972500
      00000000000000000000009A9A9A996C65BD5340FD2701FF2600FF2600FF2600
      FF2600FE2600DC3E21837D7B000000000000FCAD67FF5800FF5900FF9C43FF8B
      09FF8707FF8707FF8C07FF8C07FF8602FF8B0EFF7400FF3F00E6843D43070000
      0000000000000000000000784D35D1AF9CB0795AAE785BB17B5EC19278D3B3A1
      C3977FC08C71160D09000000000000000000FFFFFFF7FFFFF8FFFFFAFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFF8FFFFFAFFFFFAFFFFFEFFFFFFFFFFFFFFFFFF9F2700
      0000000000000000000000000000AF827BA6665BD1462DD1462DEA3414FF2600
      FE2600D94024827D7C000000000000000000F5E4CBFFFF99FFFFA6FFE4D6FFDF
      B6FFE0BBFFE0B7FFDBBBFFDFB6FFE0B2FAD3AAFFEBA0FFFF6CF8CF8E603C1A00
      0000000000000000000000774C35C69B8482533AB27B5ECAA28E7F5238784C35
      754B344D3122000000000000000000000000FFFFFFFAFFFFFAFFFFFAFFFFFAFF
      FFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFFFFFFFFA12D00
      0000000000000000000000000000B2B2B2939393808080808080C44F3BFE2600
      D64228817D7D000000000000000000000000A5754DB7A66CACA364A08D9AA390
      8CA39091A39087A39482A28F86A89996B3ABADB4AE9C9CB4915C7ACC5A637F00
      0000000000000000000000784D35CEAB98A97357C59981BB85683A261B9B674A
      774D36010000000000000000000000000000EEFFE2FEF6AAFFF8AAFFF4AAFFF7
      AAFFF7AAFEFAAAFEF6AAFFF5AAFEF6AAFCECA1FAF0A3FCEE9EFFF187FF9B0000
      0000000000000000000000000000A9A9A9A1A1A1808080808080C44F3AD2452C
      817E7E000000000000000000000000000000BC4600C54F00BE3E00C13D00C545
      00C54900C54500C53F00C43E00C54400D25A00CD4F00A24308773A26A3641400
      0000000000000000000000774C35C89F8AB57F62DEC7B8BD896E613D2AC69880
      6B4530010000000000000000000000000000C45F00CB5B00CA6000CB5F00D166
      00D26500CB6000C85F00CB6100C96300FF9C23C95C00FFAC40005AFFDD720000
      0000000000000000000000000000000000000000000000000000986E66807F7E
      000000000000000000000000000000000000E98719FFA234F4901BF88F18F898
      17F89320F49C26F4921AF3900EF3870EF58E16F98B11F09224D37D1FCD670000
      0000000000000000000000744A33C9A38FBC8A6FDDC5B8BB85682C1E15492E20
      000000000000000000000000000000000000FF9100FF9B00FF9300FF9100FF91
      00FF9400FF9600FF9A00FF9400FF9300FC8500FF8D00FE8600FF9600FF870000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000002D1C148B593D915C40925C415B3A28000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00A57B73A57B73A57B73A57B73A57B73A57B73A57B73A57B73A57B7392626000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00BB978AFFE8CCFFE5BFFFDFB6FFD9AAFFD6A1FFD19CFFCE9CFFCE9CA8776A00
      00000000000000000000000000000000000000000B0B0B1D1D1D131313121212
      1212121212121212121212120E0E0E0000000000000000000000000000000000
      00000000000000000000000000000000B9180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00BB9A90FFF1DAFFE7CEFFE7C1FFDEBBFFD8AFFFD6A2FFD69CFFCE9CA8776A00
      00000000000000000000000000000000000000005E5E5EF4F4F4F0F0F0EFEFEF
      EDEDEDEEEEEEF0F0F0F0F0F0C0C0C00000000000000000000000000000000000
      00000000000000000000000000000000FF2500AB180000000000000000000000
      0000721B005819002C01D02900DF2908005811005E11005A11005A11005A1100
      5915005415003F0F0D2602A81100000000000000000000000000000000000000
      00C4A096FFF7EDF3CD9BF3CA95F3C690F3C289F3C185F3BE7FFFD59CA8786A00
      00000000000000000000000000000000000000006E6E6EFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE4E4E40000000000000000000000000000000000
      00650000FF2B00FF2300FF2200FF2300FF2300FF2300AA180000000000000000
      0000FAFFFFFFFFFF512FE52900DF39297DD1D1D1FFFFFFFFFFFFFFFFFFFFFFFF
      FEFEFE5F4ABA2900DFB0AFDA4D3E460000007B5C56A57B73A57B73A57B73A57B
      73C7A89CFFFFF9FFF7EFFFF1E2FFEDDAFFE7CEFFE4BDFFDEB7FFD6ABA8796C00
      00000000000000000000000000000000000000006B6B6BC5C5C52222225D5D5D
      BCBCBC2929291818184A4A4ABBBBBB000000777777FFFFFFFFFFFFFFFFFF7F85
      87550000FF2700FF2300FF2200FF2200FF2200FF2300FF2300AE180000000000
      0000FD922AFF6A00FF65003606D02900DF501A00E94B00FF5100FF5100FC4C00
      3A08B52900DFEA5C00F669003A00000000007B5C56FFEAD0FFE7C3FFE1B8FFDB
      AFD0AB9FFFFFFFF3D2A7F3D2A4F3CE9FF3CB99F3C993F3C68DFFE0BBA87A7000
      00000000000000000300000000000000000000006C6C6CFDFDFDC0C0C0E2E2E2
      F5F5F5C9C9C9D2D2D2D1D1D1DEDEDE000000848484FFFFFFFFFFFFFFFFFF9BA0
      A2410000FF2700FF2300FF2200FF2200FF2200FF2200FF2300FF2400C51B0000
      0000E7F9FFFFC16EFCBB84F1FFFF2900DF2900DF5E6161E9F5F5F0FCFC3918CE
      2900DFE5EDEDFF8A1EDDFFFF28283F0000007B5C56FFF5E2FFE9D0FFE7C9FFE0
      BDDAB4A2FFFFFFFFFFFFFFFFFFFFF7F5FFF7E9FFEFE2FFEFD6FFE7C6A87D7500
      0000000000000000C800146A000A000000000000686A6ACDCDCD6A6A6A9F9F9F
      303030646464D3D3D3727272C3C3C30000006C6C6CA4A4A40000006565657F84
      84350000FF1E00FF1C00FF1E00FF2200FF2300FF2300FF2400E81E002D080000
      0000E48A2DFF4F00FC5700FF7D00FF4D002900DF2D02D06B21003908B52900DF
      ED4C00FF5200FF3E00D97A1D2A0000000000846259FFFAF1F6D8B0F3CA97F3C7
      91E0B8A5FFFFFFF3D2A8F3D2A8F3D2A8F3D2A5F3D1A3F3CE9DFFEED8A87E7800
      0000000000000000FF001BEA001769000A0000005C6967FAFBFAC9C9C9EAEAEA
      BFBFBFCCCCCCFDFDFDD0D0D0DCDCDC000000787878FFFFFFC8C8C8FFFFFF9092
      94220000FF0000FF0000FF0000FF0A00FF2500FF2400DE1E0019040000000000
      0000EAF1FFFFC069FCC282F6FFFFFBFFFFF7FFFF360FE02900DF2900DFD5DBDB
      FBFFFFFBFBF5FF9621DEFFFF342A3B00000087695CFFFFFDFFF9F1FFF5EAFFEF
      DEE6BBA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EEEED2D0D0B9B9B3946E6E00
      000079000CFF001CFF0019FF0019E60017640007556765C8D5D4454646767676
      D0D0D04747474040403B3B3B2D2D2D0000006E6E6EBCBCBC000000898989FCFD
      FEDEC3C1FFE7DFFFE9E4B196924C0000FF2400E51E0019040000000000000000
      0000EB8E3FFF5400FC5F00FB8A14FF6300FC63002F04D12900DF2900DF592200
      E35C00FF5A00FF4600DF8D33360000000000916C5FFFFFFFF6DDBEF3D2A4F3CF
      A1E9C1A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDFDCC78E73D19163BE857300
      000079000CFF001CFF001AFE0019FF0019E60015861E28677574A2ABAACDCECE
      BABABA151515A7A7A7898989060606000000787878FFFFFFB5B5B5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBBE8F0260000FF1F0024060000000000000000000000
      0000F1EDF1FFB356F7B570F6FFFFFCFCFC3A18CE2900DFDEE1E17960EC2900DF
      4D4A59C6B5A8FF8D13DFFAFF3D2D300000009A7563FFFFFFFFFFFFFFFFFFFFF9
      F9F3CDAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE0DCE6B579F3AE5400000000
      000079000CFF001CFF001AFF001AFE0019FF0019E60011871521878687EDEEEE
      BDBDBD3C3C3CEFEFEF676767000000000000737373C6C6C6111111989898B7B7
      B70808080E10100E0E0E04080800000040040000000000000000000000000000
      0000FCAD67FF5800FF5900FC9B433A0EB62900DFD47106FF8C07FF8C07D76D2B
      2900DF461A469A2700E6843D430700000000A07B63FFFFFFF6DDBEF3D2A8F3D2
      A8EEC29FEED2C1EED2C1EED2C1EED2C1EED2C1E0BEADDAA87900000000000000
      000079000CFF001CFF001AFF001AFF0019FF001ACC0012793940C1C8C7FFFFFF
      C9C9C9131313424242000000000000000000757575FFFFFF929292E5E5E57F7F
      7F000000BABABA5C5C5C00000000000000000000000000000000000000000000
      0000F5E4CBFFFF99F5F5A03714C92900DFB79F92FFE0B7FFDBBBFFDFB6FFE0B2
      FAD3AA2900DF3A1BB2C9A873603C1A000000A67B63FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF9F9F9DAD4D4C1C1BBA4989800000000000000000000000000000000
      000079000CFF001CFF001AFF0019FF001AC600132F0004152A28717A79707171
      494949000000000000000000000000000000757575D5D5D5868686FFFFFF8888
      885E5E5EFFFFFF51515100000000000000000000000000000000000000000000
      0000A5754DB7A66C2D06D42900DF4D3789A39091A39087A39482A28F86A89996
      B3ABADB4AE9C7170AD5C7ACC5A637F000000AC8469FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBB8473D19469C8896200000000000000000000000000000000
      000079000CFF001CFF0019FF001AC60013360005000000000000000000000000
      000000000000000000000000000000000000939393FFFFFFD3D3D3FFFFFFA6A6
      A600000041414100000000000000000000000000000000000000000000000000
      0000BC4600C54F002900DF3708A6C54500C54900C54500C53F00C43E00C54400
      D25A00CD4F00A24308773A26A36414000000B38D6FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFC59475F7B962E3AF6C00000000000000000000000000000000
      0000000000000000FF001BC80014390005000000000000000000000000000000
      000000000000000000000000000000000000343434A1A1A18F8F8F8989893535
      3500000000000000000000000000000000000000000000000000000000000000
      0000E98719FFA234F4901BF88F18F89817F89320F49C26F4921AF3900EF3870E
      F58E16F98B11F09224D37D1FCD6700000000B38D6FEED2C1EED2C1EED2C1EED2
      C1EED2C1EED2C1C19075E7C89900000000000000000000000000000000000000
      00000000000000005900091C0004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      007B96CB5867765264745466745566745566745567745566745C6C7800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000142F4B544343000000000000000000DEB140D29815D79A
      0CA8C2F7F8F3FFFBFBFFFFF9FFFAF9FFF7F3FFFDF7FFF1EEFFCFD4E900000000
      0000000000000000000000A46A6EA36167DF9D9D000000000000000000000000
      B36668AB5E650000000000000000000000005033335933330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000163D5EB2EFFE4390C5000000000000D5A114FFAF46FDAC39FFA3
      2294B0ECECE7F92223D42A2AD62B2BD62B2CD62B2CD6B4B2E5C1C7DB00000000
      0000000000000000B087893D0E1555242B450E1FB18182000000000000732C3A
      50262C4D1A219467680000000000000000004433334A33338787873333330000
      000000001010281C4193297CE2308FF515215E06060600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000174466B2EFFE56BBF11B5B8D000000000000CC9F19FFAE4CF6A741FDA9
      2D93B2EAF2F3FF8F92E79DA1EA9EA2EA9EA2EA9FA2EACFD0F5C2C8DB00000000
      0000000000000000A87174964B4B000000D38B8B864448000000A08285914547
      000000D58C89873F42000000000000000000333333333333DEDEDE365886387D
      D93C9EFF2775DB1743A9153EA4256ED445A3FF45A3FF24397B00000000000000
      0000321C09321B083119072F16052E14042C12032B0F01290D00290C00290C00
      1C4868B2EFFE55BBF11B6498000000000000000000CC9E1DFFB053F6A947FDA5
      3893B3EBFDFFFFFAF6F8FFFFFCFFFDFCFEFFFCF5F3FAEFEBEFC2C2DB00000000
      0000000000000000AA898A8A3F43000000D4929A6E3337000000904345B78A8A
      000000B15251954444000000000000000000555555606060EBEBEB63829975BF
      FF7FC5FF76C0FF70BFFF6ABDF2BCDFF92956835F9CC696E7FF77A7E200000000
      0000CF7E35FAF9F9F7F5F5F5F1F1F3EDEEC3B3B3A99288AB968BA89090DCCFCF
      C5BBBE51B6ED1B6BA1000000000000000000000000CC9F1EFFB364F7AC4EFDA9
      3C95B5E9FFFFFF9C9BE6A9A7EAA7ABEEA3A4EAA4A5EAD7D8F4C9CBDB00000000
      00000000000000000000007229338035358A3D3B6F3435E4F6F381333A723431
      973B4360212AE1C6C90000000000000000006D6D6D808080FDFDFD8C9999D2F0
      FFDCF2FFE5FAFFB5CFE24E81A66EBACC82E7FF0A99C912121229316B00000000
      0000D18237FFFFFFFEFDFDFCFAFAB79E93FDF1BCFEFBC8FFFFDAFFFFE8D0C4BD
      B19D9DDAD1D4160700000000000000000000000000CCA020FFBE74F7AC58FEAB
      4297B6E7FFFFFF181AD12021D32122D32222D32223D3B5B3ECCED4DC00000000
      0000000000000000000000000000853740631F2E541A249B60667B26305D202B
      663B45BE808200000000000000000000000026495635505D33333333333385E5
      F28389A98BF1FF8BF1FF8BF1FF8BF1FF8BF1FF9CF9FC00446500000000000000
      0000D38539FFFFFFFFFFFFD0C4C4FBE6AEFBE7B0FEFDCBFFFFDDFFFFEFFFFFFA
      AF9A98E0D4D5160700000000000000000000000000CCA023FFB97EF8B565FEAE
      5296B3E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEC9CCD500000000
      00000000000000000000000000000000000000007170705F6B6A5D5E5FE6E2E2
      0000000000000000000000000000000000000099CC59C6F99FD9EC95FBFF95FB
      FF95FBFF95FBFF95FBFF95FBFF95FBFF95FBFFB9FFFF0086B900000000000000
      0000D5883BFFFFFFFFFFFFD9B99FFADFA6FDF2BDFEFCCFFFFFD8FFFFE6FFFFEB
      F8F7E0E2D7D8160700000000000000000000000000CCA123FFBE84F8B272FFB7
      6699B5E3FFFFFFFFFFFFFBF7FFF7F5FFF9FEFFF5F8F7DBD7CCB0B0A700000000
      0000000000000000000000000000000000000000838585FBFCFC727373A2A3A3
      0000000000000000000000000000000000000099CC66CCFF0083B6BAFFFF9EFF
      FF9EFFFF9EFFFF9EFFFF9EFFFF9EFFFF9EFFFFCCFFFFB3F2F9002C4100000000
      0000D78B3DFFFFFFFFFFFFE6C3A1FAE3ABFDF8C9FDF2C4FEFED6FFFFD6FFFFD9
      FEFDD6E5DBDC160700000000000000000000000000CCA226FFBE85F9B677FFB7
      6F97B2E1FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF5C729B636DCF89A5E100000000
      0000000000000000000000000000000000949797A5A5A55B58588E9090959596
      0000000000000000000000000000000000000099CC73D9FF5DC3EC108FBF70C6
      E2BFE6F2FFFFFFC6FFFFC2FFFFC2FFFFC2FFFFDFFFFFDFFFFF0079AC00000000
      0000DA8F3FFFFFFFFFFFFFDDCDC5FADEA6FEFED1FFFFE8FCF1BEFDF7C2FEFAC6
      E5DBC0E8E0E1160700000000000000000000000000CAA42CFFD0A0F9B574FFB8
      729CB9E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6779B39098E500000000000000
      0000000000000000000000000000000000868686A1A1A1C3C4C48A8A8A9E9E9E
      9E9F9F0000000000000000000000000000000099CC86ECFF86ECFF86ECFF86EC
      FF86ECFF4DB3D2CFECF5EDFFFFE0FFFFDBFFFFF2FFFFF2FFFF97D9EC00101800
      0000DC9241FFFFFFFFFFFFFCFCFCF5C790FBE8B1FDF2BDFBE5AEFAE2A9FCEBB4
      E3DADAECE5E5160700000000000000000000000000CAA42EFFCDA0FAC58EFCC0
      82BBAAB6BCA6ADB2A0A2B2A0A4B09897AD9895A99581A6840A00000000000000
      0000000000000000000000000000AFB0B0BFBFBF9999990000000000009D9D9D
      9A9C9C0000000000000000000000000000000099CC99FFFF99FFFF99FFFF99FF
      FF99FFFF99FFFF73D9E6399FBF0A7CAC0083B640ACD28FD2E9DFF2F9005D8C00
      0000DE9542FFFFFFFFFFFFFFFFFFFAF9F9EFCEAEF7CE92F8D69BF4D6AEE8E2E2
      F9F6F6EFEAEA160700000000000000000000000000CAA42DFFCAA6FFCC8EFFD2
      90FFC06DFFC16CFFBA63FFBE5CFFBD55FFB347FFAD39B18A0B00000000000000
      0000000000000000000000000000929494AAAAAA000000000000000000A8A8A8
      9E9E9EE0E0E00000000000000000000000000099CC99FFFF99FFFF99FFFF99FF
      FFDCFAFFC3FCFFAEFEFF99FFFF99FFFF99FFFF00000000000000000000000000
      0000DF933BFFC17CFFB570FFA763FF9954FF8A45FF7A35FF6A25FF5A14FF4A04
      FF4903EC3C03160700000000000000000000000000CDA52EFFCCA78593A0939A
      A1969EA6919AA2939CA58F99A2929CA68997A6FFAF52B1890E00000000000000
      0000000000000000000000000000838484000000000000000000000000000000
      7476769E9E9E000000000000000000000000006695EFFEFFD2FFFFB9FFFFE4F7
      FC005A86005D8C0072A30080B32E9FC96BC4E200000000000000000000000000
      0000986326FBC57EFAB871FAAA63F99B55F88C46F77C37F66D28F65D18F54D09
      F44703D33602020000000000000000000000000000FFFFEAFAC281CFD8ECADB0
      B8FFFFFFFFFFFFFFFFFFFFFFFFB1B2B6AAADBBF1AD4BFFFCE300000000000000
      0000000000000000000000000000585D5D000000000000000000000000000000
      BABCBD777877000000000000000000000000000000005D8B00608F0072A3006F
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F0E5B6DECD8CC5C1
      BA9C9C9C9291909392918E8E8DBCB7ACE4D18CECE3B800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000C1C1C1000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFF00000000
      C003FDFF00000000C003F8FF00000000C003F07F00000000C003E03F00000000
      C003C01F00000000C003800F00000000C003030700000000C003878300000000
      C003CFC1000000000000FFE0000000000001FFF000000000C003FFF900000000
      FF8FFFFF00000000FFDFFFFF00000000FFFFFFFFFFFFFFFFFC0F8F03E1FFE01F
      F8038703E1FFE007F0018787E1FFE003E1E10087E1FFE1C1E1E10087E1FFE1E1
      E1E1008F002FE1F0E1E1E10F0027E1F0E1E1E10F002380708061E11FE1C38070
      8061F01FE1C3E1E08061F01FE1C3E1C18071F03FE003E181E1FFF83FE007E183
      E1FFF83FE00FE187FFFFFFFFFFFFFFFF87E3FFFFFFFFF81F87E3FFFFFFFFE007
      87E3FFFFFFFFC00387E3F83FFFFF800387E3F83FFFFF800187E3F83FFFFF8001
      87E3C007C007800187E3C007C007800187E3C007C007C00387E3C007C007E007
      83E3C007C007FF870023F83FFFFFE3C71000F83FFFFFE1C31000F83FFFFFE003
      1000FFFFFFFFE0071007FFFFFFFFF00FFE1FF81FFF80FFFFFC0FE007FF8107E1
      F807C003F98703C1F0078003F0C30181E0038001E0610001C0018001E0018003
      80008001E001C44700008001F981E28F0000C003F9FFF18F0000E007F908E387
      0000E387F900C4430000E187F90080018000E007F9000101C000E00FF9800381
      E000F01FF98107C1FF81F83FFF810FE1FFCF0000FFFFC007FC070000C3FFC007
      80030000C03FC00780030000801FC00780030000800FC007800300008005C007
      80030000C00FC007800300008007C00780030000C007C00780030000C003C007
      80030000C000C007800300000000C007C00300000000C007E0030000003FC007
      F003000001FFC007F00F0000FFFFC007FFFF0001FFFFFFFFFFFF0000FFFFFFFF
      000100000001DF3F000100000001CF1F000100000001C00F000100000001C007
      000100000001C003000100000001C001000100000001C0030001C0070001E003
      0001C0070001F0070001C0070001F00F0001C0070001F01F0001C00F0001FF3F
      0001C01F0001FF7FFFFFC03FFFFFFFFFF801FFFFFF9FFFFFF801F800FFCFFFFF
      F801F800FFC70001F801F800000300010001F800000100010001C80000000001
      0001C000000100010001C00000030001000100000007000100010001000F0001
      00030003001F000100070007007F0001003F000F00FF0001003F001F01FF0001
      003FC7FF03FF0001007FCFFFFFFFFFFFFFFFFFFFF803FFFFFFFFFFF8C003E3CF
      0F3FFFF08003C187000FFFE08003C927000300018003C927000300038003E007
      000300078003F00F000700078003FC3F000700078003FC3F000300078003F83F
      000300078007F81F000100078007F19F000100078007F38F001F00078007F7CF
      001F00078007F7CF87FFFFFFC00FFFEF00000000000000000000000000000000
      000000000000}
  end
  object ImageList6: TImageList
    Left = 104
    Top = 187
    Bitmap = {
      494C010116001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001001800000000000048
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000C8A19BB08E88B08E88000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000B08E8890746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000000000000000000000A8878190746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003333340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000E1B5AED0A8A1C09B94A0817B90746F90746FB08E88
      D0A8A1D0A8A10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F2F2F20000003334340B0A
      08000000000000000000000000000000000000000000393A3A6C6C6C00000000
      0000000000000000000000B08E8890746F90746F90746F90746F90746F90746F
      90746F90746F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F4F4F40000003333330D0C
      090000000000000000000000000000000000000000003A3A3A6C6C6C00000000
      0000000000000000000000E1B5AED0A8A1C09B94A0817B90746F90746FB08E88
      D0A8A1D0A8A10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000009090911515153636361F20
      20C5C5C50000000000000000000000000000000000003A3A3A6C6C6D00000000
      0000000000000000000000000000000000000000A8878190746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A90A0A0A1B1B1B2728281313
      14040404B6B6B7F2F2F200000040404000000000000037373873737400000000
      0000000000000000000000000000000000000000B08E8890746F90746F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000191919323232FFFFFF000000FFFF
      FF1E1E1F020000FFFFFF0000002525264A4A4A0F0F1033343430303068686859
      595A000000000000000000000000000000000000C8A19BB08E88B08E88000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000363636383838D5D5D6000000FFFF
      FF191A1A0E0C0BFFFFFF0000003232323333343232323131313232323132322F
      2F30000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090909101010A4A4A40000009393
      930B0B0B000000FFFFFF0000002F2F301111110303031414140D0D0D06060612
      1212000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F3969697E6E6E6000000EAEA
      EA8E8E8EFFFFFFF4F4F4000000323334FFFFFFFFFFFF6D6D6D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001111111C1C1C1C1C1C1C1C1C191919
      0505050000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000C7C7C75454544F4F4F3B3B3B232323525252FD
      FDFD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000A5A5A5686868787878D2D2D200000000000000000000000000
      00000000000000000000000C0C0C1818186F6F6F9191918383838A8A8A8E8E8E
      3E3E3E0F0F0F0505050000000000000000000000000000000000000000000000
      00000000000000000000000000D3D3D35252525B5B5BB4B4B4C7C7C7D8D8D800
      000024262272786D72786D373A34000000000000000000000000000000000000
      000000090A096A706572786D666C610000000000000000000000000000000000
      000000009B9B9B51526945456A46466C767676CECECE00000000000000000000
      0000000000000000191919545454717171A0A0A09090904949496A6A6AA5A5A5
      8787876767673535350707070000000000000000000000000000000000000000
      00FFFFFFFDFDFD000000000000F5F5F59898984F4F4FBCBCBC00000000000000
      0000282B267F86797F86797E8578373A34000000000000000000000000000000
      0909096D74687F86797F867972786D0000000000000000000000000000000000
      009393934E4E754D4D774E4E784D4D774B4B727B7B7BD8D8D800000000000000
      00000000000D0D0D6767679E9E9EA8A8A8B1B1B18A8A8A2F2F2F5B5B5BA6A6A6
      ADADADA5A5A58E8E8E343434000000000000000000000000000000000000F8F8
      F89E9E9E898989FFFFFF000000000000E9E9E9656565555555F4F4F400000000
      0000282B267F86797F86797F86797E8578373A34000000000000000000090909
      6D74687E85797F86797F867972786D0000000000000000000000000000008C8C
      8C53537E55558357578555558352527E4F4F794C4C758C8C8C00000000000000
      00000000000F0F0F696969929292959595ACACAC969696363636676767ACACAC
      9F9F9F9393938A8A8A363636000000000000000000000000000000F9F9F98D8D
      8D2B2B2B3232329B9B9BFDFDFD000000000000E4E4E45A5A5A888888FEFEFE00
      0000080808696F657E85797F86797F86797E8578373A35000000090A096E7469
      7F86797F86797F86797D84782F322D0000000000000000000000008F8F8F5353
      805858875C5C8D5D5D8E5A5A8957578554548051517B505077A2A2A200000000
      0000000000121212767676A5A5A5A6A6A6A6A6A65252520F0F0F262626868686
      A9A9A9A5A5A59D9D9D3E3E3E000000000000000000000000000000D3D3D36161
      613B3B3B4545457C7C7CC0C0C0ECECECB8B8B8B4B4B4696969515151BEBEBE00
      0000000000060706696F647E85797F86797F86797E85783E423B6E74697F8679
      7F86797F86797D847830322E000000000000000000000000A2A2A273737A6060
      885D5D8E5E5E905E5E8F5D5D8F5B5B8C58588855558252527D666677BCBCBC00
      00000000000F0F0F6969699292929292928989893535350D0D0D151515666666
      9292929292928C8C8C373737000000000000000000000000000000FAFAFAE6E6
      E69B9B9B828282FFFFFFFFFFFFCECECE5555555151515454544F4F4F77777700
      0000000000000000060706696F647F86790000007F86797F86797F8679000000
      7F86797D847830322E000000000000000000000000ABABAB9E9E9E9090917A7A
      8C63638E5E5E905E5E905E5E8F5E5E8F5C5C8D5A5A8957578454548093939300
      00000000000F0F0F6F6F6F9999999A9A9A9797977F7F7F7373737676768D8D8D
      9A9A9A9B9B9B9292923939390000000000000000000000000000000000000000
      00A2A2A2909090000000000000FFFFFFD7D7D7E4E4E4F3F3F3FFFFFFFEFEFE00
      0000000000000000000000060706696F657F86790000007F86790000007F8679
      7D847830322E000000000000000000000000000000C4C4C4B5B5B5A7A7B29494
      A27C7C8F64648E5E5E915E5E905E5E905D5D8F5D5D8F5B5B8B585887656582C8
      C8C80000000000002828283A3A3A4040403E3E3E3939393C3C3C3838383A3A3A
      4141413E3E3E3535351414140000000000000000000000000000000000000000
      0096969687878700000000000000000000000000000000000000000000000000
      000000000000000000000000000010110F7A81757F86790000000000007F8679
      4B4F47000000000000000000000000000000000000D2D2D2C2C2C8B4B4BDA9A9
      B59B9BA988889977778A66668E62628F6B6B8C5E5E8F5F5F8F63638C676786A6
      A6AA0000000000000000000A0A0A4B4B4B252525000000000000000000070707
      4848482B2B2B0000000000000000000000000000000000000000000000000000
      009A9A9A909090000000D4D4D4696969B0B0B0FFFFFF000000DCDCDC868686AB
      ABAB0000000000000000000909096E74697F86790000000000000000007F8679
      7E8578373A35000000000000000000000000000000DEDEDECFCFD4C0C0C8B6B6
      BEABABB4A0A0AC9393A28A8A9988889891919F8686978080917E7E8F7D7D8D7D
      7D8E0000000000000000001212127474743939390000000000000000000C0C0C
      6F6F6F4242420000000000000000000000000000000000000000000000000000
      00AAAAAA898989000000C8C8C85353534F4F4F7F7F7F6C6C6C515151494949C4
      C4C40000000000000909096D74687F86790000007F86797F86797F8679000000
      7F86797E8578373A35000000000000000000000000E6E6E6E3E3E6CBCBD2C1C1
      C8B7B7BFACACB7A1A1AE9696A59898A6A4A4B29898A78A8A9B84849683839377
      778E0000000000000000001616167575753D3D3D000000000000000000111111
      7070704444440202020000000000000000000000000000000000000000000000
      00A8A8A88C8C8C000000F2F2F27777774C4C4C6B6B6B6E6E6E5555556C6C6CFA
      FAFA0000000909096D74687E85797F86797F86797D8478363933696F657F8679
      7F86797F86797E8578373A34000000000000000000E9E9E9EAEAEAE3E3E5CECE
      D4C2C2C8B8B8C0B0B0B9A9A9B5BABAC2B6B6BEA8A8B29999A78C8C9D87879988
      88990000000000000000004B4B4B7878787171712222220606060808084D4D4D
      8080806060604444440000000000000000000000000000000000000000000000
      008888885F5F5F000000FFFFFFADADAD535353ACACACD8D8D85151519E9E9EF7
      F7F70A0B0A6E74697F86797F86797F86797D847830322E000000060706696F64
      7E85797F86797F86797E8578373A34000000000000000000E8E8E8E8E8E8E8E8
      E9DDDDDFD1D1D6C6C6CCCDCDD1E1E1E3C8C8D0B6B6BFA7A7B49B9BA88B8B9BAF
      AFB50000000000000000003434344040408888887A7A7A626262666666919191
      6262623636360000000000000000000000000000000000000000000000000000
      00A8A8A8969696000000000000D8D8D8575757737373999999585858E0E0E0F8
      F8F8282B267F86797F86797F86797D847830322E000000000000000000060706
      696F647E85797F86797F867972786D000000000000000000000000000000D9D9
      DBD1D1D5CBCCCFD8D8D9000000E2E2E2E0E0E1D2D2D8C3C3CBACACB7B2B3B800
      00000000000000000000000000000606063B3B3B555555545454555555505050
      1E1E1E0000000000000000000000000000000000000000000000000000000000
      00FFFFFFFEFEFE000000000000F2F2F28585854C4C4C5151517E7E7EFAFAFA00
      0000282B267F86797F86797D847830322E000000000000000000000000000000
      070707696F647F86797F867972786D0000000000000000000000000000000000
      00000000000000000000000000000000DDDDDDC7C7CBBABAC2C9C9C900000000
      0000000000000000000000000000000000000000010101020202020202010101
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FCFCFCCACACA515151686868D5D5D5FCFCFC00
      00000D0E0C282B26282B26222421000000000000000000000000000000000000
      000000080808282B26282B262426230000000000000000000000000000000000
      000000000000000000000000000000001D1C1D18181800000000000000000000
      00005E5E5E565656565656585858595959585858585858585858565656565656
      5656565656565656565555555455556060600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000002020306060808080C08080C08080C08080C08080C08080C
      08080B08080B0202040000000000000000000000000000000000000000000000
      000000001D1C1E312D34322F353A353E37343A1B162119161C00000000000000
      00007070701C1C1C1C1C1C3434348686869C9C9C5252527878782424242E2E2E
      1C1C1C1C1C1C1C1C1C1E1E1E3737375154550000000000006464999F9FAAAEAE
      AEAEAEAE00000000000000000000000000000000000000000000000000000000
      00000000000000000D0D131E1E2F29293F29293E29293F29293F29293F29293F
      29293E27273B0F0F1600000000000000000000000019181A262626363636342A
      3C3A334038353B38353A37343A37333A38353A1B16211C172219171B00000000
      00006A6A6A000101000101080808D7D7D7535353888888292929323232020202
      0202020001010001010101011E1E1E52555600000000000065659A65659A6565
      9A7676817777837C7C7C7E7E7E7E7E7E00000000000000000000000000000000
      00000000000000000F0F1825253932324C32324C32324D32324D32324D32324D
      32324C2F2F4912121B0000000000000000000000004949496D6D6D7575757676
      766C6C6C6666665858584848483D3D3D36303B1B16211D17231D172400000000
      0000686868000000000000272727C6C6C6FFFFFFF8F9FBC6C6C6C3C3C3000000
      3A3A3A0000000000000001011D1D1D52555600000065659A65659A65659A6565
      9A64649964649965659A6464997E7E7E7E7E7E00000000000000000000000000
      00000000000000000F0F1825253932324C32324C32324D32324D32324D32324D
      32324C2F2F4912121B0000000000000000000000003E3C4035283E3B373E6A6A
      6A7373737070706C6C6C6C6C6C6D6D6D6C6C6C1A15211D17231D172400000000
      000069696900000000000002020414141E0101016363639B9B9B7070707B7B7B
      0000000000000000000001011D1D1D52555600000065659A64649A65649A6464
      9A64649A65649A64649A65649A646498605B837E7E7E00000000000000000000
      000000000000000010101826263932324D32324D33334D33334D33334D33334D
      32324D30304912121C0000000000000000000000003B33419696968E8E8E3A34
      3F3C3B3D6666667474746E6E6E6D6D6D6D6D6D1A15201D17231D172400000000
      00006969690000000000000000002727279E9E9EC1C1C1CECECEB2B2B2838383
      0B0B120101010000000001001D1D1D525556000000659A9A659A9A97BBBB659A
      937CA9A6A3C0BA689C9C9ABDBB659A95659A9A8383837E7E7E00000081818100
      000000000000000010101826263932324D32324D33334D33334D33334D33334D
      32324D30304912121C0000000000000000000000007A7A7A9292929696963D36
      424242423C393E38333D5757577474747C7C7C1915201D17231D172400000000
      0000696969000000020204525252666666B3B3B3AAAAAA8A8A8A686868B5B5B5
      62626266666614151D0101001C1C1C525556000000000000649A9A8494AB506F
      7B535E7E929292525B7BB7BBCB608B946499997E7E7E00000000000000000000
      000000000000000010101826263932324D32324D33334D33334D33334D32324D
      35375031324B12121C0000000000000000000000005E5E5E9C9C9C505050352A
      40636363A3A3A3F3F3F3FFFFFFFEFEFE8C8C8C3E3E3E1D17231D172400000000
      000069696904040775757507070A9C9C9CC3C3C3CDD1DBB6B6B69C9C9CCBCFD8
      8A8A8A6464641616164646461C1C1C525455000000659A9A649A99B5C6CC4F6C
      79394B586B6E9E7F86A4B9B9B9576785659A9A7E7E7E7F7F7F00000000000000
      000000000000000010101826263932324D32324D33334D33334D33334D33354F
      4458693B475A12121C000000000000000000000000626262A3A3A3FEFFFFFFFF
      FFFFFFFFFCFCFCFEFEFEFDFDFDF7F7F78C8C8C6868681A16211D172400000000
      00006666663F3F3F343434242424939393B6B6B6CACBCE9494948E8E8EAEAEAE
      A0A0A02E2E2E040506474747565656565656000000000000649A9AAEC1C74662
      6A3636529B9AA5868686AEAEAE5E908E6499996E8E8E7E7E7E00000000000000
      000000000000000010101826263932324D32324C32324D32324D33334D33334D
      3B455B353B5212121C0000000000000000000000006C6C6CC2C2C2FEFEFEFEFE
      FEFEFEFEFDFEFDFDFDFDFEFEFEFEFDFE8C8C8C6565653D3D3D1D172400000000
      0000626262525252313131585858787878BBBBBBCCCCCC9E9E9E8282828C8C8C
      939393404040090A0C5F5F5F9E9E9E575757000000000000649A9A64999A5480
      80627D97605C8E8EA9AA4E7777659A9A649A9A649A9A7E7E7E7E7E7E00000000
      000000000000000010101826263932324C3D3D46414143414143414143404044
      3737492F2F4912121C0000000000000000000000005E5E5EDADADAFEFEFEFFFE
      FFFEFDFEE8EEE8C0D6C090B6907198719292928C8C8C7373731B162200000000
      00006161618282822B2B2B2B2B2B3D3D3D6161616868689E9E9E929292787878
      8686860A0A0F000001AEAEAE90909056565600000000000064999A64999A6499
      99374F531D2C234F7177649898659A9A64999A64999A659A9A7E7E7E8484847E
      7E7E0000000000001010182626394040435B5B5B676767676767676767656565
      4D4D4D2F2F4912121C0000000000000000000000006868689E9E9E6FA06F6696
      666498649393939C9C9CCACACAD7D7D7FBFBFBA1A1A169696956565600000000
      0000636363B7B7B71D1D1D3333334B4B4B4B4B4B929292D6D7DAD0D0D0B6B6B6
      8B8B8B1014190B0D12C6C6C6B0B0B05858588686868585857D7D7D647D99647E
      9A65809A65849A65819A657E9A657E9A657E9A647E9A657E9A657E9965809A78
      78780000000000001010182626394444446C6C6C9898649898649898648D8D67
      5555552F2F4912121C000000000000000000000000000000BABABAC7C7C7FFFF
      FFFFFFFFFFFFFFFEFEFEE3D8E3CCB4CCB087B0ACACAC7B7B7B44444400000000
      0000616161C9C9C90F0F115555555A5A5A6B6B6BB9B9B9D1D6DEC4C4C4BABABA
      4C4C4C666666191919B3B3B3BABABA58585865659A65659A65659A65659A6565
      9A65659A65659A65659A65659A65659A65659A65659A65659A64659A65659A65
      659A0000000000001010182626394444446A6A6A929266929266929266878769
      5454542F2F4912121C000000000000000000000000000000000000B0B0B09E6B
      9E9364939A659A8C8C8C9B919BC2C2C2CDCDCDE6E6E6B4B4B458585800000000
      0000616161DADADABBBBBB3A3A3A2020202A2A2A5050503A3A3AC0CAD6888888
      2C2C2C282828BDBDBDCCCCCCC5C5C558585865659A65659A65659A65659A6565
      9A65659A65659A65659A65659A65659A00000000000000000000000000000000
      00000000000000000F0F182525393B3B465353535A5A5A5A5A5A5A5A5A595959
      4949492F2F4812121B000000000000000000000000000000000000000000B3B3
      B3FFFFFFFEFEFDFFFFFFFCFCFCDBDBE7BDBDD49B9BBEB6B6B65A5A5A00000000
      0000646464373737FFFFFE0E10141E1E1E5050502828284444442F2F2F010102
      0A0B0C0F0F0FFDFCFBEBEBEB0D0D0D51545565659A65659A65659A65659A6565
      9A65659A65659A00000000000000000000000000000000000000000000000000
      00000000000000000F0F1724243831314A323249333349333349323249323249
      30304A2E2E4711111B000000000000000000000000000000000000000000BEBE
      BE6464987D7D8268686A6E6E6E7070705A5A5A65656500000000000000000000
      00006969696767676060606A6A6A6A6A6A6666666767676868686969696A6A6A
      6A6A6A6A6A6A6060606161617272725A5A5A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000008080B13131C191926191926191927191927191927191927
      19192718182409090D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000808080A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
      0A0A0A0A0A0A0A0A0A0808080202020000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000393939828282878787888888888888888888888888888888888888888888
      8888888888888787878888886A6A6A03030300000048486F3E3E5F3E3E5F3E3E
      5F3E3E5F3E3E5F3E3E5F3D3D5D3C3C5C3C3C5C3C3C5C3C3C5C3C3C5C3C3C5C0D
      0D15000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052547E4A4A724949704B4D724D4D
      754C4C754D4E774E4E774E4E774D4D774D4E774A4A7148486E41466320213000
      00003D3D3D8A8A8A8E8E8E8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
      8F8F8F8F8F8F8E8E8E8E8E8E717171040404000000D6D6DCE5E5E5E5E5E5E5E5
      E5E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E5E5E5E5E5E5D9D9DB26
      2626000000000000C0C0C0000000000000000000000000000000748B87748B87
      000000000000000000000000000000000000DBDBDCD4C6D6DBCEDDFEFEFDFCFB
      FCFCFBFBFEFEFEFDFDFDFEFEFDFEFEFDFEFEFDE1D9E5CBB9CECCCCD8484A5000
      00000E0E0E2D2D2D2F2F2F3030302E2E2E3030302E2E2E3030302E2E2E303030
      2E2E2E3131312C2C2C2F2F2F1F1F1F000000000000EBEBF0FDFDFCFDFCFCFDFC
      FCFDFDFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCEBEBF122
      2222000000000000C0C0C0BEBEBE000000000000000000000000748B87748B87
      748B870000000000000000000000000000008787AF65649A6B6A9E66689A6464
      9A64649A64649A64649A64649A64649A64649A64649A68679C64649A31314C00
      00004848489090909292929696969191919696969090909898988F8F8F989898
      8E8E8E9898988E8E8E9696966C6C6C050504000000EBEBF0FDFCFCFDFCFCFDFC
      FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBEBEBEF21
      2122000000000000C0C0C09A9A9A7F7F7F7F7F7F748A87748B87748B87748B87
      748B87748B87000000000000000000000000D9DAE6A2A1C2AAABC8FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2E18182AACACBDD3E415300
      0000565656C2C2C2C9C9C9C8C8C8C9C9C9C6C6C6CBCBCBC6C6C6CBCBCBC5C5C5
      CCCCCCC6C6C6C2C1C4A59BB99F9F9F0F0F0F000000EAEAF2FCFCFBFDFCFBFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCEBEBF020
      2022000000000000C0C0C09B9B9B7F7F7F7E7E7E768885748B87748B87748B87
      748B87748B87748B870000000000000000008888B165659A68689C7979A86B6B
      9E6B6B9E6B6B9E6B6B9E6B6B9E6B6B9E6C6C9F65659A64649A68689A32324C00
      0000565656B0B0B0B4B4B4B6B6B6B4B4B4B7B7B7B2B2B2B8B8B8B2B2B2B8B8B8
      B2B2B2B9B9B9AEAEAEACACAC8989890B0A08000000EAEAF2FCFCFBFDFCFBFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCEBEBF021
      2122000000000000C0C0C09D9D9D7F7F7F7F7F7F768885748B87748B87748B87
      748B87748B87748B87748B87000000000000D5D6E49D9CBFAAAAC7FBFBFCF0F0
      F6F0F1F6F0F1F6F0F1F6F0F1F6F0F1F6F0F1F6CACADC8282ABC7C7D83E425800
      00001212122B2B2B2C2C2C3636363E3E3E4242423E3E3E4242423E3E3E434343
      3E3E3E3F3F3F2929293030301E1E1E000000000000EAEAF2FCFCFBFDFCFBFCFC
      FBFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFCFBEBEBEF23
      2323000000000000C0C0C09E9E9E7F7F7F7E7E7E758986748B87748B87748B87
      748B87748B87748B87748B87748B870000008E8EB565659A6C6C9F8382AE7776
      A57776A67776A67776A67776A67776A67877A66C6B9F64649A6F6FA136365200
      00000000000000000000003434348B8B8B8888888888888888888C8C8C929292
      8E8E8E6E6E6E060606000000000000000000000000EAEAF2FCFCFBFDFDFDFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFDFCFDFCFBFDFCFBECEBF123
      2323000000000000C0C0C09E9E9E7F7F7F7F7F7F758986748B87748B87748B87
      748B87748B87748B877F7F7F000000000000CDCEDF9797BBA4A4C4EEEDF4E3E3
      ECE3E3ECE3E3ECE3E3ECE3E3ECE3E3ECE3E3EDC1C1D67E7EA9BEBED53E3F5F00
      0000000000000000000000565656A2A2A25656565050505050507D7D7DB0B0B0
      8686869A9A9A121212000000000000000000000000EAEAF2FCFCFBFCFCFBFDFC
      FBFDFCFBFDFCFBFDFCFBFCFCFBFDFCFBFDFCFBFDFCFBFDFDFCFDFCFBECEBF023
      23230000000000000000009A9A9A7F7F7F7E7E7E758986748B87748B87748B87
      748B87748A877E7E7E7F7F7F0000000000009D9DBF68689C6E6EA09595B98A8A
      B38A8AB28A8AB28A8AB28989B28A8AB28B8BB37778A764649A7878A53A3A5A00
      0000000000000000000000565656B6B6B68585858484848888889C9C9CBBBBBB
      A1A1A1989898101010000000000000000000000000EBEAF2FDFDFCFDFDFDFDFD
      FCFDFDFCFDFDFCFDFDFCFDFDFDFDFDFCFDFDFCFDFDFCFDFDFCFDFDFDEDECF124
      24240000000000000000000000009595958080807F7F7F7F7F7F7F7F7F748B87
      748A877E7E7E7F7F7F000000000000000000BCBBD2B8B0CBBCB6D0BEBFD4B9B8
      D1B8B8D0B9B8D1B8B8D1B8B8D0B7B6D0B3B2CDB3AFCAB1A8C58F8EB546476700
      0000000000000000000000565656A5A5A55E5E5E888888ACACAC5B5B5B565656
      555555383838000000000000000000000000000000C9C9C9C2C2C2C2C2C2C2C2
      C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C0C0C0BDBDBDBDBDBDBCBCBCBABABA1C
      1B22000000000000000000000000B2B2B2939393808080808080808080748A87
      7F7F7F7F7F7F0000000000000000000000006F6FA17E78A77B75A58081AC8282
      AE8182AD8181AC8181AD8181AC8685B08F8EAF8885AD87809F8080806D6D6D00
      0000000000000000000000565656B3B3B3808080A2A2A29090902A2A2A727272
      5656560101010000000000000000000000000000005C597F5E5E735D5C745D5B
      755B59775D5C755A59745958745755765756768E8E8E82828272727269696927
      2727000000000000000000000000A9A9A9A1A1A18080808080807F7F7F7F7F7F
      8080800000000000000000000000000000004F4E7858578352517A52517A5150
      7852527B52527A5050774F4E7653537C61618F5F5F8E5F5F8E52557E5A5A8B00
      0000000000000000000000565656A9A9A98B8B8BCBCBCB969696464646A3A3A3
      4E4E4E01000000000000000000000000000000000070689C746D9F736C9F736B
      9F716A9D736B9F726B9E726A9E70689D6F689A706B99706B99706A9C6D679B00
      00000000000000000000000000000000000000000000000000007F7F7F7F7F7F
      0000000000000000000000000000000000006564986C699B67659A67659A6765
      9A67659A67659A67659A65639866639866659A67659A66659A5F5E8E4D4A7100
      0000000000000000000000545454ACACAC969696CBCBCB929292202020343434
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000002121216464646868686A6A6A424242000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      009090909696969696969595959494949393939494949393939494947E7E7E00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00AEAEAEE1DDE7D9D5DFD4CFDDCEC8D9C9C2D6C6BED5C5BFD3C7BED894949400
      00000000000000000000000000000000000000000D0D0D2121211E1E1E1E1E1E
      1E1E1E1E1E1E1E1E1E1E1E1E1818180000000000000000000000000000000000
      0000000000000000000000000064649A43436603030400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00B4B4B4EBE7F0D9D5E0D3CDDDCEC8D9C9C2D7C4BBD3C2B9D1C7BEDA96969600
      0000000000000000000000000000000000000000575757DDDDDDDEDEDEDEDEDE
      DDDDDDDEDEDEDDDDDDDEDEDEB2B2B20000000000000000000000000000000000
      0000000000000000000000000064649A63639842426402020300000000000000
      000052537D48486F675E8F675E8F33334D4B4B734D4D754D4D764D4D764D4D75
      4D4D754B4B7436364B635A8B13141E0000000000000000000000000000000000
      00BBBBBBF1EFF5CAC7CFC4C0CAC1BCC9BDB8C6BAB4C4B8B2C3C8BDDA96969600
      0000000000000000000000000000000000000000696969FCFCFCEEEEEEF7F7F7
      FBFBFBEFEFEFF2F2F2F5F5F5D3D3D30000000404040C0C0C0404040404040000
      002E2E4765659A65659A64649A64649A64649A63639840406302020300000000
      0000DBDBDCD7C7D96460746158872A2A2AFCFAFCFDFDFDFDFDFDFEFEFDFDFDFD
      FFFFFF6A6A6A635B8BAAAAAA4648500000007474749898989797979797979A9A
      9ABBBBBBFAFAFAE9E8ECE2DFE8DDD9E4D7D2E1D1CBDDCEC8D9D0C7E098989800
      0000000000000000000000000000000000000000686868BDBDBD3B3B3B727272
      BEBEBE404040353535606060BBBBBB000000787878F0F0F0E1E1E1E1E1E17070
      7029294065659A65659A64649A64649A64649A64649A64649842426402020400
      00008787AF65649A7070A15A5480655C8E18182565659A64649A64649965659A
      4C476C5D558169698964649A31314B0000007C7C7CDCDCDCDBD7E2D6D0DECDCA
      D3C3C3C3FAFAFAD1D0D3CCCAD0C9C6CEC6C2CCC2BECAC1BCC9D7CFE49B9B9B00
      000000000000000007070B030304000000000000676767E8E8E8BCBCBCD5D5D5
      E4E4E4C0C0C0C6C6C6CBCBCBD0D0D0000000909090FFFFFFFBFBFBFFFFFF8888
      8826263A65659A65659A65659A64649A64649A64649A64649964649944446700
      0000D9DAE6A2A2C0ABABC6FEFFFE5F5A7F635B886C6C6CFFFFFFFFFFFE6B6B6B
      5A5380CCCCCC8181A9CBCCDA3F42520000007E7E7EE6E6E6DDD9E4D5D0DECDC9
      D4C8C8C8FEFEFEF0F0F0EFEFF0EBEAEDE6E3EAE1DDE7DCD8E3E0DAEA9E9E9E00
      00000000000000004B4B73292940010102000000676767C0C0C0757575A0A0A0
      444444727272C9C9C9797979BDBDBD0000008585859A9A9A0808088787878080
      8025253865659A65659A64649A64649A64649A64649A64649955558112121C00
      00008888B165659A68689B7979A670709C5A53805D558130313D524D755C5480
      75758864649864649A67679B32324C000000848484EFEFEFD5D4D8C4C1CABFBD
      C2CACACAFAFAFAD3D2D5CFCED2CFCDD2CECCD0CBCACECAC9CCE5E2E9A0A0A000
      000000000000000065659A5858882B2B42000000626262E5E5E5C4C4C4DCDCDC
      B8B8B8C6C6C6EAEAEAC7C7C7CACACA000000898989F2F2F2C3C3C3F5F5F58686
      861F1F3064649A64649A64649A65659A64649A65659A53537E10101800000000
      0000D5D6E49D9CBFAAAAC7FBFBFBF0F0F4F1F1F4717079645C8A5B5480E5E5E5
      F1F1F1CACADC8282ABC7C7D83D4157000000898989F4F4F4EDECEFE4E2E8DBDA
      DFCECECEFFFFFEFEFFFEFFFFFFFFFFFFFCFCFCEBEBEBCBCBCBB8B8B88C8C8C00
      000034344F65659A64649964649A585888292940606060BFBFBF4F4F4F808080
      C6C6C6505050494949464646363636000000868686A5A5A5202020989898EAEA
      EACACACADFDFE9E0E0E99696962B2B4164649A52527E0F0F1700000000000000
      00008E8EB565659A6C6C9F8383AC7776A47978A45953766159886159832C2C2C
      7877A76B6B9D64649A6F6FA13535520000008E8E8EF6F6F6DDDDDECDCBD0C8C7
      CACDCDCDFEFEFEFDFDFDFEFFFEFFFFFFFDFDFDD8D8D89B9B9B98989898989800
      000034344F65659A64649A64649A65659A5858885454546E6E6EA5A5A5C8C8C8
      B2B2B22C2C2CA3A3A38383830D0D0D000000898989E9E9E9B3B3B3EDEDEDFEFE
      FEFFFFFFFFFFFFFFFFFFB6B6B61A1A275B5B8C11111A00000000000000000000
      0000CDCEDF9797BBA5A5C2EEEEF2E9E9F065636D5E5886CCCCCC929292665E8F
      2A2A2ABFBED57F7FA6BFBFD33F405D000000949494F7F7F7F4F4F4F0F0F0E8E8
      E8D8D8D8FEFEFEFEFEFEFFFFFEFEFEFEFFFFFED8D8D8A6A6A6A096B099989A00
      000034344F65659A64649A64649A64649A65659A575786535353868686E2E2E2
      B3B3B3494949D5D5D55B5B5B000000000000878787AFAFAF323232A3A3A3B1B1
      B12F2F2F3434343232321D1D1D04040719192600000000000000000000000000
      00009D9DBF68689B6E6E9E9595B9544E72645B898282828A8AAD8A8AB17C7C7C
      685F8E1E1C2C5858877778A53A3A58000000989898F8F8F8DFDEE0CFCDD2CDCC
      CFCBCBCBD9D9D9D8D8D8D6D6D6D5D5D5D8D8D8C0C0C0A8A8A8B7B7B700000000
      000033334F65659A65659A64649964649964649A4D4D77575757B8B8B8F3F3F3
      B9B9B91F1F1F3F3F3F000000000000000000898989E2E2E29B9B9BDDDDDD7D7D
      7D212121B2B2B25E5E5E01010100000000000000000000000000000000000000
      0000BCBBD1B8B0CABFBACC615E6F625A89969696B9B8CCB8B8D1B8B8D0B7B6CD
      B5B5B75B54813F39587676764444650000009A9A9AF8F8F8FEFEFEFEFFFEFDFD
      FDF4F4F4EBEBEBC8C8C8B4B4B49A9A9A7E7E7EBBBBBB00000000000000000000
      000033334F65659A64649A6464996464994C4C751515212424246C6C6C6A6A6A
      474747000000000000000000000000000000878787B9B9B9929292F9F9F97C7C
      7C6A6A6AF1F1F13F3F3F00000000000000000000000000000000000000000000
      00006F6FA17E79A7554F786259885452638282AD8181AC8181AD8181AC8685B0
      8E8EAE8E8BB357527C7E7E7E6D6D6D0000009E9E9EF8F8F8FDFDFDFEFEFEFFFF
      FFFDFDFDF3F3F3A2A2A29D9D9D9696969B9B9B00000000000000000000000000
      000033334F65659A6464996464994C4C75181826000000000000000000000000
      000000000000000000000000000000000000949494E3E3E3C6C6C6FFFFFF8D8D
      8D1818183C3C3C00000000000000000000000000000000000000000000000000
      00004F4E775B57826058864B456952517C52527B52517A504F774F4E7553537C
      61618F5F5F8E5E5E8F52547D5B5B8B000000A5A5A5FAFAFAFEFEFEFFFFFEFFFF
      FEFEFEFEF4F4F4A8A8A8A79EB6A7A7A700000000000000000000000000000000
      000000000000000065659A4B4B74181825000000000000000000000000000000
      0000000000000000000000000000000000003D3D3D8787877D7D7D7979793030
      3000000000000000000000000000000000000000000000000000000000000000
      000065649867658E5D568467659A67659A67659A67659A67659A656397656397
      65649A67659A66659A5F5D8F4D4A72000000A0A0A0D4D4D4D6D6D6D6D6D6D6D6
      D6D6D6D6CFCFCFA2A2A2B6B6B600000000000000000000000000000000000000
      00000000000000002A2A4014141E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F0B0B0B0000000000005B5B
      5B2A191E00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0098989866666664646465656564646465656565656565656562626200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004848484B4B4B454545686868C5C5
      C5B4B4B43333331E1E1E19191906060600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000003030304C4C4C0000000000007373737777776A6A6A6C6C
      6CC6C6C6F9FAF9F8F8F8F6F6F6F6F6F6F3F3F3F4F4F4F2F2F2BEBEBE00000000
      00000000000000000000007C75A46C67999B92C4000000000000000000000000
      776EA96F689E0000000000000000000000003A3A3A7A7A7A9393935757576E6E
      6E6B6B6B6F6F6F8282828B8B8B5E5E5E2A2A2A14141400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003A3A3A4E4E715B5B5B0000000000006868689B9B9F9898989292
      92C6C6C6E6E6E6989898989898989898989898969696CBCBCBB4B4B400000000
      00000000000000008F89AE37325E46416A353562857EAA00000000000047447E
      423E643935626F6891000000000000000000424242939393C7C7C7B0B0B0A8A8
      A88A8A8A6A6A6A777777949494B3B3B3B5B5B56A6A6A15151500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000003E3E3E4E4E715959A64A4A4A0000000000006B6B6BA2A2A39898989393
      93C5C5C5F0F0F0BBBBBBC0C0C0C0C0C0C1C1C1C0C0C0DCDCDCB4B4B400000000
      0000000000000000827CA66154920000008479B65A5286000000827D9E5C518C
      0000008779B7564B86000000000000000000676767A9A9A9D8D8D8D1D1D1D0D0
      D0D5D5D5C3C3C3BDBDBDB4B4B4E3E3E3AEAEAEC2C2C26D6D6D00000000000000
      00000000001C1C1E1A1A1D16171D15161C13141C0F111C0E101B0E111B0E111B
      4242424E4E715959A64E4E4E000000000000000000707070A7A7AA9B9B9B9898
      98C6C6C6F6F6F6DADADADFDFDFDEDEDEDCDCDCD9D9D9E3E3E3B4B4B400000000
      0000000000000000948FAA5B518C0000008980B84A42760000005F558F7B739C
      00000067579E5E5191000000000000000000888888AAAAAACBCBCBCFCFCFD0D0
      D0D2D2D2CACACABEBEBEC2C2C2E7E7E7F3F3F3BFBFBF56565600000000000000
      0000828282FAFAFAF6F6F6F2F2F2F0F0F0BBBBBB9898989B9B9B9C9C9CD6D6D6
      C0C0C0848484515151000000000000000000000000707070ACACB29F9F9F9A9A
      9AC9C9C9F7F7F7C0C0C0C6C6C6C5C5C5C3C3C3C2C2C2E0E0E0B6B6B600000000
      00000000000000000000004C457F524785534785473E72C2C1C74F47834B3F74
      584E91433D72AEA8C9000000000000000000434343C8C8C8F7F7F7FBFBFBEDED
      EDE7E7E7E1E1E1CFCFCFBCBCBCABABABB9B9B9E6E6E6D3D3D37E7E7E2E2E2E00
      0000848484FFFFFFFEFEFEFBFBFBA4A4A4D9D4E5E2DBEAECE7F2F3EFF7C6C6C6
      A7A7A7D5D5D5000000000000000000000000000000727272B3B3BAA5A5A59E9E
      9ECACACAF4F4F4989898989898989898979797969696D1D1D1B8B8B800000000
      00000000000000000000000000005750893F3D713835626C678E47417A3C3969
      5453778A80B30000000000000000000000008E8E8EF9F9F9FEFEFEFCFCFCF5F5
      F5D5D5D5E1E1E1D2D2D2C1C1C1AFAFAF9E9E9E9B9B9BCACACAD8D8D8A3A3A34C
      4C4C868686FFFFFFFFFFFFCACACACFCBDDD1CDDDE4DEEAEEE9F3F7F5F9FCFCFD
      A3A3A3DADADA000000000000000000000000000000757575B9B9C0ACACACA4A4
      A4CBCBCBFEFEFEFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFF5F5F5B3B3B300000000
      0000000000000000000000000000000000000000706F736D6D6D686868B4B2BC
      000000000000000000000000000000000000C3C3C3FFFFFFFEFFFFFCFCFCF4F4
      F4EBEBEBD0D0D0D6D6D6C5C5C5B5B5B5A3A3A39797978E8E8EA7A7A7C4C4C44E
      484A888888FFFFFFFFFFFFBCBCBCCAC7D8DAD5E5E5E0ECEBE6F1F2EEF6F4F1F8
      ECECECDCDCDC000000000000000000000000000000767676BCBBC4B2B2B2ACAC
      ACCACACAFEFFFEFCFCFCF9F9F9F5F5F5F6F6F6E4E4E4CACACA99999900000000
      0000000000000000000000000000000000000000868686CDCDCD7878789C9C9C
      000000000000000000000000000000000000E8E8E8FEFEFEFFFFFFFCFCFCF5F5
      F5ECECECE1E1E1C8C8C8CCCCCCB5B5B5A8A8A89A9A9A9292929292927A7A7A4A
      48488A8A8AFFFFFFFFFFFFC3C3C3CECADAE1DCE9DDD9E7EAE5EFEAE4F1ECE6F2
      EAE5EFE0E0E0000000000000000000000000000000787878BDBCC6B4B4B4B1B1
      B1C8C8C8FEFEFEFBFBFBFBFBFBFBFBFBF1F1F1878787989898A4A4A400000000
      00000000000000000000000000000000009292929E9E9E7171718F8F8F8F8F8F
      000000000000000000000000000000000000BBBBBBFEFEFEFFFFFEFBFBFBF5F5
      F5ECECECE1E1E1D4D4D4C7C7C7BABABAA9A9A99D9D9D9797978B8B8B7878783C
      3C3C8C8C8CFFFFFFFFFFFFD0D0D0CAC7D8E7E2ECF3EFF7DAD6E4DED8E7E1DAE9
      D2D2D2E3E3E30000000000000000000000000000007B7B7BC7C7D2B5B5B5B2B2
      B2C6C6C6FAFAFAF8F8F8F9F9F9F8F8F8F4F4F4979797AFAFAF00000000000000
      00000000000000000000000000000000008C8C8C9D9D9DAAAAAA8686869A9A9A
      9A9A9A000000000000000000000000000000C7C7C7FFFFFFFEFEFEF9F9F9F6F6
      F6EDEDEDE1E1E1D5D5D5BEBEBEC3C3C3B8B8B89B9B9B9D9D9D7E7E7E7B7B7B50
      40428E8E8EFFFFFFFFFFFFFCFCFCBBBACAD1CDDEDAD5E5CFCBDDCCC8DAD4CFE1
      DEDEDEE9E9E90000000000000000000000000000007C7C7CC9C9D6C0C0C0B8B8
      B8B6B6B6B1B1B1AAAAAAA9A9A9A2A2A29F9F9F9D9D9D5D5D5D00000000000000
      0000000000000000000000000000AAAAAAB2B2B29696960000000000009D9D9D
      989898000000000000000000000000000000000000C7C7C7F5F5F5FBFBFBD6D6
      D6DBDBDBE2E2E2D6D6D6CCCCCCBFBFBFB3B3B3B7B7B79E9E9E7878787D7D7D41
      41418F8F90FFFFFFFFFFFFFFFFFFFAFAFACECECEBCBACEC3C1D1CECED3E4E4E4
      F8F8F8ECECEC0000000000000000000000000000007D7D7DCBCBD6C3C3C3BCBC
      BCB1B1B1B2B2B2AEAEAEABABABA4A4A4A7A7AA9896AA5C5C5C00000000000000
      0000000000000000000000000000969696A2A2A20000000000000000009B9B9B
      9A9A9ABEBEBE000000000000000000000000000000000000A2A2A2ADADAD0000
      00000000AAAAAAD5D5D5D0D0D0BFBFBFB9B9B9ABABABA1A1A1A0A0A072727240
      40408B8B8FABAAD1A2A3CD999CC89095C2858DBE7B85B8717DB26774AB5B6CA7
      5B6BA6556799000000000000000000000000000000777777D1D1D19090909898
      989D9D9D9999999C9C9C989898959595949494A8A8A85F5F5F00000000000000
      0000000000000000000000000000838383000000000000000000000000000000
      8282829292920000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAEC5C5C5BCBCBCB3B3B3686868858585A5A5A551
      51515F5F5FAFADCCA5A4C69B9CC29396BB898DB47F86AE767EA76B76A2616D9C
      58679E4B5B89000000000000000000000000000000ACACAC989898A9A9A9A7A7
      A7FFFFFFFFFFFFFFFFFFFCFCFC9E9E9E929292858585A3A3A300000000000000
      00000000000000000000000000006A6A6A000000000000000000000000000000
      ABABAB7878780000000000000000000000000000000000000000000000000000
      00000000000000000000000000808080B2B2B2BFBFBF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009B9B9B8080809F9F
      9F9292929191919191918E8E8E959595868686A2A2A200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000ABABAB000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0087E3FFFF0000000087E3FFFF00000000
      87E3FFFF0000000087E3F83F0000000087E3F83F0000000087E3F83F00000000
      87E3C0070000000087E3C0070000000087E3C0070000000087E3C00700000000
      83E3C007000000000023F83F000000001000F83F000000001000F83F00000000
      1000FFFF000000001007FFFF00000000FFFFF81FFF80FFFFFE1FE007FF8107E1
      FC0FC003F98703C1F8078003F0C30181F0078001E0610001E0038001E0018003
      C0018001E001C44780018001F981E28F8000C003F9FFF18F8000E007F908E387
      8000E387F900C4438000E187F90080018000E007F9000101C000E00FF9800381
      F081F01FF98107C1FFC3F83FFF810FE1FFCF0000FFFFC007FC070000C3FFC007
      80030000C03FC00780030000801FC00780030000800FC007800300008005C007
      80030000C00FC007800300008007C00780030000C007C00780030000C003C007
      80030000C000C007800300000000C007C00300000000C007E0030000003FC007
      F003000001FFC007F00F0000FFFFC007FFFF0001FFFFFFFFFFFF00008000FFFF
      000100008000DF3F000100008000CF1F000100008000C00F000100008000C007
      000100008000C003000100008000C001000100008000C0030001C0078000E003
      0001C0078000F0070001C0078000F00F0001C0078000F01F0001C00F8001FF3F
      0001C01FFFFFFF7FFFFFC03FFFFFFFFFF801FFFFFF9FFFFFF801F800FF8FFFFF
      F801F800FF870001F801F800000300010001F800000100010001C80000000001
      0001C000000100010001C00000030001000100000007000100010001000F0001
      00010003001F000100030003007F0001000F000F00FF0001001F001F01FF0001
      003FC7FF03FF0001007FCFFF07FFFFFF33FFFFFFF803FFFF003FFFF98003E3CF
      000FFFF18003C1870007FFE18003C927000780038003C927000700078003E007
      0001000F8003F00F0000000F8003FC3F0000000F8003FC3F0000000F8003F83F
      0000000F8007F81F0000000F8007F19F8000000F8007F38FCC00000F8007F7CF
      FF00000F8007F7CFFF8FFFFFC00FFFEF00000000000000000000000000000000
      000000000000}
  end
  object ADOTNotasNombramientos: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select * from TNotasNombramientos'
    DataSource = DSTAnnos
    IndexFieldNames = 'IdAnnos'
    MasterFields = 'IdAnnos'
    Parameters = <>
    Left = 704
    Top = 367
  end
  object DSTNotasNombramientos: TDataSource
    DataSet = ADOTNotasNombramientos
    Left = 704
    Top = 399
  end
  object ADODatSetSueltos: TADODataSet
    AfterClose = ADODatSetSueltosAfterClose
    Parameters = <>
    Left = 600
    Top = 168
  end
  object ImageList2: TImageList
    Left = 96
    Top = 124
    Bitmap = {
      494C01010F001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000500000000100180000000000003C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000FF00000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000FF0000FF00000000000000000000000000000000FF000000
      000000000000000000FF0000FF0000FF00000000000000000000000000000000
      000000000000000000FF7B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000FF0000FF0000FF00000000000000000000FF000000
      000000000000FF0000FF0000FF00000000000000000000000000000000000000
      00000000FF00000000FFFF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000FF0000FF0000FF0000FF00000000000000FF000000
      FF0000FF0000FF0000FF0000FF00000000000000000000000000000000000000
      00000000FF00000000FFFF00007B7B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000FF00000000000000000000000000000000000000000000
      00FF0000FF00000000FFFF0000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000FF0000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000FF00000000000000000000000000000000000000000000
      00FF0000FF00000000FFFF0000FF00007B7B7B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000000000000000000000000000000000000000000000FF00
      00FF0000FF00000000FFFF0000FF0000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000FF0000000000000000000000000000000000000000000000FF00
      00FF0000FF00000000FFFF0000FF0000FF00007B7B7B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000000000000000000000000000000000000000000000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000FF0000FF00000000FFFF0000
      FF0000FF0000000000000000000000000000000000000000000000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF00007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000FF00000000FFFF0000
      FF0000000000000000000000000000000000000000000000FF0000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF0000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000FF00000000FFFF0000
      FF0000000000000000000000000000000000000000000000FF0000FF0000FF00
      00FF0000FF00000000FFFF0000FF0000FF0000FF0000FF00007B7B7B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000FFFF0000
      000000000000000000000000000000000000000000FF0000FF0000FF0000FF00
      00FF00000000000000FF000000FF0000FF0000FF0000FF0000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000FFFF0000
      000000000000000000000000000000000000000000FF0000FF0000FF00000000
      000000000000000000FF0000000000007B7B7BFF0000FF0000FF00007B7B7B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000000000FF0000FF0000FF00000000000000
      000000000000000000FF000000000000000000000000FF0000FF0000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      000000000000000000000000000000000000FF00000000000000000000000000
      000000000000000000FF0000000000000000000000000000007B7B7BFF000000
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
      0000000000000000000000000000000000000000000000008080808080800000
      80FFFFFFFFFFFF000080FFFFFFFFFFFF00008080808080808000000000000000
      0000000000000000B3B3B39999996B006B9DA69D9999996B006B9DA69D999999
      6B006B9DA69D9999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008080808080800000
      80FFFFFFFFFFFF000080FFFFFFFFFFFF00008080808080808000000000000000
      00000000000000009999996666663B003B6D806D6666663B003B6D806D666666
      3B003B6D806D6666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008080808080800000
      80FFFFFFFFFFFF000080FFFFFFFFFFFF00008080808080808000000000000000
      00000000000000009999996666663B003B6D806D6D6D6D470047738673666666
      3B003B6D806D6666660000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000737300BDBD000000000000
      0000000000000000000000000000000000000000000000008080808080800000
      80FFFFFFFFFFFF000080FFFFFFFFFFFF00008080808080808000000000000000
      00000000000000009999996666663B003B6D806D6D6D6D470047738673666666
      3B003B6D806D6666660000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000888800E7E7000000000000
      0000000000000000000000000000000000000000000000008080808080800000
      80FFFFFFFFFFFF000080FFFFFFFFFFFF00008080808080808000000000000000
      00000000000000009999996666663B003B6D806D6666663B003B6D806D666666
      3B003B6D806D6666660000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000525200B7B7000000000000
      0000000000000000000000000000000000000000000000008080808080800000
      80FFFFFFFFFFFF000080FFFFFFFFFFFF00008080808080808000000000000000
      00000000000000009999996666663900396E866E6D806D3F003F7193716D806D
      3B003B6A736A66666600000000000000000000000000000000000000000000FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000000000
      000000000000000000030300868600FFFF00FFFF00FFFF00FFFF00E0E000FFFF
      00CCCC0008080000000000000000000000000000000000008080808080808080
      8080808000008000008000008080808080808080808080808000000000000000
      00000000000000009999996666666A736A6B7A6B3600363800383800386A736A
      6B7A6B686D686666660000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000003A3A00737300575700ACAC00EAEA003030005858
      0049490000000000000000000000000000000000000000008080808080808080
      8080808080808080808080808080808080808080808080808000000000000000
      0000000000000000A6A6A6808080808080828682859385869986869986838D83
      8080808080808080800000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000005F5F00C5C5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000939300F7F7000000000000
      0000000000000000000000000000000000000000000000000080800080800080
      800080800080800000FF00808000808000808000808000808000808000000000
      0000000000000000008282007474006666006161006A61000061008761006A61
      0061610066660074740082820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003232005454000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      800080800000FF0000FF0000FF00808000808000808000000000000000000000
      0000000000000000000000000000006F6F00616100005200004D00004D005C52
      006161006F6F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000080800000FF00808000808000000000000000000000000000000000
      000000000000000000000000000000000000000000826F00005C00825C00826F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007A6E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00000000000000000000000000000000000000000000000000
      0000000000000000000000F60000BE0000BE0000BE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00005F00005F1A1A8D5555AA00000000000000000000000000
      0000000000000000000000F40000BE0000BD0000BD0000BD0000BE0000FF1A1A
      FF555500000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00000000000000000000000000000000000000000000000000
      0000000000000000000000F60000BE0000BE0000BE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00005F00005F00005F00005F00005D0B0B8500000000000000
      0000000000000000000000F40000BE0000BD0000BD0000BD0000BD0000BD0000
      BD0000BA0000FF0B0B00000000000000000000000000000000000000007B0000
      5F00005F00005F00000000000000000000000000000000000000000000000000
      0000000000000000000000F60000BE0000BE0000BE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00005F00005D00005D00005F00005E00005F00006100000000
      0000000000000000000000F40000BE0000BD0000BD0000BD0000BA0000BA0000
      BE0000BB0000BE0000C1000000000000000000000000000000000000007B0000
      5F00005F00005F00000000000000000000000000000000000000000000000000
      0000000000000000000000F60000BE0000BE0000BE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00000000000000000016168B00005F00005E00005F0F0F8800
      0000000000000000000000F40000BE0000BD0000BD0000000000000000000000
      FF1616BD0000BB0000BE0000FF0F0F00000000000000000000000000007D0000
      5F00005F00005F00000000000000000000000000000000000000000000000000
      0000000000000000000000F90000BE0000BE0000BE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000007B0000
      5F00005F00005F00000000000000000000000008088400005E00005E00005D00
      0000000000000000000000F40000BE0000BD0000BD0000000000000000000000
      000000FF0808BC0000BC0000BA000000000000005F00005F00005D00005E0000
      5E00005F00005F00005F00005F0000600000004949A400000000000000000000
      0000BD0000BD0000BA0000BB0000BC0000BD0000BD0000BE0000BE0000C00000
      000000FF494900000000000000000000000000000000000000000000007A0000
      5F00005F00005F00000000000000000000000000000000005D00005F00005F4F
      4FA7000000000000000000F30000BE0000BD0000BD0000000000000000000000
      000000000000BA0000BD0000BD0000FF4F4F00005F00005F00005F00005F0000
      5F00005F00005F00005F00005F00005F00000000005D00007B00000000000000
      0000BD0000BD0000BE0000BD0000BD0000BE0000BE0000BE0000BE0000BE0000
      000000BA0000F4000000000000000000000000000000005F34349A0000720000
      5F00005F00005F00005F00005F00000000000000000000005D00005F00005F00
      0065000000BE0000FF3434E20000BE0000BD0000BD0000BD0000BE0000000000
      000000000000BA0000BD0000BD0000C8000000005F00005F00007B0000680000
      5F00005F00005F00005F00005F00005F00000000005E00005E7D7DBE00000000
      0000BD0000BD0000F40000CE0000BD0000BD0000BD0000BE0000BE0000BE0000
      000000BC0000BC0000FF7D7D00000000000000005F00005F00005F00005E0000
      5E00005E00005E00005E00005F00000000000000000000006200005F00005F00
      005EBE0000BE0000BE0000BC0000BB0000BB0000BB0000BB0000BE0000000000
      000000000000C30000BD0000BD0000BC000000000000000000000000007B0000
      5F00005F00005F00000000000000000000005E00005F00005F00006F00000000
      0000000000000000000000F40000BE0000BD0000BD0000000000000000000000
      BC0000BD0000BE0000DE000000000000000000005F00005F00005E00005F0000
      5F00005F00005F00005F00005F00000000000000000000005D00005F00005E00
      007BBE0000BE0000BB0000BD0000BD0000BD0000BD0000BD0000BE0000000000
      000000000000BA0000BD0000BC0000F4000000000000000000000000007B0000
      5F00005F00005F00000000000000000015158A00006000005F00006500000000
      0000000000000000000000F60000BE0000BE0000BE0000000000000000000000
      FF1515C00000BD0000C8000000000000000000000000000000000000007A0000
      5F00005F00005F0000000000000000000000007777BB00005D00005F00005F40
      40A0000000000000000000F30000BE0000BD0000BD0000000000000000000000
      000000FF7777BA0000BD0000BD0000FF404000000000000000000000007B0000
      5F00005F00005F00000000000000000000006E00005F00005F00006800000000
      0000000000000000000000F60000BE0000BE0000BE0000000000000000000000
      DB0000BE0000BD0000D0000000000000000000000000000000000000007B0000
      5F00005F00005F000000000000000000F8F8FB00005D00005F00005E00006000
      0000000000000000000000F40000BE0000BD0000BD0000000000000000000000
      FFF8F8BA0000BD0000BB0000C0000000000000000000000000000000007B0000
      5F00005F00005F00005E27279300006700005F00005F00005F00007900000000
      0000000000000000000000F60000BE0000BE0000BE0000BB0000FF2727CC0000
      BE0000BE0000BE0000F1000000000000000000000000000000000000007B0000
      5F00005F00005F00005F27279411118800005D00005F00005E00005D3F3F9F00
      0000000000000000000000F40000BE0000BD0000BD0000BD0000FF2727FF1111
      BA0000BD0000BB0000BA0000FF3F3F00000000000000000000000000007B0000
      5F00005F00005F00005E00006100005F00005F00006000005D00000000000000
      0000000000000000000000F60000BE0000BE0000BE0000BC0000C10000BE0000
      BE0000C00000BA000000000000000000000000000000000000000000007B0000
      5F00005F00005F00005F00005F00005F00005E00005F00005D3E3E9F00000000
      0000000000000000000000F40000BE0000BD0000BD0000BD0000BE0000BE0000
      BB0000BE0000BA0000FF3E3E00000000000000000000000000000000007B0000
      5F00005F00005F00005F00005F00005F00005E06068300000000000000000000
      0000000000000000000000F60000BE0000BE0000BE0000BE0000BE0000BE0000
      BB0000FF060600000000000000000000000000000000000000000000007B0000
      5F00005F00005F00005F00005E00005E00005D0C0C86E9E9F400000000000000
      0000000000000000000000F40000BE0000BD0000BD0000BD0000BC0000BB0000
      BA0000FF0C0CFFE9E90000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000003434
      9A00007000005C00005E0000640000778C8CC600000000000000000000000000
      0000000000000000000000000000FF4848C80000AB0000BC0000BD0000DC0000
      FFC9C900000000000000000000000000000000000000005F00006000005D4444
      A200000000000000000000005F00005F00005F00005F00006000007200000000
      0000000000BE0000C00000BA0000FF4444000000000000000000BE0000BE0000
      BE0000BE0000C00000E400000000000000000000000000007A7ABD0000560000
      5F00005E00005F00005F00005E00005E00005D13138A00000000000000000000
      0000000000000000FFC0C09E0000AC0000B50000B90000B70000B60000B70000
      A90000FF151500000000000000000000000000000000006C00005F0000612929
      9400000000000000000000006000005F00005F00005F0000603A3A9D00000000
      0000000000D60000BE0000C20000FF2929000000000000000000C00000BE0000
      BE0000BE0000C00000FF3A3A00000000000000000000000000005900005D0000
      5D00005900007D07078400005900005E00005D00005D8282C100000000000000
      0000000000000000A30000B00000B80000A40000F20000F20000A40000AA0000
      B90000B00000FFC0C000000000000000000000000020209000005E0000600000
      65000000000000000000000000DFDFEF00005D00005F00005D00000000000000
      0000000000FF2020BB0000C00000CA0000000000000000000000000000FFDFDF
      BA0000BE0000BA00000000000000000000000000006868B400005800005E0000
      586969B400000000000000000000006100005E00005D00006E00000000000000
      0000000000FF9393A60000BC0000A90000FFB4B4000000000000000000A60000
      B50000BB0000DA000000000000000000000000005F00005F00005F00005F0000
      5F00005E00005F00005F0000008B8BC500005E00006000007100000000000000
      0000BE0000BD0000BE0000BE0000BE0000BC0000BE0000BE0000000000FF8B8B
      BB0000C00000E0000000000000000000000000000032329900006000005E0000
      6300000000000000000000000008088400005D00005E00005F00000000000000
      0000000000FF3D3DB20000BB0000BA0000000000000000000000000000EC0000
      AE0000BB0000B0000000000000000000000000006000006100006000005F0000
      600000600000600000620000000B0B860000600000604545A200000000000000
      0000C00000C10000C00000BE0000C00000C00000C00000C30000000000FF0B0B
      C00000C00000FF45450000000000000000000000002D2D9700005F00005E0000
      640000000000000000000000005555AA00005B00005E00005300000000000000
      0000000000FF2E2EB00000BB0000B60000000000000000000000000000FF7A7A
      A70000BB00009E000000000000000000000000006000007600007600005F0000
      6000006200007313138A00000000005D00005F00005D00000000000000000000
      0000C00000EA0000EA0000BD0000C00000C30000E40000FF1313000000BA0000
      BE0000BA00000000000000000000000000000000002F2F9800005F00005E0000
      640000000000000000000000005555AA00005B00005E00005400000000000000
      0000000000FF2222B20000BB0000B30000000000000000000000000000FF7171
      A60000BB0000A0000000000000000000000000000000000000000000005E0000
      6000005DD6D6EA0000000F0F8800005E00006000007000000000000000000000
      0000000000000000000000BB0000C00000BA0000FFD6D6000000FF0F0FBC0000
      C00000DF000000000000000000000000000000000031319800005F00005E0000
      640000000000000000000000005757AB00005B00005E00005400000000000000
      0000000000FF3333B30000BB0000BA0000000000000000000000000000FF7474
      A60000BB0000A000000000000000000000000000000000000000000000740000
      600000616B6BB500000000007900005F0000615151A800000000000000000000
      0000000000000000000000E60000C00000C10000FF6B6B000000F00000BE0000
      C10000FF515100000000000000000000000000006400006000005B00005E0000
      5B00006100005F0000000000005757AB00005B00005E00005400000000000000
      0000AA0000B00000B00000BE0000AC0000AF0000B20000000000000000FF7777
      A60000BB0000A000000000000000000000000000000000000000002626930000
      5E00005F00006800000000005D00006000005D00000000000000000000000000
      0000000000000000000000FF2626BB0000BE0000D00000000000BA0000C00000
      BA000000000000000000000000000000000000005F00005E00005F00005D0000
      5F00005F00005F00005F0000005757AB00005B00005E00005400000000000000
      0000BC0000BB0000C00000BC0000BF0000BE0000BE0000000000000000FF7B7B
      A60000BB0000A000000000000000000000000000000000000000000000000000
      5D0000600000607878BC00005E00005F00007000000000000000000000000000
      0000000000000000000000000000BA0000C00000C00000FF7878BC0000BE0000
      DF000000000000000000000000000000000000006200006000005F00005F0000
      5F00006000005F00005F0000005757AB00005B00005E00005400000000000000
      0000B60000B60000BF0000C10000BD0000BA0000BB0000000000000000FF7979
      A60000BB0000A000000000000000000000000000000000000000000000000000
      7500006000006000005D00005F0000615959AC00000000000000000000000000
      0000000000000000000000000000E90000C00000C00000BA0000BE0000C10000
      FF59590000000000000000000000000000004545A200007300005A0000590000
      5C00007600005F0000000000005757AB00005B00005E00005400000000000000
      0000FF5353DA0000A90000AC0000AA0000E50000B20000000000000000FF7777
      A60000BB0000A000000000000000000000000000000000000000000000002F2F
      9800005D00006000006000006000005D00000000000000000000000000000000
      0000000000000000000000000000FF2F2FBA0000C00000C00000C00000BA0000
      0000000000000000000000000000000000000000002B2B9600005E00005D0000
      6200000000000000000000000000000000000000000000000000000000000000
      0000000000FF3939B20000B80000B20000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000005D00005F00006000005F00006F00000000000000000000000000000000
      0000000000000000000000000000000000BA0000BE0000C00000BE0000DE0000
      0000000000000000000000000000000000000000002F2F9800005F00005E0000
      6400000000000000000000000000000000000000000000000000000000000000
      0000000000FF3C3CB20000BB0000B30000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007A0000610000600000616161B000000000000000000000000000000000
      0000000000000000000000000000000000F30000C10000C00000C20000FF6161
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFBF7EFEFF0000FFFF8F78FE7F0000
      FFFFC371FC7F0000FFFFC141FC3F0000FC7FE003F83F0000FC7FE003F81F0000
      FC7FF007F01F0000E00FF007F00F0000E00FF80FE00F0000E00FF80FE0070000
      FC7FFC1FC0070000FC7FFC1FC0030000FC7FFE3F82830000FFFFFE3F8EC10000
      FFFFFF7F1EF10000FFFFFF7F7EF90000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C003C003FFFFFFFFC003C003FFFFFFFFC003C003FC7FF87FC003C003FC7FF87F
      C003C003FC7FFC7FC003C003E00FC00FC003C003E00FC00FC003C003E00FC00F
      C003C003FC7FE87F00000000FC7FF87F80018001FC7FF87FE007E007FFFFFCFF
      F81FF81FFFFFFFFFFE7FFE7FFFFFFFFFFFFFFFFFFFFFFFFFE1FFE1FFE01FE01F
      E1FFE1FFE007E007E1FFE1FFE003E003E1FFE1FFE1C1E1C1E1FFE1FFE1E1E1E1
      002F002FE1F0E1F000270027807080700023002300700070E1C3E1C300700070
      E1C3E1C3E1E0E1E0E1C3E1C3E1C1E1C1E003E003E001E001E007E007E003E003
      E00FE00FE007E007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FF01F87038703
      C00FC00F87038703C007C0078787878783878387008700878787878700870087
      87878787008F008F87878787E10FE10F87878787E10FE10F01870187E11FE11F
      00870187F01FF01F00870187F01FF01F01870187F03FF03F87FF87FFF83FF83F
      87FF87FFF83FF83FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ADOPageVacia: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select TOP 2 Nada from TNadaPageVacia'
    Parameters = <>
    Left = 360
    Top = 170
  end
  object OpenDialogFoto: TOpenDialog
    Filter = 'Ficheros de imagen (*.jpg;*.jpeg)|*.jpg;*.jpeg'
    Left = 104
    Top = 221
  end
  object PopupMenu3: TPopupMenu
    Images = ImageList4
    MenuAnimation = [maLeftToRight]
    Left = 96
    Top = 320
    object Copiar2: TMenuItem
      Action = Copiar
    end
    object Cortar2: TMenuItem
      Action = Cortar
    end
    object Pegar2: TMenuItem
      Action = Pegar
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Insertarregistro1: TMenuItem
      Action = InsertarRegistro
    end
    object Borrar3: TMenuItem
      Action = BorraRegistro
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object Se1: TMenuItem
      Action = SeleccionarTodos
    end
    object SeleccionarNada1: TMenuItem
      Action = SeleccionarNada
    end
  end
  object JvBalloonHint1: TJvBalloonHint
    DefaultIcon = ikNone
    UseBalloonAsApplicationHint = True
    Left = 264
    Top = 227
  end
end
