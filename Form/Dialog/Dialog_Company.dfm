inherited Dialog_Company_frm: TDialog_Company_frm
  Left = 1395
  Top = 246
  BorderWidth = 4
  Caption = #54644#50808#44144#47000#52376' '#51089#49457' / '#49688#51221
  ClientHeight = 186
  ClientWidth = 461
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [0]
    Left = 0
    Top = 0
    Width = 461
    Height = 186
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
      Left = 323
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
      Left = 390
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
      Top = 51
      Width = 113
      Height = 25
      Caption = #54644#50808#44144#47000#52376#48512#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
    end
    object sPanel3: TsPanel
      Left = 8
      Top = 77
      Width = 113
      Height = 25
      Caption = #49345#54840#47749
      TabOrder = 3
      SkinData.SkinSection = 'PANEL'
    end
    object edt_SANGHO: TsEdit
      Left = 122
      Top = 77
      Width = 331
      Height = 25
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
      Top = 103
      Width = 113
      Height = 25
      Caption = #51452#49548
      TabOrder = 5
      SkinData.SkinSection = 'PANEL'
    end
    object edt_Addr: TsEdit
      Left = 122
      Top = 103
      Width = 331
      Height = 25
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object edt_CODE: TsEdit
      Left = 122
      Top = 51
      Width = 151
      Height = 25
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 13
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
    object sPanel5: TsPanel
      Left = 8
      Top = 129
      Width = 113
      Height = 25
      Caption = #44397#44032
      TabOrder = 8
      SkinData.SkinSection = 'PANEL'
    end
    object edt_NATION: TsEdit
      Left = 122
      Top = 129
      Width = 47
      Height = 25
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 9
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
  end
end
