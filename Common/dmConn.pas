unit dmConn;

interface

uses
  SysUtils, Classes, ADODB, DB, DBTables, StrUtils, sEdit, sSkinManager, IniFiles,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TCodeRecord = record
    sCode : string;
    sContents : String;
    sContents2 : String;
    sChanged : Boolean;
  end;

  TDataModule_Conn = class(TDataModule)
    dsStandard2: TDataSource;
    dsStandard1: TDataSource;
    dsStandardIns: TDataSource;
    dsTaken: TDataSource;
    qryJEJE_GUBUN_: TQuery;
    KisConn: TADOConnection;
    qryCodeList: TADOQuery;
    qryConfig: TADOQuery;
    qryStandard1: TADOQuery;
    qryStandard2: TADOQuery;
    qryTaken: TADOQuery;
    qryStandard2DOC_NO: TStringField;
    qryStandard2SERIAL_CODE: TStringField;
    qryStandard2SERIAL_NO: TStringField;
    qryStandard2HS: TStringField;
    qryStandard2GOODS_CODE: TStringField;
    qryStandard2OLD_JONG_CODE: TStringField;
    qryStandard2OLD_GOODS_CODE: TStringField;
    qryStandard2COSMETIC_GUBUN: TStringField;
    qryStandard2DMF: TStringField;
    qryStandard2BGMP: TStringField;
    qryStandard2TRADE_NAME: TStringField;
    qryStandard2MODEL_SIZE: TMemoField;
    qryStandard2MODEL_SIZE_INGREDIENT: TMemoField;
    qryStandard2DRUG_STANDARD_CODE: TStringField;
    qryStandard2WITAK_SANGHO1: TStringField;
    qryStandard2WITAK_SANGHO2: TStringField;
    qryStandard2WITAK_SANGHO3: TStringField;
    qryStandard2WITAK_ADDR1: TStringField;
    qryStandard2WITAK_ADDR2: TStringField;
    qryStandard2WITAK_ADDR3: TStringField;
    qryStandard2WITAK_NATION_CODE: TStringField;
    qryStandard2WITAK_NATION_NAME: TStringField;
    qryStandard2MODEL_QTY: TBCDField;
    qryStandard2MODEL_QTY_UNIT: TStringField;
    qryStandard2MODEL_DANGA: TBCDField;
    qryStandard2MODEL_AMT: TBCDField;
    qryStandard2MODEL_AMT_UNIT: TStringField;
    qryStandard2PERMIT_SINGO_NO: TStringField;
    qryStandard2PERMIT_SINGO_DATE: TStringField;
    qryStandard2BSE_CODE: TStringField;
    qryStandard2BSE_ORIGIN_NATION_CODE: TStringField;
    qryStandard2BSE_ORIGIN_NATION_NAME: TStringField;
    qryStandard2ORIGIN_MATTER: TStringField;
    qryStandard2EXTRACTION: TStringField;
    qryStandard2BATCH_NO: TStringField;
    qryStandard2ORIGIN_NATION_CODE: TStringField;
    qryStandard2ORIGIN_NATION_NAME: TStringField;
    qryMake: TADOQuery;
    qryCheck: TADOQuery;
    spCopyDocument: TADOStoredProc;
    qryCreateDocumentNo: TADOQuery;
    qryCount: TADOQuery;
    dsCount: TDataSource;
    qryStandard1DOC_NO: TStringField;
    qryStandard1DOC_TYPE: TStringField;
    qryStandard1SEND_TYPE: TStringField;
    qryStandard1DOC_GUBUN: TStringField;
    qryStandard1REQUEST_DATE: TDateTimeField;
    qryStandard1JEJE_GUBUN: TStringField;
    qryStandard1CANCEL_REASON: TMemoField;
    qryStandard1IMPORT_SAUP_NO: TStringField;
    qryStandard1IMPORT_SANGHO: TStringField;
    qryStandard1IMPORT_DAEPYO: TStringField;
    qryStandard1IMPORT_TRADE_NO: TStringField;
    qryStandard1IMPORT_POST_NO: TStringField;
    qryStandard1IMPORT_ADDR1: TStringField;
    qryStandard1IMPORT_ADDR2: TStringField;
    qryStandard1IMPORT_TYPE: TBooleanField;
    qryStandard1HWAJU_SAUP_NO: TStringField;
    qryStandard1HWAJU_SANGHO: TStringField;
    qryStandard1HWAJU_DAEPYO: TStringField;
    qryStandard1HWAJU_POST_NO: TStringField;
    qryStandard1HWAJU_ADDR1: TStringField;
    qryStandard1HWAJU_ADDR2: TStringField;
    qryStandard1EXPORT_SANGHO: TStringField;
    qryStandard1EXPORT_ADDR1: TStringField;
    qryStandard1EXPORT_NATION_CODE: TStringField;
    qryStandard1EXPORT_NATION_NAME: TStringField;
    qryStandard1INDO_TYPE: TStringField;
    qryStandard1PAY_TYPE: TStringField;
    qryStandard1PAY_AMT: TBCDField;
    qryStandard1PAY_UNIT: TStringField;
    qryStandard1PAY_BETWEEN_DATE: TStringField;
    qryStandard1DEST_PORT_CODE: TStringField;
    qryStandard1DEST_PORT_NAME: TStringField;
    qryStandard1QUALITY_AGENCY_CODE: TStringField;
    qryStandard1QUALITY_AGENCY_NAME: TStringField;
    qryStandard1FIRST_CHECK_AGENCY_CODE: TStringField;
    qryStandard1FIRST_CHECK_AGENCY_NAME: TStringField;
    qryStandard1REGION_CODE: TStringField;
    qryStandard1REGION_NAME: TStringField;
    qryStandard1IMPORT_MEMO: TMemoField;
    qryStandard1TOTAL_COUNT: TIntegerField;
    qryStandard1isSEND: TStringField;
    qryStandard1isRECV: TStringField;
    qryStandard1isRESULT: TStringField;
    qryStandard1isDeleted: TBooleanField;
    qryStandard1DeleteDate: TDateTimeField;
    qryStandard1WriteUserID: TStringField;
    qryStandard1isFirstSend: TBooleanField;
    qryStandard1isFirstSendDateTime: TDateTimeField;
    qryStandard1LastProcessDatetime: TDateTimeField;
    qryStandard1JEJE_GUBUN_NAME: TStringField;
    qryStandard1REQUEST_DOC_TYPE: TStringField;
    qryStandard1INDO_TYPE_NAME: TStringField;
    qryStandard1PAY_TYPE_NAME: TStringField;
    qrySTD1Copy: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    MemoField1: TMemoField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BooleanField1: TBooleanField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    BCDField1: TBCDField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    MemoField2: TMemoField;
    IntegerField1: TIntegerField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    BooleanField2: TBooleanField;
    DateTimeField2: TDateTimeField;
    StringField38: TStringField;
    BooleanField3: TBooleanField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    dsMake: TDataSource;
    dsCheck: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryStandard2AfterOpen(DataSet: TDataSet);
    procedure qryStandard1AfterScroll(DataSet: TDataSet);
    procedure qryStandard2SERIAL_NOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryStandard2MODEL_SIZEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
    FSQL : String;
  public
    { Public declarations }
    procedure getCodeList(GroupCode : String);
    procedure getCodeListWhereCode(GroupCode, sCode : String);
    procedure getCodeListWhereContents(GroupCode, sContents : String);
    function  getCodeContents(GroupCode,sCode : String): TCodeRecord;
    function  isValidCode(GroupCode,sCode : String):Boolean; overload;
    function  isValidCode(var UserControl : TsEdit):Boolean; overload;
    function  getDocNo(DOC_GUBUN : String):Integer;
    procedure getConfig;
    procedure setConfig;
    function getConnectionString:string;
    procedure setDocumentNo;
  end;

var
  DataModule_Conn: TDataModule_Conn;
  CodeRecord : TCodeRecord;
implementation

uses CommonVar;

{$R *.dfm}

{ TDataModule_Conn }

function TDataModule_Conn.getCodeContents(GroupCode,
  sCode: String): TCodeRecord;
begin
  IF Trim(sCode) = '' Then
  begin
    Result.sCode := sCode;
    Result.sContents := '';
  end
  else
  begin
    Result.sCode := sCode;
    Result.sContents := 'NOT FOUND('+sCode+')';
  end;

  with TADOQuery.Create(nil) do
  begin
    try
      Connection := KisConn;
      SQL.Text := 'SELECT * FROM CODELIST WHERE CODE_GROUP = '+QuotedStr(GroupCode)+' AND CODE_TYPE = '+QuotedStr(sCode);
      Open;

      IF RecordCount > 0 Then
      begin
        Result.sCode := sCode;
        Result.sContents := FieldByName('CODE_CONTENTS').AsString;
        Result.sContents2 := FieldByName('CODE_ETC').AsString;
      end;

    finally
      Close;
      Free;
    end;
  end;
end;

procedure TDataModule_Conn.getCodeList(GroupCode: String);
begin
  qryCodeList.Close;
  with qryCodeList do
  begin
    Close;
    SQL.Text := FSQL;
    Parameters.ParamByName('CODE_GROUP').Value := GroupCode;
    Open;
  end;
end;

procedure TDataModule_Conn.DataModuleCreate(Sender: TObject);
begin
  FSQL := qryCodeList.SQL.Text;
end;


procedure TDataModule_Conn.getCodeListWhereCode(GroupCode, sCode: String);
begin
  qryCodeList.Close;
  with qryCodeList do
  begin
    Close;
    SQL.Text := 'SELECT * FROM CODELIST WHERE CODE_GROUP = '+QuotedStr(GroupCode)+' AND CODE_TYPE LIKE '+QuotedStr('%'+sCode+'%');
    Open;
  end;
end;

procedure TDataModule_Conn.getCodeListWhereContents(GroupCode,
  sContents: String);
begin
  qryCodeList.Close;
  with qryCodeList do
  begin
    Close;
    SQL.Text := 'SELECT * FROM CODELIST WHERE CODE_GROUP = '+QuotedStr(GroupCode)+' AND CODE_CONTENTS LIKE '+QuotedStr('%'+sContents+'%');
    Open;
  end;
end;

function TDataModule_Conn.getDocNo(DOC_GUBUN : String):Integer;
begin
  Result := 0;
  with TADOQuery.Create(nil) do
  begin
    try
      Close;
      Connection := KisConn;
      SQL.Text := 'SELECT DOC_NO FROM "NO" WHERE USER_ID = '+QuotedStr( LoginData.sID )+' AND DOC_YEAR = '+QuotedStr(FormatDateTime('YY',Now))+' AND DOC_GUBUN = '+QuotedStr(DOC_GUBUN);
      Open;

      IF RecordCount = 0 Then
      begin
        Close;
        SQL.Text := 'INSERT INTO "NO" VALUES('+QuotedStr( LoginData.sID )+','+QuotedStr(FormatDateTime('YY',Now))+','+QuotedStr(DOC_GUBUN)+',1)';
        ExecSQL;
        Result := 1;
      end
      else
      begin
        Result := FieldByName('DOC_NO').AsInteger+1;
        SQL.Text := 'UPDATE "NO" SET DOC_NO = '+IntToStr(Result)+'WHERE USER_ID = '+QuotedStr( LoginData.sID )+' AND DOC_YEAR = '+QuotedStr(FormatDateTime('YY',Now))+' AND DOC_GUBUN = '+QuotedStr(DOC_GUBUN);
        ExecSQL;
      end;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TDataModule_Conn.getConfig;
begin
  with qryConfig do
  begin
    Close;
    Open;
    if qryConfig.RecordCount = 0 Then
    begin
//      raise Exception.Create('사용자 환경설정 셋팅이 안되어있습니다.')
      ConfigData.SID := '';
      ConfigData.SINGO_BUHO := '';
      ConfigData.SAUP_NO := '';
      ConfigData.SANGHO  := '';
      ConfigData.DAEPYO  := '';
      ConfigData.POST_NO := '';
      ConfigData.ADDR1   := '';
      ConfigData.ADDR2   := '';
      ConfigData.UNIPASS_ID := '';
      ConfigData.UNIPASS_POSTBOX := '';
      ConfigData.APRE_POSTBOX := '';
      ConfigData.XML_SEND_DIR := '';
    end
    else
    begin
      ConfigData.SINGO_BUHO := FieldByName('SINGO_BUHO').AsString;
      ConfigData.SAUP_NO := FieldByName('SAUP_NO').AsString;
      ConfigData.SANGHO  := FieldByName('SANGHO').AsString;
      ConfigData.DAEPYO  := FieldByName('DAEPYO').AsString;
      ConfigData.POST_NO := FieldByName('POSTNO').AsString;
      ConfigData.ADDR1   := FieldByName('ADDR1').AsString;
      ConfigData.ADDR2   := FieldByName('ADDR2').AsString;
      ConfigData.UNIPASS_ID := FieldByName('UNIPASS_ID').AsString;
      ConfigData.UNIPASS_POSTBOX := FieldByName('UNIPASS_POSTBOX').AsString;
      ConfigData.APRE_POSTBOX := FieldByName('APRE_POSTBOX').AsString;
      ConfigData.XML_SEND_DIR := FieldByName('XML_SEND_DIR').AsString;
    end;
    Close;
  end;
end;

procedure TDataModule_Conn.setConfig;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := KisConn;
      SQL.Text := 'SELECT * FROM USERCONFIG';
      Open;

      IF RecordCount = 0 Then
      begin
        Close;
        SQL.Text := 'INSERT INTO USERCONFIG VALUES('+
                    QuotedStr(ConfigData.SINGO_BUHO)+','+
                    QuotedStr(ConfigData.SAUP_NO)+','+
                    QuotedStr(ConfigData.SANGHO)+','+
                    QuotedStr(ConfigData.DAEPYO)+','+
                    QuotedStr(ConfigData.POST_NO)+','+
                    QuotedStr(ConfigData.ADDR1)+','+
                    QuotedStr(ConfigData.ADDR2)+','+
                    QuotedStr(ConfigData.UNIPASS_ID)+','+
                    QuotedStr(ConfigData.UNIPASS_POSTBOX)+','+
                    QuotedStr(ConfigData.XML_SEND_DIR)+','+
                    QuotedStr(ConfigData.APRE_POSTBOX)+')';
        ExecSQL;
      end
      else
      begin
        SQL.Text := 'UPDATE USERCONFIG SET SINGO_BUHO='+QuotedStr(ConfigData.SINGO_BUHO)+','+
                    'SAUP_NO='+QuotedStr(ConfigData.SAUP_NO)+','+
                    'SANGHO='+QuotedStr(ConfigData.SANGHO)+','+
                    'DAEPYO='+QuotedStr(ConfigData.DAEPYO)+','+
                    'POSTNO='+QuotedStr(ConfigData.POST_NO)+','+
                    'ADDR1='+QuotedStr(ConfigData.ADDR1)+','+
                    'ADDR2='+QuotedStr(ConfigData.ADDR2)+','+
                    'UNIPASS_ID='+QuotedStr(ConfigData.UNIPASS_ID)+','+
                    'UNIPASS_POSTBOX='+QuotedStr(ConfigData.UNIPASS_POSTBOX)+','+
                    'XML_SEND_DIR='+QuotedStr(ConfigData.XML_SEND_DIR)+','+
                    'APRE_POSTBOX='+QuotedStr(ConfigData.APRE_POSTBOX);

        ExecSQL;
      end;

      getConfig;
    finally
      Close;
      Free;
    end;
  end;
end;


procedure TDataModule_Conn.qryStandard2AfterOpen(DataSet: TDataSet);
begin
  with qryTaken do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := DataSet.FieldByName('DOC_NO').AsString;
    Parameters.ParamByName('SERIAL_NO').Value := DataSet.FieldByName('SERIAL_NO').AsString;
    Open;
  end;

  with qryMake do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := qryStandard2DOC_NO.AsString;
    Parameters.ParamByName('SERIAL_NO').Value := qryStandard2SERIAL_NO.AsString;
    Open;
  end;

  with qryCheck do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := qryStandard2DOC_NO.AsString;
    Parameters.ParamByName('SERIAL_NO').Value := qryStandard2SERIAL_NO.AsString;
    Open;
  end;

end;

procedure TDataModule_Conn.qryStandard1AfterScroll(DataSet: TDataSet);
begin
  with qryStandard2 do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := DataSet.FieldByName('DOC_NO').AsString;
    Open;
  end;
end;

procedure TDataModule_Conn.qryStandard2SERIAL_NOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  IF Trim(Sender.AsString) <> '' Then
    Text := 'FR2'+Sender.AsString;
end;

procedure TDataModule_Conn.qryStandard2MODEL_SIZEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := LeftStr(Sender.AsString,150);
end;

function TDataModule_Conn.isValidCode(GroupCode, sCode: String): Boolean;
begin
  Result := False;
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := KisConn;
      SQL.Text := 'SELECT * FROM CODELIST WHERE CODE_GROUP = '+QuotedStr(GroupCode)+' AND CODE_TYPE = '+QuotedStr(sCode);
      Open;

      Result := RecordCount = 0;

    finally
      Close;
      Free;
    end;
  end;
end;

function TDataModule_Conn.isValidCode(var UserControl: TsEdit): Boolean;
begin
  Result := isValidCode(UserControl.hint, UserControl.text);
end;

function TDataModule_Conn.getConnectionString:string;
//var
//  INIFile : TIniFile;
//  useLocal : Boolean;
begin
//  INIFile := TIniFile.Create(ldbinfoiniPath);
//  try
//    useLocal := INIFile.ReadBool(Section_Connect,'uselocaldb',false);
//    IF useLocal Then
//    begin
//      sConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=KIS_KPTA;Data Source=(LOCALDB)\'+INIFile.ReadString(Section_Connect,'addr','')+';Initial File Name='+INIFile.ReadString(Section_Connect,'ldbfile','');
//    end
//    else
//    begin
//      //------------------------------------------------------------------------------
//      // 서버측 연결은 추후 개발
//      //------------------------------------------------------------------------------
//    end;
//  finally
//    INIFile.Free;
//  end;

  Self.KisConn.Close;
  KisConn.ConnectionString := sConnectionString;
  Result := sConnectionString;
end;

procedure TDataModule_Conn.setDocumentNo;
begin
  IF Trim(LoginData.sID) = '' then Exit;

  qryCreateDocumentNo.Close;
  qryCreateDocumentNo.Parameters.ParamByName('USER_ID').Value := LoginData.sID;
  qryCreateDocumentNo.ExecSQL;
end;

end.
