unit UnitCheckKey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, icekey, ExtCtrls,JvComponentBase, JvComputerInfoEx;


type
  TFormCheckKey = class(TForm)
    icekey1: Ticekey;
    Abrir: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    JvComputerInfoEx1: TJvComputerInfoEx;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function limitante:boolean;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckKey: TFormCheckKey;
  SK, ST, Llave, cadena: String;
  s, s1, s2, s3: String;
  valor: Integer;

const
    keyAA:  array[1..20] of string = ('FF','EA','CC','AA','DD','DC','BB','CB','EF','BD',
                                      'FC','AD','EE','AC','ED','FA','BA','FB','AE','CE');

implementation
  uses eshardwareid, StrUtils, Registry,Principal,UnitId,
    Unit2,GuardaBuscar, Unit7, Reporte, Unit8, Unit9, Unit10, Unit11,
    Unit12, UnitImpresion, UnitOrdenar, Unit13, UnitBImportar, UnitEspera,
    UnitDateVisitas, UnitIdiomas, UnitEnfermedades, UnitConfigurarDB,
    UnitAbout, UnitFechaNBD, UnitConfigPage, UnitTarjetero,UnitEstablecerID,
    UnitBorrarID,UnitBusqAntExt,UnitAddIdioma,UnitAddEnfernedad,
    UnitNotasFecha;

{$R *.dfm}

procedure TFormCheckKey.FormCreate(Sender: TObject);
var
  bdate: String;
  Registro: TRegistry;
begin
  //                     'Registrar'
  caption:=form1.Decript('Wffmr|t`t',987654321);
  //                             'Registrar'
  Button1.Caption:=form1.Decript('Wffmr|t`t',987654321);
  //                             'Probar'
  Button3.Caption:=form1.Decript('Uqnf`z',987654321);
  //                             'Cancelar'
  Button2.Caption:=form1.Decript('Fbogddgs',987654321);
  //'Si no tiene la llave de registro, consulte con este código a:'
  Label1.Caption:=form1.Decript('Vj!jn(rhcmm&le dmawc$ae#zb`hwrvh*''flfpqlsb(ajn&bqrd&d÷boeo''d8',987654321);
                              //'Luis Alberto Suárez Pavón'
  Label2.Caption:=form1.Decript('Ivhw!Ijccq|i Wuése{&Tdvðf',987654321);
  eshardwareid.gethardwareid;
  s1:=eshardwareid.CPUID;
  s2:=DateToStr(JvComputerInfoEx1.BIOS.Date);//eshardwareid.Biosdate;
  s3:=IntToStr(JvComputerInfoEx1.CPU.L1DataCache)+
      IntToStr(JvComputerInfoEx1.CPU.L1CodeCache)+
      IntToStr(JvComputerInfoEx1.CPU.L2Cache)+
      IntToStr(JvComputerInfoEx1.CPU.L3Cache);
  //ShowMessage(s1+#13+s2+#13+s3);
  while length(s3)<8 do s3:=s3+'F';
  while pos('-',s1)<>0 do delete(s1,pos('-',s1),1);
  while pos('/',s2)<>0 do delete(s2,pos('/',s2),1);
  while pos('/',s3)<>0 do delete(s3,pos('/',s3),1);
  s1:=ReverseString(copy(s1,1,length(s1) div 2))+copy(s1,(length(s1) div 2)+1,16);
  s2:=ReverseString(s2);
  s3:=ReverseString(s3);
  bdate:=copy(s1,1,8)+'-'+s3+'-'+copy(s1,9,8)+'-'+s2+'-'+copy(s1,17,8)+'-'+copy(s1,25,8);
  SK:=bdate;
  icekey1.CreateIcekey(SK);
  Llave := icekey1.GetIcekey;
  Memo1.Text:=SK;
  try
    Registro := TRegistry.Create(KEY_READ);
    Registro.RootKey :=HKEY_LOCAL_MACHINE;//=2147483650;
                                 //'\Software\Church - lasptaniSoft'
    Registro.OpenKey(form1.Decript('YPnbugsc_Knuvc`!-!jevpwiinRk`p',987654321), False);
                                          //'KeyChurch'
    ST := Registro.ReadString(form1.Decript('NfxGi}tbn',987654321));
                                 //'\SYSTEM\Setup\AnswerFileMap'
    Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), False);
                                             //'ms_msdataware'
    CadID := Registro.ReadString(form1.decript('hp^irlgugtite',987654321));
    //                             '\SYSTEM\Setup\AnswerFileMap'
    //Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), False);
    //ShowMessage(BoolToStr(Registro.ValueExists(form1.Decript('hp^sdlb`rbgra',987654321)),true));
    //cadena := Registro.ReadString(form1.Decript('hp^sdlb`rbgra',987654321));//ms_weddataware
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
    Application.Terminate;
  end;
    icekey1.CreateIcekey(SK);
    //ShowMessage(ST+#13+icekey1.GetIcekey);
    if ST = icekey1.GetIcekey then
    begin
      // Aqui va el Form Principal a Activar ....
      //Application.CreateForm(TForm1, Form1);
      form1.Show;
      if CadID<>'' then
      begin
        Application.CreateForm(TFormID, FormID);
        FormID.ShowModal;
        {Esto es para la version de prueba, las corridas que pueden hacer}
        //if BoolPrueba then limitante;
      end else
      begin
        {Esto es para la version de prueba, las corridas que pueden hacer}
        //if not limitante then {si limitante=true, no carga y cierra}
        begin
        Application.CreateForm(TFormImpresion, FormImpresion);
        Application.CreateForm(TForm2, Form2);
        Application.CreateForm(TForm5, Form5);
        Application.CreateForm(TForm6, Form6);
        Application.CreateForm(TForm7, Form7);
        Application.CreateForm(TForm8, Form8);
        Application.CreateForm(TForm9, Form9);
        Application.CreateForm(TForm10, Form10);
        Application.CreateForm(TForm11, Form11);
        Application.CreateForm(TForm12, Form12);
        Application.CreateForm(TFormOrdenar, FormOrdenar);
        Application.CreateForm(TForm13, Form13);
        Application.CreateForm(TFormBImportar, FormBImportar);
        Application.CreateForm(TFormEspera, FormEspera);
        Application.CreateForm(TFormBusqAntExt, FormBusqAntExt);
        Application.CreateForm(TFormDateVisitas, FormDateVisitas);
        Application.CreateForm(TFormEnfermedades, FormEnfermedades);
        Application.CreateForm(TFormIdiomas, FormIdiomas);
        Application.CreateForm(TFormAddIdioma, FormAddIdioma);
        Application.CreateForm(TFormAddEnfermedad, FormAddEnfermedad);
        Application.CreateForm(TFormConfigurarDB, FormConfigurarDB);
        Application.CreateForm(TFormAbout, FormAbout);
        Application.CreateForm(TFormFechaNBD, FormFechaNBD);
        Application.CreateForm(TFormConfigPage, FormConfigPage);
        Application.CreateForm(TFormTarjetero, FormTarjetero);
        Application.CreateForm(TFormBorrarID,FormBorrarID);
        Application.CreateForm(TFormEstablecerID,FormEstablecerID);
        Application.CreateForm(TFormNotasFecha, FormNotasFecha);
        end;
      end;
    end else
    FormCheckKey.Show;
end;

{para limitar las corridas del programa, como version de prueba}
function TFormCheckKey.limitante:boolean;
var
  crypto1: String;
  Registro: TRegistry;
begin
  {Primero encript a 500 con random a 9(siempre), luego la cadena la vuelvo a encript a 400}
  //ShowMessage('limitante.'+#13+cadena);
  if cadena='' then
  begin            //'{1F657D5E-F74E-B16E-D5EF-16EED50[#deveces]77C}'=long de cad=32 sin las llaves                                             //'}'
    crypto1:=form1.decript(Form1.Decript('y>G662F5C C34D.G20F.N0DB <7D@B07',400),500)+
             keyAA[1]+form1.decript(Form1.Decript('58B',400),500)+
             form1.decript(Form1.Decript('',400),500);
    try
      Registro:=TRegistry.Create;
      Registro.RootKey := HKEY_LOCAL_MACHINE;
      //                             '\SYSTEM\Setup\AnswerFileMap'
      Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), True);
      Registro.WriteString(form1.Decript('hp^sdlb`rbgra',987654321),crypto1);//ms_weddataware
      Registro.Free;
    except;
      Registro.Free;
                              //'Error accediendo al registro'
      ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
      Application.Terminate;
    end;
    result:=false;
  end else
  begin
    {valor comienza en 1 hasta 20 son 20 corridas}
    if (valor<20) and (valor>=1) and
    (s1='y>G662F5C C34D.G20F.N0DB <7D@B07') and (s2='58B') and (s3='') then
    begin
      //ShowMessage(s1+s2+s3);
      valor:=valor+1;
      //cadena:=IntToStr(valor);
      crypto1:=form1.decript(Form1.Decript('y>G662F5C C34D.G20F.N0DB <7D@B07',400),500)+
             keyAA[valor]+form1.decript(Form1.Decript('58B',400),500)+
             form1.decript(Form1.Decript('',400),500);
      try
        Registro:=TRegistry.Create;
        Registro.RootKey := HKEY_LOCAL_MACHINE;
        Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), True);
        Registro.WriteString(form1.Decript('hp^sdlb`rbgra',987654321),crypto1);//ms_weddataware
        Registro.Free;
      except;
        Registro.Free;
                                //'Error accediendo al registro'
        ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
        Application.Terminate;
      end;
      result:=false;
    end else
    begin
      {                     'Lo sentimos, acaba de expirar el tiempo  '
                            'de prueba de la aplicación. '
                            'Consulte a Luis Alberto Suárez Pavón.   '
                            'Aviso...'}
      Application.MessageBox (PChar(form1.decript('Il!wdfrhkl{* ecica!ba%e{xnu`v&ak&slfesk ''',987654321)+#13+
                              form1.decript('af!ts}ccg#lc ha(`pmogdcjûi)!',987654321)+#13+#13+
                              form1.decript('Flowtdrd&b(Jums(@lccvqo#[ræsa|$Wgqöm&#$ ',987654321)),
                              PChar(form1.decript('Duhwn&(/',987654321)),MB_OK+MB_ICONEXCLAMATION);
      result:=true;
      Application.Terminate;
      exit;
    end;
  end;
end;

//Boton para probar con 20 corridas
procedure TFormCheckKey.Button3Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  BoolPrueba:=true;
  try
    Registro := TRegistry.Create(KEY_READ);
    Registro.RootKey :=HKEY_LOCAL_MACHINE;//=2147483650;
    //                             '\SYSTEM\Setup\AnswerFileMap'
    Registro.OpenKey(form1.Decript('YPXWUMK]Uf|spXAfrwdtBllfEfw',987654321), False);
      //ShowMessage(BoolToStr(Registro.ValueExists(form1.Decript('hp^sdlb`rbgra',987654321)),true));
    cadena := Registro.ReadString(form1.Decript('hp^sdlb`rbgra',987654321));//ms_weddataware
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
    Application.Terminate;
  end;
  if cadena<>'' then
  begin
    s:=copy(cadena,33,2);{el codigo de corridas}
    if s=keyAA[1] then s:=IntToStr(1) else
    if s=keyAA[2] then s:=IntToStr(2) else
    if s=keyAA[3] then s:=IntToStr(3) else
    if s=keyAA[4] then s:=IntToStr(4) else
    if s=keyAA[5] then s:=IntToStr(5) else
    if s=keyAA[6] then s:=IntToStr(6) else
    if s=keyAA[7] then s:=IntToStr(7) else
    if s=keyAA[8] then s:=IntToStr(8) else
    if s=keyAA[9] then s:=IntToStr(9) else
    if s=keyAA[10] then s:=IntToStr(10) else
    if s=keyAA[11] then s:=IntToStr(11) else
    if s=keyAA[12] then s:=IntToStr(12) else
    if s=keyAA[13] then s:=IntToStr(13) else
    if s=keyAA[14] then s:=IntToStr(14) else
    if s=keyAA[15] then s:=IntToStr(15) else
    if s=keyAA[16] then s:=IntToStr(16) else
    if s=keyAA[17] then s:=IntToStr(17) else
    if s=keyAA[18] then s:=IntToStr(18) else
    if s=keyAA[19] then s:=IntToStr(19) else
    if s=keyAA[20] then s:=IntToStr(20) else
    s:='0';
    s1:=copy(cadena,1,32);s1:=form1.decript(form1.decript(s1,500),400);
    s2:=copy(cadena,35,3);s2:=form1.decript(form1.decript(s2,500),400);
    s3:=copy(cadena,38,1);s3:=form1.decript(form1.decript(s3,500),400);
  end;
  {valor comienza en 1 hasta 20 son 20 corridas}
  if cadena<>'' then
  begin
    if (StrToInt(s)<20) and (StrToInt(s)>=1) and
    (s1='y>G662F5C C34D.G20F.N0DB <7D@B07') and (s2='58B') and (s3='') then
    begin
      valor:=StrToInt(s);
      //                           'Church - lasptaniSoft (Corrida #'
      form1.Caption:=form1.decript('Fktvb`&,&oiuppafhSn`p%(@guuh`g$$',987654321)+IntToStr(valor+1)+')';
    end else
    begin
      //                           'Church - lasptaniSoft (Corrida #20'
      Form1.Caption:=form1.decript('Fktvb`&,&oiuppafhSn`p%(@guuh`g$$47',987654321)+')';
    end;
  end else//                     'Church - lasptaniSoft (Corrida #20'
    form1.Caption:=form1.decript('Fktvb`&,&oiuppafhSn`p%(@guuh`g$$',987654321)+IntToStr(1)+')';
  FormCheckKey.Close;
  form1.Show;
  if CadID<>'' then
  begin
    Application.CreateForm(TFormID, FormID);
    FormID.ShowModal;
    {Esto es para la version de prueba, las corridas que pueden hacer}
    //if BoolPrueba then limitante;
  end else
  begin
    {Esto es para la version de prueba, las corridas que pueden hacer}
    if not limitante then {si limitante=true, no carga y cierra}
    begin
    Application.CreateForm(TFormImpresion, FormImpresion);
    Application.CreateForm(TForm2, Form2);
    Application.CreateForm(TForm5, Form5);
    Application.CreateForm(TForm6, Form6);
    Application.CreateForm(TForm7, Form7);
    Application.CreateForm(TForm8, Form8);
    Application.CreateForm(TForm9, Form9);
    Application.CreateForm(TForm10, Form10);
    Application.CreateForm(TForm11, Form11);
    Application.CreateForm(TForm12, Form12);
    Application.CreateForm(TFormOrdenar, FormOrdenar);
    Application.CreateForm(TForm13, Form13);
    Application.CreateForm(TFormBImportar, FormBImportar);
    Application.CreateForm(TFormEspera, FormEspera);
    Application.CreateForm(TFormBusqAntExt, FormBusqAntExt);
    Application.CreateForm(TFormDateVisitas, FormDateVisitas);
    Application.CreateForm(TFormEnfermedades, FormEnfermedades);
    Application.CreateForm(TFormIdiomas, FormIdiomas);
    Application.CreateForm(TFormAddIdioma, FormAddIdioma);
    Application.CreateForm(TFormAddEnfermedad, FormAddEnfermedad);
    Application.CreateForm(TFormConfigurarDB, FormConfigurarDB);
    Application.CreateForm(TFormAbout, FormAbout);
    Application.CreateForm(TFormFechaNBD, FormFechaNBD);
    Application.CreateForm(TFormConfigPage, FormConfigPage);
    Application.CreateForm(TFormTarjetero, FormTarjetero);
    Application.CreateForm(TFormBorrarID,FormBorrarID);
    Application.CreateForm(TFormEstablecerID,FormEstablecerID);
    Application.CreateForm(TFormNotasFecha, FormNotasFecha);
    end;
  end;// else
  //FormCheckKey.Show;
end;


procedure TFormCheckKey.Button1Click(Sender: TObject);
var
  Registro  : TRegistry;
  F         : TextFile;
  SS: String;
begin
  SS:= '';
  If Abrir.Execute then
  begin
    AssignFile(F,Abrir.FileName);
    Reset(F);
//''''''''''''''''''''''''''''''
    ReadLn(F, SS);
    CloseFile(F);
//''''''''''''''''''''''''''''''
    If SS = Llave then
    begin
      try
        Registro:=TRegistry.Create;
        Registro.RootKey := HKEY_LOCAL_MACHINE;
                                     //'\Software\Church - lasptaniSoft'
        Registro.OpenKey(form1.Decript('YPnbugsc_Knuvc`!-!jevpwiinRk`p',987654321), True);
                                         //'KeyChurch'
        Registro.WriteString(form1.Decript('NfxGi}tbn',987654321),SS);
        Registro.Free;
                                //'PROGRAMA REGISTRADO.'+#13+'    Reinicie la Aplicación.'
        showmessage(form1.decript('UQNCSIK@&QMAIWTZ@DN(',987654321)+#13+
        form1.decript('%#!$Smooo`ac ha(@pmogdcjûi)',987654321));
         Application.Terminate;
         //exit;

        //Form1.Show;
      except;
        Registro.Free;
                                //'Error accediendo al registro'
        ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321));
        Application.Terminate;
      end;
     end else
     begin
                               //'LLAVE INCORRECTA... '
       showmessage(form1.decript('IO@RD(OOELZTEGTI/./&',987654321));
     end;
   end;
end;

procedure TFormCheckKey.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

