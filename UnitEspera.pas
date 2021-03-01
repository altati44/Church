unit UnitEspera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls,
  JvExControls, JvComponent, JvSpecialProgress, DB, JvMemoryDataset;

type
  TFormEspera = class(TForm)
    Panel6: TPanel;
    Panel4: TPanel;
    ColorButton1: TButton;
    Label1: TLabel;
    Panel3: TPanel;
    ProgressExp: TJvSpecialProgress;
    JvMemoryData1: TJvMemoryData;
    procedure FormActivate(Sender: TObject);
    procedure cierra;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ColorButton1Click(Sender: TObject);
    procedure JvMemoryData1BeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEspera: TFormEspera;
  cerrar: integer=0;

implementation

uses UnitBImportar, Principal;

{$R *.dfm}

procedure TFormEspera.FormActivate(Sender: TObject);
begin
  JvMemoryData1.Active:=false;
  label1.Update;
  corre:=true;
  label1.Caption:='Recopilando datos...';
  ProgressExp.Position:=0;
  ProgressExp.Maximum:=ADOFuente.RecordCount;
  JvMemoryData1.ApplyMode:=amMerge;
  JvMemoryData1.DataSetClosed:=false;
  JvMemoryData1.LoadRecords:=true;
  JvMemoryData1.LoadStructure:=true;
  JvMemoryData1.Active:=true;Application.ProcessMessages;
  ProgressExp.Position:=0;
  if importar then
  begin
    Caption:='Importar';
    label1.Caption:='Importando datos...'
  end else
  begin
    Caption:='Exportar';
    label1.Caption:='Exportando datos...';
  end;
  //corre:=true;
  JvMemoryData1.SaveToDataSet(ADODestino,ADOFuente.RecordCount,false);
  Application.ProcessMessages;
  corre:=false;
  cierra;
  JvMemoryData1.Active:=false;
end;
procedure TFormEspera.JvMemoryData1BeforeInsert(DataSet: TDataSet);
begin
  //para mostrar el progress mientras almacena en memoria
  ProgressExp.StepIt;
  Application.ProcessMessages;
end;
Procedure TFormEspera.Cierra;
begin
  Label1.Caption:='Datos transferidos.';
  panel4.Show;
  if Importar then
  begin
    form1.DBGrid1.DataSource.DataSet.EnableControls;
    form1.DBImage1.DataSource:=form1.DSTMiembros;
    form1.DBMemoIdiomas.DataSource:=form1.DSTMiembros;
    form1.DBMemoEnfermedades.DataSource:=form1.DSTMiembros;
    form1.DBGrid2.DataSource:=form1.DSTVisitas;
    form1.DBMemo1.DataSource:=form1.DSTMiembros;
    form1.NoMiembros;
    form1.BarraDeEstado;
  end else
  begin
    form1.DBGridExt.DataSource.DataSet.EnableControls;
    form1.DBImage2.DataSource:=form1.DSImportMiembros;
    form1.DBMemo4.DataSource:=form1.DSImportMiembros;
    //form1.DBGrid1.DataSource.DataSet.EnableControls;
    form1.PanelExt.Caption:=' '+FormatFloat('###,0',form1.ADOImportMiembros.RecordCount)+' Miembro(s)';
  end;                      
end;

procedure TFormEspera.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) or (key=#27) then
  begin
    key:=#0;
    panel4.hide;
    close;
  end;
end;

procedure TFormEspera.ColorButton1Click(Sender: TObject);
begin
  panel4.hide;
  close;
end;

end.
