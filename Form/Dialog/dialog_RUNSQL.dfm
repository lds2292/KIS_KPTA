inherited dialog_RUNSQL_frm: Tdialog_RUNSQL_frm
  Left = 924
  Top = 195
  Caption = 'dialog_RUNSQL_frm'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object sMemo1: TsMemo [0]
    Left = 0
    Top = 41
    Width = 765
    Height = 463
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 0
    Width = 765
    Height = 41
    Align = alTop
    DoubleBuffered = False
    TabOrder = 1
    object sButton1: TsButton
      Left = 6
      Top = 5
      Width = 86
      Height = 30
      Caption = #45936#51060#53552#54869#51064
      TabOrder = 0
      OnClick = sButton1Click
    end
    object sButton2: TsButton
      Left = 94
      Top = 5
      Width = 67
      Height = 30
      Caption = #49892#54665
      TabOrder = 1
      OnClick = sButton2Click
    end
  end
  object sMemo2: TsMemo [2]
    Left = 0
    Top = 504
    Width = 765
    Height = 107
    Align = alBottom
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
  inherited sSkinProvider1: TsSkinProvider
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule_Conn.KisConn
    Parameters = <>
    Left = 376
    Top = 312
  end
end
