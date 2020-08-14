object XForm1: TXForm1
  Left = 499
  Top = 102
  Width = 1106
  Height = 829
  Caption = #54620#44397#51452#53469#44552#50997#44277#49324'('#48372#44552#51088#47532')'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = XFormShow
  CaptionButtons = <>
  DLLName = 'HFedit.dll'
  InitHeight = 0
  InitWidth = 0
  PixelsPerInch = 96
  TextHeight = 15
  object pnButton: TRzPanel
    Left = 0
    Top = 0
    Width = 1745
    Height = 89
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clActiveCaption
    TabOrder = 0
    object RzLabel47: TRzLabel
      Left = 557
      Top = 18
      Width = 90
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'PDF'#52392#48512
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
      Left = 221
      Top = 5
      Width = 180
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #51077#47141' '#54596#49688' '#49324#54637#51077#45768#45796'.'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      FlatColorAdjustment = 0
    end
    object btnSave: TRzBitBtn
      Left = 225
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
      Left = 381
      Top = 32
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
      Left = 301
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
      Width = 90
      Height = 55
      Hint = #51217#49688', '#48176#51221', '#52636#51109', '#51089#49457' '#51473#50640#47564' '#51088#47308' '#51204#49569#44032#45733' '
      FrameColor = 7617536
      Action = aSendHF
      Caption = #51452#53469#44552#50997#44277#49324' '#51204#49569#51088#47308' '#51204#49569
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
      Left = 122
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
      Left = 650
      Top = 1
      Width = 359
      Height = 81
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
        Top = 10
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
        Top = 63
        Width = 355
        Height = 16
        Align = alBottom
        TabOrder = 2
      end
    end
    object btnDownPdf: TRzBitBtn
      Left = 544
      Top = 46
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
    object Button1: TButton
      Left = 560
      Top = 4
      Width = 75
      Height = 25
      Caption = 'PDFUP'
      TabOrder = 7
      Visible = False
      OnClick = Button1Click
    end
    object btn_build: TRzBitBtn
      Left = 456
      Top = 5
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
    object btn_gam: TRzBitBtn
      Left = 456
      Top = 46
      Width = 83
      Height = 42
      FrameColor = 7617536
      Caption = #44048#51221#49436#45936#51060#53552' '#44032#51256#50724#44592
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 9
      OnClick = btn_gamClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 1745
    Height = 684
    Align = alLeft
    Color = clGradientInactiveCaption
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1743
      Height = 172
      Align = alTop
      Color = clActiveCaption
      TabOrder = 0
      object cxLabel1: TRzLabel
        Left = 7
        Top = 31
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49324#51204#49900#49324#48264#54840
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 7
        Top = 74
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #52712#49548#50668#48512
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 7
        Top = 53
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51217#49688#51068#51088
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object cxLabel49: TRzLabel
        Left = 7
        Top = 118
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44048#51221#54217#44032#51068#51088
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 289
        Top = 97
        Width = 149
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49548#51116#51648#50864#54200#48264#54840
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderColor = clLime
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object RzLabel12: TRzLabel
        Left = 288
        Top = 53
        Width = 150
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #45812#48372#47932#51312#49324#51333#47448#53076#46300
        Color = clSkyBlue
        ParentColor = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderColor = clSkyBlue
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object RzLabel9: TRzLabel
        Left = 288
        Top = 119
        Width = 150
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #48277#51221#46041#53076#46300
        Color = clSkyBlue
        ParentColor = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderColor = clSkyBlue
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object cxLabel2: TRzLabel
        Left = 288
        Top = 31
        Width = 150
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51032#47280#49692#48264'('#44277#49324#44256#50976')'
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
        Left = 7
        Top = 9
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51217#49688#48264#54840
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 288
        Top = 9
        Width = 150
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44048#51221#54217#44032#49436#48264#54840
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 288
        Top = 75
        Width = 150
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44048#51221#54217#44032#49324#47749
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 555
        Top = 9
        Width = 70
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49888#52397#51064#47749
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 288
        Top = 139
        Width = 150
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = #47932#44148' '#46020#47196#47749#51452#49548' '#44256#50976#48264#54840
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
        Left = 7
        Top = 96
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51312#54924#44208#44284#51316#51116#50976#47924
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
        Left = 7
        Top = 140
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #47932#44148' '#51452#49548' '#44396#48516' '#53076#46300
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 712
        Top = 8
        Width = 131
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #54217#44032#45812#45817#51088' '#49457#47749
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
        Left = 712
        Top = 30
        Width = 131
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #54217#44032#45812#45817#51088' '#51204#54868#48264#54840
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
      object RzLabel54: TRzLabel
        Left = 715
        Top = 52
        Width = 128
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44048#51221#54217#44032#53945#51060#49324#54637
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
      object RzLabel58: TRzLabel
        Left = 713
        Top = 73
        Width = 338
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #48708#44256'('#48277#51064#49324#50857')'
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
      object RzDBEdit2: TRzDBEdit
        Tag = 1
        Left = 437
        Top = 52
        Width = 18
        Height = 23
        Hint = #54217#44032#47785#51201#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #54217#44032#47785#51201#53076#46300#47484' '#51077#47141#54616#49464#50836'.'
        DataSource = dsMain
        DataField = 'mort_rsrch_kind_cd'
        AutoSize = False
        Enabled = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 0
      end
      object edt_acpt_no: TRzDBEdit
        Left = 170
        Top = 9
        Width = 120
        Height = 23
        DataSource = dsMain
        DataField = 'acpt_no'
        AutoSize = False
        DisabledColor = clWindow
        Enabled = False
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOnEnter = True
        TabOrder = 1
      end
      object Edt_judge_assess_sht_no: TRzDBEdit
        Left = 437
        Top = 9
        Width = 119
        Height = 23
        Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'judge_assess_sht_no'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 2
      end
      object edt_applcant_nm: TRzDBEdit
        Left = 624
        Top = 9
        Width = 92
        Height = 23
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#53441#49345#44048#51221#51060' '#51080#51012#44221#50864' '#53441#49345#44048#51221#51221#48372#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMain
        DataField = 'applcant_nm'
        AutoSize = False
        DisabledColor = clWindow
        Enabled = False
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 3
      end
      object Edt_co_prev_insp_no: TRzDBEdit
        Left = 170
        Top = 30
        Width = 120
        Height = 23
        DataSource = dsMain
        DataField = 'co_prev_insp_no'
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
      object edt_seq: TRzDBEdit
        Left = 437
        Top = 31
        Width = 279
        Height = 23
        DataSource = dsMain
        DataField = 'seq'
        Enabled = False
        FrameController = RzFC
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOnEnter = True
        TabOrder = 5
      end
      object edt_cancel_yn: TRzDBEdit
        Left = 170
        Top = 73
        Width = 43
        Height = 23
        DataSource = dsMain
        DataField = 'cancel_yn'
        Enabled = False
        FrameController = RzFC
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOnEnter = True
        TabOrder = 6
      end
      object Edt_acpt_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 170
        Top = 52
        Width = 120
        Height = 23
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'acpt_dy'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 7
        EditType = etDate
      end
      object lub_mort_rsrch_kind_cd: TcxDBLookupComboBox
        Tag = 1
        Left = 454
        Top = 52
        HelpType = htKeyword
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'mort_rsrch_kind_cd'
        DataBinding.DataSource = dsMain
        ImeName = 'Microsoft IME 2003'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ImeName = 'Microsoft IME 2003'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = dsHFjosakind
        Properties.MaxLength = 40
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 8
        Height = 24
        Width = 262
      end
      object edt_judge_assess_co_nm: TRzDBEdit
        Left = 437
        Top = 74
        Width = 278
        Height = 23
        Hint = #51032#47280#52376#51032' '#51032#47280#54620' '#45812#45817#51088' '#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'judge_assess_co_nm'
        AutoSelect = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 9
      end
      object edt_inqry_rslt_exist_yn: TRzDBEdit
        Left = 170
        Top = 95
        Width = 120
        Height = 24
        Hint = #51032#47280#44148#51032' '#49548#50976#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'inqry_rslt_exist_yn'
        AutoSize = False
        DisabledColor = clWindow
        Enabled = False
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 10
      end
      object edt_mort_zip_cd: TRzDBEdit
        Left = 437
        Top = 96
        Width = 278
        Height = 24
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'mort_zip_cd'
        AutoSize = False
        DisabledColor = clWindow
        Enabled = False
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 11
      end
      object Edt_judge_assess_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 170
        Top = 118
        Width = 120
        Height = 23
        HelpType = htKeyword
        DataSource = dsMain
        DataField = 'judge_assess_dy'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 12
        EditType = etDate
      end
      object edt_lawco_dong: TRzDBEdit
        Left = 437
        Top = 119
        Width = 278
        Height = 23
        DataSource = dsMain
        DataField = 'lawco_dong_cd'
        AutoSize = False
        DisabledColor = clWindow
        Enabled = False
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 13
      end
      object edt_mort_st_stnm: TRzDBEdit
        Left = 437
        Top = 140
        Width = 278
        Height = 23
        DataSource = dsMain
        DataField = 'mort_st_stnm_addr_cd'
        Enabled = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 14
      end
      object edt_mort_addr_kind: TcxDBImageComboBox
        Left = 169
        Top = 139
        AutoSize = False
        DataBinding.DataField = 'mort_addr_kind_dvcd'
        DataBinding.DataSource = dsMain
        Enabled = False
        Properties.Items = <
          item
            Description = #51648#48264#51452#49548
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = #46020#47196#47749#51452#49548
            Value = '2'
          end>
        TabOrder = 15
        Height = 25
        Width = 122
      end
      object cb_cancel_yn: TcxDBImageComboBox
        Left = 211
        Top = 73
        AutoSize = False
        DataBinding.DataField = 'cancel_yn'
        DataBinding.DataSource = dsMain
        Enabled = False
        Properties.Items = <
          item
            Description = #51032#47280#52712#49548
            ImageIndex = 0
            Value = 'Y'
          end
          item
            Description = #51032#47280#50836#52397
            Value = 'N'
          end
          item
            Description = #44208#44284#51116#50836#52397
            Value = 'R'
          end>
        TabOrder = 16
        Height = 24
        Width = 78
      end
      object edtFstatusUsr: TRzDBEdit
        Left = 842
        Top = 8
        Width = 209
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMain
        DataField = 'FstatusUsr'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 17
        OnKeyDown = edtFstatusUsrKeyDown
      end
      object edtFstatusNo: TRzDBEdit
        Left = 842
        Top = 30
        Width = 209
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMain
        DataField = 'FstatusNo'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 18
        OnKeyPress = edtFstatusNoKeyPress
      end
      object edtprogress_note: TRzDBEdit
        Left = 842
        Top = 51
        Width = 209
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMain
        DataField = 'progress_note'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 19
      end
      object Edt_Bigo: TcxDBMemo
        Left = 713
        Top = 94
        DataBinding.DataField = 'Bigo'
        DataBinding.DataSource = dsMain
        Properties.ScrollBars = ssBoth
        TabOrder = 20
        Height = 70
        Width = 339
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 173
      Width = 1743
      Height = 510
      Align = alClient
      Color = clActiveCaption
      TabOrder = 1
      object RzLabel7: TRzLabel
        Left = 12
        Top = 9
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49548#51116#51648#50864#54200#48264#54840#51452#49548
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderColor = clSkyBlue
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object RzLabel19: TRzLabel
        Left = 293
        Top = 53
        Width = 117
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #51452#53469#50976#54805#53076#46300
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 52
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49548#50976#51088#49457#47749
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 31
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #47932#44148' '#46020#47196#47749#51452#49548' '#49345#49464#51452#49548
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
      object RzLabel8: TRzLabel
        Left = 293
        Top = 118
        Width = 117
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51204#50857#47732#51201
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 118
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #53664#51648#44048#51221#44032
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
        Left = 293
        Top = 101
        Width = 117
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = #49345#44032#45812#48372#54217#44032#44552#50529
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 74
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #45812#48372#44592#52488#44032#50529
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 96
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51452#53469#45812#48372#54217#44032#44552#50529
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 140
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44592#53440#51204#50857#47732#51201'('#51452#53469#48512#48516' '#50808')'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 294
        Top = 140
        Width = 116
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #48516#50577#47732#51201
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 294
        Top = 76
        Width = 117
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Caption = #44048#51221#54217#44032#44552#50529
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 501
        Top = 184
        Width = 85
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51452#50836#44396#51312
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 293
        Top = 162
        Width = 118
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = #48516#50577#45817#49884#48169#49688
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 161
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #48516#50577#54217#54805
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 205
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #52509#49464#45824#49688
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 293
        Top = 205
        Width = 117
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #45800#51648#45236#52509#46041#49688
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 293
        Top = 183
        Width = 117
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = '1'#46041#51032#52509#52789#49688
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 501
        Top = 162
        Width = 85
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #45824#51648#44428#51648#48516
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object RzLabel33: TRzLabel
        Left = 12
        Top = 183
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49324#50857#49849#51064#45380#46020
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 501
        Top = 205
        Width = 85
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51456#44277#44160#49324#51068
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 227
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #45212#48169#48169#49885
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 248
        Width = 165
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = #48516#50577#44228#50557#51068
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 502
        Top = 227
        Width = 84
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = #47588#47588#54616#54620#44032
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 294
        Top = 227
        Width = 116
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #47588#47588#49345#54620#44032
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 294
        Top = 249
        Width = 116
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51312#49324#49884#51216
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 271
        Width = 164
        Height = 79
        Alignment = taCenter
        AutoSize = False
        Caption = #44048#51221#54217#44032#51032#44204
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object RzLabel40: TRzLabel
        Left = 527
        Top = 348
        Width = 90
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #52636#51109#50668#48708
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 349
        Width = 164
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #51089#49457#51068#51088
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 294
        Top = 370
        Width = 116
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Caption = #44592#52488#49688#49688#47308
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 294
        Top = 348
        Width = 116
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #53945#48324#50857#50669#48708
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 527
        Top = 372
        Width = 90
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Caption = #48512#44032#44032#52824#49464
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 397
        Width = 164
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #47588#52636#52509#50529
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
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
        Left = 12
        Top = 373
        Width = 164
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #47588#52636#44552#50529
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object cxLabel76: TRzLabel
        Left = 25
        Top = 546
        Width = 146
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51452#53469#44552#50997#44277#49324' '#44256#44061#48264#54840
        Color = clLime
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
      object RzLabel16: TRzLabel
        Left = 293
        Top = 479
        Width = 115
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = #44552#50529'('#44032#49345#44228#51340')'
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
        Left = 12
        Top = 480
        Width = 164
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #47564#47308#51068#51088
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
        Left = 528
        Top = 434
        Width = 90
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #50696#44552#51452
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
        Left = 294
        Top = 434
        Width = 114
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44032#49345#44228#51340#48156#44553#49692#48264
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
        Left = 293
        Top = 456
        Width = 114
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = #48156#44553#51068#51088
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
        Left = 12
        Top = 456
        Width = 164
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #44552#50997#44592#44288#53076#46300'('#44032#49345#44228#51340')'
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
        Left = 12
        Top = 434
        Width = 164
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
      object RzLabel55: TRzLabel
        Left = 45
        Top = 590
        Width = 146
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #51032#47280#49692#48264'('#44277#49324#44256#50976')'
        Color = clLime
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
      object RzLabel56: TRzLabel
        Left = 21
        Top = 510
        Width = 146
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #45812#48372#47932#51312#49324#51333#47448#53076#46300
        Color = clLime
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
      object Label1: TLabel
        Left = 724
        Top = 300
        Width = 190
        Height = 15
        Caption = '* '#44048#51221#54217#44032#51032#44204#51008'  '#52572#45824' 500'#51088' '#51060#45236
      end
      object RzLabel6: TRzLabel
        Left = 12
        Top = 31
        Width = 165
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49548#51116#51648#49345#49464#51452#49548
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        BorderOuter = fsFlat
        BorderColor = clSkyBlue
        BorderHighlight = clWhite
        BorderShadow = 13290186
        FlatColorAdjustment = 0
      end
      object btnFindAddr: TRzBitBtn
        Left = 599
        Top = 8
        Width = 122
        Height = 24
        FrameColor = 7617536
        Action = aFindaddr
        Caption = #46020#47196#47749#51452#49548#44160#49353
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
      object edt_mort_zipaddr: TRzDBEdit
        Left = 771
        Top = 329
        Width = 230
        Height = 23
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'mort_zipaddr'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 1
        Visible = False
      end
      object edt_mort_dtladdr: TRzDBEdit
        Left = 771
        Top = 351
        Width = 234
        Height = 23
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'mort_dtladdr'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 2
        Visible = False
        OnChange = edt_mort_dtladdrChange
      end
      object edt_mort_st: TRzDBEdit
        Left = 767
        Top = 389
        Width = 234
        Height = 24
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'mort_st_dtladdr'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 3
        Visible = False
        OnChange = edt_mort_stChange
      end
      object edt_own_pers_nm: TRzDBEdit
        Left = 175
        Top = 53
        Width = 120
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMain
        DataField = 'own_pers_nm'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 4
      end
      object RzDBEdit4: TRzDBEdit
        Tag = 1
        Left = 409
        Top = 53
        Width = 38
        Height = 24
        Hint = #54217#44032#47785#51201#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #54217#44032#47785#51201#53076#46300#47484' '#51077#47141#54616#49464#50836'.'
        DataSource = dsMain
        DataField = 'house_dvcd'
        AutoSize = False
        DisabledColor = clWindow
        Enabled = False
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 5
      end
      object Lub_house_dvcd: TcxDBLookupComboBox
        Tag = 1
        Left = 447
        Top = 53
        Hint = #54217#44032#47785#51201#51012' '#49440#53469#54616#50668' '#51077#47141#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #54217#44032#47785#51201#51012' '#49440#53469#54644' '#51452#49464#50836'.'
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'house_dvcd'
        DataBinding.DataSource = dsMain
        ImeName = 'Microsoft IME 2003'
        Properties.ImeName = 'Microsoft IME 2003'
        Properties.KeyFieldNames = 'Code'
        Properties.ListColumns = <
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = dsHFCategory
        Properties.MaxLength = 40
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 6
        Height = 23
        Width = 272
      end
      object edt_mort_pry_amt: TRzDBNumericEdit
        Left = 175
        Top = 74
        Width = 120
        Height = 23
        DataSource = dsMain
        DataField = 'mort_pry_amt'
        AutoSize = False
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 7
        DisplayFormat = ',0.;-,0.'
      end
      object edt_judge_assess_amt: TRzDBNumericEdit
        Left = 409
        Top = 76
        Width = 312
        Height = 27
        DataSource = dsMain
        DataField = 'judge_assess_amt'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 8
        DisplayFormat = ',0.;-,0.'
      end
      object edt_house_mort_assess_amt: TRzDBNumericEdit
        Left = 175
        Top = 96
        Width = 120
        Height = 23
        DataSource = dsMain
        DataField = 'house_mort_assess_amt'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 9
        DisplayFormat = ',0.;-,0.'
      end
      object edt_store_mort_assess_amt: TRzDBNumericEdit
        Left = 409
        Top = 100
        Width = 312
        Height = 23
        DataSource = dsMain
        DataField = 'store_mort_assess_amt'
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 10
        DisplayFormat = ',0.;-,0.'
      end
      object edt_lnd_judge_amt: TRzDBNumericEdit
        Left = 175
        Top = 118
        Width = 120
        Height = 23
        DataSource = dsMain
        DataField = 'lnd_judge_amt'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 11
        DisplayFormat = ',0.;-,0.'
      end
      object edt_divs_area: TcxDBCurrencyEdit
        Left = 408
        Top = 120
        MoveEnter = True
        DataBinding.DataField = 'divs_area'
        DataBinding.DataSource = dsMain
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.##;-,0.##'
        Properties.MaxValue = 99998.000000000000000000
        TabOrder = 12
        Width = 314
      end
      object edt_etc_apply_area: TcxDBCurrencyEdit
        Left = 174
        Top = 139
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'etc_apply_area'
        DataBinding.DataSource = dsMain
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.##;-,0.##'
        Properties.MaxValue = 99998.000000000000000000
        TabOrder = 13
        Height = 25
        Width = 122
      end
      object edt_sell_area: TcxDBCurrencyEdit
        Left = 408
        Top = 140
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'sell_area'
        DataBinding.DataSource = dsMain
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.##;-,0.##'
        Properties.MaxValue = 99998.000000000000000000
        TabOrder = 14
        Height = 24
        Width = 314
      end
      object edt_sell_ph: TcxDBCurrencyEdit
        Left = 174
        Top = 161
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'sell_ph'
        DataBinding.DataSource = dsMain
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.;-,0.'
        Properties.MaxValue = 99998.000000000000000000
        TabOrder = 15
        Height = 24
        Width = 122
      end
      object edt_sell_room_cnt: TRzDBNumericEdit
        Left = 409
        Top = 162
        Width = 94
        Height = 23
        DataSource = dsMain
        DataField = 'sell_room_cnt'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 16
        DisplayFormat = ',0.;-,0.'
      end
      object edt_lrgt_poss: TcxDBCurrencyEdit
        Left = 584
        Top = 161
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'lrgt_poss'
        DataBinding.DataSource = dsMain
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.##;-,0.##'
        Properties.MaxValue = 99998.000000000000000000
        TabOrder = 17
        Height = 25
        Width = 138
      end
      object edt_use_apprv_yr: TRzDBEdit
        Left = 175
        Top = 183
        Width = 120
        Height = 23
        Hint = #51032#47280#52376#51032' '#51032#47280#54620' '#45812#45817#51088' '#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'use_apprv_yr'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 18
      end
      object edt_bldng_tot_layer: TRzDBNumericEdit
        Left = 409
        Top = 183
        Width = 94
        Height = 23
        DataSource = dsMain
        DataField = 'bldng_tot_layer'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 19
        DisplayFormat = ',0;(,0)'
      end
      object edt_main_struct: TRzDBEdit
        Left = 585
        Top = 184
        Width = 136
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'main_struct'
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 20
      end
      object edt_heat_type: TRzDBEdit
        Left = 175
        Top = 227
        Width = 120
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'heat_type'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 21
      end
      object edt_tot_dong_cnt: TRzDBNumericEdit
        Left = 409
        Top = 205
        Width = 94
        Height = 23
        DataSource = dsMain
        DataField = 'tot_dong_cnt'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 22
        DisplayFormat = ',0.;-,0.'
      end
      object edt_cmplt_test_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 585
        Top = 204
        Width = 136
        Height = 24
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'cmplt_test_dy'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 23
        EditType = etDate
      end
      object edt_tot_house_cnt: TRzDBNumericEdit
        Left = 175
        Top = 205
        Width = 120
        Height = 23
        DataSource = dsMain
        DataField = 'tot_house_cnt'
        AutoSize = False
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 24
        DisplayFormat = ',0.;-,0.'
      end
      object edt_sale_uppper: TcxDBCurrencyEdit
        Left = 408
        Top = 226
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'sale_upper_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 25
        Height = 25
        Width = 96
      end
      object edt_sale_lower_amt: TcxDBCurrencyEdit
        Left = 584
        Top = 226
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'sale_lower_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 26
        Height = 26
        Width = 138
      end
      object edt_sell_contrct_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 175
        Top = 248
        Width = 120
        Height = 24
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'sell_contrct_dy'
        AutoSize = False
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 27
        EditType = etDate
      end
      object edt_bsrch_pnttm: TRzDBDateTimeEdit
        Tag = 1
        Left = 409
        Top = 249
        Width = 312
        Height = 23
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'bsrch_pnttm'
        AutoSize = False
        DisabledColor = clWindow
        FrameHotTrack = True
        FrameHotStyle = fsFlat
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 28
        EditType = etDate
      end
      object mm_judge_assess_opn: TcxDBMemo
        Left = 174
        Top = 270
        DataBinding.DataField = 'judge_assess_opn'
        DataBinding.DataSource = dsMain
        Properties.MaxLength = 500
        Properties.ScrollBars = ssVertical
        TabOrder = 29
        Height = 81
        Width = 548
      end
      object edt_make_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 175
        Top = 350
        Width = 120
        Height = 23
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'make_dy'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 30
        EditType = etDate
      end
      object edt_base_fee_amt: TcxDBCurrencyEdit
        Left = 408
        Top = 371
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'base_fee_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 31
        Height = 28
        Width = 121
      end
      object edt_sale_amt: TcxDBCurrencyEdit
        Left = 174
        Top = 372
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'sale_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 32
        Height = 27
        Width = 122
      end
      object edt_special_servc_amt: TcxDBCurrencyEdit
        Left = 408
        Top = 348
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'special_servc_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 33
        Height = 26
        Width = 121
      end
      object edt_tot_sale_amt: TcxDBCurrencyEdit
        Left = 174
        Top = 396
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'tot_sale_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 34
        Height = 27
        Width = 549
      end
      object edt_travel_fee_amt: TcxDBCurrencyEdit
        Left = 615
        Top = 348
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'travel_fee_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 35
        Height = 28
        Width = 108
      end
      object edt_addvalue_fee: TcxDBCurrencyEdit
        Left = 615
        Top = 372
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'addvalue_fee'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 36
        Height = 27
        Width = 108
      end
      object edt_cust_no: TRzDBEdit
        Left = 171
        Top = 546
        Width = 130
        Height = 23
        DataSource = dsMain
        DataField = 'cust_no'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 37
        Visible = False
      end
      object edt_vrtl_acc_no: TRzDBEdit
        Left = 175
        Top = 434
        Width = 120
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'vrtl_acc_no'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 38
      end
      object edt_vrtl_acc_dposit_nm: TRzDBEdit
        Left = 617
        Top = 434
        Width = 106
        Height = 23
        Hint = #51032#47280#44148#51032' '#49548#50976#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMain
        DataField = 'vrtl_acc_dposit_nm'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 39
      end
      object Lub_vrtl_acc_org_cd: TcxDBLookupComboBox
        Tag = 1
        Left = 175
        Top = 456
        HelpType = htKeyword
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'vrtl_acc_org_cd'
        DataBinding.DataSource = dsMain
        ImeName = 'Microsoft IME 2003'
        Properties.ImeName = 'Microsoft IME 2003'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = dsHFbank
        Properties.MaxLength = 40
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 40
        Height = 25
        Width = 119
      end
      object edt_vrtl_acc_new_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 407
        Top = 456
        Width = 316
        Height = 23
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'vrtl_acc_new_dy'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 41
        EditType = etDate
      end
      object edt_vrtl_acc_expire_dy: TRzDBDateTimeEdit
        Tag = 1
        Left = 175
        Top = 481
        Width = 120
        Height = 23
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMain
        DataField = 'vrtl_acc_expire_dy'
        AutoSize = False
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 42
        EditType = etDate
      end
      object edt_vrtl_acc_fee_amt: TcxDBCurrencyEdit
        Left = 406
        Top = 478
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'vrtl_acc_fee_amt'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 43
        Height = 26
        Width = 318
      end
      object edt_vrtl_acc_seq: TcxDBCurrencyEdit
        Left = 406
        Top = 433
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'vrtl_acc_seq'
        DataBinding.DataSource = dsMain
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 44
        Height = 25
        Width = 124
      end
      object edtSeq: TRzDBEdit
        Left = 192
        Top = 617
        Width = 130
        Height = 23
        DataSource = dsMain
        DataField = 'seq'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 45
        Visible = False
      end
      object edt_mort_rsrch_kind_cd: TRzDBEdit
        Left = 170
        Top = 510
        Width = 130
        Height = 23
        DataSource = dsMain
        DataField = 'mort_rsrch_kind_cd'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 46
        Visible = False
      end
      object msg: TcxMemo
        Left = 719
        Top = 9
        Properties.ScrollBars = ssBoth
        TabOrder = 47
        Visible = False
        Height = 286
        Width = 335
      end
      object edt_zipaddr: TRzEdit
        Left = 175
        Top = 9
        Width = 425
        Height = 23
        FrameController = RzFC
        TabOrder = 48
      end
      object edt_roadaddr: TRzEdit
        Left = 175
        Top = 31
        Width = 546
        Height = 23
        FrameController = RzFC
        TabOrder = 49
      end
    end
  end
  object RzFC: TRzFrameController
    DisabledColor = clWindow
    FlatButtons = False
    FrameHotStyle = fsFlat
    FrameHotTrack = True
    FrameVisible = True
    Left = 856
    Top = 712
  end
  object qryMain: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_S_APW_DH_HF_LINK 570096')
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
        Name = 'Masterid'
        DataType = ftLargeint
      end
      item
        Name = 'Apw_Master_masterid'
        DataType = ftLargeint
      end
      item
        Name = 'IsProcess'
        DataType = ftBoolean
      end
      item
        Name = 'Mgr_Code'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'co_prev_insp_no'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'seq'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cancel_yn'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'org_nm'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duty_brcd_nm'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'duty_emp_nm'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duty_tel_no'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'acpt_no'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'acpt_dy'
        DataType = ftDateTime
      end
      item
        Name = 'judge_assess_sht_no'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'judge_assess_dy'
        DataType = ftDateTime
      end
      item
        Name = 'Signer'
        DataType = ftInteger
      end
      item
        Name = 'judge_assess_co_nm'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cust_no'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'applcant_nm'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'applcant_tel_no'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'applcant_mobile'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'applcant_zip_cd'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'mort_addr_kind_dvcd'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'mort_zip_cd'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'mort_zipaddr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'mort_dtladdr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'lawco_dong_cd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'mort_st_stnm_addr_cd'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'mort_st_dtladdr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'own_pers_nm'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'house_dvcd'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'mort_rsrch_kind_cd'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'expect_judge_amt'
        DataType = ftCurrency
      end
      item
        Name = 'fee_brd_cd'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'req_dy'
        DataType = ftDateTime
      end
      item
        Name = 'repot_dlv_hope_dy'
        DataType = ftDateTime
      end
      item
        Name = 'prod_cd_nm'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'req_amt'
        DataType = ftCurrency
      end
      item
        Name = 'hold_term_cd_nm'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'tot_room_cnt'
        DataType = ftInteger
      end
      item
        Name = 'rent_room_cnt'
        DataType = ftInteger
      end
      item
        Name = 'rent_amt'
        DataType = ftCurrency
      end
      item
        Name = 'usub_ord_bond_amt'
        DataType = ftCurrency
      end
      item
        Name = 'mort_pry_amt'
        DataType = ftCurrency
      end
      item
        Name = 'judge_assess_amt'
        DataType = ftCurrency
      end
      item
        Name = 'house_mort_assess_amt'
        DataType = ftCurrency
      end
      item
        Name = 'store_mort_assess_amt'
        DataType = ftCurrency
      end
      item
        Name = 'lnd_judge_amt'
        DataType = ftCurrency
      end
      item
        Name = 'divs_area'
        DataType = ftFloat
      end
      item
        Name = 'etc_apply_area'
        DataType = ftFloat
      end
      item
        Name = 'sell_area'
        DataType = ftFloat
      end
      item
        Name = 'sell_ph'
        DataType = ftFloat
      end
      item
        Name = 'sell_room_cnt'
        DataType = ftInteger
      end
      item
        Name = 'use_apprv_yr'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'lrgt_poss'
        DataType = ftFloat
      end
      item
        Name = 'main_struct'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'bldng_tot_layer'
        DataType = ftInteger
      end
      item
        Name = 'heat_type'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'tot_dong_cnt'
        DataType = ftInteger
      end
      item
        Name = 'tot_house_cnt'
        DataType = ftInteger
      end
      item
        Name = 'sale_upper_amt'
        DataType = ftCurrency
      end
      item
        Name = 'sale_lower_amt'
        DataType = ftCurrency
      end
      item
        Name = 'cmplt_test_dy'
        DataType = ftDateTime
      end
      item
        Name = 'sell_contrct_dy'
        DataType = ftDateTime
      end
      item
        Name = 'judge_assess_opn'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'inqry_rslt_exist_yn'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'bsrch_pnttm'
        DataType = ftDateTime
      end
      item
        Name = 'make_dy'
        DataType = ftDateTime
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
        Name = 'assess_seq'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'assess_seq_dt'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FstatusUsr'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FstatusNo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'base_fee_amt'
        DataType = ftCurrency
      end
      item
        Name = 'travel_fee_amt'
        DataType = ftCurrency
      end
      item
        Name = 'special_servc_amt'
        DataType = ftCurrency
      end
      item
        Name = 'sale_amt'
        DataType = ftCurrency
      end
      item
        Name = 'addvalue_fee'
        DataType = ftCurrency
      end
      item
        Name = 'tot_sale_amt'
        DataType = ftCurrency
      end
      item
        Name = 'prod_grp_cd'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'progress_note'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'vrtl_acc_seq'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'vrtl_acc_no'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'vrtl_acc_dposit_nm'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'vrtl_acc_new_dy'
        DataType = ftDateTime
      end
      item
        Name = 'vrtl_acc_expire_dy'
        DataType = ftDateTime
      end
      item
        Name = 'vrtl_acc_org_cd'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'vrtl_acc_fee_amt'
        DataType = ftCurrency
      end
      item
        Name = 'EditDate'
        DataType = ftDateTime
      end
      item
        Name = 'WorkStatus'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'WorkMsg'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'AllocOffice'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Bigo'
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'PDF'
        DataType = ftString
        Size = 16
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
    Left = 912
    Top = 152
    object qryMainMasterid: TLargeintField
      FieldName = 'Masterid'
    end
    object qryMainApw_Master_masterid: TLargeintField
      FieldName = 'Apw_Master_masterid'
    end
    object qryMainIsProcess: TBooleanField
      FieldName = 'IsProcess'
    end
    object qryMainMgr_Code: TStringField
      FieldName = 'Mgr_Code'
      Size = 6
    end
    object qryMainco_prev_insp_no: TStringField
      FieldName = 'co_prev_insp_no'
      Size = 10
    end
    object qryMainseq: TStringField
      FieldName = 'seq'
      Size = 5
    end
    object qryMaincancel_yn: TStringField
      FieldName = 'cancel_yn'
      Size = 1
    end
    object qryMainorg_nm: TStringField
      FieldName = 'org_nm'
      Size = 30
    end
    object qryMainduty_brcd_nm: TStringField
      FieldName = 'duty_brcd_nm'
      Size = 40
    end
    object qryMainduty_emp_nm: TStringField
      FieldName = 'duty_emp_nm'
      Size = 30
    end
    object qryMainduty_tel_no: TStringField
      FieldName = 'duty_tel_no'
    end
    object qryMainacpt_no: TStringField
      FieldName = 'acpt_no'
    end
    object qryMainacpt_dy: TDateTimeField
      FieldName = 'acpt_dy'
    end
    object qryMainjudge_assess_sht_no: TStringField
      FieldName = 'judge_assess_sht_no'
      Size = 50
    end
    object qryMainjudge_assess_dy: TDateTimeField
      FieldName = 'judge_assess_dy'
    end
    object qryMainSigner: TIntegerField
      FieldName = 'Signer'
    end
    object qryMainjudge_assess_co_nm: TStringField
      FieldName = 'judge_assess_co_nm'
      Size = 50
    end
    object qryMaincust_no: TStringField
      FieldName = 'cust_no'
      Size = 9
    end
    object qryMainapplcant_nm: TStringField
      FieldName = 'applcant_nm'
      Size = 50
    end
    object qryMainapplcant_tel_no: TStringField
      FieldName = 'applcant_tel_no'
      Size = 12
    end
    object qryMainapplcant_mobile: TStringField
      FieldName = 'applcant_mobile'
      Size = 12
    end
    object qryMainapplcant_zip_cd: TStringField
      FieldName = 'applcant_zip_cd'
      Size = 6
    end
    object qryMainmort_addr_kind_dvcd: TStringField
      FieldName = 'mort_addr_kind_dvcd'
      Size = 1
    end
    object qryMainmort_zip_cd: TStringField
      FieldName = 'mort_zip_cd'
      Size = 6
    end
    object qryMainmort_zipaddr: TStringField
      FieldName = 'mort_zipaddr'
      Size = 100
    end
    object qryMainmort_dtladdr: TStringField
      FieldName = 'mort_dtladdr'
      Size = 100
    end
    object qryMainlawco_dong_cd: TStringField
      FieldName = 'lawco_dong_cd'
      Size = 10
    end
    object qryMainmort_st_stnm_addr_cd: TStringField
      FieldName = 'mort_st_stnm_addr_cd'
      Size = 25
    end
    object qryMainmort_st_dtladdr: TStringField
      FieldName = 'mort_st_dtladdr'
      Size = 100
    end
    object qryMainown_pers_nm: TStringField
      FieldName = 'own_pers_nm'
      Size = 50
    end
    object qryMainhouse_dvcd: TStringField
      FieldName = 'house_dvcd'
      Size = 3
    end
    object qryMainmort_rsrch_kind_cd: TStringField
      FieldName = 'mort_rsrch_kind_cd'
      Size = 1
    end
    object qryMainexpect_judge_amt: TCurrencyField
      FieldName = 'expect_judge_amt'
    end
    object qryMainfee_brd_cd: TStringField
      FieldName = 'fee_brd_cd'
      Size = 2
    end
    object qryMainreq_dy: TDateTimeField
      FieldName = 'req_dy'
    end
    object qryMainrepot_dlv_hope_dy: TDateTimeField
      FieldName = 'repot_dlv_hope_dy'
    end
    object qryMainprod_cd_nm: TStringField
      FieldName = 'prod_cd_nm'
      Size = 10
    end
    object qryMainreq_amt: TCurrencyField
      FieldName = 'req_amt'
    end
    object qryMainhold_term_cd_nm: TStringField
      FieldName = 'hold_term_cd_nm'
      Size = 4
    end
    object qryMaintot_room_cnt: TIntegerField
      FieldName = 'tot_room_cnt'
    end
    object qryMainrent_room_cnt: TIntegerField
      FieldName = 'rent_room_cnt'
    end
    object qryMainrent_amt: TCurrencyField
      FieldName = 'rent_amt'
    end
    object qryMainusub_ord_bond_amt: TCurrencyField
      FieldName = 'usub_ord_bond_amt'
    end
    object qryMainmort_pry_amt: TCurrencyField
      FieldName = 'mort_pry_amt'
    end
    object qryMainjudge_assess_amt: TCurrencyField
      FieldName = 'judge_assess_amt'
    end
    object qryMainhouse_mort_assess_amt: TCurrencyField
      FieldName = 'house_mort_assess_amt'
    end
    object qryMainstore_mort_assess_amt: TCurrencyField
      FieldName = 'store_mort_assess_amt'
    end
    object qryMainlnd_judge_amt: TCurrencyField
      FieldName = 'lnd_judge_amt'
    end
    object qryMaindivs_area: TFloatField
      FieldName = 'divs_area'
    end
    object qryMainetc_apply_area: TFloatField
      FieldName = 'etc_apply_area'
    end
    object qryMainsell_area: TFloatField
      FieldName = 'sell_area'
    end
    object qryMainsell_ph: TFloatField
      FieldName = 'sell_ph'
    end
    object qryMainsell_room_cnt: TIntegerField
      FieldName = 'sell_room_cnt'
    end
    object qryMainuse_apprv_yr: TStringField
      FieldName = 'use_apprv_yr'
      Size = 4
    end
    object qryMainlrgt_poss: TFloatField
      FieldName = 'lrgt_poss'
    end
    object qryMainmain_struct: TStringField
      FieldName = 'main_struct'
      Size = 200
    end
    object qryMainbldng_tot_layer: TIntegerField
      FieldName = 'bldng_tot_layer'
    end
    object qryMainheat_type: TStringField
      FieldName = 'heat_type'
      Size = 50
    end
    object qryMaintot_dong_cnt: TIntegerField
      FieldName = 'tot_dong_cnt'
    end
    object qryMaintot_house_cnt: TIntegerField
      FieldName = 'tot_house_cnt'
    end
    object qryMainsale_upper_amt: TCurrencyField
      FieldName = 'sale_upper_amt'
    end
    object qryMainsale_lower_amt: TCurrencyField
      FieldName = 'sale_lower_amt'
    end
    object qryMaincmplt_test_dy: TDateTimeField
      FieldName = 'cmplt_test_dy'
    end
    object qryMainsell_contrct_dy: TDateTimeField
      FieldName = 'sell_contrct_dy'
    end
    object qryMainjudge_assess_opn: TStringField
      FieldName = 'judge_assess_opn'
      Size = 500
    end
    object qryMaininqry_rslt_exist_yn: TStringField
      FieldName = 'inqry_rslt_exist_yn'
      Size = 1
    end
    object qryMainbsrch_pnttm: TDateTimeField
      FieldName = 'bsrch_pnttm'
    end
    object qryMainmake_dy: TDateTimeField
      FieldName = 'make_dy'
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
    object qryMainassess_seq: TStringField
      FieldName = 'assess_seq'
      Size = 3
    end
    object qryMainassess_seq_dt: TStringField
      FieldName = 'assess_seq_dt'
      Size = 50
    end
    object qryMainFstatusUsr: TStringField
      FieldName = 'FstatusUsr'
      Size = 50
    end
    object qryMainFstatusNo: TStringField
      FieldName = 'FstatusNo'
      Size = 50
    end
    object qryMainbase_fee_amt: TCurrencyField
      FieldName = 'base_fee_amt'
    end
    object qryMaintravel_fee_amt: TCurrencyField
      FieldName = 'travel_fee_amt'
    end
    object qryMainspecial_servc_amt: TCurrencyField
      FieldName = 'special_servc_amt'
    end
    object qryMainsale_amt: TCurrencyField
      FieldName = 'sale_amt'
    end
    object qryMainaddvalue_fee: TCurrencyField
      FieldName = 'addvalue_fee'
    end
    object qryMaintot_sale_amt: TCurrencyField
      FieldName = 'tot_sale_amt'
    end
    object qryMainprod_grp_cd: TStringField
      FieldName = 'prod_grp_cd'
      Size = 2
    end
    object qryMainprogress_note: TStringField
      FieldName = 'progress_note'
      Size = 300
    end
    object qryMainvrtl_acc_seq: TStringField
      FieldName = 'vrtl_acc_seq'
      Size = 3
    end
    object qryMainvrtl_acc_no: TStringField
      FieldName = 'vrtl_acc_no'
    end
    object qryMainvrtl_acc_dposit_nm: TStringField
      FieldName = 'vrtl_acc_dposit_nm'
      Size = 30
    end
    object qryMainvrtl_acc_new_dy: TDateTimeField
      FieldName = 'vrtl_acc_new_dy'
    end
    object qryMainvrtl_acc_expire_dy: TDateTimeField
      FieldName = 'vrtl_acc_expire_dy'
    end
    object qryMainvrtl_acc_org_cd: TStringField
      FieldName = 'vrtl_acc_org_cd'
      Size = 3
    end
    object qryMainvrtl_acc_fee_amt: TCurrencyField
      FieldName = 'vrtl_acc_fee_amt'
    end
    object qryMainEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object qryMainWorkStatus: TStringField
      FieldName = 'WorkStatus'
      Size = 4
    end
    object qryMainWorkMsg: TStringField
      FieldName = 'WorkMsg'
      Size = 500
    end
    object qryMainAllocOffice: TStringField
      FieldName = 'AllocOffice'
      Size = 2
    end
    object qryMainBigo: TStringField
      FieldName = 'Bigo'
      Size = 8000
    end
    object qryMainPDF: TStringField
      FieldName = 'PDF'
      Size = 16
    end
  end
  object dsMain: TDataSource
    DataSet = qryMain
    OnStateChange = dsMainStateChange
    Left = 960
    Top = 152
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 800
    Top = 392
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
    Left = 824
    Top = 312
  end
  object od: TOpenDialog
    Filter = '*.pdf|*.pdf'
    Left = 792
    Top = 712
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
    Left = 776
    Top = 632
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 928
    Top = 688
  end
  object qryHFCategory: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_Category')
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
        Size = 3
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
    Left = 976
    Top = 64
    object qryHFCategorySeq: TIntegerField
      FieldName = 'Seq'
    end
    object qryHFCategoryCode: TStringField
      FieldName = 'Code'
      Size = 3
    end
    object qryHFCategoryName: TStringField
      FieldName = 'Name'
      Size = 100
    end
  end
  object dsHFCategory: TDataSource
    DataSet = qryHFCategory
    Left = 1072
    Top = 152
  end
  object qryHFjosakind: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_josakind')
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
        Size = 3
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
    Left = 888
    Top = 56
    object IntegerField1: TIntegerField
      FieldName = 'Seq'
    end
    object StringField1: TStringField
      FieldName = 'Code'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'Name'
      Size = 100
    end
  end
  object dsHFjosakind: TDataSource
    DataSet = qryHFjosakind
    Left = 960
    Top = 320
  end
  object qryHFbank: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_Bank')
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
        Size = 3
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
    Left = 996
    Top = 292
    object IntegerField2: TIntegerField
      FieldName = 'Seq'
    end
    object StringField3: TStringField
      FieldName = 'Code'
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'Name'
      Size = 100
    end
  end
  object dsHFbank: TDataSource
    DataSet = qryHFbank
    Left = 908
    Top = 380
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
    Left = 1000
    Top = 696
  end
  object sd: TSaveDialog
    Left = 864
    Top = 800
  end
  object qryLog: TkbmMWClientQuery
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
    Left = 960
    Top = 720
  end
  object IdFTP1: TIdFTP
    AutoLogin = True
    Host = '10.40.0.246'
    Passive = True
    Username = 'anonymous'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 744
    Top = 800
  end
  object qryGam: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_IW_S_KHF_GETGAM '#39'10'#39' , 1')
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
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'Docid'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ReceiptDate'
        DataType = ftDateTime
      end
      item
        Name = 'Manager'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Charge'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'OwnerName'
        DataType = ftString
        Size = 140
      end
      item
        Name = 'upprice'
        DataType = ftCurrency
      end
      item
        Name = 'downprice'
        DataType = ftCurrency
      end
      item
        Name = 'PricePointDate'
        DataType = ftDateTime
      end
      item
        Name = 'WriteDate'
        DataType = ftDateTime
      end
      item
        Name = 'yebi'
        DataType = ftCurrency
      end
      item
        Name = 'specialp'
        DataType = ftCurrency
      end
      item
        Name = 'basicsusu'
        DataType = ftCurrency
      end
      item
        Name = 'Hap'
        DataType = ftCurrency
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Buga'
        DataType = ftCurrency
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
    Left = 1028
    Top = 592
    object qryGamprice: TCurrencyField
      FieldName = 'price'
    end
    object qryGamDocid: TStringField
      FieldName = 'Docid'
      Size = 30
    end
    object qryGamReceiptDate: TDateTimeField
      FieldName = 'ReceiptDate'
    end
    object qryGamManager: TStringField
      FieldName = 'Manager'
      Size = 300
    end
    object qryGamCharge: TStringField
      FieldName = 'Charge'
      Size = 300
    end
    object qryGamOwnerName: TStringField
      FieldName = 'OwnerName'
      Size = 140
    end
    object qryGamupprice: TCurrencyField
      FieldName = 'upprice'
    end
    object qryGamdownprice: TCurrencyField
      FieldName = 'downprice'
    end
    object qryGamPricePointDate: TDateTimeField
      FieldName = 'PricePointDate'
    end
    object qryGamWriteDate: TDateTimeField
      FieldName = 'WriteDate'
    end
    object qryGamyebi: TCurrencyField
      FieldName = 'yebi'
    end
    object qryGamspecialp: TCurrencyField
      FieldName = 'specialp'
    end
    object qryGambasicsusu: TCurrencyField
      FieldName = 'basicsusu'
    end
    object qryGamHap: TCurrencyField
      FieldName = 'Hap'
    end
    object qryGamTotal: TCurrencyField
      FieldName = 'Total'
    end
    object qryGamBuga: TCurrencyField
      FieldName = 'Buga'
    end
  end
end
