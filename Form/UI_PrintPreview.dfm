inherited UI_PrintPreview_frm: TUI_PrintPreview_frm
  Left = 590
  Top = 46
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #52636#47141#47932' '#48120#47532#48372#44592
  ClientHeight = 789
  ClientWidth = 809
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 15
  object sSplitter1: TsSplitter [0]
    Left = 0
    Top = 38
    Width = 809
    Height = 4
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    Enabled = False
    SkinData.SkinSection = 'SPLITTER'
  end
  object sLabel3: TsLabel [1]
    Left = 528
    Top = 16
    Width = 40
    Height = 15
    Caption = 'sLabel2'
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 0
    Width = 809
    Height = 38
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    DoubleBuffered = False
    TabOrder = 0
    object sLabel1: TsLabel
      Left = 8
      Top = 12
      Width = 36
      Height = 15
      Caption = #54168#51060#51648
    end
    object sSpeedButton1: TsSpeedButton
      Left = 196
      Top = 4
      Width = 10
      Height = 30
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sSpeedButton2: TsSpeedButton
      Left = 348
      Top = 4
      Width = 10
      Height = 30
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sButton1: TsButton
      Left = 730
      Top = 3
      Width = 75
      Height = 32
      Cursor = crHandPoint
      Caption = #45803#44592
      TabOrder = 0
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Reflected = True
      Images = DataModule_ICON.IMG_16
      ImageIndex = 14
    end
    object edt_CurrenctPage: TsEdit
      Left = 77
      Top = 8
      Width = 35
      Height = 23
      TabOrder = 1
      OnChange = edt_CurrenctPageChange
      SkinData.SkinSection = 'EDIT'
    end
    object edt_TotalPage: TsEdit
      Left = 126
      Top = 8
      Width = 35
      Height = 23
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = '/'
      BoundLabel.Font.Charset = ANSI_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -12
      BoundLabel.Font.Name = #47569#51008' '#44256#46357
      BoundLabel.Font.Style = []
    end
    object sButton2: TsButton
      Left = 46
      Top = 8
      Width = 30
      Height = 23
      Cursor = crHandPoint
      TabOrder = 3
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 22
    end
    object sButton3: TsButton
      Left = 162
      Top = 8
      Width = 30
      Height = 23
      Cursor = crHandPoint
      TabOrder = 4
      OnClick = sButton3Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 23
    end
    object sButton4: TsButton
      Left = 362
      Top = 3
      Width = 78
      Height = 32
      Cursor = crHandPoint
      Caption = #52636#47141
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = sButton4Click
      SkinData.SkinSection = 'BUTTON'
      Reflected = True
      Images = DataModule_ICON.IMG_16
      ImageIndex = 24
    end
    object sButton5: TsButton
      Left = 441
      Top = 3
      Width = 78
      Height = 32
      Cursor = crHandPoint
      Caption = 'PDF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = sButton5Click
      SkinData.SkinSection = 'BUTTON'
      Reflected = True
      Images = DataModule_ICON.IMG_16
      ImageIndex = 25
    end
    object sButton6: TsButton
      Left = 210
      Top = 3
      Width = 66
      Height = 32
      Cursor = crHandPoint
      Caption = #54253' '#47582#52644
      TabOrder = 7
      OnClick = sButton6Click
      SkinData.SkinSection = 'BUTTON'
      Reflected = True
      Images = DataModule_ICON.IMG_16
    end
    object sButton7: TsButton
      Tag = 1
      Left = 278
      Top = 3
      Width = 70
      Height = 32
      Cursor = crHandPoint
      Caption = #54868#47732' '#47582#52644
      TabOrder = 8
      OnClick = sButton6Click
      SkinData.SkinSection = 'BUTTON'
      Reflected = True
      Images = DataModule_ICON.IMG_16
    end
  end
  object QRPreview1: TQRPreview [3]
    Left = 0
    Top = 42
    Width = 809
    Height = 747
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 1
    PageNumber = 1
    Zoom = 100
  end
  inherited sSkinProvider1: TsSkinProvider
    Top = 56
  end
end
