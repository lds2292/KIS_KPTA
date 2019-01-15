inherited UI_ReadyDocument_frm: TUI_ReadyDocument_frm
  Left = 827
  Top = 230
  BorderIcons = []
  BorderStyle = bsToolWindow
  BorderWidth = 4
  Caption = #51204#49569#45824#44592' '#47928#49436
  ClientHeight = 339
  ClientWidth = 475
  OldCreateOrder = True
  Position = poDefaultPosOnly
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 53
    Width = 475
    Height = 2
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 0
    Width = 475
    Height = 53
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      475
      53)
    object sSpeedButton2: TsSpeedButton
      Left = 202
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sButton7: TsButton
      Left = 5
      Top = 1
      Width = 196
      Height = 49
      Cursor = crHandPoint
      Caption = #47928#49436#51204#49569
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = sButton7Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      CommandLinkHint = #51089#49457#54620' '#49888#52397#49436#47484' '#51204#49569#54633#45768#45796
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaCenter
      ImageIndex = 19
      Style = bsCommandLink
      ContentMargin = 3
    end
    object sButton3: TsButton
      Left = 209
      Top = 1
      Width = 66
      Height = 49
      Cursor = crHandPoint
      Caption = #51456#48708#52712#49548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
    end
    object sButton1: TsButton
      Left = 427
      Top = 1
      Width = 45
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = sButton1Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 12
    end
  end
  object sDBGrid1: TsDBGrid [2]
    Left = 0
    Top = 55
    Width = 475
    Height = 284
    Align = alClient
    DataSource = dsReady
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOC_TYPE'
        Title.Alignment = taCenter
        Title.Caption = #47928#49436#53076#46300
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC_NO'
        Title.Caption = #47928#49436#51228#52636#48264#54840
        Width = 188
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOC_EDIT_COUNT'
        Title.Alignment = taCenter
        Title.Caption = #51221#51221
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'READY_DATETIME'
        Title.Alignment = taCenter
        Title.Caption = #51456#48708#49884#44036
        Width = 130
        Visible = True
      end>
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 384
  end
  object qryReady: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    AfterOpen = qryReadyAfterOpen
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
      'SELECT [DOC_TYPE]'
      '      ,[DOC_NO]'
      '      ,[DOC_EDIT_COUNT]'
      '      ,[READY_DATETIME]'
      '      ,[isSELECT]'
      '      ,USER_ID'
      '  FROM [READY_DOCUMENTS]'
      '  WHERE USER_ID = :USER_ID')
    Left = 96
    Top = 128
    object qryReadyDOC_TYPE: TStringField
      FieldName = 'DOC_TYPE'
      Size = 9
    end
    object qryReadyDOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 30
    end
    object qryReadyDOC_EDIT_COUNT: TIntegerField
      FieldName = 'DOC_EDIT_COUNT'
    end
    object qryReadyREADY_DATETIME: TDateTimeField
      FieldName = 'READY_DATETIME'
      DisplayFormat = 'YYYY-MM-DD HH:NN:SS'
    end
    object qryReadyisSELECT: TBooleanField
      FieldName = 'isSELECT'
      OnGetText = qryReadyisSELECTGetText
    end
  end
  object dsReady: TDataSource
    DataSet = qryReady
    Left = 128
    Top = 128
  end
end
