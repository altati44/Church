unit UnitSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TFormSplash = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

{evitar mas de una corrida del programa}
procedure TFormSplash.FormCreate(Sender: TObject);
var Sem  : THandle;
begin
  Sem := CreateSemaphore(nil,0,1,'PROGRAM_NAME');
   if ((Sem <> 0) and (GetLastError = ERROR_ALREADY_EXISTS)) then 
   begin 
     CloseHandle( Sem );
     /////Aqui se puede poner un mensage////
     Halt;
   end;
end;

end.


