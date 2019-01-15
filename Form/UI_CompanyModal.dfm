inherited UI_CompanyModal_frm: TUI_CompanyModal_frm
  Caption = #44144#47000#52376#49440#53469
  FormStyle = fsNormal
  Visible = False
  PixelsPerInch = 96
  TextHeight = 15
  inherited sPanel1: TsPanel
    inherited sButton5: TsButton [0]
      Left = 416
      Visible = False
    end
    inherited sButton4: TsButton [1]
      Left = 349
      Visible = False
    end
    inherited sButton3: TsButton
      Left = 282
      Visible = False
    end
    inherited sPanel2: TsPanel [3]
    end
    inherited sButton1: TsButton [4]
    end
    object sButton6: TsButton
      Left = 480
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #49440#53469
      ModalResult = 1
      TabOrder = 6
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 13
    end
    object sButton2: TsButton
      Left = 547
      Top = 2
      Width = 66
      Height = 37
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 7
      SkinData.SkinSection = 'CHECKBOX'
      Reflected = True
      Images = DataModule_ICON.IMG_24
      ImageIndex = 14
    end
  end
  inherited sDBGrid1: TsDBGrid
    OnDblClick = sDBGrid1DblClick
  end
end
