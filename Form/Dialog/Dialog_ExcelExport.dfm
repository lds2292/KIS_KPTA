inherited Dialog_ExcelExport_frm: TDialog_ExcelExport_frm
  Left = 890
  Top = 242
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #54364#51456#53685#44288' '#50696#51221#48372#44256#49436' '#50641#49472#45824#51109' '#45236#48372#45236#44592
  ClientHeight = 94
  ClientWidth = 402
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [0]
    Left = 0
    Top = 0
    Width = 402
    Height = 52
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    object sDateEdit1: TsDateEdit
      Left = 88
      Top = 15
      Width = 105
      Height = 23
      EditMask = '!9999/99/99;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '    -  -  '
      BoundLabel.Active = True
      BoundLabel.Caption = #49888#52397#51068#51088
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object sDateEdit2: TsDateEdit
      Left = 208
      Top = 15
      Width = 105
      Height = 23
      EditMask = '!9999/99/99;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '    -  -  '
      BoundLabel.Active = True
      BoundLabel.Caption = '~'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
  end
  object sPanel2: TsPanel [1]
    Left = 0
    Top = 52
    Width = 402
    Height = 42
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alBottom
    DoubleBuffered = False
    TabOrder = 1
    object sBitBtn1: TsBitBtn
      Left = 224
      Top = 5
      Width = 102
      Height = 34
      Caption = #45236#48372#45236#44592
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = sBitBtn1Click
    end
    object sBitBtn2: TsBitBtn
      Left = 327
      Top = 5
      Width = 75
      Height = 34
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 1
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Top = 200
  end
  object qryExcel: TADOQuery
    Connection = DataModule_Conn.KisConn
    Parameters = <
      item
        Name = 'BF_DT'
        DataType = ftDateTime
        Size = 15
        Value = Null
      end
      item
        Name = 'AF_DT'
        DataType = ftDateTime
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @BF_DT Datetime, @AF_DT Datetime'
      'SET @BF_DT = :BF_DT'
      'SET @AF_DT = :AF_DT'
      ''
      'SELECT *'
      'FROM'
      '('
      'SELECT '#39'0S'#39' as GUBUN, A.*, B.SERIAL_NO,'
      
        '        HS, GOODS_CODE, OLD_JONG_CODE, OLD_GOODS_CODE, COSMETIC_' +
        'GUBUN, DMF, BGMP, TRADE_NAME, MODEL_SIZE, MODEL_SIZE_INGREDIENT,' +
        ' DRUG_STANDARD_CODE, WITAK_SANGHO1, WITAK_SANGHO2, WITAK_SANGHO3' +
        ', WITAK_ADDR1, WITAK_ADDR2, WITAK_ADDR3, WITAK_NATION_CODE, WITA' +
        'K_NATION_NAME, MODEL_QTY, MODEL_QTY_UNIT, MODEL_DANGA, MODEL_AMT' +
        ', MODEL_AMT_UNIT, PERMIT_SINGO_NO, PERMIT_SINGO_DATE, BSE_CODE, ' +
        'BSE_ORIGIN_NATION_CODE, BSE_ORIGIN_NATION_NAME, ORIGIN_MATTER, E' +
        'XTRACTION, BATCH_NO, ORIGIN_NATION_CODE, ORIGIN_NATION_NAME,'
      
        '        '#39#39' as MAKE_SERIAL_NO, '#39#39' as MAKE_NO, '#39#39' as MAKE_DATE, '#39#39 +
        ' as TAKE_SANGHO1, '#39#39' as TAKE_SANGHO2, '#39#39' as TAKE_SANGHO3, '#39#39' as ' +
        'TAKE_ADDR1, '#39#39' as TAKE_ADDR2, '#39#39' as TAKE_ADDR3'
      
        'FROM [STANDARD1] A LEFT JOIN [STANDARD2] B ON A.DOC_NO = B.DOC_N' +
        'O'
      'UNION ALL'
      'SELECT '#39'1M'#39' as GUBUN, A.*, B.SERIAL_NO,'
      
        '        HS, GOODS_CODE, OLD_JONG_CODE, OLD_GOODS_CODE, COSMETIC_' +
        'GUBUN, DMF, BGMP, TRADE_NAME, MODEL_SIZE, MODEL_SIZE_INGREDIENT,' +
        ' DRUG_STANDARD_CODE, WITAK_SANGHO1, WITAK_SANGHO2, WITAK_SANGHO3' +
        ', WITAK_ADDR1, WITAK_ADDR2, WITAK_ADDR3, WITAK_NATION_CODE, WITA' +
        'K_NATION_NAME, MODEL_QTY, MODEL_QTY_UNIT, MODEL_DANGA, MODEL_AMT' +
        ', MODEL_AMT_UNIT, PERMIT_SINGO_NO, PERMIT_SINGO_DATE, BSE_CODE, ' +
        'BSE_ORIGIN_NATION_CODE, BSE_ORIGIN_NATION_NAME, ORIGIN_MATTER, E' +
        'XTRACTION, BATCH_NO, ORIGIN_NATION_CODE, ORIGIN_NATION_NAME,'
      
        '        MAKE_SERIAL_NO, MAKE_NO, MAKE_DATE, '#39#39' as TAKE_SANGHO1, ' +
        #39#39' as TAKE_SANGHO2, '#39#39' as TAKE_SANGHO3, '#39#39' as TAKE_ADDR1, '#39#39' as ' +
        'TAKE_ADDR2, '#39#39' as TAKE_ADDR3'
      
        'FROM [STANDARD1] A LEFT JOIN [STANDARD2] B ON A.DOC_NO = B.DOC_N' +
        'O'
      
        '                   LEFT JOIN [MAKE] M ON B.DOC_NO = M.DOC_NO AND' +
        ' B.SERIAL_CODE = M.SERIAL_CODE AND B.SERIAL_NO = M.SERIAL_NO    ' +
        '                 '
      'UNION ALL'
      'SELECT '#39'2C'#39', A.*, B.SERIAL_NO,'
      
        '        HS, GOODS_CODE, OLD_JONG_CODE, OLD_GOODS_CODE, COSMETIC_' +
        'GUBUN, DMF, BGMP, TRADE_NAME, MODEL_SIZE, MODEL_SIZE_INGREDIENT,' +
        ' DRUG_STANDARD_CODE, WITAK_SANGHO1, WITAK_SANGHO2, WITAK_SANGHO3' +
        ', WITAK_ADDR1, WITAK_ADDR2, WITAK_ADDR3, WITAK_NATION_CODE, WITA' +
        'K_NATION_NAME, MODEL_QTY, MODEL_QTY_UNIT, MODEL_DANGA, MODEL_AMT' +
        ', MODEL_AMT_UNIT, PERMIT_SINGO_NO, PERMIT_SINGO_DATE, BSE_CODE, ' +
        'BSE_ORIGIN_NATION_CODE, BSE_ORIGIN_NATION_NAME, ORIGIN_MATTER, E' +
        'XTRACTION, BATCH_NO, ORIGIN_NATION_CODE, ORIGIN_NATION_NAME,'
      
        '        CHECK_SERIAL_NO, CHECK_B_NO, CHECK_QTY, '#39#39', '#39#39', '#39#39', '#39#39', ' +
        #39#39', '#39#39
      
        'FROM [STANDARD1] A LEFT JOIN [STANDARD2] B ON A.DOC_NO = B.DOC_N' +
        'O'
      
        '         LEFT JOIN [CHECK] C ON B.DOC_NO = C.DOC_NO AND B.SERIAL' +
        '_CODE = C.SERIAL_CODE AND B.SERIAL_NO = C.SERIAL_NO'
      'UNION ALL'
      'SELECT '#39'3T'#39' as GUBUN, A.*, B.SERIAL_NO,'
      
        '        HS, GOODS_CODE, OLD_JONG_CODE, OLD_GOODS_CODE, COSMETIC_' +
        'GUBUN, DMF, BGMP, TRADE_NAME, MODEL_SIZE, MODEL_SIZE_INGREDIENT,' +
        ' DRUG_STANDARD_CODE, WITAK_SANGHO1, WITAK_SANGHO2, WITAK_SANGHO3' +
        ', WITAK_ADDR1, WITAK_ADDR2, WITAK_ADDR3, WITAK_NATION_CODE, WITA' +
        'K_NATION_NAME, MODEL_QTY, MODEL_QTY_UNIT, MODEL_DANGA, MODEL_AMT' +
        ', MODEL_AMT_UNIT, PERMIT_SINGO_NO, PERMIT_SINGO_DATE, BSE_CODE, ' +
        'BSE_ORIGIN_NATION_CODE, BSE_ORIGIN_NATION_NAME, ORIGIN_MATTER, E' +
        'XTRACTION, BATCH_NO, ORIGIN_NATION_CODE, ORIGIN_NATION_NAME,'
      
        '       TAKE_NO, NATION_CODE, NATION_NAME, TAKE_SANGHO1, TAKE_SAN' +
        'GHO2, TAKE_SANGHO3, TAKE_ADDR1, TAKE_ADDR2, TAKE_ADDR3'
      
        'FROM [STANDARD1] A LEFT JOIN [STANDARD2] B ON A.DOC_NO = B.DOC_N' +
        'O'
      
        '         LEFT JOIN [TAKEN] T ON B.DOC_NO = T.DOC_NO AND B.SERIAL' +
        '_CODE = T.SERIAL_CODE AND B.SERIAL_NO = T.SERIAL_NO'
      ') UNION_TABLE'
      'WHERE REQUEST_DATE between @BF_DT AND @AF_DT'
      
        'AND (GUBUN = '#39'0S'#39' OR (GUBUN = '#39'1M'#39' AND MAKE_SERIAL_NO IS NOT NUL' +
        'L) OR (GUBUN = '#39'2C'#39' AND MAKE_SERIAL_NO IS NOT NULL) OR (GUBUN = ' +
        #39'3T'#39' AND MAKE_SERIAL_NO IS NOT NULL))'
      'ORDER BY REQUEST_DATE,DOC_NO, SERIAL_NO, GUBUN, MAKE_SERIAL_NO')
    Left = 16
    Top = 8
  end
end
