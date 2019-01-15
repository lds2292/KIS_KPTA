inherited Dialog_BetweenList_frm: TDialog_BetweenList_frm
  Left = 763
  Top = 155
  Caption = #51068#48324' '#51089#49457#45236#50669
  ClientWidth = 458
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
    Width = 458
    Height = 33
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sComboBox1: TsComboBox
      Left = 6
      Top = 4
      Width = 70
      Height = 25
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csDropDownList
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ItemHeight = 19
      ItemIndex = 0
      ParentFont = False
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
    object sComboBox2: TsComboBox
      Left = 77
      Top = 4
      Width = 55
      Height = 25
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csDropDownList
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ItemHeight = 19
      ItemIndex = 11
      ParentFont = False
      TabOrder = 1
      Text = '12'#50900
      OnSelect = sComboBox1Select
      Items.Strings = (
        '1'#50900
        '2'#50900
        '3'#50900
        '4'#50900
        '5'#50900
        '6'#50900
        '7'#50900
        '8'#50900
        '9'#50900
        '10'#50900
        '11'#50900
        '12'#50900)
    end
    object sButton5: TsButton
      Left = 384
      Top = 5
      Width = 66
      Height = 23
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 14
    end
  end
  object sDBGrid1: TsDBGrid [1]
    Left = 0
    Top = 33
    Width = 458
    Height = 578
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
        FieldName = 'YearMonth'
        Title.Alignment = taCenter
        Title.Caption = #51089#49457#51068#51088
        Width = 110
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
    Left = 0
    Top = 48
  end
end
