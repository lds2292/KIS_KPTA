inherited Dialog_BetweenList_frm: TDialog_BetweenList_frm
  Left = 763
  Top = 155
  Caption = #50900#48324' '#51089#49457#45236#50669
  ClientHeight = 327
  ClientWidth = 448
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel14: TsPanel [0]
    Left = 0
    Top = 0
    Width = 448
    Height = 33
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    object sComboBox1: TsComboBox
      Left = 6
      Top = 4
      Width = 70
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      ItemHeight = 19
      ItemIndex = 0
      TabOrder = 0
      Text = '2016'#45380
      OnSelect = sComboBox1Select
      Items.Strings = (
        '2016'#45380
        '2017'#45380
        '2018'#45380
        '2019'#45380
        '2020'#45380
        '2021'#45380
        '2022'#45380
        '2023'#45380
        '2024'#45380
        '2025'#45380)
    end
    object sButton5: TsButton
      Left = 384
      Top = 5
      Width = 66
      Height = 23
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 14
    end
  end
  object sDBGrid1: TsDBGrid [1]
    Left = 0
    Top = 33
    Width = 448
    Height = 294
    Align = alClient
    Color = clWhite
    DataSource = DataModule_Conn.dsCount
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    OnDblClick = sDBGrid1DblClick
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOC_YEAR'
        Title.Alignment = taCenter
        Title.Caption = #45380#46020
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DOC_MON'
        Title.Alignment = taCenter
        Title.Caption = #50900
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WriteDocCount'
        Title.Alignment = taCenter
        Title.Caption = #51089#49457#47928#49436' '#49688
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BetweenDocNo'
        Title.Alignment = taCenter
        Title.Caption = #51228#52636#48264#54840
        Width = 235
        Visible = True
      end>
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 64
    Top = 104
  end
end
