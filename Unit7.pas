unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm7 = class(TForm)
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
  Form7: TForm7;

implementation

uses Principal;

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
begin
  MonthCalendar1.Date:=now;
end;

procedure TForm7.MonthCalendar1DblClick(Sender: TObject);
begin
  Form1.ADOTPastorIglesia.Edit;
  Form1.ADOTPastorIglesia.FieldByName('Entrada').AsDateTime:=MonthCalendar1.Date;
  //Form1.ADOTPastorIglesia.Post;
  close;
end;

procedure TForm7.AceptarClick(Sender: TObject);
begin
  MonthCalendar1DblClick(Sender);
end;

procedure TForm7.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TForm7.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN: MonthCalendar1DblClick(Sender);
    VK_ESCAPE: close;
  end;
end;

end.
