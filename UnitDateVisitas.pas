unit UnitDateVisitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DateUtils, ExtCtrls, StdCtrls;

type
  TFormDateVisitas = class(TForm)
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    Panel2: TPanel;
    Aceptar: TButton;
    Cancelar: TButton;
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDateVisitas: TFormDateVisitas;

implementation

uses Principal;

{$R *.dfm}

procedure TFormDateVisitas.MonthCalendar1DblClick(Sender: TObject);
var
  Present: TDateTime;
  Year, Month, Day: Word;
  s, s1: string;
const
  Dias: array[1..7] of String =
  ('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes',
  'Sábado', 'Domingo');
  mes:  array[1..12] of String =
  ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo',
  'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre',
  'Noviembre', 'Diciembre');
begin
  Present:= MonthCalendar1.Date;
  DecodeDate(Present, Year, Month, Day);
  s:= Dias[DayOfTheWeek(Present)]+' ' + IntToStr(Day) + ' de '
    + mes[Month] + ' de ' + IntToStr(Year);
  form1.ADOTVisitas.Edit;
  form1.ADOTVisitas.FieldByName('Visitado').AsString:=s;
  s1:=DateToStr(MonthCalendar1.Date);
  //Showmessage(s1);
  form1.ADOTVisitas.FieldByName('Fecha').AsDateTime:=
            MonthCalendar1.Date;
  //form1.ADOTVisitas.Post;
  close;
  //ADOTVisitas.Sort:='Orden ASC';
  //StrToDate
end;

procedure TFormDateVisitas.FormPaint(Sender: TObject);
begin
  {Left:=Mouse.CursorPos.x;
  Top:=Mouse.CursorPos.Y-200;}
end;

procedure TFormDateVisitas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then MonthCalendar1DblClick(Sender);
  if key=#27 then close;
end;

procedure TFormDateVisitas.AceptarClick(Sender: TObject);
begin
  MonthCalendar1DblClick(Sender);
end;

procedure TFormDateVisitas.CancelarClick(Sender: TObject);
begin
  close;
end;

end.
