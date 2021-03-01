unit UnitEnfermedades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, Menus;

type
  TFormEnfermedades = class(TForm)
    CheckEnfermedades: TCheckListBox;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Adicionar1: TMenuItem;
    Borrar1: TMenuItem;
    Seleccionartodos1: TMenuItem;
    Aceptar: TButton;
    Cancelar: TButton;
    procedure CancelarClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Seleccionartodos1Click(Sender: TObject);
    procedure Adicionar1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActualizaEnfermedades;
    procedure PonEnfermedades;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnfermedades: TFormEnfermedades;

implementation

uses Principal, UnitIdiomaEnf, UnitAddEnfernedad;

{$R *.dfm}

procedure TFormEnfermedades.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormEnfermedades.AceptarClick(Sender: TObject);
var
  i: Integer;
begin
  form1.ADOTMiembros.Edit;
  form1.ADOTMiembros.FieldByName('Enfermedades').Clear;
  for i:=0 to CheckEnfermedades.Items.Count-1 do
  begin
    if CheckEnfermedades.Checked[i] then
    begin
      form1.DBMemoEnfermedades.Lines.Add(CheckEnfermedades.Items.Strings[i]);
    end;
  end;
  form1.ADOTMiembros.Post;
  close;
end;

procedure TFormEnfermedades.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  ActualizaEnfermedades;
  CheckEnfermedades.MultiSelect:=true;
  for i:=0 to CheckEnfermedades.Count-1 do
  begin
    CheckEnfermedades.Checked[i]:=false;
  end;
  try
    for i:=0 to form1.DBMemoEnfermedades.Lines.Count-1 do
    begin
      if CheckEnfermedades.Items.IndexOf(form1.DBMemoEnfermedades.Lines.Strings[i])<>-1 then
      begin
      CheckEnfermedades.ItemIndex:=CheckEnfermedades.Items.IndexOf(form1.DBMemoEnfermedades.Lines.Strings[i]);
      CheckEnfermedades.Checked[CheckEnfermedades.ItemIndex]:=true;
      end;
    end;
  except;
  end;
end;

procedure TFormEnfermedades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then close;
  if key=VK_RETURN then AceptarClick(Sender);
end;

procedure TFormEnfermedades.Seleccionartodos1Click(Sender: TObject);
begin
  CheckEnfermedades.SelectAll;
end;

procedure TFormEnfermedades.Adicionar1Click(Sender: TObject);
begin
  FormAddEnfermedad.ShowModal;
end;

procedure TFormEnfermedades.Borrar1Click(Sender: TObject);
var
  i,j: Integer;
begin
  if CheckEnfermedades.SelCount>0 then
  If Application.MessageBox ('La enfermedad se borrará de la Base de Datos.'+#13+
                             '        ¿Confirma el borrado?',
                             'Advertencia',mb_YesNo+MB_IconStop) =
                             ID_yes Then
  begin
    for i:=0 to CheckEnfermedades.SelCount-1 do
    begin
      for j:=0 to CheckEnfermedades.Items.Count-1 do
      begin
        if CheckEnfermedades.Selected[j] then
        begin
          if form1.ADOEnfermedades.Locate('Enfermedad',CheckEnfermedades.Items.Strings[j],[])
          then Form1.ADOEnfermedades.Delete;
        end;
      end;
    end;
    CheckEnfermedades.DeleteSelected;
    ActualizaEnfermedades;
  end;
end;

procedure TFormEnfermedades.FormCreate(Sender: TObject);
begin
  PonEnfermedades;
end;

procedure TFormEnfermedades.ActualizaEnfermedades;
begin
  if CheckEnfermedades.Items.Count>0 then
    Caption:='Enfermedades: '+IntToStr(CheckEnfermedades.Items.Count) else
    Caption:='Enfermedades';
end;

procedure TFormEnfermedades.PonEnfermedades;
var
  i: Integer;
begin
   CheckEnfermedades.Clear;
   try
     form1.ADOEnfermedades.Open;
     if form1.ADOEnfermedades.RecordCount>0 then
     for i:=0 to form1.ADOEnfermedades.RecordCount-1 do
     begin
        CheckEnfermedades.Items.Add(Form1.ADOEnfermedades.fieldByName('Enfermedad').AsString);
        form1.ADOEnfermedades.Next;
     end;
   except;
   end;
end;

end.
