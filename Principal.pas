unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ImgList, ToolWin, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdEcho, Menus, StdCtrls,
  Buttons, DB, DBTables, DBCtrls, Grids, DBGrids, ExtDlgs, CommCtrl, ADODB,
  ActnMan, ActnColorMaps, ActnList, StdStyleActnCtrls, WinXP,
  DateUtils, TeEngine, Series, TeeProcs, Chart, DbChart, QRPrntr, CheckLst, Registry, Clipbrd,
  Jpeg, StdActns, Spin,Math,QRCtrls,
  JvExComCtrls, JvComponent, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExStdCtrls, JvEdit, JvDBSearchEdit, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, JvExControls, JvSpin,
  JvExExtCtrls, JvItemsPanel, JvDBLookup, JvCombobox, JvDBSearchComboBox,
  JvDBLookupComboEdit, JvXPCore, JvXPButtons, JvComponentBase,
  JvBalloonHint, JvgCaption, JvgLanguageLoader, JvgHint,
  JvgExportComponents, JvUIB, ShellApi;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    NuevoDistrito1: TMenuItem;
    NuevaIglesia1: TMenuItem;
    Borrar1: TMenuItem;
    BorrarTodos1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    BarraEstado: TStatusBar;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Imprimir1: TMenuItem;
    Configurar1: TMenuItem;
    Edicin1: TMenuItem;
    N2: TMenuItem;
    Copiar1: TMenuItem;
    Cortar1: TMenuItem;
    Pegar1: TMenuItem;
    B1: TMenuItem;
    Ayuda1: TMenuItem;
    Ayudadelprograma1: TMenuItem;
    Acercade1: TMenuItem;
    Ventanadebsqueda1: TMenuItem;
    DSTUnion: TDataSource;
    ADOTUnion: TADODataSet;
    NuevaAsociacin1: TMenuItem;
    Panel14: TPanel;
    Panel16: TPanel;
    Splitter1: TSplitter;
    NuevaProvincia1: TMenuItem;
    ADOTAsociacion: TADODataSet;
    ADOTProvincia: TADODataSet;
    ADOTDistrito: TADODataSet;
    ADOTIglesia: TADODataSet;
    ADOTVisitas: TADODataSet;
    ADOTPastorIglesia: TADODataSet;
    ADOTNombramientosIgl: TADODataSet;
    ADOTAnnos: TADODataSet;
    DSTAsociacion: TDataSource;
    DSTProvincia: TDataSource;
    DSTDistrito: TDataSource;
    DSTIglesia: TDataSource;
    DSTVisitas: TDataSource;
    DSTPastorIglesia: TDataSource;
    DSTNombramientosIgl: TDataSource;
    DSTAnnos: TDataSource;
    NuevaUnin1: TMenuItem;
    ADOTPastorDistrito: TADODataSet;
    DSTPastorDistrito: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SplitterAdicional: TSplitter;
    Panel9: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    LIglesia: TLabel;
    LDistrito: TLabel;
    LAsociacion: TLabel;
    LProvincia: TLabel;
    LUnion: TLabel;
    PanelAdicional: TPanel;
    SplitterEnfermedades: TSplitter;
    PanelFoto: TPanel;
    Panel11: TPanel;
    Panel5: TPanel;
    CheckBox1: TCheckBox;
    Panel15: TPanel;
    Panel13: TPanel;
    PanelInfo: TPanel;
    Panel12: TPanel;
    PanelVisitas: TPanel;
    Panel7: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel30: TPanel;
    Splitter6: TSplitter;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel38: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    PanelPastorD: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    PanelPastorI: TPanel;
    Panel53: TPanel;
    Splitter9: TSplitter;
    ADOTObreras: TADODataSet;
    DSTObreras: TDataSource;
    Panel21: TPanel;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOTAnnosIdAnnos: TAutoIncField;
    ADOTAnnosFecha: TDateTimeField;
    ADOTAnnosIdIglesia: TIntegerField;
    ADOTNombramientosIglIdNombramientosIgl: TAutoIncField;
    ADOTNombramientosIglNombre: TWideStringField;
    ADOTNombramientosIglPrimerApellido: TWideStringField;
    ADOTNombramientosIglSegundoApellido: TWideStringField;
    ADOTNombramientosIglCargo: TWideStringField;
    ADOTNombramientosIglIdAnnos: TIntegerField;
    ADOTNombramientosIglNotas: TMemoField;
    ADOTAnnosJuntaIglesia: TMemoField;
    ADOTPastorDistritoIdPastorDistrito: TAutoIncField;
    ADOTPastorDistritoNombre: TWideStringField;
    ADOTPastorDistritoPrimerApellido: TWideStringField;
    ADOTPastorDistritoSegundoApellido: TWideStringField;
    ADOTPastorDistritoEntrada: TDateTimeField;
    ADOTPastorDistritoSalida: TDateTimeField;
    ADOTPastorDistritoIdDistrito: TIntegerField;
    ADOTPastorDistritoDireccin: TWideStringField;
    ADOTPastorIglesiaIdPastorIglesia: TAutoIncField;
    ADOTPastorIglesiaNombre: TWideStringField;
    ADOTPastorIglesiaPrimerApellido: TWideStringField;
    ADOTPastorIglesiaSegundoApellido: TWideStringField;
    ADOTPastorIglesiaEntrada: TDateTimeField;
    ADOTPastorIglesiaSalida: TDateTimeField;
    ADOTPastorIglesiaIdIglesia: TIntegerField;
    ADOTPastorIglesiaDireccin: TWideStringField;
    ADOTObrerasIdObreras: TAutoIncField;
    ADOTObrerasNombre: TWideStringField;
    ADOTObrerasPrimerApellido: TWideStringField;
    ADOTObrerasSegundoApellido: TWideStringField;
    ADOTObrerasEntrada: TDateTimeField;
    ADOTObrerasSalida: TDateTimeField;
    ADOTObrerasIdIglesia: TIntegerField;
    ADOTObrerasDireccin: TWideStringField;
    ADOTPastorDistritoTelfono: TIntegerField;
    ADOTPastorIglesiaTelfono: TIntegerField;
    ADOTObrerasTelfono: TIntegerField;
    PopupMenu2: TPopupMenu;
    TabSheet4: TTabSheet;
    Panel20: TPanel;
    Splitter5: TSplitter;
    Panel41: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    CheckBox10: TCheckBox;
    Panel54: TPanel;
    Panel55: TPanel;
    DBImage2: TDBImage;
    Panel56: TPanel;
    Panel57: TPanel;
    DBMemo4: TDBMemo;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel63: TPanel;
    LabelIgl: TLabel;
    LabelDist: TLabel;
    LabelAsoc: TLabel;
    LabelProv: TLabel;
    LabelUnion: TLabel;
    Panel64: TPanel;
    Panel65: TPanel;
    Splitter10: TSplitter;
    ADOImportMiembros: TADODataSet;
    DSImportMiembros: TDataSource;
    ADOConnection2: TADOConnection;
    ImportarDatos1: TMenuItem;
    ADOImportUnion: TADODataSet;
    ADOImportAsociacion: TADODataSet;
    ADOImportProvincia: TADODataSet;
    ADOImportDistrito: TADODataSet;
    DSImportUnion: TDataSource;
    DSImportAsociacion: TDataSource;
    DSImportProvincia: TDataSource;
    DSImportDistrito: TDataSource;
    ADOImportIglesia: TADODataSet;
    DSImportIglesia: TDataSource;
    N1: TMenuItem;
    ExportarDatos1: TMenuItem;
    CerrarConeccinExterior1: TMenuItem;
    PanelExt: TPanel;
    ADOImportExport: TADODataSet;
    AbrirBasedeDatos1: TMenuItem;
    AbrirBaseDatos: TOpenDialog;
    ActionEditar: TActionList;
    TreeView1: TTreeView;
    Panel58: TPanel;
    ADOTVisitasFecha: TDateTimeField;
    ADOTVisitasVisitado: TWideStringField;
    ADOTVisitasNotas: TWideStringField;
    ADOTVisitasIdVisitas: TAutoIncField;
    ADOTVisitasIdMiembro: TIntegerField;
    DSTMiembros: TDataSource;
    DBImage1: TDBImage;
    DBMemo1: TDBMemo;
    Panel39: TPanel;
    PanelObreras: TPanel;
    Splitter11: TSplitter;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel29: TPanel;
    PanelEnfermedad: TPanel;
    Panel28: TPanel;
    SplitterFoto: TSplitter;
    PanelIdioma: TPanel;
    Panel37: TPanel;
    SplitterIdiomas: TSplitter;
    DBMemoIdiomas: TDBMemo;
    DBMemoEnfermedades: TDBMemo;
    Panel35: TPanel;
    Panel45: TPanel;
    ADOConnection1: TADOConnection;
    ADOTMiembros: TADODataSet;
    ADOIdiomas: TADODataSet;
    ADOEnfermedades: TADODataSet;
    Panel48: TPanel;
    ImageListFUENTE: TImageList;
    ImageList5: TImageList;
    ImageList4: TImageList;
    ToolBar2: TToolBar;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ButtonInfoAdiciona: TToolButton;
    ButtonOtraInf: TToolButton;
    ButtonFoto: TToolButton;
    ButtonIdioma: TToolButton;
    ButtonVisitas: TToolButton;
    ButtonEnfermedad: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton39: TToolButton;
    AbrirBD: TAction;
    ImportarDB: TAction;
    ExportarDB: TAction;
    MostrarDBMaster: TAction;
    BuscarDB: TAction;
    OrdenarDB: TAction;
    ImprimirDB: TAction;
    PanelInfoAdicional: TAction;
    PanelFotografia: TAction;
    PanelIdiomas: TAction;
    PanelEnfermedades: TAction;
    PanelOtraInfo: TAction;
    PanelVisitados: TAction;
    Candado: TAction;
    Pegar: TAction;
    Cortar: TAction;
    Copiar: TAction;
    ImageList6: TImageList;
    CerrarDBExt: TAction;
    ButtonCandado: TToolButton;
    N3: TMenuItem;
    CerrarChurch: TAction;
    CerrarChurch2: TMenuItem;
    ToolButton1: TToolButton;
    N4: TMenuItem;
    Herramientas1: TMenuItem;
    ConfigurarTablaMaestra1: TMenuItem;
    Configurar: TAction;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolBar1: TToolBar;
    ButtonMas: TToolButton;
    DBNavigator1: TDBNavigator;
    Panel10: TPanel;
    DBNavigVisitas: TDBNavigator;
    Panel17: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel36: TPanel;
    Panel49: TPanel;
    DBNavigatorObreros: TDBNavigator;
    Panel18: TPanel;
    Panel59: TPanel;
    DBNavigNombramientosIgl: TDBNavigator;
    Panel62: TPanel;
    ADOTNotasNombramientos: TADODataSet;
    DSTNotasNombramientos: TDataSource;
    ADODatSetSueltos: TADODataSet;
    ImageList2: TImageList;
    ADOTUnionUnin: TWideStringField;
    ADOTUnionIdUnion: TAutoIncField;
    EliminarRegistrosSueltos1: TMenuItem;
    ActualizarEdaddelosMiembros1: TMenuItem;
    ConfigPage: TAction;
    NuevaU: TAction;
    NuevaA: TAction;
    NuevaP: TAction;
    NuevoD: TAction;
    NuevaI: TAction;
    N6: TMenuItem;
    BorraNodo: TAction;
    BorraTodos: TAction;
    N7: TMenuItem;
    Borrar2: TMenuItem;
    Borrartodos2: TMenuItem;
    ActualizarEdaddelosMiembrosporNoIdentidad1: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    ImprimirFormularioLleno1: TMenuItem;
    ImprimirFormularioVaco1: TMenuItem;
    ADOPageVacia: TADODataSet;
    N9: TMenuItem;
    EstablecerContrasea1: TMenuItem;
    Eliminar1: TMenuItem;
    ADOTAnnosNotas: TMemoField;
    DBMemo2: TDBMemo;
    OpenDialogFoto: TOpenDialog;
    Panel19: TPanel;
    Panel40: TPanel;
    dxButtonImp: TSpeedButton;
    Panel44: TPanel;
    dxButtonExp: TSpeedButton;
    Ayuda: TAction;
    PopupMenu3: TPopupMenu;
    DBGrid2: TJvDBUltimGrid;
    DBGridPastorDistrito: TJvDBUltimGrid;
    DBGridPastorIglesia: TJvDBUltimGrid;
    DBGridObreras: TJvDBUltimGrid;
    DBGridNombramientosIgl: TJvDBUltimGrid;
    Panel52: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Label1: TLabel;
    LabelGrid1: TLabel;
    ButtonSiguiente: TSpeedButton;
    ButtonBuscar: TSpeedButton;
    BIdioma: TJvXPButton;
    BEnfermedad: TJvXPButton;
    Image1: TImage;
    ButtonImpNombramientos: TButton;
    ButtonImpNotas: TButton;
    JvBalloonHint1: TJvBalloonHint;
    Panel4: TPanel;
    EditBuscar2: TJvEdit;
    ButtonAnterior: TSpeedButton;
    NuevaUnin2: TMenuItem;
    NuevaAsociacin2: TMenuItem;
    NuevaProvincia2: TMenuItem;
    NuevaIglesia2: TMenuItem;
    NuevaIglesia3: TMenuItem;
    N10: TMenuItem;
    Copiar2: TMenuItem;
    Cortar2: TMenuItem;
    Pegar2: TMenuItem;
    SeleccionarTodos: TAction;
    SeleccionarNada: TAction;
    Se1: TMenuItem;
    SeleccionarNada1: TMenuItem;
    DBGridAnnos: TJvDBUltimGrid;
    DBNavigatorExt: TDBNavigator;
    DBNavigAnnos: TDBNavigator;
    Edit1: TJvEdit;
    N11: TMenuItem;
    GuardarConfiguraciones: TAction;
    GuardarConfiguraciones1: TMenuItem;
    DBGridExt: TJvDBUltimGrid;
    DBGrid1: TJvDBUltimGrid;
    N12: TMenuItem;
    Insertarregistro1: TMenuItem;
    InsertarRegistro: TAction;
    Borrar3: TMenuItem;
    BorraRegistro: TAction;

    {procedure Copia(Sender: TObject);
    procedure Pega(Sender: TObject);
    procedure Corta(Sender: TObject);}
    //procedure NuevaIglesia1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure TreeView1Collapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    Procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    Procedure CampoVisible;
    Procedure NoMiembros;
    Procedure EditarSiNo;
    Procedure BarraDeEstado;
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    Procedure CamposMostrados;
    Procedure VerTFD;
    //Procedure VerActiva;
    //Procedure VerGlobal;
    procedure sacarPopup(queDBGrid: TJvDBUltimGrid);
    Procedure ActualizarVentanaBuscar;
    Procedure BorrarNodo;
    Procedure ActualizaNodos;
    Procedure VerExpandirSiNo;
    procedure ConfirmaBorrado(Sender: TObject);
    procedure TreeView1Edited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ADOTUnionAfterDelete(DataSet: TDataSet);
    procedure ADOTUnionAfterPost(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure ADOTMiembrosAfterPost(DataSet: TDataSet);
    procedure ADOTMiembrosAfterScroll(DataSet: TDataSet);
    procedure ADOTMiembrosBeforePost(DataSet: TDataSet);
    procedure ADOTMiembrosEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ADOTMiembrosDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DBGridPastorIglesiaEditButtonClick(Sender: TObject);
    procedure DBGridPastorIglesiaTitleClick(Column: TColumn);
    procedure DBGridNombramientosIglTitleClick(Column: TColumn);
    procedure DBGridPastorDistritoEditButtonClick(Sender: TObject);
    procedure DBGridObrerasEditButtonClick(Sender: TObject);
    procedure DBGridPastorDistritoTitleClick(Column: TColumn);
    procedure DBGridObrerasTitleClick(Column: TColumn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure ADODataSet1AfterScroll(DataSet: TDataSet);
    procedure DBGridAnnosEditButtonClick(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Si;
    procedure Panel21Click(Sender: TObject);
    procedure dxButtonImpClick(Sender: TObject);
    procedure dxButtonExpClick(Sender: TObject);
    procedure ADOImportMiembrosAfterOpen(DataSet: TDataSet);
    procedure ponNodos;
    Procedure CandadoPulzado;
    procedure ADODataSet1FetchProgress(DataSet: TCustomADODataSet;
      Progress, MaxProgress: Integer; var EventStatus: TEventStatus);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure ADOTVisitasAfterPost(DataSet: TDataSet);
    procedure ADOTVisitasAfterDelete(DataSet: TDataSet);
    procedure CheckBox10Click(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure DBImage1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BIdiomaClick(Sender: TObject);
    procedure BEnfermedadClick(Sender: TObject);
    procedure PanelVisitasResize(Sender: TObject);
    procedure ToolButton39Click(Sender: TObject);
    procedure AbrirBDExecute(Sender: TObject);
    procedure ImportarDBExecute(Sender: TObject);
    procedure ExportarDBExecute(Sender: TObject);
    procedure MostrarDBMasterExecute(Sender: TObject);
    procedure BuscarDBExecute(Sender: TObject);
    procedure OrdenarDBExecute(Sender: TObject);
    procedure CerrarDBExtExecute(Sender: TObject);
    procedure ImprimirDBExecute(Sender: TObject);
    procedure CandadoExecute(Sender: TObject);
    procedure PanelEnfermedadesExecute(Sender: TObject);
    procedure PanelInfoAdicionalExecute(Sender: TObject);
    procedure PanelIdiomasExecute(Sender: TObject);
    procedure PanelOtraInfoExecute(Sender: TObject);
    procedure PanelVisitadosExecute(Sender: TObject);
    procedure PanelFotografiaExecute(Sender: TObject);
    procedure CerrarChurchExecute(Sender: TObject);
    procedure ConfigurarExecute(Sender: TObject);
    procedure ButtonMasClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure localizando;{para el Enter en el TreeView y para despues de borrar un Nodo}
    procedure candadoSiNo;
    procedure QuitaSeleccionDeNodo;
    procedure DBGridPastorDistritoEnter(Sender: TObject);
    procedure DBGridPastorIglesiaEnter(Sender: TObject);
    procedure DBGridObrerasEnter(Sender: TObject);
    procedure ADOTMiembrosAfterDelete(DataSet: TDataSet);
    procedure Seleccionados(Sender:TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigVisitasBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigatorObrerosBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGridNombramientosIglKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridNombramientosIglKeyPress(Sender: TObject;
      var Key: Char);
    procedure DBGridNombramientosIglKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridNombramientosIglMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridNombramientosIglMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridPastorDistritoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPastorIglesiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridObrerasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPastorDistritoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridPastorIglesiaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridObrerasKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridPastorDistritoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPastorIglesiaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridObrerasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPastorDistritoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridPastorIglesiaMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridObrerasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridPastorDistritoMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridPastorIglesiaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridObrerasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBNavigNombramientosIglBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGridAnnosExit(Sender: TObject);
    procedure DBNavigAnnosBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGridNombramientosIglExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure ADOTVisitasBeforeInsert(DataSet: TDataSet);
    procedure ADOTNombramientosIglBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel21Resize(Sender: TObject);
    procedure DSTMiembrosStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ADOImportMiembrosBeforeOpen(DataSet: TDataSet);
    procedure PegarExecute(Sender: TObject);
    procedure ADOTAnnosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CopiarExecute(Sender: TObject);
    procedure CortarExecute(Sender: TObject);
    procedure DBMemo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ADOTAnnosEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ADOTAnnosFechaSetText(Sender: TField; const Text: String);
    function ValidaFecha(Fecha:String):Boolean;
    procedure ADOTPastorDistritoEntradaSetText(Sender: TField;
      const Text: String);
    procedure ADOTPastorDistritoSalidaSetText(Sender: TField;
      const Text: String);
    procedure ADOTPastorIglesiaEntradaSetText(Sender: TField;
      const Text: String);
    procedure ADOTPastorIglesiaSalidaSetText(Sender: TField;
      const Text: String);
    procedure ADOTObrerasEntradaSetText(Sender: TField;
      const Text: String);
    procedure ADOTObrerasSalidaSetText(Sender: TField; const Text: String);
    procedure TrataTextoFechaDesfraternizado(Sender: TField; const Text: String);
    procedure TrataTextoFechaBautismo(Sender: TField; const Text: String);
    procedure TrataTextoFechaNacimiento(Sender: TField; const Text: String);
    procedure TrataTextoEdad(Sender: TField; const Text: String);
    procedure TrataTextoSalario2(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure TrataTextoSalario1(Sender: TField;const Text: String);
    //procedure TrataTextoSalario1(Sender: TField);
    procedure EliminarRegistrosSueltos1Click(Sender: TObject);
    procedure ActualizarEdaddelosMiembros1Click(Sender: TObject);
    procedure ADODatSetSueltosAfterClose(DataSet: TDataSet);
    function Encript(aFrase: String; aClave: Integer): String;
    function Decript(aFrase: String; aClave: Integer): String;
    procedure Muestra(Sender:TObject);
    procedure ConfigPageExecute(Sender: TObject);
    procedure ADOTMiembrosBeforeClose(DataSet: TDataSet);
    procedure ADOTMiembrosAfterOpen(DataSet: TDataSet);
    procedure NuevaUExecute(Sender: TObject);
    procedure NuevaAExecute(Sender: TObject);
    procedure NuevaPExecute(Sender: TObject);
    procedure NuevoDExecute(Sender: TObject);
    procedure NuevaIExecute(Sender: TObject);
    procedure BorraNodoExecute(Sender: TObject);
    procedure BorraTodosExecute(Sender: TObject);
    procedure NuevaAUpdate(Sender: TObject);
    procedure NuevaPUpdate(Sender: TObject);
    procedure NuevoDUpdate(Sender: TObject);
    procedure NuevaIUpdate(Sender: TObject);
    procedure BorraNodoUpdate(Sender: TObject);
    procedure BorraTodosUpdate(Sender: TObject);
    procedure ActualizarEdaddelosMiembrosporNoIdentidad1Click(
      Sender: TObject);
    procedure ImprimirFormularioLleno1Click(Sender: TObject);
    procedure ImprimirFormularioVaco1Click(Sender: TObject);
    procedure ADOConnection1AfterConnect(Sender: TObject);
    procedure EstablecerContrasea1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure ImprimeQueDBGrid(Sender: TjvDBUltimGrid);
    procedure ButtonImpNombramientosClick(Sender: TObject);
    procedure ButtonImpNotasClick(Sender: TObject);
    procedure DBGridAnnosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridAnnosKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridAnnosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridAnnosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridAnnosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure NuevaUUpdate(Sender: TObject);
    procedure ADOTPastorDistritoAfterDelete(DataSet: TDataSet);
    procedure ADOTPastorIglesiaAfterDelete(DataSet: TDataSet);
    procedure ADOTObrerasAfterDelete(DataSet: TDataSet);
    procedure ADOTAnnosAfterDelete(DataSet: TDataSet);
    procedure ADOTNombramientosIglAfterDelete(DataSet: TDataSet);
    procedure AyudaExecute(Sender: TObject);
    procedure ADOImportMiembrosAfterPost(DataSet: TDataSet);
    procedure CentrarEnDestino(Obj:TControl; const ObjRef:TControl);
    procedure ADOTMiembrosAfterClose(DataSet: TDataSet);
    procedure ButtonSiguienteClick(Sender: TObject);
    procedure ButtonBuscarClick(Sender: TObject);
    procedure EditBuscar2KeyPress(Sender: TObject; var Key: Char);
    procedure ButtonAnteriorClick(Sender: TObject);
    procedure PegarUpdate(Sender: TObject);
    procedure CortarUpdate(Sender: TObject);
    procedure SeleccionarNadaExecute(Sender: TObject);
    procedure SeleccionarTodosExecute(Sender: TObject);
    procedure SeleccionarTodosUpdate(Sender: TObject);
    procedure SeleccionarNadaUpdate(Sender: TObject);
    procedure ADODataSet1BeforeClose(DataSet: TDataSet);
    procedure DBGrid1ColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure DBGridPastorDistritoColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure DBGridPastorIglesiaColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure DBGridObrerasColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure DBGridNombramientosIglColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure DBGridExtColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure GuardarConfiguracionesExecute(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure DBGridExtDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2ColumnResized(Grid: TJvDBGrid; ACol,
      NewWidth: Integer);
    procedure InsertarRegistroExecute(Sender: TObject);
    procedure InsertarRegistroUpdate(Sender: TObject);
    procedure BorraRegistroExecute(Sender: TObject);
    procedure BorraRegistroUpdate(Sender: TObject);
    procedure DBGridExtMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private

     //En caso de que se use la rueda del Mouse en el DBGrid
     {procedure DBGrid1PillaLaRueda(var Message: TMessage);
     procedure DBGrid2PillaLaRueda(var Message: TMessage);
     procedure DBGridExtPillaLaRueda(var Message: TMessage);
     procedure DBGridPastorDistritoPillaLaRueda(var Message: TMessage);
     procedure DBGridPastorIglesiaPillaLaRueda(var Message: TMessage);
     procedure DBGridObrerasPillaLaRueda(var Message: TMessage);
     procedure DBGridAnnosPillaLaRueda(var Message: TMessage);
     procedure DBGridNombramientosIglPillaLaRueda(var Message: TMessage);}

     //procedure SaveColPos(Const DbGrid:TJvDBUltimGrid);
     //procedure LoadColPos(Var DbGrid:TJvDBUltimGrid);

     procedure SaveSplitters(Splitter: TSplitter);
     procedure LoadSplitters(Splitter: TSplitter);

     function ConfigSiNo:boolean;

     procedure ConfigurarExt;
     procedure localizandoEditado;
    { Private declarations }
  public
    { Public declarations }
    procedure SaveColPos(Const DbGrid:TJvDBUltimGrid);
    procedure LoadColPos(Var DbGrid:TJvDBUltimGrid);
  end;

var
  Form1: TForm1;
  ResultCol: Integer;

  {Estas cuatro variables son para buscar con el DBUltimGrid}
  ResultField: TField;
  marcabusca: Array [0..9999] of TBookMark; //para usarla en retroceder la busqueda
  Cuentabusca: Integer; //El contador y acumulador de buscar
  CadBusca: String; //El campo en donde se busca
  //P: ^Integer;
  DirDBExt{Directorio de la base de datos externa},
  TablaFuente{Directorio de la base de datos Normal de la aplicacion},
  Union, Asociacion,
  Provincia, Distrito, Iglesia, ConsultaTotal, Campos,
  FiltradoWhere,FiltroExt, From, FiltradoTFD, CampoUAPDI, Prueba1, Prueba2,
  Prueb1,Prueb2, Ordenar,UnionExt, AsociacionExt, ProvinciaExt, DistritoExt,
  IglesiaExt,GuardaEdit1,sss,Titulo1,Titulo2: String;

  Activa, Global, Seleccion, Normal, Expandido, UniSiNo, AsoSiNo, ProvSiNo, DistSiNo,
  OrdenarSiNo, IgleSiNo, StarIsThere, PuedeEditar,EditSiNo,
  Importar, ActualizarBoxes, VieneDeBuscar,{Para saber si se pone mensaje en caso
    de no haber resultados de busqueda}
  Desf,Trasl,Fall{para saber si pinta de otro color la fila, y no dé error},
  Reporte1{para saber que reporte muestro y actualizar la configuracion
  de la pagina}: Boolean;
  BoolPrueba{para ver si cierra o no sin mostrar el proc limitante}:Boolean=false;
  corre:boolean=false;{Saber si cuando el dataset haga un post avance el progressExp}
  cerrarBaseSi: Boolean=False; {para poder imprimir el formulario vacio y cerrar en caso necesario}
  progreso,CantAnterior, AltoPanelInfoAdic: Integer; {para el ProgressBar de Import y Export}

  IdU,IdA,IdP,IdD,IdI: ShortString ; {por si se repitan datos en el TreeView1}
  IdUEx,IdAEx,IdPEx,IdDEx,IdIEx: Integer; {Ahora para la BasDatos Exterior}
  PosCursor:Pointer;
  CadID:     String; //password
  TipoDePapel: TQRPaperSize;{para usarlo en la configuracion del reporte}
  ADOFuente,ADODestino:TDataSet;

type
  {Para guardar en cada nodo el Id correspondiente para usarlo en la busqueda}
    PRecordId = ^TMyRecord;
    TMyRecord = record
      Id: Integer;
    end;

implementation

uses Unit2,GuardaBuscar, Unit7, Reporte, Unit8, Unit9, Unit10, Unit11,
  Unit12, UnitImpresion, UnitOrdenar, Unit13,UnitBusqAntExt, UnitBImportar, UnitEspera,
  UnitDateVisitas, UnitIdiomas, UnitEnfermedades, UnitConfigurarDB,
  UnitAbout, UnitFechaNBD,UnitAddIdioma,UnitAddEnfernedad, UnitConfigPage, UnitTarjetero,UnitEstablecerID,
  UnitBorrarID, UnitNotasFecha, MaskUtils;

{$R *.dfm}

{Type
  TomaInvento = class(TControl);// Para la rueda del mouse en el DBGrid }


procedure TForm1.FormCreate(Sender: TObject);
var
  Registro : TRegistry;
begin
  LoadSplitters(Splitter1);
  GuardarConfiguraciones.Checked:=ConfigSiNo;
  Cuentabusca:=-1;
  {try
    Registro := TRegistry.Create(KEY_READ);
    Registro.RootKey := HKEY_LOCAL_MACHINE;
    Registro.OpenKey(Decript('amsÌÑ¸Ê[M7Ø•à«êÓ‰ýûn~Ã',987654321), False);
    CadID := Registro.ReadString(decript('hp^irlgugtite',987654321));
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
    Application.Terminate;
  end; }
  TablaFuente:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'DataBase\DBChurch.mdb';
  ADOConnection1.ConnectionString:=
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
      TablaFuente+';Mode=Share Deny None;Extended Properties="";'+
      'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
      'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
      'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
      'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
      'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
      'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
      'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
  ponNodos;{leo la DataBase para poner los nodos}
  //Cambiar el Scroll de el DBGrid
  {DBGrid1.WindowProc := DBGrid1PillaLaRueda;
  DBGrid2.WindowProc := DBGrid2PillaLaRueda;
  DBGridExt.WindowProc := DBGridExtPillaLaRueda;
  DBGridPastorDistrito.WindowProc:=DBGridPastorDistritoPillaLaRueda;
  DBGridPastorIglesia.WindowProc:=DBGridPastorIglesiaPillaLaRueda;
  DBGridObreras.WindowProc:=DBGridObrerasPillaLaRueda;
  DBGridAnnos.WindowProc:=DBGridAnnosPillaLaRueda;
  DBGridNombramientosIgl.WindowProc:=DBGridNombramientosIglPillaLaRueda;}
  //Para cambiar la tecla Tab por Enter
  Application.OnMessage := AppMessage;
  Union:='';
  Asociacion:='';
  Provincia:='';
  Distrito:='';
  Iglesia:='';
  Prueba1:='';
  TipoDePapel:=Letter;
  Global:=false;Activa:=false;Normal:=false;Seleccion:=false;
  Expandido:=false;
  EditSiNo:=false;
  try
    loadColPos(DBGridExt);
    loadColPos(DBGridPastorDistrito);
    loadColPos(DBGridPastorIglesia);
    loadColPos(DBGridObreras);
    loadColPos(DBGridNombramientosIgl);
  except;
    //ShowMessage('Que erroooooor');
  end;
end;

//cambia el Options del DBNavigator de la DataBase externa\\
procedure TForm1.Si;
begin
  DBGridExt.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines];
end;

//Cambiar la manera de comportarse la rueda del mouse en el DBGrid1
{procedure TForm1.DBGrid1PillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (DBGrid1.DataSource.DataSet.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGrid1.DataSource.DataSet.Active then
        DbGrid1.DataSource.DataSet.Prior;
      end else
      begin
        if DBGrid1.DataSource.DataSet.Active then
        DbGrid1.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGrid1).WndProc(Message);
  end;
end;}

{procedure TForm1.DBGrid2PillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (ADOTVisitas.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGrid2.DataSource.DataSet.Active then
        DbGrid2.DataSource.DataSet.Prior;
      end else
      begin
        if DBGrid2.DataSource.DataSet.Active then
        DbGrid2.DataSource.DataSet.Next;
      end;
    end;
  end else
  begin
    TomaInvento(DBGrid2).WndProc(Message);
  end;
end;}

//Cambiar la manera de comportarse la rueda del mouse en el DBGridExt
{procedure TForm1.DBGridExtPillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (ADOImportMiembros.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGridExt.DataSource.DataSet.Active then
        DBGridExt.DataSource.DataSet.Prior;
      end else
      begin
        if DBGridExt.DataSource.DataSet.Active then
        DBGridExt.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGridExt).WndProc(Message);
  end;
end;}

{procedure TForm1.DBGridPastorDistritoPillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (DBGridPastorDistrito.DataSource.DataSet.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGridPastorDistrito.DataSource.DataSet.Active then
        DbGridPastorDistrito.DataSource.DataSet.Prior;
      end else
      begin
        if DBGridPastorDistrito.DataSource.DataSet.Active then
        DbGridPastorDistrito.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGridPastorDistrito).WndProc(Message);
  end;
end;}

{procedure TForm1.DBGridPastorIglesiaPillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (DBGridPastorIglesia.DataSource.DataSet.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGridPastorIglesia.DataSource.DataSet.Active then
        DBGridPastorIglesia.DataSource.DataSet.Prior;
      end else
      begin
        if DBGridPastorIglesia.DataSource.DataSet.Active then
        DBGridPastorIglesia.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGridPastorIglesia).WndProc(Message);
  end;
end;}

{procedure TForm1.DBGridObrerasPillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (DBGridObreras.DataSource.DataSet.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGridObreras.DataSource.DataSet.Active then
        DBGridObreras.DataSource.DataSet.Prior;
      end else
      begin
        if DBGridObreras.DataSource.DataSet.Active then
        DBGridObreras.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGridObreras).WndProc(Message);
  end;
end;}

{procedure TForm1.DBGridNombramientosIglPillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (DBGridNombramientosIgl.DataSource.DataSet.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGridNombramientosIgl.DataSource.DataSet.Active then
        DBGridNombramientosIgl.DataSource.DataSet.Prior;
      end else
      begin
        if DBGridNombramientosIgl.DataSource.DataSet.Active then
        DBGridNombramientosIgl.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGridNombramientosIgl).WndProc(Message);
  end;
end;}

{procedure TForm1.DBGridAnnosPillaLaRueda(var Message: TMessage);
var
  Cuanto : short;
  n      : integer;
begin
  if (Message.Msg = WM_MOUSEWHEEL) and (formConfigurarDB.ListBox2.Count-1<>-1)
  and (DBGridAnnos.DataSource.DataSet.Active) then
  begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    for n:=1 to Abs(Cuanto) do begin
      if Cuanto > 0 then
      begin
        if DBGridAnnos.DataSource.DataSet.Active then
        DBGridAnnos.DataSource.DataSet.Prior;
      end else
      begin
        if DBGridAnnos.DataSource.DataSet.Active then
        DBGridAnnos.DataSource.DataSet.Next else
      end;
    end;
  end else
  begin
    TomaInvento(DBGridAnnos).WndProc(Message);
  end;
end;}

//Para que dentro del DBGrid el Enter funcione como Tab
procedure TForm1.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.wParam = VK_RETURN then
  begin
      if ((Screen.ActiveControl) is TjvDBUltimGrid) then
      begin
        Msg.wParam := VK_TAB;
      end;
  end;
end;

{Quito la Iglesia marcada como activa}
procedure TForm1.QuitaSeleccionDeNodo;
var i: Integer;
begin
  for i:=0 to TreeView1.Items.Count-1 do
    if TreeView1.Items[i].Level=4 then
      if TreeView1.Items[i].SelectedIndex=9 then
        TreeView1.Items[i].SelectedIndex:=8;
end;

////////////////Hay que borrar tambien los campos de ese Nodo
procedure TForm1.Borrar1Click(Sender: TObject);
begin
  
end;

{ Al cerrar un nodo }
procedure TForm1.TreeView1Collapsing(Sender: TObject;
   Node: TTreeNode; Var  AllowCollapse: Boolean);
begin
  { Restauramos las imágenes originales }
  Node.ImageIndex := Node.Level * 2;
  Node.SelectedIndex := Node.Level * 2;
  ButtonMas.Update;
end;

{ Al Expandido un nodo }
procedure TForm1.TreeView1Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
  { Si no estamos en el último nivel }
  If Node.Level <> 4 Then
    Begin
      { Usamos las imágenes de los libros abiertos }
      Node.Imageindex := Node.Level * 2 + 1;
      Node.SelectedIndex := Node.Level * 2 + 1;
    End;
  ButtonMas.Update;
end;

//////////////////////////////MOUSE DOWN ///////////////////////////////////////
procedure TForm1.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  N,i: Integer;
  HT : THitTests;
begin
  If Button=mbRight then
  begin
    if TreeView1.GetNodeAt(x,y)<>nil then
    TreeView1.Selected:=TreeView1.GetNodeAt(x,y);
  end;
  If Button=mbLeft then If (ssDouble in Shift) then
  begin
    if (Sender is TTreeView) then
    begin
      with Sender as TTreeView do
      begin
        HT := GetHitTestInfoAt(X,Y);
        if (htOnItem in HT) then
        begin
          If TreeView1.Selected <> Nil Then
            If TreeView1.GetNodeAt(x,y).Level=4 then
            begin
              Iglesia:=TreeView1.GetNodeAt(x,y).Text;
              //TreeView1.GetNodeAt(x,y).ImageIndex:=-1;
              for i:=0 to TreeView1.Items.Count-1 do
              if TreeView1.Items[i].Level=4 then
              if TreeView1.Items[i].SelectedIndex=9 then
                TreeView1.Items[i].SelectedIndex:=8;
              TreeView1.GetNodeAt(x,y).SelectedIndex:=9;
              N := TreeView1.Selected.AbsoluteIndex;
              IdI:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
              //Buscando el Distrito al cual pertenece la Iglesia
              While TreeView1.Items[N].Level <> 3 Do
              Dec(N);
              Distrito:=TreeView1.Items[N].Text;
              IdD:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
              //Buscando la Provincia a la cual pertenece el Distrito
              While TreeView1.Items[N].Level <> 2 Do
              Dec(N);
              Provincia:=TreeView1.Items[N].Text;
              IdP:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
              //Buscando la Asociacion a la cual pertenece la Provincia
              While TreeView1.Items[N].Level <> 1 Do
              Dec(N);
              Asociacion:=TreeView1.Items[N].Text;
              IdA:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
              //Buscando la Unión a la cual pertenece la Delegación
              While TreeView1.Items[N].Level <> 0 Do
              Dec(N);
              Union:=TreeView1.Items[N].Text;
              IdU:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
              LUnion.Caption:=Union;
              LAsociacion.Caption:=Asociacion;
              LProvincia.Caption:=Provincia;
              LDistrito.Caption:=Distrito;
              LIglesia.Caption:=Iglesia;
              Normal:=true;Activa:=false;Seleccion:=false;Global:=false;
              EditSiNo:=true;
              TreeView1.Update;
              //ShowMessage(Provincia);
              //ShowMessage('Iglesia='+Iglesia);
              if IdI<>'' then
              begin
                try
                  CampoVisible;
                except;
                end;
              end;
            end;
        end;
      end;
    end;
     //LoadColPos(DBGrid1);
  end;
end;

//Cambiar el aspecto del TreeView1
procedure TForm1.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  With TreeView1.Canvas do
    if cdsSelected in State then
    begin
      Pen.Color:=clBlack;
      Font.Color:=clYellow;
      Brush.Color := clBlack;
      Brush.Style := bsSolid;
    end;
  if Node.Level=4 then
  if Node.SelectedIndex<>8 then Node.ImageIndex:=9
  else Node.ImageIndex:=8
end;

/////////////////////////Campos Visibles////////////////////////////////////
Procedure TForm1.CampoVisible;
Var
  Lista,i: Integer;
  tabla: String;
Label Continuar1,Continuar2;
begin
  Desf:=false;Trasl:=false;Fall:=false;
  If formConfigurarDB.ListBox2.Count<1 then //Si no hay campos para mostrar, salgo
  begin
  If Application.MessageBox('   No hay campos para mostrar.      '+#13+
                            'Debe configurar la Tabla Maestra:'+#13+
                            'Herramientas\Configurar Tabla Maestra.     ',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION)=ID_OK Then
  begin
    if VieneDeBuscar then form2.close;
    exit;
  end;
  //BarraDeEstado;
  end;
  ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;ADOTDistrito.Close;ADOTIglesia.Close;
  ADOTMiembros.Close;ADOTVisitas.Close;ADOTPastorDistrito.Close;ADOTPastorIglesia.Close;
  ADOTObreras.Close;ADOTAnnos.Close;ADOTNombramientosIgl.Close;ADOTNotasNombramientos.Close;
  if IdU<>'' then
    ADOTUnion.CommandText:='Select TUnion.* from TUnion where TUnion.IdUnion='+(IdU)
  else ADOTUnion.CommandText:='Select TUnion.* from TUnion';
  if IdA<>'' then
    ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion where TAsociacion.IdAsociacion='+(IdA)
  else ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion';
  if IdP<>'' then
    ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia where TProvincia.IdProvincia='+(IdP)
  else ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia';
  if IdD<>'' then
    ADOTDistrito.CommandText:='Select TDistrito.* from TDistrito where TDistrito.IdDistrito='+(IdD)
  else ADOTDistrito.CommandText:='Select TDistrito.* from TDistrito';
  if IdI<>'' then
    ADOTIglesia.CommandText:='Select TIglesia.* from TIglesia where TIglesia.IdIglesia='+(IdI)
  else ADOTIglesia.CommandText:='Select TIglesia.* from TIglesia';
  ADOTUnion.Open;
  ADOTAsociacion.Open;
  ADOTProvincia.Open;
  ADOTDistrito.Open;
  ADOTIglesia.Open;
  Campos:=''; CampoUAPDI:=''; From:='';
  with formConfigurarDB do
  begin
    UniSiNo:=CheckBox9.Checked;AsoSiNo:=CheckBox7.Checked; ProvSiNo:=CheckBox8.Checked;
    DistSiNo:=CheckBox5.Checked;IgleSiNo:=CheckBox6.Checked;
  end;
  FiltradoWhere:=''; FiltradoTFD:='';
  //////////////////\\\\\\\\\\\\\\\\\\\\
  For lista:=0 to formConfigurarDB.ListBox2.Count-1 do
  begin
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Unión' then
    begin
      if Not Normal and Not Activa then
      begin
        tabla:='TUnion.[';
        Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
      end;
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Asociación' then
    begin
      if Not Normal and Not Activa then
      begin
        tabla:='TAsociacion.[';
        Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
      end;
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Provincia' then
    begin
      if Not Normal and Not Activa then
      begin
        tabla:='TProvincia.[';
        Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
      end;
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Distrito' then
    begin
      if Not Normal and Not Activa then
      begin
        tabla:='TDistrito.[';
        Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
      end;
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Iglesia' then
    begin
      if Not Normal and Not Activa then
      begin
        tabla:='TIglesia.[';
        Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
      end;
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Traslado' then
    begin
      Trasl:=true;
      tabla:='TMiembros.[';
      Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Desfraternizado' then
    begin
      Desf:=true;
      tabla:='TMiembros.[';
      Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
    end else
    if formConfigurarDB.ListBox2.Items.Strings[lista]='Fallecido' then
    begin
      Fall:=true;
      tabla:='TMiembros.[';
      Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
    end else
    begin
      tabla:='TMiembros.[';
      Campos:=Campos+tabla+formConfigurarDB.ListBox2.Items.Strings[lista]+']'+',';
    end;
  end;
              
  If Activa then {ACTIVA ACTIVA ACTIVA ACTIVA ACTIVA ACTIVA ACTIVA ACTIVA}
  begin
    if Form2.CheckBox1.Checked then
    begin
      If (IdI<>'') then
      begin
        FiltradoWhere:=' Where (TUnion.[Unión]= '+QuotedStr(Union)+ ' And '+
          'TUnion.[IdUnion]= '+(IdU)+')'+'And '+'(TAsociacion.[Asociación]='+
          QuotedStr(Asociacion) + ' And '+'TAsociacion.[IdAsociacion]= '+
          (IdA)+')'+' And '+'(TProvincia.[Provincia]= ' +QuotedStr(Provincia)+
           ' And '+'TProvincia.[IdProvincia]= '+(IdP)+')'+ ' And '+
           '(TDistrito.[Distrito]= ' +QuotedStr(Distrito)+ ' And '+
           'TDistrito.[IdDistrito]= '+(IdD)+')'+ ' And '+
           '(TIglesia.[Iglesia]= ' +QuotedStr(Iglesia)+' And '+
           'TIglesia.[IdIglesia]= '+(IdI)+')';
        LUnion.Caption:=Union;
        LAsociacion.Caption:=Asociacion;
        LProvincia.Caption:=Provincia;
        LDistrito.Caption:=Distrito;
        LIglesia.Caption:=Iglesia;
        EditSiNo:=true;
        CandadoSiNo; CandadoPulzado;
        VerTFD;
        CamposMostrados;
      end;
    end else
    begin
      If (IdI<>'') then
      begin
        FiltradoWhere:=' Where TUnion.[Unión]= '+QuotedStr(Union)+ ' And '+
                      'TAsociacion.[Asociación]=' +QuotedStr(Asociacion)+ ' And '+
                      'TProvincia.[Provincia]= ' +QuotedStr(Provincia)+ ' And '+
                      'TDistrito.[Distrito]= ' +QuotedStr(Distrito)+ ' And '+
                      'TIglesia.[Iglesia]= ' +QuotedStr(Iglesia);
        FiltradoWhere:=FiltradoWhere+' and (Nombre Like '+ QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Primer Apellido] Like '+ QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Segundo Apellido] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Sexo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Dirección] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Estado Civil] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Oficio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Dones] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Pastor que Bautizó] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Fecha Bautismo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Fecha Nacimiento] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Fecha Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Condición] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Localidad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Teléfono] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Traslado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Fallecido] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Ext Hogar] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Rebautismo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[No Identidad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Centro Trabajo/Estudio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Dirección Trabajo/Estudio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Cónyuge Adventista] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Ocupación Actual] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Salario] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Obrero que Trabajó] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Nivel Escolar] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Nació en Hogar ASD] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Causa Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Religión Practicada] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Otra Información] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Enfermedades] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Idiomas] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                      '[Edad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+')';
        EditSiNo:=true;
        CandadoSiNo; CandadoPulzado;
        VerTFD;
        CamposMostrados;
      end;
    end;
  end else
  If Global then {GLOBAL GLOBAL GLOBAL GLOBAL GLOBAL GLOBAL GLOBAL GLOBAL}
  begin
    Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
    LUnion.Caption:='Todas las Uniones...';
    LAsociacion.Caption:='Todas las Asociaciones...';
    LProvincia.Caption:='Todas...';
    LDistrito.Caption:='Todos...';
    LIglesia.Caption:='Todas...';
    for i:=0 to TreeView1.Items.Count-1 do
    if TreeView1.Items[i].SelectedIndex=9 then
    begin
      TreeView1.Items[i].SelectedIndex:=8;
      Goto Continuar1;
    end;
    Continuar1:
    EditSiNo:=false;
    CandadoSiNo; CandadoPulzado;
    VerTFD;
    CamposMostrados;
  end else   
  If Seleccion then  {SELECCION}
  begin
    If (Form2.ComboBox7.ItemIndex<>-1) and
    (Form2.ComboBox5.ItemIndex<>-1) and
    (Form2.ComboBox3.ItemIndex<>-1) and
    (Form2.ComboBox6.ItemIndex<>-1) and
    (Form2.ComboBox4.ItemIndex<>-1) then
    begin
      FiltradoWhere:=FiltradoWhere+' Where (TUnion.[IdUnion]='+(IdU)+' And '+
                     'TUnion.[Unión]='+QuotedStr(Union)+')'+' AND '+
                     '(TAsociacion.[IdAsociacion]='+(IdA)+' And '+
        'TAsociacion.[Asociación]='+QuotedStr(Asociacion)+')'+' And '+
        '(TProvincia.[IdProvincia]='+(IdP)+' And '+
        'TProvincia.[Provincia]='+QuotedStr(Provincia)+')'+' And '+
        '(TDistrito.[IdDistrito]='+(IdD)+' And '+
        'TDistrito.[Distrito]='+QuotedStr(Distrito)+')'+' And '+
        '(TIglesia.[IdIglesia]='+(IdI)+' And '+
        'TIglesia.[Iglesia]='+QuotedStr(Iglesia)+')';
    end else
    If (Form2.ComboBox7.ItemIndex<>-1) and
    (Form2.ComboBox5.ItemIndex<>-1) and
    (Form2.ComboBox6.ItemIndex<>-1) and
    (Form2.ComboBox3.ItemIndex<>-1) then
    begin
      FiltradoWhere:=FiltradoWhere+' Where (TUnion.[IdUnion]='+(IdU)+' And '+
                     'TUnion.[Unión]='+QuotedStr(Union)+')'+' AND '+
                     '(TAsociacion.[IdAsociacion]='+(IdA)+' And '+
        'TAsociacion.[Asociación]='+QuotedStr(Asociacion)+')'+' And '+
        '(TProvincia.[IdProvincia]='+(IdP)+' And '+
        'TProvincia.[Provincia]='+QuotedStr(Provincia)+')'+' And '+
        '(TDistrito.[IdDistrito]='+(IdD)+' And '+
        'TDistrito.[Distrito]='+QuotedStr(Distrito)+')';
    end else
    If (Form2.ComboBox7.ItemIndex<>-1) and
    (Form2.ComboBox5.ItemIndex<>-1)and
    (Form2.ComboBox6.ItemIndex<>-1) then
    begin
      FiltradoWhere:=FiltradoWhere+' Where (TUnion.[IdUnion]='+(IdU)+' And '+
                     'TUnion.[Unión]='+QuotedStr(Union)+')'+' AND '+
                     '(TAsociacion.[IdAsociacion]='+(IdA)+' And '+
        'TAsociacion.[Asociación]='+QuotedStr(Asociacion)+')'+' And '+
        '(TProvincia.[IdProvincia]='+(IdP)+' And '+
        'TProvincia.[Provincia]='+QuotedStr(Provincia)+')';
    end else
    If (Form2.ComboBox7.ItemIndex<>-1) and
    (Form2.ComboBox5.ItemIndex<>-1) then
    begin
      FiltradoWhere:=FiltradoWhere+' Where (TUnion.[IdUnion]='+(IdU)+' And '+
                     'TUnion.[Unión]='+QuotedStr(Union)+')'+' AND '+
                     '(TAsociacion.[IdAsociacion]='+(IdA)+' And '+
        'TAsociacion.[Asociación]='+QuotedStr(Asociacion)+')';
    end else
    If (Form2.ComboBox7.ItemIndex<>-1) then
    begin
      FiltradoWhere:=FiltradoWhere+' Where (TUnion.[IdUnion]='+(IdU)+' And '+
                     'TUnion.[Unión]='+QuotedStr(Union)+')';
    end;
    LUnion.Caption:=Union;
    //if Union<>'' then LUnion.Caption:=Union else
      //LUnion.Caption:='Todas las Uniones...';
    if Asociacion<>'' then LAsociacion.Caption:=Asociacion else
      LAsociacion.Caption:='Todas las Asociaciones...';
    if Provincia<>'' then LProvincia.Caption:=Provincia else
      LProvincia.Caption:='Todas...';
    if Distrito<>'' then LDistrito.Caption:=Distrito else
      LDistrito.Caption:='Todos...';
    if Iglesia<>'' then LIglesia.Caption:=Iglesia else
      LIglesia.Caption:='Todas...';
    for i:=0 to TreeView1.Items.Count-1 do
    if TreeView1.Items[i].SelectedIndex=9 then
    begin
      TreeView1.Items[i].SelectedIndex:=8;
      Goto Continuar2;
    end;
    Continuar2:
    EditSiNo:=false;
    CandadoSiNo; CandadoPulzado;
    VerTFD;
    CamposMostrados;
  end else
  If Normal then   {NORMAL-Por Click o por Enter}
  begin
    If (Iglesia<>'') then

    //ShowMessage('Hay Seleccion de Iglesia') else ShowMessage('No Hay Seleccion de Iglesia');
    FiltradoWhere:=' Where (TUnion.[IdUnion]= '+(IdU)+ ' And '+
                 'TAsociacion.[IdAsociacion]= '+(IdA)+ ' And '+
                    'TProvincia.[IdProvincia]= '+(IdP)+' And '+
                     'TDistrito.[IdDistrito]= '+(IdD)+ ' And '+
                             'TIglesia.[IdIglesia]= '+(IdI)+')';
                   //Showmessage(IntToStr(ListBox2.Count-1));

    EditSiNo:=true;
    CandadoSiNo; CandadoPulzado;
    VerTFD;
    CamposMostrados;
  end;
end;

//Ver estos campos
Procedure TForm1.VerTFD;
begin
  //AddFilter:='';
  FiltradoTFD:='';                                       ////////////
  If formConfigurarDB.CheckBox2.Checked=false then FiltradoTFD:=FiltradoTFD+' and TMiembros.[Traslado]<> True'
                      {+ QuotedStr('Si')};
  If formConfigurarDB.CheckBox3.Checked=false then FiltradoTFD:=FiltradoTFD+' and TMiembros.[Fallecido]<> True'
                      {+ QuotedStr('Si')};
  If formConfigurarDB.CheckBox4.Checked=false then FiltradoTFD:=FiltradoTFD+' and TMiembros.[Desfraternizado]<> True'
                      {+ QuotedStr('Si')};
end;

//Establece los campos que se van a mostrar
Procedure TForm1.CamposMostrados;
Var
  cadfrom: String;
begin
  CampoUAPDI:='';Prueba2:=Prueba1;StarIsThere:=false;
  If (FiltradoWhere='') and (FiltradoTFD<>'') then
  begin {Arreglamos las repeticiones: And}
    delete(FiltradoTFD,1,5);
    FiltradoWhere:=' Where ';
  end else
  If (FiltradoWhere='') and (FiltradoTFD='') then
  begin
    delete(Prueba2,1,5);
    FiltradoWhere:=' Where ';
  end;// else// else Prueba2:='';
  if not Form2.CheckBox1.Checked then Prueba2:='';
  {para buscar dentro de la misma Iglesia, consulta que se puede editar}
  From:=' And (TUnion.IdUnion=TAsociacion.IdUnion and TAsociacion.IdAsociacion=TProvincia.IdAsociacion '+
  'and TProvincia.IdProvincia=TDistrito.IdProvincia and TDistrito.IdDistrito=TIglesia.IdDistrito '+
  'and  TIglesia.IdIglesia=TMiembros.IdIglesia)';
  if FiltradoWhere=' Where ' then delete(From,1,5);
  if Global then   //GLOBAL\\
  begin
    cadfrom:='FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON TAsociacion.IdAsociacion '+
    '= TProvincia.IdAsociacion) INNER JOIN ((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito) '+
    'INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON TProvincia.IdProvincia = TDistrito.IdProvincia) '+
    'ON TUnion.IdUnion = TAsociacion.IdUnion';
    From:='';
    ConsultaTotal:='Select '+Campos+' TMiembros.IdMiembro,TMiembros.IdIglesia, '+
    'TMiembros.Foto,TMiembros.[Otra Información],TMiembros.Idiomas,TMiembros.Enfermedades '+cadfrom+
    FiltradoWhere+from+FiltradoTFD;
    DBGrid1.DataSource:=DataSource1;
    ADODataSet1.Close;
    ConsultaTotal:=ConsultaTotal+Prueba2;
    If OrdenarSiNo then ConsultaTotal:=ConsultaTotal+' Order by '+Ordenar;
    ADODataSet1.CommandText:=ConsultaTotal;
  end;
  if Activa then //ACTIVA\\
  begin
    cadfrom:=' from TMiembros, TUnion, TAsociacion, TProvincia, TDistrito, TIglesia';
    ConsultaTotal:='Select '+Campos+' TMiembros.IdMiembro,TMiembros.IdIglesia, '+
    'TMiembros.Foto,TMiembros.[Otra Información],TMiembros.Idiomas,TMiembros.Enfermedades'+cadfrom+
    FiltradoWhere+from+FiltradoTFD;
    DBGrid1.DataSource:=DSTMiembros;
    ADOTMiembros.Close;
    ConsultaTotal:=ConsultaTotal+Prueba2;
    If OrdenarSiNo then ConsultaTotal:=ConsultaTotal+' Order by '+Ordenar;
    ADOTMiembros.CommandText:=ConsultaTotal;
  end;
  if Normal then  //NORMAL\\
  begin
    cadfrom:=' from TMiembros, TUnion, TAsociacion, TProvincia, TDistrito, TIglesia';
    ConsultaTotal:='Select '+Campos+' TMiembros.IdMiembro,TMiembros.IdIglesia, '+
    'TMiembros.Foto,TMiembros.[Otra Información],TMiembros.Idiomas,TMiembros.Enfermedades'+cadfrom+
    FiltradoWhere+from+FiltradoTFD;
    DBGrid1.DataSource:=DSTMiembros;
    ADOTMiembros.Close;
    If OrdenarSiNo then ConsultaTotal:=ConsultaTotal+' Order by '+Ordenar;
    ADOTMiembros.CommandText:=ConsultaTotal;
  end;
  if Seleccion then   //SELECCION\\
  begin
    cadfrom:='FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON TAsociacion.IdAsociacion '+
    '= TProvincia.IdAsociacion) INNER JOIN ((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito = '+
    'TIglesia.IdDistrito) INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON '+
    'TProvincia.IdProvincia = TDistrito.IdProvincia) ON TUnion.IdUnion = TAsociacion.IdUnion';
    From:='';
    ConsultaTotal:='Select '+Campos+' TMiembros.IdMiembro,TMiembros.IdIglesia, '+
    'TMiembros.Foto,TMiembros.[Otra Información],TMiembros.Idiomas,TMiembros.Enfermedades '+cadfrom+
    FiltradoWhere+from+FiltradoTFD;
    DBGrid1.DataSource:=DataSource1;
    ADODataSet1.Close;
    ConsultaTotal:=ConsultaTotal+Prueba2;
    If OrdenarSiNo then ConsultaTotal:=ConsultaTotal+' Order by '+Ordenar;
    ADODataSet1.CommandText:=ConsultaTotal;
    //ShowMessage(ConsultaTotal);
  end;
  if not Form2.CheckBox1.Checked then //Buscar simple en la Iglesia ACTIVA\\
  begin
    cadfrom:=' from TMiembros, TUnion, TAsociacion, TProvincia, TDistrito, TIglesia';
    ConsultaTotal:='Select '+Campos+' TMiembros.IdMiembro,TMiembros.IdIglesia, '+
    'TMiembros.Foto,TMiembros.[Otra Información],TMiembros.Idiomas,TMiembros.Enfermedades'+cadfrom+
    FiltradoWhere+from+FiltradoTFD;
    DBGrid1.DataSource:=DSTMiembros;
    ADOTMiembros.Close;
    If OrdenarSiNo then ConsultaTotal:=ConsultaTotal+' Order by '+Ordenar;
    ADOTMiembros.CommandText:=ConsultaTotal;
  end;
  Screen.Cursor := crHourGlass;//Cursor de espera
  try
    TreeView1.Update;
    //Activo la foto, Otra Informacion y el Memo\\
    //ShowMessage(ConsultaTotal);
    DBGrid1.DataSource.DataSet.Open; {los Miembros}
    //ShowMessage(IntToStr(DBGrid1.Columns.Count-1));
    LoadColPos(DBGrid1);
    //Ocultando las columnas IdMiembro, IdIglesia,foto,Otra informacion,Idiomas,Enfermedades\\
    DBGrid1.Columns[DBGrid1.Columns.Count-1].Visible:=false;
    DBGrid1.Columns[DBGrid1.Columns.Count-2].Visible:=false;
    DBGrid1.Columns[DBGrid1.Columns.Count-3].Visible:=false;
    DBGrid1.Columns[DBGrid1.Columns.Count-4].Visible:=false;
    DBGrid1.Columns[DBGrid1.Columns.Count-5].Visible:=false;
    DBGrid1.Columns[DBGrid1.Columns.Count-6].Visible:=false;  
    //for col:=0 to DBGrid1.Columns.Count-7 do DBGrid1.Columns.Items[col].Title.Alignment:=taCenter;
    DBNavigator1.DataSource:=DBGrid1.DataSource;
    DBImage1.DataSource:=DBGrid1.DataSource;
    DBMemo1.DataSource:=DBGrid1.DataSource;
    DBMemoIdiomas.DataSource:=DBGrid1.DataSource;
    DBMemoEnfermedades.DataSource:=DBGrid1.DataSource;
    ADOTVisitas.DataSource:=DBGrid1.DataSource;
    ADOTVisitas.Open;
    if (Normal) or (Activa) then
    begin
      ADOTPastorDistrito.Open;
      ADOTPastorIglesia.Open;
      ADOTObreras.Open;
      ADOTAnnos.Open;
      ADOTNombramientosIgl.Open;
      ADOTNotasNombramientos.Open;
    end else
    begin
      ADOTPastorDistrito.Close;
      ADOTPastorIglesia.Close;
      ADOTObreras.Close;
      ADOTAnnos.Close;
      ADOTNombramientosIgl.Close;
      ADOTNotasNombramientos.Close;
    end;
    Screen.Cursor := crDefault;
    DBGrid1ColEnter(DBGrid1);
    /////////////////////////////////////////////////////////////////EditarSiNo;
    BarraDeEstado;Seleccionados(DBGrid1);
    {Estas condiciones son para evitar los errores o las busquedas sin resul-
    tados, dejando abierta la ventana de busqueda para rectificarla}
    if DBGrid1.DataSource.DataSet.RecordCount<=0 then
    begin{MB_ICONQUESTION,MB_ICONSTOP,MB_ICONINFORMATION,MB_ICONCONFIRMATION, MB_ICONEXCLAMATION}
      if VieneDeBuscar then
      begin
        if Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                             '       ¿Desea intentarlo nuevamente?',
                             'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No
        then form2.close else
        begin
          form2.RichEdit1.SetFocus; form2.RichEdit1.SelectAll;
        end;
      end;
    end else
    begin
      VieneDeBuscar:=false;
      form2.Close;
    end;
  except;
  Screen.Cursor := crDefault;
  if VieneDeBuscar then
  begin
    if Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                         '       ¿Desea intentarlo nuevamente?',
                         'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No
    then form2.close else
    begin
      form2.RichEdit1.SetFocus; form2.RichEdit1.SelectAll;
    end;
    VieneDeBuscar:=false;
    abort;
  end else
  begin
    abort;
  end;
  end;
end;

Procedure TForm1.NoMiembros;
begin
  //Numero de miembros
  //LProvincia.Caption:=IntToStr(DBGrid1.DataSource.DataSet.RecordCount);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  DBImage1.Stretch:=CheckBox1.Checked;
  If CheckBox1.Checked then CheckBox1.Hint:='Tamaño normal'
  else CheckBox1.Hint:='Ampliar';
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  //ADOTMiembros.IndexFieldNames:=ComboBox1.Items.Strings[ComboBox1.ItemIndex];

end;

//Cambiar el DBGrid a Edición y No Edición
procedure TForm1.EditarSiNo;
begin                //////
  {if (ListBox2.Count-1>=0) then
  begin
    If NoEditar.Caption='No Editar' Then
    begin
      DBGrid1.ReadOnly:=true;
                     //Quito el modo Editing
      DBGrid1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,
                      dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,
                      dgMultiSelect];
      DBImage1.Enabled:=false;
      DBMemo1.ReadOnly:=true;//////////----------------------------//////
      ADOTMiembros.Active:=True;
      DateTimePicker1.Enabled:=false;
      DBNavigVisitas.Enabled:=false;
      DBGrid2.ReadOnly:=true;
    end
    else If NoEditar.Caption='Editar' then
    begin
      DBGrid1.ReadOnly:=false;
                     //adiciono el modo Editing
      DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,
                      dgColLines,dgRowLines,dgTabs,dgConfirmDelete,
                      dgCancelOnExit,dgMultiSelect];
      DBImage1.Enabled:=true;
      DBMemo1.ReadOnly:=false;
      ADOTVisitas.Active:=true;
      DateTimePicker1.Enabled:=true;
      DBNavigVisitas.Enabled:=true;
      DBGrid2.ReadOnly:=false;
    end;
  end else//No aparece nada
   begin
    DBGrid1.ReadOnly:=true;
    DBGrid1.Options:=[];
    ADOTMiembros.Close;
    //ADOTVisitas.Close;
    //DBNavigator1.Enabled:=false;
    DBImage1.Enabled:=false;
    DBMemo1.ReadOnly:=true;
  end;  }
end;

Procedure Tform1.ActualizarVentanaBuscar;
begin
  {Form2.ComboBox7.Clear;
  Form2.ComboBox4.Clear;//No borrar, hace falta
  Form2.ComboBox3.Clear;//No borrar, hace falta
  Form2.ComboBox5.Clear;//No borrar, hace falta
  Form2.ComboBox6.Clear;//No borrar, hace falta
  //Form2.ComboBox5.Clear;//No borrar, hace falta
  ActualizandoUni;
  ActualizandoAso;
  ActualizandoProv;
  ActualizandoDist;
  ActualizandoIgl; }
end;


//Evitar pulsaciones diferentes a las señaladas
procedure TForm1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var s: String;
begin
  Seleccionados(Sender);
  s:=DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName;
  If (s='Condición') {or (s='Traslado') or
  (s='Desfraternizado') or (s='Fallecido') or
  (s='Estado Civil') or (s='Ext Hogar') or
  (s='Rebautismo') or (s='Nació en Hogar ASD') or (s='Cónyuge Adventista')} then
  If Key<>#8 then Key:=#0;
end;

procedure TForm1.DBGrid1KeyDown(Sender:TObject;var Key:Word;Shift:TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.ConfirmaBorrado(Sender: TObject);
begin
  {Es el Grid}
  if (sender is TjvDBUltimGrid) then
  with sender as TjvDBUltimGrid do
  begin
    if (SelectedRows.Count>1) then
    begin
      If Application.MessageBox ('¿Estás seguro que deseas borrar estos registros?   '+#13+
                              '     Una vez borrados no se podrán recuperar.',
                               'Borrado de registros',MB_OKCANCEL+MB_ICONQUESTION) =
                               ID_CANCEL Then
      Abort;
      SelectedRows.Delete;
    end else if (SelectedRows.Count=1) then
    begin
      If Application.MessageBox ('¿Estás seguro que deseas borrar este registro?   '+#13+
                              '     Una vez borrado no se podrá recuperar.',
                               'Borrado de registros',MB_OKCANCEL+MB_ICONQUESTION) =
                               ID_CANCEL Then
      Abort;
      SelectedRows.Delete;
    end;
  end;

end;

Procedure TForm1.BorrarNodo;
var
  i,IDDD{Identificador}:Integer;
  SeleccionBorrado:boolean;{Para saber cuando se borre un Nodo si tambien se borro }
begin                        {la Iglesia que estaba seleccionada}
  With TreeView1 Do { Si hay un nodo seleccionado }
  begin
    If Selected <> Nil Then
    begin
      //if SelectionCount>0 then
      If Application.MessageBox ('Puede que pierda datos importantes'+#13+
                                 '       ¿Confirma el borrado?',
                                 'Advertencia',mb_YesNo+MB_ICONQUESTION) =
                                 ID_yes Then
       begin
         if Selected.Level=4 then  //IGLESIA\\
         begin
           IDDD:=PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id;
           try
             ADOTIglesia.Close;
             ADOTIglesia.CommandText:='Delete TIglesia.* from TIglesia Where Iglesia="'+
              Selected.Text+'"'+' and IdIglesia='+IntToStr(IDDD);
             ADOTIglesia.Open;
           except;
           end;
           if Selected.SelectedIndex=9 then
           begin
             Selected.Delete; {Miro al que ahora queda seleccionado}
             if ButtonCandado.Enabled then
             begin
               EditSiNo:=false;CandadoSiNo;
               CandadoPulzado;
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
             end else
             if ButtonCandado.Enabled=false then
             begin
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
             end;
             BarraDeEstado;
           end else
           begin
            selected.Delete;
            //en caso de que se halla efectuado una buqueda por seleccion y contenga esa
            //seleccion, borramos.
            if Seleccion then if IDDD=StrToInt(IdI) then
            begin
              LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
              LDistrito.Caption:='';LIglesia.Caption:='';
              IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
              form2.ComboBox4.Clear;
              try
                DBGrid1.DataSource.DataSet.Close;
              except;
              end;
            end;
           end;
         end else
         if Selected.Level=3 then  //DISTRITO\\
         begin
           IDDD:=PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id;
           try
             ADOTDistrito.Close;
             ADOTDistrito.CommandText:='Delete TDistrito.* from TDistrito Where Distrito="'+
              Selected.Text+'"'+' and IdDistrito='+
              IntToStr(PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id);
             ADOTDistrito.Open;
           except;
           end;
           Selected.Delete;
           SeleccionBorrado:=true;
           if TreeView1.Items.Count>2 then
           begin
             for i:=0 to TreeView1.Items.Count-1 do
             if TreeView1.Items[i].SelectedIndex=9 then SeleccionBorrado:=false;
             if SeleccionBorrado then
             begin
               EditSiNo:=false;CandadoSiNo;
               CandadoPulzado;
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
               BarraDeEstado;
             end;
             if Seleccion then if IDDD=StrToInt(IdD) then
             begin
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               form2.ComboBox3.Clear;form2.ComboBox4.Clear;
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
             end;
           end;
         end else
         if Selected.Level=2 then  //PROVINCIA\\
         begin
           IDDD:=PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id;
           try
             ADOTProvincia.Close;
             ADOTProvincia.CommandText:='Delete TProvincia.* from TProvincia Where Provincia="'+
              Selected.Text+'"'+' and IdProvincia='+
              IntToStr(PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id);
             ADOTProvincia.Open;
           except;
           end;
           Selected.Delete;
           SeleccionBorrado:=true;
           if TreeView1.Items.Count>2 then
           begin
             for i:=0 to TreeView1.Items.Count-1 do
             if TreeView1.Items[i].SelectedIndex=9 then SeleccionBorrado:=false;
             if SeleccionBorrado then
             begin
               EditSiNo:=false;CandadoSiNo;
               CandadoPulzado;
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
               BarraDeEstado;
             end;
             if Seleccion then if IDDD=StrToInt(IdP) then
             begin
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               form2.ComboBox6.Clear;form2.ComboBox3.Clear;form2.ComboBox4.Clear;
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
             end;
           end;
         end else
         if Selected.Level=1 then  //ASOCIACION\\
         begin
           IDDD:=PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id;
           try
             ADOTAsociacion.Close;
             ADOTAsociacion.CommandText:='Delete TAsociacion.* from TAsociacion Where Asociación="'+
              Selected.Text+'"'+' and IdAsociacion='+
              IntToStr(PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id);
             ADOTAsociacion.Open;
           except;
           end;
           Selected.Delete;
           SeleccionBorrado:=true;
           if TreeView1.Items.Count>2 then
           begin
             for i:=0 to TreeView1.Items.Count-1 do
             if TreeView1.Items[i].SelectedIndex=9 then SeleccionBorrado:=false;
             if SeleccionBorrado then
             begin
               EditSiNo:=false;CandadoSiNo;
               CandadoPulzado;
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
               BarraDeEstado;
             end;
             if Seleccion then if IDDD=StrToInt(IdA) then
             begin
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               form2.ComboBox5.Clear;
               form2.ComboBox6.Clear;form2.ComboBox3.Clear;form2.ComboBox4.Clear;
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
               BarraDeEstado;
             end;
           end;
         end else
         if Selected.Level=0 then  //UNION\\
         begin
           IDDD:=PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id;
           try
             ADOTUnion.Close;
             ADOTUnion.CommandText:='Delete TUnion.* from TUnion Where Unión="'+
              Selected.Text+'"'+' and IdUnion='+
              IntToStr(PRecordId(Items[TreeView1.Selected.AbsoluteIndex].Data)^.Id);
             ADOTUnion.Open;
           except;
           end;
           Selected.Delete;
           SeleccionBorrado:=true;
           if TreeView1.Items.Count>0 then
           begin
             for i:=0 to TreeView1.Items.Count-1 do
             if TreeView1.Items[i].SelectedIndex=9 then SeleccionBorrado:=false;
             if SeleccionBorrado then
             begin
               EditSiNo:=false;CandadoSiNo;
               CandadoPulzado;
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
             end;
             if Seleccion then if IDDD=StrToInt(IdU) then
             begin
               LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
               LDistrito.Caption:='';LIglesia.Caption:='';
               form2.ComboBox7.Clear;form2.ComboBox5.Clear;
               form2.ComboBox6.Clear;form2.ComboBox3.Clear;form2.ComboBox4.Clear;
               try
                 DBGrid1.DataSource.DataSet.Close;
               except;
               end;
             end;
           end;
         end;
       end;
       //CampoVisible;
    end;
  end;
  //VerExpandirSiNo;
end;
 
     /////////   Para deseleccionar los nodos   /////////
  //With TreeView1 Do { Si hay un nodo seleccionado }
    //////////////If Selected <> Nil Then not Selected;
  //TreeView1.HideSelection:=true;//oculta la seleccion
  ///////////////////////TreeView1.Selections[1].Focused:=false;

procedure TForm1.TreeView1Edited(Sender: TObject; Node: TTreeNode;var S: String);
var
  u,a,p,d: Integer;
  Cadena: String;
begin
  Cadena:=S;
  while Pos(' ', Cadena) > 0 do Delete(Cadena,Pos(' ',Cadena),1);
  if Cadena='' then
  begin
    if Node.Level=0 then S:='NuevaUnión';
    if Node.Level=1 then S:='NuevaAsociación';
    if Node.Level=2 then S:='NuevaProvincia';
    if Node.Level=3 then S:='NuevoDistrito';
    if Node.Level=4 then S:='NuevaIglesia';
  end;
  begin
    try
    if TreeView1.Selected.Level=0 then
    begin
      ADOTUnion.Close;
      ADOTUnion.CommandText:='Select TUnion.* from TUnion';
      ADOTUnion.Open;
      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Selected.Text,
                      IntToStr(PRecordId(TreeView1.Selected.Data)^.Id)]),[]) then
      begin
        ADOTUnion.Edit;
        ADOTUnion.FieldByName('Unión').AsString:=S;
        ADOTUnion.Post;
      end;
      if PRecordId(Node.Data)^.Id<>StrToInt(IdU) then
      begin
        Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
        LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';LDistrito.Caption:='';LIglesia.Caption:='';
        EditSiNo:=False;
        CandadoSiNo;
        CandadoPulzado;
      end else
      begin
        LUnion.Caption:=S;
        Union:=S;
      end;
    end;
    if TreeView1.Selected.Level=1 then
    begin
      ADOTUnion.Close;ADOTAsociacion.Close;
      ADOTUnion.CommandText:='Select TUnion.* from TUnion';
      ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion';
      ADOTUnion.Open;
      ADOTAsociacion.Open;
      u:= TreeView1.Selected.AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do Dec(u);

      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                      IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Selected.Text,
                      IntToStr(PRecordId(TreeView1.Selected.Data)^.Id)]),[]) then
      begin
        ADOTAsociacion.Edit;
        ADOTAsociacion.FieldByName('Asociación').AsString:=S;
        ADOTAsociacion.Post;
      end;
      if PRecordId(Node.Data)^.Id<>StrToInt(IdA) then
      begin
        Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
        LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';LDistrito.Caption:='';LIglesia.Caption:='';
        EditSiNo:=False;
        CandadoSiNo;
        CandadoPulzado;
      end else
      begin
        LAsociacion.Caption:=S;
        Asociacion:=S;
      end;
    end;
    if TreeView1.Selected.Level=2 then
    begin
      ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;
      ADOTUnion.CommandText:='Select TUnion.* from TUnion';
      ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion';
      ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia';
      ADOTUnion.Open;
      ADOTAsociacion.Open;
      ADOTProvincia.Open;
      a:= TreeView1.Selected.AbsoluteIndex;
      While TreeView1.Items[a].Level <> 1 Do Dec(a);

      u:= TreeView1.Items[a].AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do Dec(u);

      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                      IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Items[a].Text,
                      IntToStr(PRecordId(TreeView1.Items[a].Data)^.Id)]),[]) then
      if ADOTProvincia.Locate('Provincia;IdProvincia',VarArrayOf([TreeView1.Selected.Text,
                    IntToStr(PRecordId(TreeView1.Selected.Data)^.Id)]),[]) then
      begin
        ADOTProvincia.Edit;
        ADOTProvincia.FieldByName('Provincia').AsString:=S;
        ADOTProvincia.Post;
      end;
      if PRecordId(Node.Data)^.Id<>StrToInt(IdP) then
      begin
        Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
        LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';LDistrito.Caption:='';LIglesia.Caption:='';
        EditSiNo:=False;
        CandadoSiNo;
        CandadoPulzado;
      end else
      begin
        LProvincia.Caption:=S;
        Provincia:=S;
      end;
    end;
    if TreeView1.Selected.Level=3 then
    begin
      ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;ADOTDistrito.Close;
      ADOTUnion.CommandText:='Select TUnion.* from TUnion';
      ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion';
      ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia';
      ADOTDistrito.CommandText:='Select TDistrito.* from TDistrito';
      ADOTUnion.Open;
      ADOTAsociacion.Open;
      ADOTProvincia.Open;
      ADOTDistrito.Open;
      p:= TreeView1.Selected.AbsoluteIndex;
      While TreeView1.Items[p].Level <> 2 Do Dec(p);

      a:= TreeView1.Items[p].AbsoluteIndex;
      While TreeView1.Items[a].Level <> 1 Do Dec(a);

      u:= TreeView1.Items[a].AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do Dec(u);

      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                      IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Items[a].Text,
                      IntToStr(PRecordId(TreeView1.Items[a].Data)^.Id)]),[]) then
       if ADOTProvincia.Locate('Provincia;IdProvincia',VarArrayOf([TreeView1.Items[p].Text,
                      IntToStr(PRecordId(TreeView1.Items[p].Data)^.Id)]),[]) then
      if ADOTDistrito.Locate('Distrito;IdDistrito',VarArrayOf([TreeView1.Selected.Text,
                  IntToStr(PRecordId(TreeView1.Selected.Data)^.Id)]),[]) then
      begin
        ADOTDistrito.Edit;
        ADOTDistrito.FieldByName('Distrito').AsString:=S;
        ADOTDistrito.Post;
      end;
      if PRecordId(Node.Data)^.Id<>StrToInt(IdD) then
      begin
        Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
        LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';LDistrito.Caption:='';LIglesia.Caption:='';
        EditSiNo:=False;
        CandadoSiNo;
        CandadoPulzado;
      end else
      begin
        LDistrito.Caption:=S;
        Distrito:=S;
      end;
    end;
    if TreeView1.Selected.Level=4 then
    begin
      ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;ADOTDistrito.Close;ADOTIglesia.Close;
      ADOTUnion.CommandText:='Select TUnion.* from TUnion';
      ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion';
      ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia';
      ADOTDistrito.CommandText:='Select TDistrito.* from TDistrito';
      ADOTIglesia.CommandText:='Select TIglesia.* from TIglesia';
      ADOTUnion.Open;
      ADOTAsociacion.Open;
      ADOTProvincia.Open;
      ADOTDistrito.Open;
      ADOTIglesia.Open;
      d:= TreeView1.Selected.AbsoluteIndex;
      While TreeView1.Items[d].Level <> 3 Do Dec(d);

      p:= TreeView1.Items[d].AbsoluteIndex;
      While TreeView1.Items[p].Level <> 2 Do Dec(p);

      a:= TreeView1.Items[p].AbsoluteIndex;
      While TreeView1.Items[a].Level <> 1 Do Dec(a);

      u:= TreeView1.Items[a].AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do Dec(u);

      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                      IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Items[a].Text,
                      IntToStr(PRecordId(TreeView1.Items[a].Data)^.Id)]),[]) then
      if ADOTProvincia.Locate('Provincia;IdProvincia',VarArrayOf([TreeView1.Items[p].Text,
                      IntToStr(PRecordId(TreeView1.Items[p].Data)^.Id)]),[]) then
      if ADOTDistrito.Locate('Distrito;IdDistrito',VarArrayOf([TreeView1.Items[d].Text,
                      IntToStr(PRecordId(TreeView1.Items[d].Data)^.Id)]),[]) then
      if ADOTIglesia.Locate('Iglesia;IdIglesia',VarArrayOf([TreeView1.Selected.Text,
                  IntToStr(PRecordId(TreeView1.Selected.Data)^.Id)]),[]) then
      begin
        ADOTIglesia.Edit;
        ADOTIglesia.FieldByName('Iglesia').AsString:=S;
        ADOTIglesia.Post;
      end;
      if PRecordId(Node.Data)^.Id<>StrToInt(IdI) then
      begin
        //Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
        //LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';LDistrito.Caption:='';LIglesia.Caption:='';
        if ButtonCandado.Enabled then
        begin
          CandadoSiNo;
          CandadoPulzado;
          Iglesia:=S;
          localizandoEditado;
        end;
      end else
      begin
        if ButtonCandado.Enabled then
        begin
          LIglesia.Caption:=S;
          Iglesia:=S;
        end
      end;
    end;
    except;
    end;
  end;
  BarraDeEstado;
end;

procedure TForm1.ButtonMasClick(Sender: TObject);
begin
  ButtonMas.Update;
  if TreeView1.IsEditing then
  TreeView1.Selected.EndEdit(true);{Cancelo la edicion del nodo}
  VerExpandirSiNo;
  //TreeView1.Selected.Focused;
  TreeView1.SetFocus;
end;
Procedure TForm1.VerExpandirSiNo;
begin
  If TreeView1.Items.Count>1 then //i:=0 else//ActualizaNodos else
  begin
    If not ButtonMas.Down then
    begin
      ButtonMas.ImageIndex:=21;
      ButtonMas.Down:=false;
      ButtonMas.Update;
      TreeView1.FullCollapse;
      Expandido:=false;
      TreeView1.TopItem:=TreeView1.Items.GetFirstNode;{posicionar el TreeView en el primero}
      //TreeView1.TopItem:=TreeView1.Items.Item[12];{en el 12}
    end else
    begin
      ButtonMas.ImageIndex:=22;
      ButtonMas.Down:=true;
      ButtonMas.Update;
      TreeView1.FullExpand;
      Expandido:=true;
      TreeView1.TopItem:=TreeView1.Items.GetFirstNode;{posicionar el TreeView en el primero}
      //TreeView1.TopItem:=TreeView1.Items.Item[12];{en el 12}
    end;
  end;
end;

Procedure TForm1.ActualizaNodos;
var
  i: Integer;
begin
  If TreeView1.Items.Count>1 then
  begin
    for i:=0 to TreeView1.Items.Count-1 do
    If TreeView1.Items[i].HasChildren then
    begin
      ButtonMas.Enabled:=true;
      exit;
    end else
    begin
      ButtonMas.ImageIndex:=21;
      ButtonMas.Enabled:=false;
    end;
  end else
  begin
    ButtonMas.Down:=false;
    ButtonMas.ImageIndex:=21;
    ButtonMas.Enabled:=false;
  end;
end;

procedure TForm1.TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
var                             //el signo +/-
  c, hijos, expandid:Integer;
begin
  hijos:=0; expandid:=0;
  for c:=0 to TreeView1.Items.Count-1 do
  begin
    if (TreeView1.Items[c].HasChildren) then
    begin
      hijos:=hijos+1;
      if not (TreeView1.Items[c].Expanded) then
      begin expandid:=expandid+1;end;
    end;
  end;
  if hijos=expandid then
  begin
    ButtonMas.Enabled:=true;
    ButtonMas.ImageIndex:=21;
    ButtonMas.Down:=false;
  end;
  ButtonMas.Update;
end;

procedure TForm1.TreeView1Expanded(Sender: TObject; Node: TTreeNode);
var                             //el signo +/-
  c, hijos, expandid:Integer;
begin
  hijos:=0; expandid:=0;
  for c:=0 to TreeView1.Items.Count-1 do
  begin
    if (TreeView1.Items[c].HasChildren) then
    begin
      hijos:=hijos+1;
    end;
    if (TreeView1.Items[c].Expanded) then
      begin expandid:=expandid+1;end;
  end;
  if hijos=expandid then
  begin
    ButtonMas.Enabled:=true;
    ButtonMas.ImageIndex:=22;
    ButtonMas.Down:=true;
  end;
  ButtonMas.Update;
end;

procedure TForm1.DBGrid1EditButtonClick(Sender: TObject);
begin
  if PuedeEditar then FormFechaNBD.ShowModal;
end;

procedure TForm1.ADOTMiembrosBeforePost(DataSet: TDataSet);
var i: Integer;
begin
  //if not corre then
  begin
    for i:=0 to DBGrid1.Columns.Count-7 do
    begin
      {if DBGrid1.columns[i].title.Caption='Desfraternizado' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else
      if DBGrid1.columns[i].title.Caption='Traslado' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else
      if DBGrid1.columns[i].title.Caption='Fallecido' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else
      if DBGrid1.columns[i].title.Caption='Ext Hogar' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else
      if DBGrid1.columns[i].title.Caption='Rebautismo' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else
      if DBGrid1.columns[i].title.Caption='Nació en Hogar ASD' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else
      if DBGrid1.columns[i].title.Caption='Cónyuge Adventista' then
      begin
        if UpperCase(DBGrid1.columns[i].Field.Text)<>'SI' then
          DBGrid1.columns[i].Field.Text:='No';
      end else}
      if DBGrid1.columns[i].title.Caption='Sexo' then
      begin
        if (DBGrid1.columns[i].Field.Text<>'F') and (DBGrid1.columns[i].Field.Text<>'f') and
        (DBGrid1.columns[i].Field.Text<>'M') and (DBGrid1.columns[i].Field.Text<>'m') then
          DBGrid1.columns[i].Field.Text:='' else
          DBGrid1.columns[i].Field.Text:=UpperCase(DBGrid1.columns[i].Field.Text);
      end;
    end;
  end;
end;

procedure TForm1.ADOTMiembrosEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('Error de edición');
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
//var PosCursor:Pointer;
begin
	{PosCursor:=ADOTMiembros.GetBookmark;
  Ordenar:='['+Column.FieldName+']';
  OrdenarSiNo:=True;
  ADOTMiembros.Sort:=Ordenar;
  //ADOTMiembros.IndexFieldNames:=Ordenar;
  //ADOTMiembros.Post;
  //CamposMostrados;
  ADOTMiembros.GotoBookMark(PosCursor);
	ADOTMiembros.FreeBookmark(PosCursor);
	BarraDeEstado;  }
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  {if Column.Field.Dataset.FieldbyName('Fallecido').AsBoolean <> True then
  begin
    Column.Field.Dataset.Refresh;
  end; }
       //if (gdFocused in State)

  with column.Title do
  begin
    If (Caption='Unión') or (Caption='Asociación') or (Caption='Provincia')
    or (Caption='Distrito')or (Caption='Iglesia') then
    begin
      Column.ReadOnly:=true;
      Column.Title.Color:=$00B09FA4;
      Column.Title.Font.Color:=$00181818;
      column.Color:=$00ECE8E9;
    end;

    If (Caption='IdMiembro') or (Caption='IdIglesia') or (Caption='Foto')
    or (Caption='Otra Información') or (Caption='Idiomas') or (Caption='Enfermedades') then
    begin
     Column.Visible:=false;
    end;
  end;
  //DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TForm1.DBGrid1ColumnMoved(Sender:TObject;FromIndex,ToIndex:Integer);
var 
  a:integer;
begin
  formConfigurarDB.ListBox2.Clear;
  if Not Normal and Not Activa then
  begin
    For a:=0 to  DBGrid1.Columns.count-1 do
    begin
      if (DBGrid1.Columns[a].Visible) then
      begin
        If (DBGrid1.Columns[a].FieldName='Unión') and (formConfigurarDB.CheckBox9.Checked=true) then
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName) else
        If (DBGrid1.Columns[a].FieldName='Asociación') and (formConfigurarDB.CheckBox7.Checked=true) then
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName) else
        If (DBGrid1.Columns[a].FieldName='Provincia') and (formConfigurarDB.CheckBox8.Checked=true) then
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName) else
        If (DBGrid1.Columns[a].FieldName='Distrito') and (formConfigurarDB.CheckBox5.Checked=true) then
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName) else
        If (DBGrid1.Columns[a].FieldName='Iglesia') and (formConfigurarDB.CheckBox6.Checked=true) then
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName) else
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName);
      end;
    end;
  end else
  if Normal or Activa then
  begin
    For a:=0 to DBGrid1.Columns.count-1 do
    begin
      if (DBGrid1.Columns[a].Visible) then
      begin
        formConfigurarDB.ListBox2.Items.Add(DBGrid1.Columns[a].FieldName);
      end;
    end;
    if formConfigurarDB.CheckBox9.Checked=true then
      formConfigurarDB.ListBox2.Items.Add('Unión');
    if formConfigurarDB.CheckBox7.Checked=true then
      formConfigurarDB.ListBox2.Items.Add('Asociación');
    if formConfigurarDB.CheckBox8.Checked=true then
      formConfigurarDB.ListBox2.Items.Add('Provincia');
    if formConfigurarDB.CheckBox5.Checked=true then
      formConfigurarDB.ListBox2.Items.Add('Distrito');
    if formConfigurarDB.CheckBox6.Checked=true then
      formConfigurarDB.ListBox2.Items.Add('Iglesia');
  end;
  FormConfigurarDB.GuardaCamposMostrados;
end;

{Actualizar la Barra de Estado}
Procedure TForm1.BarraDeEstado;
var
  Reg, RegTotal, CVisitas: String;
begin
  Reg:='0';RegTotal:='0';CVisitas:='Visitado: 0';
  If formConfigurarDB.ListBox2.Count>0 then
  if DBGrid1.DataSource<>nil then/////////////////////////////////////
  if DBGrid1.DataSource.DataSet.Active then
  begin
    if DBGrid1.DataSource.DataSet.RecNo<>-1 then
    Reg:=FormatFloat('###,0',DBGrid1.DataSource.DataSet.RecNo);
    RegTotal:=FormatFloat('###,0',DBGrid1.DataSource.DataSet.RecordCount);
    if DBGrid1.DataSource.DataSet.RecordCount>0 then
    begin
      if DBGrid2.DataSource.DataSet.Active then
      CVisitas:='Visitado: '+FormatFloat('###,0',DBGrid2.DataSource.DataSet.RecordCount);
    end;
  end;
  BarraEstado.Panels[0].Text :='Registro '+Reg;
  BarraEstado.Panels[1].Text :=RegTotal+' Miembro (s)';
  BarraEstado.Panels[2].Text:=CVisitas;
  if Iglesia<>'' then
  BarraEstado.Panels[4].Text:=' '+Iglesia+', '+Distrito+', '+Provincia+'.'
  else BarraEstado.Panels[4].Text:='';
end;

{para poner en la Barra los Campos seleccionados}
procedure TForm1.Seleccionados(Sender:TObject);
begin
  if Sender is TjvDBUltimGrid then
  with Sender as TjvDBUltimGrid do
  begin
    BarraEstado.Panels[3].Text:='Seleccionados: '+FormatFloat('###,0',SelectedRows.count);
    //BarraEstado.Update;
  end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  //ShowMessage(Column.Field.Text);
  BarraDeEstado;
end;

procedure TForm1.ADOTMiembrosAfterPost(DataSet: TDataSet);
begin
  if corre then
  begin
    formEspera.ProgressExp.StepIt;
    formEspera.ProgressExp.Update;
    Application.ProcessMessages;
  end else
  begin
    DataSet.Refresh;
    NoMiembros;
    BarraDeEstado;
  end;
end;

procedure TForm1.ADOTMiembrosDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  //ShowMessage('Errorrrrrrooooorrrr');
  //ADOTMiembros.Cancel;
  Action:=daRetry	;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  If  PageControl1.ActivePageIndex=0 then
  Begin
    TabSheet1.Highlighted:=True;
    TabSheet2.Highlighted:=False;
    TabSheet3.Highlighted:=False;
    TabSheet4.Highlighted:=False;
    TabSheet1.Update;
    Seleccionados(DBGrid1);
  end else
  if PageControl1.ActivePageIndex=1 then
  begin
    TabSheet2.Highlighted:=True;
    TabSheet1.Highlighted:=False;
    TabSheet3.Highlighted:=False;
    TabSheet4.Highlighted:=False;
    if DBGridPastorDistrito.SelectedRows.Count>0 then
    begin
      Seleccionados(DBGridPastorDistrito);
      DBGridPastorDistrito.SetFocus;
    end else
    if DBGridPastorIglesia.SelectedRows.Count>0 then
    begin
      Seleccionados(DBGridPastorIglesia);
      DBGridPastorIglesia.SetFocus;
    end else
    if DBGridObreras.SelectedRows.Count>0 then
    begin
      Seleccionados(DBGridObreras);
      DBGridObreras.SetFocus;
    end else
      DBGridPastorDistrito.SetFocus;
  end;
  if PageControl1.ActivePageIndex=2 then
  begin
    TabSheet3.Highlighted:=True;
    TabSheet1.Highlighted:=False;
    TabSheet2.Highlighted:=False;
    TabSheet4.Highlighted:=False;
    DBGridNombramientosIgl.SetFocus;
    Seleccionados(DBGridNombramientosIgl);
  end;
  if PageControl1.ActivePageIndex=3 then
  begin
    TabSheet4.Highlighted:=True;
    TabSheet1.Highlighted:=False;
    TabSheet2.Highlighted:=False;
    TabSheet3.Highlighted:=False;
    Seleccionados(DBGridExt);
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if BoolPrueba then
  begin
    TreeView1.ReadOnly:=true;
    NuevaU.Enabled:=false;
    NuevaA.Enabled:=false;
    NuevaP.Enabled:=false;
    NuevoD.Enabled:=false;
    NuevaI.Enabled:=false;
    BorraNodo.Enabled:=false;
    BorraTodos.Enabled:=false;
  end;
  //Form3:=TForm3.Create(Application);
  //Application.CreateForm(TForm3, Form3);
  //form3.ShowModal;
  //form3.Release;
  {if ADOConnection1.Connected=false then
  try
    ADOConnection1.Connected;
  except;
    Application.MessageBox(' Imposible cargar Base de Datos. '+#13+
                            'Posible incompatibilidad...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end; }
    {try
      ADOIdiomas.Open;
      ADOEnfermedades.Open;
    except;
    end; }

end;

//pone todos los nodos en el TreeView\\
procedure TForm1.ponNodos;
Var
  N,uni,aso,pro,dis,igl: Integer;
  NodoUni,NodoAso,NodoPro,NodoDis,NodoIgl: TTreeNode;
  Identificador: PRecordId;
begin
  //try
    ADOConnection1.Open;
    //ShowMessage('Conectado...');
    ButtonMas.Down:=false; ButtonMas.ImageIndex:=21;
  {except
    ADOConnection1.Close;
    ButtonMas.Down:=false; ButtonMas.Enabled:=false;ButtonMas.ImageIndex:=21;
    if FileExists(TablaFuente) then
    begin
    Application.MessageBox(' Imposible cargar Base de Datos. '+#13+
                            ' Posible incompatibilidad...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    end;
    exit;
  end;}
  if BoolPrueba then
  begin
    //Con TOP por ser limitada la version
                          //'Select TOP 1 * from TUnion Order by Unión'
    ADOTUnion.CommandText:=Decript('Vfmab|&UIS(7 . nsol&PPnjgi''Nvbau&e|#]mmói',987654321);
                              //'Select TOP 3 * from TAsociacion Order by Asociación'
    ADOTAsociacion.CommandText:=Decript('Vfmab|&UIS(5 . nsol&PDslknfbmij''Iuafz#fy''F{mfigdkõo',987654321);
                             //'Select TOP 2 * from TProvincia Order by Provincia '
    ADOTProvincia.CommandText:=Decript('Vfmab|&UIS(4 . nsol&PUrl~nibmg$Htc`q(a} Wugtlnenc',987654321);
                            //'Select TOP 2 * from TDistrito Order by Distrito'
    ADOTDistrito.CommandText:=Decript('Vfmab|&UIS(4 . nsol&PAip|unuk&Kubbw#jz$Dnt|plti',987654321);
                           //'Select TOP 3 * from TIglesia Order by Iglesia'
    ADOTIglesia.CommandText:=Decript('Vfmab|&UIS(5 . nsol&PLgomtn`$Ivccu%aq#Mgkb{kd',987654321);
  end else
  begin
    ADOTUnion.CommandText:='Select * from TUnion Order by Unión';
    ADOTAsociacion.CommandText:='Select * from TAsociacion Order by Asociación';
    ADOTProvincia.CommandText:='Select * from TProvincia Order by Provincia';
    ADOTDistrito.CommandText:='Select * from TDistrito Order by Distrito';
    ADOTIglesia.CommandText:='Select * from TIglesia Order by Iglesia';
  end;
  try
    ADOTUnion.Active:=true;
    ADOTAsociacion.Active:=true;
    ADOTProvincia.Active:=true;
    ADOTDistrito.Active:=true;
    ADOTIglesia.Active:=true;
    ADOIdiomas.Open;
    ADOEnfermedades.Open;
    FormEnfermedades.PonEnfermedades;
    FormIdiomas.PonIdiomas;
  except;
  end;
  With TreeView1 Do
  Begin
    try
    ADOTUnion.First;
    for uni:=0 to ADOTUnion.RecordCount-1 do
    begin
      NodoUni := TreeView1.Items.Add(Nil, ADOTUnion.fieldByName('Unión').AsString);
      New(Identificador);
      Identificador^.Id :=ADOTUnion.fieldByName('IdUnion').AsInteger;
      NodoUni.Data:=Identificador;
      for aso:=0 to ADOTAsociacion.RecordCount-1 do
      begin
        NodoAso := TreeView1.Items.AddChild(NodoUni, ADOTAsociacion.fieldByName('Asociación').AsString);
        New(Identificador);
        Identificador^.Id :=ADOTAsociacion.fieldByName('IdAsociacion').AsInteger;
        NodoAso.Data:=Identificador;
        for pro:=0 to ADOTProvincia.RecordCount-1 do
        begin
          NodoPro := TreeView1.Items.AddChild(NodoAso, ADOTProvincia.fieldByName('Provincia').AsString);
          New(Identificador);
          Identificador^.Id :=ADOTProvincia.fieldByName('IdProvincia').AsInteger;
          NodoPro.Data:=Identificador;
          for dis:=0 to ADOTDistrito.RecordCount-1 do
          begin
            NodoDis := TreeView1.Items.AddChild(NodoPro, ADOTDistrito.fieldByName('Distrito').AsString);
            New(Identificador);
            Identificador^.Id :=ADOTDistrito.fieldByName('IdDistrito').AsInteger;
            NodoDis.Data:=Identificador;
            for igl:=0 to ADOTIglesia.RecordCount-1 do
            begin
              NodoIgl := TreeView1.Items.AddChild(NodoDis, ADOTIglesia.fieldByName('Iglesia').AsString);
              New(Identificador);
              Identificador^.Id :=ADOTIglesia.fieldByName('IdIglesia').AsInteger;
              NodoIgl.Data:=Identificador;
              ADOTIglesia.Next;
            end;
            ADOTDistrito.Next;
          end;
          ADOTProvincia.Next;
        end;
        ADOTAsociacion.Next;
      end;
      ADOTUnion.Next;
    end;
    except;
    end;
    { y restablecemos las imágenes según el nivel }
    for N := 0 To Items.Count - 1 Do
    begin
      Items[N].ImageIndex := Items[N].Level * 2;
      Items[N].SelectedIndex := Items[N].Level * 2;
    end;
    ActualizaNodos;
   end;
   //TreeView1.SortType:=stText;
   //TreeView1.Update;
  //ShowMessage('Vamos a cerrar.');
  //ADOConnection1.Close;
end;

procedure TForm1.Acercade1Click(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TForm1.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  Seleccionados(Sender);
  with DBGrid2.Columns[DBGrid2.SelectedIndex] do
  begin
    If Key<>#8 then If (FieldName='Visitado') then Key:=#0;
  end;
end;

procedure TForm1.DBGrid2KeyDown(Sender:TObject;var Key:Word;Shift:TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.ADOTUnionAfterDelete(DataSet: TDataSet);
begin
  BarraDeEstado;
end;

procedure TForm1.ADOTUnionAfterPost(DataSet: TDataSet);
begin
  // De otra manera da un error por DataSet1 cerrada
  {If ADOTMiembros.Active=false then ADOTMiembros.Active:=true;
  ADOTVisitas.Close;
  ADOTVisitas.Open; }
  //BarraDeEstado;
end;

procedure TForm1.ADOTMiembrosAfterScroll(DataSet: TDataSet);
begin
  // si se pone BarraDeEstado solo ocurre un error de ADOTVisitas cerrado
  //If ADOTVisitas.Active=false then ADOTVisitas.Active:=true;
  if not corre then BarraDeEstado; {Conservarlo}
end;

procedure TForm1.DBGrid1ColEnter(Sender: TObject);
var
  titulo: string;
begin
  titulo:=DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Caption;
  if (titulo<>'Unión') and (titulo<>'Asociación') and (titulo<>'Provincia') and (titulo<>'Distrito')
    and (titulo<>'Iglesia') then
  begin
    DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Color:=clwhite;
    DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Color:=clblack;
    DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Font.Color:=clWhite;
    StarIsThere:=true;
    //EditBuscar2.DataField:=titulo;
    labelGrid1.Caption:=' '+titulo+' ';
    //if labelGrid1.Width>label1.Width then panel66.Width:=labelGrid1.Width else
    //panel66.Width:=label1.Width;//panel67.Width:=135;
    //CentrarEnDestino(Label1,Panel66);
    //CentrarEnDestino(labelGrid1,Panel66);
    EditBuscar2.Update;labelGrid1.Update;label1.Update;
    panel52.Update;panel66.Update;panel67.Update;
  end else StarIsThere:=false;
end;

procedure TForm1.DBGrid1ColExit(Sender: TObject);
begin
  if StarIsThere then
  begin
    DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Color:=clCream;
    DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Color:=clMoneyGreen;
    DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Font.Color:=clInfoText;
  end;
end;

procedure TForm1.DBGridPastorIglesiaEditButtonClick(Sender: TObject);
begin
 If PuedeEditar then
  begin
  if DBGridPastorIglesia.Columns.Items[DBGridPastorIglesia.SelectedIndex].Title.Caption='Entrada' then
  Form7.ShowModal;
  if DBGridPastorIglesia.Columns.Items[DBGridPastorIglesia.SelectedIndex].Title.Caption='Salida' then
  Form8.ShowModal;
  end;
end;

procedure TForm1.DBGridPastorIglesiaTitleClick(Column: TColumn);
begin
  {PosCursor:=ADOTPastorIglesia.GetBookmark;
  Ordenar:=Column.Title.Caption;
  ADOTPastorIglesia.Sort:='['+Ordenar+']';
  ADOTPastorIglesia.GotoBookMark(PosCursor);
  ADOTPastorIglesia.FreeBookmark(PosCursor);}
end;

procedure TForm1.DBGridNombramientosIglTitleClick(Column: TColumn);
begin
  {PosCursor:=ADOTNombramientosIgl.GetBookmark;
  Ordenar:=Column.Title.Caption;
  ADOTNombramientosIgl.Sort:='['+Ordenar+']';
  ADOTNombramientosIgl.GotoBookMark(PosCursor);
  ADOTNombramientosIgl.FreeBookmark(PosCursor); }
end;


procedure TForm1.DBGridPastorDistritoEditButtonClick(Sender: TObject);
begin
  If PuedeEditar then
  begin
    if DBGridPastorDistrito.Columns.Items[DBGridPastorDistrito.SelectedIndex].Title.Caption='Entrada' then
    Form9.ShowModal;
    if DBGridPastorDistrito.Columns.Items[DBGridPastorDistrito.SelectedIndex].Title.Caption='Salida' then
    Form10.ShowModal;
  end;
end;

procedure TForm1.DBGridObrerasEditButtonClick(Sender: TObject);
begin
  If PuedeEditar then
  begin
  if DBGridObreras.Columns.Items[DBGridObreras.SelectedIndex].Title.Caption='Entrada' then
  begin
    Form11.ShowModal;
  end;
  if DBGridObreras.Columns.Items[DBGridObreras.SelectedIndex].Title.Caption='Salida' then
  Form12.ShowModal;
  end;
end;

procedure TForm1.DBGridPastorDistritoTitleClick(Column: TColumn);
begin
  {PosCursor:=ADOTPastorDistrito.GetBookmark;
  Ordenar:=Column.Title.Caption;
  ADOTPastorDistrito.Sort:='['+Ordenar+']';
  ADOTPastorDistrito.GotoBookMark(PosCursor);
  ADOTPastorDistrito.FreeBookmark(PosCursor); }
end;

procedure TForm1.DBGridObrerasTitleClick(Column: TColumn);
begin
  {PosCursor:=ADOTObreras.GetBookmark;
  Ordenar:=Column.Title.Caption;
  ADOTObreras.Sort:='['+Ordenar+']';
  ADOTObreras.GotoBookMark(PosCursor);
  ADOTObreras.FreeBookmark(PosCursor); }
end;

procedure TForm1.candadoSiNo;
begin
  ButtonCandado.Enabled:=((formConfigurarDB.ListBox2.Count>0) and (EditSiNo=true));
end;

{Determina si se puede Editar o no}
Procedure TForm1.CandadoPulzado;
var i: Integer;
begin
  if (ButtonCandado.Enabled) then
  begin
    If ButtonCandado.Down=false then
    begin
      PuedeEditar:=false;
                   //Quito el modo Editing
      DBGrid1.Options:=DBGrid1.Options-[dgEditing];
      BIdioma.Enabled:=false;
      BEnfermedad.Enabled:=false;
      DBImage1.Enabled:=false;
      DBMemo1.ReadOnly:=true;//////////----------------------------//////
      //DBMemo2.ReadOnly:=true;
      //ADOTMiembros.Active:=True;
      DBNavigVisitas.VisibleButtons:=DBNavigVisitas.VisibleButtons-
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBGrid2.Options:=DBGrid2.Options-[dgEditing];

      DBNavigator1.VisibleButtons:=DBNavigator1.VisibleButtons-
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBNavigator1.Align:=alLeft;DBNavigator1.Width:=278;

      DBGridNombramientosIgl.Options:=DBGridNombramientosIgl.Options-[dgEditing];///
      DBNavigNombramientosIgl.VisibleButtons:=DBNavigNombramientosIgl.VisibleButtons-
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBNavigNombramientosIgl.Align:=alLeft;DBNavigNombramientosIgl.Width:=278;

      DBGridPastorIglesia.Options:=DBGridPastorIglesia.Options-[dgEditing];
      DBGridPastorDistrito.Options:=DBGridPastorDistrito.Options-[dgEditing];
      DBGridObreras.Options:=DBGridObreras.Options-[dgEditing];
      DBNavigatorObreros.VisibleButtons:=DBNavigatorObreros.VisibleButtons-
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBNavigatorObreros.Align:=alLeft;DBNavigatorObreros.Width:=278;

      DBGridAnnos.Options:=DBGridAnnos.Options-[dgEditing];
      DBNavigAnnos.Enabled:=false;
    end else
    If ButtonCandado.Down=true then
    begin
      PuedeEditar:=true;
                   //adiciono el modo Editing
      DBGrid1.Options:=DBGrid1.Options+[dgEditing];
      BIdioma.Enabled:=true;
      BEnfermedad.Enabled:=true;
      DBImage1.Enabled:=true;
      DBMemo1.ReadOnly:=false;//////////----------------------------//////
      //DBMemo2.ReadOnly:=false;
      //ADOTMiembros.Active:=True;
      DBNavigVisitas.VisibleButtons:=DBNavigVisitas.VisibleButtons+
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBGrid2.Options:=DBGrid2.Options+[dgEditing];

      DBNavigator1.VisibleButtons:=DBNavigator1.VisibleButtons+
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBNavigator1.Align:=alClient;

      DBGridNombramientosIgl.Options:=DBGridNombramientosIgl.Options+[dgEditing];///
      DBNavigNombramientosIgl.VisibleButtons:=DBNavigNombramientosIgl.VisibleButtons+
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBNavigNombramientosIgl.Align:=alClient;

      DBGridPastorIglesia.Options:=DBGridPastorIglesia.Options+[dgEditing];
      DBGridPastorDistrito.Options:=DBGridPastorDistrito.Options+[dgEditing];
      DBGridObreras.Options:=DBGridObreras.Options+[dgEditing];
      DBNavigatorObreros.VisibleButtons:=DBNavigatorObreros.VisibleButtons+
                            [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
      DBNavigatorObreros.Align:=alClient;

      DBGridAnnos.Options:=DBGridAnnos.Options+[dgEditing];
      DBNavigAnnos.Enabled:=true;
    end;
  end else//No aparece nada
  if ButtonCandado.Enabled=false then
  begin
    PuedeEditar:=false;
                 //Quito el modo Editing
    DBGrid1.Options:=DBGrid1.Options-[dgEditing];
    BIdioma.Enabled:=false;
    BEnfermedad.Enabled:=false;
    DBImage1.Enabled:=false;
    DBMemo1.ReadOnly:=true;//////////----------------------------//////
    //DBMemo2.ReadOnly:=true;
    //ADOTMiembros.Active:=True;
    DBNavigVisitas.VisibleButtons:=DBNavigVisitas.VisibleButtons-
                          [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
    DBGrid2.Options:=DBGrid2.Options-[dgEditing];

    DBNavigator1.VisibleButtons:=DBNavigator1.VisibleButtons-
                          [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
    DBNavigator1.Align:=alLeft;DBNavigator1.Width:=278;

    DBGridNombramientosIgl.Options:=DBGridNombramientosIgl.Options-[dgEditing];///
    DBNavigNombramientosIgl.VisibleButtons:=DBNavigNombramientosIgl.VisibleButtons-
                          [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
    DBNavigNombramientosIgl.Align:=alLeft;DBNavigNombramientosIgl.Width:=278;

    DBGridPastorIglesia.Options:=DBGridPastorIglesia.Options-[dgEditing];
    DBGridPastorDistrito.Options:=DBGridPastorDistrito.Options-[dgEditing];
    DBGridObreras.Options:=DBGridObreras.Options-[dgEditing];
    DBNavigatorObreros.VisibleButtons:=DBNavigatorObreros.VisibleButtons-
                          [nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
    DBNavigatorObreros.Align:=alLeft;DBNavigatorObreros.Width:=278;

    DBGridAnnos.Options:=DBGridAnnos.Options-[dgEditing];
    DBNavigAnnos.Enabled:=false;
  end;
end;

procedure TForm1.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button=nbDelete) and (PuedeEditar) then
   if sender is TDBNavigator then
   with sender as TDBNavigator do
   begin
    if (Not (DataSource.State in [dsEdit, dsInsert])) and
                    (DataSource.DataSet.RecordCount>0) then ConfirmaBorrado(DBGrid1);
    Abort;
   end;
  DBGrid1.SetFocus;
end;

procedure TForm1.ADODataSet1AfterScroll(DataSet: TDataSet);
begin
  BarraDeEstado;
end;

procedure TForm1.SaveColPos(Const DbGrid:TJvDBUltimGrid);
var
  Registro :TRegistry;
  F        :Byte;
begin
  try
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\'+ExtractFileName(Application.Exename)+
                      '\Grids',TRUE);
    for F:=0 to DbGrid.Columns.Count-1 do
    begin
      if DBGrid.Columns[F].Visible then
      Registro.WriteInteger(DbGrid.Name+'['+DbGrid.Columns[F].Title.Caption+']',
                                                        DbGrid.Columns[F].Width);
    end;
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    //ShowMessage(Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
  end;
end;

procedure TForm1.LoadColPos(Var DbGrid:TJvDBUltimGrid);
var
  Registro :TRegistry;
  F        :Byte;
begin
  try
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\'+ExtractFileName(Application.Exename)+
                      '\Grids',FALSE);
    for F:=0 to DbGrid.Columns.Count-1 do
    begin
      if DBGrid.Columns[F].Visible then
      if Registro.ValueExists(DbGrid.Name+'['+DbGrid.Columns[F].Title.Caption+']') then
      DbGrid.Columns[F].Width:=Registro.ReadInteger(DbGrid.Name+'['+DbGrid.Columns[F].Title.Caption+']');
    end;
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
  end;
end;

procedure TForm1.DBGridAnnosEditButtonClick(Sender: TObject);
begin
  If PuedeEditar then
  form13.showModal;
end;

procedure TForm1.DBMemo2Enter(Sender: TObject);
begin
  if PuedeEditar then
  begin
    try
      DBMemo2.ReadOnly:=not (DBGridAnnos.DataSource.DataSet.RecordCount>0);
    except;
      DBMemo2.ReadOnly:=true;
    end;
  end else DBMemo2.ReadOnly:=true;
end;

procedure TForm1.DBMemo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DBMemo2Enter(Sender);
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));

  {If ssRight in Shift	 then
   begin
    if DBGrid1.SelectedField.Text<>'' then
    begin
      NewItem := TMenuItem.Create(PopupMenu2);
      PopupMenu2.Items.Clear;
      try
        with TStringGrid(DBGrid1) do  ////ARREGLARRRRRRRRRRRR
        begin
        //PopupMenu.Popup(X,Y);
        NewItem.Caption := DBGrid1.SelectedField.Text;
        PopupMenu2.Items.Insert(0, NewItem);
        //PopupMenu2.
        end;
      except
        NewItem.Free;
      raise; { reraise the exception }
     { end;
    end;// else PopupMenu2.Items.Clear;
   end; }
   
   If ssleft in Shift	then Seleccionados(Sender);
end;

//para que salga el popup standard si se puede editar
procedure TForm1.sacarPopup(queDBGrid: TJvDBUltimGrid);
begin
  try
    if (Not (queDBGrid.DataSource.State in [dsEdit, dsInsert])) and
                      (queDBGrid.DataSource.DataSet.RecordCount>0) then
    begin
      queDBGrid.PopupMenu:=PopupMenu3;
    end else queDBGrid.PopupMenu:=nil;
  except;
  end;
end;

//Configurar la ventana de buscar los campos para Importar o Exportar
procedure TForm1.ConfigurarExt;
begin
  if DirDBExt='' then
  begin
    ActualizarBoxes:=true;
    if AbrirBaseDatos.Execute then
      if AbrirBaseDatos.FileName='' then
      begin
        ActualizarBoxes:=true;//para poner los nuevos campos de Union, etc.
        exit;
      end else
      begin //Poniendo la coneccion para la tabla seleccionada
        //ActualizarBoxes:=true;
        DirDBExt:=AbrirBaseDatos.FileName;
        //DBGridExt.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,
                  //dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
        ADOConnection2.Close;//.Connected:=false;
        ADOConnection2.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
        DirDBExt+';Mode=Share Deny None;Extended Properties="";'+
        'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
        'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
        'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
        'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
        'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
        'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
        'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
        try
          ADOConnection2.Open;
        except;
          ActualizarBoxes:=true;//para poner los nuevos campos de Union, etc.
          Application.MessageBox(' Imposible cargar Base de Datos. '+#13+
                            ' Posible incompatibilidad...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
          exit;
        end;
        ADOImportUnion.CommandText:='Select * from TUnion Order By Unión';
        ADOImportUnion.Active:=true;
        ADOImportAsociacion.CommandText:='Select * from TAsociacion Order By Asociación';
        ADOImportAsociacion.Active:=true;
        ADOImportProvincia.CommandText:='Select * from TProvincia Order By Provincia';
        ADOImportProvincia.Active:=true;
        ADOImportDistrito.CommandText:='Select * from TDistrito Order By Distrito';
        ADOImportDistrito.Active:=true;
        ADOImportIglesia.CommandText:='Select * from TIglesia Order By Iglesia';
        ADOImportIglesia.Active:=true;
        //ADOImportMiembros.CommandText:='Select * from TMiembros';
        //ADOImportMiembros.Active:=true;
        DBNavigatorExt.Enabled:=true;
        FormBImportar.ShowModal;
      end;
    end else
    begin
      ActualizarBoxes:=false;
      FormBImportar.ShowModal;
    end;
end;

//para entrar el titulo de la impresion\\
procedure TForm1.Panel21Click(Sender: TObject);
begin
  GuardaEdit1:=Edit1.Text;
  {if Edit1.Visible then
  begin
    Edit1.Hide;
    Panel21.Caption:=Edit1.Text;
  end else
  begin }
    Edit1.Show;
    Edit1.SetFocus;
  //end;
end;

//Consulta para importar\\
procedure TForm1.dxButtonImpClick(Sender: TObject);
var
  {NumeroIgl: String;Para saber el IDIglesia que tengo abierto}
  marcaIE: Pointer;
begin
  {//TablaFuente:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo
                //'DataBase\BaseDatos-R.mdb';
  if (Activa or Normal) and (ADOImportMiembros.RecordCount>0) then
  begin
    //if ADOTMiembros.Active then
      //NumeroIgl:=ADOTIglesia.FieldByName('IdIglesia').AsString;
      NumeroIgl:=ADOTIglesia.FieldByName('IdIglesia').AsString;
  end else exit;
  progreso:=0;Importar:=true;
  if (NumeroIgl='') then exit else
  ////comienza el bloque para Importar\\\\
  begin
    CantAnterior:=ADOTMiembros.RecordCount;
    ADOImportExport.Close;
    ADOImportExport.CommandText:='INSERT INTO TMiembros ( Nombre, [Primer Apellido],'+
    '[Segundo Apellido], [Nivel Escolar],'+
    'Enfermedades, Oficio, Dones, Desfraternizado, [Nació en Hogar ASD], [Fecha Desfraternizado],'+
    '[Causa Desfraternizado], Condición, Localidad, [Religión Practicada], Teléfono,'+
    'Traslado, Fallecido, [Ext Hogar], Rebautismo, Edad, Sexo, Dirección, [Estado Civil],'+
    '[Ocupación Actual], [Pastor que Bautizó], [Obrero que Trabajó], [Fecha Bautismo],[Fecha Nacimiento],'+
    '[Centro Trabajo/Estudio],[Dirección Trabajo/Estudio], [No Identidad], [Cónyuge Adventista], Salario, Foto,'+
    '[Otra Información],[Idiomas], IdIglesia ) '+
    'IN "'+TablaFuente+'" '+
    'SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido],'+
    'TMiembros.[Nivel Escolar], TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.Dones,'+
    'TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD],'+
    'TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado],'+
    'TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],'+
    'TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar],'+
    'TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección,'+
    'TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó],'+
    'TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo],TMiembros.[Fecha Nacimiento],'+
    'TMiembros.[Centro Trabajo/Estudio],TMiembros.[Dirección Trabajo/Estudio], TMiembros.[No Identidad],'+
    'TMiembros.[Cónyuge Adventista], TMiembros.[Salario], TMiembros.[Foto],'+
    'TMiembros.[Otra Información],TMiembros.[Idiomas], '+
    NumeroIgl+ ' AS IdIglesia '+
    'FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON '+
    'TAsociacion.IdAsociacion = TProvincia.IdAsociacion) INNER JOIN '+
    '((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito) '+
    'INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON '+
    'TProvincia.IdProvincia = TDistrito.IdProvincia) ON TUnion.IdUnion = TAsociacion.IdUnion '+
    'IN "'+DirDBExt+'" '+
    'WHERE (((TUnion.IdUnion)='+IntToStr(IdUEx)+') AND ((TAsociacion.IdAsociacion)= '+
    IntToStr(IdAEx)+') AND ((TProvincia.IdProvincia)='+IntToStr(IdPEx)+') AND '+
    '((TDistrito.IdDistrito)='+IntToStr(IdDEx)+') AND ((TIglesia.IdIglesia)='+
    IntToStr(IdIEx)+')'+FiltroExt+')';
  end;}
  if (Activa or Normal) and (ADOImportMiembros.RecordCount>0) then
  if (PuedeEditar) then
  begin
    dxButtonImp.Update;
    Importar:=true;
    ADOFuente:=ADOImportMiembros;
    ADODestino:=ADOTMiembros;
    FormEspera.JvMemoryData1.DataSet:=ADOImportMiembros;
    DBGrid1.DataSource.DataSet.DisableControls;
    marcaIE:=DBGridExt.DataSource.DataSet.GetBookmark;
    DBGridExt.DataSource.DataSet.DisableControls;
    DBImage1.DataSource:=nil;
    DBMemoIdiomas.DataSource:=nil;
    DBMemoEnfermedades.DataSource:=nil;
    DBGrid2.DataSource:=nil;
    DBMemo1.DataSource:=nil;
    FormEspera.ShowModal;
    DBGridExt.DataSource.DataSet.GotoBookmark(marcaIE);
    DBGridExt.DataSource.DataSet.FreeBookmark(marcaIE);
    DBGridExt.DataSource.DataSet.EnableControls;
  end else
  begin
    Application.MessageBox ('No se puede editar en la Tabla Maestra.   ',
                            'Aviso',MB_OK+MB_ICONINFORMATION);
    exit;
  end;
end;

//Consulta para exportar\\
procedure TForm1.dxButtonExpClick(Sender: TObject);
var
  //NumeroIgl: String;{Para saber el IDIglesia que tengo abierto}
  marcaIE: Pointer;
begin
  //TablaFuente:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                //'DataBase\BaseDatos-R.mdb';
  {if (Activa or Normal) and (ADOTMiembros.RecordCount>0) then
    //NumeroIgl:=ADOImportMiembros.FieldByName('IdIglesia').AsString
    NumeroIgl:=ADOImportIglesia.fieldByName('IdIglesia').AsString
  else exit;
  progreso:=0;Importar:=false;
  //ShowMessage(NumeroIgl);//ShowMessage('Fuente-'+TablaFuente+'||'+DirDBExt);
  if (NumeroIgl='') or (ADOTMiembros.Active=false) then exit else
  ////comienza el bloque para Exportar\\\\
  begin
    CantAnterior:=ADOImportMiembros.RecordCount;{DataBase externa
    //ShowMessage(TablaFuente+'   '+NumeroIgl);
    ADOImportExport.Close;
    ADOImportExport.CommandText:='INSERT INTO TMiembros ( Nombre, [Primer Apellido],'+
    '[Segundo Apellido], [Nivel Escolar],'+
    'Enfermedades, Oficio, Dones, Desfraternizado, [Nació en Hogar ASD], [Fecha Desfraternizado],'+
    '[Causa Desfraternizado], Condición, Localidad, [Religión Practicada], Teléfono,'+
    'Traslado, Fallecido, [Ext Hogar], Rebautismo, Edad, Sexo, Dirección, [Estado Civil],'+
    '[Ocupación Actual], [Pastor que Bautizó], [Obrero que Trabajó], [Fecha Bautismo],[Fecha Nacimiento],'+
    '[Centro Trabajo/Estudio],[Dirección Trabajo/Estudio], [No Identidad], [Cónyuge Adventista],Salario, Foto,'+
    '[Otra Información],[Idiomas], IdIglesia ) '+
    'IN "'+DirDBExt+'" '+
    'SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido],'+
    'TMiembros.[Nivel Escolar], TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.Dones,'+
    'TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD],'+
    'TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado],'+
    'TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],'+
    'TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar],'+
    'TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección,'+
    'TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó],'+
    'TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo],TMiembros.[Fecha Nacimiento],'+
    'TMiembros.[Centro Trabajo/Estudio],TMiembros.[Dirección Trabajo/Estudio], TMiembros.[No Identidad],'+
    'TMiembros.[Cónyuge Adventista], TMiembros.[Salario], TMiembros.[Foto],'+
    'TMiembros.[Otra Información],TMiembros.[Idiomas], '+
    NumeroIgl+ ' AS IdIglesia '+
    'FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON '+
    'TAsociacion.IdAsociacion = TProvincia.IdAsociacion) INNER JOIN '+
    '((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito) '+
    'INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON '+
    'TProvincia.IdProvincia = TDistrito.IdProvincia) ON TUnion.IdUnion = TAsociacion.IdUnion '+
    'IN "'+TablaFuente+'" '+
    'WHERE (((TUnion.IdUnion)='+(IdU)+') AND ((TAsociacion.IdAsociacion)= '+
    (IdA)+') AND ((TProvincia.IdProvincia)='+(IdP)+') AND '+
    '((TDistrito.IdDistrito)='+(IdD)+') AND ((TIglesia.IdIglesia)='+
    (IdI)+')'+Prueba1+')';
    //ShowMessage(ADOImportExport.CommandText);
    {try
      ADOImportExport.Open;
    except
    end; 
    FormEspera.ShowModal;

  end; }
  if (Activa or Normal) then //and (ADOTMiembros.RecordCount>0)
  if (ADOTMiembros.Active) then
  if (ADOTMiembros.RecordCount>0) then
  begin
    dxButtonExp.Update;
    Importar:=false;
    ADOFuente:=ADOTMiembros;
    ADODestino:=ADOImportMiembros;
    FormEspera.JvMemoryData1.DataSet:=ADOTMiembros;
    DBGridExt.DataSource.DataSet.DisableControls;
    marcaIE:=DBGrid1.DataSource.DataSet.GetBookmark;
    DBGrid1.DataSource.DataSet.DisableControls;
    DBImage2.DataSource:=nil;
    DBMemo4.DataSource:=nil;
    FormEspera.ShowModal;
    DBGrid1.DataSource.DataSet.GotoBookmark(marcaIE);
    DBGrid1.DataSource.DataSet.FreeBookmark(marcaIE);
    DBGrid1.DataSource.DataSet.EnableControls;
  end else exit;
end;

procedure TForm1.ADOImportMiembrosAfterOpen(DataSet: TDataSet);
var
  col,i: Integer;
  column: TColumn;
begin
  for col:=0 to DBGridExt.Columns.Count-1 do
  begin
    DBGridExt.Columns.Items[col].Title.Alignment:=taCenter;
    column:=DBGridExt.Columns.Items[col];
    if (column.Title.Caption='Salario') then
    begin
      DBGridExt.Fields[col].OnSetText:=TrataTextoSalario1;
      DBGridExt.Fields[col].OnGetText:=TrataTextoSalario2;
    end;
  end;
end;

procedure TForm1.ADODataSet1FetchProgress(DataSet: TCustomADODataSet;
  Progress, MaxProgress: Integer; var EventStatus: TEventStatus);
begin
  Caption := 'Porciento completado: ' +
    IntToStr(Trunc(Progress / MaxProgress * 100)) + '%';
  Application.ProcessMessages;
end;

procedure TForm1.DBGrid2EditButtonClick(Sender: TObject);
begin
  if PuedeEditar then
  if DBGrid1.DataSource.DataSet.RecordCount>0 then
  FormDateVisitas.ShowModal;
end;

procedure TForm1.ADOTVisitasAfterPost(DataSet: TDataSet);
begin
  BarraDeEstado;
end;

procedure TForm1.ADOTVisitasAfterDelete(DataSet: TDataSet);
begin
  BarraDeEstado;
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  DBImage2.Stretch:=CheckBox10.Checked;
  If CheckBox10.Checked then CheckBox10.Hint:='Tamaño normal'
  else CheckBox10.Hint:='Ampliar';
end;

procedure TForm1.DBImage1DblClick(Sender: TObject);
  procedure CargaJPGProporcionado( Fichero: string;
                                   const QueImage: TDBImage);
  var
    ElJPG        : TJpegImage;
    Rectangulo   : TRect;
    EscalaX,
    EscalaY,
    Escala       : Single;
  begin
    ElJPG:=TJPegImage.Create;
    try
      ElJPG.LoadFromFile( Fichero );
      //Por defecto, escala 1:1
      EscalaX := 1.0;
      EscalaY := 1.0;
      //Hallamos la escala de reducción Horizontal -yo la hago a 140 pixel
      if {QueImage.Width}140 < ElJPG.Width then
        EscalaX := {QueImage.Width}140 / ElJPG.Width;
      //La escala vertical  -yo la hago a 140 pixel
      if {QueImage.Height}140 < ElJPG.Height then
        EscalaY := {QueImage.Height}140 / ElJPG.Height;
      //Escogemos la menor de las 2
      if EscalaY < EscalaX then Escala:=EscalaY else Escala:=EscalaX;
      //Y la usamos para reducir el rectangulo destino
      with Rectangulo do begin
        Right:=Trunc(ElJPG.Width * Escala);
        Bottom:=Trunc(ElJPG.Height * Escala);
        Left:=0;
        Top:=0;
      end;
      //Dibujamos el bitmap con el nuevo tamaño en el TImage destino
      with QueImage.Picture.Bitmap do begin
        Width  := Rectangulo.Right;
        Height := Rectangulo.Bottom;
        Canvas.StretchDraw( Rectangulo,ElJPG );
      end;
    finally
      ElJPG.Free;
    end;
  end; {De CargaJPGProporcionado}
begin
  if PuedeEditar then
  if DBGrid1.DataSource.DataSet.RecordCount>0 then
    If formConfigurarDB.ListBox2.Count>0 then
    begin
      If OpenDialogFoto.Execute then
      begin
        ADOTMiembros.Edit;
        CargaJPGProporcionado (OpenDialogFoto.FileName,DBImage1);
        ADOTMiembros.Post;
      end;
    end;
end;

procedure TForm1.DBImage1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PuedeEditar then
  if DBGrid1.DataSource.DataSet.RecordCount>0 then
  if (key=VK_DELETE) or (key=VK_BACK) then
  If Application.MessageBox ('¿Estás seguro que deseas borrar la fotografía?   '+#13+
                            '     Una vez borrada no se podrá recuperar.',
                             'Borrado de Foto',MB_OKCANCEL+MB_ICONQUESTION) =
                             ID_OK Then
  begin
    ADOTMiembros.Edit;
    DBImage1.Picture:=nil;
    ADOTMiembros.Post;
  end;
end;

procedure TForm1.BIdiomaClick(Sender: TObject);
begin
  if PuedeEditar then
  if DBGrid1.DataSource.DataSet.RecordCount>0 then
  FormIdiomas.ShowModal;
end;

procedure TForm1.BEnfermedadClick(Sender: TObject);
begin
  if PuedeEditar then
  if DBGrid1.DataSource.DataSet.RecordCount>0 then
  FormEnfermedades.ShowModal;
end;

{mantener todo el grid lleno con las Notas de la Visitas}
procedure TForm1.PanelVisitasResize(Sender: TObject);
begin
  DBgrid2.Columns.Items[2].Width:=(PanelVisitas.Width-
    DBgrid2.Columns.Items[1].Width)-40;
  //ShowMessage(DBgrid2.Columns.Items[1].Title.caption+' '+DBgrid2.Columns.Items[2].Title.caption);
end;

procedure TForm1.ToolButton39Click(Sender: TObject);
begin
  FormOrdenar.ShowModal;
end;

procedure TForm1.AbrirBDExecute(Sender: TObject);
begin
  ToolBar2.Update;
  if AbrirBaseDatos.Execute then
    if AbrirBaseDatos.FileName<>'' then
    begin
      //ButtonMas.Down:=false; ButtonMas.ImageIndex:=21;
      ButtonMas.Update;
      TablaFuente:=AbrirBaseDatos.FileName;{Donde esta mi programa corriendo}
      if DBGrid1.DataSource<>nil then DBGrid1.DataSource.DataSet.Close;
      Seleccionados(DBGrid1);
      TreeView1.Items.Clear;////////////////////////////////////////
      Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
      LAsociacion.Caption:='';LDistrito.Caption:='';LIglesia.Caption:='';
      LProvincia.Caption:='';LUnion.Caption:='';IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
      Activa:=false;Normal:=false;Seleccion:=false;Global:=false;
      BarraDeEstado;
      With form2 do
      begin
        ComboBox7.Clear;ComboBox5.Clear;ComboBox6.Clear;ComboBox3.Clear;ComboBox4.Clear;
      end;
      ButtonCandado.Enabled:=false;
      ADOConnection1.Close;
      ADOConnection1.ConnectionString:=
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
      TablaFuente+';Mode=Share Deny None;Extended Properties="";'+
      'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
      'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
      'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
      'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
      'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
      'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
      'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
      ponNodos;
      {try
        ADOIdiomas.Open;
        ADOEnfermedades.Open;
        FormEnfermedades.PonEnfermedades;
        FormIdiomas.PonIdiomas;
      except
      end;}
      //TablaFuente:=AbrirBaseDatos.FileName;{Donde esta mi programa corriendo}
    end;
    Expandido:=false;
end;

procedure TForm1.ImportarDBExecute(Sender: TObject);
begin
  ToolBar2.Update;
  Importar:=true;
  ConfigurarExt;
end;

procedure TForm1.ExportarDBExecute(Sender: TObject);
begin
  ToolBar2.Update;
  Importar:=false;
  ConfigurarExt;
end;

procedure TForm1.MostrarDBMasterExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(Sender);
end;

procedure TForm1.BuscarDBExecute(Sender: TObject);
begin
  ToolBar2.Update;
  Form2.ShowModal;
end;

procedure TForm1.OrdenarDBExecute(Sender: TObject);
begin
  ToolBar2.Update;
  FormOrdenar.ShowModal;
end;

procedure TForm1.CerrarDBExtExecute(Sender: TObject);
begin
  ToolBar2.Update;
  DirDBExt:='';
  ADOConnection2.Close;
  DBGridExt.Options:=[];
  PanelExt.Caption:=' 0 Miembros(s)';
  dxButtonImp.Enabled:=true;dxButtonExp.Enabled:=true;
end;

procedure TForm1.ImprimirDBExecute(Sender: TObject);
begin
  ImprimeQueDBGrid(DBGrid1);
end;

Procedure TForm1.Muestra(Sender:TObject);
begin
  try
    formImpresion.QRprev.QRPrinter:=TQRPrinter(Sender);//Mostrar el texto correspondiente
  except;
  end;
end;

procedure TForm1.ButtonImpNombramientosClick(Sender: TObject);
begin
  if Activa or Normal then
  try
    if DBGridNombramientosIgl.DataSource.DataSet.RecordCount>0 then
    ImprimeQueDBGrid(DBGridNombramientosIgl);
  except;
  end;
end;

procedure TForm1.ButtonImpNotasClick(Sender: TObject);
var
  IdDeNota:integer;
begin
  if DBMemo2.Lines.Count>0 then
  begin
    Reporte1:=True;
    IdDeNota:=ADOTAnnos.FieldValues['IdAnnos'];
    ADODatSetSueltos.Close;
    ADODatSetSueltos.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
        TablaFuente+';Mode=Share Deny None;Extended Properties="";'+
        'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
        'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
        'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
        'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
        'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
        'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
        'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
    ADODatSetSueltos.CommandText:='Select Notas,IdAnnos from TAnnos Where IdAnnos='+IntToStr(IdDeNota);
    try
      ADODatSetSueltos.Open;
      FormNotasFecha.QRep3.DataSet:=ADODatSetSueltos;
      FormNotasFecha.QRDBText1.Width:=FormNotasFecha.QRBand2.Width;
      FormNotasFecha.QRDBText1.DataSet:=ADODatSetSueltos;//DBGridAnnos.DataSource.DataSet;
      FormNotasFecha.QRDBText1.DataField:='Notas';
    except;
    end;
    try
      Titulo2:='Notas referentes al año...';
      FormNotasFecha.QUnion.Caption:=LUnion.Caption;
      FormNotasFecha.QAsociacion.Caption:=LAsociacion.Caption;
      FormNotasFecha.QProvincia.Caption:=LProvincia.Caption;
      FormNotasFecha.QDistrito.Caption:=LDistrito.Caption;
      FormNotasFecha.QIglesia.Caption:=LIglesia.Caption;
      FormNotasFecha.QRLTitulo.Caption:='Notas del año '+
                                      (FormatDateTime('yyyy',ADOTAnnos.FieldValues['Fecha']));
    except;
    end;
    try
      FormNotasFecha.QRep3.OnPreview:=Muestra;
      FormNotasFecha.QRep3.PreviewModal;
      formImpresion.ShowModal;
    except;
    end;
  end;
end;

{Imprimir segun el DBGrid deseado}
procedure TForm1.ImprimeQueDBGrid(Sender: TjvDBUltimGrid);
Var
  col, scol,hasta: Integer;
  ancho, ladoizq: Integer;
  marca: Pointer;
begin
  ToolBar2.Update;Reporte1:=true;
  ladoizq:=0;
  try
    marca:=Sender.DataSource.DataSet.GetBookmark;
    Form5.QRep1.DataSet:=Sender.DataSource.DataSet;
  except;
  exit;
  end;
  if Sender=DBGrid1 then
  begin
    hasta:=Sender.columns.Count-7;
    Form5.QRLTitulo.Caption:=Edit1.text;
    Titulo2:='Listado de Miembros de Iglesia';
  end else
  begin
    hasta:=Sender.columns.Count-4;
    Form5.QRLTitulo.Caption:='Oficiales de la Iglesia '+'('+
    DateToStr(ADOTAnnos.FieldValues['Fecha'])+')';
    Titulo2:='Nombramientos de Iglesia';
  end;
  for col:=0 to 19 do {para limpiar el reporte de los datos anteriores}
  begin
    with form5.QRBand2.Controls[col] as TQRLabel do
    begin
      Frame.DrawRight:=false;  caption:='';
    end;
    with form5.QRBand4.Controls[col] as TQRDBText do DataSet:=nil;
  end;
  for col:=0 to hasta-1 do {Ahora linea a todos excepto el ultimo}
  begin
    with form5.QRBand2.Controls[col] as TQRLabel do Frame.DrawRight:=true;
  end;
  For  col:=0 to hasta do
  begin
    if Sender.Columns[col].Visible then
    begin
      ancho:=Sender.Columns[col].Width; //20 --124
      if (col>0) and (Sender.Columns[col-1].Visible=true) then
      begin
      scol:=Sender.Columns[col-1].Width;
      ladoizq:=ladoizq+scol; //20+1--125
      end;
      case col of
        0:
          begin
            //ShowMessage('left: '+IntToStr(ladoizq)+', Witdt: '+IntToStr(ancho));
            Form5.QRLabel1.Left:=Sender.Columns[col].Grid.Left;
            Form5.QRLabel1.Width:=ancho;
            Form5.QRLabel1.Caption:=Sender.Columns.Items[col].Title.Caption;
            Form5.QRDBText1.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText1.DataField:=Sender.Columns.Items[col].Title.Caption;
            Form5.QRDBText1.Left:=Sender.Columns.Items[col].Grid.Left+1;
            Form5.QRDBText1.Width:=ancho;
            Form5.QRDBText1.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText1.Caption:=Sender.Columns.Items[col].Title.Caption;
          end;
        1:
          begin
            //ShowMessage('left: '+IntToStr(ladoizq)+', Witdt: '+IntToStr(ancho));
            Form5.QRLabel2.Left:=ladoizq;
            Form5.QRLabel2.Width:=ancho;
            Form5.QRLabel2.Caption:=Sender.Columns.Items[col].Title.Caption;
            Form5.QRDBText2.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText2.DataField:=Sender.Columns.Items[col].Title.Caption;
            Form5.QRDBText2.Left:=ladoizq+1;
            Form5.QRDBText2.Width:=ancho-2;
            Form5.QRDBText2.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText2.Caption:=Sender.Columns.Items[col].Title.Caption;
          end;
        2:
          begin
            //ShowMessage('left: '+IntToStr(ladoizq)+', Witdt: '+IntToStr(ancho));
            Form5.QRLabel3.Left:=ladoizq;
            Form5.QRLabel3.Width:=ancho;
            Form5.QRLabel3.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText3.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText3.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText3.Left:=ladoizq+1;
            Form5.QRDBText3.Width:=ancho-2;
            Form5.QRDBText3.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText3.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        3:
          begin
            Form5.QRLabel4.Left:=ladoizq;
            Form5.QRLabel4.Width:=ancho;
            Form5.QRLabel4.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText4.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText4.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText4.Left:=ladoizq+1;
            Form5.QRDBText4.Width:=ancho-2;
            Form5.QRDBText4.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText4.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        4:
          begin
            Form5.QRLabel5.Left:=ladoizq;
            Form5.QRLabel5.Width:=ancho;
            Form5.QRLabel5.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText5.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText5.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText5.Left:=ladoizq+1;
            Form5.QRDBText5.Width:=ancho-2;
            Form5.QRDBText5.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText5.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        5:
          begin
            Form5.QRLabel6.Left:=ladoizq;
            Form5.QRLabel6.Width:=ancho;
            Form5.QRLabel6.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText6.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText6.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText6.Left:=ladoizq+1;
            Form5.QRDBText6.Width:=ancho-2;
            Form5.QRDBText6.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText6.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        6:
          begin
            Form5.QRLabel7.Left:=ladoizq;
            Form5.QRLabel7.Width:=ancho;
            Form5.QRLabel7.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText7.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText7.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText7.Left:=ladoizq+1;
            Form5.QRDBText7.Width:=ancho-2;
            Form5.QRDBText7.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText7.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        7:
          begin
            Form5.QRLabel8.Left:=ladoizq;
            Form5.QRLabel8.Width:=ancho;
            Form5.QRLabel8.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText8.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText8.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText8.Left:=ladoizq+1;
            Form5.QRDBText8.Width:=ancho-2;
            Form5.QRDBText8.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText8.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        8:
          begin
            Form5.QRLabel9.Left:=ladoizq;
            Form5.QRLabel9.Width:=ancho;
            Form5.QRLabel9.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText9.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText9.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText9.Left:=ladoizq+1;
            Form5.QRDBText9.Width:=ancho-2;
            Form5.QRDBText9.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText9.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        9:
          begin
            Form5.QRLabel10.Left:=ladoizq;
            Form5.QRLabel10.Width:=ancho;
            Form5.QRLabel10.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText10.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText10.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText10.Left:=ladoizq+1;
            Form5.QRDBText10.Width:=ancho-2;
            Form5.QRDBText10.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText10.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        10:
          begin
            Form5.QRLabel11.Left:=ladoizq;
            Form5.QRLabel11.Width:=ancho;
            Form5.QRLabel11.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText11.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText11.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText11.Left:=ladoizq+1;
            Form5.QRDBText11.Width:=ancho-2;
            Form5.QRDBText11.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText11.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        11:
          begin
            Form5.QRLabel12.Left:=ladoizq;
            Form5.QRLabel12.Width:=ancho;
            Form5.QRLabel12.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText12.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText12.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText12.Left:=ladoizq+1;
            Form5.QRDBText12.Width:=ancho-2;
            Form5.QRDBText12.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText12.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        12:
          begin
            Form5.QRLabel13.Left:=ladoizq;
            Form5.QRLabel13.Width:=ancho;
            Form5.QRLabel13.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText13.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText13.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText13.Left:=ladoizq+1;
            Form5.QRDBText13.Width:=ancho-2;
            Form5.QRDBText13.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText13.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        13:
          begin
            Form5.QRLabel14.Left:=ladoizq;
            Form5.QRLabel14.Width:=ancho;
            Form5.QRLabel14.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText14.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText14.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText14.Left:=ladoizq+1;
            Form5.QRDBText14.Width:=ancho-2;
            Form5.QRDBText14.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText14.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        14:
          begin
            Form5.QRLabel15.Left:=ladoizq;
            Form5.QRLabel15.Width:=ancho;
            Form5.QRLabel15.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText15.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText15.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText15.Left:=ladoizq+1;
            Form5.QRDBText15.Width:=ancho-2;
            Form5.QRDBText15.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText15.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        15:
          begin
            Form5.QRLabel16.Left:=ladoizq;
            Form5.QRLabel16.Width:=ancho;
            Form5.QRLabel16.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText16.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText16.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText16.Left:=ladoizq+1;
            Form5.QRDBText16.Width:=ancho-2;
            Form5.QRDBText16.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText16.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        16:
          begin
            Form5.QRLabel17.Left:=ladoizq;
            Form5.QRLabel17.Width:=ancho;
            Form5.QRLabel17.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText17.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText17.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText17.Left:=ladoizq+1;
            Form5.QRDBText17.Width:=ancho-2;
            Form5.QRDBText17.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText17.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        17:
          begin
            Form5.QRLabel18.Left:=ladoizq;
            Form5.QRLabel18.Width:=ancho;
            Form5.QRLabel18.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText18.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText18.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText18.Left:=ladoizq+1;
            Form5.QRDBText18.Width:=ancho-2;
            Form5.QRDBText18.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText18.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        18:
          begin
            Form5.QRLabel19.Left:=ladoizq;
            Form5.QRLabel19.Width:=ancho;
            Form5.QRLabel19.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText19.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText19.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText19.Left:=ladoizq+1;
            Form5.QRDBText19.Width:=ancho-2;
            Form5.QRDBText19.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText19.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        19:
          begin
            Form5.QRLabel20.Left:=ladoizq;
            Form5.QRLabel20.Width:=ancho;
            Form5.QRLabel20.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText20.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText20.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText20.Left:=ladoizq+1;
            Form5.QRDBText20.Width:=ancho-2;
            Form5.QRDBText20.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText20.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        20:
          begin
            Form5.QRLabel21.Left:=ladoizq;
            Form5.QRLabel21.Width:=ancho;
            Form5.QRLabel21.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText21.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText21.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText21.Left:=ladoizq+1;
            Form5.QRDBText21.Width:=ancho-2;
            Form5.QRDBText21.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText21.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        21:
          begin
            Form5.QRLabel22.Left:=ladoizq;
            Form5.QRLabel22.Width:=ancho;
            Form5.QRLabel22.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText22.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText22.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText22.Left:=ladoizq+1;
            Form5.QRDBText22.Width:=ancho-2;
            Form5.QRDBText22.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText22.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        22:
          begin
            Form5.QRLabel23.Left:=ladoizq;
            Form5.QRLabel23.Width:=ancho;
            Form5.QRLabel23.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText23.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText23.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText23.Left:=ladoizq+1;
            Form5.QRDBText23.Width:=ancho-2;
            Form5.QRDBText23.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText23.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        23:
          begin
            Form5.QRLabel24.Left:=ladoizq;
            Form5.QRLabel24.Width:=ancho;
            Form5.QRLabel24.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText24.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText24.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText24.Left:=ladoizq+1;
            Form5.QRDBText24.Width:=ancho-2;
            Form5.QRDBText24.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText24.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        24:
          begin
            Form5.QRLabel25.Left:=ladoizq;
            Form5.QRLabel25.Width:=ancho;
            Form5.QRLabel25.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText25.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText25.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText25.Left:=ladoizq+1;
            Form5.QRDBText25.Width:=ancho-2;
            Form5.QRDBText25.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText25.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        25:
          begin
            Form5.QRLabel26.Left:=ladoizq;
            Form5.QRLabel26.Width:=ancho;
            Form5.QRLabel26.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText26.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText26.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText26.Left:=ladoizq+1;
            Form5.QRDBText26.Width:=ancho-2;
            Form5.QRDBText26.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText26.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        26:
          begin
            Form5.QRLabel27.Left:=ladoizq;
            Form5.QRLabel27.Width:=ancho;
            Form5.QRLabel27.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText27.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText27.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText27.Left:=ladoizq+1;
            Form5.QRDBText27.Width:=ancho-2;
            Form5.QRDBText27.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText27.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        27:
          begin
            Form5.QRLabel28.Left:=ladoizq;
            Form5.QRLabel28.Width:=ancho;
            Form5.QRLabel28.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText28.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText28.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText28.Left:=ladoizq+1;
            Form5.QRDBText28.Width:=ancho-2;
            Form5.QRDBText28.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText28.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        28:
          begin
            Form5.QRLabel29.Left:=ladoizq;
            Form5.QRLabel29.Width:=ancho;
            Form5.QRLabel29.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText29.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText29.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText29.Left:=ladoizq+1;
            Form5.QRDBText29.Width:=ancho-2;
            Form5.QRDBText29.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText29.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        29:
          begin
            Form5.QRLabel30.Left:=ladoizq;
            Form5.QRLabel30.Width:=ancho;
            Form5.QRLabel30.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText30.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText30.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText30.Left:=ladoizq+1;
            Form5.QRDBText30.Width:=ancho-2;
            Form5.QRDBText30.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText30.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        30:
          begin
            Form5.QRLabel31.Left:=ladoizq;
            Form5.QRLabel31.Width:=ancho;
            Form5.QRLabel31.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText31.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText31.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText31.Left:=ladoizq+1;
            Form5.QRDBText31.Width:=ancho-2;
            Form5.QRDBText31.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText31.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        31:
          begin
            Form5.QRLabel32.Left:=ladoizq;
            Form5.QRLabel32.Width:=ancho;
            Form5.QRLabel32.Caption:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText32.DataSet:=Sender.DataSource.DataSet;
            Form5.QRDBText32.DataField:=Sender.Columns.Items[col].FieldName;
            Form5.QRDBText32.Left:=ladoizq+1;
            Form5.QRDBText32.Width:=ancho-2;
            Form5.QRDBText32.Alignment:=Sender.Columns[col].Alignment;
            Form5.QRDBText32.Caption:=Sender.Columns.Items[col].FieldName;
          end;
        
      end;
    end;
  end;
  Form5.QUnion.Caption:=LUnion.Caption;
  Form5.QAsociacion.Caption:=LAsociacion.Caption;
  Form5.QProvincia.Caption:=LProvincia.Caption;
  Form5.QDistrito.Caption:=LDistrito.Caption;
  Form5.QIglesia.Caption:=LIglesia.Caption;
  //Form5.QRLTitulo.Caption:=Edit1.text;
  Sender.DataSource.DataSet.DisableControls;
  try
    Form5.QRep1.OnPreview:=Muestra;
    Form5.QRep1.PreviewModal;
    formImpresion.ShowModal;
  except;
  end;
  try
    Sender.DataSource.DataSet.EnableControls;
    Sender.DataSource.DataSet.GotoBookmark(marca);
    Sender.DataSource.DataSet.FreeBookmark(marca);
  except;
    Sender.DataSource.DataSet.FreeBookmark(marca);
  end;
end;

procedure TForm1.CandadoExecute(Sender: TObject);
begin
  ToolBar2.Update;
  if ButtonCandado.Down then ButtonCandado.ImageIndex:=23{Candado abierto} else
    ButtonCandado.ImageIndex:=17;
  CandadoSiNo;
  CandadoPulzado;
end;

procedure TForm1.PanelInfoAdicionalExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PanelAdicional.Visible:=not PanelAdicional.Visible;
  SplitterAdicional.Visible:=not SplitterAdicional.Visible;
  SplitterAdicional.Top:=PanelAdicional.Top-3;
  if ButtonInfoAdiciona.Down=true then
  begin
    ButtonFoto.Enabled:=true;
    ButtonIdioma.Enabled:=true;
    ButtonEnfermedad.Enabled:=true;
    ButtonOtraInf.Enabled:=true;
    ButtonVisitas.Enabled:=true;
  end else
  begin
    ButtonFoto.Enabled:=false;
    ButtonIdioma.Enabled:=false;
    ButtonEnfermedad.Enabled:=false;
    ButtonOtraInf.Enabled:=false;
    ButtonVisitas.Enabled:=false;
  end;
  PageControl1.Update;
end;

procedure TForm1.PanelFotografiaExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PanelFoto.Visible:=not PanelFoto.Visible;
  SplitterFoto.Visible:=not SplitterFoto.Visible;
  PanelFoto.Left:=0;
  SplitterFoto.Left:=PanelFoto.Width;
end;

procedure TForm1.PanelIdiomasExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PanelIdioma.Visible:=Not PanelIdioma.Visible;
  if PanelFoto.Visible then PanelIdioma.Left:=PanelFoto.Width+3{del SplitterFoto}
  else PanelIdioma.Left:=0;
  SplitterIdiomas.Left:=PanelIdioma.Left+PanelIdioma.Width;
  SplitterIdiomas.Visible:=not SplitterIdiomas.Visible;
end;

procedure TForm1.PanelEnfermedadesExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PanelEnfermedad.Visible:=Not PanelEnfermedad.Visible;
  PanelEnfermedad.Left:=PanelFoto.Width+3+PanelIdioma.Width+3;
  SplitterEnfermedades.Left:=PanelEnfermedad.Left+PanelEnfermedad.Width;
  SplitterEnfermedades.Visible:=not SplitterEnfermedades.Visible;
end;

procedure TForm1.PanelOtraInfoExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PanelInfo.Visible:=not PanelInfo.Visible;
  ButtonVisitas.Down:=not PanelInfo.Visible;
  PanelVisitas.Visible:=ButtonVisitas.Down;
end;

procedure TForm1.PanelVisitadosExecute(Sender: TObject);
begin
  ToolBar2.Update;
  PanelVisitas.Visible:=not PanelVisitas.Visible;
  ButtonOtraInf.Down:=not PanelVisitas.Visible;
  PanelInfo.Visible:=ButtonOtraInf.Down;
end;

procedure TForm1.CerrarChurchExecute(Sender: TObject);
begin
  ToolBar2.Update;
  Close;
end;

procedure TForm1.ConfigurarExecute(Sender: TObject);
begin
  ToolBar2.Update;
  FormConfigurarDB.ShowModal;
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
  Edit1.Hide;
  Panel21.Caption:=Edit1.Text;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) then
  begin
    key:=#0;
    Edit1.Hide;
    Panel21.Caption:=Edit1.Text;
  end else
  if (key=#27) then
  begin
    key:=#0;
    Edit1.Text:=GuardaEdit1;
    Edit1.Hide;
    Panel21.Caption:=GuardaEdit1;
  end;
end;

procedure TForm1.TreeView1KeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if (key=#13) then
  begin
   if TreeView1.Selected<>nil then
   if TreeView1.Selected.Level=4 then
   begin
     for i:=0 to TreeView1.Items.Count-1 do
        if TreeView1.Items[i].Level=4 then
          if TreeView1.Items[i].SelectedIndex=9 then
            TreeView1.Items[i].SelectedIndex:=8;
        TreeView1.Selected.SelectedIndex:=9;
     EditSiNo:=true;
     localizando;
   end;
   key:=#0;
  end;
end;

procedure TForm1.localizando;
Var
  N,i: Integer;
begin
  Iglesia:=TreeView1.Selected.Text;
  for i:=0 to TreeView1.Items.Count-1 do
              if TreeView1.Items[i].Level=4 then
              if TreeView1.Items[i].SelectedIndex=9 then
                TreeView1.Items[i].SelectedIndex:=8;
              TreeView1.Selected.SelectedIndex:=9;
  N := TreeView1.Selected.AbsoluteIndex;
  IdI:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando el Distrito al cual pertenece la Iglesia
  While TreeView1.Items[N].Level <> 3 Do
  Dec(N);
  Distrito:=TreeView1.Items[N].Text;
  IdD:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando la Provincia a la cual pertenece el Distrito
  While TreeView1.Items[N].Level <> 2 Do
  Dec(N);
  Provincia:=TreeView1.Items[N].Text;
  IdP:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando la Asociacion a la cual pertenece la Provincia
  While TreeView1.Items[N].Level <> 1 Do
  Dec(N);
  Asociacion:=TreeView1.Items[N].Text;
  IdA:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando la Unión a la cual pertenece la Delegación
  While TreeView1.Items[N].Level <> 0 Do
  Dec(N);
  Union:=TreeView1.Items[N].Text;
  IdU:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  LUnion.Caption:=Union;
  LAsociacion.Caption:=Asociacion;
  LProvincia.Caption:=Provincia;
  LDistrito.Caption:=Distrito;
  LIglesia.Caption:=Iglesia;
  Normal:=true;Activa:=false;Global:=false;Seleccion:=false;
  TreeView1.Update;
  CampoVisible;
end;

procedure TForm1.localizandoEditado;
Var
  N,i: Integer;
begin
  //Iglesia:=TreeView1.Selected.Text;
  for i:=0 to TreeView1.Items.Count-1 do
              if TreeView1.Items[i].Level=4 then
              if TreeView1.Items[i].SelectedIndex=9 then
                TreeView1.Items[i].SelectedIndex:=8;
              TreeView1.Selected.SelectedIndex:=9;
  N := TreeView1.Selected.AbsoluteIndex;
  IdI:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando el Distrito al cual pertenece la Iglesia
  While TreeView1.Items[N].Level <> 3 Do
  Dec(N);
  Distrito:=TreeView1.Items[N].Text;
  IdD:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando la Provincia a la cual pertenece el Distrito
  While TreeView1.Items[N].Level <> 2 Do
  Dec(N);
  Provincia:=TreeView1.Items[N].Text;
  IdP:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando la Asociacion a la cual pertenece la Provincia
  While TreeView1.Items[N].Level <> 1 Do
  Dec(N);
  Asociacion:=TreeView1.Items[N].Text;
  IdA:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  //Buscando la Unión a la cual pertenece la Delegación
  While TreeView1.Items[N].Level <> 0 Do
  Dec(N);
  Union:=TreeView1.Items[N].Text;
  IdU:=IntToStr(PRecordId(TreeView1.Items[N].Data)^.Id);
  LUnion.Caption:=Union;
  LAsociacion.Caption:=Asociacion;
  LProvincia.Caption:=Provincia;
  LDistrito.Caption:=Distrito;
  LIglesia.Caption:=Iglesia;
  Normal:=true;Activa:=false;Global:=false;Seleccion:=false;
  CampoVisible;
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  if (TreeView1.Focused) then
  if TreeView1.Selected<>nil then
  begin
    if TreeView1.Selected.Level=0 then
    begin
      PopupMenu1.Items[0].Enabled:=true;
      PopupMenu1.Items[1].Enabled:=true;
      PopupMenu1.Items[2].Enabled:=false;
      PopupMenu1.Items[3].Enabled:=false;
      PopupMenu1.Items[4].Enabled:=false;
      PopupMenu1.Items[5].Enabled:=true;
      PopupMenu1.Items[6].Enabled:=true;
    end;
    if TreeView1.Selected.Level=1 then
    begin
      PopupMenu1.Items[0].Enabled:=true;
      PopupMenu1.Items[1].Enabled:=false;
      PopupMenu1.Items[2].Enabled:=true;
      PopupMenu1.Items[3].Enabled:=false;
      PopupMenu1.Items[4].Enabled:=false;
      PopupMenu1.Items[5].Enabled:=true;
      PopupMenu1.Items[6].Enabled:=true;
    end;
    if TreeView1.Selected.Level=2 then
    begin
      PopupMenu1.Items[0].Enabled:=true;
      PopupMenu1.Items[1].Enabled:=false;
      PopupMenu1.Items[2].Enabled:=false;
      PopupMenu1.Items[3].Enabled:=true;
      PopupMenu1.Items[4].Enabled:=false;
      PopupMenu1.Items[5].Enabled:=true;
      PopupMenu1.Items[6].Enabled:=true;
    end;
    if TreeView1.Selected.Level=3 then
    begin
      PopupMenu1.Items[0].Enabled:=true;
      PopupMenu1.Items[1].Enabled:=false;
      PopupMenu1.Items[2].Enabled:=false;
      PopupMenu1.Items[3].Enabled:=false;
      PopupMenu1.Items[4].Enabled:=true;
      PopupMenu1.Items[5].Enabled:=true;
      PopupMenu1.Items[6].Enabled:=true;
    end;
    if TreeView1.Selected.Level=4 then
    begin
      PopupMenu1.Items[0].Enabled:=true;
      PopupMenu1.Items[1].Enabled:=false;
      PopupMenu1.Items[2].Enabled:=false;
      PopupMenu1.Items[3].Enabled:=false;
      PopupMenu1.Items[4].Enabled:=false;
      PopupMenu1.Items[5].Enabled:=true;
      PopupMenu1.Items[6].Enabled:=true;
    end;
  end else
  begin
    PopupMenu1.Items[0].Enabled:=true;
    PopupMenu1.Items[1].Enabled:=false;
    PopupMenu1.Items[2].Enabled:=false;
    PopupMenu1.Items[3].Enabled:=false;
    PopupMenu1.Items[4].Enabled:=false;
    PopupMenu1.Items[5].Enabled:=false;
    PopupMenu1.Items[6].Enabled:=true;
  end;
end;

procedure TForm1.DBGridPastorDistritoEnter(Sender: TObject);
begin
  try
    DBNavigatorObreros.DataSource:=DBGridPastorDistrito.DataSource;
  except;
  end;
  PanelPastorD.Color:=clActiveBorder;
  PanelPastorI.Color:=clBtnFace;
  PanelObreras.Color:=clBtnFace;
end;

procedure TForm1.DBGridPastorIglesiaEnter(Sender: TObject);
begin
  try
    DBNavigatorObreros.DataSource:=DBGridPastorIglesia.DataSource;
  except;
  end;
  PanelPastorD.Color:=clBtnFace;
  PanelPastorI.Color:=clActiveBorder;
  PanelObreras.Color:=clBtnFace;
end;

procedure TForm1.DBGridObrerasEnter(Sender: TObject);
begin
  try
    DBNavigatorObreros.DataSource:=DBGridObreras.DataSource;
  except;
  end;
  PanelPastorD.Color:=clBtnFace;
  PanelPastorI.Color:=clBtnFace;
  PanelObreras.Color:=clActiveBorder;
end;

procedure TForm1.ADOTMiembrosAfterDelete(DataSet: TDataSet);
begin
  NoMiembros;
  BarraDeEstado;
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
  Seleccionados(Sender);
end;

procedure TForm1.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBNavigVisitasBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button=nbDelete) and (PuedeEditar) then
   if sender is TDBNavigator then
   with sender as TDBNavigator do
   begin
    if (Not (DataSource.State in [dsEdit, dsInsert])) and
                    (DataSource.DataSet.RecordCount>0) then ConfirmaBorrado(DBGrid2);
    Abort;
   end;
end;

procedure TForm1.DBNavigatorObrerosBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button=nbDelete) and (PuedeEditar) then
   if sender is TDBNavigator then
   with sender as TDBNavigator do
   begin
    if (Not (DataSource.State in [dsEdit, dsInsert])) and
                    (DataSource.DataSet.RecordCount>0) then
    begin
      if DataSource=DBGridPastorDistrito.DataSource then
              ConfirmaBorrado(DBGridPastorDistrito) else
      if DataSource=DBGridPastorIglesia.DataSource then
              ConfirmaBorrado(DBGridPastorIglesia) else
      if DataSource=DBGridObreras.DataSource then
              ConfirmaBorrado(DBGridObreras);
      Abort;
    end;
   end;
end;

procedure TForm1.DBGridNombramientosIglKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.DBGridNombramientosIglKeyPress(Sender: TObject;
  var Key: Char);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridNombramientosIglKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridNombramientosIglMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
   Seleccionados(Sender);
end;

procedure TForm1.DBGridNombramientosIglMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);  
end;

procedure TForm1.DBGridPastorDistritoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.DBGridPastorIglesiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.DBGridObrerasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.DBGridPastorDistritoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorIglesiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridObrerasKeyPress(Sender: TObject; var Key: Char);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorDistritoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorIglesiaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridObrerasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorDistritoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorIglesiaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
  Seleccionados(Sender);
end;

procedure TForm1.DBGridObrerasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorDistritoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridPastorIglesiaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridObrerasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBNavigNombramientosIglBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button=nbDelete) and (PuedeEditar) then
   if sender is TDBNavigator then
   with sender as TDBNavigator do
   begin
     try
       if (Not (DataSource.State in [dsEdit, dsInsert])) and
        (DataSource.DataSet.RecordCount>0) then ConfirmaBorrado(DBGridNombramientosIgl);
     except;
     end;
    Abort;
   end;
  DBGridNombramientosIgl.SetFocus;
end;

procedure TForm1.DBGridAnnosExit(Sender: TObject);
begin
  try
  if (DBGridAnnos.DataSource.State in [dsEdit, dsInsert]) then
    DBGridAnnos.DataSource.DataSet.Post;
    //DBNavigAnnos.BtnClick(nbPost);
  except;
  end;
end;

procedure TForm1.DBNavigAnnosBeforeAction(Sender:TObject;Button:TNavigateBtn);
begin
  if (Button=nbDelete) and (PuedeEditar) then
   if sender is TDBNavigator then
   with sender as TDBNavigator do
   begin
    if (Not (DataSource.State in [dsEdit, dsInsert])) and 
     (DataSource.DataSet.RecordCount>0) then ConfirmaBorrado(DBGridAnnos);
    Abort;
   end;
  DBGridAnnos.SetFocus;
end;

procedure TForm1.DBGridNombramientosIglExit(Sender: TObject);
begin
  try
    if (DBGridNombramientosIgl.DataSource.State in [dsEdit, dsInsert]) then
      DBGridNombramientosIgl.DataSource.DataSet.Post;
  except;
  end;
end;

procedure TForm1.DBGrid1Exit(Sender: TObject);
begin
  try
    if (DBGrid1.DataSource.State in [dsEdit, dsInsert]) then
        DBGrid1.DataSource.DataSet.Post;
  except;
  end;
end;

procedure TForm1.ADOTVisitasBeforeInsert(DataSet: TDataSet);
begin
  if DBGrid1.DataSource.DataSet.RecordCount<1 then Abort; 
end;

procedure TForm1.ADOTNombramientosIglBeforeInsert(DataSet: TDataSet);
begin
  try
    if DBGridAnnos.DataSource.DataSet.RecordCount<1 then Abort;
  except;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ADOTMiembros.Active then ADOTMiembros.Close;
end;

procedure TForm1.Panel21Resize(Sender: TObject);
begin
  //Edit1.Width:=Panel21.Width;
end;

{procedure TForm1.Copia(Sender: TObject);
begin
    if Sender is TDBGrid then
    with Sender as TDBGrid do
    begin
      //if DataSource.DataSet.State in [dsEdit] then
      ClipBoard.SetTextBuf(Pchar(Columns.Grid.SelectedField.AsString));
      //Clipboard.getTextBuf(String(Edit1.Text),0);
    end;
end;

procedure TForm1.Pega(Sender: TObject);
begin
    ///
end;

procedure TForm1.Corta(Sender: TObject);
begin
    ///
end; }



procedure TForm1.DSTMiembrosStateChange(Sender: TObject);
begin
  //if ShowMessage('Algo');
  {case DBGrid1.DataSource.DataSet.State of
    dsBrowse: ShowMessage('Browse');
    dsEdit: ShowMessage('Edit');
    dsInsert: ShowMessage('Insert');
  else ShowMessage('Otro');
  end; }
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  {try
    saveColPos(DBGrid1);
    saveColPos(DBGridPastorDistrito);
    saveColPos(DBGridPastorIglesia);
    saveColPos(DBGridObreras);
    saveColPos(DBGridNombramientosIgl);
    saveColPos(DBGridExt);
  except;
  end;}
  Application.HelpCommand(HELP_QUIT,0);
end;

procedure TForm1.ADOImportMiembrosBeforeOpen(DataSet: TDataSet);
begin
  {try
    SaveColPos(DBGridExt);
  except;
  end;}
end;

procedure TForm1.ADOTAnnosPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Action:=daAbort;
end;

procedure TForm1.CopiarExecute(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  begin
    with TjvDBUltimGrid(ActiveControl) do
    begin
      try
        ClipBoard.SetTextBuf(Pchar(Columns.Grid.SelectedField.AsString));
      except;
      end;
    end;
  end else if (ActiveControl is TDBMemo) then
  begin
    with TDBMemo(ActiveControl) do
    begin
      try
        CopyToClipBoard;
      except;
      end;
    end;
  end;
end;

procedure TForm1.CortarExecute(Sender: TObject);
begin
  if PuedeEditar then
  if (ActiveControl is TjvDBUltimGrid) then
  begin
    with TjvDBUltimGrid(ActiveControl) do
    begin
      try
        ClipBoard.SetTextBuf(Pchar(Columns.Grid.SelectedField.AsString));
        Columns.Grid.DataSource.DataSet.Edit;
        Columns.Grid.SelectedField.AsString:='';
      except;
      end;
    end;
  end else if (ActiveControl is TDBMemo) then
  begin
    with TDBMemo(ActiveControl) do
    begin
      try
        CutToClipBoard;
      except;
      end;
    end;
  end;
end;

procedure TForm1.PegarExecute(Sender: TObject);
begin
  if PuedeEditar then
  if (ActiveControl is TjvDBUltimGrid) then
  begin
    with TjvDBUltimGrid(ActiveControl) do
    begin
      if Clipboard.HasFormat(CF_TEXT) then
      begin
        try
          DataSource.DataSet.Edit;
          selectedField.Text:=Clipboard.AsText;
        except;
        end;
      end;
    end;
  end else if (ActiveControl is TDBMemo) then
  begin
    with TDBMemo(ActiveControl) do
    begin
      if Not ReadOnly then
      if Clipboard.HasFormat(CF_TEXT) then
      begin
        SelText:=Clipboard.AsText;;
      end;
    end;
  end
end;

procedure TForm1.ADOTAnnosEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  //Action:=daAbort;
end;

procedure TForm1.ADOTAnnosFechaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Fecha').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Abort;Exit;
  end;
end;

{Comprobar antes de guardar si la fecha es correcta}
function Tform1.ValidaFecha(Fecha:String):Boolean;
var
  Anno, Mes, Dia: Word;
begin
  try
    DecodeDate(StrToDate(Fecha), Anno, Mes, Dia);
  except;
    Result:=false;
    Exit;
  end;
  Result:=true;
end;

procedure TForm1.ADOTPastorDistritoEntradaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Entrada').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Entrada').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.ADOTPastorDistritoSalidaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Salida').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Salida').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.ADOTPastorIglesiaEntradaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Entrada').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Entrada').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.ADOTPastorIglesiaSalidaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Salida').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Salida').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.ADOTObrerasEntradaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Entrada').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Entrada').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.ADOTObrerasSalidaSetText(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Salida').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Salida').Clear;
    Abort;Exit;
  end;
end;
{Procedimientos hechos por mi para tratar el evento OnSetText de 'Fecha Desfraternizado'}
procedure TForm1.TrataTextoFechaDesfraternizado(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Fecha Desfraternizado').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Fecha Desfraternizado').Clear;
    Abort;Exit;
  end;
end;
{Procedimientos hechos por mi para tratar el evento OnSetText de 'Fecha Bautismo'}
procedure TForm1.TrataTextoFechaBautismo(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Fecha Bautismo').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Fecha Bautismo').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.TrataTextoFechaNacimiento(Sender: TField; const Text: String);
begin
  if ValidaFecha(Text) then
  Sender.DataSet.FieldByName('Fecha Nacimiento').AsDateTime:=StrToDate(Text)
  else
  begin
    Application.MessageBox('Fecha incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Sender.DataSet.FieldByName('Fecha Nacimiento').Clear;
    Abort;Exit;
  end;
end;

procedure TForm1.TrataTextoEdad(Sender: TField; const Text: String);
begin
  try
    if Text<>'' then
    begin
      StrToInt(Text);
      Sender.DataSet.FieldByName('Edad').AsInteger:=StrToInt(Text);
    end else
    begin
      Sender.DataSet.FieldByName('Edad').Clear;
    end;
  except;
    Application.MessageBox('Edad incorrecta...      ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Abort;Exit;
  end;
end;

procedure TForm1.TrataTextoSalario2(Sender:TField;var Text:String;DisplayText:Boolean);
begin
  text:=FormatFloat('#0.0,0 $',Sender.AsCurrency);//DisplayText:=true;
end;

procedure TForm1.TrataTextoSalario1(Sender: TField;const Text: String);
var s:String;
begin
  try
    s:=text;
    if pos(' $',s)>0 then delete (s,Pos(' $',s),2);
    while pos('.',s)>0 do delete (s,Pos('.',s),1);
    strToCurr(s);
    Sender.AsCurrency:=strToCurr(s);
  except;
    Application.MessageBox('     Salario incorrecto...   '#13+
                           'Viola el formato establecido.   ',
                           'Aviso de error...',MB_OK	+MB_ICONSTOP);
    Abort;Exit;
  end;
end;

procedure TForm1.EliminarRegistrosSueltos1Click(Sender: TObject);
begin
  if AbrirBaseDatos.Execute then
    if AbrirBaseDatos.FileName='' then
    begin
      exit;
    end else
    begin
      ADODatSetSueltos.Close;
      ADODatSetSueltos.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
            AbrirBaseDatos.FileName+';Mode=Share Deny None;Extended Properties="";'+
            'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
            'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
            'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
            'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
            'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
            'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
            'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
      ADODatSetSueltos.CommandText:='Delete TAsociacion.* FROM '+
        'TAsociacion WHERE (((TAsociacion.IdUnion) Is Null))';
      Screen.Cursor := crHourGlass;//Cursor de espera
      try
        ADODatSetSueltos.Open;
      except;
        ADODatSetSueltos.Close;
      end;
      ADODatSetSueltos.Close;
      ADODatSetSueltos.CommandText:='Delete TDistrito.* FROM '+
        'TDistrito WHERE (((TDistrito.IdProvincia) Is Null))';
      try
        ADODatSetSueltos.Open;
      except;
        ADODatSetSueltos.Close;
      end;
      ADODatSetSueltos.Close;
      ADODatSetSueltos.CommandText:='Delete TIglesia.* FROM '+
        'TIglesia WHERE (((TIglesia.IdDistrito) Is Null))';
      try
        ADODatSetSueltos.Open;
      except;
        ADODatSetSueltos.Close;
      end;
      ADODatSetSueltos.Close;
      ADODatSetSueltos.CommandText:='Delete TMiembros.* FROM '+
        'TMiembros WHERE (((TMiembros.IdIglesia) Is Null))';
      try
        ADODatSetSueltos.Open;
      except;
        ADODatSetSueltos.Close;
      end;
      ADODatSetSueltos.Close;
      ADODatSetSueltos.CommandText:='Delete TProvincia.* FROM '+
        'TProvincia WHERE (((TProvincia.IdAsociacion) Is Null))';
      try
        ADODatSetSueltos.Open;
      except;
        ADODatSetSueltos.Close;
      end;
      Screen.Cursor := crDefault;//por defecto
    end;
end;

procedure TForm1.ActualizarEdaddelosMiembros1Click(Sender: TObject);
var
  WhereCad,Calculo: String;
begin
  if DBGrid1.DataSource=nil then
  begin
    Application.MessageBox(' Tabla Mestra desconectada.    '+#13+
                            'Debe conectar la Tabla Maestra.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  if Application.MessageBox('Se actualizará la edad de los miembros.   '+#13+
                            'de la última consulta realizada'+#13+
                            '   ¿Continúa con la actualización?',
                           'Aviso...',MB_YESNO	+MB_ICONEXCLAMATION) =
                           ID_NO Then exit;
  WhereCad:='';
  Calculo:='(((Len(Left([TMiembros].[No Identidad],6)))=6) AND '+
    '((IsDate(Mid([TMiembros]![No Identidad],5,2)'+
    '+"/"+Mid([TMiembros]![No Identidad],3,2)+"/"+Mid([TMiembros]![No Identidad],1,2)'+
    '))<>False))';
  if Activa then
  begin
    if form2.CheckBox1.Checked then
      WhereCad:='(((TUnion.IdUnion)='+IdU+') AND ((TAsociacion.IdAsociacion)='+IdA+
      ') AND ((TProvincia.IdProvincia)='+IdP+') AND ((TDistrito.IdDistrito)='+IdD+
      ') AND ((TIglesia.IdIglesia)='+IdI+'))'+Prueba2
    else
      WhereCad:='(((TUnion.IdUnion)='+IdU+') AND ((TAsociacion.IdAsociacion)='+IdA+
      ') AND ((TProvincia.IdProvincia)='+IdP+') AND ((TDistrito.IdDistrito)='+IdD+
      ') AND ((TIglesia.IdIglesia)='+IdI+'))'+
      ' and (Nombre Like '+ QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Primer Apellido] Like '+ QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Segundo Apellido] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Sexo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Dirección] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Estado Civil] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Oficio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Dones] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Pastor que Bautizó] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Fecha Bautismo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Fecha Desfraternizado ] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Condición] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Localidad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Teléfono] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Traslado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Fallecido] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Ext Hogar] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Rebautismo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[No Identidad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Otra Información] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Enfermedades] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Idiomas] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
                  '[Edad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+')';
  end else
  if Normal then
  begin
    WhereCad:='(((TUnion.IdUnion)='+IdU+') AND ((TAsociacion.IdAsociacion)='+IdA+
      ') AND ((TProvincia.IdProvincia)='+IdP+') AND ((TDistrito.IdDistrito)='+IdD+
      ') AND ((TIglesia.IdIglesia)='+IdI+'))';
  end else
  if Seleccion then
  begin
    if IdU<>'' then WhereCad:='((TUnion.IdUnion)='+IdU+')';
    if IdA<>'' then WhereCad:=WhereCad+' AND ((TAsociacion.IdAsociacion)='+IdA+')';
    if IdP<>'' then WhereCad:=WhereCad+' AND ((TProvincia.IdProvincia)='+IdP+')';
    if IdD<>'' then WhereCad:=WhereCad+' AND ((TDistrito.IdDistrito)='+IdD+')';
    if IdI<>'' then WhereCad:=WhereCad+' AND ((TIglesia.IdIglesia)='+IdI+')';
    WhereCad:=WhereCad+Prueba2;
  end else
  if Global then
  begin
    delete(Prueba2,1,5);
    WhereCad:='';
  end else exit;
  if WhereCad<>'' then WhereCad:=' Where '+'('+WhereCad+')'+' AND '+Calculo
    else WhereCad:=' Where '+Prueba2+' AND '+Calculo;
  ADODatSetSueltos.Close;
  ADODatSetSueltos.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
        TablaFuente+';Mode=Share Deny None;Extended Properties="";'+
        'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
        'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
        'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
        'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
        'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
        'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
        'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
  ADODatSetSueltos.CommandText:='UPDATE (TUnion INNER JOIN TAsociacion ON TUnion.IdUnion'+
  '=TAsociacion.IdUnion) INNER JOIN ((TProvincia INNER JOIN TDistrito ON '+
  'TProvincia.IdProvincia=TDistrito.IdProvincia) INNER JOIN (TIglesia INNER '+
  'JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON '+
  'TDistrito.IdDistrito=TIglesia.IdDistrito) ON TAsociacion.IdAsociacion='+
  'TProvincia.IdAsociacion SET TMiembros.Edad=IIf(Format(Date(),"mmdd")<'+
  'Format(DateValue(Mid(TMiembros![No Identidad],5,2)+"/"+Mid(TMiembros!'+
  '[No Identidad],3,2)+"/"+Mid(TMiembros![No Identidad],1,2)),"mmdd"),'+
  'Year(Date())-Year(DateValue(Mid(TMiembros![No Identidad],5,2)+"/"+'+
  'Mid(TMiembros![No Identidad],3,2)+"/"+Mid(TMiembros![No Identidad],1,2)))-'+
  '1,Year(Date())-Year(DateValue(Mid(TMiembros![No Identidad],5,2)+"/"+'+
  'Mid(TMiembros![No Identidad],3,2)+"/"+Mid(TMiembros![No Identidad],1,2))))'+WhereCad;
  {Para calcular la Eadad segun Fecha de Nacimiento}
  {SET TMiembros.Edad=IIf(Format(Date(),"mmdd")<Format(DateValue(TMiembros.[Fecha Nacimiento]),"mmdd"),Year(Date())-Year(DateValue(TMiembros.[Fecha Nacimiento]))-1,Year(Date())-Year(DateValue(TMiembros.[Fecha Nacimiento])))}
  Screen.Cursor:=crHourGlass;//Cursor de espera
  try
    ADODatSetSueltos.Open;
  except;
    ADODatSetSueltos.Close;
  end;
  ADODatSetSueltos.Close;
  Screen.Cursor:=crDefault;
end;

procedure TForm1.ActualizarEdaddelosMiembrosporNoIdentidad1Click(Sender: TObject);
var
  WhereCad,Calculo: String;
begin
  if DBGrid1.DataSource=nil then
  begin
    Application.MessageBox(' Tabla Mestra desconectada.    '+#13+
                            'Debe conectar la Tabla Maestra.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  if Application.MessageBox('Se actualizará la edad de los miembros.   '+#13+
                            'de la última consulta realizada'+#13+
                            '   ¿Continúa con la actualización?',
                           'Aviso...',MB_YESNO	+MB_ICONEXCLAMATION) =
                           ID_NO Then exit;
  WhereCad:='';
  Calculo:='(IsDate(TMiembros.[Fecha Nacimiento])<>False)';
  if Activa then
  begin
    if form2.CheckBox1.Checked then
      WhereCad:='(((TUnion.IdUnion)='+IdU+') AND ((TAsociacion.IdAsociacion)='+IdA+
      ') AND ((TProvincia.IdProvincia)='+IdP+') AND ((TDistrito.IdDistrito)='+IdD+
      ') AND ((TIglesia.IdIglesia)='+IdI+'))'+Prueba2
    else
      WhereCad:='(((TUnion.IdUnion)='+IdU+') AND ((TAsociacion.IdAsociacion)='+IdA+
      ') AND ((TProvincia.IdProvincia)='+IdP+') AND ((TDistrito.IdDistrito)='+IdD+
      ') AND ((TIglesia.IdIglesia)='+IdI+'))'+
      ' and (Nombre Like '+ QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Primer Apellido] Like '+ QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Segundo Apellido] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Sexo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Dirección] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Estado Civil] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Oficio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Dones] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Pastor que Bautizó] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Fecha Bautismo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Fecha Nacimiento] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Fecha Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Condición] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Localidad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Teléfono] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Traslado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Fallecido] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Ext Hogar] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Rebautismo] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[No Identidad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Centro Trabajo/Estudio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Dirección Trabajo/Estudio] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Cónyuge Adventista] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Ocupación Actual] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Salario] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Obrero que Trabajó] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Nivel Escolar] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Nació en Hogar ASD] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Causa Desfraternizado] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Religión Practicada] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Otra Información] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Enfermedades] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Idiomas] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+' OR '+
      '[Edad] Like '+QuotedStr('%'+Form2.RichEdit1.Text+'%')+')';
  end else
  if Normal then
  begin
    WhereCad:='(((TUnion.IdUnion)='+IdU+') AND ((TAsociacion.IdAsociacion)='+IdA+
      ') AND ((TProvincia.IdProvincia)='+IdP+') AND ((TDistrito.IdDistrito)='+IdD+
      ') AND ((TIglesia.IdIglesia)='+IdI+'))';
  end else
  if Seleccion then
  begin
    if IdU<>'' then WhereCad:='((TUnion.IdUnion)='+IdU+')';
    if IdA<>'' then WhereCad:=WhereCad+' AND ((TAsociacion.IdAsociacion)='+IdA+')';
    if IdP<>'' then WhereCad:=WhereCad+' AND ((TProvincia.IdProvincia)='+IdP+')';
    if IdD<>'' then WhereCad:=WhereCad+' AND ((TDistrito.IdDistrito)='+IdD+')';
    if IdI<>'' then WhereCad:=WhereCad+' AND ((TIglesia.IdIglesia)='+IdI+')';
    WhereCad:=WhereCad+Prueba2;
  end else
  if Global then
  begin
    delete(Prueba2,1,5);
    WhereCad:='';
  end else exit;
  if WhereCad<>'' then WhereCad:=' Where '+'('+WhereCad+')'+' AND '+Calculo
    else WhereCad:=' Where '+Prueba2+' AND '+Calculo;
  ADODatSetSueltos.Close;
  ADODatSetSueltos.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
        TablaFuente+';Mode=Share Deny None;Extended Properties="";'+
        'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
        'Jet OLEDB:Database Password='+Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
        'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
        'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
        'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
        'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
        'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
  ADODatSetSueltos.CommandText:='UPDATE (TUnion INNER JOIN TAsociacion ON TUnion.IdUnion'+
  '=TAsociacion.IdUnion) INNER JOIN ((TProvincia INNER JOIN TDistrito ON '+
  'TProvincia.IdProvincia=TDistrito.IdProvincia) INNER JOIN (TIglesia INNER '+
  'JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON '+
  'TDistrito.IdDistrito=TIglesia.IdDistrito) ON TAsociacion.IdAsociacion='+
  'TProvincia.IdAsociacion SET TMiembros.Edad=IIf(Format(Date(),"mmdd")<'+
  'Format(DateValue(TMiembros.[Fecha Nacimiento]),"mmdd"),Year(Date())-'+
  'Year(DateValue(TMiembros.[Fecha Nacimiento]))-1,Year(Date())-'+
  'Year(DateValue(TMiembros.[Fecha Nacimiento])))'+WhereCad;
  Screen.Cursor:=crHourGlass;//Cursor de espera
  try
    ADODatSetSueltos.Open;
  except;
    ADODatSetSueltos.Close;
  end;
  ADODatSetSueltos.Close;
  Screen.Cursor:=crDefault;
end;

procedure TForm1.ADODatSetSueltosAfterClose(DataSet: TDataSet);
begin
  CamposMostrados;
end;

function TForm1.Encript(aFrase: String; aClave: Integer): String;
var aa: Integer;
begin
   Result:='';
   RandSeed:=aClave;
   for aa:=1 to Length(aFrase) do
       Result:=Result+Chr(Byte(aFrase[aa]) xor random(9));
end; 
 
function TForm1.Decript(aFrase: String; aClave: Integer): String;
var aa: Integer;
begin
   Result:='';
   RandSeed:=aClave;
   for aa:=1 to Length(aFrase) do 
       Result:=Result+Chr(Byte(aFrase[aa]) xor random(9));
end; 

procedure TForm1.ConfigPageExecute(Sender: TObject);
begin
  FormConfigPage.ShowModal;FormConfigPage.Update;
end;

procedure TForm1.ADOTMiembrosBeforeClose(DataSet: TDataSet);
begin
  {try
    SaveColPos(DBGrid1);
  except;
    ShowMessage('No se guardaron klos datos...');
  end;}
end;

procedure TForm1.ADOTMiembrosAfterOpen(DataSet: TDataSet);
var
  col,i: Integer;
  column: TColumn;
begin
  EditBuscar2.ReadOnly:=false;
  //EditBuscar2.DataSource:=DBGrid1.DataSource;
  if Cuentabusca>=0 then
    for i:=0 to Cuentabusca do DBGrid1.DataSource.DataSet.FreeBookmark(marcabusca[i]);
    Cuentabusca:=-1;
  {try
    loadColPos(DBGrid1);
  except;
  end; }
  for col:=0 to DBGrid1.Columns.Count-7 do
  begin
    DBGrid1.Columns.Items[col].Title.Alignment:=taCenter;
    column:=DBGrid1.Columns.Items[col];
    if (column.Title.Caption='Fecha Bautismo') then
    begin
      Column.ButtonStyle:=cbsEllipsis;Column.Alignment:=taCenter;
      DBGrid1.Fields[col].EditMask:='!99/99/0000;1;_';
      DBGrid1.Fields[col].OnSetText:=TrataTextoFechaBautismo;
    end else
    if (column.Title.Caption='Fecha Desfraternizado') then
    begin
      Column.ButtonStyle:=cbsEllipsis;Column.Alignment:=taCenter;
      DBGrid1.Fields[col].EditMask:='!99/99/0000;1;_';
      DBGrid1.Fields[col].OnSetText:=TrataTextoFechaDesfraternizado;
    end else
    if (column.Title.Caption='Fecha Nacimiento') then
    begin
      Column.ButtonStyle:=cbsEllipsis;Column.Alignment:=taCenter;
      DBGrid1.Fields[col].EditMask:='!99/99/0000;1;_';
      DBGrid1.Fields[col].OnSetText:=TrataTextoFechaNacimiento;
    end else
    If (column.Title.Caption='Sexo') then
    begin
      Column.ButtonStyle:=cbsAuto;Column.Alignment:=taCenter;
      Column.PickList.Insert(0,'F');
      Column.PickList.Insert(1,'M');
      Column.DropDownRows:=2;
    end else
    If (column.Title.Caption='Estado Civil') then
    begin
      Column.ButtonStyle:=cbsAuto;Column.Alignment:=taLeftJustify;
      Column.PickList.Insert(0,'Casado/a');
      Column.PickList.Insert(1,'Divorciado/a');
      Column.PickList.Insert(2,'Soltero/a');
      Column.PickList.Insert(3,'Viudo/a');
      Column.DropDownRows:=4;
    end else
    If (column.Title.Caption='Condición') then
    begin
      Column.ButtonStyle:=cbsAuto;Column.Alignment:=taLeftJustify;
      Column.PickList.Insert(0,'Bien');
      Column.PickList.Insert(1,'Regular');
      Column.PickList.Insert(2,'Mal');
      Column.DropDownRows:=3;
    end else
    If (column.Title.Caption='Dones') then
    begin
     Column.ButtonStyle:=cbsAuto;Column.Alignment:=taLeftJustify;
     Column.PickList.Insert(0,'Apóstol');
     Column.PickList.Insert(1,'Conocimiento');
     Column.PickList.Insert(2,'Discernimiento');
     Column.PickList.Insert(3,'Enseñanza');
     Column.PickList.Insert(4,'Evangelista');
     Column.PickList.Insert(5,'Fe');
     Column.PickList.Insert(6,'Int. Lenguas');
     Column.PickList.Insert(7,'Lengua Extraña');
     Column.PickList.Insert(8,'Milagros');
     Column.PickList.Insert(9,'Pastor');
     Column.PickList.Insert(10,'Profecía');
     Column.PickList.Insert(11,'Sabiduría');
     Column.PickList.Insert(12,'Sanidad');
     Column.PickList.Insert(13,'Sevicio');
     Column.DropDownRows:=7;
    end else
    If (column.Title.Caption='Causa Desfraternizado') then
    begin
     Column.ButtonStyle:=cbsAuto;Column.Alignment:=taLeftJustify;
     Column.PickList.Insert(0,'Violación del 1º Mandamiento');
     Column.PickList.Insert(1,'Violación del 2º Mandamiento');
     Column.PickList.Insert(2,'Violación del 3º Mandamiento');
     Column.PickList.Insert(3,'Violación del 4º Mandamiento');
     Column.PickList.Insert(4,'Violación del 5º Mandamiento');
     Column.PickList.Insert(5,'Violación del 6º Mandamiento');
     Column.PickList.Insert(6,'Violación del 7º Mandamiento');
     Column.PickList.Insert(7,'Violación del 8º Mandamiento');
     Column.PickList.Insert(8,'Violación del 9º Mandamiento');
     Column.PickList.Insert(9,'Violación del 10º Mandamiento');
     Column.PickList.Insert(10,'Violación abierta de la ley de Dios');
     Column.PickList.Insert(11,'Alcoholismo');
     Column.PickList.Insert(12,'Tabaquismo');
     Column.PickList.Insert(13,'Drogadicción');
     Column.PickList.Insert(14,'Escándalo público');
     Column.PickList.Insert(15,'Inmoralidad sexual');
     Column.PickList.Insert(16,'Enseñanzas contrarias a la Biblia');
     Column.PickList.Insert(17,'Juegos al azar');
     Column.PickList.Insert(18,'Falsedad voluntaria y habitual');
     Column.PickList.Insert(19,'Violencia física');
     Column.PickList.Insert(20,'Abuso doméstico');
     Column.PickList.Insert(21,'Conducta desordenada');
     Column.PickList.Insert(22,'Negativa ante las autoridades de la Igl.');
     Column.PickList.Insert(23,'Adhesión a mov. divisionista o desleal');
     Column.DropDownRows:=7;
    end else
    if (column.Title.Caption='Salario') then
    begin
      DBGrid1.Fields[col].OnSetText:=TrataTextoSalario1;
      DBGrid1.Fields[col].OnGetText:=TrataTextoSalario2;
    end else
    If (column.Title.Caption='Edad') then
    begin
      Column.Alignment:=taCenter;
      DBGrid1.Fields[col].OnSetText:=TrataTextoEdad;
    end;
  end;
end;

procedure TForm1.NuevaUExecute(Sender: TObject);
Var
  NuevoNodo: TTreeNode;
  Identificador: PRecordId;
begin
  Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
  LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
                  LDistrito.Caption:='';LIglesia.Caption:='';
  EditSiNo:=false; CandadoSiNo; CandadoPulzado;QuitaSeleccionDeNodo;
  ADOTUnion.Close;
  ADOTUnion.CommandText:='Select TUnion.* from TUnion Order By Unión';
  try
    ADOTUnion.Open;
  except;
    Application.MessageBox(' Debe cargar una Base de Datos. '+#13+
                            'Archivo\Abrir Base se Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  New(Identificador);
  { Añadimos un nuevo nodo al primer nivel }
  NuevoNodo := TreeView1.Items.Add(Nil, 'NuevaUnión');
  { Establecemos las imágenes }
  with NuevoNodo Do
  Begin
    ImageIndex := 0;
    SelectedIndex := 0;
    TreeView1.Selected := NuevoNodo;
    EditText; { y editamos el texto }
    ADOTUnion.Insert;
    ADOTUnion.FieldByName('Unión').AsString:=NuevoNodo.Text;
    ADOTUnion.Post;
    Identificador^.Id:=ADOTUnion.FieldByName('IdUnion').AsInteger;
    Data:=Identificador;
  End;
  //ActualizaNodos;
  //VerExpandirSiNo;
End;

procedure TForm1.NuevaAExecute(Sender: TObject);
Var
  u: Integer;
  NuevoNodo: TTreeNode;
  Identificador: PRecordId;
begin
  Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
  LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
                  LDistrito.Caption:='';LIglesia.Caption:='';
  EditSiNo:=false; CandadoSiNo; CandadoPulzado;QuitaSeleccionDeNodo;
  ADOTUnion.Close;ADOTAsociacion.Close;
  ADOTUnion.CommandText:='Select TUnion.* from TUnion Order By Unión';
  ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion Order By Asociación';
  try
    ADOTUnion.Open;
    ADOTAsociacion.Open;
  except;
    Application.MessageBox(' Debe cargar una Base de Datos. '+#13+
                            'Archivo\Abrir Base se Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  New(Identificador);
  { Si no hay un nodo seleccionado actualmente }
  if (TreeView1.Selected=Nil) Or (TreeView1.Selected.Level<>0) Then
    { no podemos saber a qué unión se desea añadir }
    Application.MessageBox(' Seleccione la Unión a la que '+#13+
                            'desea añadir la Asociación.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION)
  else
    begin
      { Obtenemos el índice absoluto del nodo seleccionado }
       u:= TreeView1.Selected.AbsoluteIndex;
      { y vamos subiendo por el árbol hasta encontrar el nodo
        correspondiente a la Unión}
      while TreeView1.Items[u].Level <> 0 Do
        Dec(u);
      { Añadimos un nuevo nodo estableciendo el titulo y sus
        imágenes }
      NuevoNodo := TreeView1.Items.AddChild(TreeView1.Items[u],
                     'NuevaAsociación');
      NuevoNodo.ImageIndex := 2;
      NuevoNodo.SelectedIndex := 2;
      {Expandimos el nodo al que se acaba de añadir la Asociación}
      TreeView1.Items[u].Expand(False);
      { Seleccionamos el nuevo nodo como el actual }
      TreeView1.Selected := NuevoNodo;
      NuevoNodo.EditText; { y editamos el título }

      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                     IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      begin
        ADOTAsociacion.Insert;
        ADOTAsociacion.FieldByName('Asociación').AsString:=NuevoNodo.Text;
        ADOTAsociacion.Post;
        Identificador^.Id:=ADOTAsociacion.FieldByName('IdAsociacion').AsInteger;
        NuevoNodo.Data:=Identificador;
      end else
      begin
        Application.MessageBox('Imposible actualizar datos...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
        NuevoNodo.Delete;
      end;
    end;
    ActualizaNodos;
end;


procedure TForm1.NuevaPExecute(Sender: TObject);
Var
  u,a: Integer;
  NuevoNodo: TTreeNode;
  Identificador: PRecordId;
begin
  Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
  LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
                  LDistrito.Caption:='';LIglesia.Caption:='';
  EditSiNo:=false; CandadoSiNo; CandadoPulzado;QuitaSeleccionDeNodo;
  ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;
  ADOTUnion.CommandText:='Select TUnion.* from TUnion Order By Unión';
  ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion Order By Asociación';
  ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia Order By Provincia';
  try
    ADOTUnion.Open;
    ADOTAsociacion.Open;
    ADOTProvincia.Open;
  except;
    Application.MessageBox(' Debe cargar una Base de Datos. '+#13+
                            'Archivo\Abrir Base se Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  New(Identificador);
  { Si no hay un nodo seleccionado actualmente }
 If (TreeView1.Selected=Nil) Or (TreeView1.Selected.Level<>1) Then
    { no podemos saber a qué Asociacion se desea añadir }
    Application.MessageBox(' Seleccione la Asociación a la que '+#13+
                            'desea añadir la Provincia.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION)
  Else
    Begin
      { Obtenemos el índice absoluto del nodo seleccionado }
      a := TreeView1.Selected.AbsoluteIndex;
      { y vamos subiendo por el árbol hasta encontrar la Asociacion
        correspondiente }
      While TreeView1.Items[a].Level <> 1 Do
        Dec(a);
        u:=TreeView1.Items[a].AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do
        Dec(u);
      { Añadimos un nuevo nodo estableciendo el titulo y sus
        imágenes }
      NuevoNodo := TreeView1.Items.AddChild(TreeView1.Items[a],
                     'NuevaProvincia');
      NuevoNodo.ImageIndex := 4;
      NuevoNodo.SelectedIndex := 4;
      {Expandimos el nodo al que se acaba de añadir el capítulo}
      TreeView1.Items[a].Expand(False);
      { Seleccionamos el nuevo nodo como el actual }
      TreeView1.Selected := NuevoNodo;
      NuevoNodo.EditText; { y editamos el título }
      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                     IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Items[a].Text,
                     IntToStr(PRecordId(TreeView1.Items[a].Data)^.Id)]),[]) then
      begin
        ADOTProvincia.Insert;
        ADOTProvincia.FieldByName('Provincia').AsString:=NuevoNodo.Text;
        ADOTProvincia.Post;
        Identificador^.Id:=ADOTProvincia.FieldByName('IdProvincia').AsInteger;
        NuevoNodo.Data:=Identificador;
      end else
      begin
        Application.MessageBox('Imposible actualizar datos...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
        NuevoNodo.Delete;
      end;
      ActualizaNodos;
    End;
end;

procedure TForm1.NuevoDExecute(Sender: TObject);
Var
  u,a,p: Integer;
  NuevoNodo: TTreeNode;
  Identificador: PRecordId;
begin
  Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
  LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
                  LDistrito.Caption:='';LIglesia.Caption:='';
  EditSiNo:=false; CandadoSiNo; CandadoPulzado;QuitaSeleccionDeNodo;
  ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;ADOTDistrito.Close;
  ADOTUnion.CommandText:='Select TUnion.* from TUnion Order By Unión';
  ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion Order By Asociación';
  ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia Order By Provincia';
  ADOTDistrito.CommandText:='Select TDistrito.* from TDistrito Order By Distrito';
  try
    ADOTUnion.Open;
    ADOTAsociacion.Open;
    ADOTProvincia.Open;
    ADOTDistrito.Open;
  except;
    Application.MessageBox(' Debe cargar una Base de Datos. '+#13+
                            'Archivo\Abrir Base se Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  New(Identificador);
  { Si no hay un nodo seleccionado o si el actual es la Asociacion,
    no sabemos a qué Distrito añadir }
  If (TreeView1.Selected=Nil) Or (TreeView1.Selected.Level<>2) Then
    Application.MessageBox(' Seleccione la Provincia a la que '+#13+
                            'desea añadir el Distrito.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION)
  Else
    Begin
      { Obtenemos el índice absoluto del nodo actual }
      p := TreeView1.Selected.AbsoluteIndex;
      { y subimos por el árbol hasta encontrar el nodo 
        correspondiente al capitulo }
      While TreeView1.Items[p].Level <> 2 Do
        Dec(p);
      a:=TreeView1.Items[p].AbsoluteIndex;
      While TreeView1.Items[a].Level <> 1 Do
        Dec(a);
      u:=TreeView1.Items[a].AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do
        Dec(u);
      { Añadimos un nuevo nodo y establecemos su título e
        imágenes }
      NuevoNodo := TreeView1.Items .AddChild(TreeView1.Items[p],
        'NuevoDistrito');
      NuevoNodo.ImageIndex := 6;
      NuevoNodo.SelectedIndex := 6;
      { Expandimos el nodo al que se ha añadido }
      TreeView1.Items[p].Expand(False);
      TreeView1.Selected := NuevoNodo;
      NuevoNodo.EditText; { y editamos el título }
      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                     IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Items[a].Text,
                     IntToStr(PRecordId(TreeView1.Items[a].Data)^.Id)]),[]) then
      if ADOTProvincia.Locate('Provincia;IdProvincia',VarArrayOf([TreeView1.Items[p].Text,
                     IntToStr(PRecordId(TreeView1.Items[p].Data)^.Id)]),[]) then
      begin
        ADOTDistrito.Insert;
        ADOTDistrito.FieldByName('Distrito').AsString:=NuevoNodo.Text;
        ADOTDistrito.Post;
        Identificador^.Id:=ADOTDistrito.FieldByName('IdDistrito').AsInteger;
        NuevoNodo.Data:=Identificador;
      end else
      begin
        Application.MessageBox('Imposible actualizar datos...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
        NuevoNodo.Delete;
      end;
      ActualizaNodos;
    End;
end;

procedure TForm1.NuevaIExecute(Sender: TObject);
Var
  u,a,p,d,i: Integer;
  NuevoNodo: TTreeNode;
  Identificador: PRecordId;
begin
  Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
  LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
                  LDistrito.Caption:='';LIglesia.Caption:='';
  IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
  EditSiNo:=false; CandadoSiNo; CandadoPulzado;QuitaSeleccionDeNodo;
  ADOTUnion.Close;ADOTAsociacion.Close;ADOTProvincia.Close;ADOTDistrito.Close;ADOTIglesia.Close;
  ADOTUnion.CommandText:='Select TUnion.* from TUnion Order By Unión';
  ADOTAsociacion.CommandText:='Select TAsociacion.* from TAsociacion Order By Asociación';
  ADOTProvincia.CommandText:='Select TProvincia.* from TProvincia Order By Provincia';
  ADOTDistrito.CommandText:='Select TDistrito.* from TDistrito Order By Distrito';
  ADOTIglesia.CommandText:='Select TIglesia.* from TIglesia Order By Iglesia';
  try
    ADOTUnion.Open;
    ADOTAsociacion.Open;
    ADOTProvincia.Open;
    ADOTDistrito.Open;
    ADOTIglesia.Open;
  except;
    Application.MessageBox(' Debe cargar una Base de Datos. '+#13+
                            'Archivo\Abrir Base se Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
    exit;
  end;
  New(Identificador);
  for i:=0 to TreeView1.Items.Count-1 do
    if TreeView1.Items[i].Level=4 then
      if TreeView1.Items[i].SelectedIndex=9 then
        TreeView1.Items[i].SelectedIndex:=8;
  { Si no hay un nodo seleccionado o si el actual es la Asociacion,
    no sabemos a qué Distrito añadir }
  If (TreeView1.Selected=Nil) Or (TreeView1.Selected.Level<>3) Then
    Application.MessageBox(' Seleccione el Distrito al que '+#13+
                            'desea añadir la Iglesia.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION)
  Else
    Begin
      { Obtenemos el índice absoluto del nodo actual }
      d := TreeView1.Selected.AbsoluteIndex;
      { y subimos por el árbol hasta encontrar el nodo
        correspondiente al capitulo }
      While TreeView1.Items[d].Level <> 3 Do
        Dec(d);
      p:=TreeView1.Items[d].AbsoluteIndex;
      While TreeView1.Items[p].Level <> 2 Do
        Dec(p);
      a:=TreeView1.Items[p].AbsoluteIndex;
      While TreeView1.Items[a].Level <> 1 Do
        Dec(a);
      u:=TreeView1.Items[a].AbsoluteIndex;
      While TreeView1.Items[u].Level <> 0 Do
        Dec(u);
      { Añadimos un nuevo nodo y establecemos su título e
        imágenes }
      NuevoNodo := TreeView1.Items.AddChild(TreeView1.Items[d],
        'NuevaIglesia');
      NuevoNodo.ImageIndex := 8;
      NuevoNodo.SelectedIndex := 8;
      { Expandimos el nodo al que se ha añadido }
      TreeView1.Items[d].Expand(False);
      TreeView1.Selected := NuevoNodo;
      NuevoNodo.EditText; { y editamos el título }
      if ADOTUnion.Locate('Unión;IdUnion',VarArrayOf([TreeView1.Items[u].Text,
                     IntToStr(PRecordId(TreeView1.Items[u].Data)^.Id)]),[]) then
      if ADOTAsociacion.Locate('Asociación;IdAsociacion',VarArrayOf([TreeView1.Items[a].Text,
                     IntToStr(PRecordId(TreeView1.Items[a].Data)^.Id)]),[]) then
      if ADOTProvincia.Locate('Provincia;IdProvincia',VarArrayOf([TreeView1.Items[p].Text,
                     IntToStr(PRecordId(TreeView1.Items[p].Data)^.Id)]),[]) then
      if ADOTDistrito.Locate('Distrito;IdDistrito',VarArrayOf([TreeView1.Items[d].Text,
                     IntToStr(PRecordId(TreeView1.Items[d].Data)^.Id)]),[]) then
      begin
        ADOTIglesia.Insert;
        ADOTIglesia.FieldByName('Iglesia').AsString:=NuevoNodo.Text;
        ADOTIglesia.Post;
        Identificador^.Id:=ADOTIglesia.FieldByName('IdIglesia').AsInteger;
        NuevoNodo.Data:=Identificador;
        try
          DBGrid1.DataSource.DataSet.Close;
        except;
        end;

      end else
      begin
        Application.MessageBox('Imposible actualizar datos...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
        NuevoNodo.Delete;
      end;
      ActualizaNodos;
    end;
    BarraDeEstado;
end;

procedure TForm1.BorraNodoExecute(Sender: TObject);
begin
  BorrarNodo;
  ActualizaNodos;
end;

procedure TForm1.BorraTodosExecute(Sender: TObject);
begin
   If Application.MessageBox ('Puede que pierda datos importantes'+#13+
                             '       ¿Confirma el borrado?',
                             'Advertencia',mb_YesNo+MB_ICONQUESTION) =
                             ID_yes Then
    begin
      try
        ADOTUnion.Close;
        ADOTUnion.CommandText:='Delete TUnion.* from TUnion';
        ADOTUnion.Open;
      except;
        ADOTUnion.CommandText:='Select TUnion.* from TUnion';
        ADOTUnion.Open;
      end;
      TreeView1.Items.Clear; { los eliminamos del TreeView}
    end;
    ActualizaNodos;
    begin
      EditSiNo:=false;CandadoSiNo;
      CandadoPulzado;
      LUnion.Caption:='';LAsociacion.Caption:='';LProvincia.Caption:='';
      LDistrito.Caption:='';LIglesia.Caption:='';
      IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
      Union:='';Asociacion:='';Provincia:='';Distrito:='';Iglesia:='';
      DBGrid1.DataSource:=nil;
      BarraDeEstado;
    end;
end;

procedure TForm1.NuevaUUpdate(Sender: TObject);
begin
  if Not BoolPrueba then
  if ADOConnection1.Connected=true then
    NuevaU.Enabled:=true else NuevaU.Enabled:=false;
end;

procedure TForm1.NuevaAUpdate(Sender: TObject);
begin
  if not BoolPrueba then
  if TreeView1.Selected<>nil then
  begin
    if TreeView1.Selected.Level=0 then
    begin
      NuevaA.Enabled:=true;
    end else NuevaA.Enabled:=false;
  end else NuevaA.Enabled:=false;
end;

procedure TForm1.NuevaPUpdate(Sender: TObject);
begin
  if not BoolPrueba then
  if TreeView1.Selected<>nil then
  begin
    if TreeView1.Selected.Level=1 then
    begin
      NuevaP.Enabled:=true;
    end else NuevaP.Enabled:=false;
  end else NuevaP.Enabled:=false;
end;

procedure TForm1.NuevoDUpdate(Sender: TObject);
begin
  if not BoolPrueba then
  if TreeView1.Selected<>nil then
  begin
    if TreeView1.Selected.Level=2 then
    begin
      NuevoD.Enabled:=true;
    end else NuevoD.Enabled:=false;
  end else NuevoD.Enabled:=false;
end;

procedure TForm1.NuevaIUpdate(Sender: TObject);
begin
  if not BoolPrueba then
  if TreeView1.Selected<>nil then
  begin
    if TreeView1.Selected.Level=3 then
    begin
      NuevaI.Enabled:=true;
    end else NuevaI.Enabled:=false;
  end else NuevaI.Enabled:=false;
end;

procedure TForm1.BorraNodoUpdate(Sender: TObject);
begin
  if not BoolPrueba then
  if TreeView1.Items.Count>0 then
  begin
    if TreeView1.Selected<>nil then BorraNodo.Enabled:=true else
    BorraNodo.Enabled:=false;
  end else BorraNodo.Enabled:=false;
end;

procedure TForm1.BorraTodosUpdate(Sender: TObject);
begin
  if not BoolPrueba then
  if TreeView1.Items.Count>0 then
    BorraTodos.Enabled:=true else BorraTodos.Enabled:=false;
end;

procedure TForm1.ImprimirFormularioLleno1Click(Sender: TObject);
var i: Integer;NombS,Ap1,Ap2:Boolean;marca: Pointer;
begin
  if DBGrid1.DataSource<>nil then
  with FormTarjetero do
  begin
    NombS:=false;Ap1:=false;Ap2:=false;Reporte1:=false;
    //QRep2.DataSet:=DBGrid1.DataSource.DataSet;
    for i:=0 to DBGrid1.Columns.Count-7 do
    begin
      if DBGrid1.Columns.Items[i].Title.Caption='No Identidad' then
      begin
        QRDBIdentidad.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBIdentidad.DataField:='No Identidad';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Dirección' then
      begin
        QRDBDireccion.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBDireccion.DataField:='Dirección';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Fecha Nacimiento' then
      begin
        QRDBFNacimiento.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBFNacimiento.DataField:='Fecha Nacimiento';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Estado Civil' then
      begin
        QRDBECivil.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBECivil.DataField:='Estado Civil';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Oficio' then
      begin
        QRDBProfOfic.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBProfOfic.DataField:='Oficio';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Ocupación Actual' then
      begin
        QRDBOcupActual.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBOcupActual.DataField:='Ocupación Actual';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Centro Trabajo/Estudio' then
      begin
        QRDBCentroTrabajoEstudio.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBCentroTrabajoEstudio.DataField:='Centro Trabajo/Estudio';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Nivel Escolar' then
      begin
        QRDBNivelEscolar.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBNivelEscolar.DataField:='Nivel Escolar';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Dirección Trabajo/Estudio' then
      begin
        QRDBDireccionToE.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBDireccionToE.DataField:='Dirección Trabajo/Estudio';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Salario' then
      begin
        QRDBSalario.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBSalario.DataField:='Salario';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Fecha Bautismo' then
      begin
        QRDBFBautismo.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBFBautismo.DataField:='Fecha Bautismo';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Pastor que Bautizó' then
      begin
        QRDBPastorOficiante.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBPastorOficiante.DataField:='Pastor que Bautizó';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Obrero que Trabajó' then
      begin
        QRDBObreroTrabajo.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBObreroTrabajo.DataField:='Obrero que Trabajó';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Religión Practicada' then
      begin
        QRDBReligionAnterior.DataSet:=DBGrid1.DataSource.DataSet;
        QRDBReligionAnterior.DataField:='Religión Practicada';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Cónyuge Adventista' then
      begin
        QRExprConyugSi.Expression:='IF((Cónyuge Adventista)=''Si'',''X'','''')';
        QRExprConyugNo.Expression:='IF((Cónyuge Adventista)=''No'',''X'','''')';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Sexo' then
      begin
        QRExprSexoSi.Expression:='IF((Sexo)=''F'',''X'','''')';
        QRExprSexoNo.Expression:='IF((Sexo)=''M'',''X'','''')';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Nació en Hogar ASD' then
      begin
        QRExprHogarASDSi.Expression:='IF((Nació en Hogar ASD)=''Si'',''X'','''')';
        QRExprHogarASDNo.Expression:='IF((Nació en Hogar ASD)=''No'',''X'','''')';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Rebautismo' then
      begin
        QRExprReBautismoSi.Expression:='IF((Rebautismo)=''Si'',''X'','''')';
        QRExprReBautismoNo.Expression:='IF((Rebautismo)=''No'',''X'','''')';
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Nombre' then
      begin
        NombS:=true;
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Primer Apellido' then
      begin
        Ap1:=true;
      end else
      if DBGrid1.Columns.Items[i].Title.Caption='Segundo Apellido' then
      begin
        Ap2:=true;
      end;
    end;
    QRDBProvincia.DataSet:=ADOTProvincia;
    QRDBProvincia.DataField:='Provincia';
    QRDBIglesia.DataSet:=ADOTIglesia;
    QRDBIglesia.DataField:='Iglesia';
    if NombS and Ap1 and Ap2 then
      QRExprNombreAp.Expression:='(Nombre)+'' ''+(Primer Apellido)+'' ''+(Segundo Apellido)' else
    if NombS and Ap1 then
      QRExprNombreAp.Expression:='(Nombre)+'' ''+(Primer Apellido)' else
    if NombS and Ap2 then
      QRExprNombreAp.Expression:='(Nombre)+'' ''+(Segundo Apellido)' else
    if Ap1 and Ap2 then
      QRExprNombreAp.Expression:='(Primer Apellido)+'' ''+(Segundo Apellido)' else
    if NombS then
      QRExprNombreAp.Expression:='(Nombre)';
    QRExprEnfermedades.Expression:='UneMemoCadEnf';
    QRExprIdiomas.Expression:='UneMemoCadIdiom';
    //QRep2.PreviewModal;

    try
      marca:=DBGrid1.DataSource.DataSet.GetBookmark;
      FormTarjetero.QRep2.DataSet:=DBGrid1.DataSource.DataSet;
    except;
      exit;
    end;
    DBGrid1.DataSource.DataSet.DisableControls;
    try
      FormTarjetero.QRep2.OnPreview:=Muestra;
      FormTarjetero.QRep2.PreviewModal;
      formImpresion.ShowModal;
    except;
    end;
    
    try
      DBGrid1.DataSource.DataSet.EnableControls;
      DBGrid1.DataSource.DataSet.GotoBookmark(marca);
      DBGrid1.DataSource.DataSet.FreeBookmark(marca);
    except;
      DBGrid1.DataSource.DataSet.FreeBookmark(marca);
    end;
  end;
end;

procedure TForm1.ImprimirFormularioVaco1Click(Sender: TObject);
begin
  Reporte1:=false;
  if not ADOConnection1.Connected then
  begin
    try
      ADOConnection1.Open;
      cerrarBaseSi:=true;
    except;
    end;
  end;
  if ADOConnection1.Connected then
  begin
    cerrarBaseSi:=false;
    try
      with FormTarjetero do
      begin
        QRep2.DataSet:=ADOPageVacia;
        QRExprNombreAp.Expression:='';
        QRExprSexoSi.Expression:='';
        QRExprSexoNo.Expression:='';
        QRExprConyugSi.Expression:='';
        QRExprConyugNo.Expression:='';
        QRExprEnfermedades.Expression:='';
        QRExprHogarASDSi.Expression:='';
        QRExprHogarASDNo.Expression:='';
        QRExprReBautismoSi.Expression:='';
        QRExprReBautismoNo.Expression:='';
        QRExprIdiomas.Expression:='';
        QRDBIdentidad.DataSet:=nil;
        QRDBDireccion.DataSet:=nil;
        QRDBFNacimiento.DataSet:=nil;
        QRDBECivil.DataSet:=nil;
        QRDBProfOfic.DataSet:=nil;
        QRDBOcupActual.DataSet:=nil;
        QRDBCentroTrabajoEstudio.DataSet:=nil;
        QRDBNivelEscolar.DataSet:=nil;
        QRDBDireccionToE.DataSet:=nil;
        QRDBSalario.DataSet:=nil;
        QRDBFBautismo.DataSet:=nil;
        QRDBPastorOficiante.DataSet:=nil;
        QRDBObreroTrabajo.DataSet:=nil;
        QRDBReligionAnterior.DataSet:=nil;
        QRDBProvincia.DataSet:=nil;
        QRDBIglesia.DataSet:=nil;
      end;
    except;
      Application.MessageBox('Solo se muestra este informe cuando'+#13+
                             'hay conección con la Base de Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
      exit;
    end;
    try
      FormTarjetero.QRep2.OnPreview:=Muestra;
      FormTarjetero.QRep2.PreviewModal;
      formImpresion.ShowModal;
    except;
    end;
  end else
  Application.MessageBox('Solo se muestra este informe cuando'+#13+
                             'hay conección con la Base de Datos.',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
  if cerrarBaseSi then ADOConnection1.Close;
end;

procedure TForm1.ADOConnection1AfterConnect(Sender: TObject);
begin
  ADOPageVacia.Active:=true;
end;

procedure TForm1.EstablecerContrasea1Click(Sender: TObject);
begin
  FormEstablecerID.ShowModal;
end;

procedure TForm1.Eliminar1Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  try
    Registro := TRegistry.Create(KEY_READ);
    Registro.RootKey := HKEY_LOCAL_MACHINE;
                           //'\SYSTEM\Setup\AnswerFileMap'
    Registro.OpenKey(Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), False);
                                       //'ms_msdataware'
    CadID := Registro.ReadString(decript('hp^irlgugtite',987654321));
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
    exit;
  end;
  if CadID<>'' then
  begin
    FormBorrarID.ShowModal;
  end;
end;

procedure TForm1.DBGridAnnosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((ssCtrl in Shift) and (key=VK_DELETE)) then key:=0;
  Seleccionados(Sender);
  if PuedeEditar then
  begin
    if (key=VK_DELETE) then
    begin
      if Sender is TjvDBUltimGrid then
      with Sender as TjvDBUltimGrid do
      begin
        if (Not (DataSource.State in [dsEdit, dsInsert])) then
        begin
          if (SelectedRows.Count>0) then
          begin
            key:=0;
            ConfirmaBorrado(sender)
          end else key:=0;
        end;// else key:=0;
      end;
    end;
  end;// else key:=0;
end;

procedure TForm1.DBGridAnnosKeyPress(Sender: TObject; var Key: Char);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridAnnosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Seleccionados(Sender);
end;

procedure TForm1.DBGridAnnosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
  Seleccionados(Sender);
end;

procedure TForm1.DBGridAnnosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Seleccionados(Sender);
end;

procedure TForm1.FormConstrainedResize(Sender: TObject; var MinWidth,
  MinHeight, MaxWidth, MaxHeight: Integer);
begin
  MinHeight:=395;MinWidth:=528;
end;

procedure TForm1.ADOTPastorDistritoAfterDelete(DataSet: TDataSet);
begin
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.ADOTPastorIglesiaAfterDelete(DataSet: TDataSet);
begin
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.ADOTObrerasAfterDelete(DataSet: TDataSet);
begin
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.ADOTAnnosAfterDelete(DataSet: TDataSet);
begin
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.ADOTNombramientosIglAfterDelete(DataSet: TDataSet);
begin
  BarraEstado.Panels[3].Text:='Seleccionados: 0';
end;

procedure TForm1.AyudaExecute(Sender: TObject);
var
  directorio: String;
begin
  directorio:=ExtractFilePath(Application.ExeName)+'HelpChurch.chm';
  //Application.HelpCommand(HELP_CONTENTS, 0);
  ShellExecute(Form1.Handle,nil,PChar(directorio),'','',SW_SHOWNORMAL);
  //Application.HelpFile :='C:\Documents and Settings\Administrador\Mis documentos\HelpPRUEBA\PruebaChurch.chm';
  //ExtractFilePath(Application.ExeName)+'HelpChurch.hlp';
  //Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TForm1.ADOImportMiembrosAfterPost(DataSet: TDataSet);
begin
  if corre then
  begin
    formEspera.ProgressExp.StepIt;
    formEspera.ProgressExp.Update;
    Application.ProcessMessages;
  end;
end;

procedure TForm1.CentrarEnDestino(Obj:TControl; const ObjRef:TControl);
begin
  Obj.Left:=(ObjRef.ClientWidth  div 2) - (Obj.Width  div 2);
  //Obj.Top :=(ObjRef.ClientHeight div 2) - (Obj.Height div 2);
  if Obj.Left<0 then Obj.Left:=0;
  //if Obj.Top<0 then Obj.Top:=0;
end;

procedure TForm1.ADOTMiembrosAfterClose(DataSet: TDataSet);
begin
  EditBuscar2.ReadOnly:=true;  
end;

procedure TForm1.ButtonBuscarClick(Sender: TObject);
var
  i: Integer;
begin
  if Cuentabusca>=0 then
  for i:=0 to Cuentabusca do DBGrid1.DataSource.DataSet.FreeBookmark(marcabusca[i]);
  Cuentabusca:=-1;
  if not EditBuscar2.ReadOnly then if EditBuscar2.Text<>'' then
  with DBGrid1 do
  begin
    SearchFields.Clear;
    CadBusca:=DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Caption;
    SearchFields.Add(CadBusca);
    if Search(EditBuscar2.Text, ResultCol, ResultField, False, False, True) then
    begin
      Inc(Cuentabusca);
      marcabusca[Cuentabusca]:=DBGrid1.DataSource.DataSet.GetBookmark;
    end;
  end;
end;

procedure TForm1.ButtonSiguienteClick(Sender: TObject);
begin  
  if (CadBusca<>DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Caption) and
  (CadBusca<>'') then ButtonBuscarClick(Sender)
  else if DBGrid1.SearchNext(ResultCol, ResultField, False, False, True) then
  begin
    if Cuentabusca<9999 then
    begin
      Inc(Cuentabusca);
      marcabusca[Cuentabusca]:=DBGrid1.DataSource.DataSet.GetBookmark;
    end;
  end;
end;

procedure TForm1.ButtonAnteriorClick(Sender: TObject);
begin
  if CadBusca=DBGrid1.Columns.Items[DBGrid1.SelectedIndex].Title.Caption then
  if Cuentabusca>0 then
  begin
    DBGrid1.DataSource.DataSet.GotoBookMark(marcabusca[Cuentabusca-1]);
    DBGrid1.DataSource.DataSet.FreeBookmark(marcabusca[Cuentabusca]);
    dec(Cuentabusca);
  end;
end;

procedure TForm1.EditBuscar2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    ButtonBuscarClick(Sender);
  end;
end;

procedure TForm1.PegarUpdate(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    try
      Pegar.Enabled:=Clipboard.HasFormat(CF_TEXT) and (DataSource.DataSet.RecordCount>0) and PuedeEditar;
    except;
      Pegar.Enabled:=false;
    end;
  end;
end;

procedure TForm1.CortarUpdate(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    try
      Cortar.Enabled:=(DataSource.DataSet.RecordCount>0) and PuedeEditar;
    except;
      Cortar.Enabled:=false;
    end;
  end;
end;

procedure TForm1.SeleccionarNadaExecute(Sender: TObject);
begin
  //SeleccionaNada(Sender);
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    SelectedRows.Clear;
    Seleccionados(TjvDBUltimGrid(ActiveControl));
  end;
end;

procedure TForm1.SeleccionarTodosExecute(Sender: TObject);
begin
  //SeleccionaTodos(Sender);
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    SelectAll;
    Seleccionados(TjvDBUltimGrid(ActiveControl));
  end;
end;

procedure TForm1.SeleccionarTodosUpdate(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    try
      SeleccionarTodos.Enabled:=(DataSource.DataSet.RecordCount>0);
    except;
      SeleccionarTodos.Enabled:=false;
    end;
  end;
end;

procedure TForm1.SeleccionarNadaUpdate(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    //try
      SeleccionarNada.Enabled:=(SelectedRows.Count>0);
    //except;
      //SeleccionarNada.Enabled:=false;
    //end;
  end;
end;

procedure TForm1.InsertarRegistroExecute(Sender: TObject);
begin
  //if PuedeEditar then
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    DataSource.DataSet.Insert;
    //Seleccionados(TjvDBUltimGrid(ActiveControl));
  end;
end;

procedure TForm1.InsertarRegistroUpdate(Sender: TObject);
begin
  InsertarRegistro.Enabled:=PuedeEditar;
end;

procedure TForm1.ADODataSet1BeforeClose(DataSet: TDataSet);
begin
  {try
    SaveColPos(DBGrid1);
  except;
    ShowMessage('No se guardaron klos datos...');
  end;}
end;

procedure TForm1.DBGrid1ColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if GuardarConfiguraciones1.Checked then
  try
    SaveColPos(DBGrid1);
  except;
  end;
end;

procedure TForm1.DBGridPastorDistritoColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if GuardarConfiguraciones1.Checked then
  try
    SaveColPos(DBGridPastorDistrito);
  except;
  end;
end;

procedure TForm1.DBGridPastorIglesiaColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if GuardarConfiguraciones1.Checked then
  try
    SaveColPos(DBGridPastorIglesia);
  except;
  end;
end;

procedure TForm1.DBGridObrerasColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if GuardarConfiguraciones1.Checked then
  try
    SaveColPos(DBGridObreras);
  except;
  end;
end;

procedure TForm1.DBGridNombramientosIglColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if GuardarConfiguraciones1.Checked then
  try
    SaveColPos(DBGridNombramientosIgl);
  except;
  end;
end;

procedure TForm1.DBGridExtColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if GuardarConfiguraciones1.Checked then
  try
    SaveColPos(DBGridExt);
  except;
  end;
end;

//para saber si se guarda la configuracion
procedure TForm1.GuardarConfiguracionesExecute(Sender: TObject);
var
  Registro :TRegistry;
begin
  if GuardarConfiguraciones.Checked then
    GuardarConfiguraciones.ImageIndex:=29
  else GuardarConfiguraciones.ImageIndex:=-1;
  try
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\'+ExtractFileName(Application.Exename)+
                      '\ConfigSiNo',TRUE);

    Registro.WriteBool('ConfigSiNo',GuardarConfiguraciones.Checked);
    Registro.Free;
  except;
    Registro.Free;
  end;
end;

//para activar o desactivar la opcion de guardar configuraciones
function TForm1.ConfigSiNo;
var
  Registro :TRegistry;
begin
  try
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\'+ExtractFileName(Application.Exename)+
                      '\ConfigSiNo',FALSE);
    if Registro.ValueExists('ConfigSiNo') then
    begin
      result:=Registro.ReadBool('ConfigSiNo');
      if result then
      GuardarConfiguraciones.ImageIndex:=29
      else GuardarConfiguraciones.ImageIndex:=-1;
    end;
    Registro.Free;
  except;
    Registro.Free;
    result:=true;
  end;
end;

procedure TForm1.Splitter1Moved(Sender: TObject);
begin
  if GuardarConfiguraciones.Checked then SaveSplitters(Splitter1);
end;

procedure TForm1.SaveSplitters(Splitter: TSplitter);
var
  Registro :TRegistry;
begin
  try
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\'+ExtractFileName(Application.Exename)+
                      '\Splitters',TRUE);

    Registro.WriteInteger(Splitter.Name,Panel2.Width);
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    //ShowMessage(Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
  end;
end;

procedure TForm1.LoadSplitters(Splitter: TSplitter);
var
  Registro :TRegistry;
begin
  try
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\'+ExtractFileName(Application.Exename)+
                      '\Splitters',FALSE);
    if Registro.ValueExists(Splitter.Name) then
    Panel2.Width:=Registro.ReadInteger(Splitter.Name);
    Registro.Free;
  except;
    Registro.Free;
  end;
end;

procedure TForm1.DBGridExtDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with column.Title do
  begin
    If (Caption='IdMiembro') or (Caption='IdIglesia') or (Caption='Foto')
      or (Caption='Otra Información') or (Caption='Idiomas') or (Caption='Enfermedades') then
      begin
       Column.Visible:=false;
      end;
    if (column.Title.Caption='Fecha Bautismo') then
    begin
      Column.Alignment:=taCenter;
    end else
    if (column.Title.Caption='Fecha Desfraternizado') then
    begin
      Column.Alignment:=taCenter;
    end else
    if (column.Title.Caption='Fecha Nacimiento') then
    begin
      Column.Alignment:=taCenter;
    end;
  end;
end;

procedure TForm1.DBGrid2ColumnResized(Grid: TJvDBGrid; ACol,
  NewWidth: Integer);
begin
  if Grid.Columns[Acol].Title.Caption='Visitado' then Grid.Columns[Acol].Width:=191;
end;



procedure TForm1.BorraRegistroExecute(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    ConfirmaBorrado(TjvDBUltimGrid(ActiveControl));
    //Seleccionados(TjvDBUltimGrid(ActiveControl));
  end;
end;

procedure TForm1.BorraRegistroUpdate(Sender: TObject);
begin
  if (ActiveControl is TjvDBUltimGrid) then
  with TjvDBUltimGrid(ActiveControl) do
  begin
    try
      BorraRegistro.Enabled:=(SelectedRows.Count>0) and (PuedeEditar);
    except;
      BorraRegistro.Enabled:=false;
    end;
  end;
end;

procedure TForm1.DBGridExtMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If ssRight in Shift	then sacarPopup(TJvDBUltimGrid(Sender));
end;

end.
{
 SELECT TUnion.Unión, TAsociacion.Asociación, TProvincia.Provincia,
 TDistrito.Distrito, TIglesia.Iglesia, TMiembros.IdIglesia, TMiembros.Nombre,
 TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido], TMiembros.Sexo,
 TMiembros.[Nivel Escolar], TMiembros.Dirección, TMiembros.[Estado Civil],
 TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.[Ocupación Actual],
 TMiembros.Dones, TMiembros.[Pastor que Bautizó], TMiembros.[Obrero que Trabajó],
 TMiembros.[Fecha Bautismo], TMiembros.Desfraternizado,
 TMiembros.[Nació en Hogar ASD], TMiembros.[Fecha Desfraternizado],
 TMiembros.[Causa Desfraternizado], TMiembros.[Dirección del Trabajo],
 TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],
 TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido,
 TMiembros.[Ext Hogar], TMiembros.Rebautismo, TMiembros.[No Identidad],
 TMiembros.[Cónyuge Adventista], TMiembros.Edad, TMiembros.Salario
FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON
TAsociacion.IdAsociacion=TProvincia.IdAsociacion) INNER JOIN
((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito=TIglesia.IdDistrito)
INNER JOIN TMiembros ON TIglesia.IdIglesia=TMiembros.IdIglesia) ON
TProvincia.IdProvincia=TDistrito.IdProvincia) ON
TUnion.IdUnion=TAsociacion.IdUnion
WHERE TProvincia.Provincia="Holguín" AND TIglesia.Iglesia="san Germán"
AND TMiembros.Nombre Like "*luis*"
ORDER BY TMiembros.Nombre
}

  ///Consulta para copiar de otra tabla en la nuestra}
{INSERT INTO TablaDestino SELECT (lists-columnas) FROM TablaOrigen WHERE Condicion}

///Esta es para copiar de una tabla en otra////
{INSERT INTO TMiembros ( Nombre, [Primer Apellido], [Segundo Apellido], [Nivel Escolar], Enfermedades, Oficio, Dones, Desfraternizado, [Nació en Hogar ASD], [Fecha Desfraternizado], [Causa Desfraternizado], Condición, Localidad, [Religión Practicada], Teléfono, Traslado, Fallecido, [Ext Hogar], Rebautismo, Edad, Sexo, Dirección, [Estado Civil], [Ocupación Actual], [Pastor que Bautizó], [Obrero que Trabajó], [Fecha Bautismo], [Dirección del Trabajo], [No Identidad], [Cónyuge Adventista], Salario ) IN 'C:\DataBase\BaseDatos-R.mdb'
SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido], TMiembros.[Nivel Escolar], TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.Dones, TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD], TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado], TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada], TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar], TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección, TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó], TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo], TMiembros.[Dirección del Trabajo], TMiembros.[No Identidad], TMiembros.[Cónyuge Adventista], TMiembros.Salario
FROM TMiembros
WHERE (((TMiembros.[Fecha Bautismo])>=#1/1/2007#));}

///Esta es para llenar una tabla desde cero, pero debe existir, sin relaciones///
{SELECT TMiembros.* INTO TMiembros IN 'C:\DataBase\BaseDatos-R.mdb'
FROM TMiembros
WHERE (((TMiembros.[Fecha Bautismo])>=#1/1/2007#));}

//Haciendo la actualizacion mas exacta- a una Iglesia determinada////
{INSERT INTO TMiembros ( Nombre, [Primer Apellido], [Segundo Apellido],
[Nivel Escolar], Enfermedades, Oficio, Dones, Desfraternizado, [Nació en Hogar ASD],
[Fecha Desfraternizado], [Causa Desfraternizado], Condición, Localidad,
[Religión Practicada], Teléfono, Traslado, Fallecido, [Ext Hogar], Rebautismo,
Edad, Sexo, Dirección, [Estado Civil], [Ocupación Actual], [Pastor que Bautizó],
[Obrero que Trabajó], [Fecha Bautismo], [Dirección del Trabajo], [No Identidad],
[Cónyuge Adventista], Salario, IdIglesia ) IN 'C:\DataBase\BaseDatos-R.mdb'
SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido],
TMiembros.[Nivel Escolar], TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.Dones,
TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD],
TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado],
TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],
TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar],
TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección,
TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó],
TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo],
TMiembros.[Dirección del Trabajo], TMiembros.[No Identidad],
TMiembros.[Cónyuge Adventista], TMiembros.Salario, TMiembros.IdIglesia
FROM ((((TUnion INNER JOIN TAsociacion ON TUnion.IdUnion = TAsociacion.IdUnion)
INNER JOIN TProvincia ON TAsociacion.IdAsociacion = TProvincia.IdAsociacion)
INNER JOIN TDistrito ON TProvincia.IdProvincia = TDistrito.IdProvincia)
INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito)
INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia
WHERE (((TMiembros.[Fecha Bautismo])>=#1/1/2007# and (TIglesia.Iglesia='San Germán')));
}

//Cambiando la fuente y el destino//
{INSERT INTO TMiembros ( Nombre, [Primer Apellido], [Segundo Apellido], [Nivel Escolar],
Enfermedades, Oficio, Dones, Desfraternizado, [Nació en Hogar ASD], [Fecha Desfraternizado],
[Causa Desfraternizado], Condición, Localidad, [Religión Practicada], Teléfono,
Traslado, Fallecido, [Ext Hogar], Rebautismo, Edad, Sexo, Dirección, [Estado Civil],
[Ocupación Actual], [Pastor que Bautizó], [Obrero que Trabajó], [Fecha Bautismo],
[Dirección del Trabajo], [No Identidad], [Cónyuge Adventista], Salario, IdIglesia )
SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido],
TMiembros.[Nivel Escolar], TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.Dones,
TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD],
TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado],
TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],
TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar],
TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección,
TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó],
TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo],
TMiembros.[Dirección del Trabajo], TMiembros.[No Identidad],
TMiembros.[Cónyuge Adventista], TMiembros.Salario, TMiembros.IdIglesia
FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON
TAsociacion.IdAsociacion = TProvincia.IdAsociacion) INNER JOIN
((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito)
INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON
TProvincia.IdProvincia = TDistrito.IdProvincia) ON TUnion.IdUnion = TAsociacion.IdUnion
IN 'D:\Proyect-Mayo 5 2008 tarde-ESTE\DataBase\BaseDatos-R.mdb'
WHERE (((TMiembros.[Fecha Bautismo])>=#1/1/2007#) AND ((TIglesia.Iglesia)='San Germán'));
}

{ADOImportExport.CommandText:='INSERT INTO TMiembros ( Nombre, [Primer Apellido],'+
    '[Segundo Apellido], [Nivel Escolar],'+
    'Enfermedades, Oficio, Dones, Desfraternizado, [Nació en Hogar ASD], [Fecha Desfraternizado],'+
    '[Causa Desfraternizado], Condición, Localidad, [Religión Practicada], Teléfono,'+
    'Traslado, Fallecido, [Ext Hogar], Rebautismo, Edad, Sexo, Dirección, [Estado Civil],'+
    '[Ocupación Actual], [Pastor que Bautizó], [Obrero que Trabajó], [Fecha Bautismo],'+
    '[Dirección del Trabajo], [No Identidad], [Cónyuge Adventista], Salario, IdIglesia ) '+
    'SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], TMiembros.[Segundo Apellido],'+
    'TMiembros.[Nivel Escolar], TMiembros.Enfermedades, TMiembros.Oficio, TMiembros.Dones,'+
    'TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD],'+
    'TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado],'+
    'TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],'+
    'TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar],'+
    'TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección,'+
    'TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó],'+
    'TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo],'+
    'TMiembros.[Dirección del Trabajo], TMiembros.[No Identidad],'+
    'TMiembros.[Cónyuge Adventista], TMiembros.Salario, '+NumeroIgl+
    ' AS IdIglesia '+
    'FROM TUnion INNER JOIN ((TAsociacion INNER JOIN TProvincia ON '+
    'TAsociacion.IdAsociacion = TProvincia.IdAsociacion) INNER JOIN '+
    '((TDistrito INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito) '+
    'INNER JOIN TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia) ON '+
    'TProvincia.IdProvincia = TDistrito.IdProvincia) ON TUnion.IdUnion = TAsociacion.IdUnion '+
    'IN "'+DirDBExt+'" '+FiltroExt;}
