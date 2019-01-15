inherited UI_KPTA_DocNormal_frm: TUI_KPTA_DocNormal_frm
  Left = 886
  Top = 21
  BorderIcons = []
  BorderWidth = 2
  Caption = #54364#51456#53685#44288#50696#51221#48372#44256#49436' - '#51068#48152
  ClientHeight = 870
  ClientWidth = 876
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 54
    Width = 876
    Height = 27
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 0
    Width = 876
    Height = 54
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    object sLabel1: TsLabel
      Left = 8
      Top = 8
      Width = 380
      Height = 25
      Caption = #54364#51456#53685#44288' '#50696#51221#48372#44256#49436'('#54620#44397#51032#50557#54408#49688#52636#51077#54801#54924')'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
    end
    object sLabel7: TsLabel
      Left = 8
      Top = 32
      Width = 215
      Height = 15
      Caption = #53076#46300' '#46020#50880#47568' : '#54644#45817' '#53076#46300' '#51089#49457#52856#50640#49436' F11'
    end
    object lab_DiffUser: TsLabel
      Left = 538
      Top = 33
      Width = 274
      Height = 15
      Caption = '1'#48264' '#50976#51200#44032' '#51089#49457#54620' '#47928#49436#51077#45768#45796'. '#49688#51221#54624' '#49688' '#50630#49845#45768#45796
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      UseSkinColor = False
    end
    object sButton1: TsButton
      Left = 753
      Top = 1
      Width = 60
      Height = 49
      Cursor = crHandPoint
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
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 1
    end
    object sButton2: TsButton
      Tag = -1
      Left = 692
      Top = 1
      Width = 60
      Height = 49
      Cursor = crHandPoint
      Caption = #51076#49884
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
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 15
    end
    object sButton3: TsButton
      Left = 814
      Top = 1
      Width = 60
      Height = 49
      Cursor = crHandPoint
      Caption = #52712#49548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 14
    end
  end
  object sPageControl1: TsPageControl [2]
    Left = 0
    Top = 81
    Width = 876
    Height = 789
    ActivePage = sTabSheet2
    Align = alClient
    Images = DataModule_ICON.IMG_24
    TabHeight = 30
    TabIndex = 1
    TabOrder = 1
    TabWidth = 95
    OnChanging = sPageControl1Changing
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = #44277#53685#49324#54637
      ImageIndex = 11
      OnShow = sTabSheet1Show
      object sPanel6: TsPanel
        Left = 0
        Top = 0
        Width = 868
        Height = 749
        SkinData.SkinSection = 'TRANSPARENT'
        Align = alClient
        DoubleBuffered = False
        TabOrder = 0
        object sPanel19: TsPanel
          Left = 1
          Top = 1
          Width = 866
          Height = 24
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alTop
          DoubleBuffered = False
          TabOrder = 0
          object sSpeedButton1: TsSpeedButton
            Tag = 100
            Left = 157
            Top = 0
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sPanel7: TsPanel
            Left = 5
            Top = 0
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #51228#51116#44396#48516
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 2
          end
          object edt_jejegubun: TsEdit
            Tag = 100
            Left = 110
            Top = 0
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'JEJE_GUBUN'
            CharCase = ecUpperCase
            Color = 13172735
            Ctl3D = True
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 0
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit5: TsEdit
            Left = 181
            Top = 0
            Width = 130
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel8: TsPanel
            Left = 317
            Top = 0
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49888#52397#47928#49436#44396#48516
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 4
          end
          object sComboBox2: TsComboBox
            Left = 422
            Top = 0
            Width = 192
            Height = 23
            Cursor = crHandPoint
            SkinData.CustomColor = True
            SkinData.SkinSection = 'COMBOBOX'
            Color = 13172735
            Style = csDropDownList
            ItemHeight = 17
            ItemIndex = 0
            TabOrder = 1
            Text = '1CC - '#53685#44288#50696#51221#48372#44256#49436
            Items.Strings = (
              '1CC - '#53685#44288#50696#51221#48372#44256#49436
              '1CB - '#49688#51077#50836#44148#54869#51064#49888#52397#49436)
          end
          object sPanel86: TsPanel
            Left = 747
            Top = 0
            Width = 60
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #52509' '#54637#47785#49688
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object sCurrencyEdit6: TsCurrencyEdit
            Left = 808
            Top = 0
            Width = 54
            Height = 23
            Cursor = crIBeam
            AutoSize = False
            Color = clBtnFace
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
            DecimalPlaces = 0
            DisplayFormat = '#,0'
          end
        end
        object sPanel81: TsPanel
          Left = 1
          Top = 25
          Width = 866
          Height = 53
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alTop
          DoubleBuffered = False
          TabOrder = 1
          Visible = False
          object sPanel82: TsPanel
            Left = 5
            Top = 1
            Width = 104
            Height = 52
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #52712#49548#49324#50976
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object sMemo5: TsMemo
            Left = 111
            Top = 1
            Width = 751
            Height = 52
            Cursor = crIBeam
            Ctl3D = True
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 0
            SkinData.SkinSection = 'EDIT'
          end
        end
        object sPanel83: TsPanel
          Left = 1
          Top = 78
          Width = 866
          Height = 670
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alClient
          DoubleBuffered = False
          TabOrder = 2
          object sSpeedButton2: TsSpeedButton
            Tag = 101
            Left = 157
            Top = 339
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton3: TsSpeedButton
            Tag = 102
            Left = 157
            Top = 397
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton4: TsSpeedButton
            Tag = 104
            Left = 157
            Top = 421
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton5: TsSpeedButton
            Tag = 105
            Left = 157
            Top = 469
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton6: TsSpeedButton
            Tag = 107
            Left = 157
            Top = 493
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton7: TsSpeedButton
            Tag = 103
            Left = 597
            Top = 397
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton8: TsSpeedButton
            Tag = 106
            Left = 597
            Top = 469
            Width = 23
            Height = 23
            Cursor = crHandPoint
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sPanel23: TsPanel
            Left = 5
            Top = 291
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49345#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 38
            object sSpeedButton16: TsSpeedButton
              Tag = 102
              Left = 81
              Top = 0
              Width = 23
              Height = 23
              Cursor = crHandPoint
              OnClick = sSpeedButton16Click
              SkinData.SkinSection = 'SPEEDBUTTON'
              Images = DataModule_ICON.IMG_16
              ImageIndex = 9
            end
          end
          object sPanel10: TsPanel
            Left = 5
            Top = 31
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49324#50629#51088#46321#47197#48264#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 0
          end
          object sMaskEdit2: TsMaskEdit
            Left = 110
            Top = 31
            Width = 143
            Height = 23
            TabStop = False
            AutoSize = False
            Color = clBtnFace
            Ctl3D = False
            EditMask = '999-99-99999;0;'
            MaxLength = 12
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 26
            CheckOnExit = True
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel11: TsPanel
            Left = 255
            Top = 31
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49345#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 27
          end
          object sEdit6: TsEdit
            Left = 360
            Top = 31
            Width = 501
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel12: TsPanel
            Left = 5
            Top = 55
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49457#47749
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 28
          end
          object sEdit7: TsEdit
            Left = 110
            Top = 55
            Width = 143
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 2
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel13: TsPanel
            Left = 255
            Top = 55
            Width = 216
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49688#51077#54868#51452#51032' '#51228#51312#54032#47588#50629#46321#47197#48264#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 29
          end
          object sEdit8: TsEdit
            Left = 472
            Top = 55
            Width = 192
            Height = 23
            Cursor = crIBeam
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 3
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel14: TsPanel
            Left = 5
            Top = 79
            Width = 104
            Height = 47
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #51452#49548
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 30
          end
          object sEdit9: TsEdit
            Left = 110
            Top = 79
            Width = 48
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            MaxLength = 5
            ParentCtl3D = False
            TabOrder = 4
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit10: TsEdit
            Left = 159
            Top = 79
            Width = 374
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 5
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit11: TsEdit
            Left = 110
            Top = 103
            Width = 751
            Height = 23
            Cursor = crIBeam
            Color = clWhite
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 6
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel15: TsPanel
            Left = 5
            Top = 134
            Width = 204
            Height = 26
            SkinData.CustomColor = True
            SkinData.SkinSection = 'BAR'
            Color = 13398082
            DoubleBuffered = False
            TabOrder = 31
            object sLabel3: TsLabel
              Left = 8
              Top = 4
              Width = 52
              Height = 17
              Caption = #49688#51077#54868#51452
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              UseSkinColor = False
            end
            object sCheckBox1: TsCheckBox
              Left = 72
              Top = 2
              Width = 104
              Height = 19
              Caption = #49688#51077#51088#50752' '#46041#51068
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = sCheckBox1Click
              SkinData.CustomFont = True
              SkinData.SkinSection = 'CHECKBOX'
            end
          end
          object sPanel16: TsPanel
            Left = 5
            Top = 161
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49324#50629#51088#46321#47197#48264#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 32
          end
          object sMaskEdit3: TsMaskEdit
            Left = 110
            Top = 161
            Width = 143
            Height = 23
            Cursor = crIBeam
            AutoSize = False
            Color = 13172735
            Ctl3D = False
            EditMask = '999-99-99999;0;'
            MaxLength = 12
            ParentCtl3D = False
            TabOrder = 7
            Text = '2200222960'
            CheckOnExit = True
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel17: TsPanel
            Left = 255
            Top = 161
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49345#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 33
          end
          object sEdit12: TsEdit
            Left = 360
            Top = 161
            Width = 501
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 8
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel18: TsPanel
            Left = 5
            Top = 185
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49457#47749
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 34
          end
          object sEdit13: TsEdit
            Left = 110
            Top = 185
            Width = 143
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 9
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel20: TsPanel
            Left = 5
            Top = 209
            Width = 104
            Height = 47
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #51452#49548
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 35
          end
          object sEdit15: TsEdit
            Left = 110
            Top = 209
            Width = 48
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            MaxLength = 5
            ParentCtl3D = False
            TabOrder = 10
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit16: TsEdit
            Left = 159
            Top = 209
            Width = 374
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 11
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit17: TsEdit
            Left = 110
            Top = 233
            Width = 751
            Height = 23
            Cursor = crIBeam
            Color = clWhite
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 12
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel9: TsPanel
            Left = 5
            Top = 4
            Width = 204
            Height = 26
            SkinData.CustomColor = True
            SkinData.CustomFont = True
            SkinData.SkinSection = 'BAR'
            Color = 13398082
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 36
            object sLabel2: TsLabel
              Left = 8
              Top = 4
              Width = 39
              Height = 17
              Caption = #49688#51077#51088
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
          object sPanel21: TsPanel
            Left = 5
            Top = 264
            Width = 204
            Height = 26
            SkinData.CustomColor = True
            SkinData.SkinSection = 'BAR'
            Color = clTeal
            DoubleBuffered = False
            TabOrder = 37
            object sLabel4: TsLabel
              Left = 8
              Top = 3
              Width = 39
              Height = 17
              Caption = #49688#52636#51088
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              UseSkinColor = False
            end
          end
          object sEdit18: TsEdit
            Left = 110
            Top = 291
            Width = 435
            Height = 23
            Cursor = crIBeam
            Color = 13172735
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 13
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel26: TsPanel
            Left = 5
            Top = 315
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #51452#49548
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 39
          end
          object sEdit23: TsEdit
            Left = 110
            Top = 315
            Width = 751
            Height = 23
            Cursor = crIBeam
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 14
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel22: TsPanel
            Left = 5
            Top = 339
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #44397#44032
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 40
          end
          object sEdit19: TsEdit
            Tag = 101
            Left = 110
            Top = 339
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'NATION'
            CharCase = ecUpperCase
            Color = 13172735
            Ctl3D = True
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 15
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit20: TsEdit
            Left = 181
            Top = 339
            Width = 240
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 41
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel24: TsPanel
            Left = 5
            Top = 370
            Width = 204
            Height = 26
            SkinData.CustomColor = True
            SkinData.SkinSection = 'BAR'
            Color = 33023
            DoubleBuffered = False
            TabOrder = 42
            object sLabel5: TsLabel
              Left = 8
              Top = 3
              Width = 52
              Height = 17
              Caption = #49888#44256#51068#48152
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              UseSkinColor = False
            end
          end
          object sPanel25: TsPanel
            Left = 5
            Top = 397
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #51064#46020#51312#44148
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 43
          end
          object sEdit21: TsEdit
            Tag = 102
            Left = 110
            Top = 397
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'INDO'
            CharCase = ecUpperCase
            Color = 13172735
            Ctl3D = True
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 16
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit22: TsEdit
            Left = 181
            Top = 397
            Width = 240
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 44
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel27: TsPanel
            Left = 5
            Top = 421
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #44208#51228#48169#48277
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 45
          end
          object sEdit24: TsEdit
            Tag = 104
            Left = 110
            Top = 421
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'PAY_TYPE'
            CharCase = ecUpperCase
            Color = 13172735
            Ctl3D = True
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 18
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit25: TsEdit
            Left = 181
            Top = 421
            Width = 240
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 46
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel28: TsPanel
            Left = 5
            Top = 445
            Width = 175
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #52509#44552#50529
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 47
          end
          object sCurrencyEdit1: TsCurrencyEdit
            Left = 181
            Top = 445
            Width = 148
            Height = 23
            Cursor = crIBeam
            AutoSize = False
            Color = clBtnFace
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 48
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
            DecimalPlaces = 4
            DisplayFormat = '#,0.####;0;'
          end
          object sPanel29: TsPanel
            Left = 5
            Top = 469
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #44397#45236#46020#52265#54637
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 49
          end
          object sEdit26: TsEdit
            Tag = 105
            Left = 110
            Top = 469
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'PORT'
            CharCase = ecUpperCase
            Color = 13172735
            Ctl3D = True
            MaxLength = 5
            ParentCtl3D = False
            TabOrder = 20
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit27: TsEdit
            Left = 181
            Top = 469
            Width = 240
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 50
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel30: TsPanel
            Left = 5
            Top = 493
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #52572#52488' '#44160#51221#44592#44288
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 51
          end
          object sEdit28: TsEdit
            Tag = 107
            Left = 110
            Top = 493
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'MMSP'
            Ctl3D = True
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 23
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit29: TsEdit
            Left = 181
            Top = 493
            Width = 240
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 52
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel31: TsPanel
            Left = 445
            Top = 397
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #53685#54868#51333#47448
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 53
          end
          object sEdit30: TsEdit
            Tag = 103
            Left = 550
            Top = 397
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'CURR_TYPE'
            CharCase = ecUpperCase
            Color = 13172735
            Ctl3D = True
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 17
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit31: TsEdit
            Left = 621
            Top = 397
            Width = 136
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 54
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel32: TsPanel
            Left = 445
            Top = 421
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #44208#51228#44552#50529
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 55
          end
          object sCurrencyEdit2: TsCurrencyEdit
            Left = 550
            Top = 421
            Width = 143
            Height = 23
            Cursor = crIBeam
            AutoSize = False
            Color = 13172735
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 19
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,0.####;0;'
          end
          object sPanel33: TsPanel
            Left = 445
            Top = 445
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #44208#51228#44592#44036
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 56
          end
          object sEdit32: TsEdit
            Left = 550
            Top = 445
            Width = 311
            Height = 23
            Cursor = crIBeam
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 22
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel34: TsPanel
            Left = 445
            Top = 469
            Width = 104
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #54408#51656#44160#49324#44592#44288
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 57
          end
          object sEdit33: TsEdit
            Tag = 106
            Left = 550
            Top = 469
            Width = 48
            Height = 23
            Cursor = crIBeam
            Hint = 'QUALITY_AGENCY'
            Ctl3D = True
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 21
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnExit = edt_jejegubunChange
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit34: TsEdit
            Left = 621
            Top = 469
            Width = 240
            Height = 23
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 58
            OnExit = sEdit34Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel35: TsPanel
            Left = 445
            Top = 493
            Width = 175
            Height = 23
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #44288#54624#51648#48169' '#49885#54408#51032#50557#54408#50504#51204#52397
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 59
          end
          object sComboBox3: TsComboBox
            Left = 621
            Top = 493
            Width = 152
            Height = 23
            Cursor = crHandPoint
            SkinData.CustomColor = True
            SkinData.SkinSection = 'COMBOBOX'
            Color = 13172735
            Style = csDropDownList
            Ctl3D = True
            ItemHeight = 17
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 24
            Text = #48372#44148#48373#51648#48512'[001]'
            Items.Strings = (
              #48372#44148#48373#51648#48512'[001]'
              #49885#54408#51032#50557#54408#50504#51204#52376'[002]'
              #49436#50872#51648#48169#49885#50557#52397'[003]'
              #44221#51064#51648#48169#49885#50557#52397'[004]'
              #48512#49328#51648#48169#49885#50557#52397'[005]'
              #45824#44396#51648#48169#49885#50557#52397'[006]'
              #45824#51204#51648#48169#49885#50557#52397'[007]'
              #44305#51452#51648#48169#49885#50557#52397'[008]')
          end
          object sPanel36: TsPanel
            Left = 5
            Top = 525
            Width = 104
            Height = 100
            SkinData.CustomFont = True
            SkinData.SkinSection = 'PANEL'
            Caption = #49688#51077#51088#44592#51116#49324#54637
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 60
          end
          object sMemo1: TsMemo
            Left = 110
            Top = 525
            Width = 751
            Height = 100
            Cursor = crIBeam
            Ctl3D = True
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 25
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit4: TsEdit
            Left = 621
            Top = 469
            Width = 240
            Height = 23
            TabOrder = 61
            Visible = False
            SkinData.SkinSection = 'EDIT'
          end
        end
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = #54408#47785#49324#54637
      ImageIndex = 18
      OnShow = sTabSheet2Show
      object sScrollBox1: TsScrollBox
        Left = 0
        Top = 0
        Width = 868
        Height = 749
        Align = alClient
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object sPanel42: TsPanel
          Left = 0
          Top = 0
          Width = 864
          Height = 121
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 3
          Ctl3D = False
          DoubleBuffered = False
          ParentCtl3D = False
          TabOrder = 0
          object sDBGrid1: TsDBGrid
            Left = 3
            Top = 3
            Width = 858
            Height = 115
            Align = alClient
            Color = clWhite
            Ctl3D = False
            DataSource = DataModule_Conn.dsStandard2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = #47569#51008' '#44256#46357
            TitleFont.Style = []
            SkinData.SkinSection = 'EDIT'
            OnScrollData = sDBGrid1ScrollData
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
                Width = 317
                Visible = True
              end>
          end
        end
        object sPanel44: TsPanel
          Left = 0
          Top = 195
          Width = 864
          Height = 397
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alClient
          DoubleBuffered = False
          TabOrder = 1
          object sSpeedButton10: TsSpeedButton
            Tag = 203
            Left = 260
            Top = 261
            Width = 23
            Height = 21
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton11: TsSpeedButton
            Tag = 204
            Left = 452
            Top = 305
            Width = 23
            Height = 21
            OnClick = sSpeedButton11Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 18
          end
          object sSpeedButton12: TsSpeedButton
            Tag = 205
            Left = 421
            Top = 327
            Width = 23
            Height = 21
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton13: TsSpeedButton
            Tag = 206
            Left = 156
            Top = 371
            Width = 23
            Height = 21
            OnClick = sSpeedButton1Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton15: TsSpeedButton
            Tag = 201
            Left = 107
            Top = 2
            Width = 23
            Height = 21
            OnClick = sSpeedButton15Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton17: TsSpeedButton
            Tag = 202
            Left = 107
            Top = 24
            Width = 23
            Height = 21
            OnClick = sSpeedButton17Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sSpeedButton19: TsSpeedButton
            Tag = 209
            Left = 284
            Top = 239
            Width = 23
            Height = 21
            OnClick = sSpeedButton19Click
            SkinData.SkinSection = 'SPEEDBUTTON'
            Images = DataModule_ICON.IMG_16
            ImageIndex = 9
          end
          object sPanel46: TsPanel
            Left = 4
            Top = 2
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = 'HS'#48512#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 0
          end
          object edt_Hs: TsMaskEdit
            Tag = 201
            Left = 131
            Top = 2
            Width = 85
            Height = 21
            Color = clWhite
            Ctl3D = False
            EditMask = '9999.99-9999;0;'
            MaxLength = 12
            ParentCtl3D = False
            TabOrder = 1
            Text = '9999999999'
            OnDblClick = sSpeedButton15Click
            OnKeyUp = edt_HsKeyUp
            CheckOnExit = True
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel47: TsPanel
            Left = 217
            Top = 2
            Width = 112
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #54408#47785#49885#48324#48512#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 2
          end
          object edt_pumSerialBuho: TsEdit
            Left = 356
            Top = 2
            Width = 40
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel48: TsPanel
            Left = 4
            Top = 24
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #54408#47785#53076#46300
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 4
          end
          object edt_pum1: TsEdit
            Tag = 501
            Left = 131
            Top = 24
            Width = 85
            Height = 21
            Color = clWhite
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 5
            OnChange = edt_pum1Change
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object edt_pum2: TsEdit
            Tag = 502
            Left = 217
            Top = 24
            Width = 36
            Height = 21
            Color = clBtnFace
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 6
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object edt_pum3: TsEdit
            Tag = 503
            Left = 254
            Top = 24
            Width = 44
            Height = 21
            Ctl3D = False
            MaxLength = 4
            ParentCtl3D = False
            TabOrder = 7
            OnChange = edt_pum1Change
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object edt_pum4: TsEdit
            Tag = 504
            Left = 299
            Top = 24
            Width = 60
            Height = 21
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            TabOrder = 8
            OnChange = edt_pum1Change
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object edt_pum5: TsEdit
            Tag = 505
            Left = 360
            Top = 24
            Width = 36
            Height = 21
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 9
            OnChange = edt_pum1Change
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel49: TsPanel
            Left = 4
            Top = 46
            Width = 126
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #44396' '#54408#47785#53076#46300
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object edt_old_pum1: TsEdit
            Left = 131
            Top = 46
            Width = 85
            Height = 21
            Color = clBtnFace
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 11
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object edt_old_pum2: TsEdit
            Left = 217
            Top = 46
            Width = 36
            Height = 21
            Color = clBtnFace
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 12
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object edt_old_pum3: TsEdit
            Left = 254
            Top = 46
            Width = 44
            Height = 21
            Color = clBtnFace
            Ctl3D = False
            MaxLength = 4
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 13
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object edt_old_pum4: TsEdit
            Left = 299
            Top = 46
            Width = 60
            Height = 21
            Color = clBtnFace
            Ctl3D = False
            MaxLength = 6
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 14
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object edt_old_pum5: TsEdit
            Left = 360
            Top = 46
            Width = 36
            Height = 21
            Color = clBtnFace
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 15
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_pum3KeyUp
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sCheckBox2: TsCheckBox
            Left = 397
            Top = 25
            Width = 132
            Height = 19
            Caption = #44396' '#54408#47785#53076#46300#47196' '#48373#49324
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            OnClick = sCheckBox2Click
            SkinData.SkinSection = 'CHECKBOX'
          end
          object sPanel50: TsPanel
            Left = 4
            Top = 70
            Width = 104
            Height = 23
            SkinData.SkinSection = 'PANEL'
            Caption = #44396' '#51333#48324#53076#46300
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object sEdit51: TsEdit
            Left = 109
            Top = 70
            Width = 85
            Height = 23
            AutoSize = False
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 18
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel51: TsPanel
            Left = 232
            Top = 70
            Width = 104
            Height = 23
            SkinData.SkinSection = 'PANEL'
            Caption = #44592#45733#49457#54868#51109#54408#44396#48516
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 19
          end
          object sComboBox6: TsComboBox
            Left = 337
            Top = 70
            Width = 101
            Height = 23
            SkinData.SkinSection = 'COMBOBOX'
            Style = csDropDownList
            Ctl3D = True
            ItemHeight = 17
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 20
            Text = '1AV - '#48708#45824#49345
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            Items.Strings = (
              '1AV - '#48708#45824#49345
              '1AU - '#45824#49345)
          end
          object sPanel52: TsPanel
            Left = 440
            Top = 70
            Width = 104
            Height = 23
            SkinData.SkinSection = 'PANEL'
            Caption = 'DMF '#45824#49345#44396#48516
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 21
          end
          object sComboBox7: TsComboBox
            Left = 545
            Top = 70
            Width = 101
            Height = 23
            SkinData.SkinSection = 'COMBOBOX'
            Style = csDropDownList
            Ctl3D = True
            ItemHeight = 17
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 22
            Text = '1AV - '#48708#45824#49345
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            Items.Strings = (
              '1AV - '#48708#45824#49345
              '1AU - '#45824#49345)
          end
          object sPanel53: TsPanel
            Left = 648
            Top = 70
            Width = 104
            Height = 23
            SkinData.SkinSection = 'PANEL'
            Caption = 'BGMP '#45824#49345#44396#48516
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 23
          end
          object sComboBox8: TsComboBox
            Left = 753
            Top = 70
            Width = 101
            Height = 23
            SkinData.SkinSection = 'COMBOBOX'
            Style = csDropDownList
            Ctl3D = True
            ItemHeight = 17
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 24
            Text = '1AV - '#48708#45824#49345
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            Items.Strings = (
              '1AV - '#48708#45824#49345
              '1AU - '#45824#49345)
          end
          object sPanel54: TsPanel
            Left = 4
            Top = 95
            Width = 104
            Height = 52
            SkinData.SkinSection = 'PANEL'
            Caption = #44144#47000#54408#47749
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 25
          end
          object sMemo2: TsMemo
            Left = 109
            Top = 95
            Width = 745
            Height = 52
            ScrollBars = ssVertical
            TabOrder = 26
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel55: TsPanel
            Left = 4
            Top = 148
            Width = 104
            Height = 52
            SkinData.SkinSection = 'PANEL'
            Caption = #47784#45944#44508#44201
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 27
          end
          object sMemo3: TsMemo
            Left = 109
            Top = 148
            Width = 745
            Height = 52
            ScrollBars = ssVertical
            TabOrder = 28
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel56: TsPanel
            Left = 4
            Top = 201
            Width = 104
            Height = 37
            SkinData.SkinSection = 'PANEL'
            Caption = #49457#48516
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 29
          end
          object sMemo4: TsMemo
            Left = 109
            Top = 201
            Width = 745
            Height = 37
            ScrollBars = ssVertical
            TabOrder = 30
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel57: TsPanel
            Left = 4
            Top = 239
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #49885#50557#52397#44592#51456#53076#46300
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 31
          end
          object sEdit52: TsEdit
            Left = 109
            Top = 239
            Width = 174
            Height = 21
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 32
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel37: TsPanel
            Left = 4
            Top = 261
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #49688#47049
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 33
          end
          object sCurrencyEdit3: TsCurrencyEdit
            Tag = 301
            Left = 109
            Top = 261
            Width = 113
            Height = 21
            AutoSize = False
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 34
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.SkinSection = 'EDIT'
            DecimalPlaces = 4
            DisplayFormat = '#,0.####;0;'
          end
          object sEdit36: TsEdit
            Tag = 203
            Left = 223
            Top = 261
            Width = 38
            Height = 21
            Hint = 'DANWI'
            CharCase = ecUpperCase
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 35
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel38: TsPanel
            Left = 4
            Top = 283
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #45800#44032
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 36
          end
          object sCurrencyEdit4: TsCurrencyEdit
            Tag = 302
            Left = 109
            Top = 283
            Width = 174
            Height = 21
            AutoSize = False
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 37
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.SkinSection = 'EDIT'
            DecimalPlaces = 4
            DisplayFormat = '#,0.####;0;'
          end
          object sPanel39: TsPanel
            Left = 284
            Top = 283
            Width = 89
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #44552#50529
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 38
          end
          object sCurrencyEdit5: TsCurrencyEdit
            Left = 374
            Top = 283
            Width = 156
            Height = 21
            AutoSize = False
            Color = clBtnFace
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 39
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
            DecimalPlaces = 4
            DisplayFormat = '#,0.####;0;'
          end
          object sEdit37: TsEdit
            Left = 531
            Top = 283
            Width = 36
            Height = 21
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 40
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit38: TsEdit
            Left = 568
            Top = 283
            Width = 149
            Height = 21
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 41
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel40: TsPanel
            Left = 4
            Top = 305
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #54728#44032#48264#54840
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 42
          end
          object sEdit39: TsEdit
            Left = 109
            Top = 305
            Width = 174
            Height = 21
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 43
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel41: TsPanel
            Left = 284
            Top = 305
            Width = 89
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #54728#44032#51068#51088
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 44
          end
          object sMaskEdit4: TsMaskEdit
            Tag = 204
            Left = 374
            Top = 305
            Width = 79
            Height = 21
            Color = clWhite
            Ctl3D = False
            EditMask = '9999-99-99;0;'
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 45
            Text = '20161028'
            CheckOnExit = True
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel66: TsPanel
            Left = 4
            Top = 327
            Width = 104
            Height = 43
            SkinData.SkinSection = 'PANEL'
            Caption = 'BSE '#45824#49345#54408#47785
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 46
          end
          object sComboBox4: TsComboBox
            Left = 109
            Top = 327
            Width = 174
            Height = 43
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            SkinData.SkinSection = 'COMBOBOX'
            VerticalAlignment = taVerticalCenter
            Style = csOwnerDrawFixed
            Ctl3D = True
            ItemHeight = 37
            ItemIndex = 2
            ParentCtl3D = False
            TabOrder = 47
            Text = '1AO - '#49885#47932' '#46608#45716' '#54633#49457
            OnSelect = sComboBox4Select
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            Items.Strings = (
              '1AV - '#48708#45824#49345
              '1AU - '#45824#49345
              '1AO - '#49885#47932' '#46608#45716' '#54633#49457)
          end
          object sPanel67: TsPanel
            Left = 284
            Top = 327
            Width = 89
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = 'BSE '#50896#49328#51648
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 48
          end
          object sEdit59: TsEdit
            Tag = 205
            Left = 374
            Top = 327
            Width = 48
            Height = 21
            Hint = 'NATION'
            CharCase = ecUpperCase
            Ctl3D = False
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 49
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit60: TsEdit
            Left = 445
            Top = 327
            Width = 125
            Height = 21
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 51
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel68: TsPanel
            Left = 571
            Top = 327
            Width = 89
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #44592#50896#47932#51656
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 52
          end
          object sEdit61: TsEdit
            Left = 661
            Top = 327
            Width = 194
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 53
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel69: TsPanel
            Left = 284
            Top = 349
            Width = 89
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #52628#52636#48512#50948
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 54
          end
          object sEdit62: TsEdit
            Left = 374
            Top = 349
            Width = 196
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 55
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sButton9: TsButton
            Left = 561
            Top = 18
            Width = 108
            Height = 49
            Cursor = crHandPoint
            Caption = #51228#51312' '#51221#48372
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 56
            TabStop = False
            OnClick = sButton9Click
            SkinData.SkinSection = 'BUTTON'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageIndex = 30
          end
          object sButton10: TsButton
            Left = 671
            Top = 18
            Width = 183
            Height = 49
            Cursor = crHandPoint
            Caption = #46041#51068#49457#44160#49324#44208#44284#49436' '#51221#48372
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 57
            TabStop = False
            OnClick = sButton10Click
            SkinData.SkinSection = 'BUTTON'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageIndex = 29
          end
          object sPanel70: TsPanel
            Left = 571
            Top = 349
            Width = 89
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = 'Batch No.'
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 58
          end
          object sEdit63: TsEdit
            Left = 661
            Top = 349
            Width = 194
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 59
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sPanel71: TsPanel
            Left = 4
            Top = 371
            Width = 104
            Height = 21
            SkinData.SkinSection = 'PANEL'
            Caption = #50896#49328#51648
            Color = clGray
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 60
          end
          object sEdit64: TsEdit
            Tag = 206
            Left = 109
            Top = 371
            Width = 48
            Height = 21
            Hint = 'NATION'
            CharCase = ecUpperCase
            Ctl3D = False
            MaxLength = 2
            ParentCtl3D = False
            TabOrder = 50
            OnChange = edt_jejegubunChange
            OnDblClick = edt_jejegubunDblClick
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            OnKeyUp = edt_jejegubunKeyUp
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit65: TsEdit
            Left = 180
            Top = 371
            Width = 193
            Height = 21
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 61
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit1: TsEdit
            Left = 330
            Top = 2
            Width = 27
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 62
            Text = 'FR2'
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object sEdit2: TsEdit
            Left = -1
            Top = 261
            Width = 34
            Height = 21
            Cursor = crNo
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 63
            Visible = False
            OnEnter = edt_pum1Enter
            OnExit = edt_pum1Exit
            SkinData.CustomColor = True
            SkinData.SkinSection = 'EDIT'
          end
        end
        object sPanel72: TsPanel
          Left = 0
          Top = 592
          Width = 864
          Height = 153
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alBottom
          Ctl3D = False
          DoubleBuffered = False
          ParentCtl3D = False
          TabOrder = 2
          object sPageControl2: TsPageControl
            Left = 1
            Top = 1
            Width = 862
            Height = 151
            ActivePage = sTabSheet3
            Align = alClient
            TabHeight = 25
            TabIndex = 0
            TabOrder = 0
            TabWidth = 85
            SkinData.SkinSection = 'PAGECONTROL'
            object sTabSheet3: TsTabSheet
              Caption = #50948#53441#51228#51312
              object sSpeedButton9: TsSpeedButton
                Tag = 207
                Left = 157
                Top = 10
                Width = 23
                Height = 23
                Cursor = crHandPoint
                OnClick = sSpeedButton1Click
                SkinData.SkinSection = 'SPEEDBUTTON'
                Images = DataModule_ICON.IMG_16
                ImageIndex = 9
              end
              object sPanel2: TsPanel
                Left = 5
                Top = 10
                Width = 104
                Height = 23
                SkinData.CustomFont = True
                SkinData.SkinSection = 'PANEL'
                Caption = #44397#44032
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                TabOrder = 0
              end
              object sEdit14: TsEdit
                Tag = 207
                Left = 110
                Top = 10
                Width = 48
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                CharCase = ecUpperCase
                Color = clWhite
                Ctl3D = True
                MaxLength = 2
                ParentCtl3D = False
                TabOrder = 1
                OnChange = edt_jejegubunChange
                OnDblClick = edt_jejegubunDblClick
                OnExit = edt_jejegubunChange
                OnKeyUp = edt_jejegubunKeyUp
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sEdit35: TsEdit
                Left = 181
                Top = 10
                Width = 240
                Height = 23
                Cursor = crNo
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 2
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sPanel58: TsPanel
                Left = 5
                Top = 34
                Width = 104
                Height = 71
                SkinData.CustomFont = True
                SkinData.SkinSection = 'PANEL'
                Caption = #50948#53441#51228#51312' '#49345#54840
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                TabOrder = 3
              end
              object sEdit40: TsEdit
                Left = 138
                Top = 34
                Width = 282
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 4
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sPanel59: TsPanel
                Left = 110
                Top = 34
                Width = 29
                Height = 23
                SkinData.SkinSection = 'PANEL'
                Caption = '1'
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object sPanel60: TsPanel
                Left = 110
                Top = 58
                Width = 29
                Height = 23
                SkinData.SkinSection = 'PANEL'
                Caption = '2'
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object sEdit41: TsEdit
                Left = 138
                Top = 58
                Width = 282
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 7
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sPanel61: TsPanel
                Left = 110
                Top = 82
                Width = 29
                Height = 23
                SkinData.SkinSection = 'PANEL'
                Caption = '3'
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object sEdit42: TsEdit
                Left = 138
                Top = 82
                Width = 282
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 9
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sPanel62: TsPanel
                Left = 421
                Top = 34
                Width = 104
                Height = 71
                SkinData.CustomFont = True
                SkinData.SkinSection = 'PANEL'
                Caption = #51452#49548
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                TabOrder = 10
              end
              object sEdit43: TsEdit
                Left = 554
                Top = 34
                Width = 295
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 11
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sPanel63: TsPanel
                Left = 526
                Top = 34
                Width = 29
                Height = 23
                SkinData.SkinSection = 'PANEL'
                Caption = '1'
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 12
              end
              object sPanel64: TsPanel
                Left = 526
                Top = 58
                Width = 29
                Height = 23
                SkinData.SkinSection = 'PANEL'
                Caption = '2'
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 13
              end
              object sEdit44: TsEdit
                Left = 554
                Top = 58
                Width = 295
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 14
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
              object sPanel65: TsPanel
                Left = 526
                Top = 82
                Width = 29
                Height = 23
                SkinData.SkinSection = 'PANEL'
                Caption = '3'
                Color = clGray
                DoubleBuffered = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                ParentFont = False
                TabOrder = 15
              end
              object sEdit45: TsEdit
                Left = 554
                Top = 82
                Width = 295
                Height = 23
                Cursor = crIBeam
                Hint = 'NATION'
                Color = clWhite
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 16
                SkinData.CustomColor = True
                SkinData.SkinSection = 'EDIT'
              end
            end
            object sTabSheet4: TsTabSheet
              Caption = #49688#53441#51228#51312
              object sSplitter2: TsSplitter
                Left = 276
                Top = 0
                Width = 4
                Height = 116
                Cursor = crHSplit
                Align = alRight
                SkinData.SkinSection = 'SPLITTER'
              end
              object sPanel73: TsPanel
                Left = 280
                Top = 0
                Width = 574
                Height = 116
                SkinData.SkinSection = 'PANEL'
                Align = alRight
                DoubleBuffered = False
                TabOrder = 0
                object sSpeedButton14: TsSpeedButton
                  Tag = 208
                  Left = 194
                  Top = 11
                  Width = 23
                  Height = 23
                  Cursor = crHandPoint
                  OnClick = sSpeedButton1Click
                  SkinData.SkinSection = 'SPEEDBUTTON'
                  Images = DataModule_ICON.IMG_16
                  ImageIndex = 9
                end
                object sSpeedButton18: TsSpeedButton
                  Left = 494
                  Top = 10
                  Width = 16
                  Height = 22
                  ButtonStyle = tbsDivider
                  SkinData.SkinSection = 'SPEEDBUTTON'
                end
                object sPanel74: TsPanel
                  Left = 101
                  Top = 11
                  Width = 45
                  Height = 23
                  SkinData.CustomFont = True
                  SkinData.SkinSection = 'PANEL'
                  Caption = #44397#44032
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                  TabOrder = 0
                end
                object sEdit46: TsEdit
                  Tag = 208
                  Left = 147
                  Top = 11
                  Width = 48
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  CharCase = ecUpperCase
                  Color = clWhite
                  Ctl3D = True
                  MaxLength = 2
                  ParentCtl3D = False
                  TabOrder = 1
                  OnChange = edt_jejegubunChange
                  OnDblClick = edt_jejegubunDblClick
                  OnExit = edt_jejegubunChange
                  OnKeyUp = edt_jejegubunKeyUp
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sEdit47: TsEdit
                  Left = 218
                  Top = 11
                  Width = 167
                  Height = 23
                  Cursor = crNo
                  TabStop = False
                  Color = clBtnFace
                  Ctl3D = True
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 2
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sPanel75: TsPanel
                  Left = 5
                  Top = 35
                  Width = 45
                  Height = 71
                  SkinData.CustomFont = True
                  SkinData.SkinSection = 'PANEL'
                  Caption = #49345#54840
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                  TabOrder = 3
                end
                object sEdit48: TsEdit
                  Left = 70
                  Top = 35
                  Width = 166
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  Color = clWhite
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 4
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sPanel76: TsPanel
                  Left = 51
                  Top = 35
                  Width = 20
                  Height = 23
                  SkinData.SkinSection = 'PANEL'
                  Caption = '1'
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  Visible = False
                end
                object sPanel77: TsPanel
                  Left = 51
                  Top = 59
                  Width = 20
                  Height = 23
                  SkinData.SkinSection = 'PANEL'
                  Caption = '2'
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object sEdit49: TsEdit
                  Left = 70
                  Top = 59
                  Width = 166
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  Color = clWhite
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 7
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sPanel78: TsPanel
                  Left = 51
                  Top = 83
                  Width = 20
                  Height = 23
                  SkinData.SkinSection = 'PANEL'
                  Caption = '3'
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object sEdit50: TsEdit
                  Left = 70
                  Top = 83
                  Width = 166
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  Color = clWhite
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 9
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sPanel79: TsPanel
                  Left = 237
                  Top = 35
                  Width = 45
                  Height = 71
                  SkinData.CustomFont = True
                  SkinData.SkinSection = 'PANEL'
                  Caption = #51452#49548
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                  TabOrder = 10
                end
                object sPanel80: TsPanel
                  Left = 283
                  Top = 35
                  Width = 20
                  Height = 23
                  SkinData.SkinSection = 'PANEL'
                  Caption = '1'
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                end
                object sEdit53: TsEdit
                  Left = 302
                  Top = 35
                  Width = 266
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  Color = clWhite
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 12
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sEdit54: TsEdit
                  Left = 302
                  Top = 59
                  Width = 266
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  Color = clWhite
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 13
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sPanel84: TsPanel
                  Left = 283
                  Top = 59
                  Width = 20
                  Height = 23
                  SkinData.SkinSection = 'PANEL'
                  Caption = '2'
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                end
                object sPanel85: TsPanel
                  Left = 283
                  Top = 83
                  Width = 20
                  Height = 23
                  SkinData.SkinSection = 'PANEL'
                  Caption = '3'
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 15
                end
                object sEdit55: TsEdit
                  Left = 302
                  Top = 83
                  Width = 266
                  Height = 23
                  Cursor = crIBeam
                  Hint = 'NATION'
                  Color = clWhite
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 16
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sButton12: TsButton
                  Left = 407
                  Top = 9
                  Width = 28
                  Height = 24
                  Cursor = crHandPoint
                  TabOrder = 17
                  OnClick = sButton12Click
                  SkinData.SkinSection = 'CHECKBOX'
                  Reflected = True
                  Images = DataModule_ICON.IMG_16
                  ImageIndex = 16
                end
                object sButton13: TsButton
                  Left = 436
                  Top = 9
                  Width = 28
                  Height = 24
                  Cursor = crHandPoint
                  TabOrder = 18
                  OnClick = sButton13Click
                  SkinData.SkinSection = 'CHECKBOX'
                  Reflected = True
                  Images = DataModule_ICON.IMG_16
                  ImageIndex = 17
                end
                object sButton14: TsButton
                  Left = 465
                  Top = 9
                  Width = 28
                  Height = 24
                  Cursor = crHandPoint
                  TabOrder = 19
                  OnClick = sButton14Click
                  SkinData.SkinSection = 'CHECKBOX'
                  Reflected = True
                  Images = DataModule_ICON.IMG_16
                  ImageIndex = 15
                end
                object sPanel87: TsPanel
                  Left = 5
                  Top = 11
                  Width = 45
                  Height = 23
                  SkinData.CustomFont = True
                  SkinData.SkinSection = 'PANEL'
                  Caption = #48264#54840
                  Color = clGray
                  DoubleBuffered = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = #47569#51008' '#44256#46357
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                  TabOrder = 20
                end
                object sEdit3: TsEdit
                  Left = 51
                  Top = 11
                  Width = 46
                  Height = 23
                  Cursor = crNo
                  TabStop = False
                  Color = clBtnFace
                  Ctl3D = True
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 21
                  SkinData.CustomColor = True
                  SkinData.SkinSection = 'EDIT'
                end
                object sButton15: TsButton
                  Left = 511
                  Top = 9
                  Width = 28
                  Height = 24
                  Cursor = crHandPoint
                  Enabled = False
                  TabOrder = 22
                  OnClick = sButton15Click
                  SkinData.SkinSection = 'CHECKBOX'
                  Reflected = True
                  Images = DataModule_ICON.IMG_16
                  ImageIndex = 1
                end
                object sButton16: TsButton
                  Tag = 1
                  Left = 540
                  Top = 9
                  Width = 28
                  Height = 24
                  Cursor = crHandPoint
                  Enabled = False
                  TabOrder = 23
                  OnClick = sButton15Click
                  SkinData.SkinSection = 'CHECKBOX'
                  Reflected = True
                  Images = DataModule_ICON.IMG_16
                  ImageIndex = 14
                end
              end
              object sDBGrid2: TsDBGrid
                Left = 0
                Top = 0
                Width = 276
                Height = 116
                Align = alClient
                Color = clWhite
                DataSource = DataModule_Conn.dsTaken
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = #47569#51008' '#44256#46357
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = #47569#51008' '#44256#46357
                TitleFont.Style = []
                SkinData.SkinSection = 'EDIT'
                OnScrollData = sDBGrid2ScrollData
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'TAKE_NO'
                    Title.Alignment = taCenter
                    Title.Caption = #51068#47144#48264#54840
                    Width = 56
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'NATION_CODE'
                    Title.Alignment = taCenter
                    Title.Caption = #44397#44032
                    Width = 37
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TAKE_SANGHO1'
                    Title.Caption = #49345#54840'1'
                    Width = 142
                    Visible = True
                  end>
              end
            end
          end
        end
        object sPanel45: TsPanel
          Left = 0
          Top = 121
          Width = 864
          Height = 23
          SkinData.CustomColor = True
          SkinData.CustomFont = True
          SkinData.SkinSection = 'BAR'
          Align = alTop
          Color = 13398082
          DoubleBuffered = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object sLabel6: TsLabel
            Left = 8
            Top = 3
            Width = 52
            Height = 17
            Caption = #54408#47785#51221#48372
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
        object sPanel43: TsPanel
          Left = 0
          Top = 144
          Width = 864
          Height = 51
          SkinData.SkinSection = 'TRANSPARENT'
          Align = alTop
          BevelOuter = bvNone
          DoubleBuffered = False
          TabOrder = 4
          object sSpeedButton20: TsSpeedButton
            Left = 167
            Top = 3
            Width = 12
            Height = 45
            ButtonStyle = tbsDivider
          end
          object sButton4: TsButton
            Left = 5
            Top = -1
            Width = 53
            Height = 49
            Cursor = crHandPoint
            Caption = #49888#44508
            TabOrder = 0
            OnClick = sButton4Click
            SkinData.SkinSection = 'CHECKBOX'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageAlignment = iaTop
            ImageIndex = 0
          end
          object sButton5: TsButton
            Left = 59
            Top = -1
            Width = 53
            Height = 49
            Cursor = crHandPoint
            Caption = #49688#51221
            TabOrder = 1
            OnClick = sButton5Click
            SkinData.SkinSection = 'CHECKBOX'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageAlignment = iaTop
            ImageIndex = 16
          end
          object sButton6: TsButton
            Left = 113
            Top = -1
            Width = 53
            Height = 49
            Cursor = crHandPoint
            Caption = #49325#51228
            TabOrder = 2
            OnClick = sButton6Click
            SkinData.SkinSection = 'CHECKBOX'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageAlignment = iaTop
            ImageIndex = 4
          end
          object sButton7: TsButton
            Left = 180
            Top = 2
            Width = 70
            Height = 49
            Cursor = crHandPoint
            Caption = #54408#47785#51200#51109
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            TabStop = False
            OnClick = sButton7Click
            SkinData.SkinSection = 'CHECKBOX'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageAlignment = iaTop
            ImageIndex = 1
          end
          object sButton8: TsButton
            Left = 251
            Top = 2
            Width = 53
            Height = 49
            Cursor = crHandPoint
            Caption = #52712#49548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            TabStop = False
            OnClick = sButton8Click
            SkinData.SkinSection = 'CHECKBOX'
            Reflected = True
            Images = DataModule_ICON.IMG_24
            ImageAlignment = iaTop
            ImageIndex = 14
          end
        end
      end
    end
  end
  object sPanel3: TsPanel [3]
    Left = 0
    Top = 56
    Width = 99
    Height = 23
    SkinData.CustomFont = True
    SkinData.SkinSection = 'PANEL'
    Caption = #49888#52397#48264#54840
    Color = clGray
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
  end
  object edt_DocNo1: TsEdit [4]
    Left = 100
    Top = 56
    Width = 61
    Height = 23
    Cursor = crNo
    TabStop = False
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
  end
  object edt_DocNo2: TsEdit [5]
    Left = 162
    Top = 56
    Width = 29
    Height = 23
    Cursor = crNo
    TabStop = False
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
  end
  object edt_DocNo3: TsEdit [6]
    Left = 192
    Top = 56
    Width = 61
    Height = 23
    Cursor = crNo
    TabStop = False
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
  end
  object sPanel4: TsPanel [7]
    Left = 264
    Top = 56
    Width = 79
    Height = 23
    SkinData.CustomFont = True
    SkinData.SkinSection = 'PANEL'
    Caption = #49888#52397#51068#51088
    Color = clGray
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 6
  end
  object edt_RequestDate: TsMaskEdit [8]
    Left = 345
    Top = 56
    Width = 79
    Height = 23
    Cursor = crNo
    TabStop = False
    AutoSize = False
    Color = clBtnFace
    Ctl3D = False
    EditMask = '9999-99-99;0;'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Text = '20161028'
    CheckOnExit = True
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
  end
  object sPanel5: TsPanel [9]
    Left = 691
    Top = 56
    Width = 89
    Height = 23
    SkinData.SkinSection = 'PANEL'
    Caption = #51204#49569#44396#48516
    Color = clGray
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object sComboBox1: TsComboBox [10]
    Left = 781
    Top = 56
    Width = 95
    Height = 23
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    ItemHeight = 17
    ItemIndex = 0
    TabOrder = 9
    TabStop = False
    Text = #50896#48376'[9]'
    OnSelect = sComboBox1Select
    Items.Strings = (
      #50896#48376'[9]'
      #51116#51204#49569'[35]'
      #52712#49548'[1]')
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 56
  end
end
