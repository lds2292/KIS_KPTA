inherited UI_ConfirmDocument_frm: TUI_ConfirmDocument_frm
  Left = 750
  Top = 85
  BorderWidth = 4
  Caption = #54869#51064#47749#49464' '#44288#47532
  ClientHeight = 799
  ClientWidth = 1122
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 54
    Width = 1122
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
    Width = 1122
    Height = 54
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      1122
      54)
    object sSpeedButton18: TsSpeedButton
      Left = 1053
      Top = 4
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton2: TsSpeedButton
      Left = 357
      Top = 5
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton1: TsSpeedButton
      Left = 210
      Top = 5
      Width = 6
      Height = 46
      Anchors = [akTop, akRight]
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sButton3: TsButton
      Left = 1059
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
    object sButton2: TsButton
      Left = 217
      Top = 2
      Width = 69
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #54868#47732' '#47582#52644
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = sButton2Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 5
      Reflected = True
    end
    object sButton4: TsButton
      Left = 287
      Top = 2
      Width = 69
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #54253' '#47582#52644
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = sButton4Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 5
      Reflected = True
    end
    object sButton1: TsButton
      Left = 9
      Top = 2
      Width = 200
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #47928#49436#46321#47197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      SkinData.SkinSection = 'CHECKBOX'
      CommandLinkHint = #47928#49436' '#51060#48120#51648#47484' '#52628#44032#54633#45768#45796
      Images = DataModule_ICON.IMG_24
      ImageAlignment = iaTop
      ImageIndex = 6
      ImageMargins.Left = -2
      Style = bsCommandLink
      Reflected = True
    end
  end
  object sPageControl1: TsPageControl [2]
    Left = 0
    Top = 56
    Width = 1122
    Height = 743
    ActivePage = sTabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet2: TsTabSheet
      Caption = #50629#47196#46300' '#47749#49464#45236#50669
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sDBGrid2: TsDBGrid
        Left = 0
        Top = 0
        Width = 1114
        Height = 713
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #47569#51008' '#44256#46357
        TitleFont.Style = []
        SkinData.SkinSection = 'EDIT'
      end
    end
    object sTabSheet1: TsTabSheet
      Caption = #54028#51068#45236#50669
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sSplitter2: TsSplitter
        Left = 273
        Top = 0
        Width = 4
        Height = 713
        Cursor = crHSplit
        SkinData.SkinSection = 'SPLITTER'
      end
      object sPanel2: TsPanel
        Left = 0
        Top = 0
        Width = 273
        Height = 713
        Align = alLeft
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object sDBGrid1: TsDBGrid
          Left = 1
          Top = 1
          Width = 271
          Height = 711
          Align = alClient
          Color = clWhite
          Ctl3D = False
          DataSource = dsFileList
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
              Expanded = False
              FieldName = 'Subject'
              Title.Caption = #54028#51068#47749
              Width = 233
              Visible = True
            end>
        end
      end
      object sPanel3: TsPanel
        Left = 277
        Top = 0
        Width = 837
        Height = 713
        Align = alClient
        TabOrder = 1
        SkinData.SkinSection = 'TRANSPARENT'
        object sScrollBox2: TsScrollBox
          Left = 1
          Top = 34
          Width = 835
          Height = 678
          Align = alClient
          TabOrder = 0
          SkinData.SkinSection = 'PANEL_LOW'
          object sImage1: TsImage
            Left = 0
            Top = 0
            Width = 100
            Height = 100
            Center = True
            Picture.Data = {07544269746D617000000000}
            Proportional = True
            Stretch = True
            OnMouseDown = sImage1MouseDown
            OnMouseMove = sImage1MouseMove
            OnMouseUp = sImage1MouseUp
            SkinData.SkinSection = 'CHECKBOX'
          end
        end
        object sPanel4: TsPanel
          Left = 1
          Top = 1
          Width = 835
          Height = 33
          Align = alTop
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object sSpeedButton3: TsSpeedButton
            Left = 258
            Top = 4
            Width = 12
            Height = 25
            ButtonStyle = tbsDivider
            SkinData.SkinSection = 'SPEEDBUTTON'
          end
          object sSpeedButton4: TsSpeedButton
            Left = 84
            Top = 4
            Width = 12
            Height = 25
            ButtonStyle = tbsDivider
            SkinData.SkinSection = 'SPEEDBUTTON'
          end
          object sButton5: TsButton
            Left = 100
            Top = 4
            Width = 75
            Height = 25
            Caption = #54868#47732#47582#52644
            TabOrder = 0
            OnClick = sButton5Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sButton7: TsButton
            Left = 179
            Top = 4
            Width = 75
            Height = 25
            Caption = #54253#47582#52644
            TabOrder = 1
            OnClick = sButton7Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sSpinEdit2: TsSpinEdit
            Left = 330
            Top = 4
            Width = 49
            Height = 25
            AutoSize = False
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '100'
            OnChange = sSpinEdit2Change
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Active = True
            BoundLabel.Caption = #54869#45824'/'#52629#49548
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = ANSI_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -12
            BoundLabel.Font.Name = #47569#51008' '#44256#46357
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            MaxValue = 200
            MinValue = 10
            Value = 100
          end
          object sButton6: TsButton
            Left = 5
            Top = 4
            Width = 75
            Height = 25
            Caption = #50896#48376
            TabOrder = 3
            OnClick = sButton6Click
            SkinData.SkinSection = 'BUTTON'
          end
          object sTrackBar1: TsTrackBar
            Left = 382
            Top = 4
            Width = 195
            Height = 25
            Max = 200
            Min = 10
            Orientation = trHorizontal
            PageSize = 1
            Frequency = 1
            Position = 10
            SelEnd = 0
            SelStart = 0
            TabOrder = 4
            TickMarks = tmBottomRight
            TickStyle = tsNone
            OnChange = sTrackBar1Change
            SkinData.SkinSection = 'TRACKBAR'
            BarOffsetV = 0
            BarOffsetH = 0
          end
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 0
    Top = 128
  end
  object sOpenDialog1: TsOpenDialog
    DefaultExt = '*.bmp'
    Filter = 'BMP(*.bmp)|*.bmp'
    Title = #54028#51068#49440#53469
    Left = 336
    Top = 48
  end
  object qryFileList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    AfterScroll = qryFileListAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT [SID], [Subject], [ETC], [IMG_1], IMG_TYPE FROM [SPEC_IMG' +
        ']')
    Left = 24
    Top = 128
  end
  object dsFileList: TDataSource
    DataSet = qryFileList
    Left = 56
    Top = 128
  end
end
