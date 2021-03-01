unit UnitNotasFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFormNotasFecha = class(TForm)
    QRep3: TQuickRep;
    QRBand1: TQRBand;
    QRLTitulo: TQRLabel;
    QRLDistrito: TQRLabel;
    QRLIglesia: TQRLabel;
    QDistrito: TQRLabel;
    QIglesia: TQRLabel;
    QRLProvincia: TQRLabel;
    QProvincia: TQRLabel;
    QAsociacion: TQRLabel;
    QUnion: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotasFecha: TFormNotasFecha;

implementation

{$R *.dfm}

end.
