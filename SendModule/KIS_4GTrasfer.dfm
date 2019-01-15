object KIS_4GTrasfer_frm: TKIS_4GTrasfer_frm
  Left = 455
  Top = 165
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #51204#51088#47928#49436' '#51204#49569#47784#46280' by KIS'
  ClientHeight = 485
  ClientWidth = 502
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 17
  object Shape3: TShape
    Left = 0
    Top = 25
    Width = 501
    Height = 74
    Brush.Style = bsClear
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 502
    Height = 27
    Align = alTop
    Brush.Color = 11693573
    Pen.Style = psClear
  end
  object Gauge1: TGauge
    Left = 0
    Top = 455
    Width = 501
    Height = 23
    Progress = 0
  end
  object Label4: TLabel
    Left = 14
    Top = 6
    Width = 76
    Height = 15
    AutoSize = False
    Caption = #54028#51068#51204#49569' '#49345#53468
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 0
    Top = 104
    Width = 502
    Height = 27
    Brush.Color = 11693573
    Pen.Style = psClear
  end
  object Label5: TLabel
    Left = 14
    Top = 110
    Width = 76
    Height = 15
    AutoSize = False
    Caption = #54028#51068#51204#49569' '#45236#50669
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 29
    Top = 34
    Width = 99
    Height = 15
    BiDiMode = bdLeftToRight
    Caption = #51204#49569' '#51456#48708#46108' '#47928#49436' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 45
    Top = 54
    Width = 83
    Height = 15
    Caption = #51204#49569#50756#47308' '#47928#49436' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 45
    Top = 74
    Width = 83
    Height = 15
    AutoSize = False
    Caption = #51204#49569#49892#54056' '#47928#49436' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  object lb_SendFileCount: TLabel
    Left = 141
    Top = 54
    Width = 41
    Height = 15
    AutoSize = False
    Caption = #51204#52404' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  object lb_FailFileCount: TLabel
    Left = 141
    Top = 74
    Width = 41
    Height = 15
    AutoSize = False
    Caption = #51204#52404' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_TotalFileCount: TLabel
    Left = 141
    Top = 35
    Width = 41
    Height = 15
    AutoSize = False
    Caption = #51204#52404' :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 0
    Top = 488
    Width = 75
    Height = 25
    Caption = #47532#49828#53944
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 132
    Width = 501
    Height = 317
    Color = clGray
    Ctl3D = False
    DefaultColWidth = 20
    DefaultRowHeight = 20
    RowCount = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnDrawCell = StringGrid1DrawCell
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      20
      82
      317
      54
      215)
  end
  object Button2: TButton
    Left = 80
    Top = 488
    Width = 75
    Height = 25
    Caption = #51204#49569
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 160
    Top = 488
    Width = 75
    Height = 25
    Caption = #49688#49888
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 488
    Width = 75
    Height = 25
    Caption = 'XML'#53580#49828#53944
    TabOrder = 4
  end
  object XMLDocument1: TXMLDocument
    Left = 200
    Top = 224
    DOMVendorDesc = 'MSXML'
  end
end
