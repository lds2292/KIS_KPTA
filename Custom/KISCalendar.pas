unit KISCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, sBevel, sSkinProvider, StdCtrls, sLabel, sPanel, DateUtils,
  sComboBox,StrUtils;

type
  TKISCalendar_frm = class(TForm)
    sSkinProvider1: TsSkinProvider;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    StringGrid1: TStringGrid;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sLabel1: TsLabel;
    sPanel6: TsPanel;
    sComboBox1: TsComboBox;
    sComboBox2: TsComboBox;
    sLabel2: TsLabel;
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sPanel3Click(Sender: TObject);
    procedure sComboBox1Select(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure sLabel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sLabel2MouseLeave(Sender: TObject);
    procedure sLabel2Click(Sender: TObject);
    procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FBasicDate : TDateTime;
    FSelectDate : TDateTime;
    StartDateTime : TDateTime;
    EndDateTime : TDateTime;
    FDateArray : array [0..41] of TDateTime;
    DayOrigin : Integer;
    LastArrayIDX : integer;
    LastDay : Integer;
    NextMonthStartWeek : Integer;
    procedure InitTitle;
    procedure getDayArray;
    procedure DrawCalendar;
    procedure SetToday;
    procedure SetSelectDay(KIS_DATE : TDateTime);
    procedure getDateTime(ACol,ARow : Integer);
  public
    { Public declarations }
    function OpenCalendar(DefaultDate : TDateTime):TDateTime;
    property SelectDate:TDateTime  read FSelectDate;
  end;

var
  KISCalendar_frm: TKISCalendar_frm;
Const
  DayName : array [0..6] of string = ('일','월','화','수','목','금','토');

implementation

{$R *.dfm}

{ TKISCalendar_frm }

procedure TKISCalendar_frm.InitTitle;
var
  i : integer;
begin
  with StringGrid1 do
  begin
    for i := 0 to 6 do
    begin
      Cells[i,0] := DayName[i];
    end;
  end;
end;

procedure TKISCalendar_frm.FormShow(Sender: TObject);
begin
  InitTitle;
  getDayArray;
  DrawCalendar;
end;

procedure TKISCalendar_frm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S : String;
  SavedAlign : Word;
  CurrIDX : integer;
begin

//  IF ARow = 0 Then
//  begin
  IF ACol = 0 Then
    StringGrid1.Canvas.Font.Color := clRed
  else
  IF ACol = 6 Then
    StringGrid1.Canvas.Font.Color := clBlue
  else
    StringGrid1.Canvas.Font.Color := clBlack;
//  end;

  IF ARow = 1 Then
  begin
    IF StrToIntDef(StringGrid1.Cells[ACol,ARow],-1) > StrToIntDef(StringGrid1.Cells[6,ARow],-1)  Then
      StringGrid1.Canvas.Font.Color := $00B0B0B0;
  end;

  CurrIDX := ((ARow-1)*7) + ACol;

  IF LastArrayIDX < CurrIDX Then
    StringGrid1.Canvas.Font.Color := $00B0B0B0;

  IF FormatDateTime('YYYYMMDD',Now) = FormatDateTime('YYYYMMDD',FDateArray[CurrIDX]) Then
    StringGrid1.Canvas.Font.Style := [fsBold];

  IF gdFixed in State Then
    StringGrid1.Canvas.Brush.Color := clBtnFace
  else
  IF (ARow = StringGrid1.Row) and (ACol = StringGrid1.Col) Then
    StringGrid1.Canvas.Brush.Color := clYellow
  else
  IF FormatDateTime('YYYYMMDD',Now) = FormatDateTime('YYYYMMDD',FDateArray[CurrIDX]) Then
    StringGrid1.Canvas.Brush.Color := $00FFE6CC  
  else
    StringGrid1.Canvas.Brush.Color := clWhite;

  StringGrid1.Canvas.FillRect(Rect);

  S := StringGrid1.Cells[ACol,ARow];
  SavedAlign := SetTextAlign(StringGrid1.Canvas.Handle,TA_CENTER);
  StringGrid1.Canvas.TextRect(Rect,Rect.Left+(Rect.Right-Rect.Left) div 2, Rect.Top + 5, S);
  SetTextAlign(StringGrid1.Canvas.Handle,SavedAlign);
end;

procedure TKISCalendar_frm.getDayArray;
var
  BeforeMonthlastDay : TDateTime;
  NextMonthFirstDay : TDateTime;
  i,Dayinc : integer;
begin
//------------------------------------------------------------------------------
// 현재일자의 요일 구하기
//------------------------------------------------------------------------------
  StartDateTime := StartOfTheMonth(FBasicDate);
  DayOrigin := DayOfTheWeek(StartDateTime);
  LastDay := DayOf(EndOfTheMonth(FBasicDate));

  IF DayOrigin = 7 Then DayOrigin := 0;

  Dayinc := 0;

  for i := DayOrigin to LastDay+Dayorigin-1 do
  begin
    FDateArray[i] := IncDay(StartDateTime,Dayinc);
    inc(Dayinc);
    LastArrayIDX := i;
  end;

//------------------------------------------------------------------------------
// 이전월의 마지막일자 구하기
//------------------------------------------------------------------------------
  BeforeMonthlastDay := EndOfTheMonth( IncMonth(FBasicDate,-1) );
  BeforeMonthlastDay := IncDay(BeforeMonthlastDay,(-1)*(DayOrigin-1));
  for i := 0 to DayOrigin-1 do
  begin
    FDateArray[i] := IncDay(BeforeMonthlastDay,i);
  end;

//------------------------------------------------------------------------------
// 다음월구하기
//------------------------------------------------------------------------------
  Dayinc := 0;
  NextMonthFirstDay := StartOfTheMonth( IncMonth(FBasicDate,1) );
  for i := LastArrayIDX+1 to 41 do
  begin
    FDateArray[i] := IncDay(NextMonthFirstDay,Dayinc);
    Inc(Dayinc);
  end;
end;

Const
  FirstYear = 1980;
  AddYear = 20;
procedure TKISCalendar_frm.DrawCalendar;
var
  i : integer;
  ARow,ACol : Integer;
begin
  ARow := 0;
  ACol := 0;
  
  for i := 0 to 41 do
  begin
    ARow := i div 7;
    ACol := i mod 7;

    IF FDateArray[i] <> 0 Then
      StringGrid1.Cells[ACol,ARow+1] := FormatDateTime('d',FDateArray[i]);

  end;

//------------------------------------------------------------------------------
// 오늘날짜 셋팅 및 콤보박스 셋팅
//------------------------------------------------------------------------------
  sComboBox1.Clear;
  for i := FirstYear to YearOf(FBasicDate)+AddYear do
  begin
    sComboBox1.items.Add(Format('%d년',[i]));
  end;
  sComboBox1.ItemIndex := sComboBox1.IndexOf(Format('%d년',[YearOf(FBasicDate)]));

  sComboBox2.Clear;
  for i := 1 to 12 do
  begin
    sComboBox2.Items.Add(Format('%d월',[i]));
  end;
  sComboBox2.ItemIndex := sComboBox2.IndexOf(Format('%d월',[MonthOf(FBasicDate)]));

//  sComboBox3.Clear;
//  for i := 1 to DayOf(EndOfTheMonth(FBasicDate)) do
//  begin
//    sComboBox3.Items.Add(Format('%d',[i]));
//  end;
//  sComboBox3.ItemIndex := sComboBox3.IndexOf(Format('%d',[DayOf(FBasicDate)]));
  getDateTime(StringGrid1.Col,StringGrid1.Row);
end;

procedure TKISCalendar_frm.FormCreate(Sender: TObject);
begin
  FBasicDate := EncodeDate(1900,1,1);
//  FBasicDate := EncodeDate(2016,4,1);
end;

procedure TKISCalendar_frm.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  getDateTime(ACol,ARow);
end;

procedure TKISCalendar_frm.sPanel3Click(Sender: TObject);
begin
  FBasicDate := IncMonth(FBasicDate,(Sender as TsPanel).Tag);
  getDayArray;
  DrawCalendar;
end;

procedure TKISCalendar_frm.getDateTime(ACol,ARow : Integer);
var
  IDX : integer;
begin
  IDX := ((ARow-1)*7)+ACol;
  FSelectDate := FDatearray[IDX];
  sLabel1.Caption := FormatDateTime('YYYY"년" MM"월" dd"일" ddd"요일"',FSelectDate);
end;

procedure TKISCalendar_frm.sComboBox1Select(Sender: TObject);
var
  nYear : integer;
  nMon : integer;
begin
  nYear := StrToIntDef( LeftStr(sCombobox1.Text,4) ,Yearof(Now));
  nMon := StrToIntDef( AnsiReplaceText( sComboBox2.Text , '월',''),1) ;
  FBasicDate := EncodeDate(nYear,nMon,1);
  getDayArray;
  DrawCalendar;
end;

procedure TKISCalendar_frm.StringGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TKISCalendar_frm.sLabel2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TsLabel).Font.Style := [fsUnderline];
end;

procedure TKISCalendar_frm.sLabel2MouseLeave(Sender: TObject);
begin
  (Sender as TsLabel).Font.Style := [];
end;

procedure TKISCalendar_frm.SetToday;
begin
  SetSelectDay(Now);
end;

procedure TKISCalendar_frm.sLabel2Click(Sender: TObject);
begin
  SetToday;
end;

procedure TKISCalendar_frm.SetSelectDay(KIS_DATE : TDateTime);
var
  i : integer;
begin
  FBasicDate := KIS_DATE;
  getDayArray;
  DrawCalendar;

  for i := 0 to 41 do
  begin
    IF CompareDate( FDateArray[i] , FBasicDate ) = 0 Then
    begin
      StringGrid1.Col := i mod 7;
      StringGrid1.Row := (i div 7)+1;
    end;
  end;
end;

function TKISCalendar_frm.OpenCalendar(DefaultDate : TDateTime):TDateTime;
begin
  SetSelectDay(DefaultDate);
  if Self.ShowModal = mrOK Then
    Result := FSelectDate
  else
    Result := DefaultDate;
end;

procedure TKISCalendar_frm.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_RETURN Then
  begin
    ModalResult := mrOk;
  end;
end;

end.
