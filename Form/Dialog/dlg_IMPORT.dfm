object dlg_IMPORT_frm: Tdlg_IMPORT_frm
  Left = 756
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'dlg_IMPORT_frm'
  ClientHeight = 223
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object sButton1: TsButton
    Left = 8
    Top = 8
    Width = 113
    Height = 41
    Caption = #54408#47785#53076#46300' '#52628#52636
    TabOrder = 0
    OnClick = sButton1Click
  end
  object sProgressBar1: TsProgressBar
    Left = 0
    Top = 206
    Width = 423
    Height = 17
    Align = alBottom
    Min = 0
    Max = 100
    TabOrder = 1
  end
  object sButton2: TsButton
    Left = 122
    Top = 8
    Width = 73
    Height = 41
    Caption = #44032#51256#50724#44592
    TabOrder = 2
    OnClick = sButton2Click
  end
  object sButton3: TsButton
    Tag = 1
    Left = 8
    Top = 56
    Width = 113
    Height = 41
    Caption = #54868#51109#54408#51333#48324' '#52628#52636
    TabOrder = 3
    OnClick = sButton3Click
  end
  object sButton5: TsButton
    Tag = 2
    Left = 8
    Top = 104
    Width = 113
    Height = 41
    Caption = #50896#47308#47785#47197' '#52628#52636
    TabOrder = 4
    OnClick = sButton3Click
  end
  object sButton4: TsButton
    Tag = 1
    Left = 122
    Top = 56
    Width = 73
    Height = 41
    Caption = #44032#51256#50724#44592
    TabOrder = 5
    OnClick = sButton2Click
  end
  object sButton7: TsButton
    Tag = 2
    Left = 8
    Top = 152
    Width = 113
    Height = 41
    Caption = #49888#44256#45936#51060#53552' '#52628#52636
    TabOrder = 6
    OnClick = sButton7Click
  end
  object sButton6: TsButton
    Tag = 2
    Left = 122
    Top = 152
    Width = 41
    Height = 41
    Caption = 'D1'
    TabOrder = 7
    OnClick = sButton6Click
  end
  object sButton8: TsButton
    Tag = 2
    Left = 164
    Top = 152
    Width = 41
    Height = 41
    Caption = 'D1D1'
    TabOrder = 8
    OnClick = sButton8Click
  end
  object sButton9: TsButton
    Tag = 2
    Left = 206
    Top = 152
    Width = 67
    Height = 41
    Caption = #51228#51312#51221#48372
    TabOrder = 9
    OnClick = sButton9Click
  end
  object sButton10: TsButton
    Tag = 2
    Left = 350
    Top = 152
    Width = 67
    Height = 41
    Caption = #49849#51064#52376#47532
    TabOrder = 10
    OnClick = sButton10Click
  end
  object sButton11: TsButton
    Tag = 2
    Left = 282
    Top = 152
    Width = 67
    Height = 41
    Caption = #49849#51064#51221#48372
    TabOrder = 11
    OnClick = sButton11Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=kisedi77@;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=m2bedi;Data Source=192.168.29.100,4' +
      '8001'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT EDI_ITEM_DETAIL_H_UID, '
      '       ITEM_CODE,'
      '       ITEM_CODE2, '
      '       '#39#39', '
      '       TARIFFCLASSIFICATION_CODE,'
      
        '       CARGO_DESCRIPTION1+CARGO_DESCRIPTION2+CARGO_DESCRIPTION3+' +
        'CARGO_DESCRIPTION4+CARGO_DESCRIPTION5+CARGO_DESCRIPTION6,'
      
        '       REPLACE(GOODS_GRADE,CHAR(13)+CHAR(10),'#39'|'#39') as GOODS_GRADE' +
        ','
      
        '       REPLACE(GOODS_INGREDIENTS,CHAR(13)+CHAR(10),'#39'|'#39') as GOODS' +
        '_INGREDIENTS,'
      '       ORIGIN_CODE,'
      '       ORIGIN_NAME,'
      '       BSE_SUBJECT_ITEM_CODE,'
      '       MANUFACTURE_COUNTRY_ID,'
      '       MANUFACTURE_COUNTRY_NAME,'
      '       BSE_SUBJECT_OPTATIVE,'
      '       ABSTRACTION_PART,'
      '       BATCH_NO,'
      '       COSMETICS_CODE,'
      '       DMF_OBJECT_CODE,'
      '       BGMP_OBJECT_CODE,'
      '       PERMISSION_ID,'
      '       PERMISSION_DATE,'
      '       STANDARD_CODE,'
      '       CONSIGNOR_NAME1,'
      '       CONSIGNOR_NAME2,'
      '       CONSIGNOR_NAME3,'
      '       CONSIGNOR_ADDRESS1,'
      '       CONSIGNOR_ADDRESS2,'
      '       CONSIGNOR_ADDRESS3,'
      '       CONSIGNOR_COUNTRY_ID,'
      '       CONSIGNOR_COUNTRY_NAME,'
      '       CONSIGNEE_COUNTRY_ID,'
      '       CONSIGNEE_COUNTRY_NAME,'
      '       CONSIGNEE_NAME1,'
      '       CONSIGNEE_NAME2,'
      '       CONSIGNEE_NAME3,'
      '       CONSIGNEE_ADDRESS1,'
      '       CONSIGNEE_ADDRESS2,'
      '       CONSIGNEE_ADDRESS3,'
      '       REG_DATE,'
      '       '#39'A'#39','
      '       MOD_DATE,'
      '       '#39'A'#39
      'FROM [EDI_ITEM_DETAIL_H]')
    Left = 40
    Top = 56
  end
  object sOpenDialog1: TsOpenDialog
    Filter = #50641#49472#54028#51068'(*.xls; *.xlsx)|*.xls;*.xlsx'
    Options = [ofHideReadOnly, ofNoValidate, ofEnableSizing]
    Left = 72
    Top = 56
  end
  object qryUpload: TADOQuery
    Connection = DataModule_Conn.KisConn
    Parameters = <>
    Left = 184
    Top = 56
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT EDI_ITEM_DETAIL_H_UID, '
      '       ITEM_CODE,'
      '       ITEM_CODE2, '
      '       '#39#39', '
      '       TARIFFCLASSIFICATION_CODE,'
      
        '       CARGO_DESCRIPTION1+CARGO_DESCRIPTION2+CARGO_DESCRIPTION3+' +
        'CARGO_DESCRIPTION4+CARGO_DESCRIPTION5+CARGO_DESCRIPTION6,'
      
        '       REPLACE(GOODS_GRADE,CHAR(13)+CHAR(10),'#39'|'#39') as GOODS_GRADE' +
        ','
      
        '       REPLACE(GOODS_INGREDIENTS,CHAR(13)+CHAR(10),'#39'|'#39') as GOODS' +
        '_INGREDIENTS,'
      '       ORIGIN_CODE,'
      '       ORIGIN_NAME,'
      '       BSE_SUBJECT_ITEM_CODE,'
      '       '#39#39','
      '       '#39#39','
      '       BSE_SUBJECT_OPTATIVE,'
      '       ABSTRACTION_PART,'
      '       BATCH_NO,'
      '       COSMETICS_CODE,'
      '       DMF_OBJECT_CODE,'
      '       BGMP_OBJECT_CODE,'
      '       PERMISSION_ID,'
      '       PERMISSION_DATE,'
      '       STANDARD_CODE,'
      '       CONSIGNOR_NAME1,'
      '       CONSIGNOR_NAME2,'
      '       CONSIGNOR_NAME3,'
      '       CONSIGNOR_ADDRESS1,'
      '       CONSIGNOR_ADDRESS2,'
      '       CONSIGNOR_ADDRESS3,'
      '       CONSIGNOR_COUNTRY_ID,'
      '       CONSIGNOR_COUNTRY_NAME,'
      '       CONSIGNEE_COUNTRY_ID,'
      '       CONSIGNEE_COUNTRY_NAME,'
      '       CONSIGNEE_NAME1,'
      '       CONSIGNEE_NAME2,'
      '       CONSIGNEE_NAME3,'
      '       CONSIGNEE_ADDRESS1,'
      '       CONSIGNEE_ADDRESS2,'
      '       CONSIGNEE_ADDRESS3,'
      '       REG_DATE,'
      '       '#39'A'#39','
      '       MOD_DATE,'
      '       '#39'A'#39
      'FROM [EDI_ITEM_DETAIL_H]')
    Left = 40
    Top = 88
  end
  object qryStandard1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DOCUMENT_REFERENCE_ID,'#39'GOVCBRFR2'#39',FORWARDING_DIVISION_COD' +
        'E,DOCUMENT_TYPE_CODE,REG_DATE,SANCTIONS_CODE,CANCEL_REASON,IMPOR' +
        'TER_COMPANY_ID,IMPORTER_NAME,IMPORTER_CONTACT_NAME,IMPORT_PERMIS' +
        'SION_ID,PLACE_POST_ID,IMPORTER_ADRESS1,IMPORTER_ADRESS2,1,CONSIG' +
        'NOR_COMPANY_ID,CONSIGNOR_NAME,CONSIGNOR_CONTACT_NAME1,CONSIGNOR_' +
        'POST_ID,CONSIGNOR_ADRESS1,CONSIGNOR_ADRESS2,EXPORTER_NAME,EXPORT' +
        'ER_ADRESS1,EXPORTER_COUNTRY_ID,EXPORTER_COUNTRY_NAME,TRADETERM_C' +
        'ONDITION_CODE,VALUATION_METHOD_CODE,VALUATION_CHARGE_AMOUNT,VALU' +
        'ATION_CHARGE_CURRENCY,SETTLEMENT_TERM,ARRIVAL_LOCATION_CODE,ARRI' +
        'VAL_LOCATION_NAME,QUALITY_INSPECT_CODE,QUALITY_INSPECT_NAME,CITY' +
        '_PRESERVATION_CODE,CITY_PRESERVATION_NAME,KFDA_CODE,KFDA_NAME,IM' +
        'PORT_NOTE,LOADINGLIST_QUANTITY, '#39#50756#47308#39', '#39#49849#51064#39', '#39'R01'#39', 0, NULL, '#39'1'#39',' +
        ' 0, NULL, Convert(varchar(10), getdate(),121) FROM  EDI_CUSSNWFR' +
        '1_H'
      'WHERE EDI_CUSSNWFR1_H.EDI_CUSSNWFR1_H_UID NOT IN( '
      'SELECT DISTINCT EDI_CUSSNWFR1_H_UID FROM EDI_CUSSNWFR1_H'
      'WHERE DOCUMENT_REFERENCE_ID IN('
      
        'SELECT DOCUMENT_REFERENCE_ID FROM EDI_CUSSNWFR1_H GROUP BY DOCUM' +
        'ENT_REFERENCE_ID'
      'HAVING COUNT(*) > 1))')
    Left = 184
    Top = 88
  end
  object qryStandard2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DOCUMENT_REFERENCE_ID as DOC_NO,'
      '      '#39'FR2'#39' as SERIAL_CODE,'
      
        '      --REPLICATE('#39'0'#39', 3 - LEN(EDI_CUSSNWFR1_D1_SEQ))+Convert(va' +
        'rchar(3),EDI_CUSSNWFR1_D1_SEQ) as SERIAL_NO,'
      
        '      REPLICATE('#39'0'#39', 3 - LEN(ROW_NUMBER() OVER(PARTITION BY DOCU' +
        'MENT_REFERENCE_ID ORDER BY EDI_CUSSNWFR1_D1.EDI_CUSSNWFR1_H_UID)' +
        '))+Convert(varchar(3),ROW_NUMBER() OVER(PARTITION BY DOCUMENT_RE' +
        'FERENCE_ID ORDER BY EDI_CUSSNWFR1_D1.EDI_CUSSNWFR1_H_UID)) as SE' +
        'RIAL_NO,'
      
        '      --ROW_NUMBER() OVER(PARTITION BY DOCUMENT_REFERENCE_ID ORD' +
        'ER BY EDI_CUSSNWFR1_D1.EDI_CUSSNWFR1_H_UID) as SERIAL_NO,'
      '      TARIFFCLASSIFICATION_CODE,'
      '      GOODS_IDENTIFICATION_ID1,'
      '      '#39#39' as OLD_JONG_CODE,'
      '      GOODS_IDENTIFICATION_ID2,'
      '      COSMETICS_CODE,'
      '      DMF_OBJECT_CODE,'
      '      BGMP_OBJECT_CODE,'
      '      CARGO_DESCRIPTION,'
      '      GOODS_GRADE,'
      '      GOODS_INGREDIENTS,'
      '      STANDARD_CODE,'
      '      CONSIGNOR_NAME1,'
      '      CONSIGNOR_NAME2,'
      '      CONSIGNOR_NAME3,'
      '      CONSIGNOR_ADDRESS1,'
      '      CONSIGNOR_ADDRESS2,'
      '      CONSIGNOR_ADDRESS3,'
      '      CONSIGNOR_COUNTRY_ID,'
      '      CONSIGNOR_COUNTRY_NAME,'
      '      BASE_QUANTITY,'
      '      BASE_QUANTITY_UNIT,'
      '      BASE_PRICE,'
      '      GOODS_AMOUNT,'
      '      GOODS_AMOUNT_UNIT,'
      '      PERMISSION_ID,'
      '      PERMISSION_DATE,'
      '      BSE_SUBJECT_ITEM_CODE,'
      '      '#39#39' as BSE_ORIGIN_NATION_CODE,'
      '      '#39#39' as BSE_ORIGIN_NATION_NAME,'
      '      BSE_SUBJECT_OPTATIVE,'
      '      ABSTRACTION_PART,'
      '      BATCH_NO,'
      '      ORIGIN_CODE,'
      '      ORIGIN_NAME'
      
        'FROM EDI_CUSSNWFR1_H INNER JOIN EDI_CUSSNWFR1_D1 ON EDI_CUSSNWFR' +
        '1_H.EDI_CUSSNWFR1_H_UID = EDI_CUSSNWFR1_D1.EDI_CUSSNWFR1_H_UID'
      'WHERE EDI_CUSSNWFR1_H.EDI_CUSSNWFR1_H_UID NOT IN( '
      'SELECT DISTINCT EDI_CUSSNWFR1_H_UID FROM EDI_CUSSNWFR1_H'
      'WHERE DOCUMENT_REFERENCE_ID IN('
      
        'SELECT DOCUMENT_REFERENCE_ID FROM EDI_CUSSNWFR1_H GROUP BY DOCUM' +
        'ENT_REFERENCE_ID'
      'HAVING COUNT(*) > 1))')
    Left = 184
    Top = 120
  end
  object qryTaken: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.DOCUMENT_REFERENCE_ID,'#39'FR2'#39' as SERIAL_CODE,'
      
        '       REPLICATE('#39'0'#39', 3 - LEN(EDI_CUSSNWFR1_D1_SEQ))+Convert(var' +
        'char(3),EDI_CUSSNWFR1_D1_SEQ) as SERIAL_NO,'
      
        '       REPLICATE('#39'0'#39', 3 - LEN(ISNULL(C.CONSIGNEE_SEQ,1)))+Conver' +
        't(varchar(3), ISNULL(C.CONSIGNEE_SEQ,1)) as TAKE_NO,'
      '       C.CONSIGNEE_COUNTRY_ID,'
      
        '       ISNULL(C.CONSIGNEE_COUNTRY_NAME, '#39#39') as CONSIGNEE_COUNTRY' +
        '_NAME,'
      '       ISNULL(C.CONSIGNEE_NAME1, '#39#39') as CONSIGNEE_NAME1,'
      '       ISNULL(C.CONSIGNEE_NAME2, '#39#39') as CONSIGNEE_NAME2,'
      '       ISNULL(C.CONSIGNEE_NAME3, '#39#39') as CONSIGNEE_NAME3,'
      '       ISNULL(C.CONSIGNEE_ADDRESS1, '#39#39') as CONSIGNEE_ADDRESS1,'
      '       ISNULL(C.CONSIGNEE_ADDRESS2, '#39#39') as CONSIGNEE_ADDRESS2,'
      '       ISNULL(C.CONSIGNEE_ADDRESS3, '#39#39') as CONSIGNEE_ADDRESS3'
      
        'FROM EDI_CUSSNWFR1_H A INNER JOIN EDI_CUSSNWFR1_D1 B ON A.EDI_CU' +
        'SSNWFR1_H_UID = B.EDI_CUSSNWFR1_H_UID'
      
        '                       INNER JOIN EDI_CUSSNWFR1_D1D1 C ON B.EDI_' +
        'CUSSNWFR1_D1_UID = C.EDI_CUSSNWFR1_D1_UID')
    Left = 216
    Top = 120
  end
  object qryMake: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT H1.DOCUMENT_REFERENCE_ID,'#39'FR2'#39' as SERIAL_CODE, '
      
        '       REPLICATE('#39'0'#39', 3 - LEN(EDI_CUSSNWFR1_D1_SEQ))+Convert(var' +
        'char(3),EDI_CUSSNWFR1_D1_SEQ) as SERIAL_NO,'
      
        '       ROW_NUMBER() OVER(PARTITION BY H1.DOCUMENT_REFERENCE_ID,E' +
        'DI_CUSSNWFR1_D1_SEQ  ORDER BY MANUFACTURE_SEQ) as MAKE_SERIAL_NO' +
        ','
      '       MANUFACTURE_NO,'
      '       MANUFACTURE_DATE '
      
        'FROM EDI_CUSSNWFR1_H H1 LEFT JOIN EDI_CUSSNWFR1_D1 D1 ON H1.EDI_' +
        'CUSSNWFR1_H_UID = D1.EDI_CUSSNWFR1_H_UID'
      
        '                        LEFT JOIN EDI_CUSSNWFR1_D1D3 D3 ON D1.ED' +
        'I_CUSSNWFR1_D1_UID = D3.EDI_CUSSNWFR1_D1_UID'
      'WHERE D3.EDI_CUSSNWFR1_D1D3_UID IS NOT NULL'
      'ORDER BY H1.DOCUMENT_REFERENCE_ID, SERIAL_NO, MAKE_SERIAL_NO')
    Left = 248
    Top = 120
  end
  object qryPermitR01: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'DELETE FROM RECV_STANDARD2'
      'INSERT INTO RECV_STANDARD2'
      'SELECT * FROM STANDARD2'
      ''
      'DELETE FROM RECV_TAKEN'
      'INSERT INTO RECV_TAKEN'
      'SELECT * FROM TAKEN'
      ''
      'DELETE FROM RECV_MAKE'
      'INSERT INTO RECV_MAKE'
      'SELECT * FROM MAKE')
    Left = 352
    Top = 120
  end
  object qryRecvStandard1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DOCUMENT_REFERENCE_ID,'#39'GOVCBRFR2'#39','#39'R01'#39',ISSUENUMBER,ISSUE' +
        'DATE,VALIDITYDATE,ISSUEORGANFIRM,ISSUEORGANPERSONIFICATION,ISSUE' +
        'ORGANTELEPHONE,ISSUEORGANELECTRONSIGNATURE,ISSUEORGANRECORDING,D' +
        'OCUMENT_TYPE_CODE,SANCTIONS_CODE,NULL,IMPORTER_COMPANY_ID,IMPORT' +
        'ER_NAME,IMPORTER_CONTACT_NAME,IMPORT_PERMISSION_ID,PLACE_POST_ID' +
        ',IMPORTER_ADRESS1,IMPORTER_ADRESS2,1,CONSIGNOR_COMPANY_ID,CONSIG' +
        'NOR_NAME,CONSIGNOR_CONTACT_NAME1,CONSIGNOR_POST_ID,CONSIGNOR_ADR' +
        'ESS1,CONSIGNOR_ADRESS2,EXPORTER_NAME,EXPORTER_ADRESS1,EXPORTER_C' +
        'OUNTRY_ID,EXPORTER_COUNTRY_NAME,TRADETERM_CONDITION_CODE,VALUATI' +
        'ON_METHOD_CODE,VALUATION_CHARGE_AMOUNT,VALUATION_CHARGE_CURRENCY' +
        ',SETTLEMENT_TERM,ARRIVAL_LOCATION_CODE,ARRIVAL_LOCATION_NAME,QUA' +
        'LITY_INSPECT_CODE,QUALITY_INSPECT_NAME,CITY_PRESERVATION_CODE,KF' +
        'DA_CODE,KFDA_NAME,IMPORT_NOTE'
      'FROM [m2bedi].[dbo].[EDI_CUSSNWFS4_H]'
      'WHERE EDI_CUSSNWFS4_H_UID IN'
      
        '(SELECT MAX(EDI_CUSSNWFS4_H_UID) FROM [m2bedi].[dbo].[EDI_CUSSNW' +
        'FS4_H]'
      'GROUP BY DOCUMENT_REFERENCE_ID)')
    Left = 320
    Top = 120
  end
end
