object Main_frm: TMain_frm
  Left = 260
  Top = 56
  Width = 1163
  Height = 849
  Caption = #54620#44397#51032#50557#54408#49688#52636#51077#54801#54924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 72
    Top = 200
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Images = DataModule_ICON.IMG_24
    Left = 104
    Top = 200
    object d1: TMenuItem
      Caption = #54872#44221#49444#51221
      object N7: TMenuItem
        Tag = 100
        Caption = #53076#46300#44288#47532
        ImageIndex = 28
        object d5: TMenuItem
          Tag = 104
          Caption = #44277#53685#53076#46300
          ImageIndex = 31
          OnClick = MenuClick
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object d2: TMenuItem
          Tag = 101
          Caption = 'HS'#48512#54840
          ImageIndex = 20
          OnClick = MenuClick
        end
        object d4: TMenuItem
          Tag = 102
          Caption = #54644#50808#44144#47000#52376
          ImageIndex = 23
          OnClick = MenuClick
        end
        object N10: TMenuItem
          Tag = 103
          Caption = #54408#47785' '#47532#49828#53944
          ImageIndex = 30
          OnClick = MenuClick
        end
      end
      object N9: TMenuItem
        Tag = 110
        Caption = #44592#48376#49444#51221
        ImageIndex = 8
        OnClick = MenuClick
      end
      object w1: TMenuItem
        Tag = 120
        Caption = #47928#49436#51228#52636#48264#54840
        ImageIndex = 29
        OnClick = MenuClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object d3: TMenuItem
        Tag = -1
        Caption = #54532#47196#44536#47016#51333#47308
        ImageIndex = 12
        OnClick = d3Click
      end
    end
    object N1: TMenuItem
      Caption = #50836#44148#49888#52397
      object N2: TMenuItem
        Tag = 200
        Caption = #54364#51456#53685#44288' '#50696#51221' '#48372#44256#49436'('#54620#44397#51032#50557#54408#49688#52636#51077#54801#54924')'
        ImageIndex = 6
        OnClick = MenuClick
      end
      object N3: TMenuItem
        Tag = 210
        Caption = #54364#51456#53685#44288' '#50696#51221' '#48372#44256#49436'('#54620#44397#51032#50557#54408#49688#52636#51077#54801#54924') - '#51064#52404#51312#51649
        Visible = False
        OnClick = MenuClick
      end
    end
    object N4: TMenuItem
      Caption = #47928#49436' '#49569'/'#49688#49888
      object N5: TMenuItem
        Tag = 300
        Caption = #47928#49436#49569#49888
        ImageIndex = 21
        OnClick = MenuClick
      end
      object N6: TMenuItem
        Tag = 310
        Caption = #47928#49436#49688#49888
        ImageIndex = 15
        OnClick = MenuClick
      end
    end
    object N12: TMenuItem
      Caption = 'DATA'
      object N13: TMenuItem
        Caption = #45936#51060#53552' '#52628#52636
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #45936#51060#53552' '#54869#51064
        OnClick = N14Click
      end
    end
  end
  object sOpenDialog1: TsOpenDialog
    Filter = #50641#49472#54028#51068'(*.xlsx)|*.xlsx'
    Left = 72
    Top = 48
  end
end
