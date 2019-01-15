unit XMLSource;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TXMLSource_dm = class(TDataModule)
    qryStandard: TADOQuery;
    qryStandardDOC_NO: TStringField;
    qryStandardDOC_TYPE: TStringField;
    qryStandardSEND_TYPE: TStringField;
    qryStandardDOC_GUBUN: TStringField;
    qryStandardREQUEST_DATE: TDateTimeField;
    qryStandardJEJE_GUBUN: TStringField;
    qryStandardCANCEL_REASON: TMemoField;
    qryStandardIMPORT_SAUP_NO: TStringField;
    qryStandardIMPORT_SANGHO: TStringField;
    qryStandardIMPORT_DAEPYO: TStringField;
    qryStandardIMPORT_TRADE_NO: TStringField;
    qryStandardIMPORT_POST_NO: TStringField;
    qryStandardIMPORT_ADDR1: TStringField;
    qryStandardIMPORT_ADDR2: TStringField;
    qryStandardIMPORT_TYPE: TBooleanField;
    qryStandardHWAJU_SAUP_NO: TStringField;
    qryStandardHWAJU_SANGHO: TStringField;
    qryStandardHWAJU_DAEPYO: TStringField;
    qryStandardHWAJU_POST_NO: TStringField;
    qryStandardHWAJU_ADDR1: TStringField;
    qryStandardHWAJU_ADDR2: TStringField;
    qryStandardEXPORT_SANGHO: TStringField;
    qryStandardEXPORT_ADDR1: TStringField;
    qryStandardEXPORT_NATION_CODE: TStringField;
    qryStandardEXPORT_NATION_NAME: TStringField;
    qryStandardINDO_TYPE: TStringField;
    qryStandardPAY_TYPE: TStringField;
    qryStandardPAY_AMT: TBCDField;
    qryStandardPAY_UNIT: TStringField;
    qryStandardPAY_BETWEEN_DATE: TStringField;
    qryStandardDEST_PORT_CODE: TStringField;
    qryStandardDEST_PORT_NAME: TStringField;
    qryStandardQUALITY_AGENCY_CODE: TStringField;
    qryStandardQUALITY_AGENCY_NAME: TStringField;
    qryStandardFIRST_CHECK_AGENCY_CODE: TStringField;
    qryStandardFIRST_CHECK_AGENCY_NAME: TStringField;
    qryStandardREGION_CODE: TStringField;
    qryStandardREGION_NAME: TStringField;
    qryStandardIMPORT_MEMO: TMemoField;
    qryStandardTOTAL_COUNT: TIntegerField;
    qryStandardSERIAL_CODE: TStringField;
    qryStandardSERIAL_NO: TStringField;
    qryStandardHS: TStringField;
    qryStandardGOODS_CODE: TStringField;
    qryStandardOLD_JONG_CODE: TStringField;
    qryStandardOLD_GOODS_CODE: TStringField;
    qryStandardCOSMETIC_GUBUN: TStringField;
    qryStandardDMF: TStringField;
    qryStandardBGMP: TStringField;
    qryStandardTRADE_NAME: TStringField;
    qryStandardMODEL_SIZE: TMemoField;
    qryStandardMODEL_SIZE_INGREDIENT: TMemoField;
    qryStandardDRUG_STANDARD_CODE: TStringField;
    qryStandardWITAK_SANGHO1: TStringField;
    qryStandardWITAK_SANGHO2: TStringField;
    qryStandardWITAK_SANGHO3: TStringField;
    qryStandardWITAK_ADDR1: TStringField;
    qryStandardWITAK_ADDR2: TStringField;
    qryStandardWITAK_ADDR3: TStringField;
    qryStandardWITAK_NATION_CODE: TStringField;
    qryStandardWITAK_NATION_NAME: TStringField;
    qryStandardMODEL_QTY: TBCDField;
    qryStandardMODEL_QTY_UNIT: TStringField;
    qryStandardMODEL_DANGA: TBCDField;
    qryStandardMODEL_AMT: TBCDField;
    qryStandardMODEL_AMT_UNIT: TStringField;
    qryStandardPERMIT_SINGO_NO: TStringField;
    qryStandardPERMIT_SINGO_DATE: TStringField;
    qryStandardBSE_CODE: TStringField;
    qryStandardBSE_ORIGIN_NATION_CODE: TStringField;
    qryStandardBSE_ORIGIN_NATION_NAME: TStringField;
    qryStandardORIGIN_MATTER: TStringField;
    qryStandardEXTRACTION: TStringField;
    qryStandardBATCH_NO: TStringField;
    qryStandardORIGIN_NATION_CODE: TStringField;
    qryStandardORIGIN_NATION_NAME: TStringField;
    qryCheck: TADOQuery;
    qryTaken: TADOQuery;
    qryMake: TADOQuery;
  private
    { Private declarations }
    function OPEN_DataSet(SubQuery : TADOQuery;DocNo, SerialNo : String):Boolean;
    procedure CLOSE_DataSet(SubQuery : TADOQuery);
  public
    { Public declarations }
    function OPEN_FR2(DocNo : String):Boolean;
    procedure CLOSE_FR2;
    function OPEN_FR2_CHECK(DocNo, SerialNo : String):Boolean;
    procedure CLOSE_FR2_CHECK;
    function OPEN_FR2_TAKEN(DocNo, SerialNo : String):Boolean;
    procedure CLOSE_FR2_TAKEN;
    function OPEN_FR2_MAKE(DocNo, SerialNo : String):Boolean;
    procedure CLOSE_FR2_MAKE;
  end;

var
  XMLSource_dm: TXMLSource_dm;

implementation

uses
  dmConn;

{$R *.dfm}

{ TXMLSource_dm }

procedure TXMLSource_dm.CLOSE_DataSet(SubQuery: TADOQuery);
begin
  SubQuery.Close;
end;

procedure TXMLSource_dm.CLOSE_FR2;
begin
  CLOSE_DataSet(qryStandard);
end;

procedure TXMLSource_dm.CLOSE_FR2_CHECK;
begin
  CLOSE_DataSet(qryCheck);
end;

procedure TXMLSource_dm.CLOSE_FR2_MAKE;
begin
  CLOSE_DataSet(qryMake);
end;

procedure TXMLSource_dm.CLOSE_FR2_TAKEN;
begin
  CLOSE_DataSet(qryTaken);
end;

function TXMLSource_dm.OPEN_DataSet(SubQuery: TADOQuery; DocNo,
  SerialNo: String): Boolean;
begin
  Result := False;
  with SubQuery do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := DocNo;
    Parameters.ParamByName('SERIAL_NO').Value := SerialNo;
    Open;

    Result := RecordCount > 0;
  end;
end;

function TXMLSource_dm.OPEN_FR2(DocNo: String):Boolean;
begin
  Result := True;

  with qryStandard do
  begin
    Close;
    Parameters.ParamByName('DocNo').Value := DocNo;
    Open;

    Result := RecordCount > 0;
  end;
end;

function TXMLSource_dm.OPEN_FR2_CHECK(DocNo, SerialNo: String): Boolean;
begin
  Result := OPEN_DataSet(qryCheck,DocNo,SerialNo);
end;

function TXMLSource_dm.OPEN_FR2_MAKE(DocNo, SerialNo: String): Boolean;
begin
  Result := OPEN_DataSet(qryMake,DocNo,SerialNo);
end;

function TXMLSource_dm.OPEN_FR2_TAKEN(DocNo, SerialNo: String): Boolean;
begin
  Result := OPEN_DataSet(qryTaken,DocNo,SerialNo);
end;

end.
