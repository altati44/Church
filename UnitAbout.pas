unit UnitAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Gradient, jpeg;

type
  TFormAbout = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    PhysMem: TLabel;
    FreeRes: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Gradiente1: TGradiente;
    Gradiente2: TGradiente;
    Shape1: TShape;
    Label8: TLabel;
    OK: TButton;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.FormActivate(Sender: TObject);
var
  MS: TMemoryStatus;
begin
  GlobalMemoryStatus(MS);
  PhysMem.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys / 1024);
  FreeRes.Caption := Format('%d %%', [MS.dwMemoryLoad]);
end;

procedure TFormAbout.OKClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAbout.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) or (key=VK_ESCAPE) then
  begin
    key:=0;
    close;
  end;
end;

end.
