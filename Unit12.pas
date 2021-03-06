unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm12 = class(TForm)
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
  Form12: TForm12;

implementation

uses Principal;

{$R *.dfm}

procedure TForm12.FormCreate(Sender: TObject);
begin
  MonthCalendar1.Date:=now;
end;

procedure TForm12.MonthCalendar1DblClick(Sender: TObject);
begin
  Form1.ADOTObreras.Edit;
  Form1.ADOTObreras.FieldByName('Salida').AsDateTime:=MonthCalendar1.Date;
  //Form1.ADOTObreras.Post;
  close;
end;

procedure TForm12.AceptarClick(Sender: TObject);
begin
  MonthCalendar1DblClick(Sender);
end;

procedure TForm12.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TForm12.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: MonthCalendar1DblClick(Sender);
    VK_ESCAPE: close;
  end;
end;

end.
