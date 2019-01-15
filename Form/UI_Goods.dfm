inherited UI_Goods_frm: TUI_Goods_frm
  Left = 543
  Top = 206
  BorderWidth = 4
  Caption = #54408#47785#53076#46300#44288#47532
  ClientHeight = 603
  ClientWidth = 757
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [0]
    Left = 0
    Top = 120
    Width = 757
    Height = 113
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
  end
  object sDBGrid1: TsDBGrid [1]
    Left = 0
    Top = 0
    Width = 757
    Height = 120
    Align = alTop
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    SkinData.SkinSection = 'EDIT'
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 0
    Top = 128
  end
end
