inherited Dialog_SearchHS_frm: TDialog_SearchHS_frm
  Left = 674
  Top = 87
  Caption = 'HS'#48512#54840#51312#54924
  ClientHeight = 588
  ClientWidth = 576
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 41
    Width = 576
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 0
    Width = 576
    Height = 41
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      576
      41)
    object sPanel2: TsPanel
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      SkinData.SkinSection = 'PANEL'
      Caption = #49464#48264#48512#54840
      DoubleBuffered = False
      TabOrder = 0
    end
    object sMaskEdit1: TsMaskEdit
      Left = 90
      Top = 8
      Width = 116
      Height = 25
      TabStop = False
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
      SkinData.SkinSection = 'EDIT'
    end
    object sButton1: TsButton
      Left = 207
      Top = 8
      Width = 66
      Height = 25
      Cursor = crHandPoint
      Caption = #51312#54924
      TabOrder = 2
      TabStop = False
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 9
    end
    object sButton2: TsButton
      Left = 503
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 3
      TabStop = False
      OnClick = sButton2Click
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 12
    end
  end
  object sDBGrid1: TsDBGrid [2]
    Left = 0
    Top = 45
    Width = 576
    Height = 543
    Align = alClient
    Color = clWhite
    Ctl3D = True
    DataSource = dsHS
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
    OnDrawColumnCell = sDBGrid1DrawColumnCell
    OnDblClick = sDBGrid1DblClick
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
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HS_NAME'
        Title.Alignment = taCenter
        Title.Caption = 'HS'#48512#54840#47749
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HS_NAME_ENG'
        Title.Alignment = taCenter
        Title.Caption = 'HS'#48512#54840#47749'('#50689#47928')'
        Width = 270
        Visible = True
      end>
  end
  object qryHS: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM HS'
      'WHERE USED = 1')
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
    end
  end
  object dsHS: TDataSource
    DataSet = qryHS
    Left = 88
    Top = 88
  end
end
