unit UnitFechaNBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TFormFechaNBD = class(TForm)
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    Panel2: TPanel;
    Aceptar: TButton;
    Cancelar: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFechaNBD: TFormFechaNBD;

implementation

uses Principal;

{$R *.dfm}

procedure TFormFechaNBD.FormCreate(Sender: TObject);
begin
  MonthCalendar1.Date:=now;
end;

procedure TFormFechaNBD.MonthCalendar1DblClick(Sender: TObject);
var s: String;
begin
  s:=form1.DBGrid1.Columns.Items[form1.DBGrid1.SelectedIndex].Title.Caption;
  Form1.ADOTMiembros.Edit;
  Form1.ADOTMiembros.FieldByName(s).AsDateTime:=MonthCalendar1.Date;
  //Form1.ADOTMiembros.Post;
  close;
end;

procedure TFormFechaNBD.AceptarClick(Sender: TObject);
begin
  MonthCalendar1DblClick(Sender);
end;

procedure TFormFechaNBD.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormFechaNBD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: MonthCalendar1DblClick(Sender);
    VK_ESCAPE: close;
  end;
end;
procedure TFormFechaNBD.FormActivate(Sender: TObject);
var s: String;
begin
  s:=form1.DBGrid1.Columns.Items[form1.DBGrid1.SelectedIndex].Title.Caption;
  if s='Fecha Nacimiento' then Caption:='Fecha Nacimiento' else
  if s='Fecha Bautismo' then Caption:='Fecha Bautismo' else
  if s='Fecha Desfraternizado' then Caption:='Fecha Desfraternizado';
end;


end.
