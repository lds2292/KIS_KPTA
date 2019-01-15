object DataModule_Conn: TDataModule_Conn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1286
  Top = 237
  Height = 345
  Width = 399
  object dsStandard2: TDataSource
    DataSet = qryStandard2
    Left = 128
    Top = 64
  end
  object dsStandard1: TDataSource
    DataSet = qryStandard1
    Left = 128
    Top = 16
  end
  object dsStandardIns: TDataSource
    Left = 232
    Top = 16
  end
  object dsTaken: TDataSource
    DataSet = qryTaken
    Left = 128
    Top = 112
  end
  object qryJEJE_GUBUN_: TQuery
    DatabaseName = 'KIS_KPTA'
    SQL.Strings = (
      'SELECT *'
      'FROM CODELIST'
      'WHERE CODE_GROUP = '#39'JEJE_GUBUN'#39)
    Left = 24
    Top = 184
  end
  object KisConn: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=KIS_KPTA;Data Source=(local' +
      'db)\v12.0;Use Procedure for Prepare=1;Auto Translate=True;Packet' +
      ' Size=4096;Workstation ID=LEEDEOKSOO;Initial File Name="";Use En' +
      'cryption for Data=False;Tag with column collation when possible=' +
      'False;MARS Connection=False;DataTypeCompatibility=0;Trust Server' +
      ' Certificate=False;Server SPN="";Application Intent=READWRITE;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLNCLI11.1'
    Left = 232
    Top = 64
  end
  object qryCodeList: TADOQuery
    Connection = KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CODE_GROUP'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CODELIST'
      'WHERE CODE_GROUP = :CODE_GROUP')
    Left = 24
    Top = 16
  end
  object qryConfig: TADOQuery
    Connection = KisConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM USERCONFIG')
    Left = 24
    Top = 64
  end
  object qryStandard1: TADOQuery
    Connection = KisConn
    CursorType = ctStatic
    AfterOpen = qryStandard1AfterScroll
    AfterScroll = qryStandard1AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT STANDARD1.*,JEJE_GUBUN_NAME, REQUEST_DOC_TYPE,INDO_TYPE_N' +
        'AME, PAY_TYPE_NAME'
      
        'FROM STANDARD1 LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as JEJE' +
        '_GUBUN_NAME FROM CODELIST WHERE CODE_GROUP = '#39'JEJE_GUBUN'#39') JEJE ' +
        'ON STANDARD1.JEJE_GUBUN = JEJE.CODE_TYPE'
      
        '               LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as REQU' +
        'EST_DOC_TYPE FROM CODELIST WHERE CODE_GROUP = '#39'REQUEST_DOC_TYPE'#39 +
        ') REQUEST ON STANDARD1.DOC_GUBUN = REQUEST.CODE_TYPE'
      
        '               LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as INDO' +
        '_TYPE_NAME FROM CODELIST WHERE CODE_GROUP = '#39'INDO'#39') INDO ON STAN' +
        'DARD1.INDO_TYPE = INDO.CODE_TYPE'
      
        '               LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as PAY_' +
        'TYPE_NAME FROM CODELIST WHERE CODE_GROUP = '#39'PAY_TYPE'#39') PAY ON ST' +
        'ANDARD1.PAY_TYPE = PAY.CODE_TYPE'
      'WHERE isDeleted = 0')
    Left = 88
    Top = 16
    object qryStandard1DOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 16
    end
    object qryStandard1DOC_TYPE: TStringField
      FieldName = 'DOC_TYPE'
      Size = 9
    end
    object qryStandard1SEND_TYPE: TStringField
      FieldName = 'SEND_TYPE'
      Size = 2
    end
    object qryStandard1DOC_GUBUN: TStringField
      FieldName = 'DOC_GUBUN'
      Size = 3
    end
    object qryStandard1REQUEST_DATE: TDateTimeField
      FieldName = 'REQUEST_DATE'
    end
    object qryStandard1JEJE_GUBUN: TStringField
      FieldName = 'JEJE_GUBUN'
      Size = 3
    end
    object qryStandard1CANCEL_REASON: TMemoField
      FieldName = 'CANCEL_REASON'
      BlobType = ftMemo
    end
    object qryStandard1IMPORT_SAUP_NO: TStringField
      FieldName = 'IMPORT_SAUP_NO'
      Size = 10
    end
    object qryStandard1IMPORT_SANGHO: TStringField
      FieldName = 'IMPORT_SANGHO'
      Size = 100
    end
    object qryStandard1IMPORT_DAEPYO: TStringField
      FieldName = 'IMPORT_DAEPYO'
      Size = 100
    end
    object qryStandard1IMPORT_TRADE_NO: TStringField
      FieldName = 'IMPORT_TRADE_NO'
      Size = 22
    end
    object qryStandard1IMPORT_POST_NO: TStringField
      FieldName = 'IMPORT_POST_NO'
      Size = 50
    end
    object qryStandard1IMPORT_ADDR1: TStringField
      FieldName = 'IMPORT_ADDR1'
      Size = 150
    end
    object qryStandard1IMPORT_ADDR2: TStringField
      FieldName = 'IMPORT_ADDR2'
      Size = 150
    end
    object qryStandard1IMPORT_TYPE: TBooleanField
      FieldName = 'IMPORT_TYPE'
    end
    object qryStandard1HWAJU_SAUP_NO: TStringField
      FieldName = 'HWAJU_SAUP_NO'
      Size = 50
    end
    object qryStandard1HWAJU_SANGHO: TStringField
      FieldName = 'HWAJU_SANGHO'
      Size = 100
    end
    object qryStandard1HWAJU_DAEPYO: TStringField
      FieldName = 'HWAJU_DAEPYO'
      Size = 100
    end
    object qryStandard1HWAJU_POST_NO: TStringField
      FieldName = 'HWAJU_POST_NO'
      Size = 50
    end
    object qryStandard1HWAJU_ADDR1: TStringField
      FieldName = 'HWAJU_ADDR1'
      Size = 150
    end
    object qryStandard1HWAJU_ADDR2: TStringField
      FieldName = 'HWAJU_ADDR2'
      Size = 150
    end
    object qryStandard1EXPORT_SANGHO: TStringField
      FieldName = 'EXPORT_SANGHO'
      Size = 100
    end
    object qryStandard1EXPORT_ADDR1: TStringField
      FieldName = 'EXPORT_ADDR1'
      Size = 150
    end
    object qryStandard1EXPORT_NATION_CODE: TStringField
      FieldName = 'EXPORT_NATION_CODE'
      Size = 2
    end
    object qryStandard1EXPORT_NATION_NAME: TStringField
      FieldName = 'EXPORT_NATION_NAME'
      Size = 50
    end
    object qryStandard1INDO_TYPE: TStringField
      FieldName = 'INDO_TYPE'
      Size = 3
    end
    object qryStandard1PAY_TYPE: TStringField
      FieldName = 'PAY_TYPE'
      Size = 3
    end
    object qryStandard1PAY_AMT: TBCDField
      FieldName = 'PAY_AMT'
      DisplayFormat = '#,0.###'
      Precision = 16
    end
    object qryStandard1PAY_UNIT: TStringField
      FieldName = 'PAY_UNIT'
      Size = 3
    end
    object qryStandard1PAY_BETWEEN_DATE: TStringField
      FieldName = 'PAY_BETWEEN_DATE'
      Size = 255
    end
    object qryStandard1DEST_PORT_CODE: TStringField
      FieldName = 'DEST_PORT_CODE'
      Size = 5
    end
    object qryStandard1DEST_PORT_NAME: TStringField
      FieldName = 'DEST_PORT_NAME'
      Size = 100
    end
    object qryStandard1QUALITY_AGENCY_CODE: TStringField
      FieldName = 'QUALITY_AGENCY_CODE'
      Size = 2
    end
    object qryStandard1QUALITY_AGENCY_NAME: TStringField
      FieldName = 'QUALITY_AGENCY_NAME'
      Size = 100
    end
    object qryStandard1FIRST_CHECK_AGENCY_CODE: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_CODE'
      Size = 3
    end
    object qryStandard1FIRST_CHECK_AGENCY_NAME: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_NAME'
      Size = 100
    end
    object qryStandard1REGION_CODE: TStringField
      FieldName = 'REGION_CODE'
      Size = 3
    end
    object qryStandard1REGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 60
    end
    object qryStandard1IMPORT_MEMO: TMemoField
      FieldName = 'IMPORT_MEMO'
      BlobType = ftMemo
    end
    object qryStandard1TOTAL_COUNT: TIntegerField
      FieldName = 'TOTAL_COUNT'
    end
    object qryStandard1isSEND: TStringField
      FieldName = 'isSEND'
      Size = 10
    end
    object qryStandard1isRECV: TStringField
      FieldName = 'isRECV'
      Size = 10
    end
    object qryStandard1isRESULT: TStringField
      FieldName = 'isRESULT'
      Size = 10
    end
    object qryStandard1isDeleted: TBooleanField
      FieldName = 'isDeleted'
    end
    object qryStandard1DeleteDate: TDateTimeField
      FieldName = 'DeleteDate'
    end
    object qryStandard1WriteUserID: TStringField
      FieldName = 'WriteUserID'
      Size = 2
    end
    object qryStandard1isFirstSend: TBooleanField
      FieldName = 'isFirstSend'
    end
    object qryStandard1isFirstSendDateTime: TDateTimeField
      FieldName = 'isFirstSendDateTime'
    end
    object qryStandard1LastProcessDatetime: TDateTimeField
      FieldName = 'LastProcessDatetime'
    end
    object qryStandard1JEJE_GUBUN_NAME: TStringField
      FieldName = 'JEJE_GUBUN_NAME'
      Size = 100
    end
    object qryStandard1REQUEST_DOC_TYPE: TStringField
      FieldName = 'REQUEST_DOC_TYPE'
      Size = 100
    end
    object qryStandard1INDO_TYPE_NAME: TStringField
      FieldName = 'INDO_TYPE_NAME'
      Size = 100
    end
    object qryStandard1PAY_TYPE_NAME: TStringField
      FieldName = 'PAY_TYPE_NAME'
      Size = 100
    end
  end
  object qryStandard2: TADOQuery
    Connection = KisConn
    CursorType = ctStatic
    AfterOpen = qryStandard2AfterOpen
    AfterScroll = qryStandard2AfterOpen
    Parameters = <
      item
        Name = 'DOC_NO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = 'S123216000012'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM STANDARD2'
      'WHERE DOC_NO = :DOC_NO')
    Left = 88
    Top = 64
    object qryStandard2DOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 13
    end
    object qryStandard2SERIAL_CODE: TStringField
      FieldName = 'SERIAL_CODE'
      Size = 3
    end
    object qryStandard2SERIAL_NO: TStringField
      FieldName = 'SERIAL_NO'
      OnGetText = qryStandard2SERIAL_NOGetText
      Size = 3
    end
    object qryStandard2HS: TStringField
      FieldName = 'HS'
      Size = 10
    end
    object qryStandard2GOODS_CODE: TStringField
      FieldName = 'GOODS_CODE'
      Size = 26
    end
    object qryStandard2OLD_JONG_CODE: TStringField
      FieldName = 'OLD_JONG_CODE'
      Size = 4
    end
    object qryStandard2OLD_GOODS_CODE: TStringField
      FieldName = 'OLD_GOODS_CODE'
      Size = 26
    end
    object qryStandard2COSMETIC_GUBUN: TStringField
      FieldName = 'COSMETIC_GUBUN'
      Size = 3
    end
    object qryStandard2DMF: TStringField
      FieldName = 'DMF'
      Size = 3
    end
    object qryStandard2BGMP: TStringField
      FieldName = 'BGMP'
      Size = 3
    end
    object qryStandard2TRADE_NAME: TStringField
      FieldName = 'TRADE_NAME'
      Size = 210
    end
    object qryStandard2MODEL_SIZE: TMemoField
      FieldName = 'MODEL_SIZE'
      OnGetText = qryStandard2MODEL_SIZEGetText
      BlobType = ftMemo
    end
    object qryStandard2MODEL_SIZE_INGREDIENT: TMemoField
      FieldName = 'MODEL_SIZE_INGREDIENT'
      BlobType = ftMemo
    end
    object qryStandard2DRUG_STANDARD_CODE: TStringField
      FieldName = 'DRUG_STANDARD_CODE'
      Size = 18
    end
    object qryStandard2WITAK_SANGHO1: TStringField
      FieldName = 'WITAK_SANGHO1'
      Size = 100
    end
    object qryStandard2WITAK_SANGHO2: TStringField
      FieldName = 'WITAK_SANGHO2'
      Size = 100
    end
    object qryStandard2WITAK_SANGHO3: TStringField
      FieldName = 'WITAK_SANGHO3'
      Size = 100
    end
    object qryStandard2WITAK_ADDR1: TStringField
      FieldName = 'WITAK_ADDR1'
      Size = 150
    end
    object qryStandard2WITAK_ADDR2: TStringField
      FieldName = 'WITAK_ADDR2'
      Size = 150
    end
    object qryStandard2WITAK_ADDR3: TStringField
      FieldName = 'WITAK_ADDR3'
      Size = 150
    end
    object qryStandard2WITAK_NATION_CODE: TStringField
      FieldName = 'WITAK_NATION_CODE'
      Size = 2
    end
    object qryStandard2WITAK_NATION_NAME: TStringField
      FieldName = 'WITAK_NATION_NAME'
      Size = 50
    end
    object qryStandard2MODEL_QTY: TBCDField
      FieldName = 'MODEL_QTY'
      Precision = 16
    end
    object qryStandard2MODEL_QTY_UNIT: TStringField
      FieldName = 'MODEL_QTY_UNIT'
      Size = 3
    end
    object qryStandard2MODEL_DANGA: TBCDField
      FieldName = 'MODEL_DANGA'
      Precision = 16
    end
    object qryStandard2MODEL_AMT: TBCDField
      FieldName = 'MODEL_AMT'
      Precision = 19
    end
    object qryStandard2MODEL_AMT_UNIT: TStringField
      FieldName = 'MODEL_AMT_UNIT'
      Size = 3
    end
    object qryStandard2PERMIT_SINGO_NO: TStringField
      FieldName = 'PERMIT_SINGO_NO'
      Size = 35
    end
    object qryStandard2PERMIT_SINGO_DATE: TStringField
      FieldName = 'PERMIT_SINGO_DATE'
      Size = 8
    end
    object qryStandard2BSE_CODE: TStringField
      FieldName = 'BSE_CODE'
      Size = 3
    end
    object qryStandard2BSE_ORIGIN_NATION_CODE: TStringField
      FieldName = 'BSE_ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryStandard2BSE_ORIGIN_NATION_NAME: TStringField
      FieldName = 'BSE_ORIGIN_NATION_NAME'
      Size = 50
    end
    object qryStandard2ORIGIN_MATTER: TStringField
      FieldName = 'ORIGIN_MATTER'
      Size = 100
    end
    object qryStandard2EXTRACTION: TStringField
      FieldName = 'EXTRACTION'
      Size = 255
    end
    object qryStandard2BATCH_NO: TStringField
      FieldName = 'BATCH_NO'
      Size = 255
    end
    object qryStandard2ORIGIN_NATION_CODE: TStringField
      FieldName = 'ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryStandard2ORIGIN_NATION_NAME: TStringField
      FieldName = 'ORIGIN_NATION_NAME'
      Size = 50
    end
  end
  object qryTaken: TADOQuery
    Connection = KisConn
    Parameters = <
      item
        Name = 'DOC_NO'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SERIAL_NO'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAKEN'
      'WHERE DOC_NO = :DOC_NO'
      'AND SERIAL_CODE = '#39'FR2'#39
      'AND SERIAL_NO = :SERIAL_NO')
    Left = 88
    Top = 112
  end
  object qryMake: TADOQuery
    Connection = KisConn
    Parameters = <
      item
        Name = 'DOC_NO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'SERIAL_NO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM MAKE'
      'WHERE DOC_NO = :DOC_NO'
      'AND SERIAL_CODE = '#39'FR2'#39
      'AND SERIAL_NO = :SERIAL_NO'
      'ORDER BY MAKE_SERIAL_NO')
    Left = 88
    Top = 160
  end
  object qryCheck: TADOQuery
    Connection = KisConn
    Parameters = <
      item
        Name = 'DOC_NO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'SERIAL_NO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [CHECK]'
      'WHERE DOC_NO = :DOC_NO'
      'AND SERIAL_CODE = '#39'FR2'#39
      'AND SERIAL_NO = :SERIAL_NO'
      'ORDER BY CHECK_SERIAL_NO')
    Left = 128
    Top = 160
  end
  object spCopyDocument: TADOStoredProc
    Connection = KisConn
    ProcedureName = 'CopyDocument;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DocNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@BaseDocNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end>
    Left = 232
    Top = 112
  end
  object qryCreateDocumentNo: TADOQuery
    Connection = KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USER_ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @USER_ID varchar(2)'
      ''
      'SET @USER_ID = :USER_ID'
      ''
      
        'IF NOT EXISTS(SELECT 1 FROM [NO] WHERE USER_ID = @USER_ID AND DO' +
        'C_YEAR = RIGHT(Year(GETDATE()),2) AND DOC_GUBUN = '#39'FR2'#39')'
      'BEGIN'
      
        '  INSERT INTO [NO](USER_ID, DOC_YEAR, DOC_GUBUN) VALUES(@USER_ID' +
        ', RIGHT(Year(GETDATE()),2), '#39'FR2'#39')'
      'END')
    Left = 232
    Top = 160
  end
  object qryCount: TADOQuery
    Connection = KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USER_ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '0'
      end
      item
        Name = 'nYear'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2016
      end
      item
        Name = 'nMon'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 11
      end>
    SQL.Strings = (
      
        'SELECT REQUEST_DATE as YearMonth, COUNT(*) as WriteDocCount, Bet' +
        'weenDocNo = CASE WHEN MIN(DOC_NO) = MAX(DOC_NO) THEN MIN(DOC_NO)'
      
        '                                                                ' +
        '                 ELSE MIN(DOC_NO)+'#39' ~ '#39'+MAX(DOC_NO)'
      
        '                                                                ' +
        '            END'
      'FROM STANDARD1 '
      'WHERE SUBSTRING( DOC_NO ,8 ,1) = :USER_ID'
      'AND isDeleted = 0'
      'GROUP BY REQUEST_DATE'
      'HAVING YEAR(REQUEST_DATE) = :nYear'
      'AND MONTH(REQUEST_DATE) = :nMon')
    Left = 88
    Top = 208
  end
  object dsCount: TDataSource
    DataSet = qryCount
    Left = 128
    Top = 208
  end
  object qrySTD1Copy: TADOQuery
    CursorType = ctStatic
    AfterOpen = qryStandard1AfterScroll
    AfterScroll = qryStandard1AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT STANDARD1.*,JEJE_GUBUN_NAME, REQUEST_DOC_TYPE,INDO_TYPE_N' +
        'AME, PAY_TYPE_NAME'
      
        'FROM STANDARD1 LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as JEJE' +
        '_GUBUN_NAME FROM CODELIST WHERE CODE_GROUP = '#39'JEJE_GUBUN'#39') JEJE ' +
        'ON STANDARD1.JEJE_GUBUN = JEJE.CODE_TYPE'
      
        '               LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as REQU' +
        'EST_DOC_TYPE FROM CODELIST WHERE CODE_GROUP = '#39'REQUEST_DOC_TYPE'#39 +
        ') REQUEST ON STANDARD1.DOC_GUBUN = REQUEST.CODE_TYPE'
      
        '               LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as INDO' +
        '_TYPE_NAME FROM CODELIST WHERE CODE_GROUP = '#39'INDO'#39') INDO ON STAN' +
        'DARD1.INDO_TYPE = INDO.CODE_TYPE'
      
        '               LEFT JOIN (SELECT CODE_TYPE,CODE_CONTENTS as PAY_' +
        'TYPE_NAME FROM CODELIST WHERE CODE_GROUP = '#39'PAY_TYPE'#39') PAY ON ST' +
        'ANDARD1.PAY_TYPE = PAY.CODE_TYPE'
      'WHERE isDeleted = 0')
    Left = 168
    Top = 16
    object StringField1: TStringField
      FieldName = 'DOC_NO'
      Size = 16
    end
    object StringField2: TStringField
      FieldName = 'DOC_TYPE'
      Size = 9
    end
    object StringField3: TStringField
      FieldName = 'SEND_TYPE'
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'DOC_GUBUN'
      Size = 3
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'REQUEST_DATE'
    end
    object StringField5: TStringField
      FieldName = 'JEJE_GUBUN'
      Size = 3
    end
    object MemoField1: TMemoField
      FieldName = 'CANCEL_REASON'
      BlobType = ftMemo
    end
    object StringField6: TStringField
      FieldName = 'IMPORT_SAUP_NO'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'IMPORT_SANGHO'
      Size = 100
    end
    object StringField8: TStringField
      FieldName = 'IMPORT_DAEPYO'
      Size = 100
    end
    object StringField9: TStringField
      FieldName = 'IMPORT_TRADE_NO'
      Size = 22
    end
    object StringField10: TStringField
      FieldName = 'IMPORT_POST_NO'
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'IMPORT_ADDR1'
      Size = 150
    end
    object StringField12: TStringField
      FieldName = 'IMPORT_ADDR2'
      Size = 150
    end
    object BooleanField1: TBooleanField
      FieldName = 'IMPORT_TYPE'
    end
    object StringField13: TStringField
      FieldName = 'HWAJU_SAUP_NO'
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'HWAJU_SANGHO'
      Size = 100
    end
    object StringField15: TStringField
      FieldName = 'HWAJU_DAEPYO'
      Size = 100
    end
    object StringField16: TStringField
      FieldName = 'HWAJU_POST_NO'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'HWAJU_ADDR1'
      Size = 150
    end
    object StringField18: TStringField
      FieldName = 'HWAJU_ADDR2'
      Size = 150
    end
    object StringField19: TStringField
      FieldName = 'EXPORT_SANGHO'
      Size = 100
    end
    object StringField20: TStringField
      FieldName = 'EXPORT_ADDR1'
      Size = 150
    end
    object StringField21: TStringField
      FieldName = 'EXPORT_NATION_CODE'
      Size = 2
    end
    object StringField22: TStringField
      FieldName = 'EXPORT_NATION_NAME'
      Size = 50
    end
    object StringField23: TStringField
      FieldName = 'INDO_TYPE'
      Size = 3
    end
    object StringField24: TStringField
      FieldName = 'PAY_TYPE'
      Size = 3
    end
    object BCDField1: TBCDField
      FieldName = 'PAY_AMT'
      DisplayFormat = '#,0.###'
      Precision = 16
    end
    object StringField25: TStringField
      FieldName = 'PAY_UNIT'
      Size = 3
    end
    object StringField26: TStringField
      FieldName = 'PAY_BETWEEN_DATE'
      Size = 255
    end
    object StringField27: TStringField
      FieldName = 'DEST_PORT_CODE'
      Size = 5
    end
    object StringField28: TStringField
      FieldName = 'DEST_PORT_NAME'
      Size = 100
    end
    object StringField29: TStringField
      FieldName = 'QUALITY_AGENCY_CODE'
      Size = 2
    end
    object StringField30: TStringField
      FieldName = 'QUALITY_AGENCY_NAME'
      Size = 100
    end
    object StringField31: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_CODE'
      Size = 3
    end
    object StringField32: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_NAME'
      Size = 100
    end
    object StringField33: TStringField
      FieldName = 'REGION_CODE'
      Size = 3
    end
    object StringField34: TStringField
      FieldName = 'REGION_NAME'
      Size = 60
    end
    object MemoField2: TMemoField
      FieldName = 'IMPORT_MEMO'
      BlobType = ftMemo
    end
    object IntegerField1: TIntegerField
      FieldName = 'TOTAL_COUNT'
    end
    object StringField35: TStringField
      FieldName = 'isSEND'
      Size = 10
    end
    object StringField36: TStringField
      FieldName = 'isRECV'
      Size = 10
    end
    object StringField37: TStringField
      FieldName = 'isRESULT'
      Size = 10
    end
    object BooleanField2: TBooleanField
      FieldName = 'isDeleted'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DeleteDate'
    end
    object StringField38: TStringField
      FieldName = 'WriteUserID'
      Size = 2
    end
    object BooleanField3: TBooleanField
      FieldName = 'isFirstSend'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'isFirstSendDateTime'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'LastProcessDatetime'
    end
    object StringField39: TStringField
      FieldName = 'JEJE_GUBUN_NAME'
      Size = 100
    end
    object StringField40: TStringField
      FieldName = 'REQUEST_DOC_TYPE'
      Size = 100
    end
    object StringField41: TStringField
      FieldName = 'INDO_TYPE_NAME'
      Size = 100
    end
    object StringField42: TStringField
      FieldName = 'PAY_TYPE_NAME'
      Size = 100
    end
  end
end
