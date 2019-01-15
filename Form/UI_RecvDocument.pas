unit UI_RecvDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, Grids, DBGrids, acDBGrid, ExtCtrls, sSplitter,
  StdCtrls, sButton, Buttons, sSpeedButton, sPanel, sSkinProvider, DB,
  ADODB, Mask, sMaskEdit, sComboBox, DateUtils, StrUtils, DBCtrls, sDBMemo,
  sLabel, XMLIntf, XMLDoc, sCheckBox, Menus;

type
  TUI_RecvDocument_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sSpeedButton2: TsSpeedButton;
    sButton7: TsButton;
    sButton1: TsButton;
    sSplitter1: TsSplitter;
    sDBGrid1: TsDBGrid;
    qryRecvList: TADOQuery;
    dsRecvList: TDataSource;
    qryRecvListSID: TStringField;
    qryRecvListDOC_CODE: TStringField;
    qryRecvListRecvDatetime: TDateTimeField;
    qryRecvListData: TMemoField;
    qryRecvListDOCUMENT_NAME: TStringField;
    sPanel2: TsPanel;
    sSplitter2: TsSplitter;
    sMaskEdit1: TsMaskEdit;
    sButton2: TsButton;
    sButton3: TsButton;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sLabel1: TsLabel;
    sSplitter3: TsSplitter;
    qryRecvListIssueDateTime: TStringField;
    qryRecvListIssueDocumentNo: TStringField;
    qryRecvListIssueDocumentCode: TStringField;
    qryRecvListSender: TStringField;
    sCheckBox1: TsCheckBox;
    sDBGrid2: TsDBGrid;
    qryErr: TADOQuery;
    dsErr: TDataSource;
    qryErrSID: TStringField;
    qryErrDOC_CODE: TStringField;
    qryErrERR_SEQ: TIntegerField;
    qryErrERR_POS: TStringField;
    qryErrERR_KEY1: TStringField;
    qryErrERR_KEY2: TStringField;
    qryErrERR_CONTENTS: TMemoField;
    qryRecvListProcessCode: TStringField;
    qryRecvListCONTENTS: TStringField;
    POP_TIMEMENU: TPopupMenu;
    TIME_RECVDATE: TMenuItem;
    TIME_ISSUEDATETIME: TMenuItem;
    sMaskEdit2: TsMaskEdit;
    sButton4: TsButton;
    sPanel23: TsPanel;
    panAdded: TsPanel;
    sSplitter4: TsSplitter;
    sPanel6: TsPanel;
    sLabel2: TsLabel;
    sDBMemo1: TsDBMemo;
    qryAdded: TADOQuery;
    dsAdded: TDataSource;
    qryAddedReferenceContents: TMemoField;
    sDBGrid3: TsDBGrid;
    qryAddedIssueDateTime: TStringField;
    procedure sButton7Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sMaskEdit1DblClick(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure qryRecvListAfterOpen(DataSet: TDataSet);
    procedure qryRecvListAfterScroll(DataSet: TDataSet);
    procedure qryRecvListDOC_CODEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryErrERR_CONTENTSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sDBGrid1TitleClick(Column: TColumn);
    procedure TIME_ISSUEDATETIMEClick(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadList;
    function getValue(ParentNode: IXMLNode; sNodeName: String): OleVariant;
    procedure XmlDocument_Process(CODE, XmlPath: String);
  public
    { Public declarations }
  end;

var
  UI_RecvDocument_frm: TUI_RecvDocument_frm;

implementation

uses
  dmConn, dmIcon, KIS_4GTrasfer, CommonVar, KISCalendar, CommonLib, Dlg_SaveDocument, GOVCBR_RECV, UI_KPTA, GOVCBR_FS7, KISXML, KISCalendarV2;

{$R *.dfm}
Const
  sTempRecvPath = 'C:\RECVXML\';
  MSG_RECV_ERROR = '오류가 발생하였습니다'#13#10+
                   '에러 메세지를 확인하시고, 개발업체에 문의하세요'#13#10+
                   '==============================================='#13#10;
procedure TUI_RecvDocument_frm.sButton7Click(Sender: TObject);
var
  SearchRec : TSearchRec;
  i : Integer;
  TEMPXML : IXMLDocument;
  DOCCODE : String;
  FRFile,TOFile : PChar;
  RECV_TEMPXML : String;
  TEMP_FILENAME : string;
  ORIGINAL_RECVDIR : string;
begin
  inherited;

  KIS_4GTrasfer_frm := TKIS_4GTrasfer_frm.Create(Application);
  Dlg_SaveDocument_frm := TDlg_SaveDocument_frm.Create(KIS_4GTrasfer_frm);
  try
    with KIS_4GTrasfer_frm do
    begin

      UserID := ConfigData.UNIPASS_ID;
      PostBox := ConfigData.UNIPASS_POSTBOX;
      AprePostBox := ConfigData.APRE_POSTBOX;

      //------------------------------------------------------------------------------
      // 문서수신
      //------------------------------------------------------------------------------
      RecvDocument(True);

      //------------------------------------------------------------------------------
      // 수신문서 보관함
      //------------------------------------------------------------------------------
      RECV_TEMPXML := sTempRecvPath+FormatDateTime('YYMMDD',Now)+'\';
      ForceDirectories(RECV_TEMPXML);

      //------------------------------------------------------------------------------
      // 수신폴더 검색
      //------------------------------------------------------------------------------
      IF FindFirst(RecvDir+'*.xml',faAnyFile-faDirectory,SearchRec) = 0 Then
      begin
        Dlg_SaveDocument_frm.Show;
        repeat
          try
            TEMPXML := LoadXMLDocument(RecvDir+SearchRec.Name);
            DOCCODE := getValue(TEMPXML.ChildNodes.Nodes['wco:Response'],'wco:TypeCode');

            FRFile := PChar(RecvDir+SearchRec.Name);
            TEMP_FILENAME := AnsiReplaceText(SearchRec.Name,DOCCODE+'_','');
            TOFile := PChar(RECV_TEMPXML+DOCCODE+'_'+TEMP_FILENAME);

            CopyFile(FRFile,TOFile,False);
            Dlg_SaveDocument_frm.FileName := SearchRec.Name;
            Dlg_SaveDocument_frm.sLabel4.Caption := RecvDir;

            XmlDocument_Process(DOCCODE,RecvDir+SearchRec.Name);
            
            Sleep(1);
            Application.ProcessMessages;
          Except
            on E:Exception do
            begin
              MessageBox(Dlg_SaveDocument_frm.Handle,Pchar(MSG_RECV_ERROR+'문서코드 : '+DOCCODE+' ERROR'#13#10+E.Message),'수신문서오류',MB_OK+MB_ICONERROR+MB_SYSTEMMODAL);
            end;
          end;
        until FindNext(SearchRec) <> 0;

        FindClose(SearchRec);
      end;
    end;
  finally
    Dlg_SaveDocument_frm.Hide;
    FreeAndNil( Dlg_SaveDocument_frm );      
    FreeAndNil( KIS_4GTrasfer_frm );
  end;

//  sComboBox1.ItemIndex := 0;
  ReadList;

end;

procedure TUI_RecvDocument_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_RecvDocument_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_RecvDocument_frm := nil;
end;

procedure TUI_RecvDocument_frm.sMaskEdit1DblClick(Sender: TObject);
var
  POS : TPoint;
begin
  inherited;

  KISCalendarV2_frm := TKISCalendarV2_frm.Create(Self);
  try
    POS.X := (Sender as TsMaskEdit).Left;
    POS.Y := (Sender as TsMaskEdit).Top+(Sender as TsMaskEdit).Height;

    POS := (Sender as TsMaskEdit).Parent.ClientToScreen(POS);

    KISCalendarV2_frm.Left := POS.X;
    KISCalendarV2_frm.Top := POS.Y;

    (Sender as TsMaskEdit).Text := FormatDateTime('YYYY-MM-DD', KISCalendarV2_frm.OpenCalendar(ConvertStr2Date((Sender as TsMaskEdit).Text)));

    ReadList;
  finally
    FreeAndNil(KISCalendarV2_frm);
  end;
end;

procedure TUI_RecvDocument_frm.ReadList;
begin
  with qryRecvList do
  begin
    Close;
    Parameters.ParamByName('FromDate').Value := ConvertStr2Date(sMaskEdit1.Text);
    Parameters.ParamByName('ToDate'  ).Value := IncSecond(IncMinute(IncHour(ConvertStr2Date(sMaskEdit2.Text),23),59),59);
    Open;
  end;
end;

procedure TUI_RecvDocument_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_RecvDocument_frm.FormShow(Sender: TObject);
begin
  inherited;
  sMaskEdit1.Text := FormatDateTime('YYYY-MM-DD', Now);
  sMaskEdit2.Text := FormatDateTime('YYYY-MM-DD',EndOfTheMonth(Now));
  ReadList;
end;

procedure TUI_RecvDocument_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  sMaskEdit1DblClick(sMaskEdit1);
end;

procedure TUI_RecvDocument_frm.qryRecvListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  IF DataSet.RecordCount = 0 then qryRecvListAfterScroll(DataSet);
end;

procedure TUI_RecvDocument_frm.qryRecvListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  sPanel3.Visible := (qryRecvListDOC_CODE.AsString = 'GOVCBRRBG');
  IF sPanel3.Visible Then
  begin
    qryErr.Close;
    qryErr.Parameters.ParamByName('SID').Value := qryRecvListSID.AsString;
    qryErr.Parameters.ParamByName('DOC_CODE').Value := qryRecvListDOC_CODE.AsString;
    qryErr.Open;  
  end
  else
    qryErr.Close;

  panAdded.Visible := (qryRecvListDOC_CODE.AsString = 'GOVCBRRBH') and (qryRecvListProcessCode.AsString = 'D01');
  IF panAdded.Visible Then
  begin
    qryAdded.Close;
    qryAdded.Parameters[0].Value := qryRecvListSID.AsString;
    qryAdded.Open;
  end
  else
    qryAdded.Close;

end;

function TUI_RecvDocument_frm.getValue(ParentNode: IXMLNode;
  sNodeName: String): OleVariant;
begin
//------------------------------------------------------------------------------
// 해당 노드의 데이터가 없다면  #0를 반환함
//------------------------------------------------------------------------------
  IF ParentNode.ChildNodes.Nodes[sNodeName].NodeValue = NULL Then
    Result := ''
  else
    Result := ParentNode.ChildNodes.Nodes[sNodeName].NodeValue;
end;

procedure TUI_RecvDocument_frm.XmlDocument_Process(CODE, XmlPath: String);
var
  TempClass : TKISXMLParsing;
  NotChangeDocDir : string;
begin
//------------------------------------------------------------------------------
// 코드와 XML를 통하여 수신처리
//------------------------------------------------------------------------------
  TempClass := nil;

//------------------------------------------------------------------------------
// 공통수신문서
//------------------------------------------------------------------------------
  IF CODE = 'GOVCBRRBG' THEN TempClass := TGOVCBR_RBG.Create(XmlPath);
  IF CODE = 'GOVCBRRBH' THEN TempClass := TGOVCBR_RBH.Create(XmlPath);
  IF CODE = 'GOVCBRFS7' THEN TempClass := TGOVCBR_FS7.Create(XmlPath);

  IF Assigned( TempClass ) Then
  begin
    TempClass.ParsingXML;
    
    DeleteFile(XmlPath);
  end
  else
  begin
    IF not sCheckBox1.Checked Then
      raise Exception.Create('해당문서 '+CODE+'는 변환할 수 없는 문서코드입니다.'#13#10'02-3452-4561')
    else
      DeleteFile(XmlPath);

  end;
end;

procedure TUI_RecvDocument_frm.qryRecvListDOC_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := AnsiReplaceText(Sender.AsString,'GOVCBR','');
end;

procedure TUI_RecvDocument_frm.qryErrERR_CONTENTSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
end;

procedure TUI_RecvDocument_frm.sDBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  IF AnsiMatchText(Column.FieldName,['RecvDatetime','IssueDateTime']) Then
  begin
    TIME_RECVDATE.Checked := AnsiIndexText(Column.FieldName,['RecvDatetime','IssueDateTime']) = 0;
    TIME_ISSUEDATETIME.Checked := AnsiIndexText(Column.FieldName,['RecvDatetime','IssueDateTime']) = 1;

    POP_TIMEMENU.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  end;
end;

procedure TUI_RecvDocument_frm.TIME_ISSUEDATETIMEClick(Sender: TObject);
begin
  inherited;
  Case (Sender as TMenuItem).Tag of
    0:begin
        sDBGrid1.Columns[2].FieldName := 'RecvDatetime';
        sDBGrid1.Columns[2].Title.Caption := '수신일자';
      end;
    1:begin
        sDBGrid1.Columns[2].FieldName := 'IssueDateTime';
        sDBGrid1.Columns[2].Title.Caption := '접수/통보일자';
      end;
  end;
end;

procedure TUI_RecvDocument_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  sMaskEdit1DblClick(sMaskEdit2);
end;

end.

