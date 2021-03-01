unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm13 = class(TForm)
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
  Form13: TForm13;

implementation

uses Principal;

{$R *.dfm}

procedure TForm13.FormCreate(Sender: TObject);
begin
  MonthCalendar1.Date:=now;  
end;

procedure TForm13.MonthCalendar1DblClick(Sender: TObject);
begin
  Form1.ADOTAnnos.Edit;
  Form1.ADOTAnnos.FieldByName('Fecha').AsDateTime:=MonthCalendar1.Date;
  //Form1.ADOTAnnos.Post;
  Close;
end;

procedure TForm13.AceptarClick(Sender: TObject);
begin
  MonthCalendar1DblClick(Sender);
end;

procedure TForm13.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TForm13.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: MonthCalendar1DblClick(Sender);
    VK_ESCAPE: close;
  end;
end;

end.
