object DMCreateTable: TDMCreateTable
  OldCreateOrder = False
  Left = 327
  Top = 212
  Height = 334
  Width = 377
  object cmdCreateCOMCD: TADOCommand
    CommandText = 
      'IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABL' +
      'E_NAME = '#39'COMCD'#39')'#13#10'BEGIN'#13#10'    CREATE TABLE [dbo].[COMCD]('#13#10#9'    ' +
      '[CD_DEF] [varchar](20) NOT NULL,'#13#10#9'    [CD_DEF_NM] [varchar](200' +
      ') NULL,'#13#10#9'    [ETC_TXT] [varchar](200) NULL,'#13#10#9'    [ETC_CUR] [de' +
      'cimal](18, 5) NULL,'#13#10'     CONSTRAINT [PK_COMCD] PRIMARY KEY CLUS' +
      'TERED '#13#10'    ('#13#10#9'    [CD_DEF] ASC'#13#10'    )WITH (PAD_INDEX = OFF, ST' +
      'ATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCK' +
      'S = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]'#13#10'    ) ON [PRIMARY]'#13 +
      #10'END'#13#10#13#10'IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WH' +
      'ERE TABLE_NAME = '#39'COMCD_D'#39')'#13#10'BEGIN'#13#10'    CREATE TABLE [dbo].[COMC' +
      'D_D]('#13#10#9'    [CD_DEF] [varchar](20) NOT NULL,'#13#10#9'    [CD_SEQ] [int' +
      '] NOT NULL,'#13#10#9'    [USE_CD] [varchar](50) NOT NULL,'#13#10#9'    [USE_CD' +
      '_NM] [varchar](200) NOT NULL,'#13#10#9'    [ETC_TXT] [varchar](200) NUL' +
      'L,'#13#10#9'    [ETC_CUR] [decimal](18, 5) NOT NULL CONSTRAINT [DF_COMC' +
      'D_D_ETC_CUR]  DEFAULT ((0)),'#13#10#9'    [USED] [bit] NOT NULL CONSTRA' +
      'INT [DF_COMCD_D_USED]  DEFAULT ((1)),'#13#10'     CONSTRAINT [PK_COMCD' +
      '_D] PRIMARY KEY CLUSTERED '#13#10'    ('#13#10#9'    [CD_DEF] ASC,'#13#10#9'    [CD_' +
      'SEQ] ASC'#13#10'    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = O' +
      'FF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS' +
      ' = ON) ON [PRIMARY]'#13#10'    ) ON [PRIMARY]'#13#10'END'
    Connection = DataModule_Conn.KisConn
    Parameters = <>
    Left = 32
    Top = 16
  end
  object cmdCreatePUMLIST: TADOCommand
    CommandText = 
      'IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABL' +
      'E_NAME = '#39'PUMLIST'#39')'#13#10'BEGIN'#13#10'CREATE TABLE [dbo].[PUMLIST]('#13#10#9'[PID' +
      '] [int] NOT NULL,'#13#10#9'[GOODS_CODE] [varchar](26) NULL,'#13#10#9'[OLD_GOOD' +
      '_CODE] [varchar](26) NULL,'#13#10#9'[OLD_JONG_CODE] [varchar](4) NULL,'#13 +
      #10#9'[HSCD] [varchar](10) NULL,'#13#10#9'[TRADE_NAME] [varchar](210) NULL,' +
      #13#10#9'[MODEL_SIZE] [text] NULL,'#13#10#9'[MODEL_SIZE_INGREDIENT] [text] NU' +
      'LL,'#13#10#9'[ORIGIN_NATION_CODE] [varchar](2) NULL,'#13#10#9'[ORIGIN_NATION_N' +
      'AME] [varchar](50) NULL,'#13#10#9'[BSE_CODE] [varchar](3) NULL,'#13#10#9'[BSE_' +
      'ORIGIN_NATION_CODE] [varchar](2) NULL,'#13#10#9'[BSE_ORIGIN_NATION_NAME' +
      '] [varchar](50) NULL,'#13#10#9'[ORIGIN_MATTER] [varchar](100) NULL,'#13#10#9'[' +
      'EXTRACTION] [varchar](255) NULL,'#13#10#9'[BATCH_NO] [varchar](255) NUL' +
      'L,'#13#10#9'[COSMETIC_GUBUN] [varchar](3) NULL,'#13#10#9'[DMF] [varchar](3) NU' +
      'LL,'#13#10#9'[BGMP] [varchar](3) NULL,'#13#10#9'[PERMIT_SINGO_NO] [varchar](35' +
      ') NULL,'#13#10#9'[PERMIT_SINGO_DATE] [varchar](8) NULL,'#13#10#9'[DRUG_STANDAR' +
      'D_CODE] [varchar](18) NULL,'#13#10#9'[WITAK_SANGHO1] [varchar](100) NUL' +
      'L,'#13#10#9'[WITAK_SANGHO2] [varchar](100) NULL,'#13#10#9'[WITAK_SANGHO3] [var' +
      'char](100) NULL,'#13#10#9'[WITAK_ADDR1] [varchar](150) NULL,'#13#10#9'[WITAK_A' +
      'DDR2] [varchar](150) NULL,'#13#10#9'[WITAK_ADDR3] [varchar](150) NULL,'#13 +
      #10#9'[WITAK_NATION_CODE] [varchar](2) NULL,'#13#10#9'[WITAK_NATION_NAME] [' +
      'varchar](50) NULL,'#13#10#9'[TAKE_NATION_CODE] [varchar](2) NULL,'#13#10#9'[TA' +
      'KE_NATION_NAME] [varchar](50) NULL,'#13#10#9'[TAKE_SANGHO1] [varchar](1' +
      '00) NULL,'#13#10#9'[TAKE_SANGHO2] [varchar](100) NULL,'#13#10#9'[TAKE_SANGHO3]' +
      ' [varchar](100) NULL,'#13#10#9'[TAKE_ADDR1] [varchar](150) NULL,'#13#10#9'[TAK' +
      'E_ADDR2] [varchar](150) NULL,'#13#10#9'[TAKE_ADDR3] [varchar](150) NULL' +
      ','#13#10#9'[REG_DT] [varchar](8) NOT NULL CONSTRAINT [DF_PUMLIST_REG_DT' +
      ']  DEFAULT (CONVERT([varchar](10),getdate(),(121))),'#13#10#9'[REG_ID] ' +
      '[varchar](10) NULL,'#13#10#9'[LST_DT] [varchar](8) NULL,'#13#10#9'[LST_ID] [va' +
      'rchar](10) NULL,'#13#10' CONSTRAINT [PK_PUMLIST] PRIMARY KEY CLUSTERED' +
      ' '#13#10'('#13#10#9'[PID] ASC'#13#10')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE' +
      ' = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_L' +
      'OCKS = ON) ON [PRIMARY]'#13#10') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'#13#10 +
      'END'
    Connection = DataModule_Conn.KisConn
    Parameters = <>
    Left = 32
    Top = 64
  end
end
