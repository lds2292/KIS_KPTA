object XMLSource_dm: TXMLSource_dm
  OldCreateOrder = False
  Left = 974
  Top = 331
  Height = 254
  Width = 280
  object qryStandard: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DocNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT S1.DOC_NO, DOC_TYPE, SEND_TYPE, DOC_GUBUN, REQUEST_DATE, ' +
        'JEJE_GUBUN, CANCEL_REASON, IMPORT_SAUP_NO, IMPORT_SANGHO, IMPORT' +
        '_DAEPYO, IMPORT_TRADE_NO, IMPORT_POST_NO, IMPORT_ADDR1, IMPORT_A' +
        'DDR2, IMPORT_TYPE, HWAJU_SAUP_NO, HWAJU_SANGHO, HWAJU_DAEPYO, HW' +
        'AJU_POST_NO, HWAJU_ADDR1, HWAJU_ADDR2, EXPORT_SANGHO, EXPORT_ADD' +
        'R1, EXPORT_NATION_CODE, EXPORT_NATION_NAME, INDO_TYPE, PAY_TYPE,' +
        ' PAY_AMT, PAY_UNIT, PAY_BETWEEN_DATE, DEST_PORT_CODE, DEST_PORT_' +
        'NAME, QUALITY_AGENCY_CODE, QUALITY_AGENCY_NAME, FIRST_CHECK_AGEN' +
        'CY_CODE, FIRST_CHECK_AGENCY_NAME, REGION_CODE, REGION_NAME, IMPO' +
        'RT_MEMO, TOTAL_COUNT,'
      
        '       SERIAL_CODE, SERIAL_NO, HS, GOODS_CODE, OLD_JONG_CODE, OL' +
        'D_GOODS_CODE, COSMETIC_GUBUN, DMF, BGMP, TRADE_NAME, MODEL_SIZE,' +
        ' MODEL_SIZE_INGREDIENT, DRUG_STANDARD_CODE, WITAK_SANGHO1, WITAK' +
        '_SANGHO2, WITAK_SANGHO3, WITAK_ADDR1, WITAK_ADDR2, WITAK_ADDR3, ' +
        'WITAK_NATION_CODE, WITAK_NATION_NAME, MODEL_QTY, MODEL_QTY_UNIT,' +
        ' MODEL_DANGA, MODEL_AMT, MODEL_AMT_UNIT, PERMIT_SINGO_NO, PERMIT' +
        '_SINGO_DATE, BSE_CODE, BSE_ORIGIN_NATION_CODE, BSE_ORIGIN_NATION' +
        '_NAME, ORIGIN_MATTER, EXTRACTION, BATCH_NO, ORIGIN_NATION_CODE, ' +
        'ORIGIN_NATION_NAME'
      
        'FROM STANDARD1 S1 LEFT JOIN STANDARD2 S2 ON S1.DOC_NO = S2.DOC_N' +
        'O'
      'WHERE S1.DOC_NO = :DocNo')
    Left = 24
    Top = 8
    object qryStandardDOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object qryStandardDOC_TYPE: TStringField
      FieldName = 'DOC_TYPE'
      Size = 9
    end
    object qryStandardSEND_TYPE: TStringField
      FieldName = 'SEND_TYPE'
      Size = 2
    end
    object qryStandardDOC_GUBUN: TStringField
      FieldName = 'DOC_GUBUN'
      Size = 3
    end
    object qryStandardREQUEST_DATE: TDateTimeField
      FieldName = 'REQUEST_DATE'
    end
    object qryStandardJEJE_GUBUN: TStringField
      FieldName = 'JEJE_GUBUN'
      Size = 3
    end
    object qryStandardCANCEL_REASON: TMemoField
      FieldName = 'CANCEL_REASON'
      BlobType = ftMemo
    end
    object qryStandardIMPORT_SAUP_NO: TStringField
      FieldName = 'IMPORT_SAUP_NO'
      Size = 10
    end
    object qryStandardIMPORT_SANGHO: TStringField
      FieldName = 'IMPORT_SANGHO'
      Size = 100
    end
    object qryStandardIMPORT_DAEPYO: TStringField
      FieldName = 'IMPORT_DAEPYO'
      Size = 100
    end
    object qryStandardIMPORT_TRADE_NO: TStringField
      FieldName = 'IMPORT_TRADE_NO'
      Size = 22
    end
    object qryStandardIMPORT_POST_NO: TStringField
      FieldName = 'IMPORT_POST_NO'
      Size = 50
    end
    object qryStandardIMPORT_ADDR1: TStringField
      FieldName = 'IMPORT_ADDR1'
      Size = 150
    end
    object qryStandardIMPORT_ADDR2: TStringField
      FieldName = 'IMPORT_ADDR2'
      Size = 150
    end
    object qryStandardIMPORT_TYPE: TBooleanField
      FieldName = 'IMPORT_TYPE'
    end
    object qryStandardHWAJU_SAUP_NO: TStringField
      FieldName = 'HWAJU_SAUP_NO'
      Size = 50
    end
    object qryStandardHWAJU_SANGHO: TStringField
      FieldName = 'HWAJU_SANGHO'
      Size = 100
    end
    object qryStandardHWAJU_DAEPYO: TStringField
      FieldName = 'HWAJU_DAEPYO'
      Size = 100
    end
    object qryStandardHWAJU_POST_NO: TStringField
      FieldName = 'HWAJU_POST_NO'
      Size = 50
    end
    object qryStandardHWAJU_ADDR1: TStringField
      FieldName = 'HWAJU_ADDR1'
      Size = 150
    end
    object qryStandardHWAJU_ADDR2: TStringField
      FieldName = 'HWAJU_ADDR2'
      Size = 150
    end
    object qryStandardEXPORT_SANGHO: TStringField
      FieldName = 'EXPORT_SANGHO'
      Size = 100
    end
    object qryStandardEXPORT_ADDR1: TStringField
      FieldName = 'EXPORT_ADDR1'
      Size = 150
    end
    object qryStandardEXPORT_NATION_CODE: TStringField
      FieldName = 'EXPORT_NATION_CODE'
      Size = 2
    end
    object qryStandardEXPORT_NATION_NAME: TStringField
      FieldName = 'EXPORT_NATION_NAME'
      Size = 50
    end
    object qryStandardINDO_TYPE: TStringField
      FieldName = 'INDO_TYPE'
      Size = 3
    end
    object qryStandardPAY_TYPE: TStringField
      FieldName = 'PAY_TYPE'
      Size = 3
    end
    object qryStandardPAY_AMT: TBCDField
      FieldName = 'PAY_AMT'
      Precision = 16
    end
    object qryStandardPAY_UNIT: TStringField
      FieldName = 'PAY_UNIT'
      Size = 3
    end
    object qryStandardPAY_BETWEEN_DATE: TStringField
      FieldName = 'PAY_BETWEEN_DATE'
      Size = 255
    end
    object qryStandardDEST_PORT_CODE: TStringField
      FieldName = 'DEST_PORT_CODE'
      Size = 5
    end
    object qryStandardDEST_PORT_NAME: TStringField
      FieldName = 'DEST_PORT_NAME'
      Size = 100
    end
    object qryStandardQUALITY_AGENCY_CODE: TStringField
      FieldName = 'QUALITY_AGENCY_CODE'
      Size = 2
    end
    object qryStandardQUALITY_AGENCY_NAME: TStringField
      FieldName = 'QUALITY_AGENCY_NAME'
      Size = 100
    end
    object qryStandardFIRST_CHECK_AGENCY_CODE: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_CODE'
      Size = 3
    end
    object qryStandardFIRST_CHECK_AGENCY_NAME: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_NAME'
      Size = 100
    end
    object qryStandardREGION_CODE: TStringField
      FieldName = 'REGION_CODE'
      Size = 3
    end
    object qryStandardREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 60
    end
    object qryStandardIMPORT_MEMO: TMemoField
      FieldName = 'IMPORT_MEMO'
      BlobType = ftMemo
    end
    object qryStandardTOTAL_COUNT: TIntegerField
      FieldName = 'TOTAL_COUNT'
    end
    object qryStandardSERIAL_CODE: TStringField
      FieldName = 'SERIAL_CODE'
      Size = 3
    end
    object qryStandardSERIAL_NO: TStringField
      FieldName = 'SERIAL_NO'
      Size = 3
    end
    object qryStandardHS: TStringField
      FieldName = 'HS'
      Size = 10
    end
    object qryStandardGOODS_CODE: TStringField
      FieldName = 'GOODS_CODE'
      Size = 26
    end
    object qryStandardOLD_JONG_CODE: TStringField
      FieldName = 'OLD_JONG_CODE'
      Size = 4
    end
    object qryStandardOLD_GOODS_CODE: TStringField
      FieldName = 'OLD_GOODS_CODE'
      Size = 26
    end
    object qryStandardCOSMETIC_GUBUN: TStringField
      FieldName = 'COSMETIC_GUBUN'
      Size = 3
    end
    object qryStandardDMF: TStringField
      FieldName = 'DMF'
      Size = 3
    end
    object qryStandardBGMP: TStringField
      FieldName = 'BGMP'
      Size = 3
    end
    object qryStandardTRADE_NAME: TStringField
      FieldName = 'TRADE_NAME'
      Size = 210
    end
    object qryStandardMODEL_SIZE: TMemoField
      FieldName = 'MODEL_SIZE'
      BlobType = ftMemo
    end
    object qryStandardMODEL_SIZE_INGREDIENT: TMemoField
      FieldName = 'MODEL_SIZE_INGREDIENT'
      BlobType = ftMemo
    end
    object qryStandardDRUG_STANDARD_CODE: TStringField
      FieldName = 'DRUG_STANDARD_CODE'
      Size = 18
    end
    object qryStandardWITAK_SANGHO1: TStringField
      FieldName = 'WITAK_SANGHO1'
      Size = 100
    end
    object qryStandardWITAK_SANGHO2: TStringField
      FieldName = 'WITAK_SANGHO2'
      Size = 100
    end
    object qryStandardWITAK_SANGHO3: TStringField
      FieldName = 'WITAK_SANGHO3'
      Size = 100
    end
    object qryStandardWITAK_ADDR1: TStringField
      FieldName = 'WITAK_ADDR1'
      Size = 150
    end
    object qryStandardWITAK_ADDR2: TStringField
      FieldName = 'WITAK_ADDR2'
      Size = 150
    end
    object qryStandardWITAK_ADDR3: TStringField
      FieldName = 'WITAK_ADDR3'
      Size = 150
    end
    object qryStandardWITAK_NATION_CODE: TStringField
      FieldName = 'WITAK_NATION_CODE'
      Size = 2
    end
    object qryStandardWITAK_NATION_NAME: TStringField
      FieldName = 'WITAK_NATION_NAME'
      Size = 50
    end
    object qryStandardMODEL_QTY: TBCDField
      FieldName = 'MODEL_QTY'
      Precision = 16
    end
    object qryStandardMODEL_QTY_UNIT: TStringField
      FieldName = 'MODEL_QTY_UNIT'
      Size = 3
    end
    object qryStandardMODEL_DANGA: TBCDField
      FieldName = 'MODEL_DANGA'
      Precision = 16
    end
    object qryStandardMODEL_AMT: TBCDField
      FieldName = 'MODEL_AMT'
      Precision = 19
    end
    object qryStandardMODEL_AMT_UNIT: TStringField
      FieldName = 'MODEL_AMT_UNIT'
      Size = 3
    end
    object qryStandardPERMIT_SINGO_NO: TStringField
      FieldName = 'PERMIT_SINGO_NO'
      Size = 35
    end
    object qryStandardPERMIT_SINGO_DATE: TStringField
      FieldName = 'PERMIT_SINGO_DATE'
      Size = 8
    end
    object qryStandardBSE_CODE: TStringField
      FieldName = 'BSE_CODE'
      Size = 3
    end
    object qryStandardBSE_ORIGIN_NATION_CODE: TStringField
      FieldName = 'BSE_ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryStandardBSE_ORIGIN_NATION_NAME: TStringField
      FieldName = 'BSE_ORIGIN_NATION_NAME'
      Size = 50
    end
    object qryStandardORIGIN_MATTER: TStringField
      FieldName = 'ORIGIN_MATTER'
      Size = 100
    end
    object qryStandardEXTRACTION: TStringField
      FieldName = 'EXTRACTION'
      Size = 255
    end
    object qryStandardBATCH_NO: TStringField
      FieldName = 'BATCH_NO'
      Size = 255
    end
    object qryStandardORIGIN_NATION_CODE: TStringField
      FieldName = 'ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryStandardORIGIN_NATION_NAME: TStringField
      FieldName = 'ORIGIN_NATION_NAME'
      Size = 50
    end
  end
  object qryCheck: TADOQuery
    Connection = DataModule_Conn.KisConn
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
    Left = 24
    Top = 64
  end
  object qryTaken: TADOQuery
    Connection = DataModule_Conn.KisConn
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
    Left = 24
    Top = 120
  end
  object qryMake: TADOQuery
    Connection = DataModule_Conn.KisConn
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
    Left = 24
    Top = 168
  end
end
