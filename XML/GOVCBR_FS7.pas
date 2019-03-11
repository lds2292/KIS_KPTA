//------------------------------------------------------------------------------
// 표준통관예정보고서접수필증(한국의약품수출입협회) - GOVCBRFS7
//------------------------------------------------------------------------------

unit GOVCBR_FS7;

interface

uses
  KISXML, ADODB, DB, Windows, SysUtils, StrUtils, DateUtils, Dialogs, Controls, Classes, dmConn, Variants, XMLIntf;

type
  TGOVCBR_FS7 = class(TKISXMLParsing)
  private
    Standard1 : TADOQuery;
    procedure ReadStandard2(Root :IXMLNode);
  protected
    procedure UpdateDocument; override;
  public
    procedure ParsingXML; override;

  end;

implementation

uses CommonLib;

{ TGOVCBR_FS7 }

procedure TGOVCBR_FS7.ParsingXML;
begin
  inherited;
  DocumentNo := getValue(ROOT_NODE,'wco:ID');
  IssueDateTime := getValue(ROOT_NODE,'wco:IssueDateTime');
  TargetDocumentNo := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:ID');
  TargetDocumentCode := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:TypeCode');
  SenderName := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Name')+'('+getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Contact/wco:Name')+')';
  ProcessCode := getValueFromXPath(ROOT_NODE,'wco:Status/wco:NameCode');
  RecvList;

  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT * FROM RECV_STANDARD1 WHERE DOC_NO = '+QuotedStr(TargetDocumentNo)+' AND DOC_TYPE = ''GOVCBRFS7''';
      Open;

      IF RecordCount = 0 Then
      begin
        Append;
        FieldByName('DOC_NO'                 ).AsString := TargetDocumentNo;
        FieldByName('DOC_TYPE'               ).AsString := 'GOVCBRFS7';
      end
      else
      begin
        Edit;
      end;

      FieldByName('PROCESS_STATE'          ).asString := getValueFromXPath(ROOT_NODE,'wco:Status/wco:NameCode');
      FieldByName('PUBLISH_NO'             ).asString := getValueFromXPath(ROOT_NODE,'wco:ID');
      FieldByName('PUBLISH_DATE'           ).asString := getValueFromXPath(ROOT_NODE,'wco:IssueDateTime');
      FieldByName('EXPIRY_DATE'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:EffectiveDateTime');
      FieldByName('PUBLISH_INSTITUTE'      ).asString := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Name');
      FieldByName('PUBLISH_PERSON'         ).asString := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Contact/wco:Name');
      FieldByName('PUBLISH_TEL'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Authenticator/wco:Communication/wco:ID');
      FieldByName('PUBLISH_SIGN'           ).asString := getValueFromXPath(ROOT_NODE,'wco:Certifier/wco:Name');
      FieldByName('PUBLISH_MEMO'           ).asString := getValueFromXPath(ROOT_NODE,'wco:AdditionalInformation/wco:Content');
      FieldByName('DOC_GUBUN'              ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/kcs:SubTypeCode');
      FieldByName('REQUEST_DATE'           ).asString := FormatDateTime('YYYY-MM-DD',ConvertStr2Date(getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:IssueDateTime')));
      FieldByName('JEJE_GUBUN'             ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:TransactionNatureCode');

      CHILD_NODE := getNodeFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent').ChildNodes.First;
      while CHILD_NODE <> nil do
      begin
        IF (CHILD_NODE.NodeType <> ntComment) and (CHILD_NODE.NodeName = 'wco:ID') Then
        begin
          case AnsiIndexText(CHILD_NODE.Attributes['schemeAgencyID'],['KTX','KFT']) of
            0: FieldByName('IMPORT_SAUP_NO').asString := CHILD_NODE.Text;
            1: FieldByName('IMPORT_TRADE_NO').asString := getValueFromXPath(CHILD_NODE,'wco:ID');
          end;
        end;
        CHILD_NODE := CHILD_NODE.NextSibling;
      end;
      FieldByName('IMPORT_SANGHO'          ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent/wco:Name');
      FieldByName('IMPORT_DAEPYO'          ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent/wco:Contact/kcs:RepresentativeName');
      FieldByName('IMPORT_POST_NO'         ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent/wco:Address/wco:PostcodeID');
      FieldByName('IMPORT_ADDR1'           ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent/wco:Address/kcs:Description');
      FieldByName('IMPORT_ADDR2'           ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent/wco:Address/wco:Line');

      Case AnsiIndexText( getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Agent/wco:RoleCode') , ['A','B'] ) of
        0: FieldByName('IMPORT_TYPE'            ).asBoolean := True;
        1: FieldByName('IMPORT_TYPE'            ).asBoolean := False;
      end;

      FieldByName('HWAJU_SAUP_NO'          ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Importer/wco:ID');
      FieldByName('HWAJU_SANGHO'           ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Importer/wco:Name');
      FieldByName('HWAJU_DAEPYO'           ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Importer/wco:Contact/kcs:RepresentativeName');
      FieldByName('HWAJU_POST_NO'          ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Importer/wco:Address/wco:PostcodeID');
      FieldByName('HWAJU_ADDR1'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Importer/wco:Address/kcs:Description');
      FieldByName('HWAJU_ADDR2'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Importer/wco:Address/wco:Line');
      FieldByName('EXPORT_SANGHO'          ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Exporter/wco:Name');
      FieldByName('EXPORT_ADDR1'           ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Exporter/wco:Address/wco:Line');
      FieldByName('EXPORT_NATION_CODE'     ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Exporter/wco:Address/wco:CountryCode');
      FieldByName('EXPORT_NATION_NAME'     ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Exporter/wco:Address/wco:CountryName');
      FieldByName('INDO_TYPE'              ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:TradeTerms/wco:ConditionCode');
      FieldByName('PAY_TYPE'               ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:DutyTaxFee/wco:Payment/wco:MethodCode');
      FieldByName('PAY_AMT'                ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:DutyTaxFee/wco:Payment/wco:PaymentAmount');
      FieldByName('PAY_UNIT'               ).asString := getAttributeFromXpath(ROOT_NODE,'currencyID','wco:Declaration/wco:DutyTaxFee/wco:Payment/wco:PaymentAmount');
      FieldByName('PAY_BETWEEN_DATE'       ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:DutyTaxFee/wco:Payment/kcs:PeriodDescription');
      FieldByName('DEST_PORT_CODE'         ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:UnloadingLocation/wco:ID');
      FieldByName('DEST_PORT_NAME'         ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:UnloadingLocation/wco:Name');
      FieldByName('QUALITY_AGENCY_CODE'    ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:ReviewPlaceID');
      FieldByName('QUALITY_AGENCY_NAME'    ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:ReviewPlaceName');
      FieldByName('FIRST_CHECK_AGENCY_CODE').asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:DeclarationOfficeID');

      FieldByName('REGION_CODE'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:Certifier/wco:ID');
      FieldByName('REGION_NAME'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:Control/wco:Certifier/wco:Name');
      FieldByName('IMPORT_MEMO'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:AdditionalInformation/wco:Content');
      FieldByName('TOTAL_COUNT'            ).asString := getValueFromXPath(ROOT_NODE,'wco:Declaration/wco:LoadingListQuantity');

      Post;

      //------------------------------------------------------------------------------
      // Standard2
      //------------------------------------------------------------------------------
      CHILD_NODE := getNodeFromXPath(ROOT_NODE,'wco:Declaration').ChildNodes.First;

      while CHILD_NODE <> nil do
      begin
        if CHILD_NODE.NodeName = 'wco:LPCO' Then
        begin
          ReadStandard2(CHILD_NODE);
        end;
        CHILD_NODE := CHILD_NODE.NextSibling;
      end;

    finally
      Close;
      Free;
    end;
  end;

end;

procedure TGOVCBR_FS7.ReadStandard2(Root: IXMLNode);
var
  SubID : String;
  SubCODE, SubNo : String;
  Child, SubChild : IXMLNode;
begin
  SubID := getValueFromXPath(Root,'wco:Consignment/wco:ConsignmentItem/wco:Commodity/wco:ID');
  SubCODE := LeftStr(SubID,3);
  SubNo := RightStr(SubID,Length(SubID)-3);
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT * FROM RECV_STANDARD2 WHERE DOC_NO = '+QuotedStr(TargetDocumentNo)+' AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(SubNo);
      Open;

      IF RecordCount = 0 Then
      begin
        Append;
        FieldByName('DOC_NO').AsString := TargetDocumentNo;
        FieldByName('SERIAL_CODE').AsString := 'FR2';
        FieldByName('SERIAL_NO').AsString := SubNo;
      end
      else
      begin
        Edit;
      end;

      //허가신번호
      FieldByName('PERMIT_SINGO_NO').AsString := getValue(Root,'wco:ID');
      //허가일자
      FieldByName('PERMIT_SINGO_DATE').AsString := getValue(Root,'wco:IssueDateTime');

      Child := getNodeFromXPath(Root,'wco:Consignment/wco:ConsignmentItem/wco:Commodity');
      //세번부호
      FieldByName('HS').AsString := getValueFromXPath(Child,'wco:Classification/wco:ID');
      //품목코드
      FieldByName('GOODS_CODE').AsString := getValue(Child,'wco:ClassificationNameCode');
      //거래품명
      FieldByName('TRADE_NAME').AsString := getvalue(Child,'wco:CargoDescription');
      //구종별코드
      FieldByName('OLD_JONG_CODE').AsString := getValue(Child,'wco:CategoryCode');
      //모델/규격 성분
      FieldByName('MODEL_SIZE_INGREDIENT').AsString := getValueFromXPath(Child,'wco:Constituent/wco:ElementDescription');
      //모델/규격 수량(단위코드)
      FieldByName('MODEL_QTY').AsString := getValueFromXPath(Child,'wco:DetailedCommodity/wco:CountQuantity');
      FieldByName('MODEL_QTY_UNIT').AsString := getAttributeFromXpath(Child,'kcsUnitCode','wco:DetailedCommodity/wco:CountQuantity');
      //모델/규격
      FieldByName('MODEL_SIZE').AsString := getValueFromXPath(Child,'wco:DetailedCommodity/wco:Description');
      //모델/규격 금액(통화코드)
      FieldByName('MODEL_AMT').AsString := getValueFromXPath(Child,'wco:DetailedCommodity/wco:ValueAmount');
      FieldByName('MODEL_AMT_UNIT').AsString := getAttributeFromXpath(Child,'currencyID','wco:DetailedCommodity/wco:ValueAmount');
      //모델/규격 단가
      FieldByName('MODEL_DANGA').AsString := getValueFromXPath(Child,'wco:DetailedCommodity/kcs:UnitPriceAmount');

      Child := getNodeFromXPath(Root,'wco:Consignment/wco:ConsignmentItem');
      //원산지국가코드
      FieldByName('ORIGIN_NATION_CODE').AsString := getValueFromXPath(Child,'wco:Origin/wco:CountryCode');
      //원산지국가명
      FieldByName('ORIGIN_NATION_NAME').AsString := getValueFromXPath(Child,'wco:Origin/wco:CountryName');

      //위탁제조정보
      Child := getNodeFromXPath(Root,'wco:DetailContents');
      FieldByName('WITAK_SANGHO1').AsString := getValueFromXPath(Child,'wco:Party/gsw:Name');
      FieldByName('WITAK_SANGHO2').AsString := getValueFromXPath(Child,'wco:Party/gsw:Name2');
      FieldByName('WITAK_SANGHO3').AsString := getValueFromXPath(Child,'wco:Party/gsw:Name3');
      FieldByName('WITAK_ADDR1').AsString := getValueFromXPath(Child,'wco:Location/gsw:LineAddress');
      FieldByName('WITAK_ADDR2').AsString := getValueFromXPath(Child,'wco:Location/gsw:LineAddress2');
      FieldByName('WITAK_ADDR3').AsString := getValueFromXPath(Child,'wco:Location/gsw:LineAddress3');
      FieldByName('WITAK_NATION_CODE').AsString := getValueFromXPath(Child,'wco:Location/gsw:CountryCode');
      FieldByName('WITAK_NATIOn_NAME').AsString := getValueFromXPath(Child,'wco:Location/gsw:CountryName');
      //BSE 원산지국가코드
      FieldByName('BSE_ORIGIN_NATION_CODE').AsString := getValueFromXPath(Child,'wco:Location/gsw:OriginCountryCode');
      //BSE 원산지국가명
      FieldByName('BSE_ORIGIN_NATION_NAME').AsString := getValueFromXPath(Child,'wco:Location/gsw:OriginCountryName');
      //BGMP 대상구분코드
      FieldByName('BGMP').AsString := getValueFromXPath(Child,'wco:Indicator/gsw:BGMPObjectYN');
      //DMF대상구분코드
      FieldByName('DMF').AsString := getValueFromXPath(Child,'wco:Indicator/gsw:DMFObjectYN');
      //기능성화장품 대상구분코드
      FieldByName('COSMETIC_GUBUN').AsString := getValueFromXPath(Child,'wco:Product/gsw:DrugCosmeticDistinctionCode');
      //의약품표준코드
      FieldByName('DRUG_STANDARD_CODE').AsString := getValueFromXPath(Child,'wco:Product/gsw:MedicineCode');
      //구품목코드
      FieldByName('OLD_GOODS_CODE').AsString := getValueFromXPath(Child,'wco:Product/gsw:IdentificationID');
      //BSE 대상구분코드
      FieldByName('BSE_CODE').AsString := getValueFromXPath(Child,'wco:Product/gsw:BSESubjectItemCode');
      //기원물질
      FieldByName('ORIGIN_MATTER').AsString := getValueFromXPath(Child,'wco:Product/gsw:OptativeAnimal');
      //추출(사용)부위
      FieldByName('EXTRACTION').AsString := getValueFromXPath(Child,'wco:Product/gsw:AbstractionPart');
      //BATCH NO
      FieldByName('BATCH_NO').AsString := getValueFromXPath(Child,'wco:Product/gsw:BatchNo');

      Post;

      //------------------------------------------------------------------------------
      // 제조정보
      //------------------------------------------------------------------------------
      Close;
      SQL.Text := 'DELETE FROM [RECV_MAKE] WHERE DOC_NO = '+QuotedStr(TargetDocumentNo)+'AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(SubNo);
      ExecSQL;

      Child := getNodeFromXPath(Root,'wco:DetailContents').ChildNodes.First;
      while Child <> nil do
      begin
        IF LowerCase(Child.NodeName) = LowerCase('wco:Document') Then
        begin
          SQL.Text := 'INSERT INTO [RECV_MAKE]([DOC_NO],[SERIAL_CODE],[SERIAL_NO],[MAKE_SERIAL_NO],[MAKE_NO],[MAKE_DATE])'#13#10+
                      'VALUES('+QuotedStr(TargetDocumentNo)+',''FR2'','+QuotedStr(SubNo)+','+
                      QuotedStr(getValue(Child,'gsw:ReferenceID'))+','+
                      QuotedStr(getValue(Child,'gsw:ManufactureID'))+','+
                      QuotedStr(getValue(Child,'gsw:ManufactureDate'))+')';
          ExecSQL;
        end;
        Child := Child.NextSibling;
      end;
      //------------------------------------------------------------------------------
      // 동일성검사
      //------------------------------------------------------------------------------
      Close;
      SQL.Text := 'DELETE FROM [RECV_CHECK] WHERE DOC_NO = '+QuotedStr(TargetDocumentNo)+'AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(SubNo);
      ExecSQL;

      Child := getNodeFromXPath(Root,'wco:Consignment/wco:ConsignmentItem').ChildNodes.First;
      while Child <> nil do
      begin
        IF LowerCase(Child.NodeName) = LowerCase('wco:AdditionalDocument') Then
        begin
          SQL.Text := 'INSERT INTO [RECV_CHECK]([DOC_NO],[SERIAL_CODE],[SERIAL_NO],[CHECK_SERIAL_NO],[CHECK_B_NO],[CHECK_QTY])'#13#10+
                      'VALUES('+QuotedStr(TargetDocumentNo)+',''FR2'','+QuotedStr(SubNo)+','+
                      QuotedStr(getValue(Child,'wco:SequenceNumeric'))+','+
                      QuotedStr(getValue(Child,'wco:ID'))+','+
                      QuotedStr(getValue(Child,'wco:QuantityQuantity'))+')';
          ExecSQL;
        end;
        Child := Child.NextSibling;
      end;
      //------------------------------------------------------------------------------
      // 계약수탁제조
      //------------------------------------------------------------------------------
      Close;
      SQL.Text := 'DELETE FROM [RECV_TAKEN] WHERE DOC_NO = '+QuotedStr(TargetDocumentNo)+'AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(SubNo);
      ExecSQL;

      Child := Root.ChildNodes.First;
      while Child <> nil do
      begin
        IF LowerCase(Child.NodeName) = LowerCase('wco:Agent') Then
        begin
          SQL.Text := 'INSERT INTO [RECV_TAKEN](DOC_NO, SERIAL_CODE, SERIAL_NO, TAKE_NO, NATION_CODE, NATION_NAME, TAKE_SANGHO1, TAKE_SANGHO2, TAKE_SANGHO3, TAKE_ADDR1, TAKE_ADDR2, TAKE_ADDR3)'#13#10+
                      'VALUES('+QuotedStr(TargetDocumentNo)+',''FR2'','+QuotedStr(SubNo)+','+
                      QuotedStr(getValue(Child,'wco:ID'))+','+
                      QuotedStr(getValueFromXPath(Child,'wco:Address/wco:CountryCode'))+','+
                      QuotedStr(getValueFromXPath(Child,'wco:Address/wco:CountryName'))+','+
                      QuotedStr(getValue(Child,'wco:Name'))+','+
                      QuotedStr(getValue(Child,'wco:Name2'))+','+
                      QuotedStr(getValue(Child,'wco:Name3'))+','+
                      QuotedStr(getValueFromXPath(Child,'wco:Address/wco:Line'))+','+
                      QuotedStr(getValueFromXPath(Child,'wco:Address/wco:Line2'))+','+
                      QuotedStr(getValueFromXPath(Child,'wco:Address/wco:Line3'))+')';
          ExecSQL;
        end;
        Child := Child.NextSibling;
      end;
    finally
      Close;
      Free;
    end;
  end;

  UpdateDocument;

end;

procedure TGOVCBR_FS7.UpdateDocument;
var
  TempStr : String;
begin
  inherited;
//------------------------------------------------------------------------------
// 승인통보 적용
//------------------------------------------------------------------------------
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;

      IF TargetDocumentCode = 'GOVCBRFR2' Then
      begin
        TempStr := FormatDateTime('YYYY-MM-DD HH:NN:SS',ConvertStr2Date(IssueDateTime));
        SQL.Text := 'UPDATE STANDARD1 SET isSend = ''완료'', isRECV = ''승인'', isRESULT = '+QuotedStr(ProcessCode)+' ,LastProcessDatetime = '+QuotedStr(TempStr)+#13+
                    'WHERE DOC_NO = '+QuotedStr(TargetDocumentNo);
      end;

      IF Trim(SQL.Text) <> '' Then ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

end.
