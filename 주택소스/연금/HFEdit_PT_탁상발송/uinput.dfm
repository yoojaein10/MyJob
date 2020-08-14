object XForm1: TXForm1
  Left = 703
  Top = 280
  Width = 518
  Height = 257
  Caption = #54620#44397#51452#53469#44552#50997#44277#49324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnShow = XFormShow
  CaptionButtons = <>
  DLLName = 'HFeditPT.dll'
  InitHeight = 0
  InitWidth = 0
  PixelsPerInch = 96
  TextHeight = 15
  object pnButton: TRzPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 89
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clActiveCaption
    TabOrder = 0
    object btnSave: TRzBitBtn
      Left = 237
      Top = 33
      Width = 81
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
      Left = 429
      Top = 34
      Width = 65
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
      Left = 334
      Top = 33
      Width = 81
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
      Width = 111
      Height = 55
      FrameColor = 7617536
      Action = aSendHF
      Caption = #51452#53469#44552#50997#44277#49324' '#51204#49569#51088#47308' '#51204#49569'('#53441#49345')'
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
      Left = 143
      Top = 32
      Width = 81
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
  end
  object pnFileUp: TRzPanel
    Left = 390
    Top = 428
    Width = 359
    Height = 33
    BorderOuter = fsFlatRounded
    TabOrder = 1
    Visible = False
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
      Top = 15
      Width = 355
      Height = 16
      Align = alBottom
      TabOrder = 2
    end
    object RzBitBtn1: TRzBitBtn
      Left = 152
      Top = 40
      Width = 105
      FrameColor = 7617536
      Caption = 'PDF'#45796#50868#47196#46300
      Color = 15791348
      HotTrack = True
      TabOrder = 3
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
  end
  object btnFindAddr: TRzBitBtn
    Left = 580
    Top = 324
    Width = 121
    Height = 22
    FrameColor = 7617536
    Caption = #47932#44148#49548#51116#51648' '#51077#47141
    Color = 15791348
    HotTrack = True
    TabOrder = 2
    Visible = False
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
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 502
    Height = 129
    Align = alClient
    Color = clActiveCaption
    TabOrder = 3
    object RzLabel1: TRzLabel
      Left = 29
      Top = 35
      Width = 148
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #50557#49885#53441#49345#44048#51221#48264#54840
      Color = clLime
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
      Left = 29
      Top = 13
      Width = 148
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
    object RzLabel44: TRzLabel
      Left = 29
      Top = 57
      Width = 148
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #50557#49885#53441#49345#44208#44284#44208#51221#44032#50529
      Color = clLime
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
      Left = 29
      Top = 79
      Width = 148
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #44592#53440#49324#54637
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
      Left = 32
      Top = 105
      Width = 247
      Height = 15
      Caption = #44592#53440#49324#54637#50640' '#44592#51116#46108' '#49324#54637#51008' '#44277#49324#47196' '#51204#49569#46121#45768#45796'.'
    end
    object edtGAMJUMG_NO: TRzDBEdit
      Left = 176
      Top = 35
      Width = 280
      Height = 23
      DataSource = dsMain
      DataField = 'GAMJUMG_NO'
      AutoSize = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOnEnter = True
      TabOrder = 0
    end
    object edtGAMJUMG_GA: TcxDBCurrencyEdit
      Left = 175
      Top = 56
      AutoSize = False
      DataBinding.DataField = 'GAMJUMG_GA'
      DataBinding.DataSource = dsMain
      Properties.DisplayFormat = ',0.;-,0.'
      TabOrder = 1
      Height = 25
      Width = 282
    end
    object edtDAMBO_NO: TRzDBEdit
      Left = 176
      Top = 13
      Width = 280
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
      TabOrder = 2
    end
    object edtBIGO: TRzDBEdit
      Left = 176
      Top = 79
      Width = 280
      Height = 23
      Hint = #51032#47280#52376#51032' '#51032#47280#54620' '#45812#45817#51088' '#51077#45768#45796'.'
      DataSource = dsMain
      DataField = 'BIGO'
      AutoSelect = False
      DisabledColor = clWindow
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 3
    end
  end
  object RzFC: TRzFrameController
    DisabledColor = clWindow
    FlatButtons = False
    FrameHotStyle = fsFlat
    FrameHotTrack = True
    FrameVisible = True
    Left = 468
    Top = 252
  end
  object qryMain: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_HF_P_TS  11, '#39'TAA2000172'#39)
    Params = <>
    TransportStreamFormat = DBM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    TableName = 'fake_i,SP_U_HF_P_TS,fake_d'
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
        Name = 'GAMJUMG_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GAMJUMG_GA'
        DataType = ftCurrency
      end
      item
        Name = 'BIGO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DUMMY'
        DataType = ftString
        Size = 10
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
    Left = 512
    Top = 132
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
    object qryMainGAMJUMG_NO: TStringField
      FieldName = 'GAMJUMG_NO'
      Size = 15
    end
    object qryMainGAMJUMG_GA: TCurrencyField
      FieldName = 'GAMJUMG_GA'
    end
    object qryMainBIGO: TStringField
      FieldName = 'BIGO'
      Size = 50
    end
    object qryMainDUMMY: TStringField
      FieldName = 'DUMMY'
      Size = 10
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
  end
  object dsMain: TDataSource
    DataSet = qryMain
    OnStateChange = dsMainStateChange
    Left = 548
    Top = 260
  end
  object ActionList1: TActionList
    Left = 204
    Top = 404
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
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    Left = 636
    Top = 276
  end
  object od: TOpenDialog
    Filter = '*.pdf|*.pdf'
    Left = 260
    Top = 404
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
    Left = 332
    Top = 404
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 596
    Top = 268
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
    Left = 612
    Top = 120
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
    Left = 672
    Top = 140
  end
end
