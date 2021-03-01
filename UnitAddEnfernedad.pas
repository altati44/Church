unit UnitAddEnfernedad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormAddEnfermedad = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Aceptar: TButton;
    Cancelar: TButton;
    procedure FormActivate(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddEnfermedad: TFormAddEnfermedad;

implementation

uses UnitEnfermedades, Principal;

{$R *.dfm}
procedure TFormAddEnfermedad.FormActivate(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TFormAddEnfermedad.AceptarClick(Sender: TObject);
begin
  if Edit1.Text<> '' then
  begin
    FormEnfermedades.CheckEnfermedades.Items.Add(Edit1.Text);
    form1.ADOEnfermedades.Insert;
    form1.ADOEnfermedades.FieldByName('Enfermedad').AsString:=Edit1.Text;
    form1.ADOEnfermedades.Post;
  end;
  formEnfermedades.ActualizaEnfermedades;
  close;
end;

procedure TFormAddEnfermedad.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_RETURN then AceptarClick(Sender);
   if key=VK_ESCAPE then close;
end;

procedure TFormAddEnfermedad.CancelarClick(Sender: TObject);
begin
  close;
end;


end.
