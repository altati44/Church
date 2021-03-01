unit UnitEstablecerID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormEstablecerID = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Shape1: TShape;
    Edit3: TEdit;
    Edit2: TEdit;
    Shape2: TShape;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstablecerID: TFormEstablecerID;
  Crypto1,Crypto2,s1,s2:String;

implementation
uses Registry,Principal;

{$R *.dfm}

procedure TFormEstablecerID.Button2Click(Sender: TObject);
begin
  close;
end;

//Poner contraseña
procedure TFormEstablecerID.Button1Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  crypto1:=form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+form1.Encript(Edit1.Text,987654321)+form1.Decript('(E7@1u',987654321);
  crypto2:=form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+form1.Encript(Edit2.Text,987654321)+form1.Decript('(E7@1u',987654321);
  //ShowMessage(crypto1+#13+crypto2);
  if (edit1.Text='') and (edit2.Text='') then
  begin
    edit1.SetFocus;
    exit;
  end;
  if crypto1<>crypto2 then
  begin
                            //'No coinciden los datos introducidos'
    ShowMessage(form1.decript('Kl!gnahbogmh ho{!d`rkv jfsun`sgnbhv',987654321));
    edit2.Clear;
    edit1.setfocus;
    edit1.SelectAll;
  end else
  begin
    try
      Registro:=TRegistry.Create;
      Registro.RootKey := HKEY_LOCAL_MACHINE;
                                   //'\SYSTEM\Setup\AnswerFileMap'
      Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), True);
                                       //'ms_msdataware'
      Registro.WriteString(form1.Decript('hp^irlgugtite',987654321),crypto1);
      //CadID:=form1.decript(crypto1,987654321);
      Registro.Free;
      close;
    except;
      Registro.Free;
                              //'Error accediendo al registro'
      ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
      close;
    end;
  end;
end;

procedure TFormEstablecerID.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  key:=#0;
  edit2.SetFocus;
 end;
end;

procedure TFormEstablecerID.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  key:=#0;
  Button1Click(Sender);
 end;
end;

procedure TFormEstablecerID.FormActivate(Sender: TObject);
var
  Registro: TRegistry;
begin
   Registro := TRegistry.Create(KEY_READ);
  try
    Registro.RootKey := HKEY_LOCAL_MACHINE;
                                 //'\SYSTEM\Setup\AnswerFileMap'
    Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), False);
                                             //'ms_msdataware'
    CadID := Registro.ReadString(form1.Decript('hp^irlgugtite',987654321));
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
    Application.Terminate;
  end;
  if CadID='' then
  begin
    //No hay contraseña establecida
                                //'Introducir Contraseña:'
    label1.Caption:=form1.decript('Lmuvnlsboq(Eojtz`sd÷e?',987654321);
    Edit3.Visible:=false;
    Button3.Visible:=false;
    Edit1.Visible:=true;
    panel2.Visible:=true;
    Edit1.Clear;
    edit2.Clear;
    Button1.Visible:=true;
    edit1.SetFocus;
  end else //Hay contraseña establecida
  begin
                                //'Identifíquese por favor:'
    label1.Caption:=form1.decript('Lgdjua`ìwvmue$pgs ggrjr9',987654321);
    Edit3.Visible:=true;
    Button3.Visible:=true;
    Edit1.Visible:=false;
    panel2.Visible:=false;
    Edit3.Clear;
    //edit2.Clear;
    Button1.Visible:=false;
    edit3.SetFocus;
  end;
end;

procedure TFormEstablecerID.Button3Click(Sender: TObject);
begin
  if CadID=form1.Decript('~B4BE9G22F;082-=7730<A-',987654321)+form1.Encript(Edit3.Text,987654321)+form1.Decript('(E7@1u',987654321) then
  begin
                                //'Introducir Contraseña:'
    label1.Caption:=form1.decript('Lmuvnlsboq(Eojtz`sd÷e?',987654321);
    Edit3.Visible:=false;
    Button3.Visible:=false;
    Edit1.Visible:=true;
    panel2.Visible:=true;
    Edit1.Clear;
    edit2.Clear;
    Button1.Visible:=true;
    edit1.SetFocus;
  end else
  begin
                            //'Contraseña Incorrecta'
    ShowMessage(form1.decript('Flopsiud÷b(Ongozsebre',987654321));
    edit3.SetFocus;
    edit3.SelectAll;
  end;
end;

procedure TFormEstablecerID.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   begin
    key:=#0;
    Button3Click(Sender);
   end;
end;

procedure TFormEstablecerID.FormCreate(Sender: TObject);
begin
  //Button3.Visible:=false;
  //edit3.Focused
end;

procedure TFormEstablecerID.FormKeyPress(Sender: TObject; var Key: Char);
begin
  {if (ActiveControl is TEdit) then
  begin
    //with TEdit(ActiveControl) do
  if key=#13 then begin key:=#0;Button3Click(Sender);end;
  if key=#27 then begin key:=#0;close; end;
  end;}
end;

end.
