object KISCalendar_frm: TKISCalendar_frm
  Left = 973
  Top = 353
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #51068#51088#49440#53469
  ClientHeight = 235
  ClientWidth = 216
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 28
    Width = 216
    Height = 183
    SkinData.SkinSection = 'PANEL'
    Align = alClient
    BevelOuter = bvNone
    DoubleBuffered = False
    TabOrder = 0
    object sPanel4: TsPanel
      Left = 17
      Top = 0
      Width = 182
      Height = 183
      SkinData.SkinSection = 'PANEL'
      Align = alClient
      BevelOuter = bvNone
      Color = clGreen
      DoubleBuffered = False
      TabOrder = 3
    end
    object sPanel2: TsPanel
      Tag = 1
      Left = 199
      Top = 0
      Width = 17
      Height = 183
      Cursor = crHandPoint
      SkinData.SkinSection = 'PANEL'
      Align = alRight
      BevelOuter = bvNone
      Caption = '>'
      Color = clWhite
      DoubleBuffered = False
      TabOrder = 0
      OnClick = sPanel3Click
    end
    object sPanel3: TsPanel
      Tag = -1
      Left = 0
      Top = 0
      Width = 17
      Height = 183
      Cursor = crHandPoint
      SkinData.SkinSection = 'PANEL'
      Align = alLeft
      BevelOuter = bvNone
      Caption = '<'
      Color = clWhite
      DoubleBuffered = False
      TabOrder = 1
      OnClick = sPanel3Click
    end
    object StringGrid1: TStringGrid
      Left = 16
      Top = 0
      Width = 183
      Height = 183
      ColCount = 7
      Constraints.MaxHeight = 183
      Constraints.MaxWidth = 183
      Constraints.MinHeight = 183
      Constraints.MinWidth = 183
      Ctl3D = False
      DefaultColWidth = 25
      DefaultRowHeight = 25
      FixedCols = 0
      RowCount = 7
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goAlwaysShowEditor]
      ParentCtl3D = False
      ScrollBars = ssNone
      TabOrder = 2
      OnDblClick = StringGrid1DblClick
      OnDrawCell = StringGrid1DrawCell
      OnKeyUp = StringGrid1KeyUp
      OnSelectCell = StringGrid1SelectCell
      ColWidths = (
        25
        25
        25
        25
        25
        25
        25)
    end
  end
  object sPanel5: TsPanel
    Left = 0
    Top = 211
    Width = 216
    Height = 24
    SkinData.SkinSection = 'PANEL'
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    DoubleBuffered = False
    TabOrder = 1
    object sLabel1: TsLabel
      Left = 110
      Top = 2
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = '2016'#45380' 05'#50900' 30'#51068
    end
    object sLabel2: TsLabel
      Left = 16
      Top = 2
      Width = 36
      Height = 13
      Cursor = crHandPoint
      Caption = 'TODAY'
      OnClick = sLabel2Click
      OnMouseMove = sLabel2MouseMove
      OnMouseLeave = sLabel2MouseLeave
    end
  end
  object sPanel6: TsPanel
    Left = 0
    Top = 0
    Width = 216
    Height = 28
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    DoubleBuffered = False
    TabOrder = 2
    object sComboBox1: TsComboBox
      Left = 35
      Top = 3
      Width = 89
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 15
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = '2016'#45380
      OnSelect = sComboBox1Select
      Items.Strings = (
        '2016'#45380)
    end
    object sComboBox2: TsComboBox
      Left = 128
      Top = 3
      Width = 52
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 15
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 1
      Text = '33'
      OnSelect = sComboBox1Select
      Items.Strings = (
        '33')
    end
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 208
    Top = 224
  end
end
