unit UnitOrdenar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Buttons;

type
  TFormOrdenar = class(TForm)
    Panel1: TPanel;
    CheckListBox1: TCheckListBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ColorButton1: TButton;
    ColorButton2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ColorButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrdenar: TFormOrdenar;

implementation

uses Principal, UnitConfigurarDB;

{$R *.dfm}

procedure TFormOrdenar.FormActivate(Sender: TObject);
var
   i: Integer;
begin
  for i:=0 to formConfigurarDB.listBox2.Items.Count-1 do
  begin
    if CheckListBox1.Items.IndexOf(formConfigurarDB.ListBox2.Items.Strings[i])=-1 then
		CheckListBox1.Items.Append(formConfigurarDB.ListBox2.Items.Strings[i]);
  end;
end;

procedure TFormOrdenar.ColorButton1Click(Sender: TObject);
var
	i: Integer;
	var PosCursor:Pointer;
begin
	Ordenar:='';
	PosCursor:=form1.ADOTMiembros.GetBookmark;
	for i:=0 to CheckListBox1.Items.Count-1 do
	begin
		if CheckListBox1.Checked[i] then
		Ordenar:=Ordenar+'['+CheckListBox1.Items.Strings[i]+']'+',';
	end;
	delete(Ordenar,length(Ordenar),1);
	//ShowMessage(Ordenar);
	if Ordenar<>'' then
	begin
		OrdenarSiNo:=true;
		form1.CampoVisible;
	end else OrdenarSiNo:=False;
	form1.ADOTMiembros.GotoBookMark(PosCursor);
	form1.ADOTMiembros.FreeBookmark(PosCursor);
	close;
end;


procedure TFormOrdenar.SpeedButton1Click(Sender: TObject);
Var
  Indice: Integer;
begin
	Indice:= CheckListBox1.ItemIndex;
	If CheckListBox1.Count>0 then if Indice<> -1 then
  begin
		If Indice= 0 then CheckListBox1.ItemIndex:=0 else
		begin
			CheckListBox1.Items.Move(Indice, Indice-1);
			CheckListBox1.ItemIndex:=Indice-1;
		end;
	end;
end;

procedure TFormOrdenar.SpeedButton2Click(Sender: TObject);
Var
  Indice: Integer;
begin
	Indice:= CheckListBox1.ItemIndex;
	If CheckListBox1.Count>0 then if Indice<> -1 then
  begin
		If Indice<> CheckListBox1.Count-1 then
		CheckListBox1.Items.Move(Indice, Indice+1);
		CheckListBox1.ItemIndex:=Indice+1;
end;
end;

procedure TFormOrdenar.ColorButton2Click(Sender: TObject);
begin
	close;
end;

procedure TFormOrdenar.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#27 then close;
  if key=#13 then ColorButton1Click(Sender);
end;

end.
