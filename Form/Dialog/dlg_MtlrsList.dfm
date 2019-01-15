object dlg_MtlrsList_frm: Tdlg_MtlrsList_frm
  Left = 619
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #50896#47308#47785#47197#53076#46300' '#49440#53469
  ClientHeight = 584
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel2: TsPanel
    Left = 0
    Top = 41
    Width = 480
    Height = 2
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
  end
  object sDBGrid1: TsDBGrid
    Left = 0
    Top = 43
    Width = 480
    Height = 541
    Align = alClient
    Color = clWhite
    DataSource = dsList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #47569#51008' '#44256#46357
    TitleFont.Style = []
    OnDblClick = sDBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Color = clBtnFace
        Expanded = False
        FieldName = 'USE_CD'
        Title.Alignment = taCenter
        Title.Caption = #50896#47308#47785#47197#53076#46300
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USE_CD_NM'
        Title.Alignment = taCenter
        Title.Caption = #50896#47308#47785#47197#47749#52845
        Width = 360
        Visible = True
      end>
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 41
    Align = alTop
    DoubleBuffered = False
    TabOrder = 2
    object sComboBox1: TsComboBox
      Left = 4
      Top = 9
      Width = 105
      Height = 23
      Style = csOwnerDrawFixed
      ItemHeight = 17
      ItemIndex = 0
      TabOrder = 0
      Text = #50896#47308#47785#47197#53076#46300
      Items.Strings = (
        #50896#47308#47785#47197#53076#46300
        #50896#47308#47785#47197#47749)
    end
    object sEdit1: TsEdit
      Left = 110
      Top = 9
      Width = 215
      Height = 23
      TabOrder = 1
      OnKeyUp = sEdit1KeyUp
    end
  end
  object qryList: TADOQuery
    Connection = DataModule_Conn.KisConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [COMCD_D] WHERE CD_DEF = '#39'MTRLS'#39)
    Left = 104
    Top = 168
  end
  object dsList: TDataSource
    DataSet = qryList
    Left = 136
    Top = 168
  end
end
