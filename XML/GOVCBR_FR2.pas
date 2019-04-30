unit GOVCBR_FR2;

interface

uses
  Db, ADODB, Variants, Dialogs, SysUtils, Classes, Windows, StrUtils, DateUtils,
  xmldom, XMLIntf, msxmldom, XMLDoc,
  KISXML, XMLSource;

Type
  TCompareType = (ctEqual, ctDifferent);
  TGOVCBR_FR2 = class(TKISXMLCreate)
    private
      SQLData : String;
      function getStrCompare(FieldName : String;CompareStr : String = '';CompareType : TCompareType = ctDifferent):Boolean;
      function getStr(FieldName : String):String;
    public
      procedure MakeDocument(SingoNo: String); override;
      procedure Save; override;
  end;

implementation

{ TGOVCBR_FR2 }

function TGOVCBR_FR2.getStrCompare(FieldName : String; CompareStr : String; CompareType : TCompareType): Boolean;
begin
  SQLData := Trim(XMLSource_dm.qryStandard.FieldByName(FieldName).AsString);
  Case CompareType of
    ctEqual : Result := SQLData = CompareStr;
    ctDifferent : Result := SQLData <> CompareStr;
  end;
end;

function TGOVCBR_FR2.getStr(FieldName: String): String;
begin
  Result := Trim(XMLSource_dm.qryStandard.FieldByName(FieldName).AsString);
end;

procedure TGOVCBR_FR2.MakeDocument(SingoNo: String);
var
  i,j : integer;

begin
//------------------------------------------------------------------------------
// 문서 코드
//------------------------------------------------------------------------------
  FDocumentSUB := 'CSW';
  FDocumentCODE := 'FR2';
  CreateXMLHaeder;

  FSingoNo := SingoNo;

  XMLSource_dm.OPEN_FR2(FSingoNo);

  FXMLFileName := 'GOVCBR'+FDocumentCODE+SingoNo+'.xml';

  with XMLSource_dm do
  begin
    //최초검정기관코드
//    Comment(ROOT_NODE, qryStandardFIRST_CHECK_AGENCY_NAME.AsString);
    ROOT_NODE.AddChild('wco:DeclarationOfficeID').Text := qryStandardFIRST_CHECK_AGENCY_CODE.AsString;
    //전송구분
    ROOT_NODE.AddChild('wco:FunctionCode').Text := qryStandardSEND_TYPE.AsString;
    //요건신청번호
    ROOT_NODE.AddChild('wco:ID').Text := FSingoNo;
    //신청일자
    ROOT_NODE.AddChild('wco:IssueDateTime').Text := FormatDateTime('YYYYMMDD',qryStandardREQUEST_DATE.AsDateTime);
    //항목총건수
    ROOT_NODE.AddChild('wco:LoadingListQuantity').Text := IntToStr(qryStandardTOTAL_COUNT.AsInteger);
    //문서형태구분
    ROOT_NODE.AddChild('wco:TypeCode').Text := 'GOVCBR'+FDocumentCODE;
    //제재구분코드
    ROOT_NODE.AddChild('wco:TransactionNatureCode').Text := qryStandardJEJE_GUBUN.AsString;
    //신청문서구분
    ROOT_NODE.AddChild('kcs:SubTypeCode').Text := qryStandardDOC_GUBUN.AsString;
    //취소신청사유
    IF getStrCompare('SEND_TYPE','1',ctEqual) Then
      ROOT_NODE.AddChild('kcs:Reason').Text := SQLData;
    //최초검정기관명
//    Comment(ROOT_NODE, qryStandardFIRST_CHECK_AGENCY_CODE.AsString);
    ROOT_NODE.AddChild('kcs:DeclarationOffice').Text := qryStandardFIRST_CHECK_AGENCY_NAME.AsString;

  //------------------------------------------------------------------------------
  // AdditionalInformation 노드시작
  //------------------------------------------------------------------------------
    //수입자기재사항
    IF getStrCompare('IMPORT_MEMO') Then
      ROOT_NODE.AddChild('wco:AdditionalInformation').AddChild('wco:Content').Text := SQLData;

  //------------------------------------------------------------------------------
  // Agent 노드시작
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:Agent');
    //수입자사업자등록번호(KTX)/수입자무역업허가번호(KFT)
    CHILD_NODE := CHILD_NODE.AddChild('wco:ID');
    CHILD_NODE.Attributes['schemeAgencyID'] := 'KTX';
    CHILD_NODE.Text := getStr('IMPORT_SAUP_NO');
    doChildNodeParent;

    if getStrCompare('IMPORT_TRADE_NO') Then
    begin
      CHILD_NODE := CHILD_NODE.AddChild('wco:ID');
      CHILD_NODE.Attributes['schemeAgencyID'] := 'KFT';
      CHILD_NODE.Text := SQLData;
      doChildNodeParent;
    end;

    //수입자업체상호
    CHILD_NODE.AddChild('wco:Name').Text := getStr('IMPORT_SANGHO');
    //수입자구분코드
    if qryStandardIMPORT_TYPE.AsBoolean Then
      CHILD_NODE.AddChild('wco:RoleCode').Text := 'A'
    else
      CHILD_NODE.AddChild('wco:RoleCode').Text := 'B';

    CHILD_NODE := CHILD_NODE.AddChild('wco:Address');
    //수입자상세주소
    if getStrCompare('IMPORT_ADDR2') Then
    CHILD_NODE.AddChild('wco:Line').Text := SQLData;
    //수입자우편번호
    if getStrCompare('IMPORT_POST_NO') Then
    CHILD_NODE.AddChild('wco:PostcodeID').Text := SQLData;
    //수입자기본주소
    CHILD_NODE.AddChild('kcs:Description').Text := getStr('IMPORT_ADDR1');
    doChildNodeParent;

    //수입자대표명
    CHILD_NODE.AddChild('wco:Contact').AddChild('kcs:RepresentativeName').Text := getStr('IMPORT_DAEPYO');

  //------------------------------------------------------------------------------
  // Control 노드 시작
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:Control');

    //품질검사기관코드 C
    IF getStrCompare('QUALITY_AGENCY_CODE') Then
    begin
      CHILD_NODE.AddChild('wco:ReviewPlaceID').Text := SQLData;
      //품질검사기관명 C
      CHILD_NODE.AddChild('wco:ReviewPlaceName').Text := getStr('QUALITY_AGENCY_NAME');
    end;

    CHILD_NODE := CHILD_NODE.AddChild('wco:Certifier');
    //식품의약품안전처 관할지방코드 M
    CHILD_NODE.AddChild('wco:ID').Text := getStr('REGION_CODE');
    //식품의약안전처 관할지방명 M
    CHILD_NODE.AddChild('wco:Name').Text := getStr('REGION_NAME');

  //------------------------------------------------------------------------------
  // DutyTaxFee/payment 노드 시작
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:DutyTaxFee').AddChild('wco:Payment');
  //  결제방법코드(CD : 사후 또는 동시 송금방식(COD,CAD),
  //                 DA : D / A,
  //                 DP : D / P,
  //                 GN : 무상 거래,
  //                 GO : 기타 유상,
  //                 LH : 분할영수(지급)방식,
  //                 LS : 일람출급 L/C,
  //                 LU : 기한부 L/C,
  //                 PT : 임가공 지급방식의 위탁(수탁)가공 무역,
  //                 TT : 단순송금방식(T/T,M/T),
  //                 OA : O/A(open account) M
    CHILD_NODE.AddChild('wco:MethodCode').Text := getStr('PAY_TYPE');

    //결제금액(통화코드) M
    CHILD_NODE := CHILD_NODE.AddChild('wco:PaymentAmount');
    CHILD_NODE.Attributes['currencyID'] := getStr('PAY_UNIT');
    CHILD_NODE.Text  := getStr('PAY_AMT');
    doChildNodeParent;
    //결제기간 C
    if getStrCompare('PAY_BETWEEN_DATE') Then
      CHILD_NODE.AddChild('kcs:PeriodDescription').Text := SQLData;

  //------------------------------------------------------------------------------
  // Exporter 노드 시작
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('Exporter');
    //수출자업체상호 M
    CHILD_NODE.AddChild('wco:Name').Text := getStr('EXPORT_SANGHO');

    CHILD_NODE := CHILD_NODE.AddChild('wco:Address');
    //수출자국가코드 M
    CHILD_NODE.AddChild('wco:CountryCode').Text := getStr('EXPORT_NATION_CODE');
    //수출자국가명 M
    CHILD_NODE.AddChild('wco:CountryName').Text := getStr('EXPORT_NATION_NAME');
    //수출자주소 C
    if getStrCompare('EXPORT_ADDR1') Then
      CHILD_NODE.AddChild('wco:Line').Text := SQLData;
    doChildNodeParent;

  //------------------------------------------------------------------------------
  // Importer 노드 시작
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('Importer');
    //수입화주사업자등록번호
    CHILD_NODE.AddChild('wco:ID').Text := getStr('HWAJU_SAUP_NO');
    //수입화주업체상호
    CHILD_NODE.AddChild('wco:Name').Text := getStr('HWAJU_SANGHO');

    CHILD_NODE := CHILD_NODE.AddChild('wco:Address');
    //수입화주상세주소 C
    if getStrCompare('HWAJU_ADDR2') Then
      CHILD_NODE.AddChild('wco:Line').Text := SQLData;
    //수입화주우편번호 C
    if getStrCompare('HWAJU_POST_NO') Then    
    CHILD_NODE.AddChild('wco:PostcodeID').Text := SQLData;
    //수입화주기본주소
    CHILD_NODE.AddChild('wco:Description').Text := getStr('HWAJU_ADDR1');
    doChildNodeParent;

    CHILD_NODE := CHILD_NODE.AddChild('wco:Contact');
    //수입화주 대표명
    CHILD_NODE.AddChild('kcs:RepresentativeName').Text := getStr('HWAJU_DAEPYO');

  //------------------------------------------------------------------------------
  // TradeTerms 노드 시작
  //------------------------------------------------------------------------------
    //인도조건코드 M
    ROOT_NODE.AddChild('wco:TradeTerms').AddChild('wco:ConditionCode').Text := getStr('INDO_TYPE');
  //------------------------------------------------------------------------------
  // UnloadingLocation 노드 시작
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:UnloadingLocation');
    //도착항코드 M
    IF Length(getStr('DEST_PORT_CODE')) = 5 Then
      CHILD_NODE.AddChild('wco:ID').Text := RightStr( getStr('DEST_PORT_CODE') , 3)
    else
      CHILD_NODE.AddChild('wco:ID').Text := getStr('DEST_PORT_CODE');
    //도착항명 M
    CHILD_NODE.AddChild('wco:Name').Text := getStr('DEST_PORT_NAME');
    CHILD_NODE.ParentNode;


  //------------------------------------------------------------------------------
  // LPCO 노드 시작 반복 1..999
  //------------------------------------------------------------------------------
    while not qryStandard.Eof do
    begin
      // ROOT / LPCO
      CHILD_NODE := ROOT_NODE.AddChild('wco:LPCO');
        //허가신고번호 C
        IF getStrCompare('PERMIT_SINGO_NO') Then
        CHILD_NODE.AddChild('wco:ID').Text := SQLData;
        //허가신고일자(CCYYMMDD) C
        IF getStrCompare('PERMIT_SINGO_DATE') Then
        CHILD_NODE.AddChild('wco:IssueDateTime').Text := SQLData;
      // ROOT / LPCO / Consignment
        CHILD_NODE := CHILD_NODE.AddChild('wco:Consignment');
      // ROOT / LPCO / Consignment / ConsignmentItem
          CHILD_NODE := CHILD_NODE.AddChild('wco:ConsignmentItem');
          
            OPEN_FR2_CHECK(getStr('DOC_NO'),getStr('SERIAL_NO'));
            while not qryCheck.Eof do
            begin
      // ROOT / LPCO / Consignment / ConsignmentItem / AdditionalDocument
              CHILD_NODE := CHILD_NODE.AddChild('wco:AdditionalDocument');
              //동일성검사발급번호 M
              CHILD_NODE.AddChild('wco:ID').Text := qryCheck.FieldByName('CHECK_B_NO').AsString;
              //동일성검사수량 M
              CHILD_NODE.AddChild('wco:QuantityQuantity').Text := qryCheck.FieldByName('CHECK_QTY').AsString;
              //동일성검사일련번호 M
              CHILD_NODE.AddChild('wco:SequenceNumeric').Text := FormatFloat('0',qryCheck.FieldByName('CHECK_SERIAL_NO').AsInteger);
      // ROOT / LPCO / Consignment / ConsignmentItem
              doChildNodeParent;
              qryCheck.Next;
            end;
            CLOSE_FR2_CHECK;

      // ROOT / LPCO / Consignment / ConsignmentItem / Commodity
            CHILD_NODE := CHILD_NODE.AddChild('wco:Commodity');
            //품목코드 M
            CHILD_NODE.AddChild('wco:ClassificationNameCode').Text := getStr('GOODS_CODE');
            //거래품명 M
            CHILD_NODE.AddChild('wco:CargoDescription').Text := getStr('TRADE_NAME');
            //품목식별부호 M
            CHILD_NODE.AddChild('wco:ID').Text := getStr('SERIAL_CODE')+getStr('SERIAL_NO');
            //구 종별코드 C
//            if getStrCompare('OLD_GOODS_CODE') Then
            if getStrCompare('OLD_JONG_CODE') Then
             CHILD_NODE.AddChild('wco:CategoryCode').Text := SQLData;
            //HS부호 M
            CHILD_NODE.AddChild('wco:Classification').AddChild('wco:ID').Text := getStr('HS');
            //모델규격성분 C
            IF getStrCompare('MODEL_SIZE_INGREDIENT') Then
            CHILD_NODE.AddChild('wco:Constituent').AddChild('wco:ElementDescription').Text := SQLData;
      // ROOT / LPCO / Consignment / ConsignmentItem / Commodity / DetailedCommodity
              CHILD_NODE := CHILD_NODE.AddChild('wco:DetailedCommodity');
                //모델규격수량(단위) M
                CHILD_NODE := CHILD_NODE.AddChild('wco:CountQuantity');
                CHILD_NODE.Attributes['kcsUnitCode'] := getStr('MODEL_QTY_UNIT');
                CHILD_NODE.Text := getStr('MODEL_QTY');
                doChildNodeParent;
                //모델규격
                CHILD_NODE.AddChild('wco:Description').Text := getStr('MODEL_SIZE');
                //모델규격금액(통화코드) M
                CHILD_NODE := CHILD_NODE.AddChild('wco:ValueAmount');
                CHILD_NODE.Attributes['currencyID'] := getStr('MODEL_AMT_UNIT');
                CHILD_NODE.Text := getStr('MODEL_AMT');
                doChildNodeParent;
                //모델 규격단가 M
                CHILD_NODE.AddChild('kcs:UnitPriceAmount').Text := getStr('MODEL_DANGA');
      // ROOT / LPCO / Consignment / ConsignmentItem / Commodity
              doChildNodeParent;
      // ROOT / LPCO / Consignment / ConsignmentItem
            doChildNodeParent;
      // ROOT / LPCO / Consignment / ConsignmentItem / Origin
            CHILD_NODE := CHILD_NODE.AddChild('wco:Origin');
            //원산지 국가코드 M
            IF getStrCompare('ORIGIN_NATION_CODE') Then
            CHILD_NODE.AddChild('wco:CountryCode').Text := SQLData;
            //원산지 국가명 M
            IF getStrCompare('ORIGIN_NATION_NAME') Then
            CHILD_NODE.AddChild('wco:CountryName').Text := SQLData;
      // ROOT / LPCO / Consignment / ConsignmentItem
            doChildNodeParent;
      // ROOT / LPCO / Consignment
            doChildNodeParent;
      // ROOT / LPCO
          doChildNodeParent;

        OPEN_FR2_TAKEN(getStr('DOC_NO'),getStr('SERIAL_NO'));
        while not qryTaken.Eof do
        begin
      // ROOT / LPCO / Agent
          CHILD_NODE :=  CHILD_NODE.AddChild('wco:Agent');
          //계약(수탁)제조일련번호 M
          // 2019-04-30 이덕수
          // 수탁제조 일련번호는 001이 아닌 1로 작성되어야함
          //CHILD_NODE.AddChild('wco:ID').Text := qryTaken.FieldByName('TAKE_NO').AsString;
          CHILD_NODE.AddChild('wco:ID').Text := FormatFloat('0',qryTaken.FieldByName('TAKE_NO').AsInteger);
          //계약(수탁)제조상호1 M
          CHILD_NODE.AddChild('wco:Name').Text := qryTaken.FieldByName('TAKE_SANGHO1').AsString;
          //계약(수탁)제조상호2 C
          IF qryTaken.FieldByName('TAKE_SANGHO2').AsString <> '' Then
          CHILD_NODE.AddChild('wco:Name1').Text := qryTaken.FieldByName('TAKE_SANGHO2').AsString;
          //계약(수탁)제조상호3 C
          IF qryTaken.FieldByName('TAKE_SANGHO3').AsString <> '' Then
          CHILD_NODE.AddChild('wco:Name2').Text := qryTaken.FieldByName('TAKE_SANGHO3').AsString;
      // ROOT / LPCO / Agent / Address
            CHILD_NODE := CHILD_NODE.AddChild('Address');
            //계약(수탁)제조국가코드 M
            CHILD_NODE.AddChild('wco:CountryCode').Text := qryTaken.FieldByName('NATION_CODE').AsString;
            //계약(수탁)제조국가명 M
            CHILD_NODE.AddChild('wco:CountryName').Text := qryTaken.FieldByName('NATION_NAME').AsString;
            //계약(수탁)제조주소1 M
            CHILD_NODE.AddChild('wco:Line').Text := qryTaken.FieldByName('TAKE_ADDR1').AsString;
            //계약(수탁)제조주소2 C
            IF qryTaken.FieldByName('TAKE_ADDR2').AsString <> '' Then
            CHILD_NODE.AddChild('wco:Line2').Text := qryTaken.FieldByName('TAKE_ADDR2').AsString;
            //계약(수탁)제조주소3 C
            IF qryTaken.FieldByName('TAKE_ADDR3').AsString <> '' Then
            CHILD_NODE.AddChild('wco:Line3').Text := qryTaken.FieldByName('TAKE_ADDR3').AsString;
      // ROOT / LPCO / Agent
            doChildNodeParent;
      // ROOT / LPCO
          doChildNodeParent;
          qryTaken.Next;
        end;
        CLOSE_FR2_TAKEN;
      // ROOT / LPCO / DetailContents
      CHILD_NODE := CHILD_NODE.AddChild('wco:DetailContents');

      OPEN_FR2_MAKE(getStr('DOC_NO'),getStr('SERIAL_NO'));
      while not qryMake.Eof do
      begin
      // ROOT / LPCO / DetailContents / Document
        CHILD_NODE := CHILD_NODE.AddChild('wco:Document');
        //제조정보일련번호 M
        CHILD_NODE.AddChild('wco:ReferenceID').Text := qryMake.FieldByName('MAKE_SERIAL_NO').AsString;
        //제조일자(CCYYMMDD C
        IF Trim(qryMake.FieldByName('MAKE_DATE').AsString) <> '' Then
        CHILD_NODE.AddChild('wco:ManufactureDate').Text := qryMake.FieldByName('MAKE_DATE').AsString;
        //제조번호 M
        CHILD_NODE.AddChild('wco:ManufactureID').Text := qryMake.FieldByName('MAKE_NO').AsString;
      // ROOT / LPCO / DetailContents
        doChildNodeParent;
        qryMake.Next;
      end;
      CLOSE_FR2_MAKE;

      // ROOT / LPCO / DetailContents / Party
      CHILD_NODE := CHILD_NODE.AddChild('wco:Party');
      //(위탁)제조상호1 M
      CHILD_NODE.AddChild('gsw:Name').Text := getStr('WITAK_SANGHO1');
      //(위탁)제조상호2 C
      IF getStrCompare('WITAK_SANGHO2') Then
      CHILD_NODE.AddChild('gsw:Name2').Text := SQLData;
      //(위탁)제조상호3 C
      IF getStrCompare('WITAK_SANGHO3') Then
      CHILD_NODE.AddChild('gsw:Name3').Text := SQLData;
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      // ROOT / LPCO / DetailContents / Location
      CHILD_NODE := CHILD_NODE.AddChild('wco:Location');
      //(위탁)제조국가코드 M
      CHILD_NODE.AddChild('gsw:CountryCode').Text := getStr('WITAK_NATION_CODE');
      //(위탁)제조국가명 M
      CHILD_NODE.AddChild('gsw:CountryName').Text := getStr('WITAK_NATION_NAME');
      //(위탁)제조주소1 M
      CHILD_NODE.AddChild('gsw:LineAddress').Text := getStr('WITAK_ADDR1');
      //(위탁)제조주소2 C
      IF getStrCompare('WITAK_ADDR2') Then
      CHILD_NODE.AddChild('gsw:LineAddress2').Text := SQLData;
      //(위탁)제조주소3 C
      IF getStrCompare('WITAK_ADDR3') Then
      CHILD_NODE.AddChild('gsw:LineAddress3').Text := SQLData;
      //BSE 원산지 국가코드 C
      IF getStr('BSE_CODE') <> '1AV' Then
      begin
        IF getStrCompare('BSE_ORIGIN_NATION_CODE') Then
        CHILD_NODE.AddChild('gsw:OriginCountryCode').Text := SQLData;
        //BSE 원산지 국가명  C
        IF getStrCompare('BSE_ORIGIN_NATION_NAME') Then
        CHILD_NODE.AddChild('gsw:OriginCountryName').Text := SQLData;
      end;
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      // ROOT / LPCO / DetailContents / Indicator
      CHILD_NODE := CHILD_NODE.AddChild('wco:Indicator');
      //BGMP대상구분코드(1AV : 비대상/1AU : 대상)    M
      CHILD_NODE.AddChild('gsw:BGMPObjectYN').Text := getStr('BGMP');
      //DMF대상구분코드(1AV : 비대상/1AU : 대상)    M
      CHILD_NODE.AddChild('gsw:DMFObjectYN').Text := getStr('DMF');
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      // ROOT / LPCO / DetailContents / Product
      CHILD_NODE := CHILD_NODE.AddChild('wco:Product');
      //기능성화장품대상구분코드(1AV : 비대상/1AU : 대상)
      CHILD_NODE.AddChild('gsw:DrugCosmeticDistinctionCode').Text := getStr('COSMETIC_GUBUN');
      //의약품표준코드
      IF getStrCompare('DRUG_STANDARD_CODE') Then
      CHILD_NODE.AddChild('gsw:MedicineCode').Text := SQLData;
      //구 품목코드
      IF getStrCompare('OLD_GOODS_CODE') Then
      CHILD_NODE.AddChild('gsw:IdentificationID').Text := SQLData;
      //BSE 대상구분코드 M
      CHILD_NODE.AddChild('gsw:BSESubjectItemCode').Text := getStr('BSE_CODE');
      //기원물질 C
      IF getStrCompare('ORIGIN_MATTER') Then
      CHILD_NODE.AddChild('gsw:OptativeAnimal').Text := SQLData;
      //추출(사용)부위 C
      IF getStrCompare('EXTRACTION') Then
      CHILD_NODE.AddChild('gsw:AbstractionPart').Text := SQLData;
      //BATCH NO  C
      IF getStrCompare('BATCH_NO') Then
      CHILD_NODE.AddChild('gsw:BatchNo').Text := SQLData;
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      qryStandard.Next;
    end;
  end;
  Save;
end;

procedure TGOVCBR_FR2.Save;
begin
  inherited;

end;

end.
