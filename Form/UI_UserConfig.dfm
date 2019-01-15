inherited UI_UserConfig_frm: TUI_UserConfig_frm
  Left = 738
  Top = 192
  BorderWidth = 4
  Caption = #49324#50857#51088' '#54872#44221#49444#51221
  ClientHeight = 387
  ClientWidth = 536
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 54
    Width = 536
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
    Width = 536
    Height = 54
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      536
      54)
    object sLabel1: TsLabel
      Left = 8
      Top = 16
      Width = 190
      Height = 25
      Caption = #49324#50857#51088' '#54872#44221#49444#51221'['#47928#49436']'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
    end
    object sButton1: TsButton
      Left = 410
      Top = 2
      Width = 60
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #51200#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = sButton1Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 1
      Reflected = True
    end
    object sButton3: TsButton
      Left = 471
      Top = 2
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
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
      Reflected = True
    end
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 56
    Width = 536
    Height = 331
    Align = alClient
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object edt_SINGO_BUHO: TsEdit
      Left = 119
      Top = 17
      Width = 91
      Height = 23
      Cursor = crIBeam
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sPanel7: TsPanel
      Left = 14
      Top = 17
      Width = 104
      Height = 23
      Caption = #49888#44256#51064#48512#54840
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 7
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
    end
    object sPanel3: TsPanel
      Left = 14
      Top = 41
      Width = 104
      Height = 23
      Caption = #49324#50629#51088' '#46321#47197#48264#54840
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 8
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
    end
    object edt_SAUPNO: TsMaskEdit
      Left = 119
      Top = 41
      Width = 91
      Height = 23
      AutoSize = False
      Color = clWhite
      Ctl3D = False
      EditMask = '999-99-99999;0;'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 12
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
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
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sPanel4: TsPanel
      Left = 14
      Top = 65
      Width = 104
      Height = 23
      Caption = #49345#54840
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 9
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
    end
    object edt_SANGHO: TsEdit
      Left = 119
      Top = 65
      Width = 403
      Height = 23
      Cursor = crIBeam
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sPanel5: TsPanel
      Left = 14
      Top = 89
      Width = 104
      Height = 23
      Caption = #45824#54364#51088
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 10
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
    end
    object edt_DAEPYO: TsEdit
      Left = 119
      Top = 89
      Width = 163
      Height = 23
      Cursor = crIBeam
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sPanel6: TsPanel
      Left = 14
      Top = 121
      Width = 104
      Height = 47
      Caption = #51452#49548
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 11
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
    end
    object edt_POSTNO: TsEdit
      Left = 119
      Top = 121
      Width = 59
      Height = 23
      Cursor = crIBeam
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object edt_ADDR1: TsEdit
      Left = 179
      Top = 121
      Width = 343
      Height = 23
      Cursor = crIBeam
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object edt_ADDR2: TsEdit
      Left = 119
      Top = 145
      Width = 403
      Height = 23
      Cursor = crIBeam
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sGroupBox1: TsGroupBox
      Left = 14
      Top = 176
      Width = 508
      Height = 145
      Caption = #44288#49464#52397' '#51204#49569' '#49444#51221
      TabOrder = 12
      SkinData.SkinSection = 'GROUPBOX'
      object sPanel8: TsPanel
        Left = 14
        Top = 25
        Width = 104
        Height = 23
        Caption = 'UNIPASS ID'
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 0
        SkinData.CustomFont = True
        SkinData.SkinSection = 'PANEL'
      end
      object edt_UnipassID: TsEdit
        Left = 119
        Top = 25
        Width = 138
        Height = 23
        Cursor = crIBeam
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sPanel9: TsPanel
        Left = 14
        Top = 49
        Width = 104
        Height = 23
        Caption = #49324#49436#54632
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 2
        SkinData.CustomFont = True
        SkinData.SkinSection = 'PANEL'
      end
      object edt_UnipassPostBox: TsEdit
        Left = 119
        Top = 49
        Width = 242
        Height = 23
        Cursor = crIBeam
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object edt_XMLSendDir: TsEdit
        Left = 119
        Top = 105
        Width = 348
        Height = 23
        Cursor = crIBeam
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sPanel10: TsPanel
        Left = 14
        Top = 105
        Width = 104
        Height = 23
        Caption = #51204#49569#54260#45908
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 5
        SkinData.CustomFont = True
        SkinData.SkinSection = 'PANEL'
      end
      object btnCalc: TsButton
        Left = 468
        Top = 105
        Width = 30
        Height = 23
        Cursor = crHandPoint
        TabOrder = 6
        OnClick = btnCalcClick
        SkinData.SkinSection = 'BUTTON'
        Images = DataModule_ICON.IMG_16
        ImageIndex = 20
      end
      object sPanel11: TsPanel
        Left = 14
        Top = 73
        Width = 104
        Height = 23
        Caption = #50836#44148#44592#44288' '#49324#49436#54632
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 7
        SkinData.CustomFont = True
        SkinData.SkinSection = 'PANEL'
      end
      object edt_AprePostBox: TsEdit
        Left = 119
        Top = 73
        Width = 242
        Height = 23
        Cursor = crIBeam
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
  end
end
