inherited UI_Company_frm: TUI_Company_frm
  Left = 854
  Top = 294
  BorderWidth = 4
  Caption = #54644#50808#44144#47000#52376#44288#47532
  ClientHeight = 603
  ClientWidth = 617
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 41
    Width = 617
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
    Width = 617
    Height = 41
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      617
      41)
    object sPanel2: TsPanel
      Left = 8
      Top = 8
      Width = 57
      Height = 25
      SkinData.SkinSection = 'PANEL'
      Caption = #49345#54840
      DoubleBuffered = False
      TabOrder = 0
    end
    object sButton1: TsButton
      Left = 210
      Top = 8
      Width = 66
      Height = 25
      Cursor = crHandPoint
      Caption = #51312#54924
      TabOrder = 1
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 9
    end
    object sButton3: TsButton
      Left = 413
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49888#44508
      TabOrder = 2
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 32
    end
    object sButton4: TsButton
      Left = 480
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49688#51221
      TabOrder = 3
      OnClick = sButton4Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 33
    end
    object sButton5: TsButton
      Left = 547
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49325#51228
      TabOrder = 4
      OnClick = sButton5Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 34
    end
    object edt_FindText: TsEdit
      Left = 66
      Top = 8
      Width = 143
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
    end
  end
  object sDBGrid1: TsDBGrid [2]
    Left = 0
    Top = 43
    Width = 617
    Height = 560
    Align = alClient
    Color = clWhite
    Ctl3D = False
    DataSource = dsForeignList
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    OnDblClick = sDBGrid1DblClick
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FOREIGN_CODE'
        Title.Alignment = taCenter
        Title.Caption = #54644#50808#44144#47000#52376#48512#54840
        Width = 128
        Visible = True
      end
      item
        Color = 16249576
        Expanded = False
        FieldName = 'COMPANY_NAME'
        Title.Alignment = taCenter
        Title.Caption = #54644#50808#44144#47000#52376#47749
        Width = 393
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NATION_CODE'
        Title.Alignment = taCenter
        Title.Caption = #44397#44032
        Width = 61
        Visible = True
      end>
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 48
    Top = 168
  end
  object qryForeignList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT [FOREIGN_CODE], [SID], [COMPANY_NAME], [REPRESENTATIVE], ' +
        '[COMPANY_ADDRESS], [NATION_CODE], [SAUP_NO], [CUSTOMS]'
      '  FROM [FOREIGN_COMPANY]')
    Left = 232
    Top = 240
  end
  object dsForeignList: TDataSource
    DataSet = qryForeignList
    Left = 264
    Top = 240
  end
end
