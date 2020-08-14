object XForm1: TXForm1
  Left = 221
  Top = 77
  Width = 1521
  Height = 941
  Caption = #54620#44397#51452#53469#44552#50997#44277#49324'_'#50672#44552#50557#49885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = XFormShow
  CaptionButtons = <>
  DLLName = 'HFeditPY.dll'
  InitHeight = 0
  InitWidth = 0
  PixelsPerInch = 96
  TextHeight = 15
  object pnButton: TRzPanel
    Left = 0
    Top = 0
    Width = 1505
    Height = 89
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clActiveCaption
    TabOrder = 0
    object RzLabel9: TRzLabel
      Left = 197
      Top = 2
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54596#49688#51077#47141#54637#47785#51077#45768#45796'.'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel47: TRzLabel
      Left = 674
      Top = 10
      Width = 90
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'PDF'#52392#48512
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      Visible = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object btnSave: TRzBitBtn
      Left = 245
      Top = 33
      Width = 70
      Height = 33
      FrameColor = 7617536
      Action = aSave
      Caption = #51200' '#51109
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
    end
    object btnClose: TRzBitBtn
      Left = 402
      Top = 33
      Width = 70
      Height = 34
      FrameColor = 7617536
      Caption = #45803' '#44592
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = btnCloseClick
    end
    object btnCancel: TRzBitBtn
      Left = 324
      Top = 33
      Width = 70
      Height = 33
      FrameColor = 7617536
      Caption = #52712' '#49548
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelClick
    end
    object btnSendHF: TRzBitBtn
      Left = 15
      Top = 17
      Width = 136
      Height = 55
      FrameColor = 7617536
      Action = aSendHF
      Caption = #51452#53469#44552#50997#44277#49324' '#51204#49569#51088#47308' '#51204#49569'('#50557#49885')'
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 3
    end
    object btnEdit: TRzBitBtn
      Left = 167
      Top = 32
      Width = 70
      Height = 33
      FrameColor = 7617536
      Action = aEdit
      Caption = #51077#47141
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 4
    end
    object pnFileUp: TRzPanel
      Left = 774
      Top = 5
      Width = 375
      Height = 78
      BorderOuter = fsFlatRounded
      TabOrder = 5
      object lbPdf: TRzLabel
        Left = 16
        Top = 48
        Width = 73
        Height = 12
        Caption = 'PDF'#52392#48512#50504#46120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object btnUpfile: TRzBitBtn
        Left = 210
        Top = 8
        Width = 139
        FrameColor = 7617536
        Caption = 'PDF'#52392#48512#54028#51068#50629#47196#46300
        Color = 15791348
        HotTrack = True
        TabOrder = 0
        OnClick = btnUpfileClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000530B0000530B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
          09090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8E809
          10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
          10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
          10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
          10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
          10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E809090909
          10101009090909E8E8E8E8E881818181ACACAC81818181E8E8E8E8E809101010
          10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E809101010
          10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E8E8091010
          101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E8E8E80910
          1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8E8E809
          10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E8E8
          091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E8E8
          E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object edtbtnFileSelect: TcxButtonEdit
        Left = 10
        Top = 13
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtbtnFileSelectPropertiesButtonClick
        TabOrder = 1
        Text = #54028#51068#51012' '#49440#53469#54616#49464#50836
        Width = 193
      end
      object ProgressBar1: TProgressBar
        Left = 2
        Top = 60
        Width = 371
        Height = 16
        Align = alBottom
        TabOrder = 2
      end
    end
    object btnDownPdf: TRzBitBtn
      Left = 663
      Top = 37
      Width = 103
      FrameColor = 7617536
      Caption = 'PDF'#45796#50868#47196#46300
      Color = 15791348
      HotTrack = True
      TabOrder = 6
      OnClick = btnDownPdfClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000530B0000530B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        091009E8E8E8E8E8E8E8E8E8E8E8E8E881AC81E8E8E8E8E8E8E8E8E8E8E8E809
        10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E80910
        1010101009E8E8E8E8E8E8E8E8E881ACACACACAC81E8E8E8E8E8E8E8E8091010
        101010101009E8E8E8E8E8E8E881ACACACACACACAC81E8E8E8E8E8E809101010
        10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E809101010
        10101010101009E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E809090909
        10101009090909E8E8E8E8E881818181ACACAC81818181E8E8E8E8E8E8E8E809
        10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
        10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
        10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
        10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
        10101009E8E8E8E8E8E8E8E8E8E8E881ACACAC81E8E8E8E8E8E8E8E8E8E8E809
        09090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnBringAp: TRzBitBtn
      Left = 489
      Top = 33
      Width = 70
      Height = 34
      FrameColor = 7617536
      Caption = #53685#54633#51088#47308' '#44032#51256#50724#44592
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = btnBringApClick
    end
    object btn_build: TRzBitBtn
      Left = 564
      Top = 24
      Width = 83
      Height = 42
      FrameColor = 7617536
      Caption = #44148#52629#47932#45824#51109' '#44032#51256#50724#44592
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 8
      OnClick = btn_buildClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 1505
    Height = 813
    Align = alClient
    Color = clActiveCaption
    TabOrder = 1
    object cxLabel1: TRzLabel
      Left = 4
      Top = 24
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#45824#52264' '#44396#48516
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object cxLabel39: TRzLabel
      Left = 272
      Top = 24
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44032#44201#49884#51216'('#51089#49457#51068#51088')'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object cxLabel42: TRzLabel
      Left = 272
      Top = 3
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44048#51221#49436#48264#54840
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel44: TRzLabel
      Left = 273
      Top = 549
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #50900#49464'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel1: TRzLabel
      Left = 4
      Top = 3
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51032#47280#48264#54840
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object cxLabel6: TRzLabel
      Left = 578
      Top = 68
      Width = 69
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #52712#49548#50668#48512
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel2: TRzLabel
      Left = 4
      Top = 46
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #47932#44148#50857#46020
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel4: TRzLabel
      Left = 4
      Top = 157
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49548#51116#51648'_'#48264#51648#44396#48516
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel10: TRzLabel
      Left = 273
      Top = 46
      Width = 168
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #50557#49885#54217#44032' '#49688#49688#47308
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel11: TRzLabel
      Left = 4
      Top = 68
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49892#48708
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel14: TRzLabel
      Left = 578
      Top = 46
      Width = 69
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54217#44032#49688#49688#47308
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel15: TRzLabel
      Left = 272
      Top = 68
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48512#44032#49464
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel8: TRzLabel
      Left = 4
      Top = 90
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #52712#49548#45236#50669
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel7: TRzLabel
      Left = 272
      Top = 90
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #45812#48372#44592#51456#44032#50529'('#54620#44544')'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel17: TRzLabel
      Left = 4
      Top = 112
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #45812#48372#44592#51456#44032#50529'('#49707#51088')'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel18: TRzLabel
      Left = 4
      Top = 134
      Width = 177
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48277#51221#46041#53076#46300' '#49464#48516#54868
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel20: TRzLabel
      Left = 275
      Top = 157
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49548#51116#51648' '#49464#48512#51452#49548' '#48376#48264
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel21: TRzLabel
      Left = 4
      Top = 179
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49548#51116#51648' '#49464#48512#51452#49548' '#48512#48264
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel19: TRzLabel
      Left = 275
      Top = 179
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44148#47932#47749
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel24: TRzLabel
      Left = 4
      Top = 201
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #46041#47749
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel23: TRzLabel
      Left = 275
      Top = 200
      Width = 169
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = #54840#47749
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel27: TRzLabel
      Left = 4
      Top = 223
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44148#47932#47732#51201'('#54217#54805')'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel26: TRzLabel
      Left = 275
      Top = 243
      Width = 169
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = #44277#50976#47732#51201'('#54217#54805')'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel28: TRzLabel
      Left = 4
      Top = 244
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44277#50976#47732#51201'(M2)'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel29: TRzLabel
      Left = 568
      Top = 223
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51204#50976#47732#51201'('#54217#54805')'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel30: TRzLabel
      Left = 275
      Top = 223
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51204#50976#47732#51201'(M2)'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel34: TRzLabel
      Left = 568
      Top = 243
      Width = 111
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = #45824#51648#44428#47732#51201'(M2)'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel36: TRzLabel
      Left = 4
      Top = 264
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #52789#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel37: TRzLabel
      Left = 275
      Top = 264
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #45236#48512#44396#51312
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel35: TRzLabel
      Left = 568
      Top = 264
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #45212#48169#48169#49885
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel38: TRzLabel
      Left = 275
      Top = 286
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #52509#46041#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel41: TRzLabel
      Left = 4
      Top = 285
      Width = 123
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = #52509#49464#45824#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel42: TRzLabel
      Left = 567
      Top = 286
      Width = 112
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51456#44277#51068#51088
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel43: TRzLabel
      Left = 4
      Top = 307
      Width = 123
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = #52509#52789#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel46: TRzLabel
      Left = 275
      Top = 308
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44396#51312
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel45: TRzLabel
      Left = 568
      Top = 308
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54644#45817#54217#54805#49464#45824#49688'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel49: TRzLabel
      Left = 4
      Top = 330
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54644#45817#54217#54805#49464#45824#49688'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel50: TRzLabel
      Left = 275
      Top = 330
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54644#45817#54217#54805#49464#45824#49688'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel53: TRzLabel
      Left = 568
      Top = 330
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44228#45800#53440#51077
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel52: TRzLabel
      Left = 4
      Top = 352
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54693
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel51: TRzLabel
      Left = 275
      Top = 352
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54217#54805
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel54: TRzLabel
      Left = 568
      Top = 352
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '1:'#48373#52789',2:'#45800#52789
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel55: TRzLabel
      Left = 4
      Top = 374
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48169#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel56: TRzLabel
      Left = 4
      Top = 396
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49464#45824#45817#51452#52264#45824#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel48: TRzLabel
      Left = 275
      Top = 396
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44368#53685#49884#49444
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel57: TRzLabel
      Left = 568
      Top = 396
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44368#50977#49884#49444
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel59: TRzLabel
      Left = 275
      Top = 418
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51452#50948#54872#44221
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel58: TRzLabel
      Left = 4
      Top = 418
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54200#51061#49884#49444
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel60: TRzLabel
      Left = 568
      Top = 549
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #50900#49464'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel61: TRzLabel
      Left = 568
      Top = 418
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51204#51077#49464#45824#49688
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel63: TRzLabel
      Left = 4
      Top = 439
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44288#54624#46041#49324#47924#49548#47749
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel64: TRzLabel
      Left = 275
      Top = 439
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49464#45824#51452#49457#47749'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel67: TRzLabel
      Left = 568
      Top = 439
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49464#45824#49688#49457#47749'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel66: TRzLabel
      Left = 4
      Top = 461
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49464#45824#49688#49457#47749'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel68: TRzLabel
      Left = 275
      Top = 461
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51204#51077#51068#51088'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel69: TRzLabel
      Left = 568
      Top = 460
      Width = 111
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = #51204#51077#51068#51088'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel71: TRzLabel
      Left = 4
      Top = 483
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51204#51077#51068#51088'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel72: TRzLabel
      Left = 275
      Top = 483
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54869#51221#51068#51088'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel70: TRzLabel
      Left = 568
      Top = 483
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54869#51221#51068#51088'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel74: TRzLabel
      Left = 4
      Top = 505
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54869#51221#51068#51088'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel75: TRzLabel
      Left = 4
      Top = 527
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#45824#48372#51613#44552'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel76: TRzLabel
      Left = 273
      Top = 527
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#45824#48372#51613#44552'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel78: TRzLabel
      Left = 4
      Top = 548
      Width = 123
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = #50900#49464'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel79: TRzLabel
      Left = 568
      Top = 527
      Width = 111
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#45824#48372#51613#44552'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel22: TRzLabel
      Left = 4
      Top = 571
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#52264#45236#50857'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel80: TRzLabel
      Left = 4
      Top = 593
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#52264#45236#50857'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel82: TRzLabel
      Left = 4
      Top = 614
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#52264#45236#50857'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel83: TRzLabel
      Left = 4
      Top = 636
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48708#44256'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel81: TRzLabel
      Left = 275
      Top = 636
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48708#44256'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel84: TRzLabel
      Left = 566
      Top = 636
      Width = 106
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48708#44256'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel88: TRzLabel
      Left = 4
      Top = 658
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#52264#53945#44592#49324#54637'1'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel89: TRzLabel
      Left = 275
      Top = 658
      Width = 169
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#52264#53945#44592#49324#54637'2'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel90: TRzLabel
      Left = 566
      Top = 658
      Width = 106
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#52264#53945#44592#49324#54637'3'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel13: TRzLabel
      Left = 4
      Top = 680
      Width = 123
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44032#44201#44592#51456#51068#51088
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel39: TRzLabel
      Left = 4
      Top = 702
      Width = 123
      Height = 48
      Alignment = taCenter
      AutoSize = False
      Caption = #45812#48372#51312#49324#49436#53945#44592#49324#54637
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object Label1: TLabel
      Left = 614
      Top = 203
      Width = 160
      Height = 15
      Caption = '('#44396#48516#44148#47932' '#51060#47732'  '#50694' '#49324#54637' '#54596#49688')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object RzLabel16: TRzLabel
      Left = 1212
      Top = 564
      Width = 320
      Height = 75
      Caption = 
        '*'#51452#51032' '#44048#51221#49436#48264#54840#45716' '#51452#53469#44552#50997#44277#49324#50640#49436#13#10'15'#51088#47532#47196' '#47564#46308#50612' '#45804#46972#44256' '#50836#52397#54616#50668' '#51060#49345#54616#44172' '#48372#51068#49688' '#13#10#51080#49845#45768#45796'. (Ex: 00' +
        '0A20196-01010) '#13#10#49324#50857#51088#45716' '#44592#51316#45824#47196' '#44048#51221#49436' '#48264#54840' '#45824#47196' '#51077#47141' '#54616#49884#47732' '#51088#46041#51004#47196' '#13#10#48320#54872' '#49884#53429#45768#45796'. '
      Visible = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel77: TRzLabel
      Left = 876
      Top = 83
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#45824#49345#54620#44032
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel91: TRzLabel
      Left = 876
      Top = 61
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #47588#47588#49345#54620#44032
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel92: TRzLabel
      Left = 1138
      Top = 61
      Width = 78
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #47588#47588#54616#54620#44032
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel93: TRzLabel
      Left = 1138
      Top = 83
      Width = 78
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51076#45824#54616#54620#44032
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel94: TRzLabel
      Left = 876
      Top = 105
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44148#47932#44396#51312
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel95: TRzLabel
      Left = 1138
      Top = 105
      Width = 78
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44148#47932#50857#46020
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel96: TRzLabel
      Left = 876
      Top = 127
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #49849#44053#44592' '#50976#47924
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel97: TRzLabel
      Left = 1138
      Top = 127
      Width = 78
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44148#47932#49345#53468
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel98: TRzLabel
      Left = 876
      Top = 149
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '1:'#50672#47549'/'#45796#49464#45824', 2:'#50500#54028#53944', 3: '#51452#49345#48373#54633', 4:'#50724#54588#49828#53588
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel99: TRzLabel
      Left = 876
      Top = 171
      Width = 139
      Height = 49
      Alignment = taCenter
      AutoSize = False
      Caption = #44032#44201#44208#51221#51032#44204' '#48143' '#44592#53440
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel3: TRzLabel
      Left = 876
      Top = 219
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44032#49345#44228#51340#51008#54665#53076#46300
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object cxLabel4: TRzLabel
      Left = 876
      Top = 241
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44032#49345#44228#51340#48264#54840
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel5: TRzLabel
      Left = 876
      Top = 263
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44032#49345#44228#51340#44256#44061#47749
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel32: TRzLabel
      Left = 876
      Top = 285
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '('#44032#49345#44228#51340')'#50976#54952#49884#51089#51068#51088
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel31: TRzLabel
      Left = 1121
      Top = 285
      Width = 145
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '('#44032#49345#44228#51340')'#50976#54952#51333#47308#51068#51088
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel6: TRzLabel
      Left = 876
      Top = 307
      Width = 139
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51060#52404#44552#50529'('#44032#49345#44228#51340')'
      Color = clSkyBlue
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object Shape1: TShape
      Left = 856
      Top = 48
      Width = 9
      Height = 748
    end
    object RzLabel12: TRzLabel
      Left = 884
      Top = 371
      Width = 131
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #48708#44256'('#48277#51064#49324#50857')'
      Color = clMoneyGreen
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object RzLabel25: TRzLabel
      Left = 884
      Top = 349
      Width = 131
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54217#44032#45812#45817#51088#49457#47749'('#48277#51064')'
      Color = clMoneyGreen
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object btnFindAddr: TRzBitBtn
      Left = 326
      Top = 133
      Width = 121
      Height = 22
      FrameColor = 7617536
      Action = aFindaddr
      Caption = #54364#51456#51648#51077#47141#53076#46300
      Color = 15791348
      HotTrack = True
      TabOrder = 0
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000830E0000830E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
        5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
        D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
        E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
        E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
        81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
        81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
        81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
        D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
        E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
        D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
        E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
        D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
        D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
        5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object edtTOT_FLOOR: TcxDBCurrencyEdit
      Left = 125
      Top = 307
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TOT_FLOOR'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 1
      Height = 25
      Width = 152
    end
    object edtSTRUCTURE: TRzDBEdit
      Left = 443
      Top = 307
      Width = 126
      Height = 24
      DataSource = dsMain
      DataField = 'STRUCTURE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 2
    end
    object edtSP_HOUSE_CNT1: TRzDBEdit
      Left = 678
      Top = 308
      Width = 164
      Height = 23
      DataSource = dsMain
      DataField = 'SP_HOUSE_CNT1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 3
    end
    object edtDAMBO_NO: TRzDBEdit
      Left = 126
      Top = 3
      Width = 148
      Height = 23
      DataSource = dsMain
      DataField = 'DAMBO_NO'
      AutoSize = False
      DisabledColor = clWindow
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 4
    end
    object edtCTRL_NO_YEAR: TRzDBEdit
      Left = 440
      Top = 3
      Width = 138
      Height = 23
      Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
      DataSource = dsMain
      DataField = 'CTRL_NO_YEAR'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 5
    end
    object edtGAM_GUBUN: TcxDBImageComboBox
      Left = 125
      Top = 23
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'GAM_GUBUN'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = #51076#45824#52264#54252#54632
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #51076#45824#52264#48120#54252#54632
          Value = '2'
        end>
      TabOrder = 6
      Height = 25
      Width = 150
    end
    object edtDOC_DATE: TRzDBDateTimeEdit
      Tag = 1
      Left = 440
      Top = 24
      Width = 139
      Height = 23
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'DOC_DATE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 7
      EditType = etDate
    end
    object edtMUL_JONG: TRzDBEdit
      Left = 126
      Top = 46
      Width = 29
      Height = 23
      DataSource = dsMain
      DataField = 'MUL_JONG'
      AutoSize = False
      DisabledColor = clWindow
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 8
    end
    object edtGAMJUNG_RYO: TcxDBCurrencyEdit
      Left = 439
      Top = 45
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'GAMJUNG_RYO'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 9
      Height = 25
      Width = 141
    end
    object edtPYUNG_SUSURYO: TcxDBCurrencyEdit
      Left = 645
      Top = 45
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'PYUNG_SUSURYO'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 10
      Height = 25
      Width = 119
    end
    object edtPYUNG_SILBI: TcxDBCurrencyEdit
      Left = 125
      Top = 67
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'PYUNG_SILBI'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 11
      Height = 25
      Width = 150
    end
    object edtPYUNG_BUGA: TcxDBCurrencyEdit
      Left = 439
      Top = 67
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'PYUNG_BUGA'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 12
      Height = 25
      Width = 141
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 645
      Top = 67
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'CANCEL_YN'
      DataBinding.DataSource = dsMain
      Enabled = False
      Properties.Items = <
        item
          Description = 'Y'
          ImageIndex = 0
          Value = 'Y'
        end
        item
          Description = 'N'
          Value = 'N'
        end>
      TabOrder = 13
      Height = 24
      Width = 119
    end
    object edtCANCEL_REASON: TRzDBEdit
      Left = 126
      Top = 90
      Width = 148
      Height = 23
      DataSource = dsMain
      DataField = 'CANCEL_REASON'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 14
    end
    object edtDAMBO_BAS_VLU_KOR: TRzDBEdit
      Left = 440
      Top = 90
      Width = 139
      Height = 23
      DataSource = dsMain
      DataField = 'DAMBO_BAS_VLU_KOR'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 15
    end
    object edtDAMBO_BAS_VLU_NUM: TcxDBCurrencyEdit
      Left = 125
      Top = 111
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'DAMBO_BAS_VLU_NUM'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 16
      Height = 25
      Width = 150
    end
    object edtSOJAE_BUNJIGB: TcxDBImageComboBox
      Left = 125
      Top = 156
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SOJAE_BUNJIGB'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = #51068#48152#48264#51648
          ImageIndex = 0
          Value = '01'
        end
        item
          Description = #49328#48264#51648
          Value = '02'
        end
        item
          Description = #44032#51648#48264
          Value = '03'
        end
        item
          Description = #48660#47085#51648#48264
          Value = '04'
        end
        item
          Description = #44592#53440
          Value = '05'
        end>
      TabOrder = 17
      Height = 25
      Width = 152
    end
    object edtSOJAE_ADDR_BONBUN: TRzDBEdit
      Left = 443
      Top = 157
      Width = 398
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_ADDR_BONBUN'
      AutoSize = False
      DisabledColor = clWindow
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 18
    end
    object edtSOJAE_ADDR_BUBUN: TRzDBEdit
      Left = 126
      Top = 179
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_ADDR_BUBUN'
      AutoSize = False
      DisabledColor = clWindow
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 19
    end
    object edtSOJAE_GUNMULNM: TRzDBEdit
      Left = 443
      Top = 179
      Width = 398
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_GUNMULNM'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 20
    end
    object edtSOJAE_DONGNO: TRzDBEdit
      Left = 126
      Top = 200
      Width = 150
      Height = 24
      DataSource = dsMain
      DataField = 'SOJAE_DONGNO'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 21
    end
    object edtSOJAE_HONO: TRzDBEdit
      Left = 443
      Top = 201
      Width = 161
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_HONO'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 22
    end
    object edtBUILDING_AREA: TcxDBCurrencyEdit
      Left = 125
      Top = 222
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'BUILDING_AREA'
      DataBinding.DataSource = dsMain
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.MaxValue = 99998.000000000000000000
      TabOrder = 23
      Height = 25
      Width = 152
    end
    object edtEXCLUSIVE_M2: TcxDBCurrencyEdit
      Left = 442
      Top = 222
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'EXCLUSIVE_M2'
      DataBinding.DataSource = dsMain
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.MaxValue = 99998.000000000000000000
      TabOrder = 24
      Height = 26
      Width = 128
    end
    object edtEXCLUSIVE_AREA: TcxDBCurrencyEdit
      Left = 677
      Top = 222
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'EXCLUSIVE_AREA'
      DataBinding.DataSource = dsMain
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.MaxValue = 99998.000000000000000000
      TabOrder = 25
      Height = 25
      Width = 165
    end
    object edtCOMMON_M2: TcxDBCurrencyEdit
      Left = 125
      Top = 243
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'COMMON_M2'
      DataBinding.DataSource = dsMain
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.MaxValue = 99998.000000000000000000
      TabOrder = 26
      Height = 25
      Width = 152
    end
    object edtCOMMON_AREA: TcxDBCurrencyEdit
      Left = 442
      Top = 243
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'COMMON_AREA'
      DataBinding.DataSource = dsMain
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.MaxValue = 99998.000000000000000000
      TabOrder = 27
      Height = 25
      Width = 128
    end
    object edtLAND_AREA: TcxDBCurrencyEdit
      Left = 677
      Top = 243
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'LAND_AREA'
      DataBinding.DataSource = dsMain
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.MaxValue = 99998.000000000000000000
      TabOrder = 28
      Height = 25
      Width = 165
    end
    object edtFLOOR_CNT: TRzDBEdit
      Left = 126
      Top = 264
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'FLOOR_CNT'
      Alignment = taRightJustify
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 29
    end
    object edtINNER_STRUCTIURE: TRzDBEdit
      Left = 443
      Top = 264
      Width = 126
      Height = 23
      DataSource = dsMain
      DataField = 'INNER_STRUCTIURE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 30
    end
    object edtHEAT_TYPE: TRzDBEdit
      Left = 678
      Top = 264
      Width = 163
      Height = 23
      DataSource = dsMain
      DataField = 'HEAT_TYPE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 31
    end
    object edtTOT_HOUSE_CNT: TcxDBCurrencyEdit
      Left = 125
      Top = 285
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TOT_HOUSE_CNT'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 32
      Height = 25
      Width = 152
    end
    object edtTOT_DONG_CNT: TcxDBCurrencyEdit
      Left = 442
      Top = 284
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TOT_DONG_CNT'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 33
      Height = 27
      Width = 128
    end
    object edtCOMPLETE_DATE: TRzDBDateTimeEdit
      Tag = 1
      Left = 678
      Top = 285
      Width = 164
      Height = 25
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'COMPLETE_DATE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 34
      EditType = etDate
    end
    object edtSP_HOUSE_CNT2: TRzDBEdit
      Left = 126
      Top = 330
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'SP_HOUSE_CNT2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 35
    end
    object edtSP_HOUSE_CNT3: TRzDBEdit
      Left = 443
      Top = 330
      Width = 126
      Height = 23
      DataSource = dsMain
      DataField = 'SP_HOUSE_CNT3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 36
    end
    object edtSTAIR_TYPE: TRzDBEdit
      Left = 678
      Top = 330
      Width = 164
      Height = 23
      DataSource = dsMain
      DataField = 'STAIR_TYPE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 37
    end
    object edtDIRECTION: TRzDBEdit
      Left = 126
      Top = 352
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'DIRECTION'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 38
    end
    object edtPYN_TYPE: TRzDBEdit
      Left = 443
      Top = 352
      Width = 126
      Height = 23
      DataSource = dsMain
      DataField = 'PYN_TYPE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 39
    end
    object edtDOUBLE_FLAG: TcxDBImageComboBox
      Left = 677
      Top = 350
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'DOUBLE_FLAG'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = #48373#52789
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #45800#52789
          Value = '2'
        end>
      TabOrder = 40
      Height = 26
      Width = 166
    end
    object edtTOT_ROOM_CNT: TcxDBCurrencyEdit
      Left = 125
      Top = 373
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'tot_room_cnt'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 41
      Height = 25
      Width = 152
    end
    object edtPARK_PER_HOUSE: TcxDBCurrencyEdit
      Left = 125
      Top = 395
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'PARK_PER_HOUSE'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 42
      Height = 25
      Width = 152
    end
    object edtAPT_BUS_BUBWAY: TRzDBEdit
      Left = 443
      Top = 396
      Width = 126
      Height = 23
      DataSource = dsMain
      DataField = 'APT_BUS_BUBWAY'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 43
    end
    object edtAPT_SCHOOL: TRzDBEdit
      Left = 678
      Top = 396
      Width = 163
      Height = 23
      DataSource = dsMain
      DataField = 'APT_SCHOOL'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 44
    end
    object edtAPT_NEAR: TRzDBEdit
      Left = 126
      Top = 417
      Width = 150
      Height = 25
      DataSource = dsMain
      DataField = 'APT_NEAR'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 45
    end
    object edtAPT_SURROUND: TRzDBEdit
      Left = 443
      Top = 417
      Width = 126
      Height = 25
      DataSource = dsMain
      DataField = 'APT_SURROUND'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 46
    end
    object edtRNT_HOUSE_CNT: TcxDBCurrencyEdit
      Left = 677
      Top = 417
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'RNT_HOUSE_CNT'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 47
      Height = 25
      Width = 165
    end
    object edtDONG_OFFICE: TRzDBEdit
      Left = 126
      Top = 439
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'DONG_OFFICE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 48
    end
    object edtHOST_NAME1: TRzDBEdit
      Left = 443
      Top = 439
      Width = 126
      Height = 23
      DataSource = dsMain
      DataField = 'HOST_NAME1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 49
    end
    object edtHOST_NAME2: TRzDBEdit
      Left = 678
      Top = 439
      Width = 163
      Height = 23
      DataSource = dsMain
      DataField = 'HOST_NAME2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 50
    end
    object edtHOST_NAME3: TRzDBEdit
      Left = 126
      Top = 461
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'HOST_NAME3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 51
    end
    object edtENTER_DATE1: TRzDBDateTimeEdit
      Tag = 1
      Left = 443
      Top = 460
      Width = 126
      Height = 24
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'ENTER_DATE1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 52
      EditType = etDate
    end
    object edtENTER_DATE2: TRzDBDateTimeEdit
      Tag = 1
      Left = 678
      Top = 460
      Width = 164
      Height = 24
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'ENTER_DATE2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 53
      EditType = etDate
    end
    object edtENTER_DATE3: TRzDBDateTimeEdit
      Tag = 1
      Left = 126
      Top = 482
      Width = 150
      Height = 24
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'ENTER_DATE3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 54
      EditType = etDate
    end
    object edtCONFIRM_DATE1: TRzDBDateTimeEdit
      Tag = 1
      Left = 443
      Top = 482
      Width = 126
      Height = 24
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'CONFIRM_DATE1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 55
      EditType = etDate
    end
    object edtCONFIRM_DATE2: TRzDBDateTimeEdit
      Tag = 1
      Left = 678
      Top = 483
      Width = 164
      Height = 23
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'CONFIRM_DATE2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 56
      EditType = etDate
    end
    object edtCONFIRM_DATE3: TRzDBDateTimeEdit
      Tag = 1
      Left = 126
      Top = 504
      Width = 150
      Height = 25
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'CONFIRM_DATE3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 57
      EditType = etDate
    end
    object edtIM_BOAMT1: TcxDBCurrencyEdit
      Left = 125
      Top = 527
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'IM_BOAMT1'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 58
      Height = 25
      Width = 150
    end
    object edtIM_BOAMT2: TcxDBCurrencyEdit
      Left = 440
      Top = 526
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'IM_BOAMT2'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 59
      Height = 25
      Width = 130
    end
    object edtIM_BOAMT3: TcxDBCurrencyEdit
      Left = 677
      Top = 527
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'IM_BOAMT3'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 60
      Height = 25
      Width = 161
    end
    object edtWOLSE1: TcxDBCurrencyEdit
      Left = 125
      Top = 548
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'WOLSE1'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 61
      Height = 25
      Width = 150
    end
    object edtWOLSE2: TcxDBCurrencyEdit
      Left = 440
      Top = 548
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'WOLSE2'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 62
      Height = 25
      Width = 130
    end
    object edtWOLSE3: TcxDBCurrencyEdit
      Left = 677
      Top = 547
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'WOLSE3'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 63
      Height = 26
      Width = 161
    end
    object edtIMCHA1: TRzDBEdit
      Left = 126
      Top = 571
      Width = 711
      Height = 23
      DataSource = dsMain
      DataField = 'IMCHA1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 64
    end
    object edtIMCHA2: TRzDBEdit
      Left = 126
      Top = 592
      Width = 711
      Height = 23
      DataSource = dsMain
      DataField = 'IMCHA2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 65
    end
    object edtIMCHA3: TRzDBEdit
      Left = 126
      Top = 614
      Width = 711
      Height = 23
      DataSource = dsMain
      DataField = 'IMCHA3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 66
    end
    object edtBIGO1: TRzDBEdit
      Left = 126
      Top = 636
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'BIGO1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 67
    end
    object edtBIGO2: TRzDBEdit
      Left = 443
      Top = 636
      Width = 124
      Height = 23
      DataSource = dsMain
      DataField = 'BIGO2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 68
    end
    object edtBIGO3: TRzDBEdit
      Left = 671
      Top = 636
      Width = 166
      Height = 23
      DataSource = dsMain
      DataField = 'BIGO3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 69
    end
    object edtLEASE_CMNT1: TRzDBEdit
      Left = 126
      Top = 658
      Width = 150
      Height = 23
      DataSource = dsMain
      DataField = 'LEASE_CMNT1'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 70
    end
    object edtLEASE_CMNT2: TRzDBEdit
      Left = 443
      Top = 658
      Width = 124
      Height = 23
      DataSource = dsMain
      DataField = 'LEASE_CMNT2'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 71
    end
    object edtLEASE_CMNT3: TRzDBEdit
      Left = 671
      Top = 658
      Width = 166
      Height = 23
      DataSource = dsMain
      DataField = 'LEASE_CMNT3'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 72
    end
    object edtVLU_BAS_DATE: TRzDBDateTimeEdit
      Tag = 1
      Left = 126
      Top = 679
      Width = 150
      Height = 24
      Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
      DataSource = dsMain
      DataField = 'VLU_BAS_DATE'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 73
      EditType = etDate
    end
    object edtVLU_INVST_REM: TcxDBMemo
      Left = 125
      Top = 701
      MoveEnter = True
      DataBinding.DataField = 'VLU_INVST_REM'
      DataBinding.DataSource = dsMain
      Properties.MaxLength = 600
      Properties.ScrollBars = ssVertical
      TabOrder = 74
      Height = 50
      Width = 713
    end
    object cbMUl_Jong: TcxDBImageComboBox
      Left = 153
      Top = 45
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'MUL_JONG'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = #50500#54028#53944
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #50672#47549
          Value = '2'
        end
        item
          Description = #45796#49464#45824
          Value = '3'
        end
        item
          Description = #45800#46021#51452#53469
          Value = '4'
        end
        item
          Description = #45432#51064#48373#51648#51452#53469'('#49892#48260#51452#53469')'
          Value = '5'
        end
        item
          Description = #44592#53440
          Value = '9'
        end>
      TabOrder = 75
      Height = 25
      Width = 122
    end
    object RzDBEdit1: TRzDBEdit
      Left = 178
      Top = 134
      Width = 37
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_SIDO'
      DisabledColor = clSilver
      Enabled = False
      FocusColor = clBtnFace
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 76
    end
    object RzDBEdit2: TRzDBEdit
      Left = 214
      Top = 134
      Width = 37
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_GUSIGUN'
      DisabledColor = clSilver
      Enabled = False
      FocusColor = clBtnFace
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 77
    end
    object RzDBEdit3: TRzDBEdit
      Left = 250
      Top = 134
      Width = 37
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_YUBMYEN'
      DisabledColor = clSilver
      Enabled = False
      FocusColor = clBtnFace
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 78
    end
    object RzDBEdit4: TRzDBEdit
      Left = 286
      Top = 134
      Width = 37
      Height = 23
      DataSource = dsMain
      DataField = 'SOJAE_DONGRI'
      DisabledColor = clSilver
      Enabled = False
      FocusColor = clBtnFace
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 79
    end
    object edtSELL_UPPER: TcxDBCurrencyEdit
      Left = 1013
      Top = 60
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SELL_UPPER'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 80
      Height = 25
      Width = 127
    end
    object edtSELL_LOWER: TcxDBCurrencyEdit
      Left = 1214
      Top = 60
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SELL_LOWER'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 81
      Height = 25
      Width = 149
    end
    object edtRENT_UPPER: TcxDBCurrencyEdit
      Left = 1013
      Top = 82
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'RENT_UPPER'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 82
      Height = 25
      Width = 127
    end
    object edtRENT_LOWER: TcxDBCurrencyEdit
      Left = 1214
      Top = 82
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'RENT_LOWER'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 83
      Height = 25
      Width = 149
    end
    object edtGUJO: TRzDBEdit
      Left = 1014
      Top = 105
      Width = 125
      Height = 23
      DataSource = dsMain
      DataField = 'GUJO'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 84
    end
    object edtYONGDO: TRzDBEdit
      Left = 1215
      Top = 105
      Width = 147
      Height = 23
      DataSource = dsMain
      DataField = 'YONGDO'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 85
    end
    object edtELEV_YN: TcxDBImageComboBox
      Left = 1013
      Top = 126
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'ELEV_YN'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = 'Y'
          ImageIndex = 0
          Value = 'Y'
        end
        item
          Description = 'N'
          Value = 'N'
        end>
      TabOrder = 86
      Height = 25
      Width = 127
    end
    object edtBLD_STAT: TcxDBImageComboBox
      Left = 1214
      Top = 126
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'BLD_STAT'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = #49345
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #51473
          Value = '2'
        end
        item
          Description = #54616
          Value = '3'
        end>
      TabOrder = 87
      Height = 25
      Width = 149
    end
    object edtMULGUN_GUBUN: TcxDBImageComboBox
      Left = 1013
      Top = 148
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'MULGUN_GUBUN'
      DataBinding.DataSource = dsMain
      Properties.Items = <
        item
          Description = #50672#47549'/'#45796#49464#45824
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = #50500#54028#53944
          Value = '2'
        end
        item
          Description = #51452#49345#48373#54633
          Value = '3'
        end
        item
          Description = #50724#54588#49828#53588
          Value = '4'
        end>
      TabOrder = 88
      Height = 25
      Width = 127
    end
    object edtDSC: TcxDBMemo
      Left = 1013
      Top = 170
      MoveEnter = True
      DataBinding.DataField = 'DSC'
      DataBinding.DataSource = dsMain
      Properties.MaxLength = 500
      Properties.ScrollBars = ssVertical
      TabOrder = 89
      Height = 51
      Width = 355
    end
    object edtVRTL_ACC_ORG_CD: TRzDBEdit
      Left = 1014
      Top = 219
      Width = 70
      Height = 23
      DataSource = dsMain
      DataField = 'VRTL_ACC_ORG_CD'
      DisabledColor = clWindow
      Enabled = False
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 90
    end
    object edtVRTL_ACC_NO: TRzDBEdit
      Left = 1014
      Top = 241
      Width = 353
      Height = 23
      DataSource = dsMain
      DataField = 'VRTL_ACC_NO'
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 91
    end
    object edtVRTL_ACC_CUST_NM: TRzDBEdit
      Left = 1014
      Top = 263
      Width = 353
      Height = 23
      DataSource = dsMain
      DataField = 'VRTL_ACC_CUST_NM'
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 92
    end
    object edtVALID_STRT_DY: TRzDBDateTimeEdit
      Tag = 1
      Left = 1014
      Top = 285
      Width = 109
      Height = 23
      HelpType = htKeyword
      DataSource = dsMain
      DataField = 'VALID_STRT_DY'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 93
      EditType = etDate
    end
    object edtVALID_END_DY: TRzDBDateTimeEdit
      Tag = 1
      Left = 1265
      Top = 285
      Width = 102
      Height = 23
      HelpType = htKeyword
      DataSource = dsMain
      DataField = 'VALID_END_DY'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 94
      EditType = etDate
    end
    object edtTRNSFER_AMT: TcxDBCurrencyEdit
      Left = 1013
      Top = 306
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TRNSFER_AMT'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 95
      Height = 25
      Width = 355
    end
    object msg: TcxMemo
      Left = 879
      Top = 488
      Properties.ScrollBars = ssBoth
      TabOrder = 96
      Height = 305
      Width = 321
    end
    object LubVRTL_ACC_ORG_CD: TcxDBLookupComboBox
      Tag = 1
      Left = 1082
      Top = 218
      Hint = #54217#44032#47785#51201#51012' '#49440#53469#54616#50668' '#51077#47141#54633#45768#45796'.'
      HelpType = htKeyword
      HelpKeyword = #54217#44032#47785#51201#51012' '#49440#53469#54644' '#51452#49464#50836'.'
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'vrtl_acc_org_cd'
      DataBinding.DataSource = dsMain
      ImeName = 'Microsoft IME 2003'
      Properties.ImeName = 'Microsoft IME 2003'
      Properties.KeyFieldNames = 'Code'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dsBankP
      Properties.MaxLength = 40
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 97
      Height = 25
      Width = 286
    end
    object Edt_Bigo: TcxDBMemo
      Left = 883
      Top = 392
      DataBinding.DataField = 'Bigo'
      DataBinding.DataSource = dsPMain
      Properties.ScrollBars = ssBoth
      TabOrder = 98
      Height = 89
      Width = 361
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 1013
      Top = 348
      AutoSize = False
      DataBinding.DataField = 'charge'
      DataBinding.DataSource = dsPMain
      ImeMode = imSHanguel
      Properties.ImeMode = imSHanguel
      TabOrder = 99
      Height = 25
      Width = 223
    end
  end
  object RzFC: TRzFrameController
    DisabledColor = clWindow
    FlatButtons = False
    FrameHotStyle = fsFlat
    FrameHotTrack = True
    FrameVisible = True
    Left = 1247
    Top = 28
  end
  object dsMain: TDataSource
    DataSet = qryMain
    OnStateChange = dsMainStateChange
    Left = 1127
    Top = 28
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 1000
    Top = 64
    object aSave: TAction
      Caption = 'aSave'
      OnExecute = aSaveExecute
    end
    object aEdit: TAction
      Caption = 'aEdit'
      OnExecute = aEditExecute
    end
    object aSendHF: TAction
      Caption = 'aSendHF'
      OnExecute = aSendHFExecute
    end
    object aFindaddr: TAction
      Caption = 'aFindaddr'
      OnExecute = aFindaddrExecute
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    Left = 1183
    Top = 28
  end
  object od: TOpenDialog
    Filter = '*.pdf|*.pdf'
    Left = 639
    Top = 176
  end
  object IdHTTP1: TIdHTTP
    OnWork = IdHTTP1Work
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 819
    Top = 180
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 735
    Top = 196
  end
  object qryPDF: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'Almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Params = <>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 1200
    Top = 72
  end
  object qrybankp: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_bankp')
    Params = <>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftInteger
      end
      item
        Name = 'Code'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 691
    Top = 180
    object IntegerField1: TIntegerField
      FieldName = 'Seq'
      Origin = 'HF_BankP.Seq'
    end
    object StringField1: TStringField
      FieldName = 'Code'
      Origin = 'HF_BankP.Code'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'Name'
      Origin = 'HF_BankP.Name'
      Size = 100
    end
  end
  object dsBankP: TDataSource
    DataSet = qrybankp
    Left = 791
    Top = 200
  end
  object qryMain: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_P_Yak 15, '#39'123455'#39' ')
    Params = <>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftLargeint
      end
      item
        Name = 'P_Receipt_Seq'
        DataType = ftLargeint
      end
      item
        Name = 'DAMBO_NO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CTRL_NO_YEAR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GAM_GUBUN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOC_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'MUL_JONG'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'GAMJUNG_RYO'
        DataType = ftCurrency
      end
      item
        Name = 'PYUNG_SUSURYO'
        DataType = ftCurrency
      end
      item
        Name = 'PYUNG_SILBI'
        DataType = ftCurrency
      end
      item
        Name = 'PYUNG_BUGA'
        DataType = ftCurrency
      end
      item
        Name = 'CANCEL_YN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANCEL_REASON'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DAMBO_BAS_VLU_KOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DAMBO_BAS_VLU_NUM'
        DataType = ftCurrency
      end
      item
        Name = 'SOJAE_SIDO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SOJAE_GUSIGUN'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SOJAE_YUBMYEN'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SOJAE_DONGRI'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SOJAE_BUNJIGB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SOJAE_ADDR_BONBUN'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SOJAE_ADDR_BUBUN'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SOJAE_GUNMULNM'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SOJAE_DONGNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SOJAE_HONO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BUILDING_AREA'
        DataType = ftFloat
      end
      item
        Name = 'EXCLUSIVE_M2'
        DataType = ftFloat
      end
      item
        Name = 'EXCLUSIVE_AREA'
        DataType = ftFloat
      end
      item
        Name = 'COMMON_M2'
        DataType = ftFloat
      end
      item
        Name = 'COMMON_AREA'
        DataType = ftFloat
      end
      item
        Name = 'LAND_AREA'
        DataType = ftFloat
      end
      item
        Name = 'FLOOR_CNT'
        DataType = ftInteger
      end
      item
        Name = 'INNER_STRUCTIURE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'HEAT_TYPE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TOT_HOUSE_CNT'
        DataType = ftInteger
      end
      item
        Name = 'TOT_DONG_CNT'
        DataType = ftInteger
      end
      item
        Name = 'COMPLETE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'TOT_FLOOR'
        DataType = ftInteger
      end
      item
        Name = 'STRUCTURE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SP_HOUSE_CNT1'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SP_HOUSE_CNT2'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SP_HOUSE_CNT3'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'STAIR_TYPE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DIRECTION'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PYN_TYPE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DOUBLE_FLAG'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TOT_ROOM_CNT'
        DataType = ftInteger
      end
      item
        Name = 'PARK_PER_HOUSE'
        DataType = ftInteger
      end
      item
        Name = 'APT_BUS_BUBWAY'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'APT_SCHOOL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'APT_NEAR'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'APT_SURROUND'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'RNT_HOUSE_CNT'
        DataType = ftInteger
      end
      item
        Name = 'DONG_OFFICE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HOST_NAME1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HOST_NAME2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HOST_NAME3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENTER_DATE1'
        DataType = ftDateTime
      end
      item
        Name = 'ENTER_DATE2'
        DataType = ftDateTime
      end
      item
        Name = 'ENTER_DATE3'
        DataType = ftDateTime
      end
      item
        Name = 'CONFIRM_DATE1'
        DataType = ftDateTime
      end
      item
        Name = 'CONFIRM_DATE2'
        DataType = ftDateTime
      end
      item
        Name = 'CONFIRM_DATE3'
        DataType = ftDateTime
      end
      item
        Name = 'IM_BOAMT1'
        DataType = ftCurrency
      end
      item
        Name = 'IM_BOAMT2'
        DataType = ftCurrency
      end
      item
        Name = 'IM_BOAMT3'
        DataType = ftCurrency
      end
      item
        Name = 'WOLSE1'
        DataType = ftCurrency
      end
      item
        Name = 'WOLSE2'
        DataType = ftCurrency
      end
      item
        Name = 'WOLSE3'
        DataType = ftCurrency
      end
      item
        Name = 'IMCHA1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'IMCHA2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'IMCHA3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BIGO1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BIGO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BIGO3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LEASE_CMNT1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LEASE_CMNT2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LEASE_CMNT3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VLU_BAS_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'VLU_INVST_REM'
        DataType = ftString
        Size = 600
      end
      item
        Name = 'SELL_UPPER'
        DataType = ftCurrency
      end
      item
        Name = 'SELL_LOWER'
        DataType = ftCurrency
      end
      item
        Name = 'RENT_UPPER'
        DataType = ftCurrency
      end
      item
        Name = 'RENT_LOWER'
        DataType = ftCurrency
      end
      item
        Name = 'GUJO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'YONGDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ELEV_YN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BLD_STAT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MULGUN_GUBUN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DSC'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'VRTL_ACC_ORG_CD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VRTL_ACC_NO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VRTL_ACC_CUST_NM'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALID_STRT_DY'
        DataType = ftDateTime
      end
      item
        Name = 'VALID_END_DY'
        DataType = ftDateTime
      end
      item
        Name = 'TRNSFER_AMT'
        DataType = ftCurrency
      end
      item
        Name = 'DUMMY'
        DataType = ftString
        Size = 49
      end
      item
        Name = 'InUserSeq'
        DataType = ftInteger
      end
      item
        Name = 'InUser'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'InUserOffice'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'InUserHostName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'InUserIP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InDate'
        DataType = ftDateTime
      end
      item
        Name = 'PDF'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'MasterID'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 1087
    Top = 36
    object qryMainSeq: TLargeintField
      FieldName = 'Seq'
    end
    object qryMainP_Receipt_Seq: TLargeintField
      FieldName = 'P_Receipt_Seq'
    end
    object qryMainDAMBO_NO: TStringField
      FieldName = 'DAMBO_NO'
      Size = 10
    end
    object qryMainCTRL_NO_YEAR: TStringField
      FieldName = 'CTRL_NO_YEAR'
      Size = 15
    end
    object qryMainGAM_GUBUN: TStringField
      FieldName = 'GAM_GUBUN'
      Size = 1
    end
    object qryMainDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object qryMainMUL_JONG: TStringField
      FieldName = 'MUL_JONG'
      Size = 2
    end
    object qryMainGAMJUNG_RYO: TCurrencyField
      FieldName = 'GAMJUNG_RYO'
    end
    object qryMainPYUNG_SUSURYO: TCurrencyField
      FieldName = 'PYUNG_SUSURYO'
    end
    object qryMainPYUNG_SILBI: TCurrencyField
      FieldName = 'PYUNG_SILBI'
    end
    object qryMainPYUNG_BUGA: TCurrencyField
      FieldName = 'PYUNG_BUGA'
    end
    object qryMainCANCEL_YN: TStringField
      FieldName = 'CANCEL_YN'
      Size = 1
    end
    object qryMainCANCEL_REASON: TStringField
      FieldName = 'CANCEL_REASON'
      Size = 50
    end
    object qryMainDAMBO_BAS_VLU_KOR: TStringField
      FieldName = 'DAMBO_BAS_VLU_KOR'
      Size = 30
    end
    object qryMainDAMBO_BAS_VLU_NUM: TCurrencyField
      FieldName = 'DAMBO_BAS_VLU_NUM'
    end
    object qryMainSOJAE_SIDO: TStringField
      FieldName = 'SOJAE_SIDO'
      Size = 2
    end
    object qryMainSOJAE_GUSIGUN: TStringField
      FieldName = 'SOJAE_GUSIGUN'
      Size = 3
    end
    object qryMainSOJAE_YUBMYEN: TStringField
      FieldName = 'SOJAE_YUBMYEN'
      Size = 3
    end
    object qryMainSOJAE_DONGRI: TStringField
      FieldName = 'SOJAE_DONGRI'
      Size = 2
    end
    object qryMainSOJAE_BUNJIGB: TStringField
      FieldName = 'SOJAE_BUNJIGB'
      Size = 2
    end
    object qryMainSOJAE_ADDR_BONBUN: TStringField
      FieldName = 'SOJAE_ADDR_BONBUN'
      Size = 4
    end
    object qryMainSOJAE_ADDR_BUBUN: TStringField
      FieldName = 'SOJAE_ADDR_BUBUN'
      Size = 4
    end
    object qryMainSOJAE_GUNMULNM: TStringField
      FieldName = 'SOJAE_GUNMULNM'
      Size = 40
    end
    object qryMainSOJAE_DONGNO: TStringField
      FieldName = 'SOJAE_DONGNO'
    end
    object qryMainSOJAE_HONO: TStringField
      FieldName = 'SOJAE_HONO'
    end
    object qryMainBUILDING_AREA: TFloatField
      FieldName = 'BUILDING_AREA'
    end
    object qryMainEXCLUSIVE_M2: TFloatField
      FieldName = 'EXCLUSIVE_M2'
    end
    object qryMainEXCLUSIVE_AREA: TFloatField
      FieldName = 'EXCLUSIVE_AREA'
    end
    object qryMainCOMMON_M2: TFloatField
      FieldName = 'COMMON_M2'
    end
    object qryMainCOMMON_AREA: TFloatField
      FieldName = 'COMMON_AREA'
    end
    object qryMainLAND_AREA: TFloatField
      FieldName = 'LAND_AREA'
    end
    object qryMainFLOOR_CNT: TIntegerField
      FieldName = 'FLOOR_CNT'
    end
    object qryMainINNER_STRUCTIURE: TStringField
      FieldName = 'INNER_STRUCTIURE'
      Size = 10
    end
    object qryMainHEAT_TYPE: TStringField
      FieldName = 'HEAT_TYPE'
      Size = 30
    end
    object qryMainTOT_HOUSE_CNT: TIntegerField
      FieldName = 'TOT_HOUSE_CNT'
    end
    object qryMainTOT_DONG_CNT: TIntegerField
      FieldName = 'TOT_DONG_CNT'
    end
    object qryMainCOMPLETE_DATE: TDateTimeField
      FieldName = 'COMPLETE_DATE'
    end
    object qryMainTOT_FLOOR: TIntegerField
      FieldName = 'TOT_FLOOR'
    end
    object qryMainSTRUCTURE: TStringField
      FieldName = 'STRUCTURE'
      Size = 30
    end
    object qryMainSP_HOUSE_CNT1: TStringField
      FieldName = 'SP_HOUSE_CNT1'
      Size = 80
    end
    object qryMainSP_HOUSE_CNT2: TStringField
      FieldName = 'SP_HOUSE_CNT2'
      Size = 80
    end
    object qryMainSP_HOUSE_CNT3: TStringField
      FieldName = 'SP_HOUSE_CNT3'
      Size = 80
    end
    object qryMainSTAIR_TYPE: TStringField
      FieldName = 'STAIR_TYPE'
      Size = 10
    end
    object qryMainDIRECTION: TStringField
      FieldName = 'DIRECTION'
      Size = 10
    end
    object qryMainPYN_TYPE: TStringField
      FieldName = 'PYN_TYPE'
      Size = 10
    end
    object qryMainDOUBLE_FLAG: TStringField
      FieldName = 'DOUBLE_FLAG'
      Size = 1
    end
    object qryMainTOT_ROOM_CNT: TIntegerField
      FieldName = 'TOT_ROOM_CNT'
    end
    object qryMainPARK_PER_HOUSE: TIntegerField
      FieldName = 'PARK_PER_HOUSE'
    end
    object qryMainAPT_BUS_BUBWAY: TStringField
      FieldName = 'APT_BUS_BUBWAY'
      Size = 80
    end
    object qryMainAPT_SCHOOL: TStringField
      FieldName = 'APT_SCHOOL'
      Size = 80
    end
    object qryMainAPT_NEAR: TStringField
      FieldName = 'APT_NEAR'
      Size = 80
    end
    object qryMainAPT_SURROUND: TStringField
      FieldName = 'APT_SURROUND'
      Size = 80
    end
    object qryMainRNT_HOUSE_CNT: TIntegerField
      FieldName = 'RNT_HOUSE_CNT'
    end
    object qryMainDONG_OFFICE: TStringField
      FieldName = 'DONG_OFFICE'
    end
    object qryMainHOST_NAME1: TStringField
      FieldName = 'HOST_NAME1'
    end
    object qryMainHOST_NAME2: TStringField
      FieldName = 'HOST_NAME2'
    end
    object qryMainHOST_NAME3: TStringField
      FieldName = 'HOST_NAME3'
    end
    object qryMainENTER_DATE1: TDateTimeField
      FieldName = 'ENTER_DATE1'
    end
    object qryMainENTER_DATE2: TDateTimeField
      FieldName = 'ENTER_DATE2'
    end
    object qryMainENTER_DATE3: TDateTimeField
      FieldName = 'ENTER_DATE3'
    end
    object qryMainCONFIRM_DATE1: TDateTimeField
      FieldName = 'CONFIRM_DATE1'
    end
    object qryMainCONFIRM_DATE2: TDateTimeField
      FieldName = 'CONFIRM_DATE2'
    end
    object qryMainCONFIRM_DATE3: TDateTimeField
      FieldName = 'CONFIRM_DATE3'
    end
    object qryMainIM_BOAMT1: TCurrencyField
      FieldName = 'IM_BOAMT1'
    end
    object qryMainIM_BOAMT2: TCurrencyField
      FieldName = 'IM_BOAMT2'
    end
    object qryMainIM_BOAMT3: TCurrencyField
      FieldName = 'IM_BOAMT3'
    end
    object qryMainWOLSE1: TCurrencyField
      FieldName = 'WOLSE1'
    end
    object qryMainWOLSE2: TCurrencyField
      FieldName = 'WOLSE2'
    end
    object qryMainWOLSE3: TCurrencyField
      FieldName = 'WOLSE3'
    end
    object qryMainIMCHA1: TStringField
      FieldName = 'IMCHA1'
      Size = 40
    end
    object qryMainIMCHA2: TStringField
      FieldName = 'IMCHA2'
      Size = 40
    end
    object qryMainIMCHA3: TStringField
      FieldName = 'IMCHA3'
      Size = 40
    end
    object qryMainBIGO1: TStringField
      FieldName = 'BIGO1'
    end
    object qryMainBIGO2: TStringField
      FieldName = 'BIGO2'
    end
    object qryMainBIGO3: TStringField
      FieldName = 'BIGO3'
    end
    object qryMainLEASE_CMNT1: TStringField
      FieldName = 'LEASE_CMNT1'
    end
    object qryMainLEASE_CMNT2: TStringField
      FieldName = 'LEASE_CMNT2'
    end
    object qryMainLEASE_CMNT3: TStringField
      FieldName = 'LEASE_CMNT3'
    end
    object qryMainVLU_BAS_DATE: TDateTimeField
      FieldName = 'VLU_BAS_DATE'
    end
    object qryMainVLU_INVST_REM: TStringField
      FieldName = 'VLU_INVST_REM'
      Size = 600
    end
    object qryMainSELL_UPPER: TCurrencyField
      FieldName = 'SELL_UPPER'
    end
    object qryMainSELL_LOWER: TCurrencyField
      FieldName = 'SELL_LOWER'
    end
    object qryMainRENT_UPPER: TCurrencyField
      FieldName = 'RENT_UPPER'
    end
    object qryMainRENT_LOWER: TCurrencyField
      FieldName = 'RENT_LOWER'
    end
    object qryMainGUJO: TStringField
      FieldName = 'GUJO'
      Size = 25
    end
    object qryMainYONGDO: TStringField
      FieldName = 'YONGDO'
      Size = 30
    end
    object qryMainELEV_YN: TStringField
      FieldName = 'ELEV_YN'
      Size = 1
    end
    object qryMainBLD_STAT: TStringField
      FieldName = 'BLD_STAT'
      Size = 1
    end
    object qryMainMULGUN_GUBUN: TStringField
      FieldName = 'MULGUN_GUBUN'
      Size = 1
    end
    object qryMainDSC: TStringField
      FieldName = 'DSC'
      Size = 160
    end
    object qryMainVRTL_ACC_ORG_CD: TStringField
      FieldName = 'VRTL_ACC_ORG_CD'
      Size = 3
    end
    object qryMainVRTL_ACC_NO: TStringField
      FieldName = 'VRTL_ACC_NO'
      Size = 30
    end
    object qryMainVRTL_ACC_CUST_NM: TStringField
      FieldName = 'VRTL_ACC_CUST_NM'
      Size = 40
    end
    object qryMainVALID_STRT_DY: TDateTimeField
      FieldName = 'VALID_STRT_DY'
    end
    object qryMainVALID_END_DY: TDateTimeField
      FieldName = 'VALID_END_DY'
    end
    object qryMainTRNSFER_AMT: TCurrencyField
      FieldName = 'TRNSFER_AMT'
    end
    object qryMainDUMMY: TStringField
      FieldName = 'DUMMY'
      Size = 49
    end
    object qryMainInUserSeq: TIntegerField
      FieldName = 'InUserSeq'
    end
    object qryMainInUser: TStringField
      FieldName = 'InUser'
      Size = 40
    end
    object qryMainInUserOffice: TStringField
      FieldName = 'InUserOffice'
      Size = 2
    end
    object qryMainInUserHostName: TStringField
      FieldName = 'InUserHostName'
      Size = 50
    end
    object qryMainInUserIP: TStringField
      FieldName = 'InUserIP'
    end
    object qryMainInDate: TDateTimeField
      FieldName = 'InDate'
    end
    object qryMainPDF: TStringField
      FieldName = 'PDF'
      Size = 16
    end
    object qryMainMasterID: TLargeintField
      FieldName = 'MasterID'
    end
  end
  object qryLog: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Params = <>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 944
    Top = 80
  end
  object QryPMain: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_P_Receipt_Bigo 10')
    Params = <>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Seq'
        DataType = ftLargeint
      end
      item
        Name = 'bigo'
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'charge'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'workStatus'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 1231
    Top = 933
    object QryPMainSeq: TLargeintField
      FieldName = 'Seq'
    end
    object QryPMainbigo: TStringField
      FieldName = 'bigo'
      Size = 8000
    end
    object QryPMaincharge: TStringField
      FieldName = 'charge'
    end
    object QryPMainworkStatus: TStringField
      FieldName = 'workStatus'
      Size = 4
    end
  end
  object dsPMain: TDataSource
    DataSet = QryPMain
    Left = 1287
    Top = 933
  end
end
