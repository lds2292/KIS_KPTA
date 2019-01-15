inherited Dialog_CopyReport_frm: TDialog_CopyReport_frm
  Left = 832
  Top = 158
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #48373#49324#51089#49457
  ClientHeight = 603
  ClientWidth = 801
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 57
    Width = 801
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
    Width = 801
    Height = 57
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      801
      57)
    object sLabel1: TsLabel
      Left = 8
      Top = 32
      Width = 180
      Height = 15
      Caption = #48373#49324#54624' '#50896#48376' '#48372#44256#49436#47484' '#49440#53469#54616#49464#50836
    end
    object sLabel2: TsLabel
      Left = 8
      Top = 8
      Width = 118
      Height = 21
      Caption = #50896#48376#48372#44256#49436' '#49440#53469
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
    end
    object sButton3: TsButton
      Left = 736
      Top = 4
      Width = 60
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
      Reflected = True
    end
    object sButton1: TsButton
      Left = 675
      Top = 4
      Width = 60
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49440#53469
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      TabStop = False
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 13
      Reflected = True
    end
  end
  object sPanel14: TsPanel [2]
    Left = 0
    Top = 59
    Width = 801
    Height = 33
    Align = alTop
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      801
      33)
    object sButton5: TsButton
      Left = 705
      Top = 5
      Width = 89
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #49352#47196#44256#52840
      TabOrder = 0
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 2
    end
    object sButton6: TsButton
      Left = 363
      Top = 5
      Width = 62
      Height = 23
      Caption = #51312#54924
      TabOrder = 1
      OnClick = sButton6Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 9
    end
    object edt_fromdate: TsMaskEdit
      Left = 85
      Top = 5
      Width = 87
      Height = 23
      Color = clWhite
      Ctl3D = True
      EditMask = '9999-99-99;1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '2016-11-08'
      OnDblClick = edt_fromdateDblClick
      OnKeyUp = edt_fromdateKeyUp
      CheckOnExit = True
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sPanel2: TsPanel
      Left = 2
      Top = 5
      Width = 82
      Height = 23
      Caption = #49888#52397#51068#51088
      TabOrder = 3
      SkinData.SkinSection = 'PANEL'
    end
    object btnCalc: TsButton
      Left = 171
      Top = 5
      Width = 30
      Height = 23
      Cursor = crHandPoint
      TabOrder = 4
      OnClick = btnCalcClick
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 18
    end
    object sPanel3: TsPanel
      Left = 202
      Top = 5
      Width = 39
      Height = 23
      Caption = #48512#53552
      TabOrder = 5
      SkinData.SkinSection = 'PANEL'
    end
    object edt_todate: TsMaskEdit
      Left = 242
      Top = 5
      Width = 87
      Height = 23
      Color = clWhite
      Ctl3D = True
      EditMask = '9999-99-99;1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = '2016-11-08'
      OnDblClick = edt_fromdateDblClick
      OnKeyUp = edt_fromdateKeyUp
      CheckOnExit = True
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sButton2: TsButton
      Left = 328
      Top = 5
      Width = 30
      Height = 23
      Cursor = crHandPoint
      TabOrder = 7
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 18
    end
  end
  object sDBGrid1: TsDBGrid [3]
    Left = 0
    Top = 92
    Width = 801
    Height = 511
    Align = alClient
    Color = clWhite
    DataSource = dsList
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
    OnDblClick = sDBGrid1DblClick
    OnKeyUp = sDBGrid1KeyUp
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOC_NO'
        Title.Alignment = taCenter
        Title.Caption = #51228#52636#48264#54840
        Width = 121
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REQUEST_DATE'
        Title.Alignment = taCenter
        Title.Caption = #49888#52397#51068#51088
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'JEJE_GUBUN'
        Title.Alignment = taCenter
        Title.Caption = #51228#51116#44396#48516
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORT_SANGHO'
        Title.Caption = #49688#51077#51088
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HWAJU_SANGHO'
        Title.Caption = #49688#51077#54868#51452
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXPORT_SANGHO'
        Title.Caption = #49688#52636#51088
        Width = 158
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'WriteUserID'
        Title.Alignment = taCenter
        Title.Caption = #51089#49457#51088
        Width = 51
        Visible = True
      end>
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 136
  end
  object qryList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FROM_DATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'TO_DATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
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
      'WHERE isDeleted = 0'
      'AND'
      'REQUEST_DATE Between :FROM_DATE AND :TO_DATE')
    Left = 24
    Top = 104
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 56
    Top = 104
  end
end
