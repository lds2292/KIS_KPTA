unit KISXML;

interface

uses
    DB, ADODB, Dialogs, SysUtils, Classes, Windows, Variants, dmConn,
//------------------------------------------------------------------------------
// XML 관련 유닛(msxmldom은 MSXML을 설치하여야할듯)
//------------------------------------------------------------------------------
    xmldom, XMLIntf, msxmldom, XMLDoc,
//------------------------------------------------------------------------------
// 문자열, 날자 관련 함수 유닛
//------------------------------------------------------------------------------
    StrUtils, DateUtils;

Type
  TKISXML = class
    private
    protected
      //전송폴더
      FWorkDir : String;
      //신고번호, 정정차수
      FSingoNo : String;
      FEditCount : Integer;
      //작업일시
      FWorkTime : TDateTime;
      //XML파일이름
      FXMLFileName : String;
      //XML 문서 코드
      FDocumentID : String;
      FDocumentSUB : String;
      FDocumentCODE : String;
    public
      //XML 노드관련
      ROOT_NODE : IXMLNode;
      CHILD_NODE : IXMLNode;
      procedure doCreateRootChild(NodeName : string);
      procedure doCreateChildChild(NodeName : string);
      procedure doChildNodeParent;
      procedure doNextNode;
  end;

  TKISXMLParsing = class(TKISXML)
    private
      FKISXML : IXMLDocument;
      FTypeCode : String;
    protected
      qryRecv : TADOQuery;
      DocumentNo : String;
      TargetDocumentNo : String;
      TargetDocumentCode : String;
      IssueDateTime : String;
      SenderName : String;
      ProcessCode : String;
      procedure UpdateDocument; virtual; abstract;             
    public
      constructor Create(FileName : String);
      constructor CreateNormal(FileName : String);
      procedure RecvList;
      function Str2Date(sText : String):String;
      function getValue(ParentNode : IXMLNode; sNodeName : String):OleVariant;
      function getNodeFromXPath(ParentNode : IXMLNode; XPath : String):IXMLNode;
      function getValueFromXPath(ParentNode : IXMLNode; XPath : String):String;
      function getAttributeFromXpath(ParentNode : IXMLNode; AttrStr,XPath : String):String;
      procedure ParsingXML; virtual; abstract;
      property KISXML : IXMLDocument read FKISXML Write FKISXML;
//      property RecvDir : String Read FWorkDir;
      property TypeCode : String read FTypeCode;
  end;

  TKISXMLCreate = class(TKISXML)
    private
      FKISXML : TXMLDocument;
    protected
      procedure CreateXMLHaeder;
      procedure CreateXMLHeaderNormal;
    public
      constructor Create;
      constructor CreateNormal;
      destructor Destroy; virtual;
      procedure Save; virtual;      
      function getComment(MSG: String): IXMLNode;
      procedure Comment(var NODE: IXMLNode; sComment: String);
      procedure MakeDocument(SingoNo : String); virtual; abstract;
      property KISXML : TXMLDocument read FKISXML Write FKISXML;
      property SendDir : String Read FWorkDir write FWorkDir;
  end;

implementation

{ TKISXMLCreate }

procedure TKISXMLCreate.CreateXMLHaeder;
begin
  IF Trim(FDocumentSUB) = '' Then
    raise  Exception.Create('DocumentSUB is Empty');

  IF Trim(FDocumentCODE) = '' Then
    raise  Exception.Create('DocumentCODE is Empty');

  KISXML.Active := True;
  KISXML.Version := '1.0';
  KISXML.Encoding := 'UTF-8';

  ROOT_NODE := KISXML.AddChild('wco:Declaration');
  ROOT_NODE.DeclareNamespace('xsi','http://www.w3.org/2001/XMLSchema-instance');
  ROOT_NODE.DeclareNamespace('gsw','urn:kr:gov:kcs:data:standard:KCS_DeclarationOf'+FDocumentSUB+'_'+FDocumentCODE+'SchemaModule:1:0');
  ROOT_NODE.DeclareNamespace('wco','urn:kr:gov:kcs:data:standard:KCS_DeclarationOf'+FDocumentSUB+'_'+FDocumentCODE+'SchemaModule:1:0');  
  ROOT_NODE.DeclareNamespace('kcs','urn:kr:gov:kcs:data:standard:KCS_DeclarationOf'+FDocumentSUB+'_'+FDocumentCODE+'SchemaModule:1:0');
  ROOT_NODE.Attributes['xsi:schemaLocation'] := 'urn:kr:gov:kcs:data:standard:KCS_DeclarationOf'+FDocumentSUB+'_'+FDocumentCode+'SchemaModule:1:0 ../../schema4G/kcs/data/standard/KCS_DeclarationOf'+FDocumentSUB+'_'+FDocumentCODE+'SchemaModule_1.0_standard.xsd';
end;

procedure TKISXMLCreate.CreateXMLHeaderNormal;
begin
  KISXML.Active := True;
  KISXML.Version := '1.0';
  KISXML.Encoding := 'UTF-8';
end;

Const
  DefaultSendDir : string = 'C:\PROJECT\XMLTRANS\OUTPUT';
constructor TKISXMLCreate.Create;
begin
  FWorkTime := Now;
  FWorkDir := DefaultSendDir;
  ForceDirectories(FWorkDir);

  KISXML := TXMLDocument.Create(nil);
end;

constructor TKISXMLCreate.CreateNormal;
begin
  KISXML := TXMLDocument.Create(nil);
end;

function TKISXMLCreate.getComment(MSG: String): IXMLNode;
begin
  Result := KISXML.CreateNode(MSG,ntComment);
end;

procedure TKISXMLCreate.Comment(var NODE: IXMLNode;
  sComment: String);
begin
  NODE.ChildNodes.Add(getComment(sComment));
end;

procedure TKISXMLCreate.Save;
begin
  IF Trim(FXMLFileName) = '' Then
    raise  Exception.Create('XMLFileName is Empty');

  IF RightStr(SendDir,1) <> '\' Then
    SendDir := SendDir + '\';

  KISXML.SaveToFile(SendDir+FXMLFileName);
end;

destructor TKISXMLCreate.Destroy;
begin
  KISXML.Free;
end;

{ TKISXMLParsing }

constructor TKISXMLParsing.Create(FileName: String);
begin
  IF not FileExists(FileName) Then
    raise  Exception.Create('수신파일이 존재하지 않습니다. 해당경로에 파일이 있는지 확인하세요'#13#10+FileName);

  FWorkTime := Now;
  FXMLFileName := FileName;
  FDocumentID := 'GOVCBR';
  FDocumentSUB := '';
  FDocumentCODE := '';

  KISXML := LoadXMLDocument(FileName);

  //응답서의 노드는 Response로 시작
  ROOT_NODE := KISXML.ChildNodes.FindNode('wco:Response');

  FTypeCode := getValueFromXPath(ROOT_NODE,'wco:TypeCode');
end;

constructor TKISXMLParsing.CreateNormal(FileName: String);
begin
  IF not FileExists(FileName) Then
    raise  Exception.Create('수신파일이 존재하지 않습니다. 해당경로에 파일이 있는지 확인하세요'#13#10+FileName);

  FXMLFileName := FileName;

  KISXML := LoadXMLDocument(FileName);
end;

function TKISXMLParsing.getNodeFromXPath(ParentNode: IXMLNode;
  XPath: String): IXMLNode;
var
  TempStr : TStringList;
  i : Integer;
begin
  TempStr := TStringList.Create;
  try
    IF LeftStr( XPath , 1 ) = '/' Then
      XPath := RightStr(XPath,Length(XPath)-1);

    TempStr.Delimiter := '/';
    TempStr.DelimitedText := XPath;
    
    for i := 0 to TempStr.Count - 1 do
    begin
      IF i = 0 Then
        Result := ParentNode.ChildNodes.Nodes[Tempstr.Strings[i]]
      else
        Result := Result.ChildNodes.Nodes[Tempstr.Strings[i]];
    end;

  finally
    TempStr.Free;
  end;
end;

function TKISXMLParsing.getValue(ParentNode: IXMLNode;
  sNodeName: String): OleVariant;
begin
//------------------------------------------------------------------------------
// 해당 노드의 데이터가 없다면  #0를 반환함
//------------------------------------------------------------------------------
  Result := '';
  IF ParentNode.ChildNodes.Nodes[sNodeName].NodeValue <> Null Then
    Result := ParentNode.ChildNodes.Nodes[sNodeName].NodeValue;
end;

function TKISXMLParsing.getValueFromXPath(ParentNode: IXMLNode;
  XPath: String): String;
begin
  Result := '';
  IF getNodeFromXPath(ParentNode,XPath).NodeValue <> Null Then
    Result := getNodeFromXPath(ParentNode,XPath).NodeValue;
end;

function TKISXMLParsing.getAttributeFromXpath(ParentNode: IXMLNode;
  AttrStr, XPath: String): String;
begin
  Result := '';
  IF getNodeFromXPath(ParentNode,XPath).Attributes[AttrStr] <> NULL Then
    Result := getNodeFromXPath(ParentNode,XPath).Attributes[AttrStr];
end;

function TKISXMLParsing.Str2Date(sText: String): String;
var
  nYear, nMonth, nDay, nHour, nMin, nSec: integer;
  TempDateTime : TDateTime;
begin
  Case Length(sText) of
    8:
    begin
      //CCYYMMDD
      //12345678
      nYear  := StrToInt(LeftStr(sText,4));
      nMonth := StrToInt(MidStr(sText,5,2));
      nDay   := StrToInt(MidStr(sText,7,2));

      TempDateTime := EncodeDateTime(nYear,nMonth,nDay,0,0,0,0);
      Result := FormatDateTime('YYYY/MM/DD',TempDateTime);
    end;
    10:;
    12:
    begin
      //CCYYMMDDHHMM
      //123456789012

      nYear  := StrToInt(LeftStr(sText,4));
      nMonth := StrToInt(MidStr(sText,5,2));
      nDay   := StrToInt(MidStr(sText,7,2));
      nHour  := StrToInt(MidStr(sText,9,2));
      nMin   := StrToInt(MidStr(sText,11,2));

      TempDateTime := EncodeDateTime(nYear,nMonth,nDay,nHour,nMin,0,0);
      Result := FormatDateTime('YYYY/MM/DD HH:NN',TempDateTime);
    end;
    14:
    begin
      //CCYYMMDDHHMMSS
      nYear  := StrToInt(LeftStr(sText,4));
      nMonth := StrToInt(MidStr(sText,5,2));
      nDay   := StrToInt(MidStr(sText,7,2));
      nHour  := StrToInt(MidStr(sText,9,2));
      nMin   := StrToInt(MidStr(sText,11,2));
      nSec   := StrToInt(MidStr(sText,13,2));

      TempDateTime := EncodeDateTime(nYear,nMonth,nDay,nHour,nMin,nSec,0);
      Result := FormatDateTime('YYYY/MM/DD HH:NN',TempDateTime);
    end;
  end;
end;

procedure TKISXMLParsing.RecvList;
begin
  //요건기관에서 보낸 문서번호
  qryRecv := TADOQuery.Create(nil);
  try
    with qryRecv do
    begin
      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT * FROM RECV_DOCUMENTS WHERE SID = '+QuotedStr(DocumentNo)+' AND DOC_CODE = '+QuotedStr(TypeCode);
      Open;

      IF RecordCount = 0 then
      begin
        Append;
        FieldByName('SID').AsString := DocumentNo;
        FieldByName('DOC_CODE').AsString := TypeCode;
      end
      else
        Edit;

      FieldByName('IssueDocumentNo'  ).AsString := TargetDocumentNo;
      FieldByName('IssueDocumentCode').AsString := TargetDocumentCode;
      FieldByName('IssueDateTime'    ).AsString := IssueDateTime;
      FieldByName('Sender'           ).AsString := SenderName;
      FieldByName('ProcessCode'      ).AsString := ProcessCode;
      FieldByName('Data').AsString := Utf8ToAnsi( KISXML.XML.Text );

      Post;
    end;
  finally
    qryRecv.Free;
  end;
end;

{ TKISXML }

procedure TKISXML.doChildNodeParent;
begin
  CHILD_NODE := CHILD_NODE.ParentNode;
end;

procedure TKISXML.doCreateChildChild(NodeName: string);
begin
  CHILD_NODE := CHILD_NODE.AddChild(NodeName);
end;

procedure TKISXML.doCreateRootChild(NodeName: string);
begin
  CHILD_NODE := ROOT_NODE.AddChild(NodeName);
end;

procedure TKISXML.doNextNode;
begin
  CHILD_NODE := CHILD_NODE.NextSibling;
end;

end.
