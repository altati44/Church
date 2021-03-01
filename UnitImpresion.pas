unit UnitImpresion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPrntr, QuickRpt, StdCtrls, Spin, Buttons, ExtCtrls, ComCtrls,
  ToolWin, ImgList, Menus;

type
  TFormImpresion = class(TForm)
    Panel1: TPanel;
    QRprev: TQRPreview;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    sbFirstPage: TSpeedButton;
    ToolButton4: TToolButton;
    sbPreviousPage: TSpeedButton;
    ToolButton5: TToolButton;
    sbNextPage: TSpeedButton;
    ToolButton6: TToolButton;
    sbLastPage: TSpeedButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ZoomToFit: TSpeedButton;
    ToolButton9: TToolButton;
    ZoomTo100: TSpeedButton;
    ToolButton10: TToolButton;
    ZoomToWidth: TSpeedButton;
    ToolButton12: TToolButton;
    PrintSetup: TSpeedButton;
    ToolButton11: TToolButton;
    Print: TSpeedButton;
    ToolButton3: TToolButton;
    Salir: TSpeedButton;
    stBar: TStatusBar;
    ImageList1: TImageList;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    ToolButton1: TToolButton;
    ToolButton13: TToolButton;
    sePage: TEdit;
    PaginaN: TUpDown;
    Panel11: TPanel;
    Panel12: TPanel;
    UpDownZoom: TUpDown;
    spZoom: TEdit;
    Panel10: TPanel;
    Panel7: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    procedure sbFirstPageClick(Sender: TObject);
    procedure sbPreviousPageClick(Sender: TObject);
    procedure sbNextPageClick(Sender: TObject);
    procedure sbLastPageClick(Sender: TObject);
    procedure ZoomToFitClick(Sender: TObject);
    procedure ZoomTo100Click(Sender: TObject);
    procedure ZoomToWidthClick(Sender: TObject);
    procedure PrintSetupClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRprevPageAvailable(Sender: TObject; PageNum: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QRprevProgressUpdate(Sender: TObject; Progress: Integer);
    procedure sePageChange(Sender: TObject);
    procedure sePageKeyPress(Sender: TObject; var Key: Char);
    procedure spZoomChange(Sender: TObject);
    procedure spZoomKeyPress(Sender: TObject; var Key: Char);
    procedure sePageKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spZoomKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRprevMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure QRprevMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure QRprevClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpresion: TFormImpresion;
  MaxPag: Integer;
  sPageNumAnterior,sZoomNumAnterior:string;
implementation

uses  printers, Principal, Reporte, UnitTarjetero;

{$R *.dfm}

procedure TFormImpresion.FormCreate(Sender: TObject);
begin
  sbFirstPage.Glyph.Handle:=LoadBitMap(hinstance, 'QRFirstPageBitMap');
  sbPreviousPage.Glyph.Handle:=LoadBitMap(hinstance, 'QRPrevPageBitMap');
  sbNextPage.Glyph.Handle:=LoadBitMap(hinstance, 'QRNextPageBitMap');
  sbLastPage.Glyph.Handle:=LoadBitMap(hinstance, 'QRLastPageBitMap');
  ZoomToFit.Glyph.Handle:=LoadBitMap(hinstance, 'QRZoomToFitBitMap');
  ZoomTo100.Glyph.Handle:=LoadBitMap(hinstance, 'QRZoomTo100BitMap');
  ZoomToWidth.Glyph.Handle:=LoadBitMap(hinstance, 'QRZoomToWidthBitMap');
  PrintSetup.Glyph.Handle:=LoadBitMap(hinstance, 'QRPrintSetupBitMap');
  Print.Glyph.Handle:=LoadBitMap(hinstance, 'QRPrintBitMap');
  //stBar.Panels[1].Text:='Zoom= '+IntToStr(spZoom.Value);

end;

procedure TFormImpresion.QRprevPageAvailable(Sender: TObject; PageNum: Integer);
begin
  try
    //Ajustar el contador y la barra de tareas
    if PageNum>=1 then
    begin
      PaginaN.Max:=PageNum;
      PaginaN.Position:=1;
    end else
    begin
      PaginaN.Max:=1;
      PaginaN.Position:=1;
    end;
    MaxPag:=PageNum;
    stBar.Panels[0].Text:='Pág. 1/'+IntToStr(MaxPag);
  except
  end;
  QRprev.ZoomToWidth;
  UpDownZoom.Position:=QRprev.Zoom;
end;

procedure TFormImpresion.sbFirstPageClick(Sender: TObject);
begin
  PaginaN.Position:=1;
end;

procedure TFormImpresion.sbNextPageClick(Sender: TObject);
begin
  if PaginaN.Position<QRPrev.QRPrinter.PageCount then
  PaginaN.Position:=QRPrev.PageNumber+1;
end;

procedure TFormImpresion.sbPreviousPageClick(Sender: TObject);
begin
  if PaginaN.Position>1 then
    PaginaN.Position:=QRPrev.PageNumber-1;
end;

procedure TFormImpresion.sbLastPageClick(Sender: TObject);
begin
  PaginaN.Position:=QRPrev.QRPrinter.PageCount;
end;

procedure TFormImpresion.ZoomToFitClick(Sender: TObject);
begin
  QRPrev.ZoomToFit;
  UpDownZoom.Position:=QRPrev.Zoom;
end;

procedure TFormImpresion.PrintSetupClick(Sender: TObject);
begin
  if Printer.Printers.Count<1 then
  begin
    Application.MessageBox ('No hay impresora preparada. ',
                             'Información',mb_OK+MB_ICONINFORMATION);
    exit;
  end;
  With QRPrev do
  begin
    tag:=-1;
    QRPrinter.PrintSetup;
    if tag=0 then QRPrinter.Print;
  end;
end;       

procedure TFormImpresion.PrintClick(Sender: TObject);
begin
  if Printer.Printers.Count<1 then
  begin
    Application.MessageBox ('No hay impresora preparada. ',
                             'Información',mb_OK+MB_ICONINFORMATION);
    exit;
  end;
  if Panel10.Caption='Cargado:' then
  begin
    try
      QRPrev.QRPrinter.Print;
    except;
      Application.MessageBox ('Lo sentimos, problema con la Impresora.    ',
                               'Mensaje de error...',MB_OK+MB_ICONERROR);
    end;
  end;
end;

procedure TFormImpresion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Titulo2='Notas referentes al año...' then
  if Panel10.Caption='Cargado:' then
  begin
  try
    QRPrev.QRPrinter.Cancel;
    QRPrev.QRPrinter.Free;
    QRPrev.QRPrinter:=nil;
    exit;
  except;
  end;
  end else
  begin
    Action:=caNone;exit;
  end;
  try
    QRPrev.QRPrinter.Cancel;
    QRPrev.QRPrinter.Free;
    QRPrev.QRPrinter:=nil;
  except;
  end;
end;

procedure TFormImpresion.SalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormImpresion.ZoomTo100Click(Sender: TObject);
begin
  QRPrev.Zoom:=100;
  UpDownZoom.Position:=QRPrev.Zoom;
end;

procedure TFormImpresion.ZoomToWidthClick(Sender: TObject);
begin
  QRPrev.ZoomToWidth;
  UpDownZoom.Position:=QRPrev.Zoom;
end;

procedure TFormImpresion.FormResize(Sender: TObject);
begin
  QRPrev.ZoomToWidth;
  UpDownZoom.Position:=QRPrev.Zoom;
  ZoomToWidth.Down:=true;
end;

procedure TFormImpresion.FormShow(Sender: TObject);
var noPopup: TPopupMenu;
begin 
  Panel10.Update;panel4.Update;
  noPopup:=TPopupMenu.Create(Nil);
  sePage.PopupMenu := noPopup;
  spZoom.PopupMenu:=noPopup;
  spZoom.Text:=IntToStr(QRprev.Zoom);
  ZoomToWidth.Down:=true;Label2.Width:=0;
  Shape1.Width:=0;Panel10.Caption:='Progreso:';
  if Reporte1 then
  begin
    if form5.QRep1.Page.Orientation=poPortrait then
    begin
      Image1.Picture:=Image3.Picture;
      Image1.Hint:='Vertical';
    end else
    begin
      Image1.Picture:=Image2.Picture;
      Image1.Hint:='Horizontal';
    end;
    QRPrev.QRPrinter.Title:=Titulo2;
    stBar.Panels[2].Text:='Largo: '+FloatToStr(Form5.QRep1.Page.Length/10)+' cm';
    stBar.Panels[3].Text:='Ancho: '+FloatToStr(Form5.QRep1.Page.Width/10)+' cm';
    stBar.Panels[4].Text:=QRPrev.QRPrinter.Title;
  end else
  begin
    Image1.Picture:=Image3.Picture;
    Image1.Hint:='Vertical';
    QRPrev.QRPrinter.Title:='Formulario de Feligresía';
    stBar.Panels[2].Text:='Largo: '+FloatToStr(FormTarjetero.QRep2.Page.Length/10)+' cm';
    stBar.Panels[3].Text:='Ancho: '+FloatToStr(FormTarjetero.QRep2.Page.Width/10)+' cm';
    stBar.Panels[4].Text:=QRPrev.QRPrinter.Title;
  end;
end;

procedure TFormImpresion.QRprevProgressUpdate(Sender:TObject;Progress:Integer);
begin
  panel4.Update; Shape1.Update;
  Shape1.Width:=Progress;Label2.Width:=Progress;
  Label2.Caption:=IntToStr(Progress)+'%';
  Shape1.Update;Salir.Update;
  if Progress=100 then
  begin
    Panel10.Caption:='Cargado:';
    Panel10.Update;
  end;
  //Application.ProcessMessages;
end;

procedure TFormImpresion.sePageChange(Sender: TObject);
begin
  try
    QRPrev.PageNumber:=PaginaN.Position;
    stBar.Panels[0].Text:='Pág. '+sePage.Text+'/'+IntToStr(MaxPag);
  except
  end;
end;

procedure TFormImpresion.spZoomChange(Sender: TObject);
begin
  try
    QRPrev.Zoom:=UpDownZoom.Position;
    stBar.Panels[1].Text:='Zoom = '+spZoom.Text;
  except
  end;
end;

procedure TFormImpresion.sePageKeyPress(Sender: TObject; var Key: Char);
begin
  sPageNumAnterior:=sePage.Text;
  if key = #22 then //Ctrl+V
  begin
    try
      key := #0;
      sePage.PasteFromClipBoard;
      StrToInt(sePage.Text);
    except
      sePage.Text := sPageNumAnterior;
    end;
  end;
  if (key in ['0'..'9',#8]) then
  begin
    if PaginaN.Max=1 then key:=#0;
  end else key:=#0;
end;

procedure TFormImpresion.spZoomKeyPress(Sender: TObject; var Key: Char);
begin
  sZoomNumAnterior:=spZoom.Text;
  if key = #22 then //Ctrl+V
  try
    key := #0;
    spZoom.PasteFromClipBoard;
    StrToInt(spZoom.Text);
  except
    spZoom.Text := sZoomNumAnterior;
  end;
  if not (key in ['0'..'9',#8]) then key:=#0;
end;
                
procedure TFormImpresion.sePageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if (StrToInt(sePage.Text)>QRPrev.QRPrinter.PageCount) then
      sePage.Text:=IntToStr(QRPrev.QRPrinter.PageCount);
    if (StrToInt(sePage.Text)<=0) then sePage.Text:='1';
  except;
    sePage.Text:=sPageNumAnterior;
  end;
end;

procedure TFormImpresion.spZoomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if StrToInt(spZoom.Text)>1750 then
      spZoom.Text:='1750';
    if StrToInt(spZoom.Text)<5 then
      spZoom.Text:='5';
  except;
    spZoom.Text:=sZoomNumAnterior;
  end;
end;

procedure TFormImpresion.QRprevMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  QRPrev.VertScrollBar.Position:=QRPrev.VertScrollBar.Position+10;
end;

procedure TFormImpresion.QRprevMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  QRPrev.VertScrollBar.Position:=QRPrev.VertScrollBar.Position-10;
end;

procedure TFormImpresion.QRprevClick(Sender: TObject);
begin
  QRPrev.SetFocus;
end;

procedure TFormImpresion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin {INTERCEPTA [PG_UP],[PG_DN], [CTRL][PG_UP],[CTRL][PG_DN], [HOME],[END]}
  if (((Key = VK_NEXT) and (Shift = [ssCtrl])) or (Key = VK_END))
  then begin
         PaginaN.Position:=QRPrev.QRPrinter.PageCount;; {Ultima}

         end
  else if (((Key = VK_PRIOR) and (Shift = [ssCtrl])) or (Key = VK_HOME))
      then begin
         PaginaN.Position:=1; {Primera}

         end
  else if (Key = VK_NEXT) then sbNextPageClick(Sender)
  else if (Key = VK_PRIOR) then sbPreviousPageClick(Sender)
  else if (key = VK_ESCAPE) then close;
end;

procedure TFormImpresion.FormActivate(Sender: TObject);
begin
  Panel10.Update;
  Panel4.Update;panel5.Update;panel6.Update;
end;

end.
