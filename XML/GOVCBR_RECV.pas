unit GOVCBR_RECV;

interface

uses
  KISXML, ADODB, DB, Windows, SysUtils, StrUtils, DateUtils, Dialogs, Controls, Classes, dmConn, Variants, XMLIntf;

type
  TGOVCBR_RECV = class(TKISXMLParsing);

  TGOVCBR_RBG = class(TGOVCBR_RECV)
    private
      procedure InsertError(nSEQ : Integer; sPos,sKey1,sKey2,Contents : String);
      procedure DeleteError;
      procedure UpdateDocument;
    public
      procedure ParsingXML; override;
  end;

  TGOVCBR_RBH = class(TGOVCBR_RECV)
    private
      qryMaster, qryDetail : TADOQuery;
      procedure UpdateDocument;
    public
      procedure ParsingXML; override;
  end;

implementation

uses
  CommonLib;

{ TGOVCBR_RBG }

procedure TGOVCBR_RBG.DeleteError;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM ERR_DETAIL WHERE SID = '+QuotedStr(DocumentNo)+' AND DOC_CODE = '+QuotedStr(TypeCode);
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TGOVCBR_RBG.InsertError(nSEQ: Integer; sPos, sKey1, sKey2,
  Contents: String);
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'INSERT INTO ERR_DETAIL(SID, DOC_CODE, ERR_SEQ, ERR_POS, ERR_KEY1, ERR_KEY2, ERR_CONTENTS) VALUES('+
                  QuotedStr(DocumentNo)+','+
                  QuotedStr(TypeCode)+','+
                  IntToStr(nSEQ)+','+
                  QuotedStr(sPos)+','+
                  QuotedStr(sKey1)+','+
                  QuotedStr(sKey2)+','+
                  QuotedStr(Contents)+')';
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TGOVCBR_RBG.ParsingXML;
begin
  inherited;
  //요건기관 문서번호
  DocumentNo := getValueFromXPath(ROOT_NODE,'wco:ID');
  TargetDocumentNo := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:ID');
  TargetDocumentCode := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:TypeCode');
  IssueDateTime := getValueFromXPath(ROOT_NODE,'wco:IssueDateTime');
  SenderName := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Name');
  ProcessCode := '';
  RecvList;

//------------------------------------------------------------------------------
// 오류상세내용
//------------------------------------------------------------------------------
  CHILD_NODE := ROOT_NODE.ChildNodes.First;

  DeleteError;
        
  while CHILD_NODE <> nil do
  begin
    IF LowerCase( CHILD_NODE.NodeName ) = LowerCase('wco:Error') Then
    begin
      InsertError(  StrToInt(getValueFromXPath(CHILD_NODE,'wco:Pointer/wco:SequenceNumeric')),
                    getValueFromXPath(CHILD_NODE,'wco:Pointer/wco:DocumentSectionCode'),
                    getValueFromXPath(CHILD_NODE,'wco:Pointer/wco:TagID'),
                    getValueFromXPath(CHILD_NODE,'wco:Pointer/wco:TagID'),
                    getValueFromXPath(CHILD_NODE,'kcs:Description')
                 );
    end;
    CHILD_NODE := CHILD_NODE.NextSibling;
  end;

//------------------------------------------------------------------------------
// 타겟문서 상태변경
//------------------------------------------------------------------------------
  UpdateDocument;

end;

procedure TGOVCBR_RBG.UpdateDocument;
var
  TempStr : String;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;

      IF TargetDocumentCode = 'GOVCBRFR2' Then
      begin
        TempStr := FormatDateTime('YYYY-MM-DD HH:NN:SS',ConvertStr2Date(IssueDateTime));
        SQL.Text := 'UPDATE STANDARD1 SET isSend = ''완료'', isRECV = ''오류'', LastProcessDatetime = '+QuotedStr(TempStr)+#13+
                    'WHERE LastProcessDateTime <='+QuotedStr(TempStr)+' AND isRECV != ''승인'' AND DOC_NO = '+QuotedStr(TargetDocumentNo);
//        SQL.Text := 'UPDATE STANDARD1 SET isRECV = ''오류'' WHERE isRECV != ''승인'' AND DOC_NO = '+QuotedStr(TargetDocumentNo);
      end;
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

{ TGOVCBR_RBH }

procedure TGOVCBR_RBH.ParsingXML;
begin
  inherited;
  DocumentNo := getValueFromXPath(ROOT_NODE,'wco:ID');
  TargetDocumentNo := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:ID');
  TargetDocumentCode := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:TypeCode');
  IssueDateTime := getValueFromXPath(ROOT_NODE,'wco:IssueDateTime');
  SenderName := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Name');
  ProcessCode := getValueFromXPath(ROOT_NODE,'wco:Status/wco:NameCode');
  RecvList;

  qryMaster := TADOQuery.Create(nil);
  try
    with qryMaster do
    begin
      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT * FROM GOVCBRRBH WHERE SID = '+QuotedStr(DocumentNo)+' AND DOC_CODE = '+QuotedStr(TypeCode);
      Open;

      IF qryMaster.RecordCount = 0 then
      begin
        Append;
        FieldByName('SID').AsString := DocumentNo;
        FieldByName('DOC_CODE').AsString := TypeCode;
      end
      else
        Edit;

      FieldByName('IssueDocumentNo'    ).AsString := TargetDocumentNo;
      FieldByName('IssueDocumentCode'  ).AsString := TargetDocumentCode;
      FieldByName('IssueDateTime'      ).AsString := IssueDateTime;
      FieldByName('AgentAdminNo'       ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:PreviousDocument/wco:ID');
      FieldByName('SupportCode'        ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:DeclarationOfficeID');
      FieldByName('SupportName'        ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/kcs:DeclarationOffice');
      FieldByName('ProcessingAgent'    ).AsString := SenderName;
      FieldByName('ProcessingAgent_Tel').AsString := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Communication/wco:ID');
      FieldByName('ProcessingCode'     ).AsString := ProcessCode;
      FieldByName('AcceptNo'           ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:FunctionalReferenceID');
      FieldByName('ProcessTimeLimit'   ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/kcs:ExpirationDateTime');
      FieldByName('PermitNo'           ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:AdditionalDocument/wco:ID');
      FieldByName('ProductName'        ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:AdditionalInformation/wco:StatementDescription');
      FieldByName('CheckDatetime'      ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:InspectionStartDateTime');
      FieldByName('CheckCode'          ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:TypeCode');
      FieldByName('CheckContents'      ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/kcs:InspectionDescription');
      FieldByName('CheckPlace'         ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:ReviewPlaceName');
      FieldByName('AddedTimeLimit'     ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:LimitDateTime');
      FieldByName('AddedDocument'      ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/kcs:Name');
      FieldByName('DocumentCheck'      ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/kcs:ExaminationIndicatorCode');
      FieldByName('ReferenceContents'  ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:AdditionalInformation/wco:Content');
      FieldByName('DetailCheckingNo'   ).AsString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Consignment/wco:AdditionalDocument/wco:ID');

      post;
    end;
  finally
    qryMaster.Close;
    qryMaster.Free;
  end;

  qryDetail := TADOQuery.Create(nil);
  try
    with qryDetail do
    begin
      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM GOVCBRRBH_D WHERE SID = '+QuotedStr(DocumentNo)+' AND DOC_CODE = '+QuotedStr(TypeCode);
      ExecSQL;

      Close;
      SQL.Text := 'SELECT * FROM GOVCBRRBH_D WHERE SID = '+QuotedStr(DocumentNo)+' AND DOC_CODE = '+QuotedStr(TypeCode);
      Open;

      CHILD_NODE := getNodeFromXPath(ROOT_NODE,'wco:Declaration/wco:Consignment').ChildNodes.First;

      while CHILD_NODE <> nil do
      begin
        if LowerCase(CHILD_NODE.NodeName) = LowerCase('wco:ConsignmentItem') then
        begin
          Append;
          FieldByName('SID').AsString := DocumentNo;
          FieldByName('DOC_CODE').AsString := TypeCode;
          FieldByName('DetailSerialNo'      ).AsString := getValue(CHILD_NODE,'wco:SequenceNumeric');
          FieldByName('DetailMatterCode'    ).AsString := getValueFromXPath(CHILD_NODE,'wco:AdditionalInformation/wco:StatementCode');
          FieldByName('DetailMatterName'    ).AsString := getValueFromXPath(CHILD_NODE,'wco:Commodity/wco:Name');
          FieldByName('DetailCheckConetents').AsString := getValueFromXPath(CHILD_NODE,'wco:AdditionalInformation/wco:Content');
          FieldByName('DetailEtc'           ).AsString := getValueFromXPath(CHILD_NODE,'wco:Commodity/wco:AdditionalInformation/wco:Content');
          Post;
        end;
        CHILD_NODE := CHILD_NODE.NextSibling;
      end;

    end;
  finally
    qryDetail.Close;
    qryDetail.Free;
  end;

//------------------------------------------------------------------------------
// 타겟문서 상태변경
//------------------------------------------------------------------------------
  UpdateDocument;

end;

procedure TGOVCBR_RBH.UpdateDocument;
var
  TempStr : String;
  PRC_NM : String;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;

      IF TargetDocumentCode = 'GOVCBRFR2' Then
      begin
        TempStr := FormatDateTime('YYYY-MM-DD HH:NN:SS',ConvertStr2Date(IssueDateTime));
        IF ProcessCode = 'Z01' Then
          PRC_NM := '서류제출'
        else
        IF ProcessCode = 'D01' Then
          PRC_NM := '보완'
        else
          PRC_NM := '접수';

        SQL.Text := 'UPDATE STANDARD1 SET isSend = ''완료'', isRECV = '+QuotedStr(PRC_NM)+', isRESULT = '+QuotedStr(ProcessCode)+' ,LastProcessDatetime = '+QuotedStr(TempStr)+#13+
                    'WHERE LastProcessDateTime <='+QuotedStr(TempStr)+' AND isRECV != ''승인'' AND DOC_NO = '+QuotedStr(TargetDocumentNo);
      end;

      IF Trim(SQL.Text) <> '' Then ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

end.
