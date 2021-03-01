unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Panel6: TPanel;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    RichEdit1: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    SpeedButton7: TSpeedButton;
    SpeedButton13: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    Procedure Buscar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox7Change(Sender: TObject);
    procedure ComboBox7KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox7DropDown(Sender: TObject);
    Procedure ActualizandoUni;
    Procedure ActualizandoAso;
    Procedure ActualizandoProv;
    Procedure ActualizandoDist;
    Procedure ActualizandoIgl;
    Procedure PonAsociacion;
    Procedure PonProvincias;
    Procedure PonDistritos;
    Procedure PonIglesias;
    procedure ComboBox7Select(Sender: TObject);
    procedure ComboBox5DropDown(Sender: TObject);
    procedure ComboBox6DropDown(Sender: TObject);
    procedure ComboBox3DropDown(Sender: TObject);
    procedure ComboBox4DropDown(Sender: TObject);
    procedure ComboBox5Select(Sender: TObject);
    procedure ComboBox6Select(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure ComboBox4Select(Sender: TObject);
    procedure RectificaTexto;
    procedure ComboBox2Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  IndU,IndA,IndP,IndD,IndI: TStrings;{para distinguir en caso de Nombres Iguales}
  InU,InA,InP,InD,InI: String;
  TeclaReturn: Boolean=true;//para advertir Return en el ComboBox2
implementation

uses Principal, GuardaBuscar;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
  function CambiaEn(Cadena, Esto: String): String;
  var
    aPos: Integer;
  begin
    aPos := Pos(Esto, Cadena);
    Result:= '';
    while (aPos > 0) do
    begin
      Result := Result + Copy(Cadena, 1, aPos-1);
      Delete(Cadena, 1, aPos + Length(Esto)-1);
      If Esto='?' then Insert('_',Cadena,1);
      If Esto='*' then Insert('%',Cadena,1);
      aPos := Pos(Esto, Cadena);
    end;
    Result := Result+Cadena;
  end;
var i: Integer;
begin
  //showMessage(IdU+'/'+InU+#13+IdA+'/'+InA+#13+IdP+'/'+InP+#13+IdD+'/'+InD+#13+IdI+'/'+InI);
  Prueba1:=''; Prueba2:='';
  If RichEdit1.Text<>'' then
  begin
    Prueba1:=CambiaEn(RichEdit1.Text,'?');
    Prueba1:=CambiaEn(Prueba1,'*');
    Prueba2:=' and ('+Prueba1+')';
    Prueba1:=Prueba2;//If (ComboBox1.Items.Strings[ComboBox1.ItemIndex]='Activa')
    for i:=0 to form6.TreeView1.Items.Count-1 do
    begin
      if (form6.TreeView1.Items.Item[i].Text=RichEdit1.Text) then
      begin
        form6.TreeView1.Items.Item[i].Delete;
        break;
      end;
    end;
    form6.TreeView1.Items.AddFirst(nil,RichEdit1.Text);
    form6.TreeView1.Select(form6.TreeView1.Items.Item[0]);
    Form6.GuardalistaB;
  end else
  begin
    if Application.MessageBox ('No ha introducido la cadena de búsqueda.'+#13+
                             '       ¿Desea intentarlo nuevamente?',
                          'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No then
    begin close; end else begin RichEdit1.SetFocus;Exit; end;
  end;
  If CheckBox1.Checked then  //Busqueda avanzada si
  begin
    SpeedButton13.Visible:=false;//El otro boton de busqueda anterior
   ///////////////Buscar;
    {IdU:=(IndU[ComboBox7.ItemIndex]);
    IdA:=(IndA[ComboBox5.ItemIndex]);
    IdP:=(IndP[ComboBox6.ItemIndex]);
    IdD:=(IndD[ComboBox3.ItemIndex]);
    IdI:=(IndI[ComboBox4.ItemIndex]);}
    If (ComboBox1.Items.Strings[ComboBox1.ItemIndex]='Activa') and
        (RichEdit1.Text<>'') then
    begin
      Activa:=true;Global:=false;Seleccion:=false;Normal:=false;
      Union:=ComboBox7.Items.Strings[ComboBox7.ItemIndex];
      Asociacion:=ComboBox5.Items.Strings[ComboBox5.ItemIndex];
      Provincia:=ComboBox6.Items.Strings[ComboBox6.ItemIndex];
      Distrito:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
      Iglesia:=ComboBox4.Items.Strings[ComboBox4.ItemIndex];
      if Form1.ADOConnection1.Connected then
      begin
        VieneDeBuscar:=true;
        Form1.CampoVisible;
      end else
      begin
        Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                             '       ¡Tabla Maestra desconectada!',
                             'Información',mb_OK+MB_ICONINFORMATION);
        IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';VieneDeBuscar:=false;
        Activa:=false;Global:=false;Seleccion:=false;Normal:=false;
        close;
      end;
    end else
    If (ComboBox1.Items.Strings[ComboBox1.ItemIndex]='Global') and
      (RichEdit1.Text<>'') then
    begin
      Global:=true;Activa:=false;Seleccion:=false;Normal:=false;
      if Form1.ADOConnection1.Connected then
      begin
        VieneDeBuscar:=true;
        Form1.CampoVisible;
      end else
      begin
        Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                             '       ¡Tabla Maestra desconectada!',
                             'Información',mb_OK+MB_ICONINFORMATION);
        IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';VieneDeBuscar:=false;
        Activa:=false;Global:=false;Seleccion:=false;Normal:=false;
        close;
      end;
    end else
    If (ComboBox1.Items.Strings[ComboBox1.ItemIndex]='Selección') and
      (RichEdit1.Text<>'') then
    begin
      if Form1.ADOConnection1.Connected then
      begin
        if (ComboBox7.ItemIndex<>-1) then
        begin
          if ComboBox7.ItemIndex<>-1 then IdU:=InU else IdU:='';
          if ComboBox5.ItemIndex<>-1 then IdA:=InA else IdA:='';
          if ComboBox6.ItemIndex<>-1 then IdP:=InP else IdP:='';
          if ComboBox3.ItemIndex<>-1 then IdD:=InD else IdD:='';
          if ComboBox4.ItemIndex<>-1 then IdI:=InI else IdI:='';
          Seleccion:=true;Activa:=false;Global:=false;Normal:=false;
          Union:=ComboBox7.Items.Strings[ComboBox7.ItemIndex];
          Asociacion:=ComboBox5.Items.Strings[ComboBox5.ItemIndex];
          Provincia:=ComboBox6.Items.Strings[ComboBox6.ItemIndex];
          Distrito:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
          Iglesia:=ComboBox4.Items.Strings[ComboBox4.ItemIndex];
          VieneDeBuscar:=true;
          Form1.CampoVisible;
        end else
        begin
          if Application.MessageBox ('No ha seleccionado alguna opción.   '+#13+
                             '    ¿Desea intentarlo nuevamente?',
                             'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No then

          begin
            close;
          end else RichEdit1.SetFocus;
        end;
      end else
      begin
        Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                               '       ¡Tabla Maestra desconectada!',
                               'Información',mb_OK+MB_ICONINFORMATION);
        IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';VieneDeBuscar:=false;
        Activa:=false;Global:=false;Seleccion:=false;Normal:=false;
        close;
      end;
    end;
  end else
  If not (CheckBox1.Checked) and (RichEdit1.Text<>'') then
  begin
    if not Normal and Not Activa then
    if Application.MessageBox (' No existe una Iglesia activada.     '+#13+
                             '¿Desea intentarlo nuevamente?',
                             'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No then

    begin
      close;exit;
    end else begin RichEdit1.SetFocus;exit; end;
    Seleccion:=false;Activa:=true;Global:=false;Normal:=false;
    if Form1.ADOConnection1.Connected then
    begin
      VieneDeBuscar:=true;
      Form1.CampoVisible;
    end else
    begin
      Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                           '       ¡Tabla Maestra desconectada!',
                           'Información',mb_OK+MB_ICONINFORMATION);
      IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';VieneDeBuscar:=false;
      Activa:=false;Global:=false;Seleccion:=false;Normal:=false;
      close;
    end;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  VieneDeBuscar:=false;
  Close;
end;

procedure TForm2.ComboBox7Change(Sender: TObject);
begin
  //ActualizandoAso;
  //Asociacion:=ComboBox5.Items.Strings[ComboBox5.ItemIndex];
end;

procedure TForm2.ComboBox5Change(Sender: TObject);
begin
  //ActualizandoProv;
  //Asociacion:=ComboBox5.Items.Strings[ComboBox5.ItemIndex];
end;

procedure TForm2.ComboBox6Change(Sender: TObject);
begin
  //ActualizandoDist;
  //Provincia:=ComboBox6.Items.Strings[ComboBox6.ItemIndex];
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
begin
  //ActualizandoIgl;
  //Distrito:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
end;

procedure TForm2.ComboBox4Change(Sender: TObject);
begin
  //if (ComboBox4.ItemIndex<>-1) then
  //Iglesia:=ComboBox4.Items.Strings[ComboBox4.ItemIndex];
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13	then
  begin
    if TeclaReturn then Button1Click(Sender) else key:=#0;;
  end;
  If key=#27 then Close;//Cerramos;
  TeclaReturn:=true;
end;

Procedure TForm2.Buscar;
begin
{  if Form1.ListBox2.Count<=0 then
  begin
  If Application.MessageBox('Tiene que configurar la Tabla, vaya '+#13+
                             '  a la Pestaña: '+ 'Configurar Tabla.',
                             'Aclaración',MB_OK	+MB_IconStop) =
                             ID_OK Then
    Form1.ADODataSet1.Active:=False;
    //DBGrid1.Options:=[dgColumnResize,dgTabs,dgConfirmDelete,dgCancelOnExit];
    Close;
    exit;
    //Global:=false;
  end;
   //ShowMessage(Edit1.Text+'   '+ComboBox2.Text);
   If ComboBox1.Items.Strings[ComboBox1.ItemIndex]='Global' then
  if RichEdit1.Text<>'' then Form1.ADODataSet1.Filter:='['+ComboBox2.Text+']='+
                                              QuotedStr(RichEdit1.Text);
  //ShowMessage(ComboBox1.Items.Strings[ComboBox1.ItemIndex]);
  {If Form1.ListBox2.Count>0 then
  begin 
    //Form1.CamposMostrados;
    Form1.DBGrid1.Columns[0].FieldName:=ComboBox2.Text;
    Form1.DBGrid1.Columns[0].Visible:=false;
    Form1.ADODataSet1.Active:=True;
    Form1.NoMiembros;
  end else
    begin
      Form1.Table1.Active:=False;
      Form1.Label13.Caption:='0';
    end;
  Close;
  //If key=#13	then Buscar;
  }
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  VieneDeBuscar:=false;
  // por click en Iglesia
  If Normal or Activa then
  begin
    ComboBox1.Clear;
    ComboBox1.Items.Add('Activa');
    ComboBox1.Items.Add('Global');
    ComboBox1.Items.Add('Selección');
    ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('Activa');
    ComboBox7.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
    ComboBox5.Clear;
    ComboBox6.Clear;
    ComboBox7.Items.Add(Union);
    ComboBox7.ItemIndex:=ComboBox7.Items.IndexOf(Union);
    ComboBox5.Items.Add(Asociacion);
    ComboBox5.ItemIndex:=ComboBox5.Items.IndexOf(Asociacion);
    ComboBox6.Items.Add(Provincia);
    ComboBox6.ItemIndex:=ComboBox6.Items.IndexOf(Provincia);
    ComboBox3.Items.Add(Distrito);
    ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(Distrito);
    ComboBox4.Items.Add(Iglesia);
    ComboBox4.ItemIndex:=ComboBox4.Items.IndexOf(Iglesia);
    ComboBox7.Enabled:=false;
    ComboBox3.Enabled:=false;
    ComboBox4.Enabled:=false;
    ComboBox5.Enabled:=false;
    ComboBox6.Enabled:=false;
  end else
  If Global then
  begin
    ComboBox1.Clear;
    ComboBox1.Items.Add('Global');
    ComboBox1.Items.Add('Selección');
    ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('Global');
  end else
  If Seleccion then
  begin
    ComboBox1.Clear;
    ComboBox1.Items.Add('Global');
    ComboBox1.Items.Add('Selección');
    ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('Selección');
  end else
  begin
    ComboBox1.Clear;
    ComboBox1.Items.Add('Global');
    ComboBox1.Items.Add('Selección');
    ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf('Global');
    ComboBox7.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
    ComboBox5.Clear;
    ComboBox6.Clear;
    ComboBox3.Enabled:=false;
    ComboBox4.Enabled:=false;
    ComboBox5.Enabled:=false;
    ComboBox6.Enabled:=false;
    ComboBox7.Enabled:=false;
  end;
  RichEdit1.SetFocus;
  RichEdit1.SelectAll;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='(';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:=')';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='[';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:=']';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clBlue;
  RichEdit1.SelText:='*';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clBlue;
  RichEdit1.SelText:='?';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='=';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='<';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
end;

procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='>';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton11Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='#';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.SpeedButton12Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:=#39;
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TForm2.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  If key in ['*','?'] then
  begin
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[fsBold];
    RichEdit1.SelAttributes.Color:=clBlue;
  end else if key in ['(',')','[',']','=','<','>',#39] then
  begin
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[fsBold];
    RichEdit1.SelAttributes.Color:=clRed;
  end else if key='#' then
  begin
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=clRed;
  end else
  begin {     Ctrl+C          Ctrl+V           Ctrl+X          Ctrl+Z}
    if (key <> #3) and (key <> #22) and (key <> #24) and (key <> #26)  then
    begin
      RichEdit1.SelAttributes.Size:=8;
      RichEdit1.SelAttributes.Style:=[];
      RichEdit1.SelAttributes.Color:=clBlack;
    end;
  end;
end;

procedure TForm2.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If Button=mbLeft then If (ssDouble in Shift) then
  begin
    If (ListBox1.Items.Strings[ListBox1.ItemIndex]<>'=, <, >...') and
    (ListBox1.Items.Strings[ListBox1.ItemIndex]<>'Nota...') then
    begin
      RichEdit1.SelText:=' '+ListBox1.Items.Strings[ListBox1.ItemIndex]+' ';
      RichEdit1.SetFocus;
    end;
  end else
  If (Button=mbLeft) then If (ssLeft in Shift) then
  begin
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='Nota...' then
    begin
      Panel4.Caption:='Nota...';
      Memo1.Clear;
      Memo1.Lines.Text:='   Hemos incluido en esta sección los operadores más '+
      'usados a la hora de realizar una consulta. No son los únicos, pero '+
      'estamos seguros que si aprende a usarlos con habilidad, obtendrá cualquier '+
      'resultado deseado.'+#13+'   -Con un simple click sobre el operador logrará '+
      'visualizar una breve descripción de cada uno de ellos así como ejemplos de su '+
      'uso.'+#13+'   -Con un doble click sobre el operador logrará el mismo resultado '+
      'además de que dicho operador se incluirá en la consulta de búsqueda, '+
      'exceptuando los operadores relacionales que se incluyen como una '+
      'facilidad en el panel que está debajo de Consulta de Búsqueda.';
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='=, <, >...' then
    begin
      Panel4.Caption:='=, <, >, <=, >=, <>';
      Memo1.Clear;
      Memo1.Lines.Text:='   Estos son operadores relacionales. Establecen un tipo de comparación. '+
      #13+#13+'   Sintaxis:   exp-1   Operador de Relación   exp-2'+#13+#13+
      '   Ejemplo:   [Fecha Bautismo]>=#1/1/1997# AND '+#13+'                   '+
      '[Fecha Bautismo]<=#12/31/1997#'+#13+#13+
      '   Devuelve todas las [Fecha Bautismo] Ocurridas '+
      'durante el año 1997. Observe bien como se introduce una consulta que '+
      'sea de tipo fecha: #mes/día/año#';
      RichEdit1.SetFocus;;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='AND' then
    begin
      Panel4.Caption:='AND';
      Memo1.Clear;
      Memo1.Lines.Text:='   Operador Booleano. Devuelve un resultado siempre '+
      'que se cumplan las dos expresiones.'+#13+#13+'   Sintaxis:    exp-1  AND  exp-2'+
      #13+#13+'   Ejemplo:   Nombre = '+quotedstr('Addamms')+' AND [Primer Apellido] = '+
      QuotedStr('Suárez')+#13#13+'   El resultado será todos los nombres Addamms con '+
      'primer apellido igual a Suárez.'+#13#13+'   Note la manera de introducir un campo que '+
      'contenga espacios en su nombre, se pone entre corchetes: [Primer Apellido]. Esta facilidad se brinda al hacer click '+
      'sobre cualquier campo de Buscar por.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='BETWEEN' then
    begin
      Panel4.Caption:='BETWEEN...AND';
      Memo1.Clear;
      Memo1.Lines.Text:='   Operador de intervalo. Devuelve un resultado que está '+
      'dentro de ese intervalo, incluyéndose el intervalo.'+#13#13+
      '   Sintaxis:   exp-1 BETWEEN interv-1 '+
      'AND interv-2'+#13#13+'   Ejemplo:   Nombre  BETWEEN  '+QuotedStr('Addamms')+
      ' AND '+QuotedStr('Tahily Berenice')+#13#13+'   Devuelve todos los nombre que en '+
      'orden alfabético estén entre Addamms y Tahily Berenice.'+#13#13+
      '              [Fecha Bautismo] BETWEEN #1/1/2007#  AND  #31/12/2007#'+#13#13+
      '   Devuelve todos los miembros bautizados durante el año 2007.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='IN' then
    begin
      Panel4.Caption:='IN';
      Memo1.Clear;
      Memo1.Lines.Text:='   Operador de pertenencia a conjunto. Devuelve '+
      'un resultado que se encuentra dentro de un conjunto.'+#13#13+
      '   Sintaxis:   Conjunto IN (exp-1, exp-2, exp-n)'#13#13+'   Ejemplo:   '+
      'Nombre IN ('+QuotedStr('Tania')+', '+QuotedStr('Luis Alberto')+')'#13#13+
      '   Devuelve todos los nombre que sean Tania y Luis Alberto.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='IS' then
    begin
      Panel4.Caption:='IS NULL';
      Memo1.Clear;
      Memo1.Lines.Text:='   Operador con valores nulos. Se utiliza para '+
      'determinar si el valor del campo es o no nulo.'+#13#13+
      '   Sintaxis:   exp-1 IS (NOT) NULL       (El NOT es opcional)'+#13#13+
      '   Ejemplo:   '+
      'Nombre IS NULL'#13#13+ '   Devuelve todos los nombres que sean nulos, es '+
      'decir aquellos campos que no se les haya introducido ningún valor. '+
      'Esto es diferente de un campo que se halla entrado vacío, cuyo valor se '+
      'gestionará así:  Nombre='+QuotedStr(#32)+'.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='LIKE' then
    begin
      Panel4.Caption:='LIKE';
      Memo1.Clear;
      Memo1.Lines.Text:='   Operador de correspondencia a un patrón. '+
      'Devuelve un valor parecido o semejante a ese patrón.'+#13#13+
      '   Sintaxis:   exp-1 (NOT) LIKE '+QuotedStr('patrón')+
      #13#13+'   Ejemplo:   Nombre LIKE '+QuotedStr('?ania')+#13#13+
      '   Devuelve todos los nombres que después de su primera letra '+
      'contengan ania. Devolvería Tania, Yania, etc.'#13#13+
      '                   Nombre LIKE '+QuotedStr('Ta*')+
      #13#13+'   Devuelve todos los nombres que comienzan con Ta no '+
      'importando las letras que continúen. Esta consulta devolvería: '+
      'Tania, Tahily, etc.'+#13#13+'                   Nombre LIKE '+
      QuotedStr('a[*]a')+#13#13+'   Devuelve a*a, es decir, lo que está '+
      'encerrado entre corchetes se considera literal.'+#13#13+
      '                   Nombre LIKE '+QuotedStr('[b-z]*')+#13#13+
      '   Devuelve todos los nombres que comienzan desde la letra b-z. Debe '+
      'colocarse siempre en orden ascendente para que funcione, ya sea con '+
      'letras o con números: '+QuotedStr('[0-9]*')+#13#13+'                   '+
      'Nombre LIKE '+QuotedStr('[!b-z]*')+#13#13+'   Con el signo ! ahora el '+
      'resultado es contrario. Se devuelven todos los nombres que comienzan '+
      'con a y se ignoran los que comienzan desde la b-z.'+#13#13+
      '                   Fallecido LIKE true'+#13#13+
      '   Devuelve todos los Fallecidos que sean true, es decir, que el checkbox '+
      'esté seleccionado. True se pone sin comillas porque no es una cadena de texto '+
      'sino un campo booleano, verdadero o falso (true or false).'+#13#13+
      '   En este operador LIKE se puede usar tanto ? o _ para un '+
      'carácter cualquiera y, * o % para cualquier cadena de caracteres.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='NOT' then
    begin
      Panel4.Caption:='NOT';
      Memo1.Clear;
      Memo1.Lines.Text:='   Operador de negación. Devuelve los valores '+
      'que no cumplen la sentencia de consulta.'+#13#13+
      '   Sintaxis:   exp-1 NOT LIKE '+QuotedStr('patrón')+
      #13#13+'   Ejemplo:   Nombre NOT LIKE '+
      QuotedStr('?ania')+#13#13+
      '   Devuelve todos los nombres exceptuando los que después de la '+
      'primera letra contengan ania. Devolvería cualquiera excepto: Tania, '+
      'Yania, etc.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='NULL' then
    begin
      Panel4.Caption:='IS NULL';
      Memo1.Clear;
      Memo1.Lines.Text:=#13'   Ver IS.';
      RichEdit1.SetFocus;
    end;
    if ListBox1.Items.Strings[ListBox1.ItemIndex]='OR' then
    begin
      Panel4.Caption:='OR';
      Memo1.Clear;
      Memo1.Lines.Text:='    Operador Booleano. Devuelve un resultado siempre '+
      'que se cumpla la primera o la segunda expresión o ambas.'+#13#13+
      '   Sintaxis:    exp-1  OR  exp-2'+#13#13+'   Ejemplo:   Nombre = '+
      QuotedStr('Tania')+' OR Nombre = '+QuotedStr('Luis Alberto')+#13#13+
      'El resultado será todos los nombres Tania o Luis Alberto, o ambos.';
      RichEdit1.SetFocus;
    end;
  end;
end;




procedure TForm2.ComboBox1Change(Sender: TObject);
var
  N:Integer;
begin
  if ComboBox1.ItemIndex=ComboBox1.Items.IndexOf('Global') then
  begin
    //ShowMessage('Si');
    ComboBox7.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
    ComboBox5.Clear;
    ComboBox6.Clear;
    ComboBox7.Enabled:=false;
    ComboBox6.Enabled:=false;
    ComboBox3.Enabled:=false;
    ComboBox4.Enabled:=false;
    ComboBox5.Enabled:=false;
    //Global:=true;Activa:=false;Seleccion:=false;Normal:=false;
    //IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
  end;
  if ComboBox1.ItemIndex=ComboBox1.Items.IndexOf('Selección') then
  begin
    //ShowMessage('Si');
    ComboBox7.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
    ComboBox5.Clear;
    ComboBox6.Clear;
    ComboBox7.Enabled:=true;
    ComboBox3.Enabled:=true;
    ComboBox4.Enabled:=true;
    ComboBox5.Enabled:=true;
    ComboBox6.Enabled:=true;
    ActualizandoUni;
    ActualizandoAso;
    ActualizandoProv;
    ActualizandoDist;
    ActualizandoIgl;
    //Global:=false;Activa:=false;Seleccion:=true;Normal:=false;
    //IdU:='';IdA:='';IdP:='';IdD:='';IdI:='';
  end;

  if ComboBox1.ItemIndex=ComboBox1.Items.IndexOf('Activa') then
  begin
  If Form1.TreeView1.Selected <> Nil Then
  begin
    N:=Form1.TreeView1.Selected.AbsoluteIndex;
    Iglesia:=Form1.TreeView1.Items[N].Text;
    //ShowMessage(Iglesia);
    //Buscando el Distrito al cual pertenece la Iglesia
    While Form1.TreeView1.Items[N].Level <> 3 Do
    Dec(N);
    Distrito:=Form1.TreeView1.Items[N].Text;
    //Buscando la Provincia a la cual pertenece el Distrito
    While Form1.TreeView1.Items[N].Level <> 2 Do
    Dec(N);
    Provincia:=Form1.TreeView1.Items[N].Text;
    //Buscando la Asociacion a la cual pertenece la Provincia
    While Form1.TreeView1.Items[N].Level <> 1 Do
    Dec(N);
    Asociacion:=Form1.TreeView1.Items[N].Text;
    //Buscando la Unión a la cual pertenece la Asociación
    While Form1.TreeView1.Items[N].Level <> 0 Do
    Dec(N);
    Union:=Form1.TreeView1.Items[N].Text;
    //If Iglesia<>'' then
    ComboBox7.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
    ComboBox5.Clear;
    ComboBox6.Clear;
    ComboBox7.Items.Add(Union);ComboBox7.ItemIndex:=0;
    ComboBox5.Items.Add(Asociacion);ComboBox5.ItemIndex:=0;
    ComboBox6.Items.Add(Provincia);ComboBox6.ItemIndex:=0;
    ComboBox3.Items.Add(Distrito);ComboBox3.ItemIndex:=0;
    ComboBox4.Items.Add(Iglesia);ComboBox4.ItemIndex:=0;
    ComboBox7.Enabled:=false;
    ComboBox6.Enabled:=false;
    ComboBox3.Enabled:=false;
    ComboBox4.Enabled:=false;
    ComboBox5.Enabled:=false;
    //Form1.ActualizandoAso; Form1.ActualizandoProv; Form1.ActualizandoDist; Form1.ActualizandoIgl;
    //Global:=false;Activa:=true;Seleccion:=false;Normal:=false;
  end
end;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  If CheckBox1.Checked then Panel2.Visible:=true
  else
  begin
    Panel2.Visible:=false;
    Form2.Height:=131;
  end;
  IndU:=TStringList.Create;
  IndA:=TStringList.Create;
  IndP:=TStringList.Create;
  IndD:=TStringList.Create;
  IndI:=TStringList.Create;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked then
  begin
    Panel2.Visible:=true;
    SpeedButton13.Visible:=false;
  end else
  begin
    SpeedButton13.Visible:=true;
    Panel2.Visible:=false;
  end;
end;

procedure TForm2.ComboBox7KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    ComboBox7.ItemIndex:=-1;
    ComboBox5.Clear;
    ComboBox6.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
  end;
end;

procedure TForm2.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    ComboBox5.ItemIndex:=-1;
    ComboBox6.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
  end;
end;

procedure TForm2.ComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    ComboBox6.ItemIndex:=-1;
    ComboBox3.Clear;
    ComboBox4.Clear;
  end;
end;

procedure TForm2.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
   If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    ComboBox3.ItemIndex:=-1;
    ComboBox4.Clear;
  end;
end;

procedure TForm2.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    ComboBox4.ItemIndex:=-1;
  end;
end;


procedure TForm2.ComboBox7DropDown(Sender: TObject);
begin
  ComboBox7.Items.BeginUpdate;
  ComboBox7.Clear;IndU.Clear;
  ComboBox3.Clear;//IndA.Clear;{este es necesario tambien}
  ComboBox4.Clear;//IndP.Clear;
  ComboBox5.Clear;//IndD.Clear;
  ComboBox6.Clear;//IndI.Clear;
  ActualizandoUni;
  ComboBox7.Items.EndUpdate;
end;

Procedure TForm2.ActualizandoUni;
var
   Uni: Integer;
begin
  With form1.TreeView1 Do
  Begin
    if Items.Count>=0 then
    For Uni := 0 To Items.Count - 1 Do
    Begin
      If Items[Uni].Level=0 then
      begin
        ComboBox7.Items.Add(Items[Uni].Text);
        IndU.Add(IntToStr(PRecordId(Items[Uni].Data)^.Id));
      end;
    end;
      //Form2.ComboBox1.ItemIndex:=Form2.ComboBox1.Items.IndexOf('Selección');
  end;
end;

Procedure TForm2.ActualizandoAso;
begin
  If ComboBox7.ItemIndex<>-1 then
  PonAsociacion;
end;

Procedure TForm2.PonAsociacion;
var
   Aso,c: Integer;
begin
    Union:=Form2.ComboBox7.Items.Strings[Form2.ComboBox7.ItemIndex];
    ComboBox3.Clear;//IndA.Clear;{este es necesario tambien}
    ComboBox4.Clear;//IndP.Clear;
    ComboBox5.Clear;//IndD.Clear;
    ComboBox6.Clear;//IndI.Clear;
    With Form1.TreeView1 Do
    begin
      For Aso := 0 To Items.Count - 1 Do
      begin
        if (Items[Aso].Level=0) then
        if ComboBox7.ItemIndex<>-1 then
        if (PRecordId(Items[Aso].Data)^.Id=StrToInt(IndU[ComboBox7.ItemIndex])) then
        begin
          if Aso< Items.Count-1 then
          begin
            if Items[Aso+1].Level=1 then
            begin
              c:=Aso+1;
              while (c<=(Items.Count - 1)) and (Items[c].Level<>0) do
              begin
                If Items[c].Level=1 then
                begin
                  ComboBox5.Items.Add(Items[c].Text);
                  IndA.Add(IntToStr(PRecordId(Items[c].Data)^.Id));
                end;
                inc(c);
              end;
            end;
          end;
        end;
    end;
  end;
end;

Procedure TForm2.ActualizandoProv;
begin
  If ComboBox5.ItemIndex<>-1 then
  PonProvincias;
end;

Procedure TForm2.PonProvincias;
var
   Prov,c: Integer;
begin
    Asociacion:=Form2.ComboBox5.Items.Strings[Form2.ComboBox5.ItemIndex];
    ComboBox3.Clear;//IndA.Clear;//este es necesario tambien
    ComboBox4.Clear;//IndP.Clear;
    ComboBox6.Clear;//IndD.Clear;
    With Form1.TreeView1 Do
    begin
      For Prov := 0 To Items.Count - 1 Do
      begin
        if (Items[Prov].Level=1) then
        if ComboBox5.ItemIndex<>-1 then
        if (PRecordId(Items[Prov].Data)^.Id=StrToInt(IndA[ComboBox5.ItemIndex])) then
        begin
          if Prov< Items.Count-1 then
          begin
            if Items[Prov+1].Level=2 then
            begin
              c:=Prov+1;
              while (c<=(Items.Count - 1)) and (Items[c].Level<>1)
              do
              begin
                If Items[c].Level=2 then
                begin
                  ComboBox6.Items.Add(Items[c].Text);
                  IndP.Add(IntToStr(PRecordId(Items[c].Data)^.Id));
                end;
                inc(c);
              end;
            end;
          end;
        end;
    end;
  end;
  //ShowMessage(Asociacion+', '+Provincia+'.');
  end;


Procedure TForm2.ActualizandoDist;
begin
  If ComboBox6.ItemIndex<>-1 then
  PonDistritos;
end;

Procedure TForm2.PonDistritos;
var
   Dist,c: Integer;
begin
    Provincia:=Form2.ComboBox6.Items.Strings[Form2.ComboBox6.ItemIndex];
    ComboBox3.Clear;//IndA.Clear;//este es necesario tambien
    ComboBox4.Clear;//IndP.Clear;
    With Form1.TreeView1 Do
    begin
      For Dist := 0 To Items.Count - 1 Do
      begin
        if (Items[Dist].Level=2) then
        if ComboBox6.ItemIndex<>-1 then
        if (PRecordId(Items[Dist].Data)^.Id=StrToInt(IndP[ComboBox6.ItemIndex])) then
        begin
          if Dist< Items.Count-1 then
          begin
            if Items[Dist+1].Level=3 then
            begin
              c:=Dist+1;
              while (c<=(Items.Count - 1)) and (Items[c].Level<>2)
              do
              begin
                If Items[c].Level=3 then
                begin
                  ComboBox3.Items.Add(Items[c].Text);
                  IndD.Add(IntToStr(PRecordId(Items[c].Data)^.Id));
                end;
                inc(c);
              end;
            end;
          end;
        end;
    end;
  end;
  end;


Procedure TForm2.ActualizandoIgl;
begin
  If ComboBox3.ItemIndex<>-1 then
  PonIglesias;
end;

Procedure TForm2.PonIglesias;
var                                   //////////////
   Igl,c: Integer;        ////Ver Un errorrrrr que sale cuando en el TTreeView
                          ///No se ha puesto ninguna Iglesia o Distrito
begin                                //////////////
    Distrito:=ComboBox3.Items.Strings[ComboBox3.ItemIndex];
    ///Ver en caso de que no hallan nodos///Arreglar con HasChildren
    ComboBox4.Clear;//IndA.Clear;//este es necesario tambien

    With Form1.TreeView1 Do
    begin
      For Igl := 0 To Items.Count - 1 Do
      begin
        if (Items[Igl].Level=3) then
        if ComboBox3.ItemIndex<>-1 then
        if (PRecordId(Items[Igl].Data)^.Id=StrToInt(IndD[ComboBox3.ItemIndex])) then
        begin
          if Igl< Items.Count-1 then
          begin
            if Items[Igl+1].Level=4 then
            begin
              c:=Igl+1;
              while (c<=(Items.Count - 1)) and (Items[c].Level=4)
              do
              begin
                ComboBox4.Items.Add(Items[c].Text);
                IndI.Add(IntToStr(PRecordId(Items[c].Data)^.Id));
                inc(c);
              end;
            end;
          end;
        end;
    end;
  end;
  end;

procedure TForm2.ComboBox5DropDown(Sender: TObject);
begin
  ComboBox5.Items.BeginUpdate;
  ComboBox5.Clear;IndA.Clear;
  ActualizandoAso;
  ComboBox5.Items.EndUpdate;
end;

procedure TForm2.ComboBox6DropDown(Sender: TObject);
begin
  ComboBox6.Items.BeginUpdate;
  ComboBox6.Clear;IndP.Clear;
  ActualizandoProv;
  ComboBox6.Items.EndUpdate;
end;

procedure TForm2.ComboBox3DropDown(Sender: TObject);
begin
  ComboBox3.Items.BeginUpdate;
  ComboBox3.Clear;IndD.Clear;
  ActualizandoDist;
  ComboBox3.Items.EndUpdate;
end;

procedure TForm2.ComboBox4DropDown(Sender: TObject);
begin
  ComboBox4.Items.BeginUpdate;
  ComboBox4.Clear;IndI.Clear;
  ActualizandoIgl;
  ComboBox4.Items.EndUpdate;
end;

procedure TForm2.ComboBox7Select(Sender: TObject);
begin
  InU:=(IndU[ComboBox7.ItemIndex]);
  //ActualizandoAso;
end;

procedure TForm2.ComboBox5Select(Sender: TObject);
begin
  InA:=(IndA[ComboBox5.ItemIndex]);
  //ActualizandoProv;
end;

procedure TForm2.ComboBox6Select(Sender: TObject);
begin
  InP:=(IndP[ComboBox6.ItemIndex]);
  //ActualizandoDist;
end;

procedure TForm2.ComboBox3Select(Sender: TObject);
begin
  InD:=(IndD[ComboBox3.ItemIndex]);
  //ActualizandoIgl;
end;

procedure TForm2.ComboBox4Select(Sender: TObject);
begin
  InI:=(IndI[ComboBox4.ItemIndex]);
  //Iglesia:=ComboBox4.Items.Strings[ComboBox4.ItemIndex];
end;

procedure TForm2.RectificaTexto;
var s: String;
  i,largo: longint;
begin
  s:=RichEdit1.Text;largo:=length(s);
  for i:=0 to largo do
  begin
    if (s[i]='*') or (s[i]='?') then
    begin
    RichEdit1.SelStart:=i-1;
    RichEdit1.SelLength:=1;
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[fsBold];
    RichEdit1.SelAttributes.Color:=clBlue;
  end else if (s[i]='(') or (s[i]=')') or (s[i]='[') or (s[i]=']') or (s[i]='=')
  or(s[i]='<') or (s[i]='>') or (s[i]=#39) then
  begin
    RichEdit1.SelStart:=i-1;
    RichEdit1.SelLength:=1;
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[fsBold];
    RichEdit1.SelAttributes.Color:=clRed;
  end else if (s[i]='#') then
  begin
    RichEdit1.SelStart:=i-1;
    RichEdit1.SelLength:=1;
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=clRed;
  end else
  begin
    RichEdit1.SelStart:=i-1;
    RichEdit1.SelLength:=1;
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=clBlack;
  end;
  end;
  RichEdit1.SelStart:=largo+1;
  RichEdit1.Visible:=true;RichEdit1.SetFocus;
end;


procedure TForm2.ComboBox2Select(Sender: TObject);
begin
  if pos(' ',ComboBox2.Items.Strings[ComboBox2.ItemIndex])=0 then
  begin
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=clBlack;
    RichEdit1.SelText:=ComboBox2.Items.Strings[ComboBox2.ItemIndex];
  end else
  begin
    RichEdit1.SelAttributes.Style:=[fsBold];
    RichEdit1.SelAttributes.Color:=clRed;
    RichEdit1.SelText:='[';
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=clBlack;
    RichEdit1.SelText:=ComboBox2.Items.Strings[ComboBox2.ItemIndex];
    RichEdit1.SelAttributes.Style:=[fsBold];
    RichEdit1.SelAttributes.Color:=clRed;
    RichEdit1.SelText:=']';
    RichEdit1.SelAttributes.Size:=8;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=clBlack;
  end;
  RichEdit1.SetFocus;TeclaReturn:=false;
end;

end.
