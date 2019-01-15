inherited UI_HS_frm: TUI_HS_frm
  Left = 931
  Top = 80
  BorderIcons = []
  BorderWidth = 4
  Caption = #54408#47785#48512#54840'(HS'#53076#46300') '#44288#47532
  ClientHeight = 707
  ClientWidth = 758
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 41
    Width = 758
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 0
    Width = 758
    Height = 41
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sPanel2: TsPanel
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      Caption = #49464#48264#48512#54840
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
    end
    object sMaskEdit1: TsMaskEdit
      Left = 90
      Top = 8
      Width = 116
      Height = 25
      Color = clWhite
      EditMask = '9999.99-9999;0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 1
      OnKeyUp = sMaskEdit1KeyUp
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
    object sButton1: TsButton
      Left = 208
      Top = 8
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Caption = #51312#54924
      TabOrder = 2
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 9
    end
    object sButton2: TsButton
      Left = 689
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Caption = #45803#44592
      TabOrder = 3
      OnClick = sButton2Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 12
      Reflected = True
    end
    object sButton3: TsButton
      Left = 459
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Caption = #49888#44508
      TabOrder = 4
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 0
      Reflected = True
    end
    object sButton4: TsButton
      Left = 526
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Caption = #49688#51221
      TabOrder = 5
      OnClick = sButton4Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 16
      Reflected = True
    end
    object sButton5: TsButton
      Left = 593
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Caption = #49325#51228
      TabOrder = 6
      OnClick = sButton5Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 4
      Reflected = True
    end
    object sCheckBox1: TsCheckBox
      Left = 280
      Top = 10
      Width = 120
      Height = 21
      Caption = #49324#50857#51473#51064' HS'#48512#54840
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = sCheckBox1Click
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sDBGrid1: TsDBGrid [2]
    Left = 0
    Top = 45
    Width = 758
    Height = 662
    Align = alClient
    Color = clWhite
    Ctl3D = True
    DataSource = dsHS
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
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
    OnDrawColumnCell = sDBGrid1DrawColumnCell
    OnKeyUp = sDBGrid1KeyUp
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Color = 16249576
        Expanded = False
        FieldName = 'HS_CODE'
        Title.Alignment = taCenter
        Title.Caption = 'HS'#48512#54840
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HS_NAME'
        Title.Alignment = taCenter
        Title.Caption = 'HS'#48512#54840#47749
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HS_NAME_ENG'
        Title.Alignment = taCenter
        Title.Caption = 'HS'#48512#54840#47749'('#50689#47928')'
        Width = 374
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USED'
        Title.Alignment = taCenter
        Title.Caption = #49324#50857
        Width = 35
        Visible = True
      end>
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 0
    Top = 64
  end
  object qryHS: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM HS')
    Left = 56
    Top = 88
    object qryHSHS_CODE: TStringField
      FieldName = 'HS_CODE'
      EditMask = '9999.99-9999;0'
      FixedChar = True
      Size = 10
    end
    object qryHSHS_NAME: TStringField
      FieldName = 'HS_NAME'
      Size = 100
    end
    object qryHSHS_NAME_ENG: TStringField
      FieldName = 'HS_NAME_ENG'
      Size = 150
    end
    object qryHSUSED: TBooleanField
      FieldName = 'USED'
      OnGetText = qryHSUSEDGetText
    end
  end
  object dsHS: TDataSource
    DataSet = qryHS
    Left = 88
    Top = 88
  end
end
