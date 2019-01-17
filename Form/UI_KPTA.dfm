inherited UI_KPTA_frm: TUI_KPTA_frm
  Left = 434
  Top = 106
  BorderIcons = []
  BorderWidth = 4
  Caption = #54364#51456#53685#44288#50696#51221#48372#44256#49436' - '#54620#44397#51032#50557#54408#49688#52636#51077#54801#54924
  ClientHeight = 718
  ClientWidth = 1237
  OldCreateOrder = True
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 54
    Width = 1237
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
    Width = 1237
    Height = 54
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      1237
      54)
    object sSpeedButton18: TsSpeedButton
      Left = 1168
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton2: TsSpeedButton
      Left = 245
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton1: TsSpeedButton
      Left = 501
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton4: TsSpeedButton
      Left = 319
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton5: TsSpeedButton
      Left = 642
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sButton3: TsButton
      Left = 1174
      Top = 2
      Width = 60
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 12
    end
    object sButton1: TsButton
      Left = 4
      Top = 2
      Width = 77
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49888#44256#49436#51089#49457
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = sButton1Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      CommandLinkHint = #48372#44256#49436' '#49888#44508#51089#49457
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 0
      ContentMargin = 5
    end
    object sButton2: TsButton
      Left = 137
      Top = 2
      Width = 53
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49688#51221
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = sButton2Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 8
    end
    object sButton4: TsButton
      Left = 191
      Top = 2
      Width = 53
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49325#51228
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = sButton4Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 4
    end
    object sButton11: TsButton
      Left = 82
      Top = 1
      Width = 53
      Height = 49
      Cursor = crHandPoint
      Caption = #48373#49324
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = sButton11Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      CommandLinkHint = #54788#51116' '#49440#53469#54620' '#48372#44256#49436#47484' '#48373#49324
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 7
    end
    object sButton7: TsButton
      Left = 326
      Top = 3
      Width = 66
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51204#49569#51456#48708
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = sButton7Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 22
    end
    object sButton12: TsButton
      Left = 508
      Top = 3
      Width = 66
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49888#52397#49436
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = sButton12Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 27
    end
    object sButton13: TsButton
      Tag = 1
      Left = 575
      Top = 3
      Width = 66
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51217#49688#54596#51613
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = sButton12Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 27
    end
    object sButton16: TsButton
      Left = 393
      Top = 3
      Width = 53
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51204#49569
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = sButton16Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 21
    end
    object sButton17: TsButton
      Tag = 1
      Left = 447
      Top = 3
      Width = 53
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49688#49888
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = sButton16Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 15
    end
    object sButton18: TsButton
      Left = 252
      Top = 2
      Width = 66
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #52712#54616#50836#52397
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = sButton18Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
    end
    object sButton9: TsButton
      Tag = 1
      Left = 649
      Top = 3
      Width = 66
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #52376#47532#54788#54889
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      TabStop = False
      OnClick = sButton9Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 38
    end
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 56
    Width = 1237
    Height = 662
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    DoubleBuffered = False
    ParentCtl3D = False
    TabOrder = 1
    object sSplitter3: TsSplitter
      Left = 840
      Top = 0
      Width = 2
      Height = 422
      Cursor = crHSplit
      Align = alRight
      AutoSnap = False
      Enabled = False
      SkinData.SkinSection = 'SPLITTER'
    end
    object sPanel3: TsPanel
      Left = 842
      Top = 0
      Width = 395
      Height = 422
      SkinData.SkinSection = 'TRANSPARENT'
      Align = alRight
      BevelOuter = bvNone
      DoubleBuffered = False
      TabOrder = 0
      object sSplitter2: TsSplitter
        Left = 0
        Top = 33
        Width = 395
        Height = 283
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        Enabled = False
        SkinData.SkinSection = 'SPLITTER'
      end
      object sSplitter4: TsSplitter
        Left = 0
        Top = 349
        Width = 395
        Height = 2
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        Enabled = False
        SkinData.SkinSection = 'SPLITTER'
      end
      object sPanel5: TsPanel
        Left = 0
        Top = 35
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #49888#52397#48264#54840
        DoubleBuffered = False
        TabOrder = 0
      end
      object sPanel6: TsPanel
        Left = 0
        Top = 83
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #47928#49436#44396#48516
        DoubleBuffered = False
        TabOrder = 1
      end
      object sPanel7: TsPanel
        Left = 0
        Top = 59
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #51228#51116#44396#48516
        DoubleBuffered = False
        TabOrder = 2
      end
      object sPanel8: TsPanel
        Left = 0
        Top = 110
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #49688#51077#51088
        DoubleBuffered = False
        TabOrder = 3
      end
      object sPanel9: TsPanel
        Left = 0
        Top = 134
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #49688#51077#54868#51452
        DoubleBuffered = False
        TabOrder = 4
      end
      object sPanel10: TsPanel
        Left = 0
        Top = 158
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #49688#52636#51088
        DoubleBuffered = False
        TabOrder = 5
      end
      object sPanel11: TsPanel
        Left = 0
        Top = 235
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #44208#51228#44552#50529
        DoubleBuffered = False
        TabOrder = 6
      end
      object sPanel12: TsPanel
        Left = 0
        Top = 316
        Width = 395
        Height = 33
        SkinData.SkinSection = 'BARTITLE'
        Align = alTop
        Color = 13398082
        DoubleBuffered = False
        TabOrder = 7
        object sLabel3: TsLabel
          Left = 6
          Top = 7
          Width = 96
          Height = 17
          Caption = #49688#51077#51088' '#44592#51116#49324#54637
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
        end
      end
      object sDBEdit8: TsDBEdit
        Left = 178
        Top = 235
        Width = 59
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'PAY_UNIT'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit7: TsDBEdit
        Left = 82
        Top = 235
        Width = 95
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'PAY_AMT'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit4: TsDBEdit
        Left = 82
        Top = 110
        Width = 304
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'IMPORT_SANGHO'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit5: TsDBEdit
        Left = 82
        Top = 134
        Width = 304
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'HWAJU_SANGHO'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit6: TsDBEdit
        Left = 82
        Top = 158
        Width = 304
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'EXPORT_SANGHO'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit1: TsDBEdit
        Left = 82
        Top = 35
        Width = 195
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'DOC_NO'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit3: TsDBEdit
        Left = 82
        Top = 59
        Width = 43
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'JEJE_GUBUN'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit2: TsDBEdit
        Left = 82
        Top = 83
        Width = 43
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'DOC_GUBUN'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit9: TsDBEdit
        Left = 126
        Top = 59
        Width = 151
        Height = 23
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'JEJE_GUBUN_NAME'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit10: TsDBEdit
        Left = 126
        Top = 83
        Width = 260
        Height = 23
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'REQUEST_DOC_TYPE'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sPanel16: TsPanel
        Left = 0
        Top = 187
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #51064#46020#51312#44148
        DoubleBuffered = False
        TabOrder = 18
      end
      object sDBEdit11: TsDBEdit
        Left = 82
        Top = 187
        Width = 43
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'INDO_TYPE'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit12: TsDBEdit
        Left = 126
        Top = 187
        Width = 260
        Height = 23
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'INDO_TYPE_NAME'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sPanel17: TsPanel
        Left = 0
        Top = 211
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #44208#51228#48169#48277
        DoubleBuffered = False
        TabOrder = 21
      end
      object sDBEdit13: TsDBEdit
        Left = 82
        Top = 211
        Width = 43
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'PAY_TYPE'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit14: TsDBEdit
        Left = 126
        Top = 211
        Width = 260
        Height = 23
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'PAY_TYPE_NAME'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sPanel18: TsPanel
        Left = 0
        Top = 265
        Width = 81
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #44397#45236#46020#52265#54637
        DoubleBuffered = False
        TabOrder = 24
      end
      object sDBEdit15: TsDBEdit
        Left = 82
        Top = 265
        Width = 51
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'DEST_PORT_CODE'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sDBEdit16: TsDBEdit
        Left = 134
        Top = 265
        Width = 151
        Height = 23
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'DEST_PORT_NAME'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 26
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sPanel19: TsPanel
        Left = 0
        Top = 289
        Width = 177
        Height = 23
        SkinData.SkinSection = 'PANEL'
        Caption = #44288#54624#51648#48169' '#49885#54408#51032#50557#54408#50504#51204#52397
        DoubleBuffered = False
        TabOrder = 27
      end
      object sDBEdit17: TsDBEdit
        Left = 178
        Top = 289
        Width = 207
        Height = 23
        TabStop = False
        Color = clWhite
        Ctl3D = True
        DataField = 'REGION_NAME'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 28
        SkinData.CustomColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object sPanel20: TsPanel
        Left = 0
        Top = 0
        Width = 395
        Height = 33
        SkinData.SkinSection = 'BARTITLE'
        Align = alTop
        Color = 13398082
        DoubleBuffered = False
        TabOrder = 29
        object sLabel4: TsLabel
          Left = 8
          Top = 6
          Width = 64
          Height = 21
          Caption = #44277#53685#49324#54637
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
        end
      end
      object sDBMemo1: TsDBMemo
        Left = 0
        Top = 351
        Width = 395
        Height = 71
        Align = alClient
        Color = clWhite
        Ctl3D = True
        DataField = 'IMPORT_MEMO'
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 30
        SkinData.SkinSection = 'EDIT'
      end
    end
    object sPanel13: TsPanel
      Left = 0
      Top = 0
      Width = 840
      Height = 422
      SkinData.SkinSection = 'TRANSPARENT'
      Align = alClient
      BevelOuter = bvNone
      DoubleBuffered = False
      TabOrder = 1
      object sDBGrid1: TsDBGrid
        Left = 0
        Top = 33
        Width = 840
        Height = 389
        Align = alClient
        Color = clWhite
        DataSource = DataModule_Conn.dsStandard1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #47569#51008' '#44256#46357
        TitleFont.Style = []
        OnDrawColumnCell = sDBGrid1DrawColumnCell
        OnKeyUp = sDBGrid1KeyUp
        SkinData.SkinSection = 'EDIT'
        OnScrollData = sDBGrid1ScrollData
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DOC_NO'
            Title.Alignment = taCenter
            Title.Caption = #51228#52636#48264#54840
            Width = 117
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
            Title.Caption = #51228#51116
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORT_SANGHO'
            Title.Alignment = taCenter
            Title.Caption = #49688#51077#51088
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HWAJU_SANGHO'
            Title.Alignment = taCenter
            Title.Caption = #49688#51077#54868#51452
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXPORT_SANGHO'
            Title.Alignment = taCenter
            Title.Caption = #49688#52636#51088
            Width = 129
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'isSEND'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = #51204#49569
            Width = 38
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'isRECV'
            Title.Alignment = taCenter
            Title.Caption = #49688#49888
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'isRESULT'
            Title.Alignment = taCenter
            Title.Caption = #44208#44284
            Width = 35
            Visible = True
          end>
      end
      object sPanel14: TsPanel
        Left = 0
        Top = 0
        Width = 840
        Height = 33
        SkinData.SkinSection = 'PANEL'
        Align = alTop
        DoubleBuffered = False
        TabOrder = 1
        DesignSize = (
          840
          33)
        object sSpeedButton3: TsSpeedButton
          Left = 641
          Top = 5
          Width = 6
          Height = 22
          Anchors = [akTop, akRight]
          ButtonStyle = tbsDivider
          SkinData.SkinSection = 'SPEEDBUTTON'
        end
        object sButton5: TsButton
          Left = 744
          Top = 5
          Width = 89
          Height = 23
          Caption = #49352#47196#44256#52840
          TabOrder = 0
          OnClick = sButton5Click
          SkinData.SkinSection = 'BUTTON'
          Images = DataModule_ICON.IMG_16
          ImageIndex = 2
        end
        object sMaskEdit1: TsMaskEdit
          Left = 85
          Top = 5
          Width = 108
          Height = 23
          Ctl3D = True
          EditMask = '9999-99-99;1'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 2
          Text = '2016-11-08'
          OnDblClick = sMaskEdit1DblClick
          OnKeyUp = sMaskEdit1KeyUp
          CheckOnExit = True
          SkinData.SkinSection = 'EDIT'
        end
        object sButton8: TsButton
          Left = 656
          Top = 5
          Width = 86
          Height = 23
          Caption = #51089#49457#45236#50669
          TabOrder = 3
          OnClick = sButton8Click
          SkinData.SkinSection = 'BUTTON'
          Images = DataModule_ICON.IMG_16
          ImageIndex = 21
        end
        object sButton6: TsButton
          Left = 573
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
        object sMaskEdit2: TsMaskEdit
          Left = 208
          Top = 5
          Width = 108
          Height = 23
          Ctl3D = True
          EditMask = '9999-99-99;1'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          Text = '2016-11-08'
          OnDblClick = sMaskEdit1DblClick
          OnKeyUp = sMaskEdit1KeyUp
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
        object sButton14: TsButton
          Left = 286
          Top = 5
          Width = 30
          Height = 23
          Cursor = crHandPoint
          TabOrder = 5
          OnClick = sButton14Click
          SkinData.SkinSection = 'BUTTON'
          Images = DataModule_ICON.IMG_16
          ImageIndex = 18
        end
        object sPanel23: TsPanel
          Left = 3
          Top = 5
          Width = 81
          Height = 23
          Caption = #44592#44036#49444#51221
          DoubleBuffered = False
          TabOrder = 6
        end
        object sButton15: TsButton
          Left = 163
          Top = 5
          Width = 30
          Height = 23
          Cursor = crHandPoint
          TabOrder = 7
          OnClick = sButton15Click
          SkinData.SkinSection = 'BUTTON'
          Images = DataModule_ICON.IMG_16
          ImageIndex = 18
        end
        object sComboBox1: TsComboBox
          Left = 320
          Top = 5
          Width = 73
          Height = 23
          VerticalAlignment = taVerticalCenter
          Style = csDropDownList
          ItemHeight = 17
          ItemIndex = 0
          TabOrder = 8
          Text = #54596#53552#50630#51020
          OnSelect = sComboBox1Select
          Items.Strings = (
            #54596#53552#50630#51020
            #49688#52636#51088
            #54408#47785#53076#46300
            #44144#47000#54408#47749
            #51228#52636#48264#54840)
        end
        object sEdit1: TsEdit
          Left = 394
          Top = 5
          Width = 178
          Height = 23
          Ctl3D = True
          Enabled = False
          ParentCtl3D = False
          TabOrder = 9
          OnKeyDown = sEdit1KeyDown
        end
      end
    end
    object sPanel15: TsPanel
      Left = 0
      Top = 422
      Width = 1237
      Height = 240
      SkinData.SkinSection = 'PANEL'
      Align = alBottom
      DoubleBuffered = False
      TabOrder = 2
      object sPanel4: TsPanel
        Left = 1
        Top = 1
        Width = 1235
        Height = 33
        SkinData.SkinSection = 'BARTITLE'
        Align = alTop
        Color = 13398082
        DoubleBuffered = False
        TabOrder = 0
        object sLabel2: TsLabel
          Left = 8
          Top = 5
          Width = 64
          Height = 21
          Caption = #54408#47785#49324#54637
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
        end
      end
      object sPanel21: TsPanel
        Left = 1
        Top = 34
        Width = 840
        Height = 205
        SkinData.SkinSection = 'TRANSPARENT'
        Align = alClient
        BevelOuter = bvNone
        DoubleBuffered = False
        TabOrder = 1
        object sDBGrid2: TsDBGrid
          Left = 0
          Top = 0
          Width = 840
          Height = 205
          Align = alClient
          Color = clWhite
          DataSource = DataModule_Conn.dsStandard2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = #47569#51008' '#44256#46357
          TitleFont.Style = []
          OnDrawColumnCell = KISDrawColumnCell
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'SERIAL_NO'
              Title.Caption = #54408#47785#49885#48324#48512#54840
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HS'
              Title.Caption = 'HS'#48512#54840
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRADE_NAME'
              Title.Caption = #44144#47000#54408#47749
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODEL_SIZE'
              Title.Caption = #47784#45944#44508#44201
              Width = 500
              Visible = True
            end>
        end
      end
      object sPageControl1: TsPageControl
        Left = 841
        Top = 34
        Width = 395
        Height = 205
        ActivePage = sTabSheet1
        Align = alRight
        Images = DataModule_ICON.IMG_16
        TabHeight = 28
        TabIndex = 0
        TabOrder = 2
        TabPadding = 5
        object sTabSheet1: TsTabSheet
          Caption = #51228#51312' '#51221#48372
          ImageIndex = 26
          object sDBGrid3: TsDBGrid
            Left = 0
            Top = 0
            Width = 387
            Height = 167
            Align = alClient
            Color = clWhite
            DataSource = DataModule_Conn.dsMake
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = #47569#51008' '#44256#46357
            TitleFont.Style = []
            OnDrawColumnCell = KISDrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Color = clBtnFace
                Expanded = False
                FieldName = 'MAKE_SERIAL_NO'
                Title.Alignment = taCenter
                Title.Caption = #49692#48264
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAKE_NO'
                Title.Alignment = taCenter
                Title.Caption = #51228#51312#48264#54840
                Width = 190
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'MAKE_DATE'
                Title.Alignment = taCenter
                Title.Caption = #51228#51312#51068#51088
                Width = 130
                Visible = True
              end>
          end
        end
        object sTabSheet2: TsTabSheet
          Caption = #46041#51068#49457#44160#49324#44208#44284#49436' '#51221#48372
          ImageIndex = 27
          object sDBGrid4: TsDBGrid
            Left = 0
            Top = 0
            Width = 387
            Height = 167
            Align = alClient
            Color = clWhite
            DataSource = DataModule_Conn.dsCheck
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = #47569#51008' '#44256#46357
            TitleFont.Style = []
            OnDrawColumnCell = KISDrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                Expanded = False
                FieldName = 'CHECK_SERIAL_NO'
                Title.Alignment = taCenter
                Title.Caption = #49692#48264
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHECK_B_NO'
                Title.Alignment = taCenter
                Title.Caption = #48156#44553#48264#54840
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHECK_QTY'
                Title.Alignment = taCenter
                Title.Caption = #49688#47049
                Width = 130
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Top = 120
  end
end
