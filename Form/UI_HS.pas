unit UI_HS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, StdCtrls, Mask, sMaskEdit, ExtCtrls, sPanel,
  sSkinProvider, Grids, DBGrids, acDBGrid, sSplitter, dbcgrids,
  acDBCtrlGrid, DB, ADODB, sButton, sCheckBox;

type
  TUI_HS_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sMaskEdit1: TsMaskEdit;
    sSplitter1: TsSplitter;
    sDBGrid1: TsDBGrid;
    qryHS: TADOQuery;
    dsHS: TDataSource;
    qryHSHS_CODE: TStringField;
    qryHSHS_NAME: TStringField;
    qryHSHS_NAME_ENG: TStringField;
    qryHSUSED: TBooleanField;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sButton4: TsButton;
    sButton5: TsButton;
    sCheckBox1: TsCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sMaskEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryHSUSEDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sButton3Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton4Click(Sender: TObject);
  private
    { Private declarations }
    FSQL : String;
    procedure ReadList;
    procedure RefreshList(KeyField:string='';KeyValue : string=''); overload;
    procedure RefreshList(RecNo : Integer = 0); overload;
    procedure DeleteData;
  public
    { Public declarations }
  end;

var
  UI_HS_frm: TUI_HS_frm;

implementation

uses dmConn, dmIcon, Dialog_HS, CommonLib;

{$R *.dfm}

{ TUI_HS_frm }

procedure TUI_HS_frm.ReadList;
begin
  with qryHS do
  begin
    Close;
    SQL.Text := FSQL;
    SQL.Add('WHERE USED = '+Bool2StrKIS(sCheckBox1.Checked));
    if Trim(sMaskEdit1.Text) <> '' Then
      SQL.Add('AND HS_CODE LIKE '+QuotedStr(sMaskEdit1.Text+'%'));
    SQL.Add('ORDER BY HS_CODE');
    Open;
  end;
end;

procedure TUI_HS_frm.FormCreate(Sender: TObject);
begin
  inherited;
  FSQL := qryHS.SQL.Text;
end;

procedure TUI_HS_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_HS_frm.sMaskEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF KEY = VK_RETURN THEN sButton1Click(sButton1);
  IF ActiveControl is TsMaskEdit Then
  begin
    IF Key = VK_DOWN THEN sDBGrid1.SetFocus;
  end;
end;

procedure TUI_HS_frm.FormShow(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_HS_frm.sDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF Key = VK_UP Then
  begin
    IF qryHS.Bof Then sMaskEdit1.SetFocus;
  end;
end;

procedure TUI_HS_frm.sDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  with Sender as TsDBGrid do
  begin
    if (gdSelected in State) or (SelectedRows.CurrentRowSelected) then begin
      Canvas.Brush.Color := $0054CEFC;
      Canvas.Font.Color := clBlack;
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TUI_HS_frm.qryHSUSEDGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  IF Sender.AsBoolean Then Text := 'Y'
  else Text := '';
end;

procedure TUI_HS_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  Dialog_HS_frm := TDialog_HS_frm.Create(Self);
  try
    IF Dialog_HS_frm.NewHs = mrOK Then
    begin
      RefreshList('HS_CODE',Dialog_HS_frm.sMaskEdit1.Text);
    end;
  finally
    FreeAndNil(Dialog_HS_frm);
  end;
end;

procedure TUI_HS_frm.sCheckBox1Click(Sender: TObject);
begin
  inherited;
  Readlist;
end;

procedure TUI_HS_frm.DeleteData;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM HS WHERE HS_CODE = '+QuotedStr(qryHSHS_CODE.AsString);
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_HS_frm.sButton5Click(Sender: TObject);
var
  index : integer;
begin
  inherited;
  IF MessageBox(Self.Handle,
                PChar('선택하신 HS부호를 삭제하시겠습니까?'#13#10+
                qryHSHS_CODE.AsString+#13#10+
                qryHSHS_NAME.AsString),'HS부호 삭제확인',MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
  begin
    index := qryHS.RecNo;
    DeleteData;
    RefreshList(index);
  end;
end;

procedure TUI_HS_frm.RefreshList(KeyField:string='';KeyValue : string='');
begin
  qryHS.Close;
  qryHS.Open;
  IF Trim(KeyField) <> '' Then
  begin
    qryHS.Locate(KeyField,KeyValue,[]);
  end;
end;

procedure TUI_HS_frm.RefreshList(RecNo: Integer);
begin
  qryHS.Close;
  qryHS.Open;
  IF RecNo > 1 Then
  begin
    qryHS.MoveBy(RecNo-1);
  end;
end;

procedure TUI_HS_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_HS_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_HS_frm := nil;
end;

procedure TUI_HS_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  Dialog_HS_frm := TDialog_HS_frm.Create(Self);
  try
    IF Dialog_HS_frm.EditHs(qryHS.Fields) = mrOK Then
    begin
      RefreshList('HS_CODE',Dialog_HS_frm.sMaskEdit1.Text);
    end;
  finally
    FreeAndNil(Dialog_HS_frm);
  end;
end;

end.
