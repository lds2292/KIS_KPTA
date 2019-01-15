unit UI_ReadyDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, DB, ADODB, Grids, DBGrids, acDBGrid, ExtCtrls,
  sSplitter, StdCtrls, sButton, sPanel, sSkinProvider, Buttons,
  sSpeedButton;

type
  TUI_ReadyDocument_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sButton7: TsButton;
    sSplitter1: TsSplitter;
    sDBGrid1: TsDBGrid;
    qryReady: TADOQuery;
    dsReady: TDataSource;
    qryReadyDOC_TYPE: TStringField;
    qryReadyDOC_NO: TStringField;
    qryReadyDOC_EDIT_COUNT: TIntegerField;
    qryReadyREADY_DATETIME: TDateTimeField;
    qryReadyisSELECT: TBooleanField;
    sButton3: TsButton;
    sSpeedButton2: TsSpeedButton;
    sButton1: TsButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qryReadyAfterOpen(DataSet: TDataSet);
    procedure qryReadyisSELECTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton7Click(Sender: TObject);
  private
    { Private declarations }
    FSQL : String;
    FBeforeKey : string;
    procedure CancelDocument;
  public
    { Public declarations }
    procedure ReadList(DocNo : String = '');
  end;

var
  UI_ReadyDocument_frm: TUI_ReadyDocument_frm;

implementation

uses dmConn, CommonVar, GOVCBR_FR2, KISXML, KIS_4GTrasfer, CommonDef, UI_QuickMenu;

{$R *.dfm}

{ TUI_ReadyDocument_frm }

procedure TUI_ReadyDocument_frm.ReadList(DocNo : String);
begin
  with qryReady do
  begin
    Close;
    Parameters.ParamByName('USER_ID').Value := LoginData.sID;
    Open;
    Locate('DOC_NO',DocNo,[]);
  end;
end;

procedure TUI_ReadyDocument_frm.FormCreate(Sender: TObject);
begin
  inherited;
  FSQL := qryReady.SQL.Text;
  IF not Assigned(UI_QuickMenu_frm) Then
  begin
    Left := 0;
    Top := 0;
  end
  else
  begin
    Left := UI_QuickMenu_frm.Width;
    Top := 0;
  end;
end;

procedure TUI_ReadyDocument_frm.FormDeactivate(Sender: TObject);
begin
  inherited;
//  IF qryReady.Active and (qryReady.RecordCount > 0) Then
//    FBeforeKey := qryReadyDOC_NO.AsString;
end;

procedure TUI_ReadyDocument_frm.FormActivate(Sender: TObject);
begin
  inherited;
//  ReadList;
end;

procedure TUI_ReadyDocument_frm.qryReadyAfterOpen(DataSet: TDataSet);
begin
  inherited;
  IF DataSet.RecordCount > 0 Then
    DataSet.Locate('DOC_NO',FBeforeKey,[]);
end;

procedure TUI_ReadyDocument_frm.qryReadyisSELECTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  IF qryReadyisSELECT.AsBoolean Then
    Text := 'Y'
  else
    Text := 'N'
end;

procedure TUI_ReadyDocument_frm.CancelDocument;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM READY_DOCUMENTS WHERE DOC_NO = '+QuotedStr(qryReadyDOC_NO.AsString)+' AND DOC_TYPE = '+QuotedStr(qryReadyDOC_TYPE.AsString);
      ExecSQL;
      SQL.Text := 'UPDATE STANDARD1 SET isSEND = ''취소'' WHERE DOC_NO = '+QuotedStr(qryReadyDOC_NO.AsString)+' AND DOC_TYPE = '+QuotedStr(qryReadyDOC_TYPE.AsString)+' AND isSEND != ''완료''';
      ExecSQL;
      ReadList;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_ReadyDocument_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  CancelDocument;
end;

procedure TUI_ReadyDocument_frm.FormShow(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_ReadyDocument_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_ReadyDocument_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_ReadyDocument_frm := nil;
end;

const
  MSG_SEND_OK  : String = '전송이 완료되었습니다'#13#10'-----------------------------------------'#13#10;
  MSG_SEND_INCULDE_FAILDOC : String = '전체 문서중 일부 문서는 전송이 실패하였습니다'#13#10'-----------------------------------------'#13#10;
  MSG_SEND_SUCCESS : String = '전송완료된 문서 수 : ';
  MSG_SEND_FAIL : String = '전송실패된 문서 수 : ';
  MSG_5LPUPLOAD_4G_SEND_OK = '전송이 완료되었습니다';
  MSG_NOT_VALIDDATE = '일자를 다시 입력해주세요';
  MSG_RECV_ERROR = '오류가 발생하였습니다'#13#10+
                   '에러 메세지를 확인하시고, 개발업체에 문의하세요'#13#10+
                   '==============================================='#13#10;  
procedure TUI_ReadyDocument_frm.sButton7Click(Sender: TObject);
var
  XML : TKISXMLCreate;
  i : Integer;
  DocumentCode, DocumentNo : String;
  DocumentState : TSendResult;
begin
  inherited;
  KIS_4GTrasfer_frm := TKIS_4GTrasfer_frm.Create(Application);
  try
//    KIS_4GTrasfer_frm.SendDir := 'C:\PROJECT\XMLTRANS\OUTPUT';
    KIS_4GTrasfer_frm.SendDir := ConfigData.XML_SEND_DIR;
    KIS_4GTrasfer_frm.DeleteTempDir;

    with sDBGrid1.DataSource.DataSet do
    begin
      First;
      while not Eof do
      begin
        try
          IF FieldByName('DOC_TYPE').AsString = 'GOVCBRFR2' Then XML := TGOVCBR_FR2.Create;

          XML.SendDir := ConfigData.XML_SEND_DIR;
          XML.MakeDocument(FieldByName('DOC_NO').AsString);
          Next;
        finally
          XML.Free;
        end;
      end;
    end;

    with KIS_4GTrasfer_frm do
    begin
      {$IFDEF DEBUG}
      UserID := '1';
      PostBox := 'VC220022296001';
      {$ELSE}
      UserID := ConfigData.UNIPASS_ID;
      PostBox := ConfigData.UNIPASS_POSTBOX;
      AprePostBox := ConfigData.APRE_POSTBOX;
      {$ENDIF}

      SendDocument(True);

  //------------------------------------------------------------------------------
  // 전송완료 및 실패 출력
  //------------------------------------------------------------------------------
      IF FailFileCount > 0 then
        ShowMessage(MSG_SEND_INCULDE_FAILDOC+MSG_SEND_SUCCESS+IntToStr(KIS_4GTrasfer_frm.SendFileCount)+' 건'+#13#10+
                                             MSG_SEND_FAIL+IntToStr(KIS_4GTrasfer_frm.FailFileCount)+' 건')
      else
      IF KIS_4GTrasfer_frm.FailFileCount = 0 then
        ShowMessage(MSG_SEND_OK+MSG_SEND_SUCCESS+IntToStr(KIS_4GTrasfer_frm.SendFileCount)+' 건'+#13#10+
                                             MSG_SEND_FAIL+IntToStr(KIS_4GTrasfer_frm.FailFileCount)+' 건');

  //------------------------------------------------------------------------------
  // 전송테이블 초기화 (인증서 취소가 아닐시)
  //------------------------------------------------------------------------------
      IF KIS_4GTrasfer_frm.FailFileCount <> -1 Then
      begin
        with TADOQuery.Create(nil) do
        begin
          try
            Connection := DataModule_Conn.KisConn;
            SQL.Text := 'DELETE FROM [READY_DOCUMENTS] WHERE USER_ID = '+QuotedStr(LoginData.sID);
            ExecSQL;

            ReadList;

          finally
            Close;
            Free;
          end;
        end;
      end;

      for i := 0 to High(SendList) do
      begin
        DocumentCode := FileSendList[i].FDocCode;
        DocumentNo := FileSendList[i].FSingoNo;
        DocumentState := FileSendList[i].FSendResult;

        with TADOQuery.Create(nil) do
        begin
          try
            Connection := DataModule_Conn.KisConn;
            IF DocumentCode = 'GOVCBRFR2' Then
            begin
              IF DocumentState = ssFail Then
                SQL.Text := 'UPDATE STANDARD1 SET isSEND = ''오류'' WHERE DOC_NO = '+QuotedStr(DocumentNo)
              else
              IF DocumentState = ssOK Then
                SQL.Text := 'UPDATE STANDARD1 SET isSEND = ''완료'', isFirstSend = 0, isFirstSendDateTime = getDate() WHERE DOC_NO = '+QuotedStr(DocumentNo)+' AND isFirstSend = 1';

              ExecSQL;
            end;
          finally
            Close;
            Free;
          end;
        end;

      end;
    end;
  finally
    FreeAndNil( KIS_4GTrasfer_frm );
  end;

end;

end.
