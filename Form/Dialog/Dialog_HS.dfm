inherited Dialog_HS_frm: TDialog_HS_frm
  Left = 1130
  Top = 391
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #54408#47785#48512#54840'(HS'#48512#54840') '#49888#44508'/'#49688#51221
  ClientHeight = 127
  ClientWidth = 623
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [0]
    Left = 0
    Top = 0
    Width = 623
    Height = 127
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sButton3: TsButton
      Left = 483
      Top = 4
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Caption = #54869#51064
      TabOrder = 0
      OnClick = sButton3Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 1
      Reflected = True
    end
    object sButton4: TsButton
      Left = 550
      Top = 4
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Caption = #52712#49548
      TabOrder = 1
      OnClick = sButton4Click
      SkinData.SkinSection = 'CHECKBOX'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 14
      Reflected = True
    end
    object sPanel2: TsPanel
      Left = 8
      Top = 35
      Width = 97
      Height = 25
      Caption = 'HS'#48512#54840
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
    end
    object sMaskEdit1: TsMaskEdit
      Left = 106
      Top = 35
      Width = 120
      Height = 25
      Color = clWhite
      EditMask = '9999.99-9999;0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 3
      CheckOnExit = True
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
    object sPanel3: TsPanel
      Left = 8
      Top = 61
      Width = 97
      Height = 25
      Caption = 'HS'#48512#54840#47749
      TabOrder = 4
      SkinData.SkinSection = 'PANEL'
    end
    object sEdit1: TsEdit
      Left = 106
      Top = 61
      Width = 503
      Height = 25
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sPanel4: TsPanel
      Left = 8
      Top = 87
      Width = 97
      Height = 25
      Caption = 'HS'#48512#54840#50689#47928#47749
      TabOrder = 6
      SkinData.SkinSection = 'PANEL'
    end
    object sEdit2: TsEdit
      Left = 106
      Top = 87
      Width = 503
      Height = 25
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sCheckBox1: TsCheckBox
      Left = 232
      Top = 36
      Width = 80
      Height = 23
      Caption = #48512#54840#49324#50857
      Checked = True
      State = cbChecked
      TabOrder = 8
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 584
    Top = 48
  end
end
