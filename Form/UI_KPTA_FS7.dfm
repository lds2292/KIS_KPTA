inherited UI_KPTA_FS7_frm: TUI_KPTA_FS7_frm
  Left = 555
  Top = 72
  BorderWidth = 4
  Caption = #54364#51456#53685#44288#50696#51221#48372#44256#49436' '#51217#49688#54596#51613
  ClientHeight = 775
  ClientWidth = 810
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [0]
    Left = 0
    Top = 0
    Width = 810
    Height = 54
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      810
      54)
    object sSpeedButton18: TsSpeedButton
      Left = 741
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton1: TsSpeedButton
      Left = 98
      Top = 4
      Width = 6
      Height = 46
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sButton3: TsButton
      Left = 747
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
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 12
      Reflected = True
    end
    object sButton12: TsButton
      Left = 4
      Top = 3
      Width = 93
      Height = 49
      Cursor = crHandPoint
      Caption = #51217#49688#54596#51613#52636#47141
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = sButton12Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 27
      Reflected = True
    end
  end
  object sPanel13: TsPanel [1]
    Left = 0
    Top = 54
    Width = 810
    Height = 721
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    SkinData.SkinSection = 'TRANSPARENT'
    object sSplitter1: TsSplitter
      Left = 0
      Top = 0
      Width = 810
      Height = 4
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      Enabled = False
      SkinData.SkinSection = 'SPLITTER'
    end
    object sPageControl1: TsPageControl
      Left = 0
      Top = 4
      Width = 810
      Height = 717
      ActivePage = sTabSheet3
      Align = alClient
      TabHeight = 28
      TabIndex = 2
      TabOrder = 0
      SkinData.SkinSection = 'PAGECONTROL'
      object sTabSheet1: TsTabSheet
        Caption = #48372#44256#49436' '#51217#49688#45236#50669
        ButtonSkin = 'ALPHACOMBOBOX'
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sSplitter2: TsSplitter
          Left = 0
          Top = 33
          Width = 802
          Height = 2
          Cursor = crVSplit
          Align = alTop
          AutoSnap = False
          Enabled = False
          SkinData.SkinSection = 'SPLITTER'
        end
        object sPanel14: TsPanel
          Left = 0
          Top = 0
          Width = 802
          Height = 33
          Align = alTop
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sButton6: TsButton
            Left = 364
            Top = 5
            Width = 58
            Height = 23
            Caption = #51312#54924
            TabOrder = 0
            OnClick = sButton6Click
            SkinData.SkinSection = 'BUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object edt_fromdate: TsMaskEdit
            Left = 86
            Top = 5
            Width = 84
            Height = 23
            Color = clWhite
            Ctl3D = True
            EditMask = '9999-99-99;0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '20170301'
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
            Left = 3
            Top = 5
            Width = 80
            Height = 23
            Caption = #49888#52397#51068#51088
            TabOrder = 2
            SkinData.SkinSection = 'PANEL'
          end
          object btnCalc: TsButton
            Left = 171
            Top = 5
            Width = 28
            Height = 23
            Cursor = crHandPoint
            TabOrder = 3
            SkinData.SkinSection = 'BUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 18
          end
          object sPanel3: TsPanel
            Left = 200
            Top = 5
            Width = 37
            Height = 23
            Caption = #48512#53552
            TabOrder = 4
            SkinData.SkinSection = 'PANEL'
          end
          object edt_todate: TsMaskEdit
            Left = 238
            Top = 5
            Width = 85
            Height = 23
            Color = clWhite
            Ctl3D = True
            EditMask = '9999-99-99;0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            Text = '20170331'
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
            Left = 324
            Top = 5
            Width = 30
            Height = 23
            Cursor = crHandPoint
            TabOrder = 6
            SkinData.SkinSection = 'BUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 18
          end
        end
        object sDBGrid1: TsDBGrid
          Left = 0
          Top = 35
          Width = 802
          Height = 644
          Align = alClient
          Color = clWhite
          Ctl3D = False
          DataSource = dsRecvStandard1
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
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUBLISH_NO'
              Title.Alignment = taCenter
              Title.Caption = #48156#44553#48264#54840
              Width = 141
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUBLISH_DATE'
              Title.Alignment = taCenter
              Title.Caption = #48156#44553#51068#51088
              Width = 75
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'EXPIRY_DATE'
              Title.Alignment = taCenter
              Title.Caption = #50976#54952#51068#51088
              Width = 75
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUBLISH_INSTITUTE'
              Title.Alignment = taCenter
              Title.Caption = #48156#44553#44592#44288#47749
              Width = 186
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUBLISH_PERSON'
              Title.Alignment = taCenter
              Title.Caption = #48156#44553#44592#44288' '#47749#51032#51064
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUBLISH_TEL'
              Title.Alignment = taCenter
              Title.Caption = #51204#54868#48264#54840
              Width = 89
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUBLISH_SIGN'
              Title.Alignment = taCenter
              Title.Caption = #51204#51088#49436#47749
              Width = 81
              Visible = True
            end>
        end
      end
      object sTabSheet2: TsTabSheet
        Caption = #44277#53685#49324#54637
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sPanel4: TsPanel
          Left = 0
          Top = 0
          Width = 802
          Height = 679
          Align = alClient
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sPanel5: TsPanel
            Left = 8
            Top = 8
            Width = 785
            Height = 87
            TabOrder = 0
            SkinData.SkinSection = 'GROUPBOX'
            object sPanel6: TsPanel
              Left = 80
              Top = 8
              Width = 81
              Height = 23
              Caption = #49888#52397#48264#54840
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit1: TsDBEdit
              Left = 162
              Top = 8
              Width = 207
              Height = 23
              Color = clWhite
              DataField = 'DOC_NO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel7: TsPanel
              Left = 80
              Top = 32
              Width = 81
              Height = 23
              Caption = #51228#51116#44396#48516
              TabOrder = 2
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit2: TsDBEdit
              Left = 162
              Top = 32
              Width = 47
              Height = 23
              Color = clWhite
              DataField = 'JEJE_GUBUN'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sDBEdit3: TsDBEdit
              Left = 210
              Top = 32
              Width = 159
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'JEJE_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              SkinData.CustomColor = True
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
            object sPanel8: TsPanel
              Left = 384
              Top = 8
              Width = 81
              Height = 23
              Caption = #49888#44256#51068#51088
              TabOrder = 5
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit4: TsDBEdit
              Left = 466
              Top = 8
              Width = 87
              Height = 23
              Color = clWhite
              DataField = 'REQUEST_DATE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel9: TsPanel
              Left = 384
              Top = 32
              Width = 81
              Height = 23
              Caption = #49888#52397#47928#49436#44396#48516
              TabOrder = 7
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit5: TsDBEdit
              Left = 466
              Top = 32
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'DOC_GUBUN'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sDBEdit6: TsDBEdit
              Left = 506
              Top = 32
              Width = 199
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'REQUEST_DOC_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              SkinData.CustomColor = True
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
            object sPanel76: TsPanel
              Left = 80
              Top = 56
              Width = 81
              Height = 23
              Caption = #52376#47532#44208#44284
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              SkinData.CustomFont = True
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit78: TsDBEdit
              Left = 162
              Top = 56
              Width = 47
              Height = 23
              Color = clWhite
              DataField = 'PROCESS_STATE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
              SkinData.CustomFont = True
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
            object sDBEdit83: TsDBEdit
              Left = 210
              Top = 56
              Width = 159
              Height = 23
              TabStop = False
              Color = clWhite
              DataField = 'PROCESS_STATE_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 12
              SkinData.CustomFont = True
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
          object sPanel10: TsPanel
            Left = 8
            Top = 99
            Width = 785
            Height = 115
            TabOrder = 1
            SkinData.SkinSection = 'GROUPBOX'
            object sLabel1: TsLabel
              Left = 25
              Top = 11
              Width = 48
              Height = 21
              Caption = #49688#51077#51088
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
            end
            object sPanel11: TsPanel
              Left = 84
              Top = 11
              Width = 98
              Height = 23
              Caption = #49324#50629#51088#46321#47197#48264#54840
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit7: TsDBEdit
              Left = 183
              Top = 11
              Width = 207
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_SAUP_NO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel12: TsPanel
              Left = 84
              Top = 35
              Width = 98
              Height = 23
              Caption = #49457#47749
              TabOrder = 2
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit8: TsDBEdit
              Left = 183
              Top = 35
              Width = 207
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_DAEPYO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel15: TsPanel
              Left = 396
              Top = 11
              Width = 98
              Height = 23
              Caption = #49688#51077#50629#54728#44032#48264#54840
              TabOrder = 4
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit10: TsDBEdit
              Left = 495
              Top = 11
              Width = 223
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_TRADE_NO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel16: TsPanel
              Left = 396
              Top = 35
              Width = 98
              Height = 23
              Caption = #49345#54840
              TabOrder = 6
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit11: TsDBEdit
              Left = 495
              Top = 35
              Width = 223
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_SANGHO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 7
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
            object sPanel17: TsPanel
              Left = 84
              Top = 59
              Width = 98
              Height = 47
              Caption = #51452#49548
              TabOrder = 8
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit9: TsDBEdit
              Left = 240
              Top = 59
              Width = 478
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_ADDR1'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 9
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
            object sDBEdit79: TsDBEdit
              Left = 184
              Top = 59
              Width = 55
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_POST_NO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 10
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
            object sDBEdit80: TsDBEdit
              Left = 184
              Top = 83
              Width = 534
              Height = 23
              Color = clWhite
              DataField = 'IMPORT_ADDR2'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 11
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
          object sPanel18: TsPanel
            Left = 8
            Top = 218
            Width = 785
            Height = 115
            TabOrder = 2
            SkinData.SkinSection = 'GROUPBOX'
            object sLabel2: TsLabel
              Left = 9
              Top = 10
              Width = 64
              Height = 21
              Caption = #49688#51077#54868#51452
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
            end
            object sPanel19: TsPanel
              Left = 84
              Top = 10
              Width = 98
              Height = 23
              Caption = #49324#50629#51088#46321#47197#48264#54840
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit12: TsDBEdit
              Left = 183
              Top = 10
              Width = 207
              Height = 23
              Color = clWhite
              DataField = 'HWAJU_SAUP_NO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel20: TsPanel
              Left = 84
              Top = 34
              Width = 98
              Height = 23
              Caption = #49345#54840
              TabOrder = 2
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit13: TsDBEdit
              Left = 183
              Top = 34
              Width = 535
              Height = 23
              Color = clWhite
              DataField = 'HWAJU_SANGHO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel21: TsPanel
              Left = 396
              Top = 10
              Width = 98
              Height = 23
              Caption = #49457#47749
              TabOrder = 4
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit14: TsDBEdit
              Left = 495
              Top = 10
              Width = 223
              Height = 23
              Color = clWhite
              DataField = 'HWAJU_DAEPYO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel23: TsPanel
              Left = 84
              Top = 58
              Width = 98
              Height = 47
              Caption = #51452#49548
              TabOrder = 6
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit16: TsDBEdit
              Left = 239
              Top = 58
              Width = 479
              Height = 23
              Color = clWhite
              DataField = 'HWAJU_ADDR1'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 7
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
            object sDBEdit81: TsDBEdit
              Left = 183
              Top = 58
              Width = 55
              Height = 23
              Color = clWhite
              DataField = 'HWAJU_POST_NO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sDBEdit82: TsDBEdit
              Left = 183
              Top = 82
              Width = 535
              Height = 23
              Color = clWhite
              DataField = 'HWAJU_ADDR2'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 9
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
          object sPanel22: TsPanel
            Left = 8
            Top = 337
            Width = 785
            Height = 88
            TabOrder = 3
            SkinData.SkinSection = 'GROUPBOX'
            object sLabel3: TsLabel
              Left = 25
              Top = 10
              Width = 48
              Height = 21
              Caption = #49688#52636#51088
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
            end
            object sPanel25: TsPanel
              Left = 84
              Top = 10
              Width = 98
              Height = 23
              Caption = #49345#54840
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit17: TsDBEdit
              Left = 183
              Top = 10
              Width = 535
              Height = 23
              Color = clWhite
              DataField = 'EXPORT_SANGHO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel26: TsPanel
              Left = 84
              Top = 58
              Width = 98
              Height = 23
              Caption = #44397#44032
              TabOrder = 2
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit18: TsDBEdit
              Left = 183
              Top = 58
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'EXPORT_NATION_CODE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sPanel27: TsPanel
              Left = 84
              Top = 34
              Width = 98
              Height = 23
              Caption = #51452#49548
              TabOrder = 4
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit19: TsDBEdit
              Left = 183
              Top = 34
              Width = 535
              Height = 23
              Color = clWhite
              DataField = 'EXPORT_ADDR1'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sDBEdit15: TsDBEdit
              Left = 223
              Top = 58
              Width = 183
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'EXPORT_NATION_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              SkinData.CustomColor = True
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
          object sPanel24: TsPanel
            Left = 8
            Top = 429
            Width = 785
            Height = 234
            TabOrder = 4
            SkinData.SkinSection = 'GROUPBOX'
            object sLabel4: TsLabel
              Left = 9
              Top = 10
              Width = 64
              Height = 21
              Caption = #49888#44256#51068#48152
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
            end
            object sPanel28: TsPanel
              Left = 84
              Top = 10
              Width = 98
              Height = 23
              Caption = #51064#46020#51312#44148
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit20: TsDBEdit
              Left = 183
              Top = 10
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'INDO_TYPE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sDBEdit24: TsDBEdit
              Left = 223
              Top = 10
              Width = 183
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'INDO_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              SkinData.CustomColor = True
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
            object sPanel31: TsPanel
              Left = 412
              Top = 10
              Width = 98
              Height = 23
              Caption = #53685#54868#51333#47448
              TabOrder = 3
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit25: TsDBEdit
              Left = 511
              Top = 10
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'PAY_UNIT'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
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
            object sDBEdit26: TsDBEdit
              Left = 551
              Top = 10
              Width = 183
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'PAY_UNIT_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              SkinData.CustomColor = True
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
            object sPanel29: TsPanel
              Left = 84
              Top = 34
              Width = 98
              Height = 23
              Caption = #44208#51228#48169#48277
              TabOrder = 6
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit21: TsDBEdit
              Left = 183
              Top = 34
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'PAY_TYPE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 7
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
            object sDBEdit22: TsDBEdit
              Left = 223
              Top = 34
              Width = 183
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'PAY_TYPE_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              SkinData.CustomColor = True
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
            object sPanel30: TsPanel
              Left = 412
              Top = 34
              Width = 98
              Height = 23
              Caption = #44208#51228#44552#50529
              TabOrder = 9
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit23: TsDBEdit
              Left = 511
              Top = 34
              Width = 138
              Height = 23
              Color = clWhite
              DataField = 'PAY_AMT'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 10
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
            object sPanel33: TsPanel
              Left = 412
              Top = 58
              Width = 98
              Height = 23
              Caption = #44208#51228#44592#44036
              TabOrder = 11
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit28: TsDBEdit
              Left = 511
              Top = 58
              Width = 223
              Height = 23
              Color = clWhite
              DataField = 'PAY_BETWEEN_DATE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 12
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
            object sPanel34: TsPanel
              Left = 84
              Top = 82
              Width = 98
              Height = 23
              Caption = #44397#45236#46020#52265#54637
              TabOrder = 13
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit29: TsDBEdit
              Left = 183
              Top = 82
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'DEST_PORT_CODE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 14
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
            object sDBEdit30: TsDBEdit
              Left = 223
              Top = 82
              Width = 183
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'DEST_PORT_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              SkinData.CustomColor = True
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
            object sPanel35: TsPanel
              Left = 412
              Top = 82
              Width = 98
              Height = 23
              Caption = #54408#51656#44160#49324#44592#44288
              TabOrder = 16
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit31: TsDBEdit
              Left = 511
              Top = 82
              Width = 39
              Height = 23
              Color = clWhite
              DataField = 'QUALITY_AGENCY_CODE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 17
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
            object sDBEdit32: TsDBEdit
              Left = 551
              Top = 82
              Width = 183
              Height = 23
              TabStop = False
              Color = clBtnFace
              DataField = 'QUALITY_AGENCY_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 18
              SkinData.CustomColor = True
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
            object sPanel36: TsPanel
              Left = 84
              Top = 106
              Width = 178
              Height = 23
              Caption = #52572#52488'('#46608#45716' '#44397#44032') '#44160#51221#44592#44288
              TabOrder = 19
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit33: TsDBEdit
              Left = 263
              Top = 106
              Width = 34
              Height = 23
              Color = clWhite
              DataField = 'FIRST_CHECK_AGENCY_CODE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 20
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
            object sPanel37: TsPanel
              Left = 84
              Top = 130
              Width = 178
              Height = 23
              Caption = #44288#54624#51648#48169' '#49885#54408#51032#50557#54408#50504#51204#52397
              TabOrder = 21
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit34: TsDBEdit
              Left = 298
              Top = 130
              Width = 436
              Height = 23
              TabStop = False
              Color = clWhite
              DataField = 'REGION_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 22
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
            object sPanel38: TsPanel
              Left = 84
              Top = 154
              Width = 178
              Height = 71
              Caption = #49688#51077#51088#44592#51116#49324#54637
              TabOrder = 23
              SkinData.SkinSection = 'PANEL'
            end
            object sDBMemo1: TsDBMemo
              Left = 263
              Top = 154
              Width = 471
              Height = 71
              Color = clWhite
              DataField = 'IMPORT_MEMO'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 24
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
            object sPanel32: TsPanel
              Left = 84
              Top = 58
              Width = 98
              Height = 23
              Caption = #52509#44552#50529
              TabOrder = 25
              SkinData.SkinSection = 'PANEL'
            end
            object sDBEdit27: TsDBEdit
              Left = 183
              Top = 58
              Width = 138
              Height = 23
              Color = clWhite
              DataField = 'PAY_AMT'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 26
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
            object sDBEdit84: TsDBEdit
              Left = 298
              Top = 106
              Width = 436
              Height = 23
              TabStop = False
              Color = clWhite
              DataField = 'FIRST_CHECK_AGENCY_NAME'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 27
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
            object sDBEdit85: TsDBEdit
              Left = 263
              Top = 130
              Width = 34
              Height = 23
              Color = clWhite
              DataField = 'REGION_CODE'
              DataSource = dsRecvStandard1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 28
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
      object sTabSheet3: TsTabSheet
        Caption = #54408#47785#49324#54637
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sSplitter3: TsSplitter
          Left = 0
          Top = 89
          Width = 802
          Height = 2
          Cursor = crVSplit
          Align = alTop
          AutoSnap = False
          Enabled = False
          SkinData.SkinSection = 'SPLITTER'
        end
        object sDBGrid2: TsDBGrid
          Left = 0
          Top = 0
          Width = 802
          Height = 89
          Align = alTop
          Color = clWhite
          Ctl3D = False
          DataSource = dsRecvStandard2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
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
              FieldName = 'SERIAL_NO'
              Title.Alignment = taCenter
              Title.Caption = #51068#47144#48264#54840
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HS'
              Title.Alignment = taCenter
              Title.Caption = 'HS'#48512#54840
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRADE_NAME'
              Title.Caption = #44144#47000#54408#47749
              Width = 317
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODEL_SIZE'
              Title.Caption = #47784#45944#44508#44201
              Width = 259
              Visible = True
            end>
        end
        object sPanel39: TsPanel
          Left = 0
          Top = 91
          Width = 802
          Height = 588
          Align = alClient
          TabOrder = 1
          SkinData.SkinSection = 'GROUPBOX'
          object sPanel40: TsPanel
            Left = 6
            Top = 8
            Width = 81
            Height = 23
            Caption = 'HS'#48512#54840
            TabOrder = 0
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit35: TsDBEdit
            Left = 88
            Top = 8
            Width = 120
            Height = 23
            Color = clWhite
            DataField = 'HS'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          object sPanel41: TsPanel
            Left = 6
            Top = 32
            Width = 81
            Height = 23
            Caption = #54408#47785#53076#46300
            TabOrder = 2
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit36: TsDBEdit
            Left = 88
            Top = 32
            Width = 207
            Height = 23
            Color = clWhite
            DataField = 'GOODS_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          object sPanel42: TsPanel
            Left = 214
            Top = 8
            Width = 81
            Height = 23
            Caption = #54408#47785#49885#48324#48512#54840
            TabOrder = 4
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit38: TsDBEdit
            Left = 296
            Top = 8
            Width = 28
            Height = 23
            Color = clWhite
            DataField = 'SERIAL_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
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
          object sPanel43: TsPanel
            Left = 296
            Top = 32
            Width = 81
            Height = 23
            Caption = #44396' '#54408#47785#53076#46300
            TabOrder = 6
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit37: TsDBEdit
            Left = 376
            Top = 32
            Width = 207
            Height = 23
            Color = clWhite
            DataField = 'OLD_GOODS_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
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
          object sPanel44: TsPanel
            Left = 584
            Top = 32
            Width = 81
            Height = 23
            Caption = #44396' '#51333#48324#53076#46300
            TabOrder = 8
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit39: TsDBEdit
            Left = 666
            Top = 32
            Width = 128
            Height = 23
            Color = clWhite
            DataField = 'OLD_JONG_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
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
          object sPanel45: TsPanel
            Left = 6
            Top = 58
            Width = 115
            Height = 23
            Caption = #44592#45733#49457#54868#51109#54408' '#44396#48516
            TabOrder = 10
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit40: TsDBEdit
            Left = 122
            Top = 58
            Width = 47
            Height = 23
            Color = clWhite
            DataField = 'COSMETIC_GUBUN'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
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
          object sDBEdit41: TsDBEdit
            Left = 170
            Top = 58
            Width = 103
            Height = 23
            Color = clBtnFace
            DataField = 'COSMETIC_GUBUN_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
            SkinData.CustomColor = True
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
          object sPanel46: TsPanel
            Left = 282
            Top = 58
            Width = 115
            Height = 23
            Caption = 'DMF '#45824#49345#44396#48516
            TabOrder = 13
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit42: TsDBEdit
            Left = 398
            Top = 58
            Width = 47
            Height = 23
            Color = clWhite
            DataField = 'DMF'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
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
          object sDBEdit43: TsDBEdit
            Left = 446
            Top = 58
            Width = 107
            Height = 23
            Color = clBtnFace
            DataField = 'DMF_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
            SkinData.CustomColor = True
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
          object sPanel47: TsPanel
            Left = 559
            Top = 58
            Width = 115
            Height = 23
            Caption = 'BGMP '#45824#49345#44396#48516
            TabOrder = 16
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit44: TsDBEdit
            Left = 675
            Top = 58
            Width = 47
            Height = 23
            Color = clWhite
            DataField = 'BGMP'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 17
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
          object sDBEdit45: TsDBEdit
            Left = 723
            Top = 58
            Width = 71
            Height = 23
            Color = clBtnFace
            DataField = 'BGMP_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
            SkinData.CustomColor = True
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
          object sPanel48: TsPanel
            Left = 6
            Top = 85
            Width = 91
            Height = 61
            Caption = #44144#47000#54408#47749
            TabOrder = 19
            SkinData.SkinSection = 'PANEL'
          end
          object sDBMemo2: TsDBMemo
            Left = 98
            Top = 85
            Width = 694
            Height = 61
            Color = clWhite
            DataField = 'TRADE_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 20
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
          object sPanel49: TsPanel
            Left = 6
            Top = 147
            Width = 91
            Height = 61
            Caption = #47784#45944#44508#44201
            TabOrder = 21
            SkinData.SkinSection = 'PANEL'
          end
          object sDBMemo3: TsDBMemo
            Left = 98
            Top = 147
            Width = 694
            Height = 61
            Color = clWhite
            DataField = 'MODEL_SIZE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 22
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
          object sPanel50: TsPanel
            Left = 6
            Top = 209
            Width = 91
            Height = 61
            Caption = #49457#48516
            TabOrder = 23
            SkinData.SkinSection = 'PANEL'
          end
          object sDBMemo4: TsDBMemo
            Left = 98
            Top = 209
            Width = 694
            Height = 61
            Color = clWhite
            DataField = 'MODEL_SIZE_INGREDIENT'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 24
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
          object sPanel51: TsPanel
            Left = 6
            Top = 276
            Width = 91
            Height = 23
            Caption = #54364#51456#53076#46300
            TabOrder = 25
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit46: TsDBEdit
            Left = 98
            Top = 276
            Width = 207
            Height = 23
            Color = clWhite
            DataField = 'DRUG_STANDARD_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 26
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
          object sPanel52: TsPanel
            Left = 6
            Top = 304
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#49345#54840'1'
            TabOrder = 27
            SkinData.SkinSection = 'PANEL'
          end
          object sPanel53: TsPanel
            Left = 6
            Top = 328
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#49345#54840'2'
            TabOrder = 28
            SkinData.SkinSection = 'PANEL'
          end
          object sPanel54: TsPanel
            Left = 6
            Top = 352
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#49345#54840'3'
            TabOrder = 29
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit47: TsDBEdit
            Left = 98
            Top = 304
            Width = 207
            Height = 23
            Color = clWhite
            DataField = 'WITAK_SANGHO1'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 30
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
          object sDBEdit48: TsDBEdit
            Left = 98
            Top = 328
            Width = 207
            Height = 23
            Color = clWhite
            DataField = 'WITAK_SANGHO2'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 31
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
          object sDBEdit49: TsDBEdit
            Left = 98
            Top = 352
            Width = 207
            Height = 23
            Color = clWhite
            DataField = 'WITAK_SANGHO3'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 32
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
          object sPanel55: TsPanel
            Left = 307
            Top = 304
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#51452#49548'1'
            TabOrder = 33
            SkinData.SkinSection = 'PANEL'
          end
          object sPanel56: TsPanel
            Left = 307
            Top = 328
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#51452#49548'2'
            TabOrder = 34
            SkinData.SkinSection = 'PANEL'
          end
          object sPanel57: TsPanel
            Left = 307
            Top = 352
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#51452#49548'3'
            TabOrder = 35
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit50: TsDBEdit
            Left = 399
            Top = 304
            Width = 394
            Height = 23
            Color = clWhite
            DataField = 'WITAK_ADDR1'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 36
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
          object sDBEdit51: TsDBEdit
            Left = 399
            Top = 328
            Width = 394
            Height = 23
            Color = clWhite
            DataField = 'WITAK_ADDR2'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 37
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
          object sDBEdit52: TsDBEdit
            Left = 399
            Top = 352
            Width = 394
            Height = 23
            Color = clWhite
            DataField = 'WITAK_ADDR3'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 38
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
          object sPanel58: TsPanel
            Left = 6
            Top = 376
            Width = 91
            Height = 23
            Caption = #50948#53441#51228#51312' '#44397#44032
            TabOrder = 39
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit53: TsDBEdit
            Left = 98
            Top = 376
            Width = 47
            Height = 23
            Color = clWhite
            DataField = 'WITAK_NATION_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 40
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
          object sDBEdit54: TsDBEdit
            Left = 146
            Top = 376
            Width = 252
            Height = 23
            Color = clBtnFace
            DataField = 'WITAK_NATION_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 41
            SkinData.CustomColor = True
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
          object sPanel59: TsPanel
            Left = 6
            Top = 404
            Width = 91
            Height = 23
            Caption = #49688#47049
            TabOrder = 42
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit55: TsDBEdit
            Left = 98
            Top = 404
            Width = 119
            Height = 23
            Color = clWhite
            DataField = 'MODEL_QTY'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 43
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
          object sDBEdit56: TsDBEdit
            Left = 218
            Top = 404
            Width = 39
            Height = 23
            Color = clBtnFace
            DataField = 'MODEL_QTY_UNIT'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 44
            SkinData.CustomColor = True
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
          object sPanel60: TsPanel
            Left = 6
            Top = 428
            Width = 91
            Height = 23
            Caption = #45800#44032
            TabOrder = 45
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit57: TsDBEdit
            Left = 98
            Top = 428
            Width = 119
            Height = 23
            Color = clWhite
            DataField = 'MODEL_DANGA'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 46
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
          object sPanel61: TsPanel
            Left = 6
            Top = 452
            Width = 91
            Height = 23
            Caption = #44552#50529
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 47
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit59: TsDBEdit
            Left = 98
            Top = 452
            Width = 119
            Height = 23
            Color = clWhite
            DataField = 'MODEL_AMT'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 48
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
          object sDBEdit61: TsDBEdit
            Left = 218
            Top = 452
            Width = 39
            Height = 23
            Color = clBtnFace
            DataField = 'MODEL_AMT_UNIT'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 49
            SkinData.CustomColor = True
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
          object sPanel62: TsPanel
            Left = 6
            Top = 481
            Width = 91
            Height = 23
            Caption = #54728#44032#48264#54840
            TabOrder = 50
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit62: TsDBEdit
            Left = 98
            Top = 481
            Width = 159
            Height = 23
            Color = clWhite
            DataField = 'PERMIT_SINGO_NO'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 51
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
          object sPanel63: TsPanel
            Left = 258
            Top = 481
            Width = 91
            Height = 23
            Caption = #54728#44032#51068#51088
            TabOrder = 52
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit63: TsDBEdit
            Left = 350
            Top = 481
            Width = 111
            Height = 23
            Color = clWhite
            DataField = 'PERMIT_SINGO_DATE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 53
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
          object sPanel64: TsPanel
            Left = 6
            Top = 509
            Width = 91
            Height = 23
            Caption = 'BSE '#45824#49345#54408#47785
            TabOrder = 54
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit64: TsDBEdit
            Left = 98
            Top = 509
            Width = 31
            Height = 23
            Color = clWhite
            DataField = 'BSE_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 55
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
          object sPanel65: TsPanel
            Left = 186
            Top = 509
            Width = 91
            Height = 23
            Caption = 'BSE '#50896#49328#51648
            TabOrder = 56
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit65: TsDBEdit
            Left = 278
            Top = 509
            Width = 47
            Height = 23
            Color = clWhite
            DataField = 'BSE_ORIGIN_NATION_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 57
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
          object sDBEdit66: TsDBEdit
            Left = 326
            Top = 509
            Width = 170
            Height = 23
            Color = clBtnFace
            DataField = 'BSE_ORIGIN_NATION_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 58
            SkinData.CustomColor = True
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
          object sPanel66: TsPanel
            Left = 498
            Top = 509
            Width = 91
            Height = 23
            Caption = #44592#50896#46041#47932
            TabOrder = 59
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit67: TsDBEdit
            Left = 590
            Top = 509
            Width = 203
            Height = 23
            Color = clWhite
            DataField = 'ORIGIN_MATTER'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 60
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
          object sPanel67: TsPanel
            Left = 186
            Top = 533
            Width = 91
            Height = 23
            Caption = 'Batch No.'
            TabOrder = 61
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit68: TsDBEdit
            Left = 278
            Top = 533
            Width = 218
            Height = 23
            Color = clWhite
            DataField = 'BATCH_NO'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 62
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
          object sPanel68: TsPanel
            Left = 498
            Top = 533
            Width = 91
            Height = 23
            Caption = #52628#52636#48512#50948
            TabOrder = 63
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit69: TsDBEdit
            Left = 590
            Top = 533
            Width = 203
            Height = 23
            Color = clWhite
            DataField = 'EXTRACTION'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 64
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
          object sPanel69: TsPanel
            Left = 186
            Top = 557
            Width = 91
            Height = 23
            Caption = #50896#49328#51648
            TabOrder = 65
            SkinData.SkinSection = 'PANEL'
          end
          object sDBEdit70: TsDBEdit
            Left = 278
            Top = 557
            Width = 47
            Height = 23
            Color = clWhite
            DataField = 'ORIGIN_NATION_CODE'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 66
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
          object sDBEdit71: TsDBEdit
            Left = 326
            Top = 557
            Width = 170
            Height = 23
            Color = clBtnFace
            DataField = 'ORIGIN_NATION_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 67
            SkinData.CustomColor = True
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
          object sDBEdit86: TsDBEdit
            Left = 323
            Top = 8
            Width = 41
            Height = 23
            Color = clWhite
            DataField = 'SERIAL_NO'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 68
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
          object sDBEdit58: TsDBEdit
            Left = 130
            Top = 509
            Width = 55
            Height = 23
            Color = clBtnFace
            DataField = 'BSE_CODE_NAME'
            DataSource = dsRecvStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 69
            SkinData.CustomColor = True
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
      object sTabSheet4: TsTabSheet
        Caption = #51228#51312#51221#48372' / '#46041#51068#49457#44160#49324' / '#44228#50557'('#49688#53441')'#51228#51312
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sPanel70: TsPanel
          Left = 0
          Top = 0
          Width = 802
          Height = 27
          Align = alTop
          Color = 13398082
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          SkinData.CustomColor = True
          SkinData.CustomFont = True
          SkinData.SkinSection = 'BAR'
          object sLabel6: TsLabel
            Left = 8
            Top = 5
            Width = 52
            Height = 17
            Caption = #51228#51312#51221#48372
            Color = clNavy
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            UseSkinColor = False
          end
        end
        object sDBGrid3: TsDBGrid
          Left = 0
          Top = 27
          Width = 802
          Height = 122
          Align = alTop
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = #47569#51008' '#44256#46357
          TitleFont.Style = []
          SkinData.SkinSection = 'EDIT'
        end
        object sPanel71: TsPanel
          Left = 0
          Top = 149
          Width = 802
          Height = 27
          Align = alTop
          Color = 12608052
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.CustomColor = True
          SkinData.CustomFont = True
          SkinData.SkinSection = 'BAR'
          object sLabel5: TsLabel
            Left = 8
            Top = 5
            Width = 65
            Height = 17
            Caption = #46041#51068#49457#44160#49324
            Color = clNavy
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            UseSkinColor = False
          end
        end
        object sDBGrid4: TsDBGrid
          Left = 0
          Top = 176
          Width = 802
          Height = 122
          Align = alTop
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = #47569#51008' '#44256#46357
          TitleFont.Style = []
          SkinData.SkinSection = 'EDIT'
        end
        object sPanel72: TsPanel
          Left = 0
          Top = 298
          Width = 802
          Height = 27
          Align = alTop
          Color = 12608052
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          SkinData.CustomColor = True
          SkinData.CustomFont = True
          SkinData.SkinSection = 'BAR'
          object sLabel7: TsLabel
            Left = 8
            Top = 5
            Width = 119
            Height = 17
            Caption = #44228#50557'('#49688#53441')'#51228#51312' '#51221#48372
            Color = clNavy
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            UseSkinColor = False
          end
        end
        object sDBGrid5: TsDBGrid
          Left = 0
          Top = 325
          Width = 802
          Height = 354
          Align = alClient
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = #47569#51008' '#44256#46357
          TitleFont.Style = []
          SkinData.SkinSection = 'EDIT'
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 712
    Top = 0
  end
  object qryRecvStandard1: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    AfterOpen = qryRecvStandard1AfterOpen
    AfterScroll = qryRecvStandard1AfterScroll
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
      'SELECT DOC_NO, DOC_TYPE, PROCESS_STATE,'
      'CASE PROCESS_STATE WHEN '#39'R01'#39' THEN '#39#49849#51064#53685#48372#39
      '                   WHEN '#39'RO2'#39' THEN '#39#49849#51064#51116#53685#48372#39
      '                   ELSE '#39#50508#49688#50630#45716' '#49688#49888#39
      'END PROCESS_STATE_NAME,'
      
        'PUBLISH_NO, PUBLISH_DATE, EXPIRY_DATE, PUBLISH_INSTITUTE, PUBLIS' +
        'H_PERSON, PUBLISH_TEL, PUBLISH_SIGN, PUBLISH_MEMO, DOC_GUBUN, RE' +
        'QUEST_DATE, JEJE_GUBUN, IMPORT_SAUP_NO,'
      
        'IMPORT_SANGHO, IMPORT_DAEPYO, IMPORT_TRADE_NO, IMPORT_POST_NO, I' +
        'MPORT_ADDR1, IMPORT_ADDR2, IMPORT_TYPE, HWAJU_SAUP_NO, HWAJU_SAN' +
        'GHO, HWAJU_DAEPYO, HWAJU_POST_NO, HWAJU_ADDR1, HWAJU_ADDR2, '
      
        'EXPORT_SANGHO, EXPORT_ADDR1, EXPORT_NATION_CODE, EXPORT_NATION_N' +
        'AME, INDO_TYPE, PAY_TYPE, PAY_AMT, PAY_UNIT, PAY_BETWEEN_DATE, D' +
        'EST_PORT_CODE, DEST_PORT_NAME, QUALITY_AGENCY_CODE, '
      
        'QUALITY_AGENCY_NAME, FIRST_CHECK_AGENCY_CODE, REGION_CODE, REGIO' +
        'N_NAME, IMPORT_MEMO, TOTAL_COUNT,'
      'JEJE.CODE_CONTENTS as JEJE_NAME,'
      'REQUEST_DOC.CODE_CONTENTS as REQUEST_DOC_NAME,'
      'INDO.CODE_CONTENTS as INDO_NAME,'
      'CURR.CODE_CONTENTS as PAY_UNIT_NAME,'
      'PAY.CODE_CONTENTS as PAY_TYPE_NAME,'
      'MMSP.CODE_CONTENTS as FIRST_CHECK_AGENCY_NAME'
      
        'FROM RECV_STANDARD1 LEFT JOIN [getCodeList]('#39'JEJE_GUBUN'#39') JEJE O' +
        'N RECV_STANDARD1.JEJE_GUBUN = JEJE.CODE_TYPE'
      
        '                    LEFT JOIN [getCodeList]('#39'REQUEST_DOC_TYPE'#39') ' +
        'REQUEST_DOC ON RECV_STANDARD1.DOC_GUBUN = REQUEST_DOC.CODE_TYPE'
      
        '                    LEFT JOIN [getCodeList]('#39'INDO'#39') INDO ON RECV' +
        '_STANDARD1.INDO_TYPE = INDO.CODE_TYPE'
      
        '                    LEFT JOIN [getCodeList]('#39'CURR_TYPE'#39') CURR ON' +
        ' RECV_STANDARD1.PAY_UNIT = CURR.CODE_TYPE'
      
        '                    LEFT JOIN [getCodeList]('#39'PAY_TYPE'#39') PAY ON R' +
        'ECV_STANDARD1.PAY_TYPE = PAY.CODE_TYPE'
      
        '                    LEFT JOIN [getCodeList]('#39'MMSP'#39') MMSP ON RECV' +
        '_STANDARD1.FIRST_CHECK_AGENCY_CODE = MMSP.CODE_TYPE'
      'WHERE REQUEST_DATE between :FromDate AND :ToDate')
    Left = 400
    Top = 392
    object qryRecvStandard1DOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object qryRecvStandard1DOC_TYPE: TStringField
      FieldName = 'DOC_TYPE'
      Size = 9
    end
    object qryRecvStandard1PROCESS_STATE: TStringField
      FieldName = 'PROCESS_STATE'
      Size = 3
    end
    object qryRecvStandard1PUBLISH_NO: TStringField
      FieldName = 'PUBLISH_NO'
      Size = 35
    end
    object qryRecvStandard1PUBLISH_DATE: TStringField
      FieldName = 'PUBLISH_DATE'
      EditMask = '9999.99.99;0'
      Size = 8
    end
    object qryRecvStandard1EXPIRY_DATE: TStringField
      FieldName = 'EXPIRY_DATE'
      EditMask = '9999.99.99;0'
      Size = 8
    end
    object qryRecvStandard1PUBLISH_INSTITUTE: TStringField
      FieldName = 'PUBLISH_INSTITUTE'
      Size = 100
    end
    object qryRecvStandard1PUBLISH_PERSON: TStringField
      FieldName = 'PUBLISH_PERSON'
      Size = 30
    end
    object qryRecvStandard1PUBLISH_TEL: TStringField
      FieldName = 'PUBLISH_TEL'
      Size = 14
    end
    object qryRecvStandard1PUBLISH_SIGN: TStringField
      FieldName = 'PUBLISH_SIGN'
    end
    object qryRecvStandard1PUBLISH_MEMO: TMemoField
      FieldName = 'PUBLISH_MEMO'
      BlobType = ftMemo
    end
    object qryRecvStandard1DOC_GUBUN: TStringField
      FieldName = 'DOC_GUBUN'
      Size = 3
    end
    object qryRecvStandard1REQUEST_DATE: TDateTimeField
      FieldName = 'REQUEST_DATE'
    end
    object qryRecvStandard1IMPORT_SAUP_NO: TStringField
      FieldName = 'IMPORT_SAUP_NO'
      Size = 10
    end
    object qryRecvStandard1IMPORT_SANGHO: TStringField
      FieldName = 'IMPORT_SANGHO'
      Size = 100
    end
    object qryRecvStandard1IMPORT_DAEPYO: TStringField
      FieldName = 'IMPORT_DAEPYO'
      Size = 100
    end
    object qryRecvStandard1IMPORT_TRADE_NO: TStringField
      FieldName = 'IMPORT_TRADE_NO'
      Size = 22
    end
    object qryRecvStandard1IMPORT_POST_NO: TStringField
      FieldName = 'IMPORT_POST_NO'
      Size = 50
    end
    object qryRecvStandard1IMPORT_ADDR1: TStringField
      FieldName = 'IMPORT_ADDR1'
      Size = 150
    end
    object qryRecvStandard1IMPORT_ADDR2: TStringField
      FieldName = 'IMPORT_ADDR2'
      Size = 150
    end
    object qryRecvStandard1IMPORT_TYPE: TBooleanField
      FieldName = 'IMPORT_TYPE'
    end
    object qryRecvStandard1HWAJU_SAUP_NO: TStringField
      FieldName = 'HWAJU_SAUP_NO'
      Size = 50
    end
    object qryRecvStandard1HWAJU_SANGHO: TStringField
      FieldName = 'HWAJU_SANGHO'
      Size = 100
    end
    object qryRecvStandard1HWAJU_DAEPYO: TStringField
      FieldName = 'HWAJU_DAEPYO'
      Size = 100
    end
    object qryRecvStandard1HWAJU_POST_NO: TStringField
      FieldName = 'HWAJU_POST_NO'
      Size = 50
    end
    object qryRecvStandard1HWAJU_ADDR1: TStringField
      FieldName = 'HWAJU_ADDR1'
      Size = 150
    end
    object qryRecvStandard1HWAJU_ADDR2: TStringField
      FieldName = 'HWAJU_ADDR2'
      Size = 150
    end
    object qryRecvStandard1EXPORT_SANGHO: TStringField
      FieldName = 'EXPORT_SANGHO'
      Size = 100
    end
    object qryRecvStandard1EXPORT_ADDR1: TStringField
      FieldName = 'EXPORT_ADDR1'
      Size = 150
    end
    object qryRecvStandard1EXPORT_NATION_CODE: TStringField
      FieldName = 'EXPORT_NATION_CODE'
      Size = 2
    end
    object qryRecvStandard1EXPORT_NATION_NAME: TStringField
      FieldName = 'EXPORT_NATION_NAME'
      Size = 50
    end
    object qryRecvStandard1INDO_TYPE: TStringField
      FieldName = 'INDO_TYPE'
      Size = 3
    end
    object qryRecvStandard1PAY_TYPE: TStringField
      FieldName = 'PAY_TYPE'
      Size = 3
    end
    object qryRecvStandard1PAY_AMT: TBCDField
      FieldName = 'PAY_AMT'
      Precision = 16
    end
    object qryRecvStandard1PAY_UNIT: TStringField
      FieldName = 'PAY_UNIT'
      Size = 3
    end
    object qryRecvStandard1PAY_BETWEEN_DATE: TStringField
      FieldName = 'PAY_BETWEEN_DATE'
      Size = 255
    end
    object qryRecvStandard1DEST_PORT_CODE: TStringField
      FieldName = 'DEST_PORT_CODE'
      Size = 5
    end
    object qryRecvStandard1DEST_PORT_NAME: TStringField
      FieldName = 'DEST_PORT_NAME'
      Size = 100
    end
    object qryRecvStandard1QUALITY_AGENCY_CODE: TStringField
      FieldName = 'QUALITY_AGENCY_CODE'
      Size = 2
    end
    object qryRecvStandard1QUALITY_AGENCY_NAME: TStringField
      FieldName = 'QUALITY_AGENCY_NAME'
      Size = 100
    end
    object qryRecvStandard1FIRST_CHECK_AGENCY_CODE: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_CODE'
      Size = 3
    end
    object qryRecvStandard1REGION_CODE: TStringField
      FieldName = 'REGION_CODE'
      Size = 3
    end
    object qryRecvStandard1REGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 60
    end
    object qryRecvStandard1IMPORT_MEMO: TMemoField
      FieldName = 'IMPORT_MEMO'
      BlobType = ftMemo
    end
    object qryRecvStandard1TOTAL_COUNT: TIntegerField
      FieldName = 'TOTAL_COUNT'
    end
    object qryRecvStandard1JEJE_GUBUN: TStringField
      FieldName = 'JEJE_GUBUN'
      Size = 3
    end
    object qryRecvStandard1PROCESS_STATE_NAME: TStringField
      FieldName = 'PROCESS_STATE_NAME'
      ReadOnly = True
      Size = 13
    end
    object qryRecvStandard1JEJE_NAME: TStringField
      FieldName = 'JEJE_NAME'
      Size = 100
    end
    object qryRecvStandard1REQUEST_DOC_NAME: TStringField
      FieldName = 'REQUEST_DOC_NAME'
      Size = 100
    end
    object qryRecvStandard1INDO_NAME: TStringField
      FieldName = 'INDO_NAME'
      Size = 100
    end
    object qryRecvStandard1PAY_UNIT_NAME: TStringField
      FieldName = 'PAY_UNIT_NAME'
      Size = 100
    end
    object qryRecvStandard1PAY_TYPE_NAME: TStringField
      FieldName = 'PAY_TYPE_NAME'
      Size = 100
    end
    object qryRecvStandard1FIRST_CHECK_AGENCY_NAME: TStringField
      FieldName = 'FIRST_CHECK_AGENCY_NAME'
      Size = 100
    end
  end
  object dsRecvStandard1: TDataSource
    DataSet = qryRecvStandard1
    Left = 432
    Top = 392
  end
  object qryRecvStandard2: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DOC_NO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = 'S138514000001'
      end>
    SQL.Strings = (
      
        'SELECT DOC_NO, SERIAL_CODE, SERIAL_NO, HS, GOODS_CODE, OLD_JONG_' +
        'CODE, OLD_GOODS_CODE, COSMETIC_GUBUN, DMF, BGMP, TRADE_NAME, MOD' +
        'EL_SIZE, MODEL_SIZE_INGREDIENT,'
      
        'DRUG_STANDARD_CODE, WITAK_SANGHO1, WITAK_SANGHO2, WITAK_SANGHO3,' +
        ' WITAK_ADDR1, WITAK_ADDR2, WITAK_ADDR3, WITAK_NATION_CODE, WITAK' +
        '_NATION_NAME, MODEL_QTY,'
      
        'MODEL_QTY_UNIT, MODEL_DANGA, MODEL_AMT, MODEL_AMT_UNIT, PERMIT_S' +
        'INGO_NO, PERMIT_SINGO_DATE, BSE_CODE, BSE_ORIGIN_NATION_CODE, BS' +
        'E_ORIGIN_NATION_NAME,'
      
        'ORIGIN_MATTER, EXTRACTION, BATCH_NO, ORIGIN_NATION_CODE, ORIGIN_' +
        'NATION_NAME,'
      
        'CASE COSMETIC_GUBUN WHEN '#39'1AV'#39' THEN '#39#48708#45824#49345#39' WHEN '#39'1AU'#39' THEN '#39#45824#49345#39' E' +
        'ND as COSMETIC_GUBUN_NAME,'
      
        'CASE DMF WHEN '#39'1AV'#39' THEN '#39#48708#45824#49345#39' WHEN '#39'1AU'#39' THEN '#39#45824#49345#39' END as DMF_N' +
        'AME,'
      
        'CASE BGMP WHEN '#39'1AV'#39' THEN '#39#48708#45824#49345#39' WHEN '#39'1AU'#39' THEN '#39#45824#49345#39' END as BGMP' +
        '_NAME,'
      
        'CASE BSE_CODE WHEN '#39'1AV'#39' THEN '#39#48708#45824#49345#39' WHEN '#39'1AU'#39' THEN '#39#45824#49345#39' END as ' +
        'BSE_CODE_NAME'
      'FROM [RECV_STANDARD2]'
      'WHERE DOC_NO = :DOC_NO AND SERIAL_CODE = '#39'FR2'#39)
    Left = 400
    Top = 424
    object qryRecvStandard2DOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 13
    end
    object qryRecvStandard2SERIAL_CODE: TStringField
      FieldName = 'SERIAL_CODE'
      Size = 3
    end
    object qryRecvStandard2SERIAL_NO: TStringField
      FieldName = 'SERIAL_NO'
    end
    object qryRecvStandard2HS: TStringField
      FieldName = 'HS'
      Size = 10
    end
    object qryRecvStandard2GOODS_CODE: TStringField
      FieldName = 'GOODS_CODE'
      Size = 26
    end
    object qryRecvStandard2OLD_JONG_CODE: TStringField
      FieldName = 'OLD_JONG_CODE'
      Size = 4
    end
    object qryRecvStandard2OLD_GOODS_CODE: TStringField
      FieldName = 'OLD_GOODS_CODE'
      Size = 26
    end
    object qryRecvStandard2COSMETIC_GUBUN: TStringField
      FieldName = 'COSMETIC_GUBUN'
      Size = 3
    end
    object qryRecvStandard2DMF: TStringField
      FieldName = 'DMF'
      Size = 3
    end
    object qryRecvStandard2BGMP: TStringField
      FieldName = 'BGMP'
      Size = 3
    end
    object qryRecvStandard2TRADE_NAME: TStringField
      FieldName = 'TRADE_NAME'
      Size = 210
    end
    object qryRecvStandard2MODEL_SIZE: TMemoField
      FieldName = 'MODEL_SIZE'
      OnGetText = qryRecvStandard2MODEL_SIZEGetText
      BlobType = ftMemo
    end
    object qryRecvStandard2MODEL_SIZE_INGREDIENT: TMemoField
      FieldName = 'MODEL_SIZE_INGREDIENT'
      BlobType = ftMemo
    end
    object qryRecvStandard2DRUG_STANDARD_CODE: TStringField
      FieldName = 'DRUG_STANDARD_CODE'
      Size = 18
    end
    object qryRecvStandard2WITAK_SANGHO1: TStringField
      FieldName = 'WITAK_SANGHO1'
      Size = 100
    end
    object qryRecvStandard2WITAK_SANGHO2: TStringField
      FieldName = 'WITAK_SANGHO2'
      Size = 100
    end
    object qryRecvStandard2WITAK_SANGHO3: TStringField
      FieldName = 'WITAK_SANGHO3'
      Size = 100
    end
    object qryRecvStandard2WITAK_ADDR1: TStringField
      FieldName = 'WITAK_ADDR1'
      Size = 150
    end
    object qryRecvStandard2WITAK_ADDR2: TStringField
      FieldName = 'WITAK_ADDR2'
      Size = 150
    end
    object qryRecvStandard2WITAK_ADDR3: TStringField
      FieldName = 'WITAK_ADDR3'
      Size = 150
    end
    object qryRecvStandard2WITAK_NATION_CODE: TStringField
      FieldName = 'WITAK_NATION_CODE'
      Size = 2
    end
    object qryRecvStandard2WITAK_NATION_NAME: TStringField
      FieldName = 'WITAK_NATION_NAME'
      Size = 50
    end
    object qryRecvStandard2MODEL_QTY: TBCDField
      FieldName = 'MODEL_QTY'
      Precision = 16
    end
    object qryRecvStandard2MODEL_QTY_UNIT: TStringField
      FieldName = 'MODEL_QTY_UNIT'
      Size = 3
    end
    object qryRecvStandard2MODEL_DANGA: TBCDField
      FieldName = 'MODEL_DANGA'
      Precision = 16
    end
    object qryRecvStandard2MODEL_AMT: TBCDField
      FieldName = 'MODEL_AMT'
      Precision = 19
    end
    object qryRecvStandard2MODEL_AMT_UNIT: TStringField
      FieldName = 'MODEL_AMT_UNIT'
      Size = 3
    end
    object qryRecvStandard2PERMIT_SINGO_NO: TStringField
      FieldName = 'PERMIT_SINGO_NO'
      Size = 35
    end
    object qryRecvStandard2PERMIT_SINGO_DATE: TStringField
      FieldName = 'PERMIT_SINGO_DATE'
      EditMask = '9999-99-99;0'
      Size = 8
    end
    object qryRecvStandard2BSE_CODE: TStringField
      FieldName = 'BSE_CODE'
      Size = 3
    end
    object qryRecvStandard2BSE_ORIGIN_NATION_CODE: TStringField
      FieldName = 'BSE_ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryRecvStandard2BSE_ORIGIN_NATION_NAME: TStringField
      FieldName = 'BSE_ORIGIN_NATION_NAME'
      Size = 50
    end
    object qryRecvStandard2ORIGIN_MATTER: TStringField
      FieldName = 'ORIGIN_MATTER'
      Size = 100
    end
    object qryRecvStandard2EXTRACTION: TStringField
      FieldName = 'EXTRACTION'
      Size = 255
    end
    object qryRecvStandard2BATCH_NO: TStringField
      FieldName = 'BATCH_NO'
      Size = 255
    end
    object qryRecvStandard2ORIGIN_NATION_CODE: TStringField
      FieldName = 'ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryRecvStandard2ORIGIN_NATION_NAME: TStringField
      FieldName = 'ORIGIN_NATION_NAME'
      Size = 50
    end
    object qryRecvStandard2COSMETIC_GUBUN_NAME: TStringField
      FieldName = 'COSMETIC_GUBUN_NAME'
      ReadOnly = True
      Size = 6
    end
    object qryRecvStandard2DMF_NAME: TStringField
      FieldName = 'DMF_NAME'
      ReadOnly = True
      Size = 6
    end
    object qryRecvStandard2BGMP_NAME: TStringField
      FieldName = 'BGMP_NAME'
      ReadOnly = True
      Size = 6
    end
    object qryRecvStandard2BSE_CODE_NAME: TStringField
      FieldName = 'BSE_CODE_NAME'
      ReadOnly = True
      Size = 6
    end
  end
  object dsRecvStandard2: TDataSource
    DataSet = qryRecvStandard2
    Left = 432
    Top = 424
  end
end
