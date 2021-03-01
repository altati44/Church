unit UnitTarjetero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls,DBCtrls;

type
  TFormTarjetero = class(TForm)
    QRep2: TQuickRep;
    QRBand6: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLTitulo: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape24: TQRShape;
    QRLabel25: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRShape27: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape17: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRLabel34: TQRLabel;
    QRDBProvincia: TQRDBText;
    QRLabel32: TQRLabel;
    QRShape13: TQRShape;
    QRShape30: TQRShape;
    QRLabel19: TQRLabel;
    QRShape22: TQRShape;
    QRLabel20: TQRLabel;
    QRShape23: TQRShape;
    QRShape31: TQRShape;
    QRDBIglesia: TQRDBText;
    QRDBIdentidad: TQRDBText;
    QRDBDireccion: TQRDBText;
    QRDBFNacimiento: TQRDBText;
    QRDBECivil: TQRDBText;
    QRDBProfOfic: TQRDBText;
    QRDBDireccionToE: TQRDBText;
    QRDBFBautismo: TQRDBText;
    QRDBSalario: TQRDBText;
    QRDBPastorOficiante: TQRDBText;
    QRDBObreroTrabajo: TQRDBText;
    QRDBOcupActual: TQRDBText;
    QRDBCentroTrabajoEstudio: TQRDBText;
    QRDBReligionAnterior: TQRDBText;
    QRExprNombreAp: TQRExpr;
    QRDBNivelEscolar: TQRDBText;
    QRExprConyugSi: TQRExpr;
    QRExprConyugNo: TQRExpr;
    QRExprSexoSi: TQRExpr;
    QRExprSexoNo: TQRExpr;
    QRExprHogarASDSi: TQRExpr;
    QRExprHogarASDNo: TQRExpr;
    QRExprReBautismoSi: TQRExpr;
    QRExprReBautismoNo: TQRExpr;
    QRExprEnfermedades: TQRExpr;
    QRExprIdiomas: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTarjetero: TFormTarjetero;

implementation

uses Principal,QRExpr;

{$R *.dfm}

{Hago una funcion de tipo expresion para unir las lineas de un Memo en el QRDBText}
type
  DBMemoEnferme=class(TQREvElementFunction)
  Public
    Function Calculate: TQREvResult; Override;
  end;
  DBMemoIdiom=class(TQREvElementFunction)
  Public
    Function Calculate: TQREvResult; Override;
  end;

function DBMemoEnferme.Calculate:TQREvResult;{esta es la funcion como tal}
var i: Integer;s:TStrings;
begin
  result.strResult:='';s:=TStringList.Create;
  if form1.DBGrid1.DataSource.DataSet.FieldValues['Enfermedades']<>'' then
  begin
    s.Text:=form1.DBGrid1.DataSource.DataSet.FieldValues['Enfermedades'];
    for i:=0 to s.Count-1 do
    begin
      result.strResult:=result.strResult+', '+s.Strings[i];
    end;
    delete(result.strResult,1,2);
  end;
  s.Free;
end;
function DBMemoIdiom.Calculate:TQREvResult;
var i: Integer;s:TStrings;
begin
  result.strResult:='';s:=TStringList.Create;
  if form1.DBGrid1.DataSource.DataSet.FieldValues['Idiomas']<>'' then
  begin
    s.Text:=form1.DBGrid1.DataSource.DataSet.FieldValues['Idiomas'];
    for i:=0 to s.Count-1 do
    begin
      result.strResult:=result.strResult+', '+s.Strings[i];
    end;
    delete(result.strResult,1,2);
  end;
  s.Free;
end;

Initialization  {Inicializo la expresion} {ver la Cara Oculta de delphi}
  RegisterQRFunction(DBMemoEnferme,//la clase de la funcion
  'UneMemoCadEnf',                    //el nombre de la funcion
    'UneMemoCadEnf|Une los datos del DBMemo',
    'LasptaniSoft''Corporation',   //el fabricante
    '');                         //grupo y tipo de argumento ej. '1S'
  RegisterQRFunction(DBMemoIdiom,//la clase de la funcion
  'UneMemoCadIdiom',                    //el nombre de la funcion
    'UneMemoCadIdiom|Une los datos del DBMemo',
    'LasptaniSoft''Corporation',   //el fabricante
    '');
end.

