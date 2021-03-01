unit UnitConfigurarDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Registry;

type
  TFormConfigurarDB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    ListBox2: TListBox;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel10: TPanel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    Panel9: TPanel;
    Shape2: TShape;
    Panel8: TPanel;
    Shape8: TShape;
    Label13: TLabel;
    Panel7: TPanel;
    Shape7: TShape;
    Label9: TLabel;
    Panel6: TPanel;
    Shape6: TShape;
    Label8: TLabel;
    Panel5: TPanel;
    Shape5: TShape;
    Label7: TLabel;
    Panel3: TPanel;
    Shape4: TShape;
    Label6: TLabel;
    Panel19: TPanel;
    Shape1: TShape;
    Panel11: TPanel;
    Shape3: TShape;
    dxButtonAceptar: TButton;
    dxButtonCerrar: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButtonAceptarClick(Sender: TObject);
    procedure dxButtonCerrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedimiento para la configuracion de los campos
    procedure GuardaCamposMostrados;
    procedure BuscarCamposMostrados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigurarDB: TFormConfigurarDB;
  Uni,Asoci,Provi,Distri,Iglesi,cierraNormal: boolean;
  lista1,lista2,listaChecked: TStrings;
implementation

uses UnitOrdenar, Principal;

{$R *.dfm}
//Adicionar un campo para que se muestre >
procedure TFormConfigurarDB.SpeedButton4Click(Sender: TObject);
Var
  Indice: Integer;
begin
  Indice:=ListBox1.ItemIndex;
  If ListBox1.Count>0 then
  begin
    If ListBox1.ItemIndex<>-1 then
    begin
      ListBox2.Items.Add(ListBox1.Items.Strings[Indice]);
      ListBox1.Items.Delete(Indice);
    end;
  end;
  //Muestran la cantidad de campos en cada ListBox
  Label11.Caption:=IntToStr(ListBox1.Count);
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Borrar un campo mostrado con flecha izquierda <
procedure TFormConfigurarDB.SpeedButton5Click(Sender: TObject);
Var
  Indice, i: Integer;
begin
  Indice:=ListBox2.ItemIndex;
  Uni:=false;Asoci:=false;Provi:=false;Distri:=false;Iglesi:=false;
  if ListBox2.Count>0 then
  begin
    if listbox2.ItemIndex<>-1 then
    begin
      if FormOrdenar.CheckListBox1.Items.IndexOf(ListBox2.Items.Strings[Indice])<>-1 then
      FormOrdenar.CheckListBox1.Items.Delete(FormOrdenar.CheckListBox1.Items.IndexOf(ListBox2.Items.Strings[Indice]));
      if ListBox2.Items.Strings[Indice]='Unión' then
      begin
        Uni:=true;
      end else
      if ListBox2.Items.Strings[Indice]='Asociación' then
      begin
        Asoci:=true;
      end else
      if ListBox2.Items.Strings[Indice]='Provincia' then
      begin
        Provi:=true;
      end else
      if ListBox2.Items.Strings[Indice]='Distrito' then
      begin
        Distri:=true;
      end else
      if ListBox2.Items.Strings[Indice]='Iglesia' then
      begin
        Iglesi:=true;
      end else
      ListBox1.Items.Add(ListBox2.Items.Strings[Indice]);
      Listbox2.Items.Delete(Indice);
    end;
    Label11.Caption:=IntToStr(ListBox1.Count);
    Label12.Caption:=IntToStr(ListBox2.Count);
    if Uni then CheckBox9.Checked:=false;
    if Asoci then CheckBox7.Checked:=false;
    if Provi then CheckBox8.Checked:=false;
    if Distri then CheckBox5.Checked:=false;
    if Iglesi then CheckBox6.Checked:=false;
    {If ListBox2.Count<1 then
    begin
      form1.DBGrid1.DataSource.DataSet.Active:=False;
      Abort;
    end;}
    //Para actualizar los campos para ordenar \\
    Ordenar:='';
    for i:=0 to FormOrdenar.CheckListBox1.Items.Count-1 do
    begin
      if FormOrdenar.CheckListBox1.Checked[i] then
      Ordenar:=Ordenar+'['+FormOrdenar.CheckListBox1.Items.Strings[i]+']'+',';
    end;
    delete(Ordenar,length(Ordenar),1);
    if Ordenar<>'' then OrdenarSiNo:=true else OrdenarSiNo:=False;
  end;
end;

//Adicionar todos los campos para mostrar
procedure TFormConfigurarDB.SpeedButton6Click(Sender: TObject);
Var
  Conteo: Integer;
begin
  If ListBox1.Count>0 then
  Begin
    For Conteo:=0 to ListBox1.Count-1 do
    begin
      ListBox2.Items.Add(ListBox1.Items.Strings[Conteo]);
    end;
    ListBox1.Clear;
  end;
  Label11.Caption:=IntToStr(ListBox1.Count);
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Borrar todos los campos que se mostraban
procedure TFormConfigurarDB.SpeedButton7Click(Sender: TObject);
Var
  Conteo: Integer;
begin
   If ListBox2.Count>0 then
   For Conteo:=0 to ListBox2.Count-1 do
   begin
     if ListBox2.Items.Strings[Conteo]<>'Unión' then
     if ListBox2.Items.Strings[Conteo]<>'Asociación' then
     if ListBox2.Items.Strings[Conteo]<>'Provincia' then
     if ListBox2.Items.Strings[Conteo]<>'Distrito' then
     if ListBox2.Items.Strings[Conteo]<>'Iglesia' then
     begin
      ListBox1.Items.Add(ListBox2.Items.Strings[Conteo]);
     end;
   end;
   ListBox2.Clear;
   //form1.DBGrid1.DataSource.DataSet.close;
   //form1.ADOTMiembros.Active:=false;
   If CheckBox7.Checked then CheckBox7.Checked:=false;
   If CheckBox5.Checked then CheckBox5.Checked:=false;
   If CheckBox6.Checked then CheckBox6.Checked:=false;
   If CheckBox8.Checked then CheckBox8.Checked:=false;
   If CheckBox9.Checked then CheckBox9.Checked:=false;
   //No hay Campos para ordenar\\
   Ordenar:='';OrdenarSiNo:=False;
   FormOrdenar.CheckListBox1.Clear;
   Label11.Caption:=IntToStr(ListBox1.Count);
   Label12.Caption:=IntToStr(ListBox2.Count);
end;

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 //Hay que arreglar esto con otra opción del Grid que es más rápido
//Mover un campo hacia arriba
procedure TFormConfigurarDB.SpeedButton1Click(Sender: TObject);
Var
  Indice: Integer;
begin
  Indice:= ListBox2.ItemIndex;
  If ListBox2.Count>0 then if Indice<> -1 then
  begin
    If Indice= 0 then ListBox2.ItemIndex:=0 else
    begin
      ListBox2.Items.Move(Indice, Indice-1);
      ListBox2.ItemIndex:=Indice-1;
    end;
  end;
end;

 //////////////////////////////////// Actualizar Igual que el anterior
//Mover un campo hacia abajo
procedure TFormConfigurarDB.SpeedButton2Click(Sender: TObject);
Var
  Indice: Integer;
begin
  Indice:= ListBox2.ItemIndex;
  If ListBox2.Count>0 then if Indice<> -1 then
  begin
    If Indice<> ListBox2.Count-1 then
    ListBox2.Items.Move(Indice, Indice+1);
    ListBox2.ItemIndex:=Indice+1;
  end;
end;

//Aceptar el campo soltado sobre campos disponibles
procedure TFormConfigurarDB.ListBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
Var
  i: Integer;
begin
  Uni:=false;Asoci:=false;Provi:=false;Distri:=false;Iglesi:=false;
  if ListBox2.Count>0 then
  begin
    if listbox2.SelCount<>-1 then
    begin
      for i:=0 to (listbox2.Items.Count-1) do
      begin
        if listbox2.Selected[i] then
        begin
          if FormOrdenar.CheckListBox1.Items.IndexOf(ListBox2.Items.Strings[i])<>-1 then
          FormOrdenar.CheckListBox1.Items.Delete(FormOrdenar.CheckListBox1.Items.IndexOf(ListBox2.Items.Strings[i]));
          if ListBox2.Items.Strings[i]='Unión' then
          begin
            Uni:=true;
          end else
          if ListBox2.Items.Strings[i]='Asociación' then
          begin
            Asoci:=true;
          end else
          if ListBox2.Items.Strings[i]='Provincia' then
          begin
            Provi:=true;
          end else
          if ListBox2.Items.Strings[i]='Distrito' then
          begin
            Distri:=true;
          end else
          if ListBox2.Items.Strings[i]='Iglesia' then
          begin
            Iglesi:=true;
          end else
            ListBox1.Items.Add(ListBox2.Items.Strings[i]);
        end;
      end;
    end;
    listbox2.DeleteSelected;
    Label11.Caption:=IntToStr(ListBox1.Count);
    Label12.Caption:=IntToStr(ListBox2.Count);
    if Uni then CheckBox9.Checked:=false;
    if Asoci then CheckBox7.Checked:=false;
    if Provi then CheckBox8.Checked:=false;
    if Distri then CheckBox5.Checked:=false;
    if Iglesi then CheckBox6.Checked:=false;
    {If ListBox2.Count<1 then
    begin
      form1.DBGrid1.DataSource.DataSet.Active:=False;
      Abort;
    end;}
    //Para actualizar los campos para ordenar \\
    Ordenar:='';
    for i:=0 to FormOrdenar.CheckListBox1.Items.Count-1 do
    begin
      if FormOrdenar.CheckListBox1.Checked[i] then
      Ordenar:=Ordenar+'['+FormOrdenar.CheckListBox1.Items.Strings[i]+']'+',';
    end;
    delete(Ordenar,length(Ordenar),1);
    if Ordenar<>'' then OrdenarSiNo:=true else OrdenarSiNo:=False;
  end;
end;

//Arrastrar y soltar un campo sobre campos disponibles
procedure TFormConfigurarDB.ListBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  If Source is TListBox then
  Accept:=True;
end;

//Arrastrar y soltar un campo sobre campos a mostrar
procedure TFormConfigurarDB.ListBox2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i: Integer;
begin
  if ListBox1.Count>0 then
  begin
    if listbox1.SelCount<>-1 then
    begin
      for i:=0 to (listbox1.Items.Count-1) do
      begin
        if listbox1.Selected[i] then
        begin
          ListBox2.Items.Add(ListBox1.Items.Strings[i]);
        end;
      end;
      listbox1.DeleteSelected;
    end;
  end;
  Label11.Caption:=IntToStr(ListBox1.Count);
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Aceptar el campo soltado sobre campos a mostrar
procedure TFormConfigurarDB.ListBox2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  If Source is TListBox then
  Accept:=True;
end;

//Muestra/oculta el campo Unión
procedure TFormConfigurarDB.CheckBox9Click(Sender: TObject);
Var
  Conteo: Integer;
begin
  Conteo:=0;
  If CheckBox9.Checked=true then
  begin
    ListBox2.Items.Add('Unión');
  end else
  begin
    if not uni then
    If ListBox2.Items.Count-1>=0 then
    begin
      while ListBox2.Items.Strings[Conteo]<>'Unión' do Inc(Conteo);
      ListBox2.Items.Delete(Conteo);
      If ListBox2.Items.Count-1>=0 then
    end;
  end;
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Muestra/oculta el campo Asociación
procedure TFormConfigurarDB.CheckBox7Click(Sender: TObject);
Var
  Conteo: Integer;
begin
  Conteo:=0;
  If CheckBox7.Checked=true then
  begin
    ListBox2.Items.Add('Asociación');
  end else
  begin
    if not asoci then
    If ListBox2.Items.Count-1>=0 then
    begin
      while ListBox2.Items.Strings[Conteo]<>'Asociación' do Inc(Conteo);
      ListBox2.Items.Delete(Conteo);
      Label12.Caption:=IntToStr(ListBox2.Count);
    end;
  end;
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Muestra/oculta el campo Provincia
procedure TFormConfigurarDB.CheckBox8Click(Sender: TObject);
Var
  Conteo: Integer;
begin
  Conteo:=0;
  If CheckBox8.Checked=true then
  begin
    ListBox2.Items.Add('Provincia');
  end else
  begin
    if not provi then
    If ListBox2.Items.Count-1>=0 then
    begin
      while ListBox2.Items.Strings[Conteo]<>'Provincia' do Inc(Conteo);
      ListBox2.Items.Delete(Conteo);
      If ListBox2.Items.Count-1>=0 then
    end;
  end;
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Muestra/oculta el campo Distrito
procedure TFormConfigurarDB.CheckBox5Click(Sender: TObject);
Var
  Conteo: Integer;
begin
  Conteo:=0;
  If CheckBox5.Checked=true then
  begin
    ListBox2.Items.Add('Distrito');
  end else
  begin
    if not distri then
    If ListBox2.Items.Count-1>=0 then
    begin
      while ListBox2.Items.Strings[Conteo]<>'Distrito' do Inc(Conteo);
      ListBox2.Items.Delete(Conteo);
      If ListBox2.Items.Count-1>=0 then
    end;
  end;
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

//Muestra/oculta el campo Iglesia
procedure TFormConfigurarDB.CheckBox6Click(Sender: TObject);
Var
  Conteo: Integer;
begin
  Conteo:=0;
  If CheckBox6.Checked=true then
  begin
    ListBox2.Items.Add('Iglesia');
  end else
  begin
    if not iglesi then
    If ListBox2.Items.Count-1>=0 then
    begin
      while ListBox2.Items.Strings[Conteo]<>'Iglesia' do Inc(Conteo);
      ListBox2.Items.Delete(Conteo);
      If ListBox2.Items.Count-1>=0 then
    end;
  end;
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

procedure TFormConfigurarDB.FormCreate(Sender: TObject);
begin
  BuscarCamposMostrados;
  Label11.Caption:=IntToStr(ListBox1.Count);
  Label12.Caption:=IntToStr(ListBox2.Count);
end;

procedure TFormConfigurarDB.dxButtonAceptarClick(Sender: TObject);
begin
  GuardaCamposMostrados;
  cierraNormal:=false;
  VieneDeBuscar:=false;
  if Normal or Activa or Seleccion or Global then
  if listBox2.Items.Count>=1 then
  try
    form1.CampoVisible;
  except;
  end;
  close;
end;

procedure TFormConfigurarDB.GuardaCamposMostrados;
var
  Registro :TRegistry;
  i,j      :Byte;
begin
  try
    Registro:=TRegistry.Create;
    Registro.DeleteKey('\Software\'+ExtractFileName(Application.Exename)+
                     '\CamposMostrar');
    Registro.OpenKey('\Software\'+ExtractFileName(Application.Exename)+
                     '\CamposMostrar',TRUE);
    If ListBox1.Count>0 then
    for i:=0 to ListBox1.Count-1 do
    begin
      Registro.WriteInteger(ListBox1.Name+'['+ListBox1.Items[i]+']',i);
    end;
    If ListBox2.Count>0 then
    for j:=0 to ListBox2.Count-1 do
    begin
      Registro.WriteInteger(ListBox2.Name+'['+ListBox2.Items[j]+']',j);
    end;
    if CheckBox2.Checked then
      Registro.WriteInteger(CheckBox2.Name,1)
    else Registro.WriteInteger(CheckBox2.Name,0);
    if CheckBox3.Checked then
      Registro.WriteInteger(CheckBox3.Name,1)
    else Registro.WriteInteger(CheckBox3.Name,0);
    if CheckBox4.Checked then
      Registro.WriteInteger(CheckBox4.Name,1)
    else Registro.WriteInteger(CheckBox4.Name,0);
    if CheckBox5.Checked then
      Registro.WriteInteger(CheckBox5.Name,1)
    else Registro.WriteInteger(CheckBox5.Name,0);
    if CheckBox6.Checked then
      Registro.WriteInteger(CheckBox6.Name,1)
    else Registro.WriteInteger(CheckBox6.Name,0);
    if CheckBox7.Checked then
      Registro.WriteInteger(CheckBox7.Name,1)
    else Registro.WriteInteger(CheckBox7.Name,0);
    if CheckBox8.Checked then
      Registro.WriteInteger(CheckBox8.Name,1)
    else Registro.WriteInteger(CheckBox8.Name,0);
    if CheckBox9.Checked then
      Registro.WriteInteger(CheckBox9.Name,1)
    else Registro.WriteInteger(CheckBox9.Name,0);
    Registro.Free;
  except;
    Registro.Free;
                            //'Error accediendo al registro'
    ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321))
  end;
end;

procedure TFormConfigurarDB.BuscarCamposMostrados;
var
  Registro :TRegistry;
  i        :Byte;
  s,lb1,lb2:TStringList;
  nomb: String;
begin
  try
    s:=TStringList.Create;
    lb1:=TStringList.Create;
    lb2:=TStringList.Create;
    Registro:=TRegistry.Create;
    Registro.OpenKey('\Software\'+ExtractFileName(Application.Exename)+
                     '\CamposMostrar',false);
    Registro.GetValueNames(s);
    if s.Count>0 then
    begin
      ListBox1.Clear;
      for i:=0 to s.Count-1 do
      begin
        nomb:=s.Strings[i];
        //buscando ListBox1
        if pos('ListBox1[',nomb)>0 then
        begin
          delete(nomb,pos('ListBox1[',nomb),9);
          delete(nomb,Length(nomb),1);
          lb1.Add(nomb);
        end else
        //buscando ListBox2
        if pos('ListBox2[',nomb)>0 then
        begin
          delete(nomb,pos('ListBox2[',nomb),9);
          delete(nomb,Length(nomb),1);
          lb2.Add(nomb);
        end else
        //Chequeando los CheckBox
        if pos('CheckBox2',nomb)>0 then
          CheckBox2.Checked:=Registro.ReadInteger('CheckBox2')=1
        else
        if pos('CheckBox3',nomb)>0 then
          CheckBox3.Checked:=Registro.ReadInteger('CheckBox3')=1
        else
        if pos('CheckBox4',nomb)>0 then
          CheckBox4.Checked:=Registro.ReadInteger('CheckBox4')=1
        else
        if pos('CheckBox5',nomb)>0 then
          CheckBox5.Checked:=Registro.ReadInteger('CheckBox5')=1
        else
        if pos('CheckBox6',nomb)>0 then
          CheckBox6.Checked:=Registro.ReadInteger('CheckBox6')=1
        else
        if pos('CheckBox7',nomb)>0 then
          CheckBox7.Checked:=Registro.ReadInteger('CheckBox7')=1
        else
        if pos('CheckBox8',nomb)>0 then
          CheckBox8.Checked:=Registro.ReadInteger('CheckBox8')=1
        else
        if pos('CheckBox9',nomb)>0 then
          CheckBox9.Checked:=Registro.ReadInteger('CheckBox9')=1;
      end;
      ListBox1.Items.Assign(lb1);
      ListBox2.Items.Assign(lb2);
    end;
    lb1.Free;
    lb2.Free;
    Registro.Free;
  except
    lb1.Free;
    lb2.Free;
    Registro.Free;
                             //'Error accediendo al registro'
    ShowMessage(form1.Decript('@qsks(gbefloejdg!am&v`gj{sun',987654321))
  end;
end;

procedure TFormConfigurarDB.dxButtonCerrarClick(Sender: TObject);
var
  i:Integer;
begin
  cierraNormal:=false;
  for i:=0 to Panel10.ControlCount-1 do
  begin
    if Panel10.Controls[i] is TCheckBox then
    begin
      with Panel10.Controls[i] as TCheckBox do
      begin
        if listaChecked[i]='Si' then checked:=true else checked:=false;
      end;
    end;
  end;
  listBox1.Clear;listBox2.Clear;
  if lista1.Count>0 then listBox1.Items.Assign(lista1);
  if lista2.Count>0 then listBox2.Items.Assign(lista2);
  close;
end;

procedure TFormConfigurarDB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then close;
  if key=VK_RETURN then dxButtonAceptarClick(Sender);
end;

procedure TFormConfigurarDB.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key=VK_RIGHT) then
  begin
    key:=0;
    SpeedButton4Click(Sender);
  end;
end;

procedure TFormConfigurarDB.ListBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key=VK_LEFT) then
  begin
    key:=0;
    SpeedButton5Click(Sender);
  end;
end;

procedure TFormConfigurarDB.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  cierraNormal:=true;
  try
    lista1:=TStringList.Create;
    lista2:=TStringList.Create;
    listaChecked:=TStringList.Create;
    lista1.Assign(ListBox1.Items);lista2.Assign(ListBox2.Items);
    for i:=0 to Panel10.ControlCount-1 do
    begin
      //ShowMessage(Panel10.Controls[i].Name);
      if Panel10.Controls[i] is TCheckBox then
      begin
        with Panel10.Controls[i] as TCheckBox do
        begin
          if Checked then listaChecked.Add('Si') else listaChecked.Add('No');
        end;
      end;
    end;
  except;
  end;
end;

procedure TFormConfigurarDB.FormClose(Sender:TObject;var Action:TCloseAction);
var i: Integer;
begin
  if cierraNormal then
  begin
    for i:=0 to Panel10.ControlCount-1 do
    begin
      if Panel10.Controls[i] is TCheckBox then
      begin
        with Panel10.Controls[i] as TCheckBox do
        begin
          if listaChecked[i]='Si' then checked:=true else checked:=false;
        end;
      end;
    end;
    listBox1.Clear;listBox2.Clear;
    if lista1.Count>0 then listBox1.Items.Assign(lista1);
    if lista2.Count>0 then listBox2.Items.Assign(lista2);
  end;
  lista1.Free;lista2.Free;listaChecked.Free;
  if form1.DBGrid1.DataSource<>nil then
  If ListBox2.Count<1 then
  begin
    form1.DBGrid1.DataSource.DataSet.Active:=False;
    form1.BarraDeEstado;
  end;
  label11.Caption:=IntToStr(ListBox1.Count);
  label12.Caption:=IntToStr(ListBox2.Count);
end;

end.
