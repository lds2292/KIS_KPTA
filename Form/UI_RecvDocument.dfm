inherited UI_RecvDocument_frm: TUI_RecvDocument_frm
  Left = 748
  Top = 59
  BorderIcons = []
  BorderStyle = bsToolWindow
  BorderWidth = 4
  Caption = #47928#49436#49688#49888
  ClientHeight = 590
  ClientWidth = 993
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 53
    Width = 993
    Height = 2
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sSplitter2: TsSplitter [1]
    Left = 0
    Top = 82
    Width = 993
    Height = 2
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 0
    Width = 993
    Height = 53
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      993
      53)
    object sSpeedButton2: TsSpeedButton
      Left = 74
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
      Width = 68
      Height = 49
      Cursor = crHandPoint
      Caption = #47928#49436#49688#49888
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
      CommandLinkHint = #51204#49569#48372#45240' '#47928#49436#50640' '#45824#54620' '#51025#45813#51012' '#49688#49888#54633#45768#45796
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 15
      ContentMargin = 3
    end
    object sButton1: TsButton
      Left = 942
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
      TabOrder = 1
      TabStop = False
      OnClick = sButton1Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
    end
    object sCheckBox1: TsCheckBox
      Left = 88
      Top = 16
      Width = 116
      Height = 21
      Caption = #48120#48320#54872#47928#49436' '#47924#49884
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 2
      SkinData.SkinSection = 'CHECKBOX'
    end
  end
  object sDBGrid1: TsDBGrid [3]
    Left = 0
    Top = 84
    Width = 993
    Height = 160
    Align = alClient
    Color = clWhite
    Ctl3D = False
    DataSource = dsRecvList
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    OnDrawColumnCell = KISDrawColumnCell
    OnTitleClick = sDBGrid1TitleClick
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOC_CODE'
        Title.Alignment = taCenter
        Title.Caption = #47928#49436#53076#46300
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENT_NAME'
        Title.Caption = #47928#49436#47749
        Width = 215
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RecvDatetime'
        Title.Alignment = taCenter
        Title.Caption = #49688#49888#51068#51088
        Width = 130
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IssueDocumentNo'
        Title.Alignment = taCenter
        Title.Caption = #47928#49436#48264#54840
        Width = 135
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ProcessCode'
        Title.Alignment = taCenter
        Title.Caption = #52376#47532#53076#46300
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTENTS'
        Title.Caption = #52376#47532#45236#50857
        Width = 194
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sender'
        Title.Caption = #48156#44553#44592#44288
        Width = 165
        Visible = True
      end>
  end
  object sPanel2: TsPanel [4]
    Left = 0
    Top = 55
    Width = 993
    Height = 27
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 2
    object sMaskEdit1: TsMaskEdit
      Left = 85
      Top = 2
      Width = 79
      Height = 23
      EditMask = '9999-99-99;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '2017-04-04'
      OnDblClick = sMaskEdit1DblClick
      CheckOnExit = True
      SkinData.SkinSection = 'EDIT'
    end
    object sButton2: TsButton
      Left = 308
      Top = 2
      Width = 62
      Height = 23
      Cursor = crHandPoint
      Caption = #51312#54924
      TabOrder = 1
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 9
    end
    object sButton3: TsButton
      Left = 163
      Top = 2
      Width = 25
      Height = 23
      Cursor = crHandPoint
      TabOrder = 2
      OnClick = sButton3Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageMargins.Left = -2
      ImageIndex = 18
    end
    object sMaskEdit2: TsMaskEdit
      Left = 204
      Top = 2
      Width = 79
      Height = 23
      EditMask = '9999-99-99;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '2017-04-04'
      OnDblClick = sMaskEdit1DblClick
      CheckOnExit = True
      BoundLabel.Active = True
      BoundLabel.Caption = '~'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
    end
    object sButton4: TsButton
      Left = 282
      Top = 2
      Width = 25
      Height = 23
      Cursor = crHandPoint
      TabOrder = 4
      OnClick = sButton4Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageMargins.Left = -2
      ImageIndex = 18
    end
    object sPanel23: TsPanel
      Left = 3
      Top = 2
      Width = 81
      Height = 23
      Caption = #49688#49888#51068#51088
      DoubleBuffered = False
      TabOrder = 5
    end
  end
  object sPanel3: TsPanel [5]
    Left = 0
    Top = 244
    Width = 993
    Height = 130
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alBottom
    BevelOuter = bvNone
    DoubleBuffered = False
    TabOrder = 3
    object sSplitter3: TsSplitter
      Left = 0
      Top = 0
      Width = 993
      Height = 2
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      Enabled = False
      SkinData.SkinSection = 'SPLITTER'
    end
    object sPanel4: TsPanel
      Left = 0
      Top = 2
      Width = 993
      Height = 25
      SkinData.SkinSection = 'PANEL'
      Align = alTop
      DoubleBuffered = False
      TabOrder = 0
      object sLabel1: TsLabel
        Left = 6
        Top = 4
        Width = 52
        Height = 17
        Caption = #50724#47448#45236#50669
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
      end
    end
    object sDBGrid2: TsDBGrid
      Left = 0
      Top = 27
      Width = 993
      Height = 103
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = dsErr
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #47569#51008' '#44256#46357
      TitleFont.Style = []
      OnDrawColumnCell = KISDrawColumnCell
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERR_SEQ'
          Title.Alignment = taCenter
          Title.Caption = #49692#48264
          Width = 38
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERR_POS'
          Title.Alignment = taCenter
          Title.Caption = #50724#47448#50948#52824
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERR_KEY1'
          Title.Alignment = taCenter
          Title.Caption = #49464#48512'1'
          Width = 38
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ERR_KEY2'
          Title.Alignment = taCenter
          Title.Caption = #49464#48512'2'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ERR_CONTENTS'
          Title.Caption = #50724#47448#45236#50669
          Width = 747
          Visible = True
        end>
    end
  end
  object panAdded: TsPanel [6]
    Left = 0
    Top = 374
    Width = 993
    Height = 216
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alBottom
    BevelOuter = bvNone
    DoubleBuffered = False
    TabOrder = 4
    object sSplitter4: TsSplitter
      Left = 0
      Top = 0
      Width = 993
      Height = 2
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      Enabled = False
      SkinData.SkinSection = 'SPLITTER'
    end
    object sPanel6: TsPanel
      Left = 0
      Top = 2
      Width = 993
      Height = 25
      SkinData.SkinSection = 'PANEL'
      Align = alTop
      DoubleBuffered = False
      TabOrder = 0
      object sLabel2: TsLabel
        Left = 6
        Top = 4
        Width = 78
        Height = 17
        Caption = #48372#50756#53685#48372#45236#50669
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
      end
    end
    object sDBMemo1: TsDBMemo
      Left = 179
      Top = 27
      Width = 814
      Height = 189
      Align = alClient
      Color = clWhite
      DataField = 'ReferenceContents'
      DataSource = dsAdded
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object sDBGrid3: TsDBGrid
      Left = 0
      Top = 27
      Width = 179
      Height = 189
      Align = alLeft
      Color = clWhite
      DataSource = dsAdded
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #47569#51008' '#44256#46357
      TitleFont.Style = []
      OnDrawColumnCell = KISDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IssueDateTime'
          Title.Alignment = taCenter
          Title.Caption = #53685#51648#51068#49884
          Width = 140
          Visible = True
        end>
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Top = 120
  end
  object qryRecvList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    AfterOpen = qryRecvListAfterOpen
    AfterScroll = qryRecvListAfterScroll
    Parameters = <
      item
        Name = 'FromDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ToDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SID, DOC_CODE, RecvDatetime, Data, IssueDateTime, IssueDo' +
        'cumentNo, IssueDocumentCode, Sender, ProcessCode,'
      '       DOCUMENT_LIST.DOCUMENT_NAME,'
      '       CODE_CONTENT_LIST.CONTENTS'
      
        'FROM [RECV_DOCUMENTS] LEFT JOIN DOCUMENT_LIST ON RIGHT(RECV_DOCU' +
        'MENTS.DOC_CODE,3) = DOCUMENT_LIST.DOCUMENT_CODE'
      
        '                      LEFT JOIN CODE_CONTENT_LIST ON RECV_DOCUME' +
        'NTS.DOC_CODE = CODE_CONTENT_LIST.CODE_GROUP AND RECV_DOCUMENTS.P' +
        'rocessCode = CODE_CONTENT_LIST.CODE'
      'WHERE RecvDateTime between :FromDate AND :ToDate'
      'ORDER BY RecvDatetime DESC')
    Left = 232
    Top = 224
    object qryRecvListSID: TStringField
      FieldName = 'SID'
      Size = 18
    end
    object qryRecvListDOC_CODE: TStringField
      FieldName = 'DOC_CODE'
      OnGetText = qryRecvListDOC_CODEGetText
      Size = 9
    end
    object qryRecvListRecvDatetime: TDateTimeField
      FieldName = 'RecvDatetime'
      DisplayFormat = 'yyyy-mm-dd hh:nn:ss'
    end
    object qryRecvListData: TMemoField
      FieldName = 'Data'
      BlobType = ftMemo
    end
    object qryRecvListDOCUMENT_NAME: TStringField
      FieldName = 'DOCUMENT_NAME'
      Size = 200
    end
    object qryRecvListIssueDateTime: TStringField
      FieldName = 'IssueDateTime'
      EditMask = '9999-99-99 99:99:99;0'
      Size = 16
    end
    object qryRecvListIssueDocumentNo: TStringField
      FieldName = 'IssueDocumentNo'
      Size = 30
    end
    object qryRecvListIssueDocumentCode: TStringField
      FieldName = 'IssueDocumentCode'
      Size = 9
    end
    object qryRecvListSender: TStringField
      FieldName = 'Sender'
      Size = 100
    end
    object qryRecvListProcessCode: TStringField
      FieldName = 'ProcessCode'
      Size = 10
    end
    object qryRecvListCONTENTS: TStringField
      FieldName = 'CONTENTS'
      Size = 250
    end
  end
  object dsRecvList: TDataSource
    DataSet = qryRecvList
    Left = 264
    Top = 224
  end
  object qryErr: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'DOC_CODE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT [SID], DOC_CODE, ERR_SEQ, ERR_POS, ERR_KEY1, ERR_KEY2, ER' +
        'R_CONTENTS'
      'FROM ERR_DETAIL'
      'WHERE [SID] = :SID'
      'AND DOC_CODE = :DOC_CODE')
    Left = 232
    Top = 264
    object qryErrSID: TStringField
      FieldName = 'SID'
      Size = 30
    end
    object qryErrDOC_CODE: TStringField
      FieldName = 'DOC_CODE'
      Size = 9
    end
    object qryErrERR_SEQ: TIntegerField
      FieldName = 'ERR_SEQ'
    end
    object qryErrERR_POS: TStringField
      FieldName = 'ERR_POS'
      Size = 50
    end
    object qryErrERR_KEY1: TStringField
      FieldName = 'ERR_KEY1'
      Size = 10
    end
    object qryErrERR_KEY2: TStringField
      FieldName = 'ERR_KEY2'
      Size = 10
    end
    object qryErrERR_CONTENTS: TMemoField
      FieldName = 'ERR_CONTENTS'
      OnGetText = qryErrERR_CONTENTSGetText
      BlobType = ftMemo
    end
  end
  object dsErr: TDataSource
    DataSet = qryErr
    Left = 264
    Top = 264
  end
  object POP_TIMEMENU: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 304
    Top = 224
    object TIME_RECVDATE: TMenuItem
      Caption = #49688#49888#51068#51088
      OnClick = TIME_ISSUEDATETIMEClick
    end
    object TIME_ISSUEDATETIME: TMenuItem
      Tag = 1
      Caption = #51217#49688'/'#53685#48372#51068#51088
      OnClick = TIME_ISSUEDATETIMEClick
    end
  end
  object qryAdded: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'SID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT IssueDateTime, ReferenceContents FROM [GOVCBRRBH] WHERE S' +
        'ID = :SID AND  Processingcode = '#39'D01'#39
      'ORDER BY IssueDateTime DESC')
    Left = 232
    Top = 296
    object qryAddedReferenceContents: TMemoField
      FieldName = 'ReferenceContents'
      BlobType = ftMemo
    end
    object qryAddedIssueDateTime: TStringField
      FieldName = 'IssueDateTime'
      EditMask = '9999-99-99 99:99:99;0;'
      Size = 16
    end
  end
  object dsAdded: TDataSource
    DataSet = qryAdded
    Left = 264
    Top = 296
  end
end
