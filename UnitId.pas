unit UnitID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, ExtCtrls;

type
  TFormID = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormID: TFormID;

implementation

uses Principal,
  Unit2,GuardaBuscar, Unit7, Reporte, Unit8, Unit9, Unit10, Unit11,
  Unit12, UnitImpresion, UnitOrdenar, Unit13, UnitBImportar, UnitEspera,
  UnitDateVisitas, UnitIdiomas, UnitEnfermedades, UnitConfigurarDB,
  UnitAbout, UnitFechaNBD, UnitConfigPage, UnitTarjetero,UnitEstablecerID,
  UnitBorrarID,UnitBusqAntExt,UnitAddIdioma,UnitAddEnfernedad,
  UnitNotasFecha;

{$R *.dfm}

procedure TFormID.Button1Click(Sender: TObject);
begin                  //'{A5FD1A34E3686-567268D-'         //'-F6D0}'
  if CadID=form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+
           form1.Encript(Edit1.Text,987654321)+form1.Decript('(E7@1u',987654321) then
  begin
    //BoolPrueba:=true;
    FormID.Close;
  end else
  begin                     //'Contraseña Incorrecta'
    ShowMessage(form1.decript('Flopsiud÷b(Ongozsebre',987654321));
    Edit1.SetFocus;
    Edit1.SelectAll;
  end;
  {ShowMessage(CadID+#13+
  form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+
  form1.Encript(Edit1.Text,987654321)+form1.Decript('(E7@1u',987654321));}
end;

procedure TFormID.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    Button1Click(Sender);
  end;
end;

procedure TFormID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CadID<>form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+form1.Encript(Edit1.Text,987654321)+form1.Decript('(E7@1u',987654321) then
  begin
    Application.Terminate;
  end;
end;

procedure TFormID.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormID.FormActivate(Sender: TObject);
begin
  Application.CreateForm(TFormImpresion, FormImpresion);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TFormOrdenar, FormOrdenar);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TFormBImportar, FormBImportar);
  Application.CreateForm(TFormEspera, FormEspera);
  Application.CreateForm(TFormBusqAntExt, FormBusqAntExt);
  Application.CreateForm(TFormDateVisitas, FormDateVisitas);
  Application.CreateForm(TFormEnfermedades, FormEnfermedades);
  Application.CreateForm(TFormIdiomas, FormIdiomas);
  Application.CreateForm(TFormAddIdioma, FormAddIdioma);
  Application.CreateForm(TFormAddEnfermedad, FormAddEnfermedad);
  Application.CreateForm(TFormConfigurarDB, FormConfigurarDB);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormFechaNBD, FormFechaNBD);
  Application.CreateForm(TFormConfigPage, FormConfigPage);
  Application.CreateForm(TFormTarjetero, FormTarjetero);
  Application.CreateForm(TFormBorrarID,FormBorrarID);
  Application.CreateForm(TFormEstablecerID,FormEstablecerID);
  Application.CreateForm(TFormNotasFecha, FormNotasFecha);
end;

procedure TFormID.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin key:=#0;Button1Click(Sender); end;
  if key=#27 then begin key:=#0;form1.close; end;
end;

end.
