inherited Dialog_ProcessView_frm: TDialog_ProcessView_frm
  Left = 678
  Top = 159
  ActiveControl = sScrollBox1
  BorderStyle = bsDialog
  BorderWidth = 4
  Caption = #45800#51068#53685#44288' '#52376#47532#54788#54889
  ClientHeight = 603
  ClientWidth = 757
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poOwnerFormCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel2: TsPanel [0]
    Left = 0
    Top = 0
    Width = 757
    Height = 603
    SkinData.SkinSection = 'TRANSPARENT'
    Align = alClient
    DoubleBuffered = False
    TabOrder = 0
    object sScrollBox1: TsScrollBox
      Left = 1
      Top = 1
      Width = 755
      Height = 601
      HorzScrollBar.Visible = False
      VertScrollBar.Smooth = True
      VertScrollBar.Style = ssFlat
      Align = alClient
      TabOrder = 0
      object sPanel5: TsPanel
        Left = 4
        Top = 4
        Width = 726
        Height = 65
        SkinData.SkinSection = 'PANEL'
        DoubleBuffered = False
        TabOrder = 0
        OnClick = sPanel5Click
        object sSpeedButton1: TsSpeedButton
          Left = 37
          Top = 4
          Width = 11
          Height = 57
          ButtonStyle = tbsDivider
        end
        object sLabel1: TsLabel
          Left = 4
          Top = 25
          Width = 32
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = '01'
        end
        object sLabel2: TsLabel
          Left = 46
          Top = 41
          Width = 130
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = '2019-01-03 11:10:26'
        end
        object sSpeedButton2: TsSpeedButton
          Left = 176
          Top = 4
          Width = 11
          Height = 57
          ButtonStyle = tbsDivider
        end
        object sLabel4: TsLabel
          Left = 188
          Top = 25
          Width = 250
          Height = 15
          Caption = #50836#44148#44592#44288#44208#44284#53685#48372#48264#54840' : 20190103110950807'
        end
        object sLabel3: TsLabel
          Left = 46
          Top = 25
          Width = 130
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'S070718008AAH'
        end
        object sLabel5: TsLabel
          Left = 46
          Top = 9
          Width = 130
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'GOVCBRRBH - Z05'
        end
        object sLabel6: TsLabel
          Left = 188
          Top = 9
          Width = 184
          Height = 15
          Caption = #54364#51456#53685#44288#50696#51221#48372#44256#49436' '#52376#47532#49345#53468#53685#48372
        end
        object sLabel7: TsLabel
          Left = 188
          Top = 41
          Width = 56
          Height = 15
          Caption = '['#53685#44288#50756#47308']'
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 64
    Top = 224
  end
end
