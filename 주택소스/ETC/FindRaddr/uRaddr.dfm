object frmFindRaddr: TfrmFindRaddr
  Left = 758
  Top = 218
  Width = 706
  Height = 343
  Caption = #46020#47196#47749', '#51648#48264' '#51452#49548' '#52286#44592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  CaptionButtons = <>
  DLLName = 'FINDRADDR.DLL'
  InitHeight = 0
  InitWidth = 0
  PixelsPerInch = 96
  TextHeight = 17
  object pnTop: TRzPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 39
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clMoneyGreen
    FlatColor = clActiveCaption
    GridColor = clActiveCaption
    TabOrder = 0
    object edt_SearchWord: TcxTextEdit
      Left = 10
      Top = 6
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      TabOrder = 0
      Text = #49436#52488#46041' 1591-3'
      Height = 29
      Width = 233
    end
    object btnFind: TRzBitBtn
      Left = 251
      Top = 8
      FrameColor = 7617536
      Caption = 'Find'
      Color = 15791348
      HotTrack = True
      TabOrder = 1
      OnClick = btnFindClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8B4D8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E281E8E8E8E8E8E8E8E8E8E8E8E8E8
        B46C6CD8E8E8E8E8E8E8E8E8E8E8E8E8E2818181E8E8E8E8E8E8E8E8E8E8E8E8
        B46CD86CD8E8E8E8E8E8E8E8E8E8E8E8E281818181E8E8E8E8E8E8E8E8E8E8E8
        B46C6CD86CD8E8E8E8E8E8E8E8E8E8E8E28181818181E8E8E8E8E8E8E8E8E8D7
        5E6C6C6CB46CD8E8E8E8E8E8E8E8E8D781818181E28181E8E8E8E8E8E8E8E8D7
        89896CB4B4B46CD8E8E8E8E8E8E8E8D7ACAC81E2E2E28181E8E8E8E8E8E8D789
        89D7D7B4C7C7C76CE8E8E8E8E8E8D7ACACD7D7E2ACACAC81E8E8E8E8E8D78989
        D7D7D7D76C6C6CE8E8E8E8E8E8D7ACACD7D7D7D7818181E8E8E8E8E8D78989D7
        D7D75E5EE8E8E8E8E8E8E8E8D7ACACD7D7D78181E8E8E8E8E8E8E8D78989D7D7
        D75EE8E8E8E8E8E8E8E8E8D7ACACD7D7D781E8E8E8E8E8E8E8E8D78989D7D7D7
        5EB4E8E8E8E8E8E8E8E8D7ACACD7D7D781E2E8E8E8E8E8E8E8E85E89D7D7D75E
        B4E8E8E8E8E8E8E8E8E881ACD7D7D781E2E8E8E8E8E8E8E8E8E8E85ED7D75EE8
        E8E8E8E8E8E8E8E8E8E8E881D7D781E8E8E8E8E8E8E8E8E8E8E8E8E85E5EE8E8
        E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object cxLabel1: TcxLabel
      Left = 334
      Top = 10
      Caption = '(ex:'#49464#51333#45824#47196' 209, '#49436#52488#46041' 1591-3)'
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 261
    Width = 690
    Height = 43
    Align = alBottom
    BorderOuter = fsFlatRounded
    Color = clMoneyGreen
    TabOrder = 1
    object btnOk: TRzBitBtn
      Left = 538
      Top = 2
      Height = 39
      FrameColor = 7617536
      Align = alRight
      Caption = 'OK'
      Color = 15791348
      HotTrack = True
      TabOrder = 0
      OnClick = btnOkClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
        E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnclose: TRzBitBtn
      Left = 613
      Top = 2
      Height = 39
      FrameColor = 7617536
      Align = alRight
      Caption = 'Cancel'
      Color = 15791348
      HotTrack = True
      TabOrder = 1
      OnClick = btncloseClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 39
    Width = 690
    Height = 222
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1RecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1bdMgtSn: TcxGridDBColumn
        Caption = #44148#47932#44288#47532#48264#54840
        DataBinding.FieldName = 'bdMgtSn'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1rnMgtSn: TcxGridDBColumn
        Caption = #46020#47196#47749#53076#46300
        DataBinding.FieldName = 'rnMgtSn'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1jibunAddr: TcxGridDBColumn
        Caption = #51648#48264#51452#49548
        DataBinding.FieldName = 'jibunAddr'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 272
      end
      object cxGrid1DBTableView1roadAddr: TcxGridDBColumn
        Caption = #46020#47196#47749#51452#49548
        DataBinding.FieldName = 'roadAddr'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 293
      end
      object cxGrid1DBTableView1zipNo: TcxGridDBColumn
        Caption = #50864#54200#48264#54840
        DataBinding.FieldName = 'zipNo'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1admCd: TcxGridDBColumn
        Caption = #48277#51221#46041#53076#46300
        DataBinding.FieldName = 'admCd'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1detBdNmList: TcxGridDBColumn
        Caption = #49345#49464#44148#47932#47749
        DataBinding.FieldName = 'detBdNmList'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1bdNm: TcxGridDBColumn
        Caption = #44148#47932#47749
        DataBinding.FieldName = 'bdNm'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1siNm: TcxGridDBColumn
        Caption = #49884#46020#47749
        DataBinding.FieldName = 'siNm'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1sggNm: TcxGridDBColumn
        Caption = #49884#44400#44396#47749
        DataBinding.FieldName = 'sggNm'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1emdNm: TcxGridDBColumn
        Caption = #51021#47732#46041#47749
        DataBinding.FieldName = 'emdNm'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1liNm: TcxGridDBColumn
        Caption = #47532#47749
        DataBinding.FieldName = 'liNm'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1mtyn: TcxGridDBColumn
        Caption = #49328#50668#48512
        DataBinding.FieldName = 'mtyn'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1lnbrMnnm: TcxGridDBColumn
        Caption = #51648#48264#48376#48264
        DataBinding.FieldName = 'lnbrMnnm'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1lnbrSlno: TcxGridDBColumn
        Caption = #51648#48264#48512#48264
        DataBinding.FieldName = 'lnbrSlno'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1rn: TcxGridDBColumn
        Caption = #46020#47196#47749
        DataBinding.FieldName = 'rn'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1buldMnnm: TcxGridDBColumn
        Caption = #44148#47932#48376#48264
        DataBinding.FieldName = 'buldMnnm'
      end
      object cxGrid1DBTableView1buldSlno: TcxGridDBColumn
        Caption = #44148#47932#48512#48264
        DataBinding.FieldName = 'buldSlno'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 304
    Top = 152
    object dxMemData1bdMgtSn: TStringField
      FieldName = 'bdMgtSn'
      Size = 30
    end
    object dxMemData1rnMgtSn: TStringField
      FieldName = 'rnMgtSn'
    end
    object dxMemData1roadAddr: TStringField
      FieldName = 'roadAddr'
      Size = 150
    end
    object dxMemData1jibunAddr: TStringField
      FieldName = 'jibunAddr'
      Size = 150
    end
    object dxMemData1engAddr: TStringField
      FieldName = 'engAddr'
    end
    object dxMemData1zipNo: TStringField
      FieldName = 'zipNo'
    end
    object dxMemData1admCd: TStringField
      FieldName = 'admCd'
    end
    object dxMemData1detBdNmList: TStringField
      FieldName = 'detBdNmList'
    end
    object dxMemData1bdNm: TStringField
      FieldName = 'bdNm'
    end
    object dxMemData1bdKdcd: TStringField
      FieldName = 'bdKdcd'
    end
    object dxMemData1siNm: TStringField
      FieldName = 'siNm'
    end
    object dxMemData1sggNm: TStringField
      FieldName = 'sggNm'
    end
    object dxMemData1emdNm: TStringField
      FieldName = 'emdNm'
    end
    object dxMemData1liNm: TStringField
      FieldName = 'liNm'
    end
    object dxMemData1rn: TStringField
      FieldName = 'rn'
    end
    object dxMemData1udrtyn: TStringField
      FieldName = 'udrtyn'
    end
    object dxMemData1buldMnnm: TStringField
      FieldName = 'buldMnnm'
    end
    object dxMemData1buldSlno: TStringField
      FieldName = 'buldSlno'
    end
    object dxMemData1mtyn: TStringField
      FieldName = 'mtyn'
    end
    object dxMemData1lnbrMnnm: TStringField
      FieldName = 'lnbrMnnm'
    end
    object dxMemData1lnbrSlno: TStringField
      FieldName = 'lnbrSlno'
    end
  end
  object IdHTTP1: TIdHTTP
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
    Left = 40
    Top = 128
  end
  object XMLDocument1: TXMLDocument
    Left = 96
    Top = 144
    DOMVendorDesc = 'MSXML'
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 392
    Top = 160
  end
  object kbmMWClientQuery1: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'KBMMW_QUERY'
    QueryServiceVersion = 'kbmMW_1.0'
    CacheParams = ptUnknown
    CacheFlags = []
    Params = <>
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
    Left = 552
    Top = 351
  end
end
