inherited UI_PUMLISTMODAL_frm: TUI_PUMLISTMODAL_frm
  Caption = #54408#47785#53076#46300' '#44032#51256#50724#44592
  FormStyle = fsNormal
  Visible = False
  PixelsPerInch = 96
  TextHeight = 15
  inherited sPanel1: TsPanel
    inherited sPanel4: TsPanel
      inherited QRShape3: TQRShape
        Size.Values = (
          2.64583333333333
          13.2291666666667
          2.64583333333333
          1844.14583333333)
      end
      inherited QRShape1: TQRShape
        Size.Values = (
          2.64583333333333
          13.2291666666667
          812.270833333333
          1844.14583333333)
      end
      inherited QRShape2: TQRShape
        Size.Values = (
          2.64583333333333
          13.2291666666667
          1330.85416666667
          1844.14583333333)
      end
      inherited sButton6: TsButton
        Enabled = False
      end
      inherited sButton9: TsButton
        Enabled = False
      end
      inherited sButton10: TsButton
        Enabled = False
      end
      inherited sButton11: TsButton
        Enabled = False
      end
      inherited sButton12: TsButton
        Enabled = False
      end
      inherited sButton13: TsButton
        Enabled = False
      end
      inherited QRShape4: TQRShape
        Size.Values = (
          2.64583333333333
          13.2291666666667
          1426.10416666667
          1844.14583333333)
      end
    end
    inherited sPanel5: TsPanel
      inherited sDBGrid1: TsDBGrid
        OnDblClick = sDBGrid1DblClick
      end
      inherited sPanel32: TsPanel
        Left = 88
        Top = 640
        Width = 134
        Height = 25
        Align = alNone
      end
    end
    inherited sPanel7: TsPanel
      inherited sSpeedButton2: TsSpeedButton
        Left = 366
        Visible = False
      end
      inherited sSpeedButton3: TsSpeedButton
        Left = 366
        Visible = False
      end
      inherited sButton3: TsButton
        Left = 366
        Visible = False
      end
      inherited sButton4: TsButton
        Left = 366
        Visible = False
      end
      inherited sButton5: TsButton
        Left = 366
        Visible = False
      end
      inherited sButton7: TsButton
        Left = 366
        Visible = False
      end
      inherited sButton8: TsButton
        Left = 366
        Visible = False
      end
      inherited sButton14: TsButton
        Left = 366
        Visible = False
      end
      object sButton15: TsButton
        Left = 768
        Top = 6
        Width = 90
        Height = 39
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #44032#51256#50724#44592
        TabOrder = 13
        OnClick = sButton15Click
        SkinData.SkinSection = 'CHECKBOX'
        Reflected = True
        Images = DataModule_ICON.IMG_24
        ImageIndex = 13
      end
    end
  end
  inherited qryList: TADOQuery
    LockType = ltReadOnly
  end
end
