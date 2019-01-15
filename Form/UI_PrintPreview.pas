unit UI_PrintPreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, QRPrntr, ExtCtrls, sSplitter, sPanel,
  Buttons, sSpeedButton, StdCtrls, sLabel, sEdit, sButton, QuickRpt, QRCtrls,
  ComCtrls, sTrackBar;

type
  TUI_PrintPreview_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sSplitter1: TsSplitter;
    sButton1: TsButton;
    edt_CurrenctPage: TsEdit;
    edt_TotalPage: TsEdit;
    sButton2: TsButton;
    sButton3: TsButton;
    sLabel1: TsLabel;
    sSpeedButton1: TsSpeedButton;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton6: TsButton;
    sButton7: TsButton;
    sSpeedButton2: TsSpeedButton;
    sLabel3: TsLabel;
    QRPreview1: TQRPreview;
    procedure sButton6Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure edt_CurrenctPageChange(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
    FQR_REP : TQuickRep;

    OldMousePos: TPoint;
    MouseDragging: Boolean;    
  public
    { Public declarations }
    procedure Preview;
    property Report:TQuickRep read FQR_REP write FQR_REP;
  end;

var
  UI_PrintPreview_frm: TUI_PrintPreview_frm;

implementation

uses
  dmIcon;

{$R *.dfm}

procedure TUI_PrintPreview_frm.sButton6Click(Sender: TObject);
begin
  inherited;
  case (Sender as TsButton).Tag of
    0: QRPreview1.ZoomToWidth;
    1: QRPreview1.ZoomToFit;
  end;
//  edt_ZoomRate.Text := IntToStr(QRPreview1.Zoom);
end;

procedure TUI_PrintPreview_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  IF QRPreview1.PageNumber > 1 Then
    QRPreview1.PageNumber := QRPreview1.PageNumber-1;

  edt_CurrenctPage.Text := IntToStr(QRPreview1.PageNumber);
end;

procedure TUI_PrintPreview_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  IF QRPreview1.PageNumber < FQR_REP.QRPrinter.PageCount Then
    QRPreview1.PageNumber := QRPreview1.PageNumber+1;

  edt_CurrenctPage.Text := IntToStr(QRPreview1.PageNumber);
end;

procedure TUI_PrintPreview_frm.Preview;
begin
  IF FQR_REP = nil Then
    raise Exception.Create('출력물을 연결하세요');

  FQR_REP.Prepare;
  edt_CurrenctPage.Text := '1';
  edt_TotalPage.Text := IntToStr(FQR_REP.QRPrinter.PageCount);

  QRPreview1.QRPrinter := FQR_REP.QRPrinter;

  sButton6Click(sButton6);

  Self.ShowModal;
end;

procedure TUI_PrintPreview_frm.FormMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  QRPreview1.Zoom := QRPreview1.Zoom + (WheelDelta div 30);
end;

procedure TUI_PrintPreview_frm.edt_CurrenctPageChange(Sender: TObject);
begin
  inherited;
  IF Trim( edt_CurrenctPage.Text ) = '' Then Exit;

  IF edt_CurrenctPage.Focused Then
  begin
    IF StrToInt(edt_CurrenctPage.Text) <= FQR_REP.QRPrinter.PageCount Then
    begin
      QRPreview1.PageNumber := StrToInt(edt_CurrenctPage.Text);
    end;
  end;
end;

procedure TUI_PrintPreview_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  FQR_REP.PrinterSetup;

  IF FQR_REP.Tag = 0 Then
    FQR_REP.Print;
end;

Const
  PDF_PRINTERNAME = 'CutePDF Writer';
procedure TUI_PrintPreview_frm.sButton5Click(Sender: TObject);
var
  i : Integer;
  CHK_IDX : Integer;
begin
  inherited;
  CHK_IDX := -1;

  for i := 0 to FQR_REP.QRPrinter.Printers.Count -1 do
  begin
    IF CompareText( FQR_REP.QRPrinter.Printers.Strings[i] , PDF_PRINTERNAME ) = 0 Then
    begin
      CHK_IDX := i;
      FQR_REP.QRPrinter.PrinterIndex := CHK_IDX;
      FQR_REP.QRPrinter.Print;
      Break;
    end;
  end;

  IF i = -1 Then
    MessageBox(0,PChar(PDF_PRINTERNAME+'가 설치되어있지 않습니다. 개발사에 문의해주세요'),'PDF변환 실패',MB_OK+MB_ICONERROR)

//  KISPDF1.ExportQRPDF();
end;

procedure TUI_PrintPreview_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
