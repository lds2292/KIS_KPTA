object UI_ConnectionSetting_frm: TUI_ConnectionSetting_frm
  Left = 726
  Top = 423
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #50672#44208#49444#51221
  ClientHeight = 377
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 377
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 16
      Top = 16
      Width = 80
      Height = 15
      Caption = 'DataServer List'
    end
    object edt_Address: TsEdit
      Left = 72
      Top = 200
      Width = 137
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
      BoundLabel.Caption = 'ADDRESS'
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
    object sCheckBox1: TsCheckBox
      Left = 69
      Top = 176
      Width = 88
      Height = 20
      TabStop = False
      Caption = #47196#52972'DB '#49324#50857
      TabOrder = 5
      OnClick = sCheckBox1Click
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object edt_ID: TsEdit
      Left = 72
      Top = 248
      Width = 137
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'ID'
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
    object edt_Pass: TsEdit
      Left = 72
      Top = 272
      Width = 137
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'PASS'
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
    object edt_Port: TsEdit
      Left = 72
      Top = 224
      Width = 65
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'PORT'
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
    object edt_File: TsEdit
      Left = 72
      Top = 296
      Width = 371
      Height = 23
      Color = clWhite
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'FILE'
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
      Left = 248
      Top = 328
      Width = 137
      Height = 36
      Caption = #51200#51109
      ModalResult = 1
      TabOrder = 6
      TabStop = False
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 13
    end
    object sButton2: TsButton
      Left = 392
      Top = 328
      Width = 81
      Height = 36
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 7
      TabStop = False
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_24
      ImageIndex = 14
    end
    object sButton3: TsButton
      Left = 444
      Top = 296
      Width = 29
      Height = 23
      Cursor = crHandPoint
      TabOrder = 8
      TabStop = False
      OnClick = sButton3Click
      SkinData.SkinSection = 'BUTTON'
      Images = DataModule_ICON.IMG_16
      ImageIndex = 20
    end
    object StringGrid1: TStringGrid
      Left = 72
      Top = 32
      Width = 297
      Height = 137
      TabStop = False
      ColCount = 2
      Ctl3D = False
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentCtl3D = False
      TabOrder = 9
      ColWidths = (
        101
        168)
    end
    object sSpinEdit1: TsSpinEdit
      Left = 376
      Top = 32
      Width = 97
      Height = 23
      TabStop = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = '1'
      OnChange = sSpinEdit1Change
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #45936#51060#53552#49436#48260' '#44079#49688
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = ANSI_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -12
      BoundLabel.Font.Name = #47569#51008' '#44256#46357
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      Alignment = taRightJustify
      MaxValue = 10
      MinValue = 1
      Value = 1
    end
  end
  object sOpenDialog1: TsOpenDialog
    DefaultExt = '*.mdf'
    Filter = 'DataBase File(*.mdf)|*.mdf|All Files(*.*)|*.*'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 512
    Top = 104
  end
end
