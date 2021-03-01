unit UnitIdiomas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, Menus;

type
  TFormIdiomas = class(TForm)
    CheckIdiomas: TCheckListBox;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Adicionar1: TMenuItem;
    Borrar1: TMenuItem;
    Seleccionartodos1: TMenuItem;
    Cancelar: TButton;
    Aceptar: TButton;
    procedure CancelarClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Seleccionartodos1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure Adicionar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActualizaIdiomas;
    procedure PonIdiomas;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIdiomas: TFormIdiomas;

implementation

uses Principal, UnitAddIdioma;

{$R *.dfm}

procedure TFormIdiomas.CancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormIdiomas.AceptarClick(Sender: TObject);
var
  i: Integer;
begin
  form1.ADOTMiembros.Edit;
  form1.ADOTMiembros.FieldByName('Idiomas').Clear;
  for i:=0 to CheckIdiomas.Items.Count-1 do
  begin
    if CheckIdiomas.Checked[i] then
    begin
      form1.DBMemoIdiomas.Lines.Add(CheckIdiomas.Items.Strings[i]);
    end;
  end;
  form1.ADOTMiembros.Post;
  close;
end;

procedure TFormIdiomas.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  ActualizaIdiomas;
  CheckIdiomas.MultiSelect:=true;
  for i:=0 to CheckIdiomas.Count-1 do
  begin
    CheckIdiomas.Checked[i]:=false;
  end;
  try
    for i:=0 to form1.DBMemoIdiomas.Lines.Count-1 do
    begin
      if CheckIdiomas.Items.IndexOf(form1.DBMemoIdiomas.Lines.Strings[i])<>-1 then
      begin
      CheckIdiomas.ItemIndex:=CheckIdiomas.Items.IndexOf(form1.DBMemoIdiomas.Lines.Strings[i]);
      CheckIdiomas.Checked[CheckIdiomas.ItemIndex]:=true;
      end;
    end;
  except;
  end;
end;

procedure TFormIdiomas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then close;
  if key=VK_RETURN then AceptarClick(Sender);
end;

procedure TFormIdiomas.Seleccionartodos1Click(Sender: TObject);
begin
    CheckIdiomas.SelectAll;
end;

procedure TFormIdiomas.Borrar1Click(Sender: TObject);
var
  i,j: Integer;
begin
  if CheckIdiomas.SelCount>0 then
  If Application.MessageBox ('El idioma se borrará de la Base de Datos.'+#13+
                             '        ¿Confirma el borrado?',
                             'Advertencia',mb_YesNo+MB_IconStop) =
                             ID_yes Then
  begin
    for i:=0 to CheckIdiomas.SelCount-1 do
    begin
      for j:=0 to CheckIdiomas.Items.Count-1 do
      begin
        if CheckIdiomas.Selected[j] then
        begin
          if form1.ADOIdiomas.Locate('Idioma',CheckIdiomas.Items.Strings[j],[])
          then Form1.ADOIdiomas.Delete;
        end;
      end;
    end;
    CheckIdiomas.DeleteSelected;
    ActualizaIdiomas;
  end;
end;

procedure TFormIdiomas.Adicionar1Click(Sender: TObject);
begin
  FormAddIdioma.ShowModal;
end;

procedure TFormIdiomas.FormCreate(Sender: TObject);
begin
  PonIdiomas;
end;

procedure TformIdiomas.ActualizaIdiomas;
begin
  if CheckIdiomas.Items.Count>0 then
    Caption:='Idiomas: '+IntToStr(CheckIdiomas.Items.Count) else
    Caption:='Idiomas';
end;

procedure TformIdiomas.PonIdiomas;
var
  i: Integer;
begin
   CheckIdiomas.Clear;
   try
     form1.ADOIdiomas.Open;
     if form1.ADOIdiomas.RecordCount>0 then
     for i:=0 to form1.ADOIdiomas.RecordCount-1 do
     begin
        CheckIdiomas.Items.Add(Form1.ADOIdiomas.fieldByName('Idioma').AsString);
        form1.ADOIdiomas.Next;
     end;
  except;
  end;
end;

end.



