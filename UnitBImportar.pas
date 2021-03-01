unit UnitBImportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, DBCtrls, dblookup, ImgList, Classes;

type
  TFormBImportar = class(TForm)
    Label2: TLabel;
    Panel1: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    RichEdit1: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
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
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Memo1: TMemo;
    SpeedButton14: TSpeedButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    CBoxUnion: TComboBox;
    CBoxAsociacion: TComboBox;
    CBoxDistrito: TComboBox;
    CBoxIglesia: TComboBox;
    CBoxProvincia: TComboBox;
    SpeedButton7: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure CBoxUnionChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CBoxAsociacionChange(Sender: TObject);
    procedure CBoxProvinciaChange(Sender: TObject);
    procedure CBoxDistritoChange(Sender: TObject);
    procedure CBoxUnionKeyPress(Sender: TObject; var Key: Char);
    procedure CBoxAsociacionKeyPress(Sender: TObject; var Key: Char);
    procedure CBoxProvinciaKeyPress(Sender: TObject; var Key: Char);
    procedure CBoxDistritoKeyPress(Sender: TObject; var Key: Char);
    procedure CBoxIglesiaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton14Click(Sender: TObject);
    procedure MostrarExt;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CBoxUnionSelect(Sender: TObject);
    procedure CBoxAsociacionSelect(Sender: TObject);
    procedure CBoxProvinciaSelect(Sender: TObject);
    procedure CBoxDistritoSelect(Sender: TObject);
    procedure CBoxIglesiaSelect(Sender: TObject);
    procedure RectificaTexto;
    procedure ComboBox2Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBImportar: TFormBImportar;
  IndUEx,IndAEx,IndPEx,IndDEx,IndIEx: TStrings;
  TeclaReturn: Boolean=true;//para advertir Return en el ComboBox2
  
implementation

uses Principal, GuardaBuscar, UnitBusqAntExt;

{$R *.dfm}

procedure TFormBImportar.Button1Click(Sender: TObject);
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

begin
  Prueb1:=''; Prueb2:='';FiltroExt:='';
  If RichEdit1.Text<>'' then
  begin
    Prueb1:=CambiaEn(RichEdit1.Text,'?');
    Prueb1:=CambiaEn(Prueb1,'*');
    Prueb2:=' and ('+Prueb1+')';
    FiltroExt:={'WHERE '+}Prueb2;//Contiene el WHere para filtrar
  end;
  //si hay Iglesia y no texto en el RichEdit busca todos los de esa Iglesia
  If (CBoxIglesia.Text<>'') then
  begin
    Form1.LabelUnion.Caption:=CBoxUnion.Text;
    Form1.LabelAsoc.Caption:=CBoxAsociacion.Text;
    Form1.LabelProv.Caption:=CBoxProvincia.Text;
    Form1.LabelDist.Caption:=CBoxDistrito.Text;
    Form1.LabelIgl.Caption:=CBoxIglesia.Text;
    //Close;
    MostrarExt;
  end else
  begin
    if Application.MessageBox ('  No hay Iglesia donde buscar.'+#13+
                             '¿Desea intentarlo nuevamente?    ',
                             'Información',mb_YesNo+MB_ICONINFORMATION)=ID_NO
    then close else
     begin
        RichEdit1.SetFocus;
      end;
  end;
end;

//Muestra la consulta
procedure TFormBImportar.MostrarExt;
var i: Integer;
begin
  if RichEdit1.Text<>'' then
  begin
    for i:=0 to formBusqAntExt.TreeView1.Items.Count-1 do
    begin
      if (formBusqAntExt.TreeView1.Items.Item[i].Text=RichEdit1.Text) then
      begin
        formBusqAntExt.TreeView1.Items.Item[i].Delete;
        break;
      end;
    end;
    formBusqAntExt.TreeView1.Items.AddFirst(nil,RichEdit1.Text);
    formBusqAntExt.TreeView1.Select(formBusqAntExt.TreeView1.Items.Item[0]);
    formBusqAntExt.GuardalistaB;
  end;
  with form1 do
  begin
    ADOImportMiembros.Close;
    //DBGridExt.DataSource:=DSImportMiembros;
    //DBNavigatorExt.DataSource:=DSImportMiembros;
    ADOImportMiembros.CommandText:='SELECT TMiembros.Nombre, TMiembros.[Primer Apellido], '+
    'TMiembros.[Segundo Apellido],'+
    'TMiembros.[Nivel Escolar], TMiembros.Oficio, TMiembros.Dones,'+
    'TMiembros.Desfraternizado, TMiembros.[Nació en Hogar ASD],'+
    'TMiembros.[Fecha Desfraternizado], TMiembros.[Causa Desfraternizado],'+
    'TMiembros.Condición, TMiembros.Localidad, TMiembros.[Religión Practicada],'+
    'TMiembros.Teléfono, TMiembros.Traslado, TMiembros.Fallecido, TMiembros.[Ext Hogar],'+
    'TMiembros.Rebautismo, TMiembros.Edad, TMiembros.Sexo, TMiembros.Dirección,'+
    'TMiembros.[Estado Civil], TMiembros.[Ocupación Actual], TMiembros.[Pastor que Bautizó],'+
    'TMiembros.[Obrero que Trabajó], TMiembros.[Fecha Bautismo],TMiembros.[Fecha Nacimiento],'+
    'Tmiembros.[Centro Trabajo/Estudio],TMiembros.[Dirección Trabajo/Estudio], TMiembros.[No Identidad],'+
    'TMiembros.[Cónyuge Adventista], TMiembros.Salario, TMiembros.IdMiembro, TMiembros.IdIglesia, TMiembros.Foto,'+
    'TMiembros.[Otra Información],TMiembros.[Idiomas],TMiembros.[Enfermedades] '+
    'FROM ((((TUnion INNER JOIN TAsociacion ON TUnion.IdUnion = TAsociacion.IdUnion) '+
    'INNER JOIN TProvincia ON TAsociacion.IdAsociacion = TProvincia.IdAsociacion) '+
    'INNER JOIN TDistrito ON TProvincia.IdProvincia = TDistrito.IdProvincia) '+
    'INNER JOIN TIglesia ON TDistrito.IdDistrito = TIglesia.IdDistrito) INNER JOIN '+
    'TMiembros ON TIglesia.IdIglesia = TMiembros.IdIglesia '+
    'WHERE (((TUnion.IdUnion)='+IntToStr(IdUEx)+') AND ((TAsociacion.IdAsociacion)='+
    IntToStr(IdAEx)+') AND ((TProvincia.IdProvincia)='+IntToStr(IdPEx)+') AND '+
    '((TDistrito.IdDistrito)='+IntToStr(IdDEx)+') AND ((TIglesia.IdIglesia)='+
    IntToStr(IdIEx)+')'+FiltroExt+')';
    try
      //DBGridExt.DataSource.DataSet.Open;
      ADOImportMiembros.Open;
      LoadColPos(DBGridExt);
      DBGridExt.Columns[DBGridExt.Columns.Count-1].Visible:=false;
      DBGridExt.Columns[DBGridExt.Columns.Count-2].Visible:=false;
      DBGridExt.Columns[DBGridExt.Columns.Count-3].Visible:=false;
      DBGridExt.Columns[DBGridExt.Columns.Count-4].Visible:=false;
      DBGridExt.Columns[DBGridExt.Columns.Count-5].Visible:=false;
      DBGridExt.Columns[DBGridExt.Columns.Count-6].Visible:=false;
      //ADOImportMiembros.Open;
      //ShowMessage('DBGridExt: '+IntToStr(DBGridExt.Columns.Count)+'<>'+IntToStr(ADOImportMiembros.FieldCount));
    except;
      DBGridExt.DataSource:=nil;
      DBNavigatorExt.DataSource:=nil;
      //DBGridExt.Options:=[];
      PanelExt.Caption:=' 0 Miembro(s)';
      labelUnion.Caption:='';labelAsoc.Caption:='';labelProv.Caption:='';
      labelDist.Caption:='';labelIgl.Caption:='';
      Panel65.Caption:='Listado de Miembros en Cero';
      dxButtonImp.Enabled:=false;
      dxButtonExp.Enabled:=false;
      if Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                             '       ¿Desea intentarlo nuevamente?',
                             'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No
      then
      begin
        formBImportar.close;
        Abort;
      end else
       begin
        RichEdit1.SetFocus; //RichEdit1.SelectAll;
      end;
      Abort;
    end;
    //form1.LoadColPos(DBGridExt);
    //ShowMessage('/.abriendo.\');
    if ADOImportMiembros.RecordCount>0 then
    begin
      DBGridExt.DataSource:=Form1.DSImportMiembros;
      DBNavigatorExt.DataSource:=form1.DSImportMiembros;
      //Si;//Cambia Options del DBGridExt
      PanelExt.Caption:=' '+FormatFloat('###,0',ADOImportMiembros.RecordCount)+' Miembro(s)';
      dxButtonImp.Enabled:=true;dxButtonExp.Enabled:=true;
      //Panel65.Caption:='Listado de Miembros para Importar/Exportar...';
      FormBImportar.Close;
    end else
    begin
      DBGridExt.DataSource:=Form1.DSImportMiembros;
      DBNavigatorExt.DataSource:=form1.DSImportMiembros;
      //Si;//Cambia Options del DBGridExt
      PanelExt.Caption:=' 0 Miembro(s)';
      dxButtonImp.Enabled:=true;dxButtonExp.Enabled:=true;
      //Panel65.Caption:='Listado de Miembros en Cero';
      if Application.MessageBox ('No se han obtenido resultados de búsqueda.'+#13+
                             '       ¿Desea intentarlo nuevamente?',
                             'Información',mb_YesNo+MB_ICONINFORMATION)=ID_No
      then formBImportar.close else
       begin
        RichEdit1.SetFocus; //RichEdit1.SelectAll;
      end;
    end;
  end;
  //Form1.DBGridExt.DataSource:=Form1.DSImportMiembros;
  //form1.LoadColPos(form1.DBGridExt);

end;

procedure TFormBImportar.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBImportar.CBoxUnionChange(Sender: TObject);
var
   Uni: Integer;
   s,selec: String;
begin
  selec:=CBoxUnion.Items.Strings[CBoxUnion.ItemIndex];IndAEx.Clear;
  CBoxAsociacion.Clear;CBoxProvincia.Clear;CBoxDistrito.Clear;CBoxIglesia.Clear;
  //ShowMessage(IntToStr(CBoxUnion.ItemIndex));
  if CBoxUnion.ItemIndex<>-1 then
  if Form1.ADOImportUnion.Locate('IdUnion',IndUEx[CBoxUnion.ItemIndex], []) then
  begin
    //ShowMessage('SI '+IndUEx[CBoxUnion.ItemIndex]);
    Form1.ADOImportAsociacion.First;
    With Form1 Do
    Begin
      if ADOImportAsociacion.RecordCount>0 then
      For Uni := 0 To ADOImportAsociacion.RecordCount - 1 Do
      Begin
        s:=ADOImportAsociacion.FieldValues['Asociación'];
        CBoxAsociacion.Items.Add(s);
        //ShowMessage(s);
        IndAEx.Add(ADOImportAsociacion.FieldValues['IdAsociacion']);
        ADOImportAsociacion.Next;
      end;
    end;
  end;
end;

procedure TFormBImportar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13	then
  begin
    if TeclaReturn then Button1Click(Sender) else key:=#0;;
  end;
  If key=#27 then Close;//Cerramos;
  TeclaReturn:=true;
end;

procedure TFormBImportar.SpeedButton1Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='(';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton2Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:=')';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton3Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='[';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton4Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:=']';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton5Click(Sender: TObject);
begin
  //RichEdit1.SelAttributes.Size:=12;
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clBlue;
  RichEdit1.SelText:='*';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton6Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clBlue;
  RichEdit1.SelText:='?';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton8Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='=';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton9Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='<';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
end;

procedure TFormBImportar.SpeedButton10Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='>';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton11Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:='#';
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.SpeedButton12Click(Sender: TObject);
begin
  RichEdit1.SelAttributes.Style:=[fsBold];
  RichEdit1.SelAttributes.Color:=clRed;
  RichEdit1.SelText:=#39;
  RichEdit1.SelAttributes.Size:=8;
  RichEdit1.SelAttributes.Style:=[];
  RichEdit1.SelAttributes.Color:=clBlack;
  RichEdit1.SetFocus;
end;

procedure TFormBImportar.ListBox1DblClick(Sender: TObject);
begin
  //Showmessage('Dos Click');
end;

procedure TFormBImportar.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  If Button=mbLeft then If (ssDouble in Shift) then
  begin
    //Showmessage('Dos Click');
    If (ListBox1.Items.Strings[ListBox1.ItemIndex]<>'=, <, >...') and
    (ListBox1.Items.Strings[ListBox1.ItemIndex]<>'Nota...') then
    begin
      //RichEdit1.DefAttributes.Size:=8;
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

procedure TFormBImportar.RichEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormBImportar.SpeedButton7Click(Sender: TObject);
begin
  FormBusqAntExt.ShowModal;
end;

procedure TFormBImportar.FormActivate(Sender: TObject);
var
   Uni: Integer;
   s: String;
begin
  //ShowMessage(DirDBExt);
  if ActualizarBoxes then
  begin
    ActualizarBoxes:=false;
    CBoxUnion.Clear;IndUEx.Clear;
    CBoxAsociacion.Clear;
    CBoxProvincia.Clear;
    CBoxDistrito.Clear;
    CBoxIglesia.Clear;
    With Form1 Do
    Begin
      ADOImportUnion.First;
      if ADOImportUnion.RecordCount>0 then
      For Uni := 0 To ADOImportUnion.RecordCount - 1 Do
      Begin
        s:=ADOImportUnion.FieldValues['Unión'];
        CBoxUnion.Items.Add(S);
        IndUEx.Add(ADOImportUnion.FieldValues['IdUnion']);
        ADOImportUnion.Next;
      end;
        //Form2.ComboBox1.ItemIndex:=Form2.ComboBox1.Items.IndexOf('Selección');
        ADOImportUnion.First;
    end;
  end;
  
end;

procedure TFormBImportar.CBoxAsociacionChange(Sender: TObject);
var
   Uni: Integer;
   s,selec: String;
begin
  selec:=CBoxAsociacion.Items.Strings[CBoxAsociacion.ItemIndex];IndPEx.Clear;
  CBoxProvincia.Clear;CBoxDistrito.Clear;CBoxIglesia.Clear;
  if CBoxAsociacion.ItemIndex<>-1 then
  if Form1.ADOImportAsociacion.Locate('IdAsociacion',IndAEx[CBoxAsociacion.ItemIndex],[]) then
  begin
    Form1.ADOImportProvincia.First;
    With Form1 Do
    Begin
      if ADOImportProvincia.RecordCount>=0 then
      For Uni := 0 To ADOImportProvincia.RecordCount - 1 Do
      Begin
        s:=ADOImportProvincia.FieldValues['Provincia'];
        CBoxProvincia.Items.Add(s);
        IndPEx.Add(ADOImportProvincia.FieldValues['IdProvincia']);
        ADOImportProvincia.Next;
      end;
    end;
  end;
end;

procedure TFormBImportar.CBoxProvinciaChange(Sender: TObject);
var
   Uni: Integer;
   s,selec: String;
begin
  selec:=CBoxProvincia.Items.Strings[CBoxProvincia.ItemIndex];IndDEx.Clear;
  CBoxDistrito.Clear;CBoxIglesia.Clear;
  if CBoxProvincia.ItemIndex<>-1 then //ShowMessage(IndPEx[CBoxProvincia.ItemIndex]);
  if Form1.ADOImportProvincia.Locate('IdProvincia',IndPEx[CBoxProvincia.ItemIndex],[]) then
  begin
    Form1.ADOImportDistrito.First;
    With Form1 Do
    Begin
      if Form1.ADOImportDistrito.RecordCount>0 then
      For Uni := 0 To ADOImportDistrito.RecordCount - 1 Do
      Begin
        s:=ADOImportDistrito.FieldByName('Distrito').AsString;
        CBoxDistrito.Items.Add(s);
        IndDEx.Add(ADOImportDistrito.FieldValues['IdDistrito']);
        ADOImportDistrito.Next;
      end;
    end;
  end;
end;

procedure TFormBImportar.CBoxDistritoChange(Sender: TObject);
var
   Uni: Integer;
   s,selec: String;
begin
  selec:=CBoxDistrito.Items.Strings[CBoxDistrito.ItemIndex];IndIEx.Clear;
  CBoxIglesia.Clear;
  if CBoxDistrito.ItemIndex<>-1 then
  if Form1.ADOImportDistrito.Locate('IdDistrito',IndDEx[CBoxDistrito.ItemIndex],[]) then
  begin
    Form1.ADOImportIglesia.First;
    With Form1 Do
    Begin
      if ADOImportIglesia.RecordCount>0 then
      For Uni := 0 To ADOImportIglesia.RecordCount - 1 Do
      Begin
        s:=ADOImportIglesia.FieldValues['Iglesia'];
        CBoxIglesia.Items.Add(s);
        IndIEx.Add(ADOImportIglesia.FieldValues['IdIglesia']);
        ADOImportIglesia.Next;
      end;
    end;
  end;
end;

procedure TFormBImportar.CBoxUnionKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    CBoxUnion.ItemIndex:=-1;
    CBoxAsociacion.Clear;
    CBoxProvincia.Clear;
    CBoxDistrito.Clear;
    CBoxIglesia.Clear;
  end;
end;

procedure TFormBImportar.CBoxAsociacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    CBoxAsociacion.ItemIndex:=-1;
    CBoxProvincia.Clear;
    CBoxDistrito.Clear;
    CBoxIglesia.Clear;
  end;
end;

procedure TFormBImportar.CBoxProvinciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    CBoxProvincia.ItemIndex:=-1;
    CBoxDistrito.Clear;
    CBoxIglesia.Clear;
  end;
end;

procedure TFormBImportar.CBoxDistritoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    CBoxDistrito.ItemIndex:=-1;
    CBoxIglesia.Clear;
  end;
end;

procedure TFormBImportar.CBoxIglesiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (Key<>Chr(VK_BACK)) or (key<>chr(VK_DELETE)) or (Key<>chr(VK_SPACE)) then
  begin
    key:=#0;
    CBoxIglesia.ItemIndex:=-1;
  end;
end;

procedure TFormBImportar.SpeedButton14Click(Sender: TObject);
begin
  SpeedButton14.Update;
  with Form1 do
  begin
    if AbrirBaseDatos.Execute then
      if AbrirBaseDatos.FileName='' then
      begin
        ActualizarBoxes:=false;//para poner los nuevos campos de Union, etc.
        exit;
      end else
      begin //Poniendo la coneccion para la tabla seleccionada
        ActualizarBoxes:=true;
        DirDBExt:=AbrirBaseDatos.FileName;
        //DBGridExt.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,
          //        dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
        ADOConnection2.Connected:=false;
        PanelExt.Caption:=' 0 Miembro(s)';
        Panel65.Caption:='Listado de Miembros en Cero';
        LabelUnion.Caption:='';LabelAsoc.Caption:='';LabelProv.Caption:='';
        LabelDist.Caption:='';LabelIgl.Caption:='';
        dxButtonImp.Enabled:=false;dxButtonExp.Enabled:=false;
        ADOConnection2.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
        AbrirBaseDatos.FileName+';Mode=Share Deny None;Extended Properties="";'+
        'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
        'Jet OLEDB:Database Password='+form1.Decript('ibrtuihh27irb',987654321)+';Jet OLEDB:Engine Type=5;'+
        'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
        'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
        'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
        'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
        'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
        try
          ADOConnection2.Open;
        except;
          ActualizarBoxes:=false;//para poner los nuevos campos de Union, etc.
          Application.MessageBox(' Imposible cargar Base de Datos. '+#13+
                            'Posible incompatibilidad...',
                           'Aviso...',MB_OK	+MB_ICONEXCLAMATION);
          exit;
        end;
        ADOImportUnion.CommandText:='Select * from TUnion Order By Unión';
        ADOImportUnion.Active:=true;
        ADOImportAsociacion.CommandText:='Select * from TAsociacion Order By Asociación';
        ADOImportAsociacion.Active:=true;
        ADOImportProvincia.CommandText:='Select * from TProvincia Order By Provincia';
        ADOImportProvincia.Active:=true;
        ADOImportDistrito.CommandText:='Select * from TDistrito Order By Distrito';
        ADOImportDistrito.Active:=true;
        ADOImportIglesia.CommandText:='Select * from TIglesia Order By Iglesia';
        ADOImportIglesia.Active:=true;
        //ADOImportMiembros.CommandText:='Select * from TMiembros';
        //ADOImportMiembros.Active:=true;
        DBNavigatorExt.Enabled:=true;
      end;
  end;
  FormActivate(Sender);
end;

procedure TFormBImportar.FormShow(Sender: TObject);
begin
  if Form1.DBGridExt.DataSource<>nil then
  //Form1.DBGridExt.DataSource.DataSet.DisableControls;
end;

procedure TFormBImportar.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  try
    Form1.DBGridExt.DataSource.DataSet.EnableControls;
  except;
  end;
  //Action := caFree;
  {IndUEx.Free;
  IndAEx.Free;
  IndPEx.Free;
  IndDEx.Free;
  IndIEx.Free;}
end;

procedure TFormBImportar.FormCreate(Sender: TObject);
begin
  IndUEx:=TStringList.Create;
  IndAEx:=TStringList.Create;
  IndPEx:=TStringList.Create;
  IndDEx:=TStringList.Create;
  IndIEx:=TStringList.Create;
end;

procedure TFormBImportar.CBoxUnionSelect(Sender: TObject);
var
  Uni: Integer;
  s,selec: String;
begin
  selec:=CBoxUnion.Items.Strings[CBoxUnion.ItemIndex];IndAEx.Clear;
  CBoxAsociacion.Clear;CBoxProvincia.Clear;CBoxDistrito.Clear;CBoxIglesia.Clear;
  //ShowMessage(IntToStr(CBoxUnion.ItemIndex));
  if CBoxUnion.ItemIndex<>-1 then
  if Form1.ADOImportUnion.Locate('IdUnion',IndUEx[CBoxUnion.ItemIndex], []) then
  begin
    //ShowMessage('SI '+IndUEx[CBoxUnion.ItemIndex]);
    Form1.ADOImportAsociacion.First;
    With Form1 Do
    Begin
      if ADOImportAsociacion.RecordCount>0 then
      For Uni := 0 To ADOImportAsociacion.RecordCount - 1 Do
      Begin
        s:=ADOImportAsociacion.FieldValues['Asociación'];
        CBoxAsociacion.Items.Add(s);
        //ShowMessage(s);
        IndAEx.Add(ADOImportAsociacion.FieldValues['IdAsociacion']);
        ADOImportAsociacion.Next;
      end;
    end;
  end;
  IdUEx:=StrToInt(IndUEx[CBoxUnion.ItemIndex]);
end;

procedure TFormBImportar.CBoxAsociacionSelect(Sender: TObject);
var
  Uni: Integer;
  s,selec: String;
begin
  selec:=CBoxAsociacion.Items.Strings[CBoxAsociacion.ItemIndex];IndPEx.Clear;
  CBoxProvincia.Clear;CBoxDistrito.Clear;CBoxIglesia.Clear;
  if CBoxAsociacion.ItemIndex<>-1 then
  if Form1.ADOImportAsociacion.Locate('IdAsociacion',IndAEx[CBoxAsociacion.ItemIndex],[]) then
  begin
    Form1.ADOImportProvincia.First;
    With Form1 Do
    Begin
      if ADOImportProvincia.RecordCount>=0 then
      For Uni := 0 To ADOImportProvincia.RecordCount - 1 Do
      Begin
        s:=ADOImportProvincia.FieldValues['Provincia'];
        CBoxProvincia.Items.Add(s);
        IndPEx.Add(ADOImportProvincia.FieldValues['IdProvincia']);
        ADOImportProvincia.Next;
      end;
    end;
  end;
  IdAEx:=StrToInt(IndAEx[CBoxAsociacion.ItemIndex]);
end;

procedure TFormBImportar.CBoxProvinciaSelect(Sender: TObject);
var
  Uni: Integer;
  s,selec: String;
begin
  selec:=CBoxProvincia.Items.Strings[CBoxProvincia.ItemIndex];IndDEx.Clear;
  CBoxDistrito.Clear;CBoxIglesia.Clear;
  if CBoxProvincia.ItemIndex<>-1 then //ShowMessage(IndPEx[CBoxProvincia.ItemIndex]);
  if Form1.ADOImportProvincia.Locate('IdProvincia',IndPEx[CBoxProvincia.ItemIndex],[]) then
  begin
    Form1.ADOImportDistrito.First;
    With Form1 Do
    Begin
      if Form1.ADOImportDistrito.RecordCount>0 then
      For Uni := 0 To ADOImportDistrito.RecordCount - 1 Do
      Begin
        s:=ADOImportDistrito.FieldByName('Distrito').AsString;
        CBoxDistrito.Items.Add(s);
        IndDEx.Add(ADOImportDistrito.FieldValues['IdDistrito']);
        ADOImportDistrito.Next;
      end;
    end;
  end;
  IdPEx:=StrToInt(IndPEx[CBoxProvincia.ItemIndex]);
end;

procedure TFormBImportar.CBoxDistritoSelect(Sender: TObject);
var
  Uni: Integer;
  s,selec: String;
begin
  selec:=CBoxDistrito.Items.Strings[CBoxDistrito.ItemIndex];IndIEx.Clear;
  CBoxIglesia.Clear;
  if CBoxDistrito.ItemIndex<>-1 then
  if Form1.ADOImportDistrito.Locate('IdDistrito',IndDEx[CBoxDistrito.ItemIndex],[]) then
  begin
    Form1.ADOImportIglesia.First;
    With Form1 Do
    Begin
      if ADOImportIglesia.RecordCount>0 then
      For Uni := 0 To ADOImportIglesia.RecordCount - 1 Do
      Begin
        s:=ADOImportIglesia.FieldValues['Iglesia'];
        CBoxIglesia.Items.Add(s);
        IndIEx.Add(ADOImportIglesia.FieldValues['IdIglesia']);
        ADOImportIglesia.Next;
      end;
    end;
  end;
  IdDEx:=StrToInt(IndDEx[CBoxDistrito.ItemIndex]);
end;

procedure TFormBImportar.CBoxIglesiaSelect(Sender: TObject);
begin
  if CBoxIglesia.ItemIndex<>-1 then
  begin
    Form1.ADOImportIglesia.Locate('IdIglesia',IndIEx[CBoxIglesia.ItemIndex],[]);
    IdIEx:=StrToInt(IndIEx[CBoxIglesia.ItemIndex]);
  end;
end;

procedure TFormBImportar.RectificaTexto;
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

procedure TFormBImportar.ComboBox2Select(Sender: TObject);
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
