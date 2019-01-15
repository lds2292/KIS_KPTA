inherited dialog_PUMLIST_frm: Tdialog_PUMLIST_frm
  Left = 564
  Top = 321
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #54408#47785#53076#46300' '#44032#51256#50724#44592
  ClientHeight = 384
  ClientWidth = 735
  FormStyle = fsNormal
  Position = poOwnerFormCenter
  Visible = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sDBGrid1: TsDBGrid [0]
    Left = 0
    Top = 43
    Width = 735
    Height = 341
    Align = alClient
    Color = clWhite
    DataSource = dsList
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    OnDrawColumnCell = KISDrawColumnCell
    OnDblClick = sDBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GOODS_CODE'
        Title.Alignment = taCenter
        Title.Caption = #54408#47785#53076#46300
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRADE_NAME'
        Title.Alignment = taCenter
        Title.Caption = #44144#47000#54408#47749
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODEL_SIZE'
        Title.Alignment = taCenter
        Title.Caption = #47784#45944#44508#44201
        Width = 163
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'WITAK_NATION_CODE'
        Title.Alignment = taCenter
        Title.Caption = #50948#53441#51228#51312#44397
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'WITAK_NATION_NAME'
        Title.Alignment = taCenter
        Title.Caption = #44397#44032#47749
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ORIGIN_NATION_CODE'
        Title.Alignment = taCenter
        Title.Caption = #50896#49328#51648
        Width = 45
        Visible = True
      end>
  end
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 0
    Width = 735
    Height = 41
    Align = alTop
    DoubleBuffered = False
    TabOrder = 1
    object sButton1: TsButton
      Left = 665
      Top = 3
      Width = 66
      Height = 35
      Cursor = crHandPoint
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 0
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 14
    end
    object sButton2: TsButton
      Left = 584
      Top = 3
      Width = 87
      Height = 35
      Cursor = crHandPoint
      Caption = #44032#51256#50724#44592
      ModalResult = 1
      TabOrder = 1
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 13
    end
    object edt_findtext: TsEdit
      Left = 98
      Top = 9
      Width = 151
      Height = 23
      TabOrder = 2
      OnKeyDown = edt_findtextKeyDown
    end
    object sComboBox1: TsComboBox
      Left = 8
      Top = 9
      Width = 89
      Height = 23
      Style = csOwnerDrawFixed
      ItemHeight = 17
      ItemIndex = -1
      TabOrder = 3
    end
    object sButton3: TsButton
      Left = 250
      Top = 9
      Width = 75
      Height = 23
      Caption = #51312#54924
      TabOrder = 4
      OnClick = sButton3Click
    end
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 41
    Width = 735
    Height = 2
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 2
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 400
    Top = 200
  end
  object qryList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    AfterOpen = qryListAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PUMLIST')
    Left = 328
    Top = 176
    object qryListGOODS_CODE: TStringField
      FieldName = 'GOODS_CODE'
      Size = 26
    end
    object qryListHSCD: TStringField
      FieldName = 'HSCD'
      Size = 10
    end
    object qryListTRADE_NAME: TStringField
      FieldName = 'TRADE_NAME'
      Size = 210
    end
    object qryListMODEL_SIZE: TMemoField
      FieldName = 'MODEL_SIZE'
      OnGetText = KISGetText
      BlobType = ftMemo
    end
    object qryListMODEL_SIZE_INGREDIENT: TMemoField
      FieldName = 'MODEL_SIZE_INGREDIENT'
      BlobType = ftMemo
    end
    object qryListWITAK_NATION_CODE: TStringField
      FieldName = 'WITAK_NATION_CODE'
      Size = 2
    end
    object qryListWITAK_NATION_NAME: TStringField
      FieldName = 'WITAK_NATION_NAME'
      Size = 50
    end
    object qryListORIGIN_NATION_CODE: TStringField
      FieldName = 'ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryListORIGIN_NATION_NAME: TStringField
      FieldName = 'ORIGIN_NATION_NAME'
      Size = 50
    end
    object qryListPID: TIntegerField
      FieldName = 'PID'
    end
    object qryListOLD_GOOD_CODE: TStringField
      FieldName = 'OLD_GOOD_CODE'
      Size = 26
    end
    object qryListOLD_JONG_CODE: TStringField
      FieldName = 'OLD_JONG_CODE'
      Size = 4
    end
    object qryListBSE_CODE: TStringField
      FieldName = 'BSE_CODE'
      Size = 3
    end
    object qryListBSE_ORIGIN_NATION_CODE: TStringField
      FieldName = 'BSE_ORIGIN_NATION_CODE'
      Size = 2
    end
    object qryListBSE_ORIGIN_NATION_NAME: TStringField
      FieldName = 'BSE_ORIGIN_NATION_NAME'
      Size = 50
    end
    object qryListORIGIN_MATTER: TStringField
      FieldName = 'ORIGIN_MATTER'
      Size = 100
    end
    object qryListEXTRACTION: TStringField
      FieldName = 'EXTRACTION'
      Size = 255
    end
    object qryListBATCH_NO: TStringField
      FieldName = 'BATCH_NO'
      Size = 255
    end
    object qryListCOSMETIC_GUBUN: TStringField
      FieldName = 'COSMETIC_GUBUN'
      Size = 3
    end
    object qryListDMF: TStringField
      FieldName = 'DMF'
      Size = 3
    end
    object qryListBGMP: TStringField
      FieldName = 'BGMP'
      Size = 3
    end
    object qryListPERMIT_SINGO_NO: TStringField
      FieldName = 'PERMIT_SINGO_NO'
      Size = 35
    end
    object qryListPERMIT_SINGO_DATE: TStringField
      FieldName = 'PERMIT_SINGO_DATE'
      Size = 8
    end
    object qryListDRUG_STANDARD_CODE: TStringField
      FieldName = 'DRUG_STANDARD_CODE'
      Size = 18
    end
    object qryListWITAK_SANGHO1: TStringField
      FieldName = 'WITAK_SANGHO1'
      Size = 100
    end
    object qryListWITAK_SANGHO2: TStringField
      FieldName = 'WITAK_SANGHO2'
      Size = 100
    end
    object qryListWITAK_SANGHO3: TStringField
      FieldName = 'WITAK_SANGHO3'
      Size = 100
    end
    object qryListWITAK_ADDR1: TStringField
      FieldName = 'WITAK_ADDR1'
      Size = 150
    end
    object qryListWITAK_ADDR2: TStringField
      FieldName = 'WITAK_ADDR2'
      Size = 150
    end
    object qryListWITAK_ADDR3: TStringField
      FieldName = 'WITAK_ADDR3'
      Size = 150
    end
    object qryListTAKE_NATION_CODE: TStringField
      FieldName = 'TAKE_NATION_CODE'
      Size = 2
    end
    object qryListTAKE_NATION_NAME: TStringField
      FieldName = 'TAKE_NATION_NAME'
      Size = 50
    end
    object qryListTAKE_SANGHO1: TStringField
      FieldName = 'TAKE_SANGHO1'
      Size = 100
    end
    object qryListTAKE_SANGHO2: TStringField
      FieldName = 'TAKE_SANGHO2'
      Size = 100
    end
    object qryListTAKE_SANGHO3: TStringField
      FieldName = 'TAKE_SANGHO3'
      Size = 100
    end
    object qryListTAKE_ADDR1: TStringField
      FieldName = 'TAKE_ADDR1'
      Size = 150
    end
    object qryListTAKE_ADDR2: TStringField
      FieldName = 'TAKE_ADDR2'
      Size = 150
    end
    object qryListTAKE_ADDR3: TStringField
      FieldName = 'TAKE_ADDR3'
      Size = 150
    end
    object qryListREG_DT: TStringField
      FieldName = 'REG_DT'
      Size = 8
    end
    object qryListREG_ID: TStringField
      FieldName = 'REG_ID'
      Size = 10
    end
    object qryListLST_DT: TStringField
      FieldName = 'LST_DT'
      Size = 8
    end
    object qryListLST_ID: TStringField
      FieldName = 'LST_ID'
      Size = 10
    end
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 360
    Top = 176
  end
end
