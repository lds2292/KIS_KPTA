unit UI_KPTA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, StdCtrls, sButton, sLabel, ExtCtrls,
  sPanel, Buttons, sSpeedButton, Mask, DBCtrls, sDBEdit, Grids, DBGrids,
  acDBGrid, sSplitter, sEdit, sComboBox, sMaskEdit, sDBMemo, sMemo, StrUtils, Clipbrd, DateUtils,
  sCustomComboEdit, sToolEdit, ComCtrls, sPageControl;

type
  TUI_KPTA_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sButton3: TsButton;
    sSpeedButton18: TsSpeedButton;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton4: TsButton;
    sSpeedButton2: TsSpeedButton;
    sSplitter1: TsSplitter;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sPanel5: TsPanel;
    sPanel6: TsPanel;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sPanel9: TsPanel;
    sPanel10: TsPanel;
    sPanel11: TsPanel;
    sPanel12: TsPanel;
    sLabel3: TsLabel;
    sSplitter3: TsSplitter;
    sDBEdit8: TsDBEdit;
    sDBEdit7: TsDBEdit;
    sDBEdit4: TsDBEdit;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    sDBEdit1: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sDBEdit2: TsDBEdit;
    sDBEdit9: TsDBEdit;
    sPanel13: TsPanel;
    sDBGrid1: TsDBGrid;
    sPanel14: TsPanel;
    sButton5: TsButton;
    sButton6: TsButton;
    sMaskEdit1: TsMaskEdit;
    sPanel15: TsPanel;
    sPanel4: TsPanel;
    sLabel2: TsLabel;
    sDBEdit10: TsDBEdit;
    sPanel16: TsPanel;
    sDBEdit11: TsDBEdit;
    sDBEdit12: TsDBEdit;
    sPanel17: TsPanel;
    sDBEdit13: TsDBEdit;
    sDBEdit14: TsDBEdit;
    sPanel18: TsPanel;
    sDBEdit15: TsDBEdit;
    sDBEdit16: TsDBEdit;
    sPanel19: TsPanel;
    sDBEdit17: TsDBEdit;
    sPanel20: TsPanel;
    sLabel4: TsLabel;
    sSplitter2: TsSplitter;
    sDBMemo1: TsDBMemo;
    sSplitter4: TsSplitter;
    sPanel21: TsPanel;
    sDBGrid2: TsDBGrid;
    sButton11: TsButton;
    sButton7: TsButton;
    sButton8: TsButton;
    sButton12: TsButton;
    sSpeedButton1: TsSpeedButton;
    sButton13: TsButton;
    sMaskEdit2: TsMaskEdit;
    sButton14: TsButton;
    sPanel23: TsPanel;
    sButton15: TsButton;
    sSpeedButton3: TsSpeedButton;
    sComboBox1: TsComboBox;
    sEdit1: TsEdit;
    sButton16: TsButton;
    sButton17: TsButton;
    sSpeedButton4: TsSpeedButton;
    sButton18: TsButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sDBGrid3: TsDBGrid;
    sTabSheet2: TsTabSheet;
    sDBGrid4: TsDBGrid;
    sSpeedButton5: TsSpeedButton;
    sButton9: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sEdit3Exit(Sender: TObject);
    procedure sEdit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton2Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sMaskEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton8Click(Sender: TObject);
    procedure sDBGrid1ScrollData(Sender: TObject);
    procedure sMaskEdit1DblClick(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure sComboBox2Select(Sender: TObject);
    procedure sButton15Click(Sender: TObject);
    procedure sButton14Click(Sender: TObject);
    procedure sComboBox1Select(Sender: TObject);
    procedure sButton16Click(Sender: TObject);
    procedure sButton18Click(Sender: TObject);
    procedure sEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton9Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FSQL : String;
    procedure ReadList;
    procedure ReadyDocument(isReady : Boolean=True);
  public
    { Public declarations }
  end;

var
  UI_KPTA_frm: TUI_KPTA_frm;

implementation

uses dmConn, UI_KPTA_DocNormal, CommonDef, CommonVar, dmIcon, ADODB,
  CommonLib, DB, CommonMSG, Dialog_CopyReport, UI_ReadyDocument,
  Dialog_BetweenList, KISCalendar, QR_KPTA_NORMAL_PRN, QuickRpt, UI_PrintPreview, QR_KPTA_NORMAL_Complete_PRN, KISCalendarV2, UI_RecvDocument, UI_QuickMenu, Dialog_ProcessView;

{$R *.dfm}

procedure TUI_KPTA_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  UI_KPTA_DocNormal_frm := TUI_KPTA_DocNormal_frm.Create(Self);
  try
    //신규,수정 0, 뷰어 1
    UI_KPTA_DocNormal_frm.Tag := 0;
    IF UI_KPTA_DocNormal_frm.NewDocument = mrOk then
    begin
//      sButton5Click(sButton5);
      sButton6Click(sButton6);
      sDBGrid1.DataSource.DataSet.Locate('DOC_NO',UI_KPTA_DocNormal_frm.DocNo,[]);
    end;
  finally
    Freeandnil(UI_KPTA_DocNormal_frm);
  end;
end;

procedure TUI_KPTA_frm.FormShow(Sender: TObject);
begin
  inherited;
  sMaskEdit1.Text := FormatDateTime('YYYY-MM-DD', StartOfTheMonth(Now));
  sMaskEdit2.Text := FormatDateTime('YYYY-MM-DD',Now);
//  sMaskEdit1.Text := '2016-11-18';
  ReadList;
//  DataModule_Conn.qryStandard1.Open;
  sDBGrid1ScrollData(sDBGrid1);
  sPageControl1.ActivePageIndex := 0;
end;

procedure TUI_KPTA_frm.FormCreate(Sender: TObject);
begin
  inherited;

  FSQL := DataModule_Conn.qryStandard1.SQL.Text;
  IF not Assigned(UI_QuickMenu_frm) Then
  begin
    Left := 0;
    Top := 0;
  end
  else
  begin
    Left := UI_QuickMenu_frm.width;
    Top := 0;
  end;
end;

procedure TUI_KPTA_frm.ReadList;
begin
  with DataModule_Conn.qryStandard1 do
  begin
    Close;
    SQL.Text := DataModule_Conn.qrySTD1Copy.SQL.Text;

    IF sEdit1.Enabled Then
    begin
      case sComboBox1.ItemIndex of
        1: //수출자
          SQL.Add('AND EXPORT_SANGHO LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        2: //품목코드
          SQL.Add('AND DOC_NO IN (SELECT DISTINCT DOC_NO FROM STANDARD2 WHERE GOODS_CODE LIKE '+QuotedStr('%'+sEdit1.Text+'%')+')');
        3: //거래품명
          SQL.Add('AND DOC_NO IN (SELECT DISTINCT DOC_NO FROM STANDARD2 WHERE TRADE_NAME LIKE '+QuotedStr('%'+sEdit1.Text+'%')+')');
        4: //제출번호
          SQL.Add('AND DOC_NO LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
      end;
    end;

    SQL.Add('AND REQUEST_DATE BETWEEN '+QuotedStr(sMaskEdit1.Text)+' AND '+QuotedStr(sMaskEdit2.Text));
    SQL.Add('ORDER BY REQUEST_DATE DESC');

    {$IFDEF DEBUG}
    ClipBoard.AsText := SQL.Text;
    {$ENDIF}
    Open;
  end;

  sDBGrid1ScrollData(sDBGrid1);

end;

procedure TUI_KPTA_frm.sButton5Click(Sender: TObject);
begin
  inherited;
  DataModule_Conn.qryStandard1.Close;
  DataModule_Conn.qryStandard1.Open;
end;

procedure TUI_KPTA_frm.sButton6Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_KPTA_frm.sEdit3Exit(Sender: TObject);
begin
  inherited;
//  IF Trim(sEdit3.Text) <> '' Then
//    sEdit3.Text := LoginData.sID + FormatFloat('00000',StrToInt(sEdit3.Text));
end;

procedure TUI_KPTA_frm.sEdit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN Then
  begin
    sEdit3Exit(Sender);
    ReadList;
  end;
end;

procedure TUI_KPTA_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  IF DataModule_Conn.qryStandard1.RecordCount = 0 Then Exit;

  UI_KPTA_DocNormal_frm := TUI_KPTA_DocNormal_frm.Create(Self);
  UI_KPTA_DocNormal_frm.Tag := 0;
  try
    IF DataModule_Conn.qryStandard1.FieldByName('isRECV').AsString = '승인' Then
    begin
      MessageBox(Self.Handle,MSG_ACCEPT_DOC_NO_EDIT+MSG_NOT_EDIT,'수정안내',MB_OK+MB_ICONINFORMATION);
      UI_KPTA_DocNormal_frm.Tag := 1;
      UI_KPTA_DocNormal_frm.ViewDocument;
    end
    else
//    IF (DataModule_Conn.qryStandard1.FieldByName('isRECV').AsString  = '접수') and (DataModule_Conn.qryStandard1.FieldByName('isResult').AsString <> 'D01') Then
    IF AnsiMatchText( DataModule_Conn.qryStandard1.FieldByName('isRECV').AsString , ['접수','서류제출']) and (DataModule_Conn.qryStandard1.FieldByName('isResult').AsString <> 'D01') Then
    begin
        MessageBox(Self.Handle,MSG_ACCEPT_DOC_NO_EDIT+MSG_NOT_EDIT,'수정안내',MB_OK+MB_ICONINFORMATION);
        UI_KPTA_DocNormal_frm.Tag := 1;
        UI_KPTA_DocNormal_frm.ViewDocument;
    end
    else
      UI_KPTA_DocNormal_frm.EditDocument;

    sButton5Click(sButton5);
    sDBGrid1.DataSource.DataSet.Locate('DOC_NO',UI_KPTA_DocNormal_frm.DocNo,[]);
  finally
    sDBGrid1ScrollData(sDBGrid1);
    Freeandnil(UI_KPTA_DocNormal_frm);
  end;
end;

procedure TUI_KPTA_frm.sButton4Click(Sender: TObject);
var
  sDocNo : String;
begin
  inherited;
  IF DataModule_Conn.qryStandard1.RecordCount = 0 Then Exit;

  IF AnsiMatchText( DataModule_Conn.qryStandard1.FieldByName('isRECV').AsString , ['접수','서류제출','승인','보완'] ) Then
  begin
    MessageBox(Self.Handle,MSG_ACCEPT_DOC_NO_EDIT+MSG_NOT_DELETE,'삭제실패',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;

  IF MessageBox(Self.Handle,MSG_DEL_STANDATD1,'보고서삭제',MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        sDocNo := DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString;

        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'UPDATE [STANDARD1] SET isDeleted = 1, DeleteDate = getdate() WHERE DOC_NO = '+QuotedStr(sDocNo);
        ExecSQL;        
//        SQL.Text := 'DELETE FROM [MAKE] WHERE DOC_NO = '+QuotedStr(sDocNo);
//        ExecSQL;
//        SQL.Text := 'DELETE FROM [CHECK] WHERE DOC_NO = '+QuotedStr(sDocNo);
//        ExecSQL;
//        SQL.Text := 'DELETE FROM [TAKEN] WHERE DOC_NO = '+QuotedStr(sDocNo);
//        ExecSQL;
//        SQL.Text := 'DELETE FROM [STANDARD2] WHERE DOC_NO = '+QuotedStr(sDocNo);
//        ExecSQL;
//        SQL.Text := 'DELETE FROM [STANDARD1] WHERE DOC_NO = '+QuotedStr(sDocNo);
//        ExecSQL;
      finally
        Close;
        Free;
        ReadList;
      end;
    end;
  end;
end;

procedure TUI_KPTA_frm.sButton11Click(Sender: TObject);
var
  DocumentNo, BaseDocNo : String;
  sMSG : String;
begin
  inherited;

  sMSG := Format('현재 선택된 [%s]의 내용을 복사합니다 계속 하시겠습니까?', [DataModule_Conn.qryStandard1DOC_NO.AsString]);

//  Dialog_CopyReport_frm := TDialog_CopyReport_frm.Create(self);
  try
//    IF Dialog_CopyReport_frm.ShowModal = mrOK Then
    IF MessageBox(Self.Handle, PChar(sMSG), '복사확인', MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
    begin
      //------------------------------------------------------------------------------
      // 원본 제출번호
      //------------------------------------------------------------------------------
//      BaseDocNo := Dialog_CopyReport_frm.qryList.FieldByname('DOC_NO').AsString;
      BaseDocNo := DataModule_Conn.qryStandard1DOC_NO.AsString;
      //------------------------------------------------------------------------------
      // 제출번호
      //------------------------------------------------------------------------------
      DocumentNo := ConfigData.SINGO_BUHO + FormatDateTime('yy',Now) + LoginData.sID + FormatFloat('000',DataModule_Conn.getDocNo('FR2'))+'AH';
      //------------------------------------------------------------------------------
      // 보고서 복사
      //------------------------------------------------------------------------------
      IF not DataModule_Conn.KisConn.InTransaction Then DataModule_Conn.KisConn.BeginTrans;

      try
        with DataModule_Conn.spCopyDocument do
        begin
          Close;
          Parameters.ParamByName('@DocNo').Value := DocumentNo;
          Parameters.ParamByName('@BaseDocNo').Value := BaseDocNo;
          Parameters.ParamByName('@UserID').Value := LoginData.sID;
          ExecProc;
//          DataModule_Conn.KisConn.CommitTrans;
        end;
      except
        on E:Exception do
        begin
          IF DataModule_Conn.KisConn.InTransaction Then DataModule_Conn.KisConn.RollbackTrans;
          MessageBox(Self.Handle,PChar(E.Message),'복사오류',MB_OK+MB_ICONERROR);
          abort;
        end;
      end;

      //------------------------------------------------------------------------------
      // 새로고침
      //------------------------------------------------------------------------------
//      sMaskEdit1.Text := FormatDateTime('YYYY-MM-DD',Now);
//      sMaskEdit2.Text := FormatDateTime('YYYY-MM-DD',EndOfTheMonth(Now));
      sMaskEdit1.Text := FormatDateTime('YYYY-MM-DD', StartOfTheMonth(Now));
      sMaskEdit2.Text := FormatDateTime('YYYY-MM-DD',Now);
      //------------------------------------------------------------------------------
      //필터처리 되어있었다면 초기화
      //------------------------------------------------------------------------------
      IF sComboBox1.ItemIndex <> 0 Then
      begin
        sCombobox1.ItemIndex := 0;
        sEdit1.Clear;
      end;

      ReadList;
      //------------------------------------------------------------------------------
      // 복사된 문서 수정작업
      //------------------------------------------------------------------------------
      DataModule_Conn.qryStandard1.Locate('DOC_NO',DocumentNo,[]);
      sButton2Click(sButton2);
    end;
  finally
//    FreeAndNil( Dialog_CopyReport_frm );
  end;
end;

procedure TUI_KPTA_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_KPTA_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_KPTA_frm := nil;
end;

procedure TUI_KPTA_frm.ReadyDocument(isReady: Boolean);
var
  sDocNo, sType : String;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      sDocNo := sDBGrid1.DataSource.DataSet.FieldByName('DOC_NO').AsString;
      sType := sDBGrid1.DataSource.DataSet.FieldByName('DOC_TYPE').AsString;

      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM READY_DOCUMENTS WHERE DOC_NO = '+QuotedStr(sDocNo)+' AND DOC_TYPE = '+QuotedStr(sType);
      ExecSQL;

      IF sDBGrid1.DataSource.DataSet.FieldByName('isSEND').AsString = '준비' Then
      begin
        SQL.Text := 'UPDATE STANDARD1 SET isSEND = '''' WHERE DOC_NO = '+QuotedStr(sDocNo)+' AND DOC_TYPE = '+QuotedStr(sType);
        ExecSQL;
      end
      else
      begin
        SQL.Text := 'INSERT INTO READY_DOCUMENTS(DOC_TYPE,DOC_NO,USER_ID) VALUES('+QuotedStr(sType)+','+QuotedStr(sDocNo)+','+QuotedStr(LoginData.sID)+')';
        ExecSQL;
        SQL.Text := 'UPDATE STANDARD1 SET isSEND = ''준비'' WHERE DOC_NO = '+QuotedStr(sDocNo)+' AND DOC_TYPE = '+QuotedStr(sType);
        ExecSQL;
      end;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_KPTA_frm.sButton7Click(Sender: TObject);
var
  sKey : String;
begin
  inherited;
//------------------------------------------------------------------------------
// 완료 접수 [Z01,FS7] 일경우에는 전송불가
//------------------------------------------------------------------------------
  IF (sDBGrid1.DataSource.DataSet.FieldByName('isSEND').AsString = '완료') AND
     (AnsiMatchText(sDBGrid1.DataSource.DataSet.FieldByName('isRECV').AsString , ['접수','승인'])) AND
     (AnsiMatchText(sDBGrid1.DataSource.DataSet.FieldByName('isRESULT').AsString ,['Z01','FS7','R01','C04']))
  Then
  begin
    MessageBox(Self.Handle,MSG_ALREADY_PERMIT+MSG_NOT_RESEND,'준비오류',MB_OK+MB_ICONERROR);
    Exit;
  end;

  Case AnsiIndexText( DataModule_Conn.qryStandard1.FieldByName('isSEND').AsString , ['임시','완료'] ) OF
    0:
    begin
      MessageBox(Self.Handle,MSG_READY_TEMP,'준비오류',MB_OK+MB_ICONERROR);
      Exit;
    end;
    1:
    begin
      IF MessageBox(Self.Handle,MSG_ALREADY_SEND,'준비오류',MB_OKCANCEL+MB_ICONERROR) <> ID_OK Then Exit;
    end;
  end;

  //------------------------------------------------------------------------------
  // 2017-04-05 이덕수
  // isFirstSend를 체크하여 이미 전송보낸 기록이 있다면 9(원본)으로 보내면 안됨
  //------------------------------------------------------------------------------
  IF (not sDBGrid1.DataSource.DataSet.FieldByName('isFirstSend').AsBoolean) AND (sDBGrid1.DataSource.DataSet.FieldByName('SEND_TYPE').AsString = '9') Then
  begin
    MessageBox(Self.Handle,PChar(MSG_NOT_CHANGE_SEND_TYPE_RESEND+#13#10'수정버튼으로 들어가 확인후 다시 저장해주세요'),'준비오류',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;


  sKey := sDBGrid1.DataSource.DataSet.FieldByName('DOC_NO').AsString;
  ReadyDocument();
  sButton5Click(sButton5);
  sDBGrid1.DataSource.DataSet.Locate('DOC_NO',sKey,[]);
  sDBGrid1.DataSource.DataSet.Next;
  IF Assigned(UI_ReadyDocument_frm) Then
  begin
    UI_ReadyDocument_frm.ReadList;
  end;
end;

procedure TUI_KPTA_frm.FormActivate(Sender: TObject);
begin
  inherited;
  if AnsiMatchText(UpperCase(LastActiveFormName),['UI_ReadyDocument_frm','UI_RecvDocument_frm']) Then
//  IF UpperCase(LastActiveFormName) = UpperCase('UI_ReadyDocument_frm') Then
  begin
    ReadList;
  end;
end;

procedure TUI_KPTA_frm.sDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  IF Column.FieldName = 'isSEND' Then
  begin
    Case AnsiIndexText(Column.Field.AsString,['취소','임시','저장']) of
      0: sDBGrid1.Canvas.Font.Color := clRed;
      1: sDBGrid1.Canvas.Font.Color := clGreen;
//      2: sDBGrid1.Canvas.Font.Color := clBlue;
    else
      sDBGrid1.Canvas.Font.Color := clBlack;
    end;

    sDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else
  begin
    IF sDBGrid1.DataSource.DataSet.FieldByName('WriteUserID').AsString <> LoginData.sID Then
      sDBGrid1.Canvas.Font.Color := clgray
    else
      sDBGrid1.Canvas.Font.Color := clBlack;

    sDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TUI_KPTA_frm.sDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF Key = VK_SPACE then
    sButton7Click(sButton7);
end;

procedure TUI_KPTA_frm.sMaskEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case Key of
    VK_RETURN : sButton6Click(sButton6);
  end;
end;

procedure TUI_KPTA_frm.sButton8Click(Sender: TObject);
begin
  inherited;
  Dialog_BetweenList_frm := TDialog_BetweenList_frm.Create(Self);
  try
    IF Dialog_BetweenList_frm.ShowModal = mrOk Then
    begin
//      sComboBox1.ItemIndex := 1;
//      sMaskEdit1.Text := FormatDateTime('YYYY-MM-DD',DataModule_Conn.qryCount.FieldByName('YearMonth').AsDateTime);
      ReadList;
    end;
  finally
    FreeAndNil(Dialog_BetweenList_frm);
  end;
end;

procedure TUI_KPTA_frm.sDBGrid1ScrollData(Sender: TObject);
begin
  inherited;
  sButton11.Enabled := sDBGrid1.DataSource.DataSet.RecordCount > 0;

  IF sDBGrid1.DataSource.DataSet.RecordCount = 0 Then
  begin
    sButton2.Enabled := False;
    sButton4.Enabled := False;
    sButton7.Enabled := False;
    sButton12.Enabled := False;
    sButton13.Enabled := False;
    Exit;
  end;

  IF DataModule_Conn.qryStandard1.FieldByName('isSEND').AsString = '준비' Then
  begin
    sButton7.ImageIndex := 24;
    sButton7.Caption := '준비취소'
  end
  else
  begin
    sButton7.ImageIndex := 22;
    sButton7.Caption := '전송준비';
  end;

  sButton4.Enabled := DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString = LoginData.sID;
  sButton7.Enabled := DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString = LoginData.sID;

  if AnsiMatchText( DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString , [LoginData.sID,''] ) Then
  begin
    sButton2.Enabled := True;
    sButton2.ImageIndex := 8;
    sButton2.Caption := '수정';
  end
  else
  begin
    sButton2.Enabled := True;
    sButton2.ImageIndex := 26;
    sButton2.Caption := '보기';
  end;

//------------------------------------------------------------------------------
// 접수필증은 FS7문서수신후(Result = R01) 경우에만 출력 가능
//------------------------------------------------------------------------------
  sButton13.Enabled := DataModule_Conn.qryStandard1.FieldByName('isRESULT').AsString = 'R01';
  sButton12.Enabled := (not sButton13.Enabled) AND (DataModule_Conn.qryStandard1.FieldByName('isSEND').AsString <> '임시');

//------------------------------------------------------------------------------
// 접수결과가 D01(보완통보)일 경우에는 수정하고 다시 보내야함
//------------------------------------------------------------------------------
  if DataModule_Conn.qryStandard1.FieldByName('isRESULT').AsString = 'D01' Then
  begin
    sButton2.ImageIndex := 6;
    sButton2.Caption := '보완'
  end
  else
  begin
    sButton2.ImageIndex := 8;
    sButton2.Caption := '수정';
  end;

//------------------------------------------------------------------------------
// 결과가 승인통보부터는 보완전송이 안되고 취소요청만 가능함
//------------------------------------------------------------------------------
  sButton18.Enabled := DataModule_Conn.qryStandard1.FieldByName('isRESULT').AsString = 'R01';

end;

procedure TUI_KPTA_frm.sMaskEdit1DblClick(Sender: TObject);
var
  POS : TPoint;
  TEMPDT : TDateTime;
begin
  inherited;

  KISCalendarV2_frm := TKISCalendarV2_frm.Create(Self);
  try
    POS.X := (Sender as TsMaskEdit).Left;
    POS.Y := (Sender as TsMaskEdit).Top+(Sender as TsMaskEdit).Height;

    POS := (Sender as TsMaskEdit).Parent.ClientToScreen(POS);

    KISCalendarV2_frm.Left := POS.X;
    KISCalendarV2_frm.Top := POS.Y;

    TEMPDT := KISCalendarV2_frm.OpenCalendar(ConvertStr2Date((Sender as TsMaskEdit).Text));
//    TEMPDT := KISCalendarV2_frm.OpenCalendarBetween(ConvertStr2Date(sMaskEdit1.Text), ConvertStr2Date(sMaskEdit2.Text));
    (Sender as TsMaskEdit).Text := FormatDateTime('YYYY-MM-DD', TEMPDT);
//    sMaskEdit1.Text := FormatDateTime('YYYY-MM-DD', TEMPDT.FromDT);
//    sMaskEdit2.Text := FormatDateTime('YYYY-MM-DD', TEMPDT.ToDT);
  finally
    FreeAndNil(KISCalendarV2_frm);
  end;
end;

procedure TUI_KPTA_frm.sButton12Click(Sender: TObject);
var
  PRN_KPTA : TQuickRep;
  ExistsData : Boolean;
begin
  inherited;
  Case (Sender as TsButton).Tag of
    0: PRN_KPTA := TQR_KPTA_NORMAL_PRN_frm.Create(Self);
    1: PRN_KPTA := TQR_KPTA_NORMAL_Complete_PRN_frm.Create(Self);
  end;
  UI_PrintPreview_frm := TUI_PrintPreview_frm.Create(Application);

  try
    ExistsData := True;
    Case (Sender as TsButton).Tag of
      0: (PRN_KPTA as TQR_KPTA_NORMAL_PRN_frm).Run(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString);
      1: ExistsData := (PRN_KPTA as TQR_KPTA_NORMAL_Complete_PRN_frm).Run(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString);
    end;
    
    IF ExistsData Then
    begin
      UI_PrintPreview_frm.Report := PRN_KPTA;
      UI_PrintPreview_frm.Preview;
    end;
  finally
    FreeAndNil( PRN_KPTA );
    FreeAndNil( UI_PrintPreview_frm );
  end;
end;

procedure TUI_KPTA_frm.sComboBox2Select(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_KPTA_frm.sButton15Click(Sender: TObject);
begin
  inherited;
  sMaskEdit1DblClick(sMaskEdit1);
end;

procedure TUI_KPTA_frm.sButton14Click(Sender: TObject);
begin
  inherited;
  sMaskEdit1DblClick(sMaskEdit2);
end;

procedure TUI_KPTA_frm.sComboBox1Select(Sender: TObject);
begin
  inherited;
  sEdit1.Enabled := not (sComboBox1.ItemIndex = 0);
end;

procedure TUI_KPTA_frm.sButton16Click(Sender: TObject);
begin
  inherited;

  case (Sender as TsButton).Tag of
    0:
    begin
      IF not Assigned( UI_ReadyDocument_frm ) then
        UI_ReadyDocument_frm := TUI_ReadyDocument_frm.Create(Application)
      else
      begin
        UI_ReadyDocument_frm.Show;
        UI_ReadyDocument_frm.BringToFront;
      end;
    end;

    1:
    begin
      IF not Assigned( UI_RecvDocument_frm ) then
        UI_RecvDocument_frm := TUI_RecvDocument_frm.Create(Application)
      else
      begin
        UI_RecvDocument_frm.Show;
        UI_RecvDocument_frm.BringToFront;
      end;
    end;
  end;
end;

procedure TUI_KPTA_frm.sButton18Click(Sender: TObject);
begin
  inherited;
  IF DataModule_Conn.qryStandard1.RecordCount = 0 Then Exit;

  UI_KPTA_DocNormal_frm := TUI_KPTA_DocNormal_frm.Create(Self);
  try
    UI_KPTA_DocNormal_frm.CancelDocument;
    sButton5Click(sButton5);
    sDBGrid1.DataSource.DataSet.Locate('DOC_NO',UI_KPTA_DocNormal_frm.DocNo,[]);
  finally
    Freeandnil(UI_KPTA_DocNormal_frm);
  end;
end;

procedure TUI_KPTA_frm.sEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN Then sButton6Click(nil);

end;

procedure TUI_KPTA_frm.sButton9Click(Sender: TObject);
begin
  inherited;
  Dialog_ProcessView_frm := TDialog_ProcessView_frm.Create(Self);
  try
    Dialog_ProcessView_frm.SearchNo(DataModule_Conn.qryStandard2DOC_NO.AsString);
  finally
    FreeAndNil(Dialog_ProcessView_frm);
  end;
end;

procedure TUI_KPTA_frm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF ssCtrl in Shift Then
  begin
    IF Key = 81 Then
    begin
      sButton12.Enabled := True;
      sButton13.Enabled := True;      
    end;
  end;
end;

end.
