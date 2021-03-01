unit GuardaBuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, CheckLst, Grids;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    TreeView1: TTreeView;
    Panel7: TPanel;
    Panel8: TPanel;
    LBorrar: TButton;
    LDesmarcar: TButton;
    LAceptar: TButton;
    Cancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure LBorrarClick(Sender: TObject);
    procedure LAceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    Procedure GuardalistaB;
    Procedure CargarlistaB;
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LDesmarcarClick(Sender: TObject);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure DisplayHint(Sender: TObject);

  end;

var
  Form6: TForm6;
  ConsultaAnt: String;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
  //GetLongHint(Application.Hint);
  //ListView1.Items.BeginUpdate;
  //Omitir el Hint del TreeView1
  SetWindowLong(TreeView1.Handle,
                             GWL_STYLE,
                             GetWindowLong(TreeView1.Handle,GWL_STYLE) or $80);
  CargarlistaB; //ListView1.Items.EndUpdate;
end;

{procedure TForm6.DisplayHint(Sender: TObject);
begin
  //TreeView1.Hint := GetLongHint(TreeView1.Hint);
end;}
///////////////BORRAR/////////////////////
procedure TForm6.LBorrarClick(Sender: TObject);
var
  f:TextFile;
  Directorio: String;
  i,j: Integer;
begin
  Directorio:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'UnixFile.nod';
  if TreeView1.Selected<>nil then
  begin//esto hay que mejorarlo de otra manera
    for i:=0 to TreeView1.SelectionCount-1 do
    begin
      for j:=0 to TreeView1.Items.Count-1 do
      begin
        if TreeView1.Items.Item[J].Selected then
        begin
          TreeView1.Items.Item[J].Delete;
          break;
        end;
      end;
    end;
  end;
  AssignFile(f,Directorio);
  Try
    ReWrite(f);
  except
    Abort;
  end;
  CloseFile(f); 
end;

///////////////ACEPTAR///////////////////////////
procedure TForm6.LAceptarClick(Sender: TObject);
var
  node: TTreeNode;
begin
  If TreeView1.SelectionCount>=1 then
  begin
    Form2.RichEdit1.Clear;
    Form2.RichEdit1.Visible:=false;
    Form2.RichEdit1.Text:=TreeView1.Selected.Text;
    form2.RectificaTexto;
    Close;
  end;
end;
 
///////////////////CANCELAR////////////////////////
procedure TForm6.CancelarClick(Sender: TObject);
begin
  Close;
end;

Procedure TForm6.GuardalistaB;
var
  i:integer;
  f:TextFile;
  Directorio: String;
Begin
  Directorio:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'UnixFile.nod';
  AssignFile(f,Directorio);
  Try
    ReWrite(f);
    for i:=0 to Form6.TreeView1.Items.Count-1 do
    writeln(f,Form6.TreeView1.Items[i].Text+#13);
    CloseFile(f);
  except
  end;
end;

Procedure TForm6.CargarlistaB;
var
  i:integer;
  f:TextFile;
  s,Directorio: String;
  NuevoNodo: TTreeNode;
Begin
  Directorio:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'UnixFile.nod';
  AssignFile(f,Directorio);
  Try
    Reset(f);
    while not SeekEof(f) do
   begin
     Readln(f,s);
     //NuevoNodo := TreeView1.Items.Insert(Nil, s);
     NuevoNodo:=TreeView1.Items.Add(nil,s);
     //ListView1.Items.Add.Caption:=s;
     //ListView1.ViewStyle:=vsSmallIcon;
   end;
    CloseFile(f);
  except
  end;
end;

procedure TForm6.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  N: Integer;
  HT : THitTests;
begin
  if TreeView1.GetNodeAt(x,y)<>nil then
  begin
    TreeView1.Selected:=TreeView1.GetNodeAt(x,y);
    If Button=mbLeft then If (ssDouble in Shift) then
    begin
      if (Sender is TTreeView) then
      begin
        with Sender as TTreeView do
        begin
          HT := GetHitTestInfoAt(X,Y);
          if (htOnItem in HT) then
          begin
            //If TreeView1.Selected <> Nil Then
              Form2.RichEdit1.Clear;
              form2.RichEdit1.Visible:=false;
              ConsultaAnt:=TreeView1.GetNodeAt(x,y).Text;
              Form2.RichEdit1.Text:=ConsultaAnt;
              Form2.RectificaTexto;
              close;
          end;
         end;
      end;
    end else if (ssLeft in Shift) then
      begin
        if (Sender is TTreeView) then
        begin
          with Sender as TTreeView do
          begin
            HT := GetHitTestInfoAt(X,Y);
            if (htOnItem in HT) then
            begin
              //If TreeView1.Selected <> Nil Then
              //Form2.RichEdit1.Clear;
              ConsultaAnt:=TreeView1.GetNodeAt(x,y).Text;
              //Form2.RichEdit1.Text:=ConsultaAnt;
              //close;
            end;
          end;
        end;
      end else if (Sender is Tlabel) then
      begin
        with Sender as TLabel do
        begin
          //HT := GetHitTestInfoAt(X,Y);
          //if (htOnItem in HT) then
            //If TreeView1.Selected <> Nil Then
              
              Form2.RichEdit1.Clear;
              //ConsultaAnt:=TreeView1.GetNodeAt(x,y).Text;
              Form2.RichEdit1.Text:=ConsultaAnt;
              close;
         end;
      end;
  end;
end;



procedure TForm6.TreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {If TreeView1.Selected<>nil then
  begin
    Form2.RichEdit1.Clear;
    Form2.RichEdit1.Text:=ConsultaAnt;
    close;
  end;}
end;

procedure TForm6.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  begin
    key:=#0;
    LAceptarClick(Sender);
  end;
  if key=#27 then close;
end;

procedure TForm6.LDesmarcarClick(Sender: TObject);
var
  i: Integer;
begin
  if TreeView1.Selected<>nil then
  begin
    for i:=0 to TreeView1.Items.Count-1 do
    begin
      if TreeView1.Items.Item[i].Selected then
      TreeView1.Items.Item[i].Selected:=false;
    end;
  end;
end;

procedure TForm6.FormConstrainedResize(Sender: TObject; var MinWidth,
  MinHeight, MaxWidth, MaxHeight: Integer);
begin
  MinWidth:=470;MinHeight:=134;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
  TreeView1.SetFocus;
end;

end.
