unit UI_CommonCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, StdCtrls, sButton, sEdit, ExtCtrls, sPanel,
  sSkinProvider, DB, ADODB, Grids, DBGrids, acDBGrid, sComboBox, sLabel;

type
  TUI_COMMONCD_frm = class(TParentForm_frm)
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    qryList: TADOQuery;
    dsList: TDataSource;
    qryDetail: TADOQuery;
    dsDetail: TDataSource;
    qryDetailCD_DEF: TStringField;
    qryDetailCD_SEQ: TIntegerField;
    qryDetailUSE_CD: TStringField;
    qryDetailUSE_CD_NM: TStringField;
    qryDetailETC_TXT: TStringField;
    qryDetailETC_CUR: TBCDField;
    qryDetailUSED: TBooleanField;
    sPanel2: TsPanel;
    sDBGrid2: TsDBGrid;
    sPanel5: TsPanel;
    sDBGrid1: TsDBGrid;
    sPanel6: TsPanel;
    edt_FindText: TsEdit;
    sButton1: TsButton;
    sComboBox1: TsComboBox;
    sButton3: TsButton;
    sButton4: TsButton;
    sButton5: TsButton;
    qryListCD_DEF: TStringField;
    qryListCD_DEF_NM: TStringField;
    qryListETC_TXT: TStringField;
    qryListETC_CUR: TBCDField;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    qryDetailUSE_SEQ: TLargeintField;
    procedure sButton2Click(Sender: TObject);
    procedure qryDetailUSEDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryListAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryDetailAfterOpen(DataSet: TDataSet);
    procedure sButton1Click(Sender: TObject);
    procedure edt_FindTextKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sDBGrid2DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ReadList;
    procedure ReadDetail;
  public
    { Public declarations }
  end;

var
  UI_COMMONCD_frm: TUI_COMMONCD_frm;

implementation

uses
  dmConn, dlg_AddCode;

{$R *.dfm}

procedure TUI_COMMONCD_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_COMMONCD_frm.qryDetailUSEDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  IF Sender.AsBoolean Then
    Text := 'Y'
  else
    Text := '';
end;

procedure TUI_COMMONCD_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_COMMONCD_frm := nil;
end;

procedure TUI_COMMONCD_frm.ReadList;
begin
  qryList.Close;
  qryList.Open;
end;

procedure TUI_COMMONCD_frm.ReadDetail;
begin
  with qryDetail do
  begin
    Close;
    SQL.Text := 'SELECT CD_DEF, CD_SEQ, USE_CD, ROW_NUMBER() OVER(ORDER BY USE_CD) as USE_SEQ, USE_CD_NM, ETC_TXT, ETC_CUR, USED FROM COMCD_D WHERE CD_DEF = '+QuotedStr(qryListCD_DEF.AsString);
    IF Trim(edt_FindText.Text) <> '' Then
    begin
      Case sComboBox1.ItemIndex of
        0: SQL.Add('AND USE_CD LIKE '+QuotedStr('%'+Trim(edt_FindText.Text)+'%'));
        1: SQL.Add('AND USE_CD_NM LIKE '+QuotedStr('%'+Trim(edt_FindText.Text)+'%'));
      end;
    end;
    SQL.Add('ORDER BY USE_CD');
    Open;
  end;
end;

procedure TUI_COMMONCD_frm.qryListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ReadDetail;
end;

procedure TUI_COMMONCD_frm.FormShow(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_COMMONCD_frm.qryDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  sLabel1.Caption := Format('데이터( %s 건)',[Formatfloat('#,0',DataSet.RecordCount)]);
end;

procedure TUI_COMMONCD_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  ReadDetail
end;

procedure TUI_COMMONCD_frm.edt_FindTextKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN Then ReadDetail;
end;

procedure TUI_COMMONCD_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  IF qryList.RecordCount = 0 Then Exit;

  dlg_AddCode_frm := Tdlg_AddCode_frm.Create(Self);
  try
    If dlg_AddCode_frm.WriteCode(qryDetail.Fields) = mrOK Then
    begin
      ReadDetail;
      qryDetail.Locate('CD_DEF;CD_SEQ', VarArrayOf([dlg_AddCode_frm.Returnvalue.CD_DEF, dlg_AddCode_frm.Returnvalue.CD_SEQ]), []);
    end;
  finally
    FreeAndNil(dlg_AddCode_frm);
  end;
end;

procedure TUI_COMMONCD_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  dlg_AddCode_frm := Tdlg_AddCode_frm.Create(Self);
  try
    If dlg_AddCode_frm.EditCode(qryDetail.Fields) = mrOK Then
    begin
      ReadDetail;
      qryDetail.Locate('CD_DEF;CD_SEQ', VarArrayOf([dlg_AddCode_frm.Returnvalue.CD_DEF, dlg_AddCode_frm.Returnvalue.CD_SEQ]), []);
    end;
  finally
    FreeAndNil(dlg_AddCode_frm);
  end;
end;

procedure TUI_COMMONCD_frm.sButton5Click(Sender: TObject);
var
  nIDX : integer;
begin
  inherited;
  dlg_AddCode_frm := Tdlg_AddCode_frm.Create(Self);
  try
    IF dlg_AddCode_frm.DelCode(qryDetailCD_DEF.AsString, qryDetailCD_SEQ.AsInteger) then
    begin
      nIDX := qryDetail.RecNo;
      ReadDetail;
      IF qryDetail.RecordCount > 2 Then
        qryDetail.MoveBy(nIDX-1);
    end;
  finally
    FreeAndNil(dlg_AddCode_frm);
  end;
end;

procedure TUI_COMMONCD_frm.sDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  IF (Sender as TsDBGrid).ScreenToClient(Mouse.CursorPos).Y > 17 Then
  begin
    sButton4Click(sButton4);
  end;
end;

procedure TUI_COMMONCD_frm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF Shift = [ssCtrl] Then
  begin
    Case Key of
      49 : sComboBox1.ItemIndex := 0;
      50 : sComboBox1.ItemIndex := 1;
      70 : edt_FindText.SetFocus;

    end;
  end;
end;

end.
