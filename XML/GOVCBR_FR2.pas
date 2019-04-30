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
// ���� �ڵ�
//------------------------------------------------------------------------------
  FDocumentSUB := 'CSW';
  FDocumentCODE := 'FR2';
  CreateXMLHaeder;

  FSingoNo := SingoNo;

  XMLSource_dm.OPEN_FR2(FSingoNo);

  FXMLFileName := 'GOVCBR'+FDocumentCODE+SingoNo+'.xml';

  with XMLSource_dm do
  begin
    //���ʰ�������ڵ�
//    Comment(ROOT_NODE, qryStandardFIRST_CHECK_AGENCY_NAME.AsString);
    ROOT_NODE.AddChild('wco:DeclarationOfficeID').Text := qryStandardFIRST_CHECK_AGENCY_CODE.AsString;
    //���۱���
    ROOT_NODE.AddChild('wco:FunctionCode').Text := qryStandardSEND_TYPE.AsString;
    //��ǽ�û��ȣ
    ROOT_NODE.AddChild('wco:ID').Text := FSingoNo;
    //��û����
    ROOT_NODE.AddChild('wco:IssueDateTime').Text := FormatDateTime('YYYYMMDD',qryStandardREQUEST_DATE.AsDateTime);
    //�׸��ѰǼ�
    ROOT_NODE.AddChild('wco:LoadingListQuantity').Text := IntToStr(qryStandardTOTAL_COUNT.AsInteger);
    //�������±���
    ROOT_NODE.AddChild('wco:TypeCode').Text := 'GOVCBR'+FDocumentCODE;
    //���籸���ڵ�
    ROOT_NODE.AddChild('wco:TransactionNatureCode').Text := qryStandardJEJE_GUBUN.AsString;
    //��û��������
    ROOT_NODE.AddChild('kcs:SubTypeCode').Text := qryStandardDOC_GUBUN.AsString;
    //��ҽ�û����
    IF getStrCompare('SEND_TYPE','1',ctEqual) Then
      ROOT_NODE.AddChild('kcs:Reason').Text := SQLData;
    //���ʰ��������
//    Comment(ROOT_NODE, qryStandardFIRST_CHECK_AGENCY_CODE.AsString);
    ROOT_NODE.AddChild('kcs:DeclarationOffice').Text := qryStandardFIRST_CHECK_AGENCY_NAME.AsString;

  //------------------------------------------------------------------------------
  // AdditionalInformation ������
  //------------------------------------------------------------------------------
    //�����ڱ������
    IF getStrCompare('IMPORT_MEMO') Then
      ROOT_NODE.AddChild('wco:AdditionalInformation').AddChild('wco:Content').Text := SQLData;

  //------------------------------------------------------------------------------
  // Agent ������
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:Agent');
    //�����ڻ���ڵ�Ϲ�ȣ(KTX)/�����ڹ������㰡��ȣ(KFT)
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

    //�����ھ�ü��ȣ
    CHILD_NODE.AddChild('wco:Name').Text := getStr('IMPORT_SANGHO');
    //�����ڱ����ڵ�
    if qryStandardIMPORT_TYPE.AsBoolean Then
      CHILD_NODE.AddChild('wco:RoleCode').Text := 'A'
    else
      CHILD_NODE.AddChild('wco:RoleCode').Text := 'B';

    CHILD_NODE := CHILD_NODE.AddChild('wco:Address');
    //�����ڻ��ּ�
    if getStrCompare('IMPORT_ADDR2') Then
    CHILD_NODE.AddChild('wco:Line').Text := SQLData;
    //�����ڿ����ȣ
    if getStrCompare('IMPORT_POST_NO') Then
    CHILD_NODE.AddChild('wco:PostcodeID').Text := SQLData;
    //�����ڱ⺻�ּ�
    CHILD_NODE.AddChild('kcs:Description').Text := getStr('IMPORT_ADDR1');
    doChildNodeParent;

    //�����ڴ�ǥ��
    CHILD_NODE.AddChild('wco:Contact').AddChild('kcs:RepresentativeName').Text := getStr('IMPORT_DAEPYO');

  //------------------------------------------------------------------------------
  // Control ��� ����
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:Control');

    //ǰ���˻����ڵ� C
    IF getStrCompare('QUALITY_AGENCY_CODE') Then
    begin
      CHILD_NODE.AddChild('wco:ReviewPlaceID').Text := SQLData;
      //ǰ���˻����� C
      CHILD_NODE.AddChild('wco:ReviewPlaceName').Text := getStr('QUALITY_AGENCY_NAME');
    end;

    CHILD_NODE := CHILD_NODE.AddChild('wco:Certifier');
    //��ǰ�Ǿ�ǰ����ó ���������ڵ� M
    CHILD_NODE.AddChild('wco:ID').Text := getStr('REGION_CODE');
    //��ǰ�Ǿ����ó ��������� M
    CHILD_NODE.AddChild('wco:Name').Text := getStr('REGION_NAME');

  //------------------------------------------------------------------------------
  // DutyTaxFee/payment ��� ����
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:DutyTaxFee').AddChild('wco:Payment');
  //  ��������ڵ�(CD : ���� �Ǵ� ���� �۱ݹ��(COD,CAD),
  //                 DA : D / A,
  //                 DP : D / P,
  //                 GN : ���� �ŷ�,
  //                 GO : ��Ÿ ����,
  //                 LH : ���ҿ���(����)���,
  //                 LS : �϶���� L/C,
  //                 LU : ���Ѻ� L/C,
  //                 PT : �Ӱ��� ���޹���� ��Ź(��Ź)���� ����,
  //                 TT : �ܼ��۱ݹ��(T/T,M/T),
  //                 OA : O/A(open account) M
    CHILD_NODE.AddChild('wco:MethodCode').Text := getStr('PAY_TYPE');

    //�����ݾ�(��ȭ�ڵ�) M
    CHILD_NODE := CHILD_NODE.AddChild('wco:PaymentAmount');
    CHILD_NODE.Attributes['currencyID'] := getStr('PAY_UNIT');
    CHILD_NODE.Text  := getStr('PAY_AMT');
    doChildNodeParent;
    //�����Ⱓ C
    if getStrCompare('PAY_BETWEEN_DATE') Then
      CHILD_NODE.AddChild('kcs:PeriodDescription').Text := SQLData;

  //------------------------------------------------------------------------------
  // Exporter ��� ����
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('Exporter');
    //�����ھ�ü��ȣ M
    CHILD_NODE.AddChild('wco:Name').Text := getStr('EXPORT_SANGHO');

    CHILD_NODE := CHILD_NODE.AddChild('wco:Address');
    //�����ڱ����ڵ� M
    CHILD_NODE.AddChild('wco:CountryCode').Text := getStr('EXPORT_NATION_CODE');
    //�����ڱ����� M
    CHILD_NODE.AddChild('wco:CountryName').Text := getStr('EXPORT_NATION_NAME');
    //�������ּ� C
    if getStrCompare('EXPORT_ADDR1') Then
      CHILD_NODE.AddChild('wco:Line').Text := SQLData;
    doChildNodeParent;

  //------------------------------------------------------------------------------
  // Importer ��� ����
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('Importer');
    //����ȭ�ֻ���ڵ�Ϲ�ȣ
    CHILD_NODE.AddChild('wco:ID').Text := getStr('HWAJU_SAUP_NO');
    //����ȭ�־�ü��ȣ
    CHILD_NODE.AddChild('wco:Name').Text := getStr('HWAJU_SANGHO');

    CHILD_NODE := CHILD_NODE.AddChild('wco:Address');
    //����ȭ�ֻ��ּ� C
    if getStrCompare('HWAJU_ADDR2') Then
      CHILD_NODE.AddChild('wco:Line').Text := SQLData;
    //����ȭ�ֿ����ȣ C
    if getStrCompare('HWAJU_POST_NO') Then    
    CHILD_NODE.AddChild('wco:PostcodeID').Text := SQLData;
    //����ȭ�ֱ⺻�ּ�
    CHILD_NODE.AddChild('wco:Description').Text := getStr('HWAJU_ADDR1');
    doChildNodeParent;

    CHILD_NODE := CHILD_NODE.AddChild('wco:Contact');
    //����ȭ�� ��ǥ��
    CHILD_NODE.AddChild('kcs:RepresentativeName').Text := getStr('HWAJU_DAEPYO');

  //------------------------------------------------------------------------------
  // TradeTerms ��� ����
  //------------------------------------------------------------------------------
    //�ε������ڵ� M
    ROOT_NODE.AddChild('wco:TradeTerms').AddChild('wco:ConditionCode').Text := getStr('INDO_TYPE');
  //------------------------------------------------------------------------------
  // UnloadingLocation ��� ����
  //------------------------------------------------------------------------------
    CHILD_NODE := ROOT_NODE.AddChild('wco:UnloadingLocation');
    //�������ڵ� M
    IF Length(getStr('DEST_PORT_CODE')) = 5 Then
      CHILD_NODE.AddChild('wco:ID').Text := RightStr( getStr('DEST_PORT_CODE') , 3)
    else
      CHILD_NODE.AddChild('wco:ID').Text := getStr('DEST_PORT_CODE');
    //�����׸� M
    CHILD_NODE.AddChild('wco:Name').Text := getStr('DEST_PORT_NAME');
    CHILD_NODE.ParentNode;


  //------------------------------------------------------------------------------
  // LPCO ��� ���� �ݺ� 1..999
  //------------------------------------------------------------------------------
    while not qryStandard.Eof do
    begin
      // ROOT / LPCO
      CHILD_NODE := ROOT_NODE.AddChild('wco:LPCO');
        //�㰡�Ű��ȣ C
        IF getStrCompare('PERMIT_SINGO_NO') Then
        CHILD_NODE.AddChild('wco:ID').Text := SQLData;
        //�㰡�Ű�����(CCYYMMDD) C
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
              //���ϼ��˻�߱޹�ȣ M
              CHILD_NODE.AddChild('wco:ID').Text := qryCheck.FieldByName('CHECK_B_NO').AsString;
              //���ϼ��˻���� M
              CHILD_NODE.AddChild('wco:QuantityQuantity').Text := qryCheck.FieldByName('CHECK_QTY').AsString;
              //���ϼ��˻��Ϸù�ȣ M
              CHILD_NODE.AddChild('wco:SequenceNumeric').Text := FormatFloat('0',qryCheck.FieldByName('CHECK_SERIAL_NO').AsInteger);
      // ROOT / LPCO / Consignment / ConsignmentItem
              doChildNodeParent;
              qryCheck.Next;
            end;
            CLOSE_FR2_CHECK;

      // ROOT / LPCO / Consignment / ConsignmentItem / Commodity
            CHILD_NODE := CHILD_NODE.AddChild('wco:Commodity');
            //ǰ���ڵ� M
            CHILD_NODE.AddChild('wco:ClassificationNameCode').Text := getStr('GOODS_CODE');
            //�ŷ�ǰ�� M
            CHILD_NODE.AddChild('wco:CargoDescription').Text := getStr('TRADE_NAME');
            //ǰ��ĺ���ȣ M
            CHILD_NODE.AddChild('wco:ID').Text := getStr('SERIAL_CODE')+getStr('SERIAL_NO');
            //�� �����ڵ� C
//            if getStrCompare('OLD_GOODS_CODE') Then
            if getStrCompare('OLD_JONG_CODE') Then
             CHILD_NODE.AddChild('wco:CategoryCode').Text := SQLData;
            //HS��ȣ M
            CHILD_NODE.AddChild('wco:Classification').AddChild('wco:ID').Text := getStr('HS');
            //�𵨱԰ݼ��� C
            IF getStrCompare('MODEL_SIZE_INGREDIENT') Then
            CHILD_NODE.AddChild('wco:Constituent').AddChild('wco:ElementDescription').Text := SQLData;
      // ROOT / LPCO / Consignment / ConsignmentItem / Commodity / DetailedCommodity
              CHILD_NODE := CHILD_NODE.AddChild('wco:DetailedCommodity');
                //�𵨱԰ݼ���(����) M
                CHILD_NODE := CHILD_NODE.AddChild('wco:CountQuantity');
                CHILD_NODE.Attributes['kcsUnitCode'] := getStr('MODEL_QTY_UNIT');
                CHILD_NODE.Text := getStr('MODEL_QTY');
                doChildNodeParent;
                //�𵨱԰�
                CHILD_NODE.AddChild('wco:Description').Text := getStr('MODEL_SIZE');
                //�𵨱԰ݱݾ�(��ȭ�ڵ�) M
                CHILD_NODE := CHILD_NODE.AddChild('wco:ValueAmount');
                CHILD_NODE.Attributes['currencyID'] := getStr('MODEL_AMT_UNIT');
                CHILD_NODE.Text := getStr('MODEL_AMT');
                doChildNodeParent;
                //�� �԰ݴܰ� M
                CHILD_NODE.AddChild('kcs:UnitPriceAmount').Text := getStr('MODEL_DANGA');
      // ROOT / LPCO / Consignment / ConsignmentItem / Commodity
              doChildNodeParent;
      // ROOT / LPCO / Consignment / ConsignmentItem
            doChildNodeParent;
      // ROOT / LPCO / Consignment / ConsignmentItem / Origin
            CHILD_NODE := CHILD_NODE.AddChild('wco:Origin');
            //������ �����ڵ� M
            IF getStrCompare('ORIGIN_NATION_CODE') Then
            CHILD_NODE.AddChild('wco:CountryCode').Text := SQLData;
            //������ ������ M
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
          //���(��Ź)�����Ϸù�ȣ M
          // 2019-04-30 �̴���
          // ��Ź���� �Ϸù�ȣ�� 001�� �ƴ� 1�� �ۼ��Ǿ����
          //CHILD_NODE.AddChild('wco:ID').Text := qryTaken.FieldByName('TAKE_NO').AsString;
          CHILD_NODE.AddChild('wco:ID').Text := FormatFloat('0',qryTaken.FieldByName('TAKE_NO').AsInteger);
          //���(��Ź)������ȣ1 M
          CHILD_NODE.AddChild('wco:Name').Text := qryTaken.FieldByName('TAKE_SANGHO1').AsString;
          //���(��Ź)������ȣ2 C
          IF qryTaken.FieldByName('TAKE_SANGHO2').AsString <> '' Then
          CHILD_NODE.AddChild('wco:Name1').Text := qryTaken.FieldByName('TAKE_SANGHO2').AsString;
          //���(��Ź)������ȣ3 C
          IF qryTaken.FieldByName('TAKE_SANGHO3').AsString <> '' Then
          CHILD_NODE.AddChild('wco:Name2').Text := qryTaken.FieldByName('TAKE_SANGHO3').AsString;
      // ROOT / LPCO / Agent / Address
            CHILD_NODE := CHILD_NODE.AddChild('Address');
            //���(��Ź)���������ڵ� M
            CHILD_NODE.AddChild('wco:CountryCode').Text := qryTaken.FieldByName('NATION_CODE').AsString;
            //���(��Ź)���������� M
            CHILD_NODE.AddChild('wco:CountryName').Text := qryTaken.FieldByName('NATION_NAME').AsString;
            //���(��Ź)�����ּ�1 M
            CHILD_NODE.AddChild('wco:Line').Text := qryTaken.FieldByName('TAKE_ADDR1').AsString;
            //���(��Ź)�����ּ�2 C
            IF qryTaken.FieldByName('TAKE_ADDR2').AsString <> '' Then
            CHILD_NODE.AddChild('wco:Line2').Text := qryTaken.FieldByName('TAKE_ADDR2').AsString;
            //���(��Ź)�����ּ�3 C
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
        //���������Ϸù�ȣ M
        CHILD_NODE.AddChild('wco:ReferenceID').Text := qryMake.FieldByName('MAKE_SERIAL_NO').AsString;
        //��������(CCYYMMDD C
        IF Trim(qryMake.FieldByName('MAKE_DATE').AsString) <> '' Then
        CHILD_NODE.AddChild('wco:ManufactureDate').Text := qryMake.FieldByName('MAKE_DATE').AsString;
        //������ȣ M
        CHILD_NODE.AddChild('wco:ManufactureID').Text := qryMake.FieldByName('MAKE_NO').AsString;
      // ROOT / LPCO / DetailContents
        doChildNodeParent;
        qryMake.Next;
      end;
      CLOSE_FR2_MAKE;

      // ROOT / LPCO / DetailContents / Party
      CHILD_NODE := CHILD_NODE.AddChild('wco:Party');
      //(��Ź)������ȣ1 M
      CHILD_NODE.AddChild('gsw:Name').Text := getStr('WITAK_SANGHO1');
      //(��Ź)������ȣ2 C
      IF getStrCompare('WITAK_SANGHO2') Then
      CHILD_NODE.AddChild('gsw:Name2').Text := SQLData;
      //(��Ź)������ȣ3 C
      IF getStrCompare('WITAK_SANGHO3') Then
      CHILD_NODE.AddChild('gsw:Name3').Text := SQLData;
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      // ROOT / LPCO / DetailContents / Location
      CHILD_NODE := CHILD_NODE.AddChild('wco:Location');
      //(��Ź)���������ڵ� M
      CHILD_NODE.AddChild('gsw:CountryCode').Text := getStr('WITAK_NATION_CODE');
      //(��Ź)���������� M
      CHILD_NODE.AddChild('gsw:CountryName').Text := getStr('WITAK_NATION_NAME');
      //(��Ź)�����ּ�1 M
      CHILD_NODE.AddChild('gsw:LineAddress').Text := getStr('WITAK_ADDR1');
      //(��Ź)�����ּ�2 C
      IF getStrCompare('WITAK_ADDR2') Then
      CHILD_NODE.AddChild('gsw:LineAddress2').Text := SQLData;
      //(��Ź)�����ּ�3 C
      IF getStrCompare('WITAK_ADDR3') Then
      CHILD_NODE.AddChild('gsw:LineAddress3').Text := SQLData;
      //BSE ������ �����ڵ� C
      IF getStr('BSE_CODE') <> '1AV' Then
      begin
        IF getStrCompare('BSE_ORIGIN_NATION_CODE') Then
        CHILD_NODE.AddChild('gsw:OriginCountryCode').Text := SQLData;
        //BSE ������ ������  C
        IF getStrCompare('BSE_ORIGIN_NATION_NAME') Then
        CHILD_NODE.AddChild('gsw:OriginCountryName').Text := SQLData;
      end;
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      // ROOT / LPCO / DetailContents / Indicator
      CHILD_NODE := CHILD_NODE.AddChild('wco:Indicator');
      //BGMP��󱸺��ڵ�(1AV : ����/1AU : ���)    M
      CHILD_NODE.AddChild('gsw:BGMPObjectYN').Text := getStr('BGMP');
      //DMF��󱸺��ڵ�(1AV : ����/1AU : ���)    M
      CHILD_NODE.AddChild('gsw:DMFObjectYN').Text := getStr('DMF');
      // ROOT / LPCO / DetailContents
      doChildNodeParent;

      // ROOT / LPCO / DetailContents / Product
      CHILD_NODE := CHILD_NODE.AddChild('wco:Product');
      //��ɼ�ȭ��ǰ��󱸺��ڵ�(1AV : ����/1AU : ���)
      CHILD_NODE.AddChild('gsw:DrugCosmeticDistinctionCode').Text := getStr('COSMETIC_GUBUN');
      //�Ǿ�ǰǥ���ڵ�
      IF getStrCompare('DRUG_STANDARD_CODE') Then
      CHILD_NODE.AddChild('gsw:MedicineCode').Text := SQLData;
      //�� ǰ���ڵ�
      IF getStrCompare('OLD_GOODS_CODE') Then
      CHILD_NODE.AddChild('gsw:IdentificationID').Text := SQLData;
      //BSE ��󱸺��ڵ� M
      CHILD_NODE.AddChild('gsw:BSESubjectItemCode').Text := getStr('BSE_CODE');
      //������� C
      IF getStrCompare('ORIGIN_MATTER') Then
      CHILD_NODE.AddChild('gsw:OptativeAnimal').Text := SQLData;
      //����(���)���� C
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
