object UI_RegisterUser_frm: TUI_RegisterUser_frm
  Left = 837
  Top = 278
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #49324#50857#51088#46321#47197
  ClientHeight = 154
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 314
    Height = 154
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 80
      Top = 88
      Width = 127
      Height = 15
      Caption = #50516#54840#54868#46104#50612' '#51200#51109#46121#45768#45796'.'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      UseSkinColor = False
    end
    object sEdit1: TsEdit
      Left = 81
      Top = 39
      Width = 185
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #49324#50857#51088#51060#47492
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = ANSI_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -12
      BoundLabel.Font.Name = #47569#51008' '#44256#46357
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sEdit2: TsEdit
      Left = 81
      Top = 64
      Width = 185
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #48708#48128#48264#54840
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = ANSI_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -12
      BoundLabel.Font.Name = #47569#51008' '#44256#46357
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sEdit3: TsEdit
      Left = 81
      Top = 15
      Width = 56
      Height = 23
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = #51088#46041#49373#49457
      SkinData.CustomColor = True
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #49324#50857#51088'ID'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = ANSI_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -12
      BoundLabel.Font.Name = #47569#51008' '#44256#46357
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sButton1: TsButton
      Left = 80
      Top = 106
      Width = 113
      Height = 33
      Caption = #46321#47197
      TabOrder = 3
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 13
    end
    object sButton2: TsButton
      Left = 200
      Top = 106
      Width = 66
      Height = 33
      Caption = #52712#49548
      TabOrder = 4
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 14
    end
  end
end
