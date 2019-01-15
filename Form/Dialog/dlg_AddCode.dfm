object dlg_AddCode_frm: Tdlg_AddCode_frm
  Left = 930
  Top = 246
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #44277#53685#53076#46300' '#44288#47532
  ClientHeight = 190
  ClientWidth = 541
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
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 190
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    object sImage1: TsImage
      Left = 8
      Top = 8
      Width = 24
      Height = 24
      AutoSize = True
      Picture.Data = {07544269746D617000000000}
      ImageIndex = 32
      Images = DataModule_ICON.IMG_24
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sLabel1: TsLabel
      Left = 33
      Top = 16
      Width = 76
      Height = 15
      Caption = #44277#53685#53076#46300' '#52628#44032
    end
    object QRShape1: TQRShape
      Left = 0
      Top = 39
      Width = 541
      Height = 2
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        5.29166666666667
        0
        103.1875
        1431.39583333333)
      Brush.Color = 14540252
      Pen.Style = psClear
      Shape = qrsRectangle
    end
    object edt_CODE: TsEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 23
      TabOrder = 1
      BoundLabel.Active = True
      BoundLabel.Caption = #53076#46300
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object edt_Name: TsEdit
      Left = 64
      Top = 80
      Width = 441
      Height = 23
      TabOrder = 2
      BoundLabel.Active = True
      BoundLabel.Caption = #47749#52845
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object QRShape2: TQRShape
      Left = 0
      Top = 135
      Width = 541
      Height = 2
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        5.29166666666667
        0
        357.1875
        1431.39583333333)
      Brush.Color = 14540252
      Pen.Style = psClear
      Shape = qrsRectangle
    end
    object sButton1: TsButton
      Left = 193
      Top = 143
      Width = 75
      Height = 38
      Caption = #54869#51064
      ModalResult = 1
      TabOrder = 5
      TabStop = False
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 13
    end
    object chk_Used: TsCheckBox
      Left = 64
      Top = 109
      Width = 72
      Height = 16
      Caption = #53076#46300#49324#50857
      Checked = True
      Ctl3D = True
      ParentCtl3D = False
      State = cbChecked
      TabOrder = 3
      Margin = 0
    end
    object sButton2: TsButton
      Left = 273
      Top = 143
      Width = 75
      Height = 38
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 6
      TabStop = False
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 14
    end
  end
end
