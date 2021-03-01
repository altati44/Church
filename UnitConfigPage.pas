unit UnitConfigPage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls,Printers,QRPrntr;

type
  TFormConfigPage = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel6: TPanel;
    UpDown1: TUpDown;
    Edit2: TEdit;
    Panel8: TPanel;
    UpDown2: TUpDown;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Panel9: TPanel;
    UpDown3: TUpDown;
    Panel10: TPanel;
    UpDown4: TUpDown;
    Edit4: TEdit;
    Panel11: TPanel;
    UpDown5: TUpDown;
    Edit5: TEdit;
    Panel12: TPanel;
    UpDown6: TUpDown;
    Edit6: TEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel5: TPanel;
    Image1: TImage;
    Panel15: TPanel;
    Image2: TImage;
    Aceptar: TButton;
    Cancelar: TButton;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown4Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown6Click(Sender: TObject; Button: TUDBtnType);
    procedure FormActivate(Sender: TObject);
    procedure ActualizaTipoPapel;
    procedure saliendo;
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
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
  FormConfigPage: TFormConfigPage;
  r1Mayor,r1Menor,r2Menor,
  lm,rm,um,dm,alto,ancho: Real;
  Orientacion:TPrinterOrientation;
  PapelSize: TQRPaperSize;
implementation

uses Reporte,Principal{,}, UnitNotasFecha;

{$R *.dfm}

procedure TFormConfigPage.Edit1Exit(Sender: TObject);
var
  r: Real;
  s: String;
begin
  s:=(sender as TEdit).Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    r:=StrToFloat(s);
  except;
    (sender as TEdit).Text:=format('%.1n cm',[r1Menor]);
    exit;
  end;
  if (r>r1Mayor) then
  begin
    (sender as TEdit).Text:=format('%.1n cm',[r1Mayor]);
  end else
  if (r<r1Menor) then
  begin
    (sender as TEdit).Text:=format('%.1n cm',[r1Menor]);
  end else (sender as TEdit).Text:=format('%.1n cm',[r]);
  ActualizaTipoPapel;
end;

procedure TFormConfigPage.Edit1KeyPress(Sender: TObject; var Key: Char);
var sNumAnterior:string;
begin
  sNumAnterior := (sender as TEdit).Text;
  if (key <> #3) and (key <> #22) then  // #3 = Copiar (Ctrl + C)
  begin                                 // #22 = Pegar (Ctrl + V)
    if key in [','] then                // #24 = Cortar (Ctrl + X)
    begin                               // #26 = Deshacer (Ctrl + Z)
      if (pos(key,(sender as TEdit).Text) > 0) then key:=#0;
      case key of
        ',': if ((sender as TEdit).SelStart = 0) then key:=#0;
      end;
    end
    else if not (key in ['0'..'9',#8]) then key:=#0;
  end;
  if key = #22 then
  try
    key := #0;
    (sender as TEdit).PasteFromClipBoard;
    StrToFloat((sender as TEdit).Text);
  except
    (sender as TEdit).Text := sNumAnterior;
    (sender as TEdit).SelStart := Length((sender as TEdit).Text);
  end;
  ActualizaTipoPapel;
end;

procedure TFormConfigPage.Edit3Exit(Sender: TObject);
var
  r: Real;
  s: String;
begin
  s:=(sender as TEdit).Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    r:=StrToFloat(s);
  except;
    (sender as TEdit).Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if (r>r1Mayor) then
  begin
    (sender as TEdit).Text:=format('%.1n cm',[r1Mayor]);
  end else
  if (r<r2Menor) then
  begin
    (sender as TEdit).Text:=format('%.1n cm',[r2Menor]);
  end else (sender as TEdit).Text:=format('%.1n cm',[r]);
end;

procedure TFormConfigPage.Edit3KeyPress(Sender: TObject; var Key: Char);
var sNumAnterior:string;
begin
  sNumAnterior := (sender as TEdit).Text;
  if (key <> #3) and (key <> #22) then  // #3 = Copiar (Ctrl + C)
  begin                                 // #22 = Pegar (Ctrl + V)
    if key in [','] then
    begin
      if (pos(key,(sender as TEdit).Text) > 0) then key:=#0;
      case key of
        ',': if ((sender as TEdit).SelStart = 0) then key:=#0;
      end;
    end
    else if not (key in ['0'..'9',#8]) then key:=#0;
  end;
  if key = #22 then
  try
    key := #0;
    (sender as TEdit).PasteFromClipBoard;
    StrToFloat((sender as TEdit).Text);
  except
    (sender as TEdit).Text := sNumAnterior;
    (sender as TEdit).SelStart := Length((sender as TEdit).Text);
  end;
end;

procedure TFormConfigPage.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var
  r,rr: Real;
  s: String;
begin
  s:=Edit1.Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    rr:=StrToFloat(s);
  except;
    Edit1.Text:=format('%.1n cm',[r1Menor]);
    exit;
  end;
  if (rr>r1Mayor) then
  begin
    Edit1.Text:=format('%.1n cm',[r1Mayor]);
    exit;
  end else
  if (rr<r1Menor) then
  begin
    Edit1.Text:=format('%.1n cm',[r1Menor]);
    exit;
  end;
  if Button=btNext then
  begin
    if (rr<r1Mayor) then
    begin
        r:=strToFloat(s);
        r:=r+0.1;
        s:=format('%.1n cm',[r]);
        Edit1.Text:=s;
    end;
  end else
  begin
    if (rr>r1Menor) then
    begin
        r:=strToFloat(s);
        r:=r-0.1;
        s:=format('%.1n cm',[r]);
        Edit1.Text:=s;
    end;
  end;
  ActualizaTipoPapel;
end;

procedure TFormConfigPage.UpDown2Click(Sender: TObject; Button: TUDBtnType);
var
  r,rr: Real;
  s: String;
begin
  s:=Edit2.Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    rr:=StrToFloat(s);
  except;
    Edit2.Text:=format('%.1n cm',[r1Menor]);
    exit;
  end;
  if (rr>r1Mayor) then
  begin
    Edit2.Text:=format('%.1n cm',[r1Mayor]);
    exit;
  end else
  if (rr<r1Menor) then
  begin
    Edit2.Text:=format('%.1n cm',[r1Menor]);
    exit;
  end;
  if Button=btNext then
  begin
    if (rr<r1Mayor) then
    begin
        r:=strToFloat(s);
        r:=r+0.1;
        s:=format('%.1n cm',[r]);
        Edit2.Text:=s;
    end;
  end else
  begin
    if (rr>r1Menor) then
    begin
        r:=strToFloat(s);
        r:=r-0.1;
        s:=format('%.1n cm',[r]);
        Edit2.Text:=s;
    end;
  end;
  ActualizaTipoPapel;
end;

procedure TFormConfigPage.UpDown3Click(Sender: TObject; Button: TUDBtnType);
var
  r,rr: Real;
  s: String;
begin
  s:=Edit3.Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    rr:=StrToFloat(s);
  except;
    Edit3.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if (rr>r1Mayor) then
  begin
    Edit3.Text:=format('%.1n cm',[r1Mayor]);
    exit;
  end else
  if (rr<r2Menor) then
  begin
    Edit3.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if Button=btNext then
  begin
    if (rr<r1Mayor) then
    begin
        r:=strToFloat(s);
        r:=r+0.1;
        s:=format('%.1n cm',[r]);
        Edit3.Text:=s;
    end;
  end else
  begin
    if (rr>r2Menor) then
    begin
        r:=strToFloat(s);
        r:=r-0.1;
        s:=format('%.1n cm',[r]);
        Edit3.Text:=s;
    end;
  end;
end;

procedure TFormConfigPage.UpDown4Click(Sender: TObject; Button: TUDBtnType);
var
  r,rr: Real;
  s: String;
begin
  s:=Edit4.Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    rr:=StrToFloat(s);
  except;
    Edit4.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if (rr>r1Mayor) then
  begin
    Edit4.Text:=format('%.1n cm',[r1Mayor]);
    exit;
  end else
  if (rr<r2Menor) then
  begin
    Edit4.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if Button=btNext then
  begin
    if (rr<r1Mayor) then
    begin
        r:=strToFloat(s);
        r:=r+0.1;
        s:=format('%.1n cm',[r]);
        Edit4.Text:=s;
    end;
  end else
  begin
    if (rr>r2Menor) then
    begin
        r:=strToFloat(s);
        r:=r-0.1;
        s:=format('%.1n cm',[r]);
        Edit4.Text:=s;
    end;
  end;
end;

procedure TFormConfigPage.UpDown5Click(Sender: TObject; Button: TUDBtnType);
var
  r,rr: Real;
  s: String;
begin
  s:=Edit5.Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    rr:=StrToFloat(s);
  except;
    Edit5.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if (rr>r1Mayor) then
  begin
    Edit5.Text:=format('%.1n cm',[r1Mayor]);
    exit;
  end else
  if (rr<r2Menor) then
  begin
    Edit5.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if Button=btNext then
  begin
    if (rr<r1Mayor) then
    begin
        r:=strToFloat(s);
        r:=r+0.1;
        s:=format('%.1n cm',[r]);
        Edit5.Text:=s;
    end;
  end else
  begin
    if (rr>r2Menor) then
    begin
        r:=strToFloat(s);
        r:=r-0.1;
        s:=format('%.1n cm',[r]);
        Edit5.Text:=s;
    end;
  end;
end;

procedure TFormConfigPage.UpDown6Click(Sender: TObject; Button: TUDBtnType);
var
  r,rr: Real;
  s: String;
begin
  s:=Edit6.Text;
  if pos('cm',s)>0 then delete(s,pos('cm',s),Length(s)) else
  if pos('c',s)>0 then delete(s,pos('c',s),Length(s)) else
  if pos('m',s)>0 then delete(s,pos('m',s),Length(s));
  try
    rr:=StrToFloat(s);
  except;
    Edit6.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if (rr>r1Mayor) then
  begin
    Edit6.Text:=format('%.1n cm',[r1Mayor]);
    exit;
  end else
  if (rr<r2Menor) then
  begin
    Edit6.Text:=format('%.1n cm',[r2Menor]);
    exit;
  end;
  if Button=btNext then
  begin
    if (rr<r1Mayor) then
    begin
        r:=strToFloat(s);
        r:=r+0.1;
        s:=format('%.1n cm',[r]);
        Edit6.Text:=s;
    end;
  end else
  begin
    if (rr>r2Menor) then
    begin
        r:=strToFloat(s);
        r:=r-0.1;
        s:=format('%.1n cm',[r]);
        Edit6.Text:=s;
    end;
  end;
end;

procedure TFormConfigPage.FormActivate(Sender: TObject);
begin
  r1Mayor:=StrToFloat('55,8');
  r1Menor:=StrToFloat('1,0');
  r2Menor:=StrToFloat('0,0');
  with form5.QRep1 do
  begin
    lm:=Page.LeftMargin/10;
    rm:=Page.RightMargin/10;
    um:=Page.TopMargin/10;
    dm:=Page.BottomMargin/10;
    alto:=Page.Length/10;
    ancho:=Page.Width/10;
    Orientacion:=Page.Orientation;
    if Orientacion=poPortrait then //Horizontal
        RadioButton1Click(Sender) else RadioButton2Click(Sender);
    PapelSize:=TipoDePapel;
    if PapelSize=Letter then ComboBox1.ItemIndex:=0 else //Carta
    if PapelSize=Legal then ComboBox1.ItemIndex:=1 else //Oficio
    if PapelSize=Executive then ComboBox1.ItemIndex:=2 else //Ejecutivo
    if PapelSize=A4 then ComboBox1.ItemIndex:=3 else  //A4
    if PapelSize=Custom then ComboBox1.ItemIndex:=4;  //Personalizado
    Edit1.Text:=format('%.1n cm',[ancho]);
    Edit2.Text:=format('%.1n cm',[alto]);
    Edit3.Text:=format('%.1n cm',[um]);
    Edit4.Text:=format('%.1n cm',[lm]);
    Edit5.Text:=format('%.1n cm',[dm]);
    Edit6.Text:=format('%.1n cm',[rm]);
  end;
  {ShowMessage('Alto:'+FloatToStr(alto)+' Ancho:'+FloatToStr(ancho)+
  ' left:'+FloatToStr(lm)+' Right:'+FloatToStr(rm)+' Up:'+FloatToStr(um)+
  ' Down:'+FloatToStr(dm)); }
end;

procedure TFormConfigPage.AceptarClick(Sender: TObject);
begin
  saliendo;
end;

procedure TFormConfigPage.ActualizaTipoPapel;
var
  s1,s2:String;
  r1,r2:Real;
begin
  {s1:=Edit1.Text;
  s2:=Edit2.Text;
  if pos('cm',s1)>0 then delete(s1,pos('cm',s1),2);
  if pos('cm',s2)>0 then delete(s2,pos('cm',s2),2);
  r1:=StrToFloat(s1);
  r2:=StrToFloat(s2);}
  if Orientacion=poPortrait then
  begin
    if (Edit1.Text='21,6 cm') and (Edit2.Text='27,9 cm') then ComboBox1.ItemIndex:=0 else
    if (Edit1.Text='21,6 cm') and (Edit2.Text='35,6 cm') then ComboBox1.ItemIndex:=1 else
    if (Edit1.Text='19,1 cm') and (Edit2.Text='25,4 cm') then ComboBox1.ItemIndex:=2 else
    if (Edit1.Text='21,0 cm') and (Edit2.Text='29,7 cm') then ComboBox1.ItemIndex:=3 else
      ComboBox1.ItemIndex:=4
  end else
  if Orientacion=poLandScape then
  begin
    if (Edit1.Text='27,9 cm') and (Edit2.Text='21,6 cm') then ComboBox1.ItemIndex:=0 else
    if (Edit1.Text='35,6 cm') and (Edit2.Text='21,6 cm') then ComboBox1.ItemIndex:=1 else
    if (Edit1.Text='25,4 cm') and (Edit2.Text='19,1 cm') then ComboBox1.ItemIndex:=2 else
    if (Edit1.Text='29,7 cm') and (Edit2.Text='21,0 cm') then ComboBox1.ItemIndex:=3 else
      ComboBox1.ItemIndex:=4
  end
end;

procedure TFormConfigPage.ComboBox1Change(Sender: TObject);
begin
  if Orientacion=poPortrait then
  begin
    case ComboBox1.ItemIndex of
      0: begin Edit1.Text:='21,6 cm'; Edit2.Text:='27,9 cm' end;
      1: begin Edit1.Text:='21,6 cm'; Edit2.Text:='35,6 cm' end;
      2: begin Edit1.Text:='19,1 cm'; Edit2.Text:='25,4 cm' end;
      3: begin Edit1.Text:='21,0 cm'; Edit2.Text:='29,7 cm' end;
    end;
  end else
  if Orientacion=poLandScape then
  begin
    case ComboBox1.ItemIndex of
      0: begin Edit1.Text:='27,9 cm'; Edit2.Text:='21,6 cm' end;
      1: begin Edit1.Text:='35,6 cm'; Edit2.Text:='21,6 cm' end;
      2: begin Edit1.Text:='25,4 cm'; Edit2.Text:='19,1 cm' end;
      3: begin Edit1.Text:='29,7 cm'; Edit2.Text:='21,0 cm' end;
    end;
  end;
end;

procedure TFormConfigPage.RadioButton1Click(Sender: TObject);
var
  mUp,mRight,mDown,mLeft,pAlto,pAncho:String;
begin
  RadioButton1.Checked:=true;
  Panel5.Color:=clAqua;
  Panel15.Color:=clBtnFace;
  mUp:=Edit3.Text;mLeft:=Edit4.Text;mDown:=Edit5.Text;mRight:=Edit6.Text;
  pAncho:=Edit1.Text;pAlto:=Edit2.Text;
  Edit3.Text:=mRight;Edit4.Text:=mUp;Edit5.Text:=mLeft;Edit6.Text:=mDown;
  Edit1.Text:=pAlto;Edit2.Text:=pAncho;
  Orientacion:=poPortrait;
  ActualizaTipoPapel;
end;

procedure TFormConfigPage.RadioButton2Click(Sender: TObject);
var
  mUp,mRight,mDown,mLeft,pAlto,pAncho:String;
begin
  RadioButton2.Checked:=true;
  Panel15.Color:=clAqua;
  Panel5.Color:=clBtnFace;
  mUp:=Edit3.Text;mLeft:=Edit4.Text;mDown:=Edit5.Text;mRight:=Edit6.Text;
  pAncho:=Edit1.Text;pAlto:=Edit2.Text;
  Edit3.Text:=mLeft;Edit4.Text:=mDown;Edit5.Text:=mRight;Edit6.Text:=mUp;
  Edit1.Text:=pAlto;Edit2.Text:=pAncho;
  Orientacion:=poLandScape;
  ActualizaTipoPapel;
end;

procedure TFormConfigPage.CancelarClick(Sender: TObject);
begin
  with form5.QRep1 do
  begin
    if Orientacion=poPortrait then //Horizontal
        RadioButton1Click(Sender) else RadioButton2Click(Sender);
    PapelSize:=TipoDePapel;
    if PapelSize=Letter then ComboBox1.ItemIndex:=0 else //Carta
    if PapelSize=Legal then ComboBox1.ItemIndex:=1 else //Oficio
    if PapelSize=Executive then ComboBox1.ItemIndex:=2 else //Ejecutivo
    if PapelSize=A4 then ComboBox1.ItemIndex:=3 else  //A4
    if PapelSize=Custom then ComboBox1.ItemIndex:=4;  //Personalizado
    Edit1.Text:=format('%.1n cm',[ancho]);
    Edit2.Text:=format('%.1n cm',[alto]);
    Edit3.Text:=format('%.1n cm',[um]);
    Edit4.Text:=format('%.1n cm',[lm]);
    Edit5.Text:=format('%.1n cm',[dm]);
    Edit6.Text:=format('%.1n cm',[rm]);
  end;
  close;
end;

procedure TFormConfigPage.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then CancelarClick(Sender) else
  if (key = VK_RETURN) then
  begin
    if (ActiveControl.name='Edit1') or (ActiveControl.name='Edit2') then
    Edit1Exit(ActiveControl);
    if (ActiveControl.name='Edit3') or (ActiveControl.name='Edit4') or
    (ActiveControl.name='Edit5') or (ActiveControl.name='Edit6') then
    Edit3Exit(ActiveControl);
    saliendo;
  end;

end;

procedure TFormConfigPage.saliendo;
var
  s1,s2,s3,s4,s5,s6: String;
begin
  s1:=Edit1.Text;s2:=Edit2.Text;s3:=Edit3.Text;s4:=Edit4.Text;
  s5:=Edit5.Text;s6:=Edit6.Text;
  if pos('cm',s1)>0 then delete(s1,pos('cm',s1),2);
  if pos('cm',s2)>0 then delete(s2,pos('cm',s2),2);
  if pos('cm',s3)>0 then delete(s3,pos('cm',s3),2);
  if pos('cm',s4)>0 then delete(s4,pos('cm',s4),2);
  if pos('cm',s5)>0 then delete(s5,pos('cm',s5),2);
  if pos('cm',s6)>0 then delete(s6,pos('cm',s6),2);
  lm:=StrToFloat(s4);
  rm:=StrToFloat(s6);
  um:=StrToFloat(s3);
  dm:=StrToFloat(s5);
  alto:=StrToFloat(s2);
  ancho:=StrToFloat(s1);
  if ComboBox1.ItemIndex=0 then
  begin
    TipoDePapel:=Letter;
    form5.QRep1.Page.PaperSize:=TipoDePapel;
    FormNotasFecha.QRep3.Page.PaperSize:=TipoDePapel;
  end else
  if ComboBox1.ItemIndex=1 then
  begin
    TipoDePapel:=Legal;
    form5.QRep1.Page.PaperSize:=TipoDePapel;
    FormNotasFecha.QRep3.Page.PaperSize:=TipoDePapel;
  end else
  if ComboBox1.ItemIndex=2 then
  begin
    TipoDePapel:=Executive;
    form5.QRep1.Page.PaperSize:=TipoDePapel;
    FormNotasFecha.QRep3.Page.PaperSize:=TipoDePapel;
   end else
  if ComboBox1.ItemIndex=3 then
  begin
    TipoDePapel:=A4;
    form5.QRep1.Page.PaperSize:=TipoDePapel;
    FormNotasFecha.QRep3.Page.PaperSize:=TipoDePapel;
  end else
  begin
    TipoDePapel:=Custom;
    form5.QRep1.Page.PaperSize:=TipoDePapel;
    FormNotasFecha.QRep3.Page.PaperSize:=TipoDePapel;
  end;
  if TipoDePapel=Custom then
  begin
    with form5.QRep1 do
    begin
      Page.Length:=alto*10.0;
      Page.Width:=ancho*10.0;
    end;
    with FormNotasFecha.QRep3 do
    begin
      Page.Length:=alto*10.0;
      Page.Width:=ancho*10.0;
    end;
  end;
  with form5.QRep1 do
  begin
    if RadioButton1.Checked then Page.Orientation:=poPortrait
        else Page.Orientation:=poLandScape;
    Page.LeftMargin:=lm*10;
    Page.RightMargin:=rm*10;
    Page.TopMargin:=um*10;
    Page.BottomMargin:=dm*10;
  end;
  with FormNotasFecha.QRep3 do
  begin
    if RadioButton1.Checked then Page.Orientation:=poPortrait
        else Page.Orientation:=poLandScape;
    Page.LeftMargin:=lm*10;
    Page.RightMargin:=rm*10;
    Page.TopMargin:=um*10;
    Page.BottomMargin:=dm*10;
  end;
  close;
end;

end.
