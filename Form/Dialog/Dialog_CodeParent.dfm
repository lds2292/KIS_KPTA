inherited Dialog_CodeParent_frm: TDialog_CodeParent_frm
  Left = 740
  Top = 270
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #51116#51228#44396#48516' '#49440#53469
  ClientHeight = 345
  ClientWidth = 561
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 33
    Width = 561
    Height = 2
    Cursor = crVSplit
    Align = alTop
    SkinData.SkinSection = 'SPLITTER'
  end
  object sDBGrid1: TsDBGrid [1]
    Left = 0
    Top = 35
    Width = 561
    Height = 310
    Align = alClient
    Color = clWhite
    Ctl3D = False
    DataSource = dsList
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
    OnDblClick = sDBGrid1DblClick
    OnKeyUp = sDBGrid1KeyUp
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODE_TYPE'
        Title.Alignment = taCenter
        Title.Caption = #53076#46300
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODE_CONTENTS'
        Title.Alignment = taCenter
        Title.Caption = #53076#46300#49444#47749
        Width = 404
        Visible = True
      end>
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 0
    Width = 561
    Height = 33
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 1
    object sEdit2: TsEdit
      Left = 87
      Top = 5
      Width = 146
      Height = 23
      TabOrder = 0
      OnKeyUp = sEdit2KeyUp
      SkinData.SkinSection = 'EDIT'
    end
    object sButton1: TsButton
      Left = 234
      Top = 5
      Width = 75
      Height = 23
      Caption = #51312#54924
      TabOrder = 1
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 9
    end
    object sComboBox1: TsComboBox
      Left = 5
      Top = 5
      Width = 81
      Height = 23
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      ItemHeight = 17
      ItemIndex = 0
      TabOrder = 2
      Text = #53076#46300
      Items.Strings = (
        #53076#46300
        #53076#46300#49444#47749)
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Top = 56
  end
  object dsList: TDataSource
    DataSet = DataModule_Conn.qryCodeList
    Left = 40
    Top = 56
  end
end
