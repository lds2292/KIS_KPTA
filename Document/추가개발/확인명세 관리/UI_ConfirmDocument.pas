unit UI_ConfirmDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, ExtCtrls, sSplitter, StdCtrls, sButton, Buttons,
  sSpeedButton, sPanel, sSkinProvider, acImage, sScrollBar, sDialogs,
  Grids, DBGrids, acDBGrid, ComCtrls, sPageControl, DB, ADODB, sCheckBox,
  sTrackBar, sEdit, sSpinEdit, sMemo, sScrollBox, sLabel;

type
  TIMG_TYPE = (itBMP,itJPG,itPNG);
  TUI_ConfirmDocument_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sSpeedButton18: TsSpeedButton;
    sButton3: TsButton;
    sSplitter1: TsSplitter;
    sOpenDialog1: TsOpenDialog;
    sSpeedButton2: TsSpeedButton;
    sButton2: TsButton;
    sButton4: TsButton;
    sSpeedButton1: TsSpeedButton;
    sButton1: TsButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sPanel2: TsPanel;
    sSplitter2: TsSplitter;
    sTabSheet2: TsTabSheet;
    sDBGrid1: TsDBGrid;
    sDBGrid2: TsDBGrid;
    qryFileList: TADOQuery;
    dsFileList: TDataSource;
    sPanel3: TsPanel;
    sScrollBox2: TsScrollBox;
    sImage1: TsImage;
    sPanel4: TsPanel;
    sButton5: TsButton;
    sButton7: TsButton;
    sSpeedButton3: TsSpeedButton;
    sSpinEdit2: TsSpinEdit;
    sButton6: TsButton;
    sSpeedButton4: TsSpeedButton;
    sTrackBar1: TsTrackBar;
    procedure sButton2Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure qryFileListAfterScroll(DataSet: TDataSet);
    procedure sButton6Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sImage1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sImage1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sSpinEdit2Change(Sender: TObject);
    procedure sTrackBar1Change(Sender: TObject);
  private
    { Private declarations }
    FOriginWidth : Integer;
    FOriginHeight : Integer;
    FRate : Double;
    IMG : TBitmap;

    OldMousePos: TPoint;
    MouseDragging: Boolean;

    procedure LoadImage; overload;
    procedure fitOriginal;
    procedure fitScreen;
    procedure fitWidth;
    procedure fitZoom;
    procedure Freedomimage;
    procedure ReadFielList;
  public
    { Public declarations }
  end;

var
  UI_ConfirmDocument_frm: TUI_ConfirmDocument_frm;
const
  SC_DragMove = $F012;
  FullScale : integer = 100;
implementation

uses
  dmConn, dmIcon;

{$R *.dfm}

Const
  MoveDistance : Integer = 10;
procedure TUI_ConfirmDocument_frm.fitScreen;
begin
//------------------------------------------------------------------------------
// È­¸é ¸ÂÃã
//------------------------------------------------------------------------------
  with sImage1 do
  begin
    Visible := False;
    AutoSize := False;
    Center := True;
    Proportional := True;
    Stretch := True;
    Width := 831;
    Height := 674;

    sSpinEdit2.Value := Round((Height / FOriginHeight)*100);
    sTrackBar1.Position := sSpinEdit2.Value;
    
    Visible := True;
  end;
end;

procedure TUI_ConfirmDocument_frm.fitWidth;
begin
//------------------------------------------------------------------------------
// Æø ¸ÂÃã
//------------------------------------------------------------------------------
  with sImage1 do
  begin
    Visible := False;
    AutoSize := False;
    Center := False;
    Proportional := False;
    Stretch := True;
    Width := 814;
    Height := Round(Width * FRate);

    sSpinEdit2.Value := Round((Width / FOriginWidth)*100);
    sTrackBar1.Position := sSpinEdit2.Value;
    Visible := True;
  end;
end;

procedure TUI_ConfirmDocument_frm.Freedomimage;
begin

end;

procedure TUI_ConfirmDocument_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  fitScreen;
end;

procedure TUI_ConfirmDocument_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  fitWidth;
end;

procedure TUI_ConfirmDocument_frm.ReadFielList;
begin
  with qryFileList do
  begin
    Close;
    Open;
  end;

end;

procedure TUI_ConfirmDocument_frm.LoadImage;
var
  uIMG : TGraphic;
begin
  try
    Case TIMG_TYPE(qryFileList.FieldByName('IMG_TYPE').AsInteger) of
      itBMP :
      begin
        uIMG := TBitmap.Create;
        TBitmap(uIMG).PixelFormat := pf32bit;
      end;
      itJPG :;
      itPNG :;
    end;


    uIMG.Assign(TBlobField(qryFileList.FieldByName('IMG_1')));

    sImage1.Picture.Graphic.Assign(uIMG);
    FOriginWidth  := sImage1.Picture.Bitmap.Width;
    FOriginHeight := sImage1.Picture.Bitmap.Height;
    FRate := FOriginHeight / FOriginWidth;

    fitWidth;

  finally
    uIMG.Free;
  end;
end;

procedure TUI_ConfirmDocument_frm.qryFileListAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  LoadImage;
end;

procedure TUI_ConfirmDocument_frm.sButton6Click(Sender: TObject);
begin
  inherited;
  fitOriginal;
end;

procedure TUI_ConfirmDocument_frm.sButton7Click(Sender: TObject);
begin
  inherited;
  fitWidth;
end;

procedure TUI_ConfirmDocument_frm.fitOriginal;
begin
  with sImage1 do
  begin
    Visible := False;
    Left := 0;
    Top := 0;
    AutoSize := true;
    Stretch := False;
    sSpinEdit2.Value := 100;
    sTrackBar1.Position := sSpinEdit2.Value;    
    Visible := True;
  end;
end;

procedure TUI_ConfirmDocument_frm.sButton5Click(Sender: TObject);
begin
  inherited;
  fitScreen;
end;

procedure TUI_ConfirmDocument_frm.sImage1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if Button = mbLeft then
//  begin
//    OldMousePos := Point(X, Y);
//    MouseDragging := True;
//    Screen.Cursor := crSizeAll;
//  end
//  else ReleaseCapture;
end;

procedure TUI_ConfirmDocument_frm.sImage1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if MouseDragging then
//  begin
//    IF (OldMousePos.X - X) > 0 Then
//      sScrollBox2.HorzScrollBar.Position := sScrollBox2.HorzScrollBar.Position + MoveDistance
//    else
//      sScrollBox2.HorzScrollBar.Position := sScrollBox2.HorzScrollBar.Position - MoveDistance;
//
//    IF (OldMousePos.Y - Y) > 0 Then
//      sScrollBox2.VertScrollBar.Position := sScrollBox2.VertScrollBar.Position + MoveDistance
//    else
//      sScrollBox2.VertScrollBar.Position := sScrollBox2.VertScrollBar.Position - MoveDistance;
//
////    sImage1.Repaint;
//  end;
end;

procedure TUI_ConfirmDocument_frm.sImage1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  if Button = mbLeft then
//  begin
//    MouseDragging := False;
//    Screen.Cursor := crDefault;
//  end;
end;

procedure TUI_ConfirmDocument_frm.sSpinEdit2Change(Sender: TObject);
begin
  inherited;
  IF sSpinEdit2.Focused Then
  begin
    fitZoom;
  end;
end;

procedure TUI_ConfirmDocument_frm.fitZoom;
begin
  with sImage1 do
  begin
//    Visible := False;
    AutoSize := False;
    Center := True;
    Proportional := False;
    Stretch := True;
    Width := Round(FOriginWidth * (sSpinEdit2.Value / 100));
    Height := Round(FOriginHeight * (sSpinEdit2.Value / 100));

//    sSpinEdit2.Value := Round((Width / FOriginWidth)*100);

//    Visible := True;
  end;
end;

procedure TUI_ConfirmDocument_frm.sTrackBar1Change(Sender: TObject);
begin
  inherited;
  sSpinEdit2.Value := sTrackBar1.Position;
  fitZoom;
end;

end.
