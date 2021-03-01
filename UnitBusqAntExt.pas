unit UnitBusqAntExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, CheckLst, Grids;

type
  TFormBusqAntExt = class(TForm)
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    TreeView1: TTreeView;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    LBorrar: TButton;
    LDesmarcar: TButton;
    Cancelar: TButton;
    LAceptar: TButton;
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
  FormBusqAntExt: TFormBusqAntExt;
  ConsultaAnt: String;
implementation

uses UnitBImportar;

{$R *.dfm}

procedure TFormBusqAntExt.FormCreate(Sender: TObject);
begin
  //GetLongHint(Application.Hint);
  //ListView1.Items.BeginUpdate;
  //Omitir el Hint del TreeView1
  SetWindowLong(TreeView1.Handle,
                             GWL_STYLE,
                             GetWindowLong(TreeView1.Handle,GWL_STYLE) or $80);
  CargarlistaB; //ListView1.Items.EndUpdate;
end;

{procedure TFormBusqAntExt.DisplayHint(Sender: TObject);
begin
  TreeView1.Hint := GetLongHint(TreeView1.Hint);
end;}
///////////////BORRAR/////////////////////
procedure TFormBusqAntExt.LBorrarClick(Sender: TObject);
var
  i,j:integer;
  f:TextFile;
  Directorio: String;
begin
  Directorio:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'UnixFileExt.nod';
  if TreeView1.Selected<>nil then
  begin
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
procedure TFormBusqAntExt.LAceptarClick(Sender: TObject);
var
  node: TTreeNode;
begin
  If TreeView1.SelectionCount>=1 then
  begin
    FormBImportar.RichEdit1.Clear;
    FormBImportar.RichEdit1.Visible:=false;
    //ShowMessage(IntToStr(TreeView1.SelectionCount));
    FormBImportar.RichEdit1.Text:=TreeView1.Selected.Text;
    FormBImportar.RectificaTexto;
    Close;
  end;

end;

///////////////////CANCELAR////////////////////////
procedure TFormBusqAntExt.CancelarClick(Sender: TObject);
begin
  Close;
end;

Procedure TFormBusqAntExt.GuardalistaB;
var
  i:integer;
  f:TextFile;
  Directorio: String;
Begin
  Directorio:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'UnixFileExt.nod';
  AssignFile(f,Directorio);
  Try
    ReWrite(f);
    for i:=0 to TreeView1.Items.Count-1 do
    writeln(f,TreeView1.Items[i].Text+#13);
    CloseFile(f);
  except
  end;
end;

Procedure TFormBusqAntExt.CargarlistaB;
var
  i:integer;
  f:TextFile;
  s,Directorio: String;
  NuevoNodo: TTreeNode;
Begin
  Directorio:=ExtractFilePath(Application.ExeName)+{Donde esta mi programa corriendo}
                'UnixFileExt.nod';
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

procedure TFormBusqAntExt.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
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
              FormBImportar.RichEdit1.Clear;
              FormBImportar.RichEdit1.Visible:=false;
              ConsultaAnt:=TreeView1.GetNodeAt(x,y).Text;
              FormBImportar.RichEdit1.Text:=ConsultaAnt;
              FormBImportar.RectificaTexto;
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
              //FormBImportar.RichEdit1.Clear;
              ConsultaAnt:=TreeView1.GetNodeAt(x,y).Text;
              //FormBImportar.RichEdit1.Text:=ConsultaAnt;
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
              
              FormBImportar.RichEdit1.Clear;
              //ConsultaAnt:=TreeView1.GetNodeAt(x,y).Text;
              FormBImportar.RichEdit1.Text:=ConsultaAnt;
              close;
         end;
      end;
  end;
end;



procedure TFormBusqAntExt.TreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {If TreeView1.Selected<>nil then
  begin
    FormBImportar.RichEdit1.Clear;
    FormBImportar.RichEdit1.Text:=ConsultaAnt;
    close;
  end;}
end;

procedure TFormBusqAntExt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  begin
    key:=#0;
    LAceptarClick(Sender);
  end;
  if key=#27 then close;
end;

procedure TFormBusqAntExt.LDesmarcarClick(Sender: TObject);
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

procedure TFormBusqAntExt.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  MinWidth:=470;MinHeight:=134;
end;

procedure TFormBusqAntExt.FormActivate(Sender: TObject);
begin
  TreeView1.SetFocus;
end;

end.
