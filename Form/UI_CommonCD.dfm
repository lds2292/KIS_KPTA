inherited UI_COMMONCD_frm: TUI_COMMONCD_frm
  Left = 588
  Top = 75
  BorderWidth = 4
  Caption = #44277#53685#53076#46300
  ClientHeight = 597
  ClientWidth = 760
  KeyPreview = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel3: TsPanel [0]
    Left = 0
    Top = 0
    Width = 760
    Height = 2
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
  end
  object sPanel4: TsPanel [1]
    Left = 0
    Top = 2
    Width = 760
    Height = 595
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alClient
    DoubleBuffered = False
    TabOrder = 1
    object sPanel2: TsPanel
      Left = 164
      Top = 1
      Width = 595
      Height = 593
      SkinData.SkinSection = 'TRANSPARENT'
      Align = alClient
      DoubleBuffered = False
      TabOrder = 0
      object sDBGrid2: TsDBGrid
        Left = 1
        Top = 42
        Width = 593
        Height = 526
        Align = alClient
        Color = clWhite
        DataSource = dsDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #47569#51008' '#44256#46357
        TitleFont.Style = []
        OnDrawColumnCell = KISDrawColumnCell
        OnDblClick = sDBGrid2DblClick
        SkinData.CustomColor = True
        Columns = <
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'USE_SEQ'
            Title.Alignment = taCenter
            Title.Caption = #49692#48264
            Width = 38
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USE_CD'
            Title.Alignment = taCenter
            Title.Caption = #53076#46300
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USE_CD_NM'
            Title.Alignment = taCenter
            Title.Caption = #47749#52845
            Width = 366
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USED'
            Title.Alignment = taCenter
            Title.Caption = #49324#50857
            Width = 39
            Visible = True
          end>
      end
      object sPanel6: TsPanel
        Left = 1
        Top = 1
        Width = 593
        Height = 41
        Align = alTop
        DoubleBuffered = False
        TabOrder = 1
        DesignSize = (
          593
          41)
        object edt_FindText: TsEdit
          Left = 342
          Top = 8
          Width = 177
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyUp = edt_FindTextKeyUp
          SkinData.SkinSection = 'EDIT'
        end
        object sButton1: TsButton
          Left = 520
          Top = 8
          Width = 66
          Height = 25
          Cursor = crHandPoint
          Caption = #51312#54924
          TabOrder = 1
          OnClick = sButton1Click
          SkinData.SkinSection = 'BUTTON'
          Images = DataModule_ICON.IMG_16
          ImageIndex = 9
        end
        object sComboBox1: TsComboBox
          Left = 260
          Top = 8
          Width = 81
          Height = 25
          VerticalAlignment = taVerticalCenter
          Style = csOwnerDrawFixed
          Ctl3D = True
          ItemHeight = 19
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = #53076#46300
          Items.Strings = (
            #53076#46300
            #47749#52845)
        end
        object sButton3: TsButton
          Left = 2
          Top = 1
          Width = 90
          Height = 39
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #53076#46300#52628#44032
          TabOrder = 3
          OnClick = sButton3Click
          SkinData.SkinSection = 'CHECKBOX'
          Reflected = True
          Images = DataModule_ICON.IMG_24
          ImageIndex = 32
        end
        object sButton4: TsButton
          Left = 91
          Top = 1
          Width = 66
          Height = 39
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #49688#51221
          TabOrder = 4
          OnClick = sButton4Click
          SkinData.SkinSection = 'CHECKBOX'
          Reflected = True
          Images = DataModule_ICON.IMG_24
          ImageIndex = 33
        end
        object sButton5: TsButton
          Left = 156
          Top = 1
          Width = 66
          Height = 39
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #49325#51228
          TabOrder = 5
          OnClick = sButton5Click
          SkinData.SkinSection = 'CHECKBOX'
          Reflected = True
          Images = DataModule_ICON.IMG_24
          ImageIndex = 34
        end
      end
      object sPanel1: TsPanel
        Left = 1
        Top = 568
        Width = 593
        Height = 24
        Align = alBottom
        DoubleBuffered = False
        TabOrder = 2
        object sLabel1: TsLabel
          Left = 8
          Top = 4
          Width = 40
          Height = 15
          Caption = 'sLabel1'
        end
      end
    end
    object sPanel5: TsPanel
      Left = 1
      Top = 1
      Width = 163
      Height = 593
      SkinData.SkinSection = 'TRANSPARENT'
      Align = alLeft
      DoubleBuffered = False
      TabOrder = 1
      object sDBGrid1: TsDBGrid
        Left = 1
        Top = 1
        Width = 161
        Height = 591
        Align = alClient
        Color = clGray
        DataSource = dsList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #47569#51008' '#44256#46357
        TitleFont.Style = []
        SkinData.CustomColor = True
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'CD_DEF_NM'
            Title.Alignment = taCenter
            Title.Caption = #53076#46300#51333#47448
            Width = 139
            Visible = True
          end>
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 728
    Top = 48
  end
  object qryList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryListAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM COMCD')
    Left = 184
    Top = 152
    object qryListCD_DEF: TStringField
      FieldName = 'CD_DEF'
    end
    object qryListCD_DEF_NM: TStringField
      FieldName = 'CD_DEF_NM'
      Size = 200
    end
    object qryListETC_TXT: TStringField
      FieldName = 'ETC_TXT'
      Size = 200
    end
    object qryListETC_CUR: TBCDField
      FieldName = 'ETC_CUR'
      Precision = 18
      Size = 5
    end
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 216
    Top = 152
  end
  object qryDetail: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryDetailAfterOpen
    Parameters = <
      item
        Name = 'CD_DEF'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = 'MTRLS'
      end>
    SQL.Strings = (
      
        'SELECT CD_DEF, CD_SEQ, ROW_NUMBER() OVER(ORDER BY USE_CD) as USE' +
        '_SEQ,  USE_CD, USE_CD_NM, ETC_TXT, ETC_CUR, USED'
      'FROM COMCD_D'
      'WHERE CD_DEF = :CD_DEF'
      'ORDER BY USE_CD')
    Left = 184
    Top = 184
    object qryDetailCD_DEF: TStringField
      FieldName = 'CD_DEF'
    end
    object qryDetailCD_SEQ: TIntegerField
      FieldName = 'CD_SEQ'
    end
    object qryDetailUSE_CD: TStringField
      FieldName = 'USE_CD'
      Size = 50
    end
    object qryDetailUSE_CD_NM: TStringField
      FieldName = 'USE_CD_NM'
      Size = 200
    end
    object qryDetailETC_TXT: TStringField
      FieldName = 'ETC_TXT'
      Size = 200
    end
    object qryDetailETC_CUR: TBCDField
      FieldName = 'ETC_CUR'
      Precision = 18
      Size = 5
    end
    object qryDetailUSED: TBooleanField
      FieldName = 'USED'
      OnGetText = qryDetailUSEDGetText
    end
    object qryDetailUSE_SEQ: TLargeintField
      FieldName = 'USE_SEQ'
      ReadOnly = True
    end
  end
  object dsDetail: TDataSource
    DataSet = qryDetail
    Left = 216
    Top = 184
  end
end
