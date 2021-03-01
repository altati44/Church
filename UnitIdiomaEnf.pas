unit UnitIdiomaEnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormIdiomaEnf = class(TForm)
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
  FormIdiomaEnf: TFormIdiomaEnf;

implementation

uses UnitIdiomas;

{$R *.dfm}

procedure TFormIdiomaEnf.FormActivate(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TFormIdiomaEnf.AceptarClick(Sender: TObject);
begin
  if Edit1.Text<> '' then
  FormIdiomas.CheckIdiomas.Items.Add(Edit1.Text);
  close;
end;

procedure TFormIdiomaEnf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_RETURN then AceptarClick(Sender);
   if key=VK_ESCAPE then close;
end;

procedure TFormIdiomaEnf.CancelarClick(Sender: TObject);
begin
  close;
end;

end.
