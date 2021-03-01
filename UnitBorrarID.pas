unit UnitBorrarID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, ExtCtrls;

type
  TFormBorrarID = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Shape1: TShape;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBorrarID: TFormBorrarID;

implementation
uses Principal;
{$R *.dfm}

procedure TFormBorrarID.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFormBorrarID.Button1Click(Sender: TObject);
var
  Registro: TRegistry;
begin                  //'{A5FD1A34E3686-567268D-'+Edit1.text+'-F6D0}'
  if CadID=form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+
          form1.Encript(Edit1.Text,987654321)+form1.Decript('(E7@1u',987654321) then
  begin
    try
      Registro:=TRegistry.Create;
      Registro.RootKey := HKEY_LOCAL_MACHINE;
                                   //'\SYSTEM\Setup\AnswerFileMap'
      Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), false);
    except;
      Registro.Free;
                              //'Error accediendo al registro'
      ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
      close;
    end;                                //'ms_msdataware'
    if Registro.DeleteValue(form1.Decript('hp^irlgugtite',987654321)) then
    begin
      Registro.Free;
                              //'Contraseña eliminada'
      ShowMessage(form1.Decript('Flopsiud÷b(clmmaoaeg',987654321));
      close;
    end else
    begin
      Registro.Free;
                              //'No existe contraseña'
      ShowMessage(form1.Decript('Kl!ayauuc#kinprireðg',987654321));
      Edit1.SetFocus;
      edit1.SelectAll;
    end;
  end else
  begin
                            //'Contraseña incorrecta'
    ShowMessage(form1.Decript('Flopsiud÷b(ongozsebre',987654321));
    Edit1.SetFocus;
    edit1.SelectAll;
  end;
end;

procedure TFormBorrarID.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
  begin
    key:=#0;
    Button1Click(Sender);
  end;
end;

procedure TFormBorrarID.FormActivate(Sender: TObject);
begin
   Edit1.Clear;
   Edit1.SetFocus;
end;

end.
