unit UnitAddIdioma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormAddIdioma = class(TForm)
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
  FormAddIdioma: TFormAddIdioma;

implementation

uses UnitIdiomas, Principal;

{$R *.dfm}

procedure TFormAddIdioma.FormActivate(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TFormAddIdioma.AceptarClick(Sender: TObject);
begin
  if Edit1.Text<>'' then
  begin
    FormIdiomas.CheckIdiomas.Items.Add(Edit1.Text);
    form1.ADOIdiomas.Insert;
    form1.ADOIdiomas.FieldByName('Idioma').AsString:=Edit1.Text;
    form1.ADOIdiomas.Post;
  end;
  FormIdiomas.ActualizaIdiomas;
  close;
end;

procedure TFormAddIdioma.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_RETURN then AceptarClick(Sender);
   if key=VK_ESCAPE then close;
end;

procedure TFormAddIdioma.CancelarClick(Sender: TObject);
begin
  close;
end;

end.
