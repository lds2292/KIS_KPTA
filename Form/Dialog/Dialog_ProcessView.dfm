inherited Dialog_ProcessView_frm: TDialog_ProcessView_frm
  Left = 1128
  Top = 95
  ActiveControl = sScrollBox1
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #45800#51068#53685#44288' '#52376#47532#54788#54889
  ClientHeight = 495
  ClientWidth = 757
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel2: TsPanel [0]
    Left = 0
    Top = 0
    Width = 757
    Height = 495
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    object sScrollBox1: TsScrollBox
      Left = 1
      Top = 1
      Width = 755
      Height = 493
      HorzScrollBar.Visible = False
      VertScrollBar.Smooth = True
      VertScrollBar.Style = ssFlat
      Align = alClient
      TabOrder = 0
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 64
    Top = 224
  end
end
