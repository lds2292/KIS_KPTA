inherited UI_DocumentNo_frm: TUI_DocumentNo_frm
  Left = 815
  Top = 240
  BorderIcons = []
  BorderWidth = 4
  Caption = #47928#49436#48324' '#51228#52636#48264#54840' '#44288#47532
  ClientHeight = 223
  ClientWidth = 475
  OldCreateOrder = True
  OnActivate = sComboBox1Select
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [0]
    Left = 0
    Top = 0
    Width = 475
    Height = 49
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      475
      49)
    object sLabel2: TsLabel
      Left = 8
      Top = 5
      Width = 118
      Height = 21
      Caption = #47928#49436#48324' '#51228#52636#48264#54840
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
    end
    object sLabel1: TsLabel
      Left = 8
      Top = 29
      Width = 204
      Height = 15
      Caption = #51228#52636#48264#54840#47484' '#45908#48660#53364#47533' '#54616#50668' '#49688#51221#54633#45768#45796
    end
    object sButton3: TsButton
      Left = 427
      Top = 0
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
      TabOrder = 0
      TabStop = False
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
    end
  end
  object sComboBox1: TsComboBox [1]
    Left = 42
    Top = 50
    Width = 65
    Height = 23
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    ItemHeight = 17
    ItemIndex = 0
    TabOrder = 1
    Text = '2016'
    OnSelect = sComboBox1Select
    Items.Strings = (
      '2016'
      '2017'
      '2018'
      '2019'
      '2020')
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 50
    Width = 41
    Height = 23
    SkinData.SkinSection = 'PANEL'
    Caption = #45380#46020
    DoubleBuffered = False
    TabOrder = 2
  end
  object sButton2: TsButton [3]
    Left = 108
    Top = 50
    Width = 61
    Height = 23
    Caption = #51312#54924
    TabOrder = 3
    OnClick = sComboBox1Select
    SkinData.SkinSection = 'BUTTON'
  end
  object sDBGrid1: TsDBGrid [4]
    Left = 0
    Top = 74
    Width = 475
    Height = 181
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    Ctl3D = False
    DataSource = dsNo
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    OnDblClick = sDBGrid1DblClick
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Color = clBtnFace
        Expanded = False
        FieldName = 'BASIC_CODE'
        Title.Alignment = taCenter
        Title.Caption = #47928#49436
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clBtnFace
        Expanded = False
        FieldName = 'DOC_GUBUN'
        Title.Alignment = taCenter
        Title.Caption = #53076#46300
        Width = 33
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'DOCUMENT_NAME'
        Title.Alignment = taCenter
        Title.Caption = #47928#49436#47749
        Width = 266
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'DOC_NO'
        Title.Alignment = taCenter
        Title.Caption = #51228#52636#48264#54840
        Width = 61
        Visible = True
      end>
  end
  object sPanel3: TsPanel [5]
    Left = 0
    Top = 176
    Width = 475
    Height = 47
    SkinData.SkinSection = 'PANEL'
    Align = alBottom
    DoubleBuffered = False
    TabOrder = 5
    Visible = False
    object sLabel3: TsLabel
      Left = 422
      Top = 4
      Width = 48
      Height = 15
      Caption = #52712#49548':ESC'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      UseSkinColor = False
    end
    object sCurrencyEdit1: TsCurrencyEdit
      Left = 314
      Top = 21
      Width = 80
      Height = 21
      AutoSize = False
      TabOrder = 0
      OnKeyUp = sCurrencyEdit1KeyUp
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #48320#44221#54624' '#51228#52636#48264#54840' '#51077#47141
      BoundLabel.Font.Charset = ANSI_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -12
      BoundLabel.Font.Name = #47569#51008' '#44256#46357
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
      DecimalPlaces = 0
      DisplayFormat = '0'
    end
    object sButton4: TsButton
      Left = 396
      Top = 21
      Width = 75
      Height = 21
      Caption = #51201#50857
      TabOrder = 1
      TabStop = False
      OnClick = sButton4Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 160
    Top = 0
  end
  object qryNo: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'USER_ID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '1'
      end
      item
        Name = 'DOC_YEAR'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT USER_ID, DOC_YEAR, '#39'GOVCBR'#39' as BASIC_CODE,DOC_GUBUN, DOC_' +
        'NO, ISNULL(DOCUMENT_NAME,'#39'NOT FOUND'#39') as DOCUMENT_NAME'
      
        'FROM [NO] LEFT JOIN [DOCUMENT_LIST] ON [NO].DOC_GUBUN = DOCUMENT' +
        '_LIST.DOCUMENT_CODE'
      'WHERE USER_ID = :USER_ID'
      'AND DOC_YEAR = :DOC_YEAR')
    Left = 176
    Top = 40
    object qryNoUSER_ID: TStringField
      FieldName = 'USER_ID'
      ReadOnly = True
      Size = 2
    end
    object qryNoDOC_YEAR: TStringField
      FieldName = 'DOC_YEAR'
      ReadOnly = True
      Size = 2
    end
    object qryNoBASIC_CODE: TStringField
      FieldName = 'BASIC_CODE'
      ReadOnly = True
      Size = 6
    end
    object qryNoDOC_GUBUN: TStringField
      FieldName = 'DOC_GUBUN'
      ReadOnly = True
      Size = 3
    end
    object qryNoDOC_NO: TIntegerField
      FieldName = 'DOC_NO'
    end
    object qryNoDOCUMENT_NAME: TStringField
      FieldName = 'DOCUMENT_NAME'
      ReadOnly = True
      Size = 200
    end
  end
  object dsNo: TDataSource
    DataSet = qryNo
    Left = 208
    Top = 40
  end
end
