unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    MonthCalendar1: TMonthCalendar;
    Panel2: TPanel;
    Aceptar: TButton;
    Cancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Principal;

{$R *.dfm}

procedure TForm10.FormCreate(Sender: TObject);
begin
  MonthCalendar1.Date:=now;
end;

procedure TForm10.MonthCalendar1DblClick(Sender: TObject);
begin
  Form1.ADOTPastorDistrito.Edit;
  Form1.ADOTPastorDistrito.FieldByName('Salida').AsDateTime:=MonthCalendar1.Date;
  //Form1.ADOTPastorDistrito.Post;
  close;
end;

procedure TForm10.AceptarClick(Sender: TObject);
begin
  MonthCalendar1DblClick(Sender);
end;

procedure TForm10.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TForm10.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: MonthCalendar1DblClick(Sender);
    VK_ESCAPE: close;
  end;
end;

end.
