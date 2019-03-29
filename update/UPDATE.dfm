object UPDATE_frm: TUPDATE_frm
  Left = 717
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #54532#47196#44536#47016' '#50629#45936#51060#53944' - '#50808#54872#49345#50669'(KIS_COMM)'
  ClientHeight = 364
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 364
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    DesignSize = (
      530
      364)
    object sImage1: TsImage
      Left = 10
      Top = 10
      Width = 32
      Height = 45
      Picture.Data = {07544269746D617000000000}
      ImageIndex = 23
      Images = DataModule_ICON.IMG_24
      Reflected = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object Shape1: TShape
      Left = 8
      Top = 56
      Width = 513
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 14540252
      Pen.Color = 14540252
    end
    object sLabel1: TsLabel
      Left = 48
      Top = 21
      Width = 264
      Height = 15
      Caption = #52572#49888#48260#51204#51032' '#54532#47196#44536#47016#51012' '#52404#53356#54616#44256' '#50629#45936#51060#53944#54633#45768#45796
    end
    object sLabel2: TsLabel
      Left = 16
      Top = 72
      Width = 59
      Height = 15
      Caption = #52572#49888#48260#51204' : '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
    end
    object sLabel3: TsLabel
      Left = 16
      Top = 98
      Width = 59
      Height = 15
      Caption = #54788#51116#48260#51204' : '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
    end
    object sLabel4: TsLabel
      Left = 83
      Top = 72
      Width = 24
      Height = 15
      Caption = '2.02'
    end
    object sLabel5: TsLabel
      Left = 83
      Top = 98
      Width = 24
      Height = 15
      Caption = '2.01'
    end
    object Shape2: TShape
      Left = 9
      Top = 136
      Width = 513
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 14540252
      Pen.Color = 14540252
    end
    object sGauge1: TsGauge
      Left = 248
      Top = 75
      Width = 273
      Height = 17
      ForeColor = clBlack
      MaxValue = 100
      Suffix = '%'
    end
    object sLabel6: TsLabel
      Left = 405
      Top = 96
      Width = 116
      Height = 15
      Alignment = taRightJustify
      Caption = '1000 MB /10000 MB'
    end
    object sButton1: TsButton
      Left = 136
      Top = 72
      Width = 105
      Height = 41
      Cursor = crHandPoint
      Caption = #54532#47196#44536#47016#13#10#50629#45936#51060#53944
      TabOrder = 0
      OnClick = sButton1Click
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 39
    end
    object sMemo1: TsMemo
      Left = 9
      Top = 144
      Width = 513
      Height = 209
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
    end
  end
end
