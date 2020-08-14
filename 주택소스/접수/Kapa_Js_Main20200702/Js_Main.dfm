object FrmJs_Main: TFrmJs_Main
  Left = 672
  Top = 184
  BorderStyle = bsSingle
  Caption = #51217#49688
  ClientHeight = 639
  ClientWidth = 839
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = XFormClose
  OnCreate = XFormCreate
  OnDestroy = XFormDestroy
  OnShow = XFormShow
  CaptionButtons = <>
  DLLName = 'JSMain.dll'
  InitHeight = 0
  InitWidth = 0
  MaxInstance = 1
  PixelsPerInch = 96
  TextHeight = 12
  object pRecepBase: TRzPanel
    Left = 0
    Top = 0
    Width = 839
    Height = 639
    Align = alClient
    TabOrder = 0
    object pRecept: TRzPanel
      Left = 1
      Top = 50
      Width = 832
      Height = 527
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      Color = clWindow
      FlatColorAdjustment = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      FrameController = RzFC
      ParentFont = False
      TabOrder = 1
      object Shape8: TShape
        Left = 8
        Top = 59
        Width = 817
        Height = 1
        Brush.Style = bsClear
      end
      object Shape1: TShape
        Left = 9
        Top = 132
        Width = 817
        Height = 1
        Brush.Style = bsClear
      end
      object Shape7: TShape
        Left = 7
        Top = 233
        Width = 815
        Height = 1
        Brush.Style = bsClear
      end
      object Shape9: TShape
        Left = 9
        Top = 293
        Width = 817
        Height = 1
        Brush.Style = bsClear
      end
      object Shape10: TShape
        Left = 9
        Top = 17
        Width = 816
        Height = 1
        Brush.Style = bsClear
      end
      object cxLabel2: TRzLabel
        Left = 424
        Top = 31
        Width = 49
        Height = 13
        Caption = #48376'.'#51648#49324
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel39: TRzLabel
        Left = 10
        Top = 102
        Width = 56
        Height = 13
        Caption = #51217#49688#51068#51088
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel37: TRzLabel
        Left = 263
        Top = 77
        Width = 56
        Height = 13
        Caption = #54217#44032#47785#51201
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel1: TRzLabel
        Left = 10
        Top = 29
        Width = 77
        Height = 13
        Caption = #44048#51221#49436#48264#54840' '
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel38: TRzLabel
        Left = 263
        Top = 102
        Width = 56
        Height = 13
        Caption = #51032#47280#51068#51088
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel4: TRzLabel
        Left = 10
        Top = 77
        Width = 56
        Height = 13
        Caption = #50629#47924#44396#48516
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel41: TRzLabel
        Left = 504
        Top = 102
        Width = 56
        Height = 13
        Caption = #52376#47532#44592#54620
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel47: TRzLabel
        Left = 10
        Top = 268
        Width = 56
        Height = 13
        Caption = #44148'    '#47749
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel46: TRzLabel
        Left = 504
        Top = 77
        Width = 56
        Height = 13
        Caption = #47932#44148#51333#47448
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel112: TRzLabel
        Left = 10
        Top = 243
        Width = 56
        Height = 13
        Caption = #49548' '#51116' '#51648
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel118: TRzLabel
        Left = 648
        Top = 31
        Width = 56
        Height = 13
        Caption = #50864#49440#49692#50948
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel6: TRzLabel
        Left = 10
        Top = 405
        Width = 56
        Height = 13
        Caption = #44592#53440#49324#54637
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzStatusPane1: TRzStatusPane
        Left = 70
        Top = 239
        Width = 551
        Height = 24
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object Edt_Nd_Addr: TRzDBLabel
        Left = 79
        Top = 243
        Width = 518
        Height = 14
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        DataField = 'Address'
        DataSource = dsMst
      end
      object Shape2: TShape
        Left = 9
        Top = 389
        Width = 815
        Height = 1
        Brush.Style = bsClear
      end
      object RzStatusPane2: TRzStatusPane
        Left = 82
        Top = 26
        Width = 174
        Height = 22
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object Edt_DocID: TRzDBLabel
        Left = 85
        Top = 30
        Width = 168
        Height = 14
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        DataField = 'DocID'
        DataSource = dsMst
      end
      object cxLabel6: TRzLabel
        Left = 13
        Top = 309
        Width = 56
        Height = 13
        Caption = #53441#49345#51088#47928
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel76: TRzLabel
        Left = 240
        Top = 306
        Width = 126
        Height = 13
        Caption = #44288#47144#50629#47924#44048#51221#49436#48264#54840
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel77: TRzLabel
        Left = 528
        Top = 305
        Width = 56
        Height = 13
        Caption = #44288#47144#50629#47924
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel2: TRzLabel
        Left = 11
        Top = 335
        Width = 56
        Height = 13
        Caption = #50976' '#52824' '#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel8: TRzLabel
        Left = 239
        Top = 333
        Width = 28
        Height = 13
        Caption = #48708#50984
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel11: TRzLabel
        Left = 454
        Top = 364
        Width = 56
        Height = 13
        Caption = #52265' '#49688' '#44552
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel51: TRzLabel
        Left = 11
        Top = 208
        Width = 56
        Height = 13
        Caption = #49548' '#50976' '#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel49: TRzLabel
        Left = 191
        Top = 210
        Width = 42
        Height = 13
        Caption = #52292#47924#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel29: TRzLabel
        Left = 392
        Top = 211
        Width = 28
        Height = 13
        Caption = #51204#54868
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel43: TRzLabel
        Left = 10
        Top = 175
        Width = 56
        Height = 13
        Caption = #47928#49436#48264#54840
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel45: TRzLabel
        Left = 10
        Top = 145
        Width = 56
        Height = 13
        Caption = #44144#47000#52376#47749
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel10: TRzLabel
        Left = 192
        Top = 175
        Width = 42
        Height = 13
        Caption = #45812#45817#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel42: TRzLabel
        Left = 370
        Top = 145
        Width = 56
        Height = 13
        Caption = #51032#47280#48512#49436
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel52: TRzLabel
        Left = 394
        Top = 175
        Width = 28
        Height = 13
        Caption = #51204#54868
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel9: TRzLabel
        Left = 570
        Top = 146
        Width = 42
        Height = 13
        Caption = #51228#52636#52376
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel69: TRzLabel
        Left = 595
        Top = 176
        Width = 14
        Height = 13
        Caption = 'HP'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object iblabel: TRzLabel
        Left = 638
        Top = 365
        Width = 56
        Height = 13
        Caption = #51077#44552#51068#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        Visible = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel13: TRzLabel
        Left = 11
        Top = 363
        Width = 70
        Height = 13
        Caption = #51312#49324#54217#44032#49324
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel111: TRzLabel
        Left = 593
        Top = 209
        Width = 14
        Height = 13
        Caption = 'HP'
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object selabel: TRzLabel
        Left = 626
        Top = 328
        Width = 70
        Height = 26
        Caption = #49464#44552#44228#49328#49436#13#10#48156#54665#51068#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        Visible = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel16: TRzLabel
        Left = 244
        Top = 360
        Width = 70
        Height = 26
        Caption = #45812#45817#54217#44032#49324#13#10'('#49436#47749#51088')'
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object lab_manager: TLabel
        Left = 724
        Top = 308
        Width = 77
        Height = 13
        Caption = 'lab_manager'
        Visible = False
      end
      object RzButton8: TRzButton
        Tag = 1
        Left = 738
        Top = 84
        Width = 87
        Height = 37
        Caption = #54801#51032#48372#49345
        HotTrack = True
        TabOrder = 62
        OnClick = RzButton8Click
      end
      object Edt_DebtorHP: TRzDBEdit
        Left = 617
        Top = 205
        Width = 197
        Height = 21
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51060#46041#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'DebtorHP'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 23
      end
      object Edt_CustName: TRzDBEdit
        Tag = 1
        Left = 70
        Top = 142
        Width = 287
        Height = 21
        Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #44144#47000#52376#47749#51012' '#51077#47141#54644#51452#49464#50836
        DataSource = dsMst
        DataField = 'CustName'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 12
        OnKeyPress = Edt_CustNameKeyPress
      end
      object Lup_Office: TRzDBLookupComboBox
        Tag = 1
        Left = 478
        Top = 27
        Width = 160
        Height = 21
        HelpType = htKeyword
        HelpKeyword = #48376#51648#49324#53076#46300' '#51077#47141#54644' '#51452#49464#50836'.'
        DataField = 'Office'
        DataSource = dsMst
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        KeyField = 'OfficeID'
        ListField = 'Name'
        ListSource = DBM.DSC_View_Office
        TabOrder = 0
        TabStop = False
        FrameController = RzFC
        TabOnEnter = True
      end
      object Rdo_Priority: TcxDBRadioGroup
        Left = 699
        Top = 29
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#52376#47532#50640' '#45824#54620' '#50864#49440#49692#50948#47484' '#51648#51221#54633#45768#45796'.'
        MoveEnter = True
        Alignment = alCenterCenter
        DataBinding.DataField = 'Priority'
        DataBinding.DataSource = dsMst
        Properties.Columns = 2
        Properties.DefaultValue = ''
        Properties.Items = <
          item
            Caption = #51068#48152
            Value = '1'
          end
          item
            Caption = #44596#44553
            Value = '2'
          end>
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TextStyle = []
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 18
        Width = 105
      end
      object Edt_WorkInfo: TRzDBEdit
        Tag = 1
        Left = 71
        Top = 75
        Width = 30
        Height = 21
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #50629#47924#44396#48516#53076#46300#47484' '#51077#47141#54616#49464#50836'.'
        DataSource = dsMst
        DataField = 'WorkInfo'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 2
      end
      object Edt_ReceiptDate: TRzDBDateTimeEdit
        Tag = 1
        Left = 71
        Top = 100
        Width = 166
        Height = 21
        Hint = #51032#47280#44148#51012' '#51217#49688#54620' '#51068#51088#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #51217#49688#51068#51088#47484' '#51077#47141#54644' '#51452#49464#50836
        DataSource = dsMst
        DataField = 'ReceiptDate'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 8
        EditType = etDate
      end
      object Edt_RequestDate: TRzDBDateTimeEdit
        Left = 323
        Top = 100
        Width = 159
        Height = 21
        Hint = #51032#47280#52376#47196#48512#53552' '#51032#47280#48155#51008' '#51068#51088#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'RequestDate'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 9
        EditType = etDate
      end
      object Edt_LimitDate: TRzDBDateTimeEdit
        Left = 561
        Top = 100
        Width = 165
        Height = 21
        Hint = #51032#47280#44148#50640' '#45824#54620' '#52376#47532#44592#54620#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'LimitDate'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 10
        EditType = etDate
      end
      object BtnAddr: TRzButton
        Left = 596
        Top = 240
        Width = 29
        Height = 22
        Caption = '&1'
        Enabled = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
        OnClick = BtnAddrClick
        OnKeyPress = BtnAddrKeyPress
      end
      object Edt_Title: TRzDBEdit
        Left = 71
        Top = 265
        Width = 554
        Height = 21
        Hint = #44148#47749#51012' '#51077#47141#54633#45768#45796'. ( CTRL+V'#47196' '#49548#51116#51648#50752' '#46041#51068#54616#44172' '#51077#47141#54624' '#49688' '#51080#51020')'
        HelpType = htKeyword
        HelpKeyword = #44148#47749#51012' '#51077#47141#54644' '#51452#49464#50836'.'
        DataSource = dsMst
        DataField = 'Title'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 26
      end
      object RzDBMemo1: TRzDBMemo
        Left = 87
        Top = 400
        Width = 730
        Height = 121
        Ctl3D = True
        DataField = 'Bigo'
        DataSource = dsMst
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentCtl3D = False
        TabOrder = 35
        FrameController = RzFC
      end
      object btnAddrAdd: TRzButton
        Left = 632
        Top = 238
        Width = 89
        Height = 53
        FrameColor = 7617536
        Action = AInventory
        Color = 15791348
        HotTrack = True
        TabOrder = 25
      end
      object RzDBEdit4: TRzDBEdit
        Tag = 1
        Left = 324
        Top = 75
        Width = 23
        Height = 21
        Hint = #54217#44032#47785#51201#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #54217#44032#47785#51201#53076#46300#47484' '#51077#47141#54616#49464#50836'.'
        DataSource = dsMst
        DataField = 'Purpose'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 4
      end
      object RzDBEdit5: TRzDBEdit
        Tag = 1
        Left = 561
        Top = 75
        Width = 30
        Height = 21
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #47932#44148#51333#47448#53076#46300#47484' '#51077#47141#54616#49464#50836'.'
        DataSource = dsMst
        DataField = 'Category'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 6
      end
      object Lup_Category: TcxDBLookupComboBox
        Tag = 1
        Left = 590
        Top = 75
        Hint = #47932#44148#51333#47448#47484' '#49440#53469#54616#50668' '#51077#47141#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #47932#44148#51333#47448#47484' '#49440#53469#54616#49464#50836'.'
        MoveEnter = True
        DataBinding.DataField = 'category'
        DataBinding.DataSource = dsMst
        ImeName = 'Microsoft IME 2003'
        Properties.ImeName = 'Microsoft IME 2003'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            Caption = #47932#44148#51333#47448
            HeaderAlignment = taCenter
            FieldName = 'NAME'
          end>
        Properties.ListSource = DBM.DSC_View_Category
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.Color = clBtnFace
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 7
        Width = 137
      end
      object Lub_Purpose: TcxDBLookupComboBox
        Tag = 1
        Left = 346
        Top = 75
        Hint = #54217#44032#47785#51201#51012' '#49440#53469#54616#50668' '#51077#47141#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #54217#44032#47785#51201#51012' '#49440#53469#54644' '#51452#49464#50836'.'
        MoveEnter = True
        DataBinding.DataField = 'Purpose'
        DataBinding.DataSource = dsMst
        ImeName = 'Microsoft IME 2003'
        Properties.Alignment.Vert = taVCenter
        Properties.ImeName = 'Microsoft IME 2003'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            Caption = #54217#44032#47785#51201
            HeaderAlignment = taCenter
            FieldName = 'NAME'
          end>
        Properties.ListSource = DBM.DSC_View_Purpose
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.Color = clBtnFace
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        OnExit = Lub_PurposeExit
        Width = 137
      end
      object Lub_Workinfo: TcxDBLookupComboBox
        Tag = 1
        Left = 100
        Top = 75
        Hint = #50629#47924#44396#48516#53076#46300#47484' '#49440#53469#54616#50668' '#51077#47141#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #50629#47924#44396#48516#51012' '#49440#53469#54644' '#51452#49464#50836'.'
        MoveEnter = True
        DataBinding.DataField = 'Workinfo'
        DataBinding.DataSource = dsMst
        ImeName = 'Microsoft IME 2003'
        Properties.ImeName = 'Microsoft IME 2003'
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            Caption = #50629#47924#44396#48516
            HeaderAlignment = taCenter
            FieldName = 'NAME'
          end>
        Properties.ListSource = DBM.DSC_View_Work
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.Color = clBtnFace
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 3
        Width = 137
      end
      object Chk_ToJiChk: TRzDBCheckBox
        Left = 758
        Top = 431
        Width = 67
        Height = 21
        DataField = 'ToJiChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #53664#51648#45824#51109
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 36
        Visible = False
      end
      object Edt_ToJiMon: TRzDBNumericEdit
        Left = 826
        Top = 437
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'ToJiMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 37
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_ToUseChk: TRzDBCheckBox
        Left = 916
        Top = 439
        Width = 81
        Height = 21
        DataField = 'ToUseChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #53664#51648#51060#50857
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 38
        Visible = False
      end
      object Edt_ToUseMon: TRzDBNumericEdit
        Left = 1022
        Top = 437
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'ToUseMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 39
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_JiJukChk: TRzDBCheckBox
        Left = 1047
        Top = 439
        Width = 81
        Height = 21
        DataField = 'JiJukChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #51648' '#51201' '#46020
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 40
        Visible = False
      end
      object Edt_JiJukMon: TRzDBNumericEdit
        Left = 1183
        Top = 437
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'JiJukMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 41
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_BuildChk: TRzDBCheckBox
        Left = 1152
        Top = 439
        Width = 120
        Height = 21
        DataField = 'BuildChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #51068#48152#44148#52629#47932
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 42
        Visible = False
      end
      object Edt_BuildMon: TRzDBNumericEdit
        Left = 1356
        Top = 437
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'BuildMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 43
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_BuiPyoChk: TRzDBCheckBox
        Left = 742
        Top = 430
        Width = 107
        Height = 21
        DataField = 'BuiPyoChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #44148#52629#47932'('#54364#51228#48512')'
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 44
        Visible = False
      end
      object Edt_BuiPyoMon: TRzDBNumericEdit
        Left = 826
        Top = 459
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'BuiPyoMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 45
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_BuiJunChk: TRzDBCheckBox
        Left = 916
        Top = 462
        Width = 120
        Height = 21
        DataField = 'BuiJunChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #44148#52629#47932'('#51204#50976#48512')'
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 46
        Visible = False
      end
      object Edt_BuiJunMon: TRzDBNumericEdit
        Left = 1022
        Top = 459
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'BuiJunMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 47
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_CadChk: TRzDBCheckBox
        Left = 1047
        Top = 462
        Width = 120
        Height = 21
        DataField = 'CadChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #46020'    '#47732
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 48
        Visible = False
      end
      object Edt_CadMon: TRzDBNumericEdit
        Left = 1183
        Top = 459
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'CadMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 49
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_LandChk: TRzDBCheckBox
        Left = 1152
        Top = 462
        Width = 120
        Height = 21
        DataField = 'LandChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #53664#51648#46321#44592#48512
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 50
        Visible = False
      end
      object Edt_LandMon: TRzDBNumericEdit
        Left = 1356
        Top = 459
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'LandMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 51
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_BuiDeungChk: TRzDBCheckBox
        Left = 734
        Top = 453
        Width = 106
        Height = 21
        DataField = 'BuiDeungChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #44148#47932#46321#44592#48512
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 52
        Visible = False
      end
      object Edt_BuiDeungMon: TRzDBNumericEdit
        Left = 818
        Top = 482
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'BuiDeungMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 53
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object Chk_JipHapChk: TRzDBCheckBox
        Left = 436
        Top = 334
        Width = 104
        Height = 21
        DataField = 'JipHapChk'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #51077#44552#54869#51064#52404#53356
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        TabOrder = 54
        Visible = False
      end
      object Edt_JipHapMon: TRzDBNumericEdit
        Left = 1022
        Top = 482
        Width = 80
        Height = 21
        DataSource = dsMst
        DataField = 'JipHapMon'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOrder = 55
        Visible = False
        DisplayFormat = ',0;(,0)'
      end
      object RzButton2: TRzButton
        Left = 726
        Top = 238
        Width = 94
        Height = 53
        FrameColor = 7617536
        Action = aJudgGradeChkSmall
        Color = 15791348
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 56
      end
      object RzButton3: TRzButton
        Left = 257
        Top = 24
        Width = 108
        Height = 28
        FrameColor = 7617536
        Action = aDocIDChange
        Color = 15791348
        HotTrack = True
        TabOrder = 57
      end
      object Etc_Ts_MasterID: TRzDBEdit
        Left = 86
        Top = 303
        Width = 100
        Height = 21
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#53441#49345#44048#51221#51060' '#51080#51012#44221#50864' '#53441#49345#44048#51221#51221#48372#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMst
        DataField = 'Ts_MasterID'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 27
        OnKeyPress = Etc_Ts_MasterIDKeyPress
      end
      object Edt_Add_Master: TRzDBEdit
        Left = 370
        Top = 303
        Width = 151
        Height = 21
        DataSource = dsMst
        DataField = 'RefDocID'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 29
      end
      object Chk_Report: TRzDBCheckBox
        Left = 540
        Top = 334
        Width = 79
        Height = 17
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#49892#51201#48372#44256' '#44032#45733#54616#44172' '#54633#45768#45796'.'
        DataField = 'Report'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = #49892#51201#48372#44256
        DisabledColor = clWindow
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        ParentFont = False
        TabOnEnter = True
        TabOrder = 58
      end
      object Com_RefType: TRzDBComboBox
        Left = 591
        Top = 303
        Width = 124
        Height = 21
        DataField = 'RefType'
        DataSource = dsMst
        Ctl3D = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 30
        Items.Strings = (
          ''
          #51060#52393
          #52628#44032
          #52509#44292)
        Values.Strings = (
          ''
          '1'
          '2'
          '3')
      end
      object Lup_ChargeName: TcxDBLookupComboBox
        Left = 86
        Top = 331
        HelpType = htKeyword
        HelpKeyword = #50976#52824#51088#47484' '#49440#53469#54644' '#51452#49464#50836'. '
        MoveEnter = True
        DataBinding.DataField = 'BookingCode'
        DataBinding.DataSource = dsMst
        ParentFont = False
        Properties.KeyFieldNames = 'USR_SEQ'
        Properties.ListColumns = <
          item
            Caption = #51060#47492
            HeaderAlignment = taCenter
            FieldName = 'EMP'
          end
          item
            Caption = 'ID'
            HeaderAlignment = taCenter
            FieldName = 'USR_ID'
          end>
        Properties.ListSource = DBM.DSC_View_Usr_Bac_infoA
        Style.Font.Charset = HANGEUL_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.Color = clBtnFace
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 31
        Width = 134
      end
      object RzDBCheckBox1: TRzDBCheckBox
        Left = 735
        Top = 348
        Width = 95
        Height = 17
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#49892#51201#48372#44256' '#44032#45733#54616#44172' '#54633#45768#45796'.'
        DataField = 'Report'
        DataSource = dsMst
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        Caption = 'SMS'#48372#45236#44592
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        ParentFont = False
        TabOnEnter = True
        TabOrder = 59
        Visible = False
      end
      object btnChareNameAdd: TRzButton
        Left = 339
        Top = 330
        Width = 90
        FrameColor = 7617536
        Action = aBooking
        Color = 15791348
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 33
      end
      object RzDBEdit6: TRzDBEdit
        Left = 274
        Top = 331
        Width = 59
        Height = 21
        Hint = #48708#50984#51012' '#51077#47141#54616#49464#50836'.'
        DataSource = dsMst
        DataField = 'Ratio'
        Alignment = taRightJustify
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 32
        OnKeyPress = RzDBEdit6KeyPress
      end
      object RzDBEdit10: TRzDBEdit
        Left = 522
        Top = 360
        Width = 105
        Height = 21
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#51032#47280#48155#51008' '#47928#49436#51032' '#47928#49436#48264#54840#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'Chaksugum'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 34
      end
      object Edt_OwnerName: TRzDBEdit
        Left = 72
        Top = 204
        Width = 111
        Height = 21
        Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMst
        DataField = 'OwnerName'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 20
        OnChange = Edt_OwnerNameChange
        OnExit = Edt_OwnerNameExit
      end
      object Edt_Debtor: TRzDBEdit
        Left = 242
        Top = 206
        Width = 134
        Height = 21
        Hint = #51032#47280#44148#51032' '#52292#47924#51088#47484' '#51077#47141#54633#45768#45796'.'
        DataSource = dsMst
        DataField = 'Debtor'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 21
        OnExit = Edt_DebtorExit
      end
      object Edt_DebtrPhone: TRzDBEdit
        Left = 430
        Top = 206
        Width = 128
        Height = 21
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'DebtrPhone'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 22
      end
      object Edt_CustDocID: TRzDBEdit
        Left = 72
        Top = 172
        Width = 110
        Height = 21
        Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#51032#47280#48155#51008' '#47928#49436#51032' '#47928#49436#48264#54840#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'CustDocID'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 16
      end
      object RzDBEdit8: TRzDBEdit
        Tag = 2
        Left = 71
        Top = 142
        Width = 78
        Height = 21
        Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #44144#47000#52376#47484' '#44144#47000#52376' '#47532#49828#53944#50640#49436' '#49440#53469#54644#51452#49464#50836
        DataSource = dsMst
        DataField = 'CustId'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 11
        Visible = False
        OnKeyPress = Edt_CustNameKeyPress
      end
      object BtnCust: TRzButton
        Left = 329
        Top = 142
        Width = 29
        Height = 20
        Action = aCust
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnKeyPress = Edt_CustNameKeyPress
      end
      object Edt_CustCharge: TRzDBEdit
        Left = 244
        Top = 173
        Width = 130
        Height = 21
        Hint = #51032#47280#52376#51032' '#51032#47280#54620' '#45812#45817#51088' '#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'CustCharge'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 17
      end
      object Edt_CustPart: TRzDBEdit
        Left = 431
        Top = 142
        Width = 128
        Height = 21
        Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'CustPart'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 14
      end
      object Edt_CustPhone: TRzDBEdit
        Left = 430
        Top = 172
        Width = 129
        Height = 21
        Hint = #51032#47280#52376' '#51032#47280#48512#49436#51032' '#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'CustPhone'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 18
      end
      object RzDBEdit7: TRzDBEdit
        Left = 619
        Top = 142
        Width = 197
        Height = 21
        Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'Production'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 15
      end
      object Edt_CustChargeHP: TRzDBEdit
        Left = 617
        Top = 173
        Width = 198
        Height = 21
        Hint = #51032#47280#52376#51032' '#51032#47280#45812#45817#51088' '#51060#46041#51204#54868#48264#54840#51077#45768#45796'.'
        DataSource = dsMst
        DataField = 'CustChargeHP'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOnEnter = True
        TabOrder = 19
      end
      object ibday: TcxDBDateEdit
        Left = 697
        Top = 361
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'ReportDate'
        DataBinding.DataSource = dsMst
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.UseLeftAlignmentOnEditing = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 60
        Visible = False
        Height = 23
        Width = 128
      end
      object Lup_Manager: TcxDBLookupComboBox
        Left = 84
        Top = 360
        HelpType = htKeyword
        MoveEnter = True
        DataBinding.DataField = 'lmanager'
        DataBinding.DataSource = dsMst
        ParentFont = False
        Properties.KeyFieldNames = 'Usr_Seq'
        Properties.ListColumns = <
          item
            Caption = #51060#47492
            HeaderAlignment = taCenter
            FieldName = 'EMP'
          end>
        Style.Font.Charset = HANGEUL_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleFocused.Color = clBtnFace
        TabOrder = 61
        Width = 136
      end
      object seday: TcxDBDateEdit
        Left = 697
        Top = 329
        MoveEnter = True
        AutoSize = False
        DataBinding.DataField = 'Add_Master'
        DataBinding.DataSource = dsMst
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.UseLeftAlignmentOnEditing = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 63
        Visible = False
        Height = 23
        Width = 128
      end
      object btn_Ts: TRzButton
        Left = 191
        Top = 301
        Width = 26
        FrameColor = 7617536
        Caption = 'S'
        Color = 15791348
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 28
        OnClick = btn_TsClick
      end
      object edt_signer: TcxDBLookupComboBox
        Left = 318
        Top = 361
        MoveEnter = True
        DataBinding.DataField = 'Signer'
        DataBinding.DataSource = dsMst
        Properties.KeyFieldNames = 'USR_SEQ'
        Properties.ListColumns = <
          item
            Caption = #51060#47492
            HeaderAlignment = taCenter
            FieldName = 'EMP'
          end
          item
            Caption = 'ID'
            HeaderAlignment = taCenter
            FieldName = 'USR_ID'
          end>
        Properties.ListSource = DBM.DSC_View_Usr_Bac_infoA
        Style.BorderColor = clWhite
        StyleFocused.Color = clBtnFace
        TabOrder = 65
        Width = 129
      end
      object pAddress: TRzPanel
        Left = 90
        Top = 230
        Width = 619
        Height = 150
        BorderInner = fsFlat
        BorderOuter = fsFlat
        BorderHighlight = clWhite
        BorderShadow = 13290186
        Color = clWindow
        FlatColorAdjustment = 0
        FrameController = RzFC
        TabOrder = 64
        Visible = False
        object cxLabel11: TRzLabel
          Left = 274
          Top = 12
          Width = 28
          Height = 13
          Caption = #44396#48516
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object cxLabel12: TRzLabel
          Left = 323
          Top = 11
          Width = 28
          Height = 13
          Caption = #48376#48264
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object cxLabel13: TRzLabel
          Left = 374
          Top = 11
          Width = 28
          Height = 13
          Caption = #48512#48264
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object RzLabel5: TRzLabel
          Left = 21
          Top = 11
          Width = 42
          Height = 13
          Caption = #49548#51116#51648
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object cxLabel17: TRzLabel
          Left = 504
          Top = 60
          Width = 14
          Height = 13
          Caption = #54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object cxLabel16: TRzLabel
          Left = 456
          Top = 60
          Width = 14
          Height = 13
          Caption = #52789
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object cxLabel15: TRzLabel
          Left = 405
          Top = 60
          Width = 14
          Height = 13
          Caption = #46041
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object RzLabel3: TRzLabel
          Left = 581
          Top = 20
          Width = 14
          Height = 13
          Caption = #13217
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          Visible = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object RzLabel4: TRzLabel
          Left = 20
          Top = 60
          Width = 42
          Height = 13
          Hint = #50500#54028#53944' '#46608#45716' '#49345#44032#51060#47492
          Caption = #44148#47932#47749
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object cxLabel57: TcxLabel
          Left = 631
          Top = 18
          Caption = #49464#45824
          ParentFont = False
          Style.Font.Charset = HANGEUL_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Visible = False
        end
        object Edt_Addr: TRzDBButtonEdit
          Left = 20
          Top = 27
          Width = 246
          Height = 21
          Hint = #52286#44256#51088' '#54616#45716' '#49548#51116#51648#51032' '#51021#47732#46041#47532#47484'  '#51077#47141#54980' Ctrl+Enter'#47484' '#52824#49464#50836'.'
          HelpType = htKeyword
          HelpKeyword = #49548#51116#51648#47484' '#51077#47141#54644' '#51452#49464#50836
          DataSource = dsMst
          DataField = 'ADDR'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOrder = 1
          OnKeyPress = Edt_AddrKeyPress
          AltBtnWidth = 15
          ButtonWidth = 15
          OnButtonClick = Edt_AddrButtonClick
        end
        object cxSan: TRzDBEdit
          Left = 273
          Top = 27
          Width = 47
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          HelpType = htKeyword
          HelpKeyword = #49548#51116#51648' '#44396#48516#51012' '#51077#47141#54644' '#51452#49464#50836'.'
          DataSource = dsMst
          DataField = 'SAN'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 2
          OnExit = cxSanExit
          OnKeyPress = cxSanKeyPress
        end
        object cxBUN1: TRzDBEdit
          Left = 332
          Top = 27
          Width = 52
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          HelpType = htKeyword
          HelpKeyword = #48376#48264#51012' '#51077#47141#54616#49464#50836
          DataSource = dsMst
          DataField = 'BUN1'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 3
          OnExit = cxBUN1Exit
        end
        object cxBUN2: TRzDBEdit
          Left = 391
          Top = 27
          Width = 52
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          HelpType = htKeyword
          HelpKeyword = #48512#48264#51012' '#51077#47141#54616#49464#50836
          DataSource = dsMst
          DataField = 'BUN2'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 4
          OnExit = cxBUN2Exit
        end
        object cxAptName: TRzDBEdit
          Left = 19
          Top = 74
          Width = 380
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          DataSource = dsMst
          DataField = 'Building'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 6
          OnExit = cxSanExit
        end
        object cxDONG: TRzDBEdit
          Left = 403
          Top = 74
          Width = 49
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          DataSource = dsMst
          DataField = 'Dong'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 7
          OnExit = cxSanExit
        end
        object cxCHUNG: TRzDBEdit
          Left = 457
          Top = 74
          Width = 45
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          DataSource = dsMst
          DataField = 'Floor'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 8
          OnExit = cxSanExit
        end
        object cxHO: TRzDBEdit
          Left = 505
          Top = 74
          Width = 49
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          DataSource = dsMst
          DataField = 'Ho'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 9
          OnExit = cxSanExit
        end
        object RzDBEdit1: TRzDBEdit
          Left = 582
          Top = 33
          Width = 43
          Height = 21
          DataSource = dsMst
          DataField = 'AddrPyoung'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 15
          Visible = False
          OnExit = cxSanExit
        end
        object RzDBEdit2: TRzDBEdit
          Left = 631
          Top = 34
          Width = 43
          Height = 21
          DataSource = dsMst
          DataField = 'Inventory'
          Alignment = taRightJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 16
          Visible = False
          OnExit = cxSanExit
        end
        object btnJunSearch: TRzButton
          Left = 420
          Top = 111
          Width = 94
          Hint = #54217#44032#54620' '#51204#47168#47484' '#54869#51064#54633#45768#45796'('#48376#48264#44620#51648' '#51077#47141#46104#50632#51012' '#44221#50864' '#51068#52824#54616#45716' '#51088#47308#44032' '#50630#51004#47732' '#46888#51648' '#50506#49845#45768#45796'.)'
          FrameColor = 7617536
          Caption = #51088#52404' '#44160#49353'(&T)'
          Color = 15791348
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 14
          OnClick = btnJunSearchClick
        end
        object btnAddrClose: TRzButton
          Left = 520
          Top = 111
          Width = 90
          Hint = #49548#51116#51648#47484' '#51200#51109#54633#45768#45796'.'
          FrameColor = 7617536
          Caption = #54869#51064'(&L)'
          Color = 15791348
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 12
          OnClick = btnAddrCloseClick
        end
        object cxAddrEtc: TRzDBCheckBox
          Left = 458
          Top = 28
          Width = 37
          Height = 17
          Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#49892#51201#48372#44256' '#44032#45733#54616#44172' '#54633#45768#45796'.'
          DataField = 'AddrEtc'
          DataSource = dsMst
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = #50808
          DisabledColor = clWindow
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          HotTrack = True
          HotTrackColor = clBtnShadow
          HotTrackStyle = htsFrame
          ParentFont = False
          TabOnEnter = True
          TabOrder = 5
          OnExit = cxSanExit
        end
        object RzDBCheckBox2: TRzDBCheckBox
          Left = 565
          Top = 73
          Width = 37
          Height = 17
          Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#49892#51201#48372#44256' '#44032#45733#54616#44172' '#54633#45768#45796'.'
          DataField = 'BuildingEtc'
          DataSource = dsMst
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = #50808
          DisabledColor = clWindow
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          HotTrack = True
          HotTrackColor = clBtnShadow
          HotTrackStyle = htsFrame
          ParentFont = False
          TabOnEnter = True
          TabOrder = 10
          OnExit = cxSanExit
        end
        object RzButton1: TRzButton
          Left = 305
          Top = 111
          Width = 112
          FrameColor = 7617536
          Action = aKapaJundb
          Color = 15791348
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 13
        end
        object RzDBEdit9: TRzDBEdit
          Left = 18
          Top = 105
          Width = 212
          Height = 21
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          DataSource = dsMst
          DataField = 'hoetc'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 11
          OnExit = cxSanExit
        end
      end
      object Edit_Seq: TEdit
        Left = 700
        Top = 4
        Width = 121
        Height = 21
        TabOrder = 66
        Visible = False
      end
    end
    object pan_DocID: TRzPanel
      Left = 52
      Top = 71
      Width = 328
      Height = 32
      BorderInner = fsFlat
      BorderOuter = fsFlat
      ParentColor = True
      TabOrder = 2
      Visible = False
      object EdtDocID: TRzEdit
        Left = 8
        Top = 6
        Width = 172
        Height = 20
        FrameController = RzFC
        ImeName = 'Microsoft Office IME 2007'
        TabOnEnter = True
        TabOrder = 0
      end
      object RzButton4: TRzButton
        Left = 239
        Top = 4
        Width = 41
        Height = 26
        FrameColor = 7617536
        Caption = #54869#51064
        Color = 15791348
        HotTrack = True
        TabOrder = 1
        OnClick = RzButton4Click
      end
      object RzButton5: TRzButton
        Left = 279
        Top = 4
        Width = 41
        Height = 26
        FrameColor = 7617536
        Caption = #52712#49548
        Color = 15791348
        HotTrack = True
        TabOrder = 2
        OnClick = RzButton5Click
      end
      object chk_auto: TRzCheckBox
        Left = 185
        Top = 5
        Width = 47
        Height = 25
        AlignmentVertical = avCenter
        Caption = #51088#46041#48512#50668
        Checked = True
        DisabledColor = clWindow
        FrameController = RzFC
        HotTrack = True
        HotTrackColor = clBtnShadow
        HotTrackStyle = htsFrame
        State = cbChecked
        TabOrder = 3
        OnClick = chk_autoClick
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 0
      Width = 748
      Height = 41
      Alignment = taRightJustify
      BevelOuter = bvNone
      TabOrder = 0
      object cxLabel8: TRzLabel
        Left = 5
        Top = 17
        Width = 96
        Height = 12
        Caption = #44048#51221#49436#48264#54840#47196#52286#44592
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel7: TRzLabel
        Left = 293
        Top = 17
        Width = 48
        Height = 12
        Caption = #54788#51116#49345#53468
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel1: TRzLabel
        Left = 449
        Top = 17
        Width = 48
        Height = 12
        Caption = #51652#54665#49345#53468
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object TBToolbar: TTBToolbar
        Left = 8
        Top = 41
        Width = 24
        Height = 6
        Caption = 'TBToolbar'
        TabOrder = 0
        Visible = False
        object TBXItem4: TTBXItem
          Caption = 'DataSetFirst1'
          ImageIndex = 3
        end
        object TBXItem3: TTBXItem
          Caption = 'DataSetPrior1'
          ImageIndex = 4
        end
        object TBXItem2: TTBXItem
          Caption = 'DataSetNext1'
          ImageIndex = 5
        end
        object TBXItem1: TTBXItem
          Caption = 'DataSetLast1'
          ImageIndex = 6
        end
      end
      object Edt_Search: TRzEdit
        Left = 108
        Top = 13
        Width = 93
        Height = 20
        Hint = #44048#51221#49436#48264#54840', '#49548#50976#51088', '#52292#47924#51088', '#51032#47280#52376#47928#49436#48264#54840', '#49548#51116#51648' '#46321#51004#47196' '#44160#49353#54616#49892' '#49688' '#51080#49845#45768#45796'.'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
        OnEnter = Edt_SearchEnter
        OnKeyPress = Edt_SearchKeyPress
      end
      object RzPanel2: TRzPanel
        Left = 629
        Top = 0
        Width = 119
        Height = 41
        Align = alRight
        BorderOuter = fsNone
        TabOrder = 2
        object Btn_Help: TRzBitBtn
          Left = 75
          Top = 2
          Width = 38
          Height = 38
          FrameColor = 7617536
          Action = aHelp
          Caption = 'aHelp'
          Color = 15791348
          HotTrack = True
          TabOrder = 0
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF00C6C5C900BCBBBF00FF00FF00F6F4F600DCDADC00FFFEFF00C7C4C600BBB7
            B800E5E1E200B5AFB000B1ABAC00D1CBCC00CCC6C700BBB1B100C0B7B700ABA3
            A300D0C9C900C6C1C100FCF8F800F0EDED00F4F2F200FFFEFE00F0EFEF00ABA0
            9F00ADA09E00FAF4F300B6A7A400F4EFEE00D7CECC00C9B1AA00AD9E9A00E9E2
            E000C4ABA300BCACA700C1B1AC00B8A39C00D3C4BF00F3E3DD00DACBC600E9DD
            D900E5D9D500F8F0ED00FEF8F600FEFBFA00BB441400BA431400BC451500BD47
            1600BC471600BF471700BB451600BB461700BC471800BC481800BF4A1900BD4A
            1A00BC4A1A00BD4C1D00BF4D1E00BF4E1F00DAB8AA00E2C2B500E6C7BA00D3BB
            B100EBD3C900EBD5CC00BF4C1B00BD4C1C00C1501F00BF4F1F00C2532000C051
            2100C1522300C2552400C1542500C4582700C55A2800C4592800C55C2D00C45B
            2D00C0582C00C45C2F00C6603300C9663900C9673B00C2643A00CB6D4200C268
            3F00C26A4200D0795100CA7D5900C1775500C27A5900CF937700C1897000C595
            8000D5A79200DEB7A500E1BAA900E0BAA900E1BCAB00E0BBAA00DCB7A700D1AF
            9F00E1BCAC00D8B5A500DDBAAA00DAB8A900E2BFB000E3C1B200E2C0B100D1B2
            A400E5C5B600E6C6B800E1C4B700E7CBBF00E6CCC100E7CFC400F3E2DA00F7E7
            E000F7EEEA00FAF3F000C75D2600C65C2800C65C2A00C65D2A00C75F2B00C760
            2D00C7623000CA653100CC724700CF764900D17D5300D07D5400D17E5600CF7F
            5900C47D5B00D88C6800D78F6C00CF896800D18B6A00DC987700DD997800D89F
            8200C79C8700DCB8A700D3B4A500EFCFBF00E3C4B500F2D5C600F2DDD300F2E2
            DA00F3E5DE00FAF2EE00FEFAF800FEFCFB00F6F4F300C9622C00C9642F00CA65
            3000CC6A3200CA663100CE6C3500CB693400CC6B3600CE6D3800CE6F3800CC6D
            3700CF764600DE9F7D00E2A78800E3AD8E00E9C1AB00EBC4AF00E1BFAD00EFD1
            C100EDD7CB00F4E2D800F0E0D700FBF2ED00FAF3EF00CF6F3500CF723900CF72
            3B00D0733C00D1763D00D1773F00D3784100D1794200D5825000E6B49600EBC4
            AD00F6E3D700FBF3EE00F3EBE600FCF7F400D0743900D47D4100D57E4500D988
            5300D98A5400DA8E5900DA916200E2A47B00EEC9B000F3E9E200FCF6F200D986
            4600D8864C00DA8B4F00E19D6B00EBC1A300F0D0B800DD8E4D00E3A67300E7B5
            8B00EABA9100EABC9800EDC4A400EEC6A600F0CFB400F0D0B700F8E7D900E098
            5900EBBC9300F6DDC600F6E2D000E3A36600E6AB7200EAB78600EBBC8E00EDC2
            9900EEC59D00EFCAA600F2D1B000F2D4B700F8F6F400F4D9BC00F6E1CA00FCFA
            F700FCFFFF00FAFEFF00F6FAFB00EFF2F300E3E5E600EDF2F700EAEFF400F6F8
            FA00F3F8FE00DEE2E700E5E7ED00D3D4D8000000000000000000040404040404
            040465656C6C6D93650404040404040404040404040404046774281E1213100F
            2322710404040404040404040404653F29F6F6FB060D0E02030C19256B040404
            0404040404637515F5F72A625C595A8A612409112071040404040404657605F4
            189153324AAC9044385260090C1A94040404040496EEF39E8930392E90010188
            3544385D100B1C6804040465CFF2F28C343C3D365BB579563A3D3C335E130F1F
            640404751701AE393B3D3D3D3C5554453D3D3D3C399202103E046578019C8546
            4A473C378FB19555393D3D3D385712084165667B0197817F4F4B4934AD010187
            2F3D3D3D3C3C69FD26656F9D01C09FA3817E4D448B01019751343D3D3D325FFB
            1E65401701ADA2A7A5A1814E509501019884363D3D328DFC0665731701D9C6BC
            B9A9A5837D82AF0101C587363D308EF80A65702D01DCC7C8BDBAA4A6A5807FC0
            0701B34C453091FA2165679B01E4D3D2D2C9CCBEA8A6A07DC1010186323B72FA
            296504B4019DD8D1DD2C9DCDB7BAA77CAC01018B315816F9770404731701E3D7
            E20101E0CBBBB8BFC2019CAA48AEF21DB0040404270101EAE1E00101C3D6DFC3
            0101CE7CABF2F243040404046ED00117E8E5F001010101019DCEBDCD9D01C467
            040404040440F10117ECE6E7EBEDDEDBD4CAD50101B67004040404040404407B
            0101D0EFE9E8D9DADFD001017A6F0404040404040404046E9A9D010101010101
            010114986704040404040404040404040472B29A2B1B1B7A99426F0404040404
            040404040404040404040463676A666566040404040404040404}
        end
      end
      object pnLockStat: TRzEdit
        Left = 348
        Top = 13
        Width = 93
        Height = 20
        Hint = #44048#51221#49436#48264#54840#47196' '#44160#49353#54616#49892' '#49688' '#51080#49845#45768#45796'.'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 3
        OnEnter = Edt_SearchEnter
        OnKeyPress = Edt_SearchKeyPress
      end
      object RzDBEdit3: TRzDBEdit
        Left = 500
        Top = 11
        Width = 200
        Height = 21
        DataSource = dsMst
        DataField = 'Lstatus'
        ReadOnly = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 4
      end
    end
    object pReceptBtns: TRzPanel
      Left = 2
      Top = 580
      Width = 831
      Height = 55
      BorderOuter = fsFlatRounded
      Color = clWhite
      TabOrder = 3
      object BTN_Print: TRzButton
        Tag = 5
        Left = 558
        Top = 4
        Width = 112
        FrameColor = 7617536
        Action = aPrint
        Color = 15791348
        HotTrack = True
        TabOrder = 0
      end
      object Btn_Save: TRzButton
        Tag = 6
        Left = 671
        Top = 5
        Height = 47
        FrameColor = 7617536
        Action = aSave
        Color = 15791348
        HotTrack = True
        TabOrder = 1
      end
      object Btn_Cancel: TRzButton
        Tag = 7
        Left = 748
        Top = 5
        Height = 47
        FrameColor = 7617536
        Action = aCancel
        Color = 15791348
        HotTrack = True
        TabOrder = 2
      end
      object Pan_iud: TRzPanel
        Left = 2
        Top = 2
        Width = 332
        Height = 51
        Align = alLeft
        BorderOuter = fsFlatRounded
        BorderSides = []
        Color = clWhite
        TabOrder = 3
        object Btn_New: TRzButton
          Tag = 1
          Left = 7
          Top = 2
          Height = 48
          FrameColor = 7617536
          Action = aNew
          Color = 15791348
          HotTrack = True
          TabOrder = 0
        end
        object Btn_Copy: TRzButton
          Tag = 2
          Left = 83
          Top = 2
          Height = 48
          FrameColor = 7617536
          Action = aCopy
          Color = 15791348
          HotTrack = True
          TabOrder = 1
        end
        object Btn_Edit: TRzButton
          Tag = 3
          Left = 159
          Top = 2
          Height = 48
          FrameColor = 7617536
          Action = aEdit
          Color = 15791348
          HotTrack = True
          TabOrder = 2
        end
        object Btn_Delete: TRzButton
          Tag = 4
          Left = 235
          Top = 2
          Width = 78
          Height = 48
          FrameColor = 7617536
          Action = aDelete
          Color = 15791348
          HotTrack = True
          TabOrder = 3
        end
      end
      object RzButton6: TRzButton
        Tag = 5
        Left = 482
        Top = 4
        FrameColor = 7617536
        Action = aOrderReport
        Color = 15791348
        HotTrack = True
        TabOrder = 4
      end
      object RzButton7: TRzButton
        Left = 482
        Top = 28
        Width = 188
        FrameColor = 7617536
        Action = aTkpOfKapaJunSearch
        Color = 15791348
        HotTrack = True
        TabOrder = 5
      end
      object Btn_Gong: TButton
        Left = 406
        Top = 4
        Width = 75
        Height = 49
        Caption = #44277#48512#48156#44553
        TabOrder = 6
        OnClick = Btn_GongClick
      end
      object Btn_HF: TRzButton
        Tag = 6
        Left = 330
        Top = 5
        Height = 47
        FrameColor = 7617536
        Action = aHF
        Color = 15791348
        HotTrack = True
        TabOrder = 7
      end
    end
    object Button3: TButton
      Left = 748
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 5
      Visible = False
      OnClick = Button3Click
    end
    object Panel1: TPanel
      Left = 384
      Top = 52
      Width = 297
      Height = 293
      Color = clActiveCaption
      TabOrder = 4
      Visible = False
      object Button1: TButton
        Left = 256
        Top = 12
        Width = 27
        Height = 25
        Caption = 'X'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 212
        Top = 252
        Width = 75
        Height = 25
        Caption = 'Send'
        TabOrder = 1
        OnClick = Button2Click
      end
      object cxLabel10: TcxLabel
        Left = 11
        Top = 43
        AutoSize = False
        Caption = #48155#45716#49324#46988
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15589586
        Height = 32
        Width = 78
      end
      object edit_tel: TcxTextEdit
        Left = 86
        Top = 43
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        TabOrder = 3
        Height = 32
        Width = 200
      end
      object cxLabel14: TcxLabel
        Left = 11
        Top = 72
        AutoSize = False
        Caption = #51228#47785
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15589586
        Height = 32
        Width = 78
      end
      object edit_Sub: TcxTextEdit
        Left = 86
        Top = 72
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        TabOrder = 5
        Height = 32
        Width = 200
      end
      object cxLabel18: TcxLabel
        Left = 11
        Top = 101
        AutoSize = False
        Caption = #45236#50857
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15589586
        Height = 146
        Width = 78
      end
      object memo_text: TcxMemo
        Left = 86
        Top = 101
        TabOrder = 7
        Height = 146
        Width = 200
      end
    end
  end
  object dsMst: TDataSource
    AutoEdit = False
    DataSet = QRMst
    OnStateChange = dsMstStateChange
    OnDataChange = dsMstDataChange
    Left = 588
    Top = 505
  end
  object RzFC: TRzFrameController
    DisabledColor = clWindow
    FlatButtons = False
    FrameHotStyle = fsFlat
    FrameHotTrack = True
    FrameVisible = True
    Left = 672
    Top = 464
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 728
    Top = 520
    object cxEven: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxOdd: TcxStyle
      AssignedValues = [svColor]
      Color = 16768949
    end
    object cxFooter: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clInactiveCaptionText
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxHeader: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientInactiveCaption
    end
    object cxBold: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clHotLight
    end
    object cxInactive: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clHighlight
      TextColor = clWhite
    end
    object cxSelection: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 397
    Top = 544
  end
  object frxReport1: TfrxReport
    Version = '3.23.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #44592#48376#44050
    ReportOptions.CreateDate = 38904.399601956000000000
    ReportOptions.LastChange = 43790.677380138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo136OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if (<frDbSet_Detail."Office"> <> '#39'10'#39') then'
      '   begin'
      '   memo136.text := '#39#51648#49324#51109#39';'
      '   end'
      '   else'
      '     begin'
      '     memo136.visible := false;'
      '     memo8.visible := false;'
      '     end;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  I:Integer;'
      'begin'
      ''
      ' I := 0;'
      '     if copy(<frDbSet_Detail."DocID">,9,1) = '#39'3'#39'  then'
      '     begin'
      ''
      '       if Pos('#39#44397#48124#51008#54665#39',<frDbSet_Detail."CustName">) > 0 then'
      '       Begin'
      ''
      '         if (datetostr(date) <= '#39'2019-11-29'#39') Then'
      '         Begin'
      ''
      
        '           showmessage('#39#44397#48124#51008#54665' '#54788#51109' '#51312#49324#49436' '#52572#49888#51064#51648' '#54869#51064' '#48512#53441#46300#47549#45768#45796'. ('#52572#49888#50577#49885#51064' '#44221#50864' '#44405#51008 +
        #49353' '#53580#46160#47532#44032' '#51080#49845#45768#45796'.)'#39');'
      ''
      '         End;'
      ''
      '         page4.Visible := True;'
      '         page3.Visible := False;'
      ''
      '       end'
      '       Else'
      '       Begin'
      ''
      '         page3.Visible := True;'
      '         page4.Visible := False;'
      ''
      '       End;'
      ''
      '          //  page3.visible := true;'
      '     end;'
      '{     for I := 1 to Length(<frDbSet_Detail."CustName">) do begin'
      '      if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#44592#50629#39') then'
      '        begin'
      '          page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#44397#48124#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#49888#54620#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#50808#54872#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#49688#52636#51077#39') ' +
        'then'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#45453#54801#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#54616#45208#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#50864#47532#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,4) = '#39#49688#54801#39') t' +
        'hen'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,8) = '#39#45453#50629#54801#46041#39')' +
        ' then'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '       else  if  (copy(<frDbSet_Detail."CustName">,I,8) = '#39#48512#49328#51008#54665#39 +
        ') then'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '         else  if  (copy(<frDbSet_Detail."CustName">,I,14) = '#39#54620#44397 +
        #49688#52636#51077#51008#54665#39') then'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,6) = '#39#49688#49328#50629#39') ' +
        'then'
      '        begin'
      '           page3.visible := true;'
      '        end'
      
        '      else  if  (copy(<frDbSet_Detail."CustName">,I,6) = '#39#52629#49328#50629#39') ' +
        'then'
      '        begin'
      '           page3.visible := true;'
      '        end;'
      '      end;'
      '    }'
      ' if (<frDbSet_Detail."Office"> = '#39'10'#39') then'
      '   begin'
      '   memobon.visible :=  true;'
      '   end'
      '   else'
      '     begin'
      '     memojisa.visible :=  true;'
      '     end;'
      ''
      '  /// '#45208#54788#52268' '#52628#44032' 20111005'
      '  // if (<frDbSet_Detail."Office"> = '#39'10'#39') then'
      '        if copy(<frDbSet_Detail."DocID">,9,1) = '#39'5'#39'  then'
      '            begin'
      '             memo46.visible := true ;'
      '              memo1.visible := false;'
      '            end'
      '          else'
      '           begin'
      '            memo46.visible := false ;'
      '            memo1.visible := true;'
      ''
      '           end;'
      ''
      '//    if (<frDbSet_Detail."Office"> <> '#39'10'#39') then'
      ' //  begin'
      ' //       memo46.visible := false ;'
      ' //       memo1.visible := true;'
      '//   end'
      ''
      ''
      '// '#45208#54788#52268' '#52628#44032' '#45149
      ''
      ''
      'end;'
      ''
      'procedure Memo8OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<frDbSet_Detail."Office"> = '#39'17'#39') then'
      '   begin'
      '    //    memo8.lines.add('#39'   '#39');'
      '     memo8.text := '#39#51204#44208#39';'
      '   end;'
      'end;'
      ''
      'procedure Memo140OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '// '#51217#49688' '#51060#54788#55148' '#44284#51109' '#50836#52397
      '{  if (<frDbSet_Detail."price"> = 0 ) then'
      '  memo140.text := '#39#39
      '  else'
      
        '   memo140.text := '#39'\'#39' + formatfloat('#39'#,##'#39',<frDbSet_Detail."pri' +
        'ce">);   }'
      'end;'
      ''
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      if (<frDbSet_Detail."Office"> <> '#39'10'#39') then'
      '   begin'
      '   memo6.text := '#39#52509'  '#47924#39';'
      '   end'
      '   else'
      '     begin'
      '     memo6.text := '#39#52509#47924#51060#49324#39';'
      '     end;'
      'end;'
      ''
      'procedure memobonOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      
        'function gm_Rtn_ReplaceStr(SourceStr, OldStr, NewStr:String):Str' +
        'ing;'
      'var'
      '   intPos : Integer;'
      'begin'
      '   intPos := pos(OldStr, SourceStr) ;'
      '   while intPos <> 0 do begin'
      '      SourceStr := Copy(SourceStr,1,intPos -1) + NewStr +'
      '                   Copy(SourceStr, intPos + Length(OldStr),'
      
        '                        Length(SourceStr) - intPos + Length(OldS' +
        'tr)-1);'
      ''
      '      intPos := pos(OldStr, SourceStr) ;'
      '   end;'
      '   result := SourceStr;'
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  I : Integer;'
      'begin'
      '  //////'
      '  I := 0;'
      ''
      ' for  I := 1 to Length(<frDbSet_Detail."CustName">) do begin'
      '    if (copy(<frDbSet_Detail."CustName">,I,8) = '#39#49888#54620#51008#54665#39') then'
      '    begin'
      '       if (<frDbSet_Detail2."LPurpose"> = '#39#44277#46041#51452#53469#44032#44201' '#51088#47928#39') then'
      '       begin'
      
        '         Memo44.text := '#39#8251#49888#54620#51008#54665#51008' '#51032#47280#51068#47196#48512#53552' 1'#51068#50504#50640' '#48156#49569' '#52376#47532' '#48148#46989#45768#45796'.'#39'+ #13 + ' +
        '<frDbSet_Detail."Bigo">;'
      '         Exit;'
      '       end'
      '       else'
      '       begin'
      
        '         Memo44.text := '#39#8251#49888#54620#51008#54665#51008' '#51032#47280#51068#47196#48512#53552' 3'#51068#50504#50640' '#48156#49569' '#52376#47532' '#48148#46989#45768#45796'.'#39'+ #13 + ' +
        '<frDbSet_Detail."Bigo">;'
      '         Exit;'
      '       end;'
      '    end'
      '    else'
      '    begin'
      '      Memo44.text := <frDbSet_Detail."Bigo">;'
      '    end;'
      '  end;'
      'end;'
      ''
      'procedure Memo171OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '       if (<frDbSet_Detail."Office"> = '#39'10'#39') then'
      '   begin'
      ''
      '       Memo171.Text := '#39'('#51452') '#45824' '#54868' '#44048' '#51221' '#54217' '#44032' '#48277' '#51064#39';'
      ''
      '   end'
      '   Else'
      '   Begin'
      ''
      
        '       Memo171.Text := '#39'('#51452') '#45824' '#54868' '#44048' '#51221' '#54217' '#44032' '#48277' '#51064' '#39' + <frDbSet_Detail2' +
        '."Loffice">;'
      ''
      '   End;'
      ''
      'end;'
      ''
      'procedure Memo162OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      
        '  Memo162.Text := gm_Rtn_ReplaceStr(<frDbSet_Detail."DocID">,'#39'-'#39 +
        ','#39#39');'
      ''
      'end;'
      ''
      'begin'
      ''
      ''
      'end.')
    Left = 217
    Top = 472
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frDbSet_Detail2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 15.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 867.511833000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        RowCount = 0
        object Memo44: TfrxMemoView
          Left = 94.488179210000000000
          Top = 737.007874020000000000
          Width = 624.000009760000000000
          Height = 90.708658980000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo41: TfrxMemoView
          Left = 94.488179210000000000
          Top = 668.814780000000000000
          Width = 109.606308980000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."lmanager"]')
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 94.488179210000000000
          Top = 37.795275590000000000
          Width = 396.850401020000000000
          Height = 37.795275590000000000
          DataField = 'Address'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[frDbSet_Detail."Address"]')
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 94.488179210000000000
          Width = 166.299222360000000000
          Height = 37.795275590000000000
          DataField = 'DocID'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."DocID"]')
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 491.338580240000000000
          Width = 71.811018740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Width = 94.488179210000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 340.216760000000000000
          Width = 151.181099920000000000
          Height = 37.795275590000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."ReceiptDate"]')
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 37.795275590000000000
          Width = 94.488179210000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '????'#63966#128)
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Top = 75.590551180000000000
          Width = 94.488179210000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 94.488179210000000000
          Top = 75.590551180000000000
          Width = 396.850401020000000000
          Height = 37.795275590000000000
          DataField = 'Title'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[frDbSet_Detail."Title"]')
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 491.338580240000000000
          Top = 188.976377950000000000
          Width = 71.811018740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 563.149598980000000000
          Top = 188.976377950000000000
          Width = 155.338590000000000000
          Height = 37.795275590000000000
          DataField = 'LPurpose'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."LPurpose"]')
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Top = 151.181102360000000000
          Width = 94.488179210000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 491.338580240000000000
          Top = 113.385826770000000000
          Width = 71.811018740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Top = 113.385826770000000000
          Width = 94.488179210000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 94.488179210000000000
          Top = 113.385826770000000000
          Width = 396.850401020000000000
          Height = 37.795275590000000000
          DataField = 'CustName'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[frDbSet_Detail."CustName"]')
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 94.488179210000000000
          Top = 151.181102360000000000
          Width = 166.299222360000000000
          Height = 37.795275590000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            
              '[<frDbSet_Detail."CustPart"> + '#39' '#39' + <frDbSet_Detail."CustCharge' +
              '">]')
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 563.149598980000000000
          Top = 113.385826770000000000
          Width = 155.338590000000000000
          Height = 37.795275590000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frDbSet_Detail."CustPhone">+'#39' '#39'+'
            '<frDbSet_Detail."CustChargeHP">]')
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 491.338580240000000000
          Top = 151.181102360000000000
          Width = 71.811018740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Top = 226.771653540000000000
          Width = 94.488179210000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '??????')
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 94.488179210000000000
          Top = 226.771653540000000000
          Width = 166.299222360000000000
          Height = 34.015748030000000000
          DataField = 'OwnerName'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."OwnerName"]')
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 563.149598980000000000
          Top = 151.181102360000000000
          Width = 155.338590000000000000
          Height = 37.795275590000000000
          DataField = 'LimitDate'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."LimitDate"]')
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 563.149598980000000000
          Width = 155.338590000000000000
          Height = 37.795275590000000000
          OnBeforePrint = 'Memo140OnBeforePrint'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          DisplayFormat.DecimalSeparator = '0'
          DisplayFormat.FormatStr = '#,##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 491.338580240000000000
          Top = 37.795275590000000000
          Width = 71.811018740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 563.149598980000000000
          Top = 37.795275590000000000
          Width = 155.338590000000000000
          Height = 37.795275590000000000
          DataField = 'LCategory'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."LCategory"]')
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 260.787401570000000000
          Width = 79.370078740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 491.338580240000000000
          Top = 75.590551180000000000
          Width = 71.811018740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 563.149598980000000000
          Top = 75.590551180000000000
          Width = 155.338590000000000000
          Height = 37.795275590000000000
          DataField = 'CustDocID'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."CustDocID"]')
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 340.157480310000000000
          Top = 151.181102360000000000
          Width = 151.181099920000000000
          Height = 37.795275590000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."RequestDate"]')
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 260.787401570000000000
          Top = 151.181102360000000000
          Width = 79.370078740000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Top = 188.976377950000000000
          Width = 94.488179210000000000
          Height = 37.795275590000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 94.488179210000000000
          Top = 188.976377950000000000
          Width = 396.850401020000000000
          Height = 37.795275590000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[frDbSet_Detail."Production"]')
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 260.787401570000000000
          Top = 226.771653540000000000
          Width = 79.370078740000000000
          Height = 34.015748031496100000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 340.157480310000000000
          Top = 226.771653540000000000
          Width = 151.181099920000000000
          Height = 34.015748030000000000
          DataField = 'Debtor'
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."Debtor"]')
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 491.338580240000000000
          Top = 226.771653540000000000
          Width = 71.811018740000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 563.149598980000000000
          Top = 226.771653540000000000
          Width = 155.338590000000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[<frDbSet_Detail."DebtrPhone"> +'#39' '#39'+ <frDbSet_Detail."DebtorHP">' +
              ']')
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Top = 260.566929130000000000
          Width = 94.488179210000000000
          Height = 204.094488190000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 94.488179210000000000
          Top = 260.566929130000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '??')
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 147.401565040000000000
          Top = 260.566929130000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '??')
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 200.370068980000000000
          Top = 260.566929130000000000
          Width = 518.118120000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 94.488250000000000000
          Top = 294.582677170000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 200.315090000000000000
          Top = 294.582677170000000000
          Width = 517.795610000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 147.401670000000000000
          Top = 294.582677170000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 94.488179210000000000
          Top = 328.598425200000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 200.314950870000000000
          Top = 328.598425200000000000
          Width = 518.118120000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 147.401565040000000000
          Top = 328.598425200000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 94.488179210000000000
          Top = 362.614173230000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 200.314950870000000000
          Top = 362.614173230000000000
          Width = 518.118120000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 147.401565040000000000
          Top = 362.614173230000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 94.488179210000000000
          Top = 396.629921260000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 200.314950870000000000
          Top = 396.629921260000000000
          Width = 518.118120000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 147.401565040000000000
          Top = 396.629921260000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 94.488179210000000000
          Top = 430.645669290000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 200.314950870000000000
          Top = 430.645669290000000000
          Width = 518.118120000000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 147.401565040000000000
          Top = 430.645669290000000000
          Width = 52.913385830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 94.488179210000000000
          Top = 464.661417320000000000
          Width = 83.149625830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 94.488179210000000000
          Top = 498.677165350000000000
          Width = 83.149625830000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 464.661417320000000000
          Width = 94.488179210000000000
          Height = 136.062992130000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Top = 600.814780000000000000
          Width = 204.094488190000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '?? ?? ??')
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 204.094488190000000000
          Top = 600.944881890000000000
          Width = 94.488188980000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 298.458213690000000000
          Top = 600.944881890000000000
          Width = 207.998479220000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 506.456692910000000000
          Top = 600.944881890000000000
          Width = 98.267716540000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 604.724409450000000000
          Top = 600.944881890000000000
          Width = 113.763779530000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 298.582677170000000000
          Top = 634.960629920000000000
          Width = 207.998479220000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 506.362204720000000000
          Top = 634.960629920000000000
          Width = 98.267716540000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 604.629921260000000000
          Top = 634.960629920000000000
          Width = 113.763779530000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 298.582677170000000000
          Top = 668.976377950000000000
          Width = 207.998479220000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 506.362204720000000000
          Top = 668.976377950000000000
          Width = 98.267716540000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 604.629921260000000000
          Top = 668.976377950000000000
          Width = 113.763779530000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          DisplayFormat.DecimalSeparator = '#,##'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."Chaksugum"]')
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 298.582677170000000000
          Top = 702.992125980000000000
          Width = 207.998479220000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 506.362204720000000000
          Top = 702.992125980000000000
          Width = 98.267716540000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 604.629921260000000000
          Top = 702.992125980000000000
          Width = 113.763779530000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."Ts_MasterID"]')
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 634.960629920000000000
          Width = 94.488179210000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 94.488179210000000000
          Top = 634.960629920000000000
          Width = 109.606308980000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."Manager"]')
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 668.814780000000000000
          Width = 94.488179210000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Top = 702.814780000000000000
          Width = 94.488179210000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 94.488179210000000000
          Top = 702.814780000000000000
          Width = 109.606308980000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."Charge"]')
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 204.094488190000000000
          Top = 634.960629920000000000
          Width = 94.488188980000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 204.094488190000000000
          Top = 668.976377950000000000
          Width = 94.488188980000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 204.094488190000000000
          Top = 702.992125980000000000
          Width = 94.488188980000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 737.007874020000000000
          Width = 94.488179210000000000
          Height = 90.708658980000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object memobon: TfrxMemoView
          Left = 502.677490000000000000
          Top = 831.496600000000000000
          Width = 162.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'memobonOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 257.008040000000000000
          Top = 464.882190000000000000
          Width = 102.047275830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 359.055350000000000000
          Top = 464.882190000000000000
          Width = 105.826805830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 464.882190000000000000
          Top = 464.882190000000000000
          Width = 139.842575830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 604.724800000000000000
          Top = 464.882190000000000000
          Width = 113.385865830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 94.488250000000000000
          Top = 532.913730000000000000
          Width = 83.149625830000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 94.488250000000000000
          Top = 566.929500000000000000
          Width = 83.149625830000000000
          Height = 34.015748030000000000
          DataSet = frxDBDataset1
          DataSetName = 'frDbSet_Detail'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 177.637910000000000000
          Top = 464.882190000000000000
          Width = 79.370095830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 257.008040000000000000
          Top = 498.897960000000000000
          Width = 102.047275830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 257.008040000000000000
          Top = 532.913730000000000000
          Width = 102.047275830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 257.008040000000000000
          Top = 566.929500000000000000
          Width = 102.047275830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 359.055350000000000000
          Top = 498.897960000000000000
          Width = 105.826805830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 359.055350000000000000
          Top = 532.913730000000000000
          Width = 105.826805830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 359.055350000000000000
          Top = 566.929500000000000000
          Width = 105.826805830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 464.882190000000000000
          Top = 498.897960000000000000
          Width = 139.842575830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 464.882190000000000000
          Top = 532.913730000000000000
          Width = 139.842575830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 464.882190000000000000
          Top = 566.929500000000000000
          Width = 139.842575830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 604.724800000000000000
          Top = 498.897960000000000000
          Width = 113.385865830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 604.724800000000000000
          Top = 532.913730000000000000
          Width = 113.385865830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 604.724800000000000000
          Top = 566.929500000000000000
          Width = 113.385865830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 177.637910000000000000
          Top = 498.897960000000000000
          Width = 79.370095830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 177.637910000000000000
          Top = 532.913730000000000000
          Width = 79.370095830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 177.637910000000000000
          Top = 566.929500000000000000
          Width = 79.370095830000000000
          Height = 34.015748030000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object memojisa: TfrxMemoView
          Left = 553.000000000000000000
          Top = 832.991960000000000000
          Width = 162.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 176.976500000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 30.000000000000000000
          Top = 97.606335830000000000
          Width = 75.590551180000000000
          Height = 52.913385830000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail."LReceiptCharge"]')
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Top = 74.929170470000000000
          Width = 30.236220470000000000
          Height = 75.590551180000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '??'
            ''
            '??')
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 30.000000000000000000
          Top = 74.929170470000000000
          Width = 75.590556060000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '?? ??')
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 105.500000000000000000
          Top = 97.606335830000000000
          Width = 75.590551180000000000
          Height = 52.913385830000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 105.500000000000000000
          Top = 74.929170470000000000
          Width = 75.590556060000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 181.000000000000000000
          Top = 97.606335830000000000
          Width = 75.590551180000000000
          Height = 52.913385830000000000
          OnBeforePrint = 'Memo8OnBeforePrint'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 181.000000000000000000
          Top = 74.929170470000000000
          Width = 75.590556060000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo136OnBeforePrint'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 371.114410000000000000
          Top = 97.606335830000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo10: TfrxMemoView
          Left = 341.000000000000000000
          Top = 74.929170470000000000
          Width = 30.236220470000000000
          Height = 75.590551180000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            ''
            ''
            '')
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 371.114410000000000000
          Top = 74.929170470000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 439.000000000000000000
          Top = 97.606335830000000000
          Width = 68.031496060000000000
          Height = 52.913385830000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 439.000000000000000000
          Top = 74.929170470000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 507.000000000000000000
          Top = 97.606335830000000000
          Width = 68.031496060000000000
          Height = 52.913385830000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo15: TfrxMemoView
          Left = 507.000000000000000000
          Top = 74.929170470000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 575.000000000000000000
          Top = 97.606335830000000000
          Width = 68.031496060000000000
          Height = 52.913385830000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo137: TfrxMemoView
          Left = 575.000000000000000000
          Top = 74.929170470000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 643.020100000000000000
          Top = 97.606370000000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo139: TfrxMemoView
          Left = 643.020100000000000000
          Top = 74.929190000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 377.953000000000000000
          Height = 32.295300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          Left = 185.000000000000000000
          Top = 39.543290000000000000
          Width = 353.000000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line6: TfrxLineView
          Left = 185.000000000000000000
          Top = 42.543290000000000000
          Width = 353.000000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo46: TfrxMemoView
          Align = baCenter
          Left = 170.078850000000000000
          Top = 12.102350000000000000
          Width = 377.953000000000000000
          Height = 32.295300000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 27.700000000000000000
      PrintOnPreviousPage = True
      object Header1: TfrxHeader
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo116: TfrxMemoView
          Align = baCenter
          Left = 330.708875000000000000
          Top = 56.692950000000000000
          Width = 385.512060000000000000
          Height = 47.413420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 56.692876770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 60.472480000000000000
          Top = 154.960730000000000000
          Width = 113.385826770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 173.858380000000000000
          Top = 154.960730000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 510.236550000000000000
          Top = 154.960730000000000000
          Width = 283.464750000000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 359.055350000000000000
          Top = 154.960730000000000000
          Width = 151.181077950000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #23236#44245#50706#63971#49422#52344)
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 793.701300000000000000
          Top = 154.960730000000000000
          Width = 136.063006770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 929.764380000000000000
          Top = 154.960730000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 272.126160000000000000
          Top = 154.960730000000000000
          Width = 86.929116770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 1046.929810000000000000
      end
      object MasterData2: TfrxMasterData
        Height = 49.133890000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frDbSet_Detail2'
        RowCount = 0
        object Memo124: TfrxMemoView
          Left = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 49.133890000000000000
          DataField = 'Loffice'
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."Loffice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 60.472480000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          DataField = 'DocID'
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."DocID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 173.858380000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy-mm-dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."requestdate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 510.236550000000000000
          Width = 283.464750000000000000
          Height = 49.133890000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 359.055350000000000000
          Width = 151.181200000000000000
          Height = 49.133890000000000000
          DataField = 'Custname'
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."Custname"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 793.701300000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '\[FormatFloat('#39'#,##'#39',<frDbSet_Detail2."price">)][iif(<frDbSet_De' +
              'tail2."price">=0,'#39'??'#39','#39' '#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 272.126160000000000000
          Width = 86.929190000000000000
          Height = 49.133890000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."LPurpose"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 929.764380000000000000
          Width = 117.165430000000000000
          Height = 49.133890000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frDbSet_Detail2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbSet_Detail2."Lstatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page3: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo190: TfrxMemoView
        Align = baCenter
        Left = 90.708720000000000000
        Top = 68.031540000000000000
        Width = 536.693260000000000000
        Height = 32.295300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo142: TfrxMemoView
        Left = 34.015770000000000000
        Top = 185.196970000000000000
        Width = 139.842610000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo143: TfrxMemoView
        Left = 188.976429210000000000
        Top = 234.330860000000000000
        Width = 181.417342360000000000
        Height = 56.692925590000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."CustDocID"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo144: TfrxMemoView
        Left = 56.692950000000000000
        Top = 234.330860000000000000
        Width = 132.283479210000000000
        Height = 56.692925590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo145: TfrxMemoView
        Left = 188.976429210000000000
        Top = 291.023810000000000000
        Width = 480.000212360000000000
        Height = 56.692925590000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."Address"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo146: TfrxMemoView
        Left = 56.692950000000000000
        Top = 291.023810000000000000
        Width = 132.283479210000000000
        Height = 56.692925590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '????'#63966#128)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo147: TfrxMemoView
        Left = 188.976429210000000000
        Top = 347.716760000000000000
        Width = 480.000212360000000000
        Height = 56.692925590000000000
        DataField = 'DocID'
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."DocID"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo148: TfrxMemoView
        Left = 56.692950000000000000
        Top = 347.716760000000000000
        Width = 132.283479210000000000
        Height = 56.692925590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo149: TfrxMemoView
        Left = 502.677419210000000000
        Top = 234.330860000000000000
        Width = 166.299222360000000000
        Height = 56.692925590000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."OwnerName"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo150: TfrxMemoView
        Left = 370.393940000000000000
        Top = 234.330860000000000000
        Width = 132.283479210000000000
        Height = 56.692925590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo151: TfrxMemoView
        Left = 37.795300000000000000
        Top = 468.661720000000000000
        Width = 158.740260000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo152: TfrxMemoView
        Left = 192.755959210000000000
        Top = 521.575140000000000000
        Width = 480.000212360000000000
        Height = 56.692925590000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          '             .          .          .')
        VAlign = vaCenter
      end
      object Memo153: TfrxMemoView
        Left = 60.472480000000000000
        Top = 521.575140000000000000
        Width = 132.283479210000000000
        Height = 56.692925590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo154: TfrxMemoView
        Left = 192.755959210000000000
        Top = 578.268090000000000000
        Width = 480.000212360000000000
        Height = 309.921435590000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          ''
          ''
          ''
          
            '                ????????:                                       ' +
            '               (??'
          ''
          ''
          ''
          ''
          ''
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo155: TfrxMemoView
        Left = 60.472480000000000000
        Top = 578.268090000000000000
        Width = 132.283479210000000000
        Height = 309.921435590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo156: TfrxMemoView
        Left = 192.755959210000000000
        Top = 888.189550000000000000
        Width = 480.000212360000000000
        Height = 94.488225590000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        VAlign = vaCenter
      end
      object Memo157: TfrxMemoView
        Left = 60.472480000000000000
        Top = 888.189550000000000000
        Width = 132.283479210000000000
        Height = 94.488225590000000000
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
    end
    object Page4: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo133: TfrxMemoView
        Align = baCenter
        Top = 45.354360000000000000
        Width = 718.110700000000000000
        Height = 32.295300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = #44404#47548
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo158: TfrxMemoView
        Left = 41.574830000000000000
        Top = 94.488279290000000000
        Width = 139.842610000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo160: TfrxMemoView
        Left = 37.795278030000000000
        Top = 117.165388500000000000
        Width = 158.740157480000000000
        Height = 52.157480310000000000
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo161: TfrxMemoView
        Left = 196.535435510000000000
        Top = 221.102396380000000000
        Width = 478.110236220000000000
        Height = 52.157480310000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."Address"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo162: TfrxMemoView
        Left = 510.236479210000000000
        Top = 117.165459290000000000
        Width = 164.409448820000000000
        Height = 52.157480310000000000
        OnBeforePrint = 'Memo162OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."DocID"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo163: TfrxMemoView
        Left = 377.953000000000000000
        Top = 117.165459290000000000
        Width = 132.283479210000000000
        Height = 52.157480310000000000
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo164: TfrxMemoView
        Left = 196.535489210000000000
        Top = 169.322839530000000000
        Width = 478.110236220000000000
        Height = 51.779527560000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."OwnerName"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo165: TfrxMemoView
        Left = 37.795300000000000000
        Top = 168.944916060000000000
        Width = 158.740157480000000000
        Height = 52.157480310000000000
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo166: TfrxMemoView
        Left = 41.574830000000000000
        Top = 332.598669290000000000
        Width = 158.740260000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo167: TfrxMemoView
        Left = 196.535435510000000000
        Top = 353.385860940000000000
        Width = 478.110236220000000000
        Height = 52.157480310000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo168: TfrxMemoView
        Left = 37.795278030000000000
        Top = 353.385860940000000000
        Width = 158.740157480000000000
        Height = 52.157480310000000000
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo169: TfrxMemoView
        Left = 196.535435510000000000
        Top = 405.543341260000000000
        Width = 478.110236220000000000
        Height = 287.244094490000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo170: TfrxMemoView
        Left = 37.795278030000000000
        Top = 405.543341260000000000
        Width = 158.740157480000000000
        Height = 287.244094490000000000
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          ''
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Picture4: TfrxPictureView
        Left = 585.827150000000000000
        Top = 907.087229290000000000
        Width = 56.692950000000000000
        Height = 45.354360000000000000
        DataField = 'sign'
      end
      object Memo171: TfrxMemoView
        Left = 49.133890000000000000
        Top = 812.598979290000000000
        Width = 612.283860000000000000
        Height = 26.456710000000000000
        OnBeforePrint = 'Memo171OnBeforePrint'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo172: TfrxMemoView
        Left = 41.574830000000000000
        Top = 725.669789290000000000
        Width = 612.283860000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo173: TfrxMemoView
        Left = 37.795300000000000000
        Top = 221.102396380000000000
        Width = 158.740157480000000000
        Height = 52.157480310000000000
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo174: TfrxMemoView
        Left = 45.354360000000000000
        Top = 279.685044250000000000
        Width = 612.283860000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo175: TfrxMemoView
        Left = 211.653680000000000000
        Top = 430.866449290000000000
        Width = 453.543600000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo176: TfrxMemoView
        Left = 260.787404020000000000
        Top = 502.677199530000000000
        Width = 139.842519690000000000
        Height = 68.031496060000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo177: TfrxMemoView
        Left = 400.630180000000000000
        Top = 502.677519290000000000
        Width = 151.181102360000000000
        Height = 68.031496060000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo178: TfrxMemoView
        Left = 551.811380000000000000
        Top = 502.677519290000000000
        Width = 109.606299210000000000
        Height = 68.031496060000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '(??')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo179: TfrxMemoView
        Left = 211.653680000000000000
        Top = 604.724829290000000000
        Width = 453.543600000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo180: TfrxMemoView
        Left = 211.653680000000000000
        Top = 650.079189290000000000
        Width = 453.543600000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          
            '(????:                                                          ' +
            '         )'
          ' ')
        ParentFont = False
      end
      object Memo181: TfrxMemoView
        Left = 41.574830000000000000
        Top = 699.213079290000000000
        Width = 612.283860000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '')
        ParentFont = False
      end
      object Memo182: TfrxMemoView
        Left = 356.409451260000000000
        Top = 903.307118350000000000
        Width = 102.047244090000000000
        Height = 52.913385830000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Color = clSilver
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo183: TfrxMemoView
        Left = 458.456692910000000000
        Top = 903.307118350000000000
        Width = 95.244094490000000000
        Height = 52.913385830000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."Manager"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo184: TfrxMemoView
        Left = 553.700789840000000000
        Top = 903.307118350000000000
        Width = 120.944881890000000000
        Height = 52.913385830000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '(??')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo159: TfrxMemoView
        Left = 196.535489210000000000
        Top = 117.165459290000000000
        Width = 181.417322830000000000
        Height = 52.157480310000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDbSet_Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 2.000000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          '[frDbSet_Detail."CustDocID"]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frDbSet_Detail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MasterID=MasterID'
      'GUBUN=GUBUN'
      'DocID=DocID'
      'ReceiptDate=ReceiptDate'
      'RequestDate=RequestDate'
      'Priority=Priority'
      'LimitDate=LimitDate'
      'WorkInfo=WorkInfo'
      'Purpose=Purpose'
      'Category=Category'
      'Inventory=Inventory'
      'ReceiptCharge=ReceiptCharge'
      'CustID=CustID'
      'CustName=CustName'
      'Production=Production'
      'CustPart=CustPart'
      'CustCharge=CustCharge'
      'CustPhone=CustPhone'
      'CustDocID=CustDocID'
      'OwnerName=OwnerName'
      'OwnerPhone=OwnerPhone'
      'Debtor=Debtor'
      'DebtrID=DebtrID'
      'DebtrPhone=DebtrPhone'
      'Title=Title'
      'Status=Status'
      'Bigo=Bigo'
      'Ts_MasterID=Ts_MasterID'
      'AddrEtc=AddrEtc'
      'AddrPyoung=AddrPyoung'
      'BuildingEtc=BuildingEtc'
      'BuildingPyoung=BuildingPyoung'
      'CustChargeHP=CustChargeHP'
      'DebtorHP=DebtorHP'
      'HouseCnt=HouseCnt'
      'RefType=RefType'
      'RefDocID=RefDocID'
      'SEQ=SEQ'
      'Row_ID=Row_ID'
      'REG=REG'
      'EUB=EUB'
      'SAN=SAN'
      'ADDR=ADDR'
      'BUN1=BUN1'
      'BUN2=BUN2'
      'Building=Building'
      'Dong=Dong'
      'Floor=Floor'
      'Ho=Ho'
      'BookingStr=BookingStr'
      'Locked=Locked'
      'Allocate=Allocate'
      'Judgment=Judgment'
      'ConductDate=ConductDate'
      'Result=Result'
      'ReturnReason=ReturnReason'
      'Part=Part'
      'Report=Report'
      'ReportDate=ReportDate'
      'SendDate=SendDate'
      'Sendman=Sendman'
      'SendMethod=SendMethod'
      'Deposit=Deposit'
      'price=price'
      'Commission=Commission'
      'Payment=Payment'
      'Complete=Complete'
      'SuSuSum=SuSuSum'
      'Tax=Tax'
      'Total=Total'
      'ToJiChk=ToJiChk'
      'ToJiMon=ToJiMon'
      'ToUseChk=ToUseChk'
      'ToUseMon=ToUseMon'
      'JiJukChk=JiJukChk'
      'JiJukMon=JiJukMon'
      'BuildChk=BuildChk'
      'BuildMon=BuildMon'
      'BuiPyoChk=BuiPyoChk'
      'BuiPyoMon=BuiPyoMon'
      'BuiJunChk=BuiJunChk'
      'BuiJunMon=BuiJunMon'
      'CadChk=CadChk'
      'CadMon=CadMon'
      'LandChk=LandChk'
      'LandMon=LandMon'
      'BuiDeungChk=BuiDeungChk'
      'BuiDeungMon=BuiDeungMon'
      'JipHapChk=JipHapChk'
      'JipHapMon=JipHapMon'
      'GongBuTotal=GongBuTotal'
      'Guid=Guid'
      'Reported=Reported'
      'Signer=Signer'
      'Signer_Act=Signer_Act'
      'Trans_Master=Trans_Master'
      'Add_Master=Add_Master'
      'Merge_Master=Merge_Master'
      'JudgCnt=JudgCnt'
      'JudgResult=JudgResult'
      'CustCategory1=CustCategory1'
      'YCode=YCode'
      'Jun_Master=Jun_Master'
      'Signer_Date=Signer_Date'
      'Judgment_Date=Judgment_Date'
      'Judgment_Op=Judgment_Op'
      'BookingSeq=BookingSeq'
      'Ratio=Ratio'
      'BookingCode=BookingCode'
      'Manager=Manager'
      'Charge=Charge'
      'ProcessCharge=ProcessCharge'
      'JudgCharge=JudgCharge'
      'SearchStartDate=SearchStartDate'
      'SearchEndDate=SearchEndDate'
      #49688#49688#47308#54633#44228'='#49688#49688#47308#54633#44228
      #50668#48708'='#50668#48708
      #47932#44148#51312#49324#48708'='#47932#44148#51312#49324#48708
      #53664#51648#51312#49324#48708'='#53664#51648#51312#49324#48708
      #44277#48512#48156#44553#48708'='#44277#48512#48156#44553#48708
      #44592#53440#49892#48708'='#44592#53440#49892#48708
      #53945#48324#50857#50669#48708'='#53945#48324#50857#50669#48708
      #47588#52636#44552#50529'='#47588#52636#44552#50529
      #52397#44396#44552#50529'='#52397#44396#44552#50529
      #51204#54364#47588#52636'='#51204#54364#47588#52636
      #51204#54364#48512#44032#49464'='#51204#54364#48512#44032#49464
      #52572#51333#51077#44552#51068'='#52572#51333#51077#44552#51068
      'Address=Address'
      'LSigner=LSigner'
      'LReceiptCharge=LReceiptCharge'
      'LWorkinfo=LWorkinfo'
      'LStatus=LStatus'
      'LCategory=LCategory'
      'LPurpose=LPurpose'
      'LOffice=LOffice'
      'LCustCategory=LCustCategory'
      'LockDate=LockDate'
      'LSendMan=LSendMan'
      'Client=Client'
      #54217#44032#50529'10='#54217#44032#50529'10'
      #54217#44032#50529'15='#54217#44032#50529'15'
      #50689#50629#44428#54217#44032#50529'='#50689#50629#44428#54217#44032#50529
      #44592#52488#49688#49688#47308'='#44592#52488#49688#49688#47308
      #48512#44032#44032#52824#49464'='#48512#44032#44032#52824#49464
      #49440#49688#44552'='#49440#49688#44552
      #51208#49324#44552#50529'='#51208#49324#44552#50529
      #51077#44552#54633#44228'='#51077#44552#54633#44228
      #48372#49688#52376#47532#44552#50529'='#48372#49688#52376#47532#44552#50529
      #48120#49688#44552'='#48120#49688#44552
      'ReturnMoney=ReturnMoney'
      'LTransOffice=LTransOffice'
      'LReceiveOffice=LReceiveOffice'
      'Receive_Master=Receive_Master'
      #47588#52636#52509#50529'='#47588#52636#52509#50529
      'GUBUN_CODE=GUBUN_CODE'
      'BUB_CD=BUB_CD'
      'ORD_HOI=ORD_HOI'
      'overDay=overDay'
      'Office=Office'
      'SA_NO=SA_NO'
      'Gubun_Name=Gubun_Name'
      'KapaJunPreReport_YN=KapaJunPreReport_YN'
      'hoetc=hoetc'
      'chaksugum=chaksugum'
      'lmanager=lmanager')
    DataSource = dsMst
    Left = 125
    Top = 524
  end
  object QRMst: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC SP_S_APW_MasterEx :nKind, :Docid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nKind'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Docid'
        ParamType = ptUnknown
      end>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    TableName = 
      'SP_I_APW_Master_Expand@MasterID=MstID;DocID=NewDocID;SEQ=SEQ;Boo' +
      'kingSeq=BookingSeq, SP_U_APW_Master_Expand, SP_D_APW_Master'
    OnResolveError = QRMstResolveError
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoCalcFields = False
    AutoFieldOrigins = mwaforAlways
    FieldDefs = <
      item
        Name = 'MasterID'
        DataType = ftLargeint
      end
      item
        Name = 'GUBUN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ReceiptDate'
        DataType = ftDateTime
      end
      item
        Name = 'RequestDate'
        DataType = ftDateTime
      end
      item
        Name = 'Priority'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LimitDate'
        DataType = ftDateTime
      end
      item
        Name = 'WorkInfo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Purpose'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Category'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Inventory'
        DataType = ftInteger
      end
      item
        Name = 'ReceiptCharge'
        DataType = ftInteger
      end
      item
        Name = 'CustID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CustName'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Production'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CustPart'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CustCharge'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CustPhone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CustDocID'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OwnerName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OwnerPhone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Debtor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DebtrID'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DebtrPhone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Bigo'
        DataType = ftString
        Size = 6000
      end
      item
        Name = 'Ts_MasterID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AddrEtc'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AddrPyoung'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BuildingEtc'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BuildingPyoung'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CustChargeHP'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DebtorHP'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'HouseCnt'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RefType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RefDocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SEQ'
        DataType = ftLargeint
      end
      item
        Name = 'Row_ID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'REG'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'EUB'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SAN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ADDR'
        DataType = ftString
        Size = 400
      end
      item
        Name = 'BUN1'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BUN2'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Building'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Dong'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'Floor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Ho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BookingStr'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Locked'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Allocate'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Judgment'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ConductDate'
        DataType = ftDateTime
      end
      item
        Name = 'Result'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ReturnReason'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Part'
        DataType = ftInteger
      end
      item
        Name = 'Report'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ReportDate'
        DataType = ftDateTime
      end
      item
        Name = 'SendDate'
        DataType = ftDateTime
      end
      item
        Name = 'Sendman'
        DataType = ftInteger
      end
      item
        Name = 'SendMethod'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Deposit'
        DataType = ftCurrency
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'Commission'
        DataType = ftCurrency
      end
      item
        Name = 'Payment'
        DataType = ftCurrency
      end
      item
        Name = 'Complete'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SuSuSum'
        DataType = ftCurrency
      end
      item
        Name = 'Tax'
        DataType = ftCurrency
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'ToJiChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ToJiMon'
        DataType = ftCurrency
      end
      item
        Name = 'ToUseChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ToUseMon'
        DataType = ftCurrency
      end
      item
        Name = 'JiJukChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'JiJukMon'
        DataType = ftCurrency
      end
      item
        Name = 'BuildChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BuildMon'
        DataType = ftCurrency
      end
      item
        Name = 'BuiPyoChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BuiPyoMon'
        DataType = ftCurrency
      end
      item
        Name = 'BuiJunChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BuiJunMon'
        DataType = ftCurrency
      end
      item
        Name = 'CadChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CadMon'
        DataType = ftCurrency
      end
      item
        Name = 'LandChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LandMon'
        DataType = ftCurrency
      end
      item
        Name = 'BuiDeungChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BuiDeungMon'
        DataType = ftCurrency
      end
      item
        Name = 'JipHapChk'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'JipHapMon'
        DataType = ftCurrency
      end
      item
        Name = 'GongBuTotal'
        DataType = ftCurrency
      end
      item
        Name = 'Guid'
        DataType = ftString
        Size = 46
      end
      item
        Name = 'Reported'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Signer'
        DataType = ftInteger
      end
      item
        Name = 'Signer_Act'
        DataType = ftInteger
      end
      item
        Name = 'Trans_Master'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Add_Master'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Merge_Master'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'JudgCnt'
        DataType = ftInteger
      end
      item
        Name = 'JudgResult'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CustCategory1'
        DataType = ftInteger
      end
      item
        Name = 'YCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Jun_Master'
        DataType = ftInteger
      end
      item
        Name = 'Signer_Date'
        DataType = ftDateTime
      end
      item
        Name = 'Judgment_Date'
        DataType = ftDateTime
      end
      item
        Name = 'Judgment_Op'
        DataType = ftInteger
      end
      item
        Name = 'BookingSeq'
        DataType = ftLargeint
      end
      item
        Name = 'Ratio'
        DataType = ftWord
      end
      item
        Name = 'BookingCode'
        DataType = ftInteger
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
        Name = 'ProcessCharge'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'JudgCharge'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'SearchStartDate'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SearchEndDate'
        DataType = ftString
        Size = 10
      end
      item
        Name = #49688#49688#47308#54633#44228
        DataType = ftCurrency
      end
      item
        Name = #50668#48708
        DataType = ftCurrency
      end
      item
        Name = #47932#44148#51312#49324#48708
        DataType = ftCurrency
      end
      item
        Name = #53664#51648#51312#49324#48708
        DataType = ftCurrency
      end
      item
        Name = #44277#48512#48156#44553#48708
        DataType = ftCurrency
      end
      item
        Name = #44592#53440#49892#48708
        DataType = ftCurrency
      end
      item
        Name = #53945#48324#50857#50669#48708
        DataType = ftCurrency
      end
      item
        Name = #47588#52636#44552#50529
        DataType = ftCurrency
      end
      item
        Name = #52397#44396#44552#50529
        DataType = ftCurrency
      end
      item
        Name = #51204#54364#47588#52636
        DataType = ftInteger
      end
      item
        Name = #51204#54364#48512#44032#49464
        DataType = ftInteger
      end
      item
        Name = #52572#51333#51077#44552#51068
        DataType = ftDateTime
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 512
      end
      item
        Name = 'LSigner'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LReceiptCharge'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LWorkinfo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LStatus'
        DataType = ftString
        Size = 42
      end
      item
        Name = 'LCategory'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LPurpose'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LOffice'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LCustCategory'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LockDate'
        DataType = ftDateTime
      end
      item
        Name = 'Client'
        DataType = ftString
        Size = 40
      end
      item
        Name = #54217#44032#50529'10'
        DataType = ftCurrency
      end
      item
        Name = #54217#44032#50529'15'
        DataType = ftCurrency
      end
      item
        Name = #50689#50629#44428#54217#44032#50529
        DataType = ftCurrency
      end
      item
        Name = #44592#52488#49688#49688#47308
        DataType = ftCurrency
      end
      item
        Name = #48512#44032#44032#52824#49464
        DataType = ftCurrency
      end
      item
        Name = #49440#49688#44552
        DataType = ftFloat
      end
      item
        Name = #51208#49324#44552#50529
        DataType = ftCurrency
      end
      item
        Name = #51077#44552#54633#44228
        DataType = ftFloat
      end
      item
        Name = #48372#49688#52376#47532#44552#50529
        DataType = ftFloat
      end
      item
        Name = #48120#49688#44552
        DataType = ftFloat
      end
      item
        Name = 'ReturnMoney'
        DataType = ftInteger
      end
      item
        Name = 'LTransOffice'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LReceiveOffice'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Receive_Master'
        DataType = ftString
        Size = 30
      end
      item
        Name = #47588#52636#52509#50529
        DataType = ftCurrency
      end
      item
        Name = 'GUBUN_CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'BUB_CD'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ORD_HOI'
        DataType = ftInteger
      end
      item
        Name = 'overDay'
        DataType = ftInteger
      end
      item
        Name = 'Office'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SA_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Gubun_Name'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'KapaJunPreReport_YN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'hoetc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'chaksugum'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SYNCLEVEL'
        DataType = ftWord
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
    Left = 552
    Top = 500
    object QRMstMasterID: TLargeintField
      DisplayLabel = #51217#49688#48264#54840
      FieldName = 'MasterID'
      Origin = 'dbo.APW_Master.MasterID'
    end
    object QRMstGUBUN: TStringField
      Tag = 1
      DisplayLabel = #51217#49688#44396#48516
      FieldName = 'GUBUN'
      Origin = 'dbo.APW_Master.GUBUN'
      Size = 1
    end
    object QRMstDocID: TStringField
      Tag = 1
      DisplayLabel = #44048#51221#49436#48264#54840
      FieldName = 'DocID'
      Origin = 'dbo.APW_Master.DocID'
      OnGetText = QRMstDocIDGetText
      Size = 30
    end
    object QRMstReceiptDate: TDateTimeField
      Tag = 1
      DisplayLabel = #51217#49688#51068#51088
      FieldName = 'ReceiptDate'
      Origin = 'dbo.APW_Master.ReceiptDate'
    end
    object QRMstRequestDate: TDateTimeField
      Tag = 1
      DisplayLabel = #51032#47280#51068#51088
      FieldName = 'RequestDate'
      Origin = 'dbo.APW_Master.RequestDate'
    end
    object QRMstPriority: TStringField
      Tag = 1
      DisplayLabel = #50864#49440#49692#50948
      FieldName = 'Priority'
      Origin = 'dbo.APW_Master.Priority'
      Size = 1
    end
    object QRMstLimitDate: TDateTimeField
      Tag = 1
      DisplayLabel = #52376#47532#44592#54620
      FieldName = 'LimitDate'
      Origin = 'dbo.APW_Master.LimitDate'
    end
    object QRMstWorkInfo: TStringField
      Tag = 1
      DisplayLabel = #50629#47924#44396#48516#53076#46300
      FieldName = 'WorkInfo'
      Origin = 'dbo.APW_Master.WorkInfo'
      Size = 2
    end
    object QRMstPurpose: TStringField
      Tag = 1
      DisplayLabel = #54217#44032#47785#51201#53076#46300
      FieldName = 'Purpose'
      Origin = 'dbo.APW_Master.Purpose'
      Size = 2
    end
    object QRMstCategory: TStringField
      Tag = 1
      DisplayLabel = #47932#44148#51333#47448#53076#46300
      FieldName = 'Category'
      Origin = 'dbo.APW_Master.Category'
      Size = 2
    end
    object QRMstInventory: TIntegerField
      DisplayLabel = #47932#44148#49688
      FieldName = 'Inventory'
      Origin = 'dbo.APW_Master.Inventory'
    end
    object QRMstReceiptCharge: TIntegerField
      Tag = 1
      DisplayLabel = #51217#49688#51088#53076#46300
      FieldName = 'ReceiptCharge'
      Origin = 'dbo.APW_Master.ReceiptCharge'
    end
    object QRMstCustID: TStringField
      Tag = 1
      DisplayLabel = #44144#47000#52376#53076#46300
      FieldName = 'CustID'
      Origin = 'dbo.APW_Master.CustID'
      Size = 6
    end
    object QRMstCustName: TStringField
      Tag = 1
      DisplayLabel = #44144#47000#52376#47749
      FieldName = 'CustName'
      Origin = 'dbo.APW_Master.CustName'
      Size = 60
    end
    object QRMstProduction: TStringField
      Tag = 1
      DisplayLabel = #51228#52636#52376
      FieldName = 'Production'
      Origin = 'dbo.APW_Master.Production'
      Size = 60
    end
    object QRMstCustPart: TStringField
      Tag = 1
      DisplayLabel = #51032#47280#48512#49436
      FieldName = 'CustPart'
      Origin = 'dbo.APW_Master.CustPart'
      Size = 60
    end
    object QRMstCustCharge: TStringField
      Tag = 1
      DisplayLabel = #51032#47280#45812#45817#51088
      FieldName = 'CustCharge'
      Origin = 'dbo.APW_Master.CustCharge'
      Size = 40
    end
    object QRMstCustPhone: TStringField
      Tag = 1
      DisplayLabel = #51032#47280#52376#51204#54868#48264#54840
      FieldName = 'CustPhone'
      Origin = 'dbo.APW_Master.CustPhone'
      Size = 40
    end
    object QRMstCustDocID: TStringField
      Tag = 1
      DisplayLabel = #51032#47280#47928#49436#48264#54840
      FieldName = 'CustDocID'
      Origin = 'dbo.APW_Master.CustDocID'
      Size = 40
    end
    object QRMstOwnerName: TStringField
      Tag = 1
      DisplayLabel = #49548#50976#51088
      FieldName = 'OwnerName'
      Origin = 'dbo.APW_Master.OwnerName'
      Size = 40
    end
    object QRMstOwnerPhone: TStringField
      Tag = 1
      DisplayLabel = #49548#50976#51088#51204#54868#48264#54840
      FieldName = 'OwnerPhone'
      Origin = 'dbo.APW_Master.OwnerPhone'
      Size = 40
    end
    object QRMstDebtor: TStringField
      Tag = 1
      DisplayLabel = #52292#47924#51088
      FieldName = 'Debtor'
      Origin = 'dbo.APW_Master.Debtor'
      Size = 40
    end
    object QRMstDebtrID: TStringField
      Tag = 1
      DisplayLabel = #52292#47924#51088#51452#48124#46321#47197#48264#54840
      FieldName = 'DebtrID'
      Origin = 'dbo.APW_Master.DebtrID'
      Size = 14
    end
    object QRMstDebtrPhone: TStringField
      Tag = 1
      DisplayLabel = #52292#47924#51088#51204#54868#48264#54840
      FieldName = 'DebtrPhone'
      Origin = 'dbo.APW_Master.DebtrPhone'
      Size = 40
    end
    object QRMstTitle: TStringField
      Tag = 1
      DisplayLabel = #47932#44148#47749
      FieldName = 'Title'
      Origin = 'dbo.APW_Master.Title'
      Size = 200
    end
    object QRMstStatus: TStringField
      DisplayLabel = #51652#54665#49345#53468
      FieldName = 'Status'
      Origin = 'dbo.APW_Master.Status'
      Size = 2
    end
    object QRMstBigo: TStringField
      Tag = 1
      DisplayLabel = #48708#44256
      FieldName = 'Bigo'
      Origin = 'dbo.APW_Master.Bigo'
      Size = 6000
    end
    object QRMstTs_MasterID: TStringField
      Tag = 1
      DisplayLabel = #53441#49345#44048#51221#48264#54840
      FieldName = 'Ts_MasterID'
      Origin = 'dbo.APW_Master.Ts_MasterID'
      Size = 30
    end
    object QRMstAddrEtc: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648#50808
      FieldName = 'AddrEtc'
      Origin = 'dbo.APW_Master.AddrEtc'
      Size = 1
    end
    object QRMstAddrPyoung: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648#54217#54805
      FieldName = 'AddrPyoung'
      Origin = 'dbo.APW_Master.AddrPyoung'
      Size = 10
    end
    object QRMstBuildingEtc: TStringField
      Tag = 1
      DisplayLabel = #44148#47932#47749#50808
      FieldName = 'BuildingEtc'
      Origin = 'dbo.APW_Master.BuildingEtc'
      Size = 1
    end
    object QRMstBuildingPyoung: TStringField
      Tag = 1
      DisplayLabel = #44148#47932#54217#54805
      FieldName = 'BuildingPyoung'
      Origin = 'dbo.APW_Master.BuildingPyoung'
      Size = 10
    end
    object QRMstCustChargeHP: TStringField
      Tag = 1
      DisplayLabel = #44144#47000#52376#45812#45817#51088#55092#45824#54256
      FieldName = 'CustChargeHP'
      Origin = 'dbo.APW_Master.CustChargeHP'
      Size = 40
    end
    object QRMstDebtorHP: TStringField
      Tag = 1
      DisplayLabel = #52292#47924#51088#55092#45824#54256
      FieldName = 'DebtorHP'
      Origin = 'dbo.APW_Master.DebtorHP'
      Size = 40
    end
    object QRMstHouseCnt: TStringField
      Tag = 1
      DisplayLabel = #49464#45824#49688
      FieldName = 'HouseCnt'
      Origin = 'dbo.APW_Master.HouseCnt'
      Size = 5
    end
    object QRMstRefType: TStringField
      Tag = 1
      DisplayLabel = #44288#47144#50629#47924#47749
      FieldName = 'RefType'
      Origin = 'dbo.APW_Master.RefType'
      Size = 1
    end
    object QRMstRefDocID: TStringField
      Tag = 1
      DisplayLabel = #44288#47144#44048#51221#49436#48264#54840
      FieldName = 'RefDocID'
      Origin = 'dbo.APW_Master.RefDocID'
      Size = 30
    end
    object QRMstSEQ: TLargeintField
      DisplayLabel = #47932#44148#47785#47197'SEQ'
      FieldName = 'SEQ'
      Origin = 'dbo.APW_Inventory.SEQ'
    end
    object QRMstRow_ID: TStringField
      Tag = 1
      DisplayLabel = #44592#54840
      FieldName = 'Row_ID'
      Origin = 'dbo.APW_Inventory.Row_ID'
      Size = 4
    end
    object QRMstREG: TStringField
      Tag = 1
      DisplayLabel = #49884#44400#44396
      FieldName = 'REG'
      Origin = 'dbo.APW_Inventory.REG'
      Size = 5
    end
    object QRMstEUB: TStringField
      Tag = 1
      DisplayLabel = #51021#47732#46041
      FieldName = 'EUB'
      Origin = 'dbo.APW_Inventory.EUB'
      Size = 5
    end
    object QRMstSAN: TStringField
      Tag = 1
      DisplayLabel = #44396#48516
      FieldName = 'SAN'
      Origin = 'dbo.APW_Inventory.SAN'
      Size = 1
    end
    object QRMstADDR: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648
      FieldName = 'ADDR'
      Origin = 'dbo.APW_Inventory.ADDR'
      Size = 400
    end
    object QRMstBUN1: TStringField
      Tag = 1
      DisplayLabel = #48376#48264
      FieldName = 'BUN1'
      Origin = 'dbo.APW_Inventory.BUN1'
      Size = 4
    end
    object QRMstBUN2: TStringField
      Tag = 1
      DisplayLabel = #48512#48264
      FieldName = 'BUN2'
      Origin = 'dbo.APW_Inventory.BUN2'
      Size = 4
    end
    object QRMstBuilding: TStringField
      Tag = 1
      DisplayLabel = #44148#47932#47749
      FieldName = 'Building'
      Origin = 'dbo.APW_Inventory.Building'
      Size = 30
    end
    object QRMstDong: TStringField
      Tag = 1
      DisplayLabel = #46041
      FieldName = 'Dong'
      Origin = 'dbo.APW_Inventory.Dong'
      Size = 22
    end
    object QRMstFloor: TStringField
      Tag = 1
      DisplayLabel = #52789
      FieldName = 'Floor'
      Origin = 'dbo.APW_Inventory.Floor'
      Size = 10
    end
    object QRMstHo: TStringField
      Tag = 1
      DisplayLabel = #54840
      FieldName = 'Ho'
      Origin = 'dbo.APW_Inventory.Ho'
      Size = 10
    end
    object QRMstBookingStr: TStringField
      DisplayLabel = #50976#52824#51088#47749
      FieldName = 'BookingStr'
      Origin = 'dbo.tmwcmn_usr_bac_info.EMP'
      Size = 300
    end
    object QRMstLocked: TStringField
      DisplayLabel = #51104#44552
      FieldName = 'Locked'
      Origin = 'dbo.APW_Master.Locked'
      Size = 1
    end
    object QRMstAllocate: TStringField
      DisplayLabel = #48176#51221#49345#53468
      FieldName = 'Allocate'
      Origin = 'dbo.APW_Master.Allocate'
      Size = 1
    end
    object QRMstJudgment: TStringField
      DisplayLabel = #49900#49324#45824#49345#49345#53468
      FieldName = 'Judgment'
      Origin = 'dbo.APW_Master.Judgment'
      Size = 1
    end
    object QRMstConductDate: TDateTimeField
      DisplayLabel = #52376#47532#51068#51088
      FieldName = 'ConductDate'
      Origin = 'dbo.APW_Master.ConductDate'
    end
    object QRMstResult: TStringField
      DisplayLabel = #52376#47532#44208#44284
      FieldName = 'Result'
      Origin = 'dbo.APW_Master.Result'
      Size = 2
    end
    object QRMstReturnReason: TStringField
      DisplayLabel = #48152#47140#49345#50976
      FieldName = 'ReturnReason'
      Origin = 'dbo.APW_Master.ReturnReason'
      Size = 60
    end
    object QRMstPart: TIntegerField
      DisplayLabel = #52376#47532#48512#49436
      FieldName = 'Part'
      Origin = 'dbo.APW_Master.Part'
    end
    object QRMstReport: TStringField
      DisplayLabel = #49892#51201#48372#44256#50668#48512
      FieldName = 'Report'
      Origin = 'dbo.APW_Master.Report'
      Size = 1
    end
    object QRMstReportDate: TDateTimeField
      DisplayLabel = #49892#51201#48372#44256#51068
      FieldName = 'ReportDate'
      Origin = 'dbo.APW_Master.ReportDate'
    end
    object QRMstSendDate: TDateTimeField
      DisplayLabel = #48156#49569#51068
      FieldName = 'SendDate'
      Origin = 'dbo.APW_Master.SendDate'
    end
    object QRMstSendman: TIntegerField
      DisplayLabel = #48156#49569#51088
      FieldName = 'Sendman'
      Origin = 'dbo.APW_Master.Sendman'
    end
    object QRMstSendMethod: TStringField
      DisplayLabel = #48156#49569#48169#48277
      FieldName = 'SendMethod'
      Origin = 'dbo.APW_Master.SendMethod'
      Size = 50
    end
    object QRMstDeposit: TCurrencyField
      DisplayLabel = #52265#49688#44552
      FieldName = 'Deposit'
      Origin = '.'
    end
    object QRMstprice: TCurrencyField
      Tag = 1
      DisplayLabel = #54217#44032#44552#50529
      FieldName = 'price'
      Origin = 'dbo.APW_Master.price'
    end
    object QRMstCommission: TCurrencyField
      DisplayLabel = #48372#49688#52509#50529
      FieldName = 'Commission'
      Origin = 'dbo.APW_Master.Commission'
    end
    object QRMstPayment: TCurrencyField
      DisplayLabel = #51077#44552#52509#50529
      FieldName = 'Payment'
      Origin = 'dbo.APW_Master.Payment'
    end
    object QRMstComplete: TStringField
      DisplayLabel = #51077#44552#44396#48516
      FieldName = 'Complete'
      Origin = 'dbo.APW_Master.Complete'
      Size = 1
    end
    object QRMstSuSuSum: TCurrencyField
      Tag = 1
      DisplayLabel = #49688#49688#47308#54633#44228
      FieldName = 'SuSuSum'
      Origin = 'dbo.APW_Master.SuSuSum'
    end
    object QRMstTax: TCurrencyField
      Tag = 1
      DisplayLabel = #48512#44032#49464
      FieldName = 'Tax'
      Origin = 'dbo.APW_Master.Tax'
    end
    object QRMstTotal: TCurrencyField
      Tag = 1
      DisplayLabel = #49688#49688#47308#52509#44228
      FieldName = 'Total'
      Origin = 'dbo.APW_Master.Total'
    end
    object QRMstToJiChk: TStringField
      Tag = 1
      DisplayLabel = #53664#51648#45824#51109#48156#44553#50976#47924
      FieldName = 'ToJiChk'
      Origin = 'dbo.APW_Master.ToJiChk'
      Size = 1
    end
    object QRMstToJiMon: TCurrencyField
      Tag = 1
      DisplayLabel = #53664#51648#45824#51109#48156#44553#48708
      FieldName = 'ToJiMon'
      Origin = 'dbo.APW_Master.ToJiMon'
    end
    object QRMstToUseChk: TStringField
      Tag = 1
      DisplayLabel = #53664#51648#51060#50857#48156#44553#50668#48512
      FieldName = 'ToUseChk'
      Origin = 'dbo.APW_Master.ToUseChk'
      Size = 1
    end
    object QRMstToUseMon: TCurrencyField
      Tag = 1
      DisplayLabel = #53664#51648#51060#50857#48156#44553#48708
      FieldName = 'ToUseMon'
      Origin = 'dbo.APW_Master.ToUseMon'
    end
    object QRMstJiJukChk: TStringField
      Tag = 1
      DisplayLabel = #51648#51201#46020#48156#44553#50668#48512
      FieldName = 'JiJukChk'
      Origin = 'dbo.APW_Master.JiJukChk'
      Size = 1
    end
    object QRMstJiJukMon: TCurrencyField
      Tag = 1
      DisplayLabel = #51648#51201#46020#48156#44553#48708
      FieldName = 'JiJukMon'
      Origin = 'dbo.APW_Master.JiJukMon'
    end
    object QRMstBuildChk: TStringField
      Tag = 1
      DisplayLabel = #51068#48152#44148#52629#47932#48156#44553#50668#48512
      FieldName = 'BuildChk'
      Origin = 'dbo.APW_Master.BuildChk'
      Size = 1
    end
    object QRMstBuildMon: TCurrencyField
      Tag = 1
      DisplayLabel = #51068#48152#44148#52629#47932#48156#44553#48708
      FieldName = 'BuildMon'
      Origin = 'dbo.APW_Master.BuildMon'
    end
    object QRMstBuiPyoChk: TStringField
      Tag = 1
      DisplayLabel = #44148#52629#47932'('#54364#51228#48512')'#48156#44553#50668#48512
      FieldName = 'BuiPyoChk'
      Origin = 'dbo.APW_Master.BuiPyoChk'
      Size = 1
    end
    object QRMstBuiPyoMon: TCurrencyField
      Tag = 1
      DisplayLabel = #44148#52629#47932'('#54364#51228#48512')'#48156#44553#48708
      FieldName = 'BuiPyoMon'
      Origin = 'dbo.APW_Master.BuiPyoMon'
    end
    object QRMstBuiJunChk: TStringField
      Tag = 1
      DisplayLabel = #44148#52629#47932'('#51204#50976#48512')'#48156#44553#50668#48512
      FieldName = 'BuiJunChk'
      Origin = 'dbo.APW_Master.BuiJunChk'
      Size = 1
    end
    object QRMstBuiJunMon: TCurrencyField
      Tag = 1
      DisplayLabel = #44148#52629#47932'('#51204#50976#48512')'#48156#44553#48708
      FieldName = 'BuiJunMon'
      Origin = 'dbo.APW_Master.BuiJunMon'
    end
    object QRMstCadChk: TStringField
      Tag = 1
      DisplayLabel = #46020#47732#48156#44553#50668#48512
      FieldName = 'CadChk'
      Origin = 'dbo.APW_Master.CadChk'
      Size = 1
    end
    object QRMstCadMon: TCurrencyField
      Tag = 1
      DisplayLabel = #46020#47732#48156#44553#48708
      FieldName = 'CadMon'
      Origin = 'dbo.APW_Master.CadMon'
    end
    object QRMstLandChk: TStringField
      Tag = 1
      DisplayLabel = #53664#51648#46321#44592#48512#48156#44553#50668#48512
      FieldName = 'LandChk'
      Origin = 'dbo.APW_Master.LandChk'
      Size = 1
    end
    object QRMstLandMon: TCurrencyField
      Tag = 1
      DisplayLabel = #53664#51648#46321#44592#48512#48156#44553#48708
      FieldName = 'LandMon'
      Origin = 'dbo.APW_Master.LandMon'
    end
    object QRMstBuiDeungChk: TStringField
      Tag = 1
      DisplayLabel = #44148#47932#46321#44592#48512#48156#44553#50668#48512
      FieldName = 'BuiDeungChk'
      Origin = 'dbo.APW_Master.BuiDeungChk'
      Size = 1
    end
    object QRMstBuiDeungMon: TCurrencyField
      Tag = 1
      DisplayLabel = #44148#47932#46321#44592#48512#48156#44553#48708
      FieldName = 'BuiDeungMon'
      Origin = 'dbo.APW_Master.BuiDeungMon'
    end
    object QRMstJipHapChk: TStringField
      Tag = 1
      DisplayLabel = #51665#54633#46321#44592#48512#48156#44553#50668#48512
      FieldName = 'JipHapChk'
      Origin = 'dbo.APW_Master.JipHapChk'
      Size = 1
    end
    object QRMstJipHapMon: TCurrencyField
      Tag = 1
      DisplayLabel = #51665#54633#46321#44592#48512#48156#44553#48708
      FieldName = 'JipHapMon'
      Origin = 'dbo.APW_Master.JipHapMon'
    end
    object QRMstGongBuTotal: TCurrencyField
      Tag = 1
      DisplayLabel = #44277#48512#48156#44553#52509#44228#44552#50529
      FieldName = 'GongBuTotal'
      Origin = 'dbo.APW_Master.GongBuTotal'
    end
    object QRMstGuid: TStringField
      Tag = 1
      DisplayLabel = #44256#50976'GUID'
      FieldName = 'Guid'
      Origin = 'dbo.APW_Master.Guid'
      Size = 46
    end
    object QRMstReported: TStringField
      DisplayLabel = #49892#51201#48372#44256#50668#48512
      FieldName = 'Reported'
      Origin = 'dbo.APW_Master.Reported'
      Size = 1
    end
    object QRMstSigner: TIntegerField
      DisplayLabel = #49436#47749#51088
      FieldName = 'Signer'
      Origin = 'dbo.APW_Master.Signer'
    end
    object QRMstSigner_Act: TIntegerField
      DisplayLabel = #45824#54596#51088
      FieldName = 'Signer_Act'
      Origin = 'dbo.APW_Master.Signer_Act'
    end
    object QRMstTrans_Master: TStringField
      DisplayLabel = #51060#52393#51217#49688#50668#48512
      FieldName = 'Trans_Master'
      Origin = 'dbo.APW_Master.Trans_Master'
      Size = 30
    end
    object QRMstAdd_Master: TStringField
      DisplayLabel = #52628#44032#51217#49688
      FieldName = 'Add_Master'
      Origin = 'dbo.APW_Master.Add_Master'
      Size = 30
    end
    object QRMstMerge_Master: TStringField
      Tag = 1
      DisplayLabel = #52509#44292#44048#51221#49436
      FieldName = 'Merge_Master'
      Origin = 'dbo.APW_Master.Merge_Master'
      Size = 30
    end
    object QRMstJudgCnt: TIntegerField
      DisplayLabel = #49900#49324#51088#49688
      FieldName = 'JudgCnt'
      Origin = 'dbo.APW_Master.JudgCnt'
    end
    object QRMstJudgResult: TStringField
      DisplayLabel = #49900#49324#44208#44284'(Y,N)'
      FieldName = 'JudgResult'
      Origin = 'dbo.APW_Master.JudgResult'
      Size = 2
    end
    object QRMstCustCategory1: TIntegerField
      Tag = 1
      DisplayLabel = #52572#49345#50948#44144#47000#52376#48516#47448
      FieldName = 'CustCategory1'
      Origin = 'dbo.APW_Master.CustCategory1'
    end
    object QRMstYCode: TStringField
      Tag = 1
      DisplayLabel = #54801#54924#54217#44032#44396#48516
      FieldName = 'YCode'
      Origin = 'dbo.APW_Master.YCode'
      Size = 2
    end
    object QRMstJun_Master: TIntegerField
      Tag = 1
      DisplayLabel = #51204#47168'PK'
      FieldName = 'Jun_Master'
      Origin = 'dbo.APW_Master.Jun_Master'
    end
    object QRMstSigner_Date: TDateTimeField
      DisplayLabel = #49436#47749#51068
      FieldName = 'Signer_Date'
      Origin = 'dbo.APW_Master.Signer_Date'
    end
    object QRMstJudgment_Date: TDateTimeField
      DisplayLabel = #49900#49324#51068
      FieldName = 'Judgment_Date'
      Origin = 'dbo.APW_Master.Judgment_Date'
    end
    object QRMstJudgment_Op: TIntegerField
      FieldName = 'Judgment_Op'
      Origin = 'dbo.APW_Master.Judgment_Op'
    end
    object QRMstBookingSeq: TLargeintField
      DisplayLabel = #48512#53433'SEQ'
      FieldName = 'BookingSeq'
      Origin = 'dbo.APW_Master.TopBooking'
    end
    object QRMstRatio: TWordField
      Tag = 1
      DisplayLabel = #48708#50984
      FieldName = 'Ratio'
      Origin = 'dbo.apw_booking.Ratio'
    end
    object QRMstBookingCode: TIntegerField
      Tag = 1
      FieldName = 'BookingCode'
      Origin = 'dbo.apw_booking.Manager'
    end
    object QRMstManager: TStringField
      FieldName = 'Manager'
      Origin = '.Manager'
      Size = 300
    end
    object QRMstCharge: TStringField
      FieldName = 'Charge'
      Origin = '.Charge'
      Size = 300
    end
    object QRMstProcessCharge: TStringField
      FieldName = 'ProcessCharge'
      Origin = '.ProcessCharge'
      Size = 300
    end
    object QRMstJudgCharge: TStringField
      FieldName = 'JudgCharge'
      Origin = '.JudgCharge'
      Size = 300
    end
    object QRMstSearchStartDate: TStringField
      FieldName = 'SearchStartDate'
      Origin = '.'
      Size = 10
    end
    object QRMstSearchEndDate: TStringField
      FieldName = 'SearchEndDate'
      Origin = '.'
      Size = 10
    end
    object QRMstDSDesigner: TCurrencyField
      Tag = 1
      FieldName = #49688#49688#47308#54633#44228
      Origin = 'dbo.APW_Bill.SUSUSUM'
    end
    object QRMstDSDesigner2: TCurrencyField
      Tag = 1
      FieldName = #50668#48708
      Origin = 'dbo.APW_Bill.YEBI'
    end
    object QRMstDSDesigner3: TCurrencyField
      Tag = 1
      FieldName = #47932#44148#51312#49324#48708
      Origin = 'dbo.APW_Bill.MULJOSABI'
    end
    object QRMstDSDesigner4: TCurrencyField
      Tag = 1
      FieldName = #53664#51648#51312#49324#48708
      Origin = 'dbo.APW_Bill.TOJOSABI'
    end
    object QRMstDSDesigner5: TCurrencyField
      Tag = 1
      FieldName = #44277#48512#48156#44553#48708
      Origin = 'dbo.APW_Bill.GONGBU'
    end
    object QRMstDSDesigner6: TCurrencyField
      Tag = 1
      FieldName = #44592#53440#49892#48708
      Origin = 'dbo.APW_Bill.SILBI'
    end
    object QRMstDSDesigner7: TCurrencyField
      Tag = 1
      FieldName = #53945#48324#50857#50669#48708
      Origin = 'dbo.APW_Bill.YONGYEUK'
    end
    object QRMstDSDesigner8: TCurrencyField
      Tag = 1
      FieldName = #47588#52636#44552#50529
      Origin = 'dbo.APW_Bill.SUSUSUM'
    end
    object QRMstDSDesigner10: TCurrencyField
      Tag = 1
      FieldName = #52397#44396#44552#50529
      Origin = 'dbo.APW_Bill.BILL'
    end
    object QRMstDSDesigner11: TIntegerField
      FieldName = #51204#54364#47588#52636
      Origin = '.'
    end
    object QRMstDSDesigner12: TIntegerField
      FieldName = #51204#54364#48512#44032#49464
      Origin = '.'
    end
    object QRMstDSDesigner13: TDateTimeField
      FieldName = #52572#51333#51077#44552#51068
      Origin = '.'
    end
    object QRMstAddress: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648
      FieldName = 'Address'
      Origin = '.'
      Size = 512
    end
    object QRMstLSigner: TStringField
      DisplayLabel = #49436#47749#51088
      FieldName = 'LSigner'
      Origin = 'dbo.TMWCMN_USR_BAC_INFO.EMP'
    end
    object QRMstLReceiptCharge: TStringField
      DisplayLabel = #51217#49688#51088
      FieldName = 'LReceiptCharge'
      Origin = 'dbo.TMWCMN_USR_BAC_INFO.EMP'
    end
    object QRMstLWorkinfo: TStringField
      DisplayLabel = #50629#47924#44396#48516
      DisplayWidth = 30
      FieldName = 'LWorkinfo'
      Origin = 'dbo.APW_Work.NAME'
    end
    object QRMstLStatus: TStringField
      DisplayLabel = #51652#54665#49345#53468
      DisplayWidth = 42
      FieldName = 'LStatus'
      Origin = '.'
      Size = 42
    end
    object QRMstLCategory: TStringField
      DisplayLabel = #47932#44148#51333#47448
      FieldName = 'LCategory'
      Origin = 'dbo.APW_Category.Name'
    end
    object QRMstLPurpose: TStringField
      DisplayLabel = #54217#44032#47785#51201
      FieldName = 'LPurpose'
      Origin = 'dbo.APW_Purpose.Name'
    end
    object QRMstLOffice: TStringField
      DisplayLabel = #48376#51648#49324
      FieldName = 'LOffice'
      Origin = 'dbo.APW_Office.Name'
      Size = 40
    end
    object QRMstLCustCategory: TStringField
      FieldName = 'LCustCategory'
      Origin = 'dbo.apw_custcategory.Name'
      Size = 40
    end
    object QRMstLockDate: TDateTimeField
      FieldName = 'LockDate'
      Origin = 'dbo.APW_Master.LockDate'
    end
    object QRMstLSendMan: TStringField
      FieldKind = fkLookup
      FieldName = 'LSendMan'
      LookupDataSet = DBM.Qry_View_Usr_Bac_infoA
      LookupKeyFields = 'USR_SEQ'
      LookupResultField = 'EMP'
      KeyFields = 'Sendman'
      Lookup = True
    end
    object QRMstClient: TStringField
      FieldName = 'Client'
      Origin = 'dbo.APW_Master.Client'
      Size = 40
    end
    object QRMstDSDesigner102: TCurrencyField
      FieldName = #54217#44032#50529'10'
      Origin = 'dbo.APW_Bill.Price10'
    end
    object QRMstDSDesigner15: TCurrencyField
      FieldName = #54217#44032#50529'15'
      Origin = 'dbo.APW_Bill.Price15'
    end
    object QRMstDSDesigner14: TCurrencyField
      FieldName = #50689#50629#44428#54217#44032#50529
      Origin = 'dbo.APW_Bill.YPrice'
    end
    object QRMstDSDesigner16: TCurrencyField
      FieldName = #44592#52488#49688#49688#47308
      Origin = 'dbo.APW_Bill.SUSU'
    end
    object QRMstDSDesigner17: TCurrencyField
      FieldName = #48512#44032#44032#52824#49464
      Origin = 'dbo.APW_Bill.TAX'
    end
    object QRMstDSDesigner18: TFloatField
      FieldName = #49440#49688#44552
      Origin = '.['#49440#49688#44552']'
    end
    object QRMstDSDesigner19: TCurrencyField
      FieldName = #51208#49324#44552#50529
      Origin = 'dbo.APW_Bill.JelsaEtc'
    end
    object QRMstDSDesigner20: TFloatField
      FieldName = #51077#44552#54633#44228
      Origin = '.'
    end
    object QRMstDSDesigner21: TFloatField
      FieldName = #48372#49688#52376#47532#44552#50529
      Origin = '.'
    end
    object QRMstDSDesigner22: TFloatField
      FieldName = #48120#49688#44552
      Origin = '.'
    end
    object QRMstReturnMoney: TIntegerField
      FieldName = 'ReturnMoney'
      Origin = '.'
    end
    object QRMstLTransOffice: TStringField
      FieldName = 'LTransOffice'
      Origin = 'dbo.APW_Office.Name'
      Size = 40
    end
    object QRMstLReceiveOffice: TStringField
      FieldName = 'LReceiveOffice'
      Origin = 'dbo.APW_Office.Name'
      Size = 40
    end
    object QRMstReceive_Master: TStringField
      FieldName = 'Receive_Master'
      Origin = 'dbo.APW_Master.Receive_Master'
      Size = 30
    end
    object QRMstDSDesigner9: TCurrencyField
      FieldName = #47588#52636#52509#50529
      Origin = 'dbo.APW_Bill.TOTAL'
    end
    object QRMstGUBUN_CODE: TStringField
      FieldName = 'GUBUN_CODE'
      Origin = 'dbo.APW_Master.GUBUN_CODE'
      Size = 3
    end
    object QRMstBUB_CD: TStringField
      FieldName = 'BUB_CD'
      Origin = 'dbo.APW_Master.BUB_CD'
      Size = 6
    end
    object QRMstORD_HOI: TIntegerField
      FieldName = 'ORD_HOI'
      Origin = 'dbo.APW_Master.ORD_HOI'
    end
    object QRMstoverDay: TIntegerField
      FieldName = 'overDay'
      Origin = '.'
    end
    object QRMstOffice: TStringField
      FieldName = 'Office'
      Origin = 'dbo.APW_Master.Office'
      Size = 2
    end
    object QRMstSA_NO: TStringField
      FieldName = 'SA_NO'
      Origin = 'dbo.APW_Master.SA_NO'
    end
    object QRMstGubun_Name: TStringField
      FieldName = 'Gubun_Name'
      Origin = '.'
      Size = 30
    end
    object QRMstKapaJunPreReport_YN: TStringField
      FieldName = 'KapaJunPreReport_YN'
      Size = 1
    end
    object QRMsthoetc: TStringField
      FieldName = 'hoetc'
      Origin = 'dbo.APW_Inventory.hoetc'
      Size = 30
    end
    object QRMstchaksugum: TStringField
      FieldName = 'chaksugum'
      Origin = 'dbo.APW_Master.chaksugum'
      Size = 50
    end
    object QRMstlmanager: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'lmanager'
      LookupDataSet = DBM.Qry_View_Usr_Bac_infoA
      LookupKeyFields = 'Usr_Seq'
      LookupResultField = 'Emp'
      KeyFields = 'HouseCnt'
      Size = 10
      Lookup = True
    end
    object QRMstSYNCLEVEL: TWordField
      FieldName = 'SYNCLEVEL'
    end
  end
  object Qry_inventorySearch: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      
        'EXEC SP_S_JudgGradeInventorySearch :REG, :EUB, :BUN1, :BUN2,:MAS' +
        'TERID')
    Params = <
      item
        DataType = ftString
        Name = 'REG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EUB'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BUN1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BUN2'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'MASTERID'
        ParamType = ptInput
      end>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    OnResolveError = QRMstResolveError
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldDefsOnOpen = mwafoNever
    AutoFieldOrigins = mwaforNever
    FieldDefs = <
      item
        Name = 'LStatus'
        DataType = ftString
        Size = 42
      end
      item
        Name = 'MasterID'
        DataType = ftLargeint
      end
      item
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Office'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ReceiptDate'
        DataType = ftDateTime
      end
      item
        Name = 'RequestDate'
        DataType = ftDateTime
      end
      item
        Name = 'Priority'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LimitDate'
        DataType = ftDateTime
      end
      item
        Name = 'WorkInfo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Purpose'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Category'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ReceiptCharge'
        DataType = ftInteger
      end
      item
        Name = 'CustID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CustName'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Production'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Allocate'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Judgment'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ConductDate'
        DataType = ftDateTime
      end
      item
        Name = 'Result'
        DataType = ftString
        Size = 2
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
        Name = 'Signer'
        DataType = ftInteger
      end
      item
        Name = 'LSigner'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Signer_Act'
        DataType = ftInteger
      end
      item
        Name = 'Signer_Date'
        DataType = ftDateTime
      end
      item
        Name = 'ProcessManager'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'JudgmentCharge'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'judgment_Date'
        DataType = ftDateTime
      end
      item
        Name = 'judgment_Date2'
        DataType = ftDateTime
      end
      item
        Name = 'JudgGrade'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'JudgComment'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'signerComment'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'JudgCnt'
        DataType = ftInteger
      end
      item
        Name = 'JudgResult'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'LWorkinfo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LCategory'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LPurpose'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LOffice'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LJudgResult'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 600
      end
      item
        Name = 'pajStatus'
        DataType = ftString
        Size = 2
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
    Left = 516
    Top = 445
    object StringField1: TStringField
      FieldName = 'LStatus'
      Origin = '.'
      Size = 42
    end
    object LargeintField1: TLargeintField
      FieldName = 'MasterID'
      Origin = 'dbo.APW_Master.MasterID'
    end
    object StringField2: TStringField
      FieldName = 'DocID'
      Origin = 'dbo.APW_Master.DocID'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'Office'
      Origin = 'dbo.APW_Master.Office'
      Size = 2
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ReceiptDate'
      Origin = 'dbo.APW_Master.ReceiptDate'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'RequestDate'
      Origin = 'dbo.APW_Master.RequestDate'
    end
    object StringField4: TStringField
      FieldName = 'Priority'
      Origin = 'dbo.APW_Master.Priority'
      Size = 1
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'LimitDate'
      Origin = 'dbo.APW_Master.LimitDate'
    end
    object StringField5: TStringField
      FieldName = 'WorkInfo'
      Origin = 'dbo.APW_Master.WorkInfo'
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'Purpose'
      Origin = 'dbo.APW_Master.Purpose'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'Category'
      Origin = 'dbo.APW_Master.Category'
      Size = 2
    end
    object IntegerField1: TIntegerField
      FieldName = 'ReceiptCharge'
      Origin = 'dbo.APW_Master.ReceiptCharge'
    end
    object StringField8: TStringField
      FieldName = 'CustID'
      Origin = 'dbo.APW_Master.CustID'
      Size = 6
    end
    object StringField9: TStringField
      FieldName = 'CustName'
      Origin = 'dbo.APW_Master.CustName'
      Size = 60
    end
    object StringField10: TStringField
      FieldName = 'Production'
      Origin = 'dbo.APW_Master.Production'
      Size = 60
    end
    object StringField11: TStringField
      FieldName = 'Title'
      Origin = 'dbo.APW_Master.Title'
      Size = 200
    end
    object StringField12: TStringField
      FieldName = 'Status'
      Origin = 'dbo.APW_Master.Status'
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'Allocate'
      Origin = 'dbo.APW_Master.Allocate'
      Size = 1
    end
    object StringField14: TStringField
      FieldName = 'Judgment'
      Origin = 'dbo.APW_Master.Judgment'
      Size = 1
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'ConductDate'
      Origin = 'dbo.APW_Master.ConductDate'
    end
    object StringField15: TStringField
      FieldName = 'Result'
      Origin = 'dbo.APW_Master.Result'
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'Manager'
      Origin = 'dbo.APW_Charge_IDX.Names'
      Size = 300
    end
    object StringField17: TStringField
      FieldName = 'Charge'
      Origin = 'dbo.APW_Charge_IDX.Names'
      Size = 300
    end
    object IntegerField2: TIntegerField
      FieldName = 'Signer'
      Origin = 'dbo.APW_Master.Signer'
    end
    object StringField18: TStringField
      FieldName = 'LSigner'
      Origin = 'dbo.TMWCMN_USR_BAC_INFO.EMP'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Signer_Act'
      Origin = 'dbo.APW_Master.Signer_Act'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'Signer_Date'
      Origin = 'dbo.APW_Master.Signer_Date'
    end
    object StringField19: TStringField
      FieldName = 'ProcessManager'
      Origin = 'dbo.APW_Charge_IDX.Names'
      Size = 300
    end
    object StringField20: TStringField
      FieldName = 'JudgmentCharge'
      Origin = 'dbo.APW_Charge_IDX.Names'
      Size = 300
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'judgment_Date'
      Origin = 'dbo.APW_Master.judgment_Date'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'judgment_Date2'
      Origin = 'dbo.APW_Master.judgment_Date2'
    end
    object StringField21: TStringField
      FieldName = 'JudgGrade'
      Origin = 'dbo.APW_Master.JudgGrade'
      Size = 1
    end
    object StringField22: TStringField
      FieldName = 'JudgComment'
      Origin = 'dbo.APW_Master.JudgComment'
      Size = 2000
    end
    object StringField23: TStringField
      FieldName = 'signerComment'
      Origin = 'dbo.APW_Master.signerComment'
      Size = 2000
    end
    object IntegerField4: TIntegerField
      FieldName = 'JudgCnt'
      Origin = 'dbo.APW_Master.JudgCnt'
    end
    object StringField24: TStringField
      FieldName = 'JudgResult'
      Origin = 'dbo.APW_Master.JudgResult'
      Size = 2
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'price'
      Origin = 'dbo.APW_Master.price'
    end
    object StringField25: TStringField
      FieldName = 'LWorkinfo'
      Origin = 'dbo.APW_Work.NAME'
    end
    object StringField26: TStringField
      FieldName = 'LCategory'
      Origin = 'dbo.APW_Category.Name'
    end
    object StringField27: TStringField
      FieldName = 'LPurpose'
      Origin = 'dbo.APW_Purpose.Name'
    end
    object StringField28: TStringField
      FieldName = 'LOffice'
      Origin = 'dbo.APW_Office.Name'
      Size = 40
    end
    object StringField29: TStringField
      FieldName = 'LJudgResult'
      Origin = 'dbo.Apw_Judgment_Result.Name'
    end
    object StringField30: TStringField
      FieldKind = fkCalculated
      FieldName = 'LJudgmentResult'
      Size = 50
      Calculated = True
    end
    object StringField31: TStringField
      FieldName = 'Address'
      Origin = '.'
      Size = 600
    end
    object Qry_inventorySearchpajStatus: TStringField
      FieldName = 'pajStatus'
      Origin = 'dbo.APW_OfficialJudgment.pajStatus'
      Size = 2
    end
  end
  object qry_Kapa: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'KAPA_APWORK'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC Apworks_NewJunParser :OmMasterID, :Jundate, :OutDate')
    Params = <
      item
        DataType = ftString
        Name = 'OmMasterID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Jundate'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OutDate'
        ParamType = ptInput
      end>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldOrigins = mwaforAlways
    FieldDefs = <
      item
        Name = 'CD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UP_CD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CD_NM'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'LVL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BIGO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INS_DAY'
        DataType = ftDateTime
      end
      item
        Name = 'LUPD_DAY'
        DataType = ftDateTime
      end
      item
        Name = 'USE_YN'
        DataType = ftString
        Size = 1
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
    Left = 629
    Top = 441
  end
  object BankSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '10.0.1.151'
    Port = 51060
    Left = 631
    Top = 502
  end
  object frxDBDataset2: TfrxDBDataset
    Enabled = False
    UserName = 'frDbSet_Detail2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Loffice=Loffice'
      'DocID=DocID'
      'Lstatus=Lstatus'
      'address=address'
      'Custname=Custname'
      'price=price'
      'requestdate=requestdate'
      'LPurpose=LPurpose')
    DataSet = Query_USA
    Left = 421
    Top = 492
  end
  object DS_IW: TDataSource
    AutoEdit = False
    DataSet = Query_USA
    Left = 160
    Top = 496
  end
  object Query_USA: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_IW_S_USA :REG, :EUB, :BUN1')
    Params = <
      item
        DataType = ftString
        Name = 'REG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'EUB'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'BUN1'
        ParamType = ptInput
        Value = ''
      end>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    TableName = 'APW_Masterex'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Loffice'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Lstatus'
        DataType = ftString
        Size = 42
      end
      item
        Name = 'address'
        DataType = ftString
        Size = 603
      end
      item
        Name = 'Custname'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'requestdate'
        DataType = ftDateTime
      end
      item
        Name = 'LPurpose'
        DataType = ftString
        Size = 20
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
    Left = 96
    Top = 464
    object Query_USALoffice: TStringField
      FieldName = 'Loffice'
      Size = 40
    end
    object Query_USADocID: TStringField
      FieldName = 'DocID'
      Size = 30
    end
    object Query_USALstatus: TStringField
      FieldName = 'Lstatus'
      Size = 42
    end
    object Query_USAaddress: TStringField
      FieldName = 'address'
      Size = 603
    end
    object Query_USACustname: TStringField
      FieldName = 'Custname'
      Size = 60
    end
    object Query_USAprice: TCurrencyField
      FieldName = 'price'
    end
    object Query_USArequestdate: TDateTimeField
      FieldName = 'requestdate'
    end
    object Query_USALPurpose: TStringField
      FieldName = 'LPurpose'
    end
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 495
    Top = 505
    object aNew: TAction
      Tag = 1
      Caption = #49888#44508'(&A)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aCopy: TAction
      Tag = 2
      Caption = #51064#50857'(&Z)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aEdit: TAction
      Tag = 3
      Caption = #49688#51221'(&U)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aDelete: TAction
      Tag = 4
      Caption = #49325#51228'(&D)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 0
      DataSource = dsMst
    end
    object aCancel: TAction
      Tag = 6
      Caption = #52712#49548'(&C)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object DataSetPrior1: TDataSetPrior
      Tag = 7
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 1
      DataSource = dsMst
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 2
      DataSource = dsMst
    end
    object aPrint: TAction
      Tag = 8
      Caption = #51064#49604'(&P)'
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 3
      DataSource = dsMst
    end
    object aAddr: TAction
      Tag = 8
      Caption = '&1'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aSave: TAction
      Tag = 5
      Caption = #51200#51109'(&S)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aCust: TAction
      Tag = 9
      Caption = '&2'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object AInventory: TAction
      Tag = 10
      Caption = #49548#51116#51648#52628#44032
      OnExecute = ActionCommand
    end
    object aChargeName: TAction
      Tag = 11
      Caption = #50976#52824#51088#52628#44032
      OnExecute = ActionCommand
    end
    object aAddrFind: TAction
      Tag = 7
      Caption = #49548#51116#51648#44160#49353
      OnExecute = ActionCommand
    end
    object aBooking: TAction
      Tag = 11
      Caption = #50976#52824#51088#52628#44032
      OnExecute = ActionCommand
    end
    object aHelp: TAction
      Tag = 12
      Caption = 'aHelp'
      OnExecute = ActionCommand
    end
    object aKapaJundb: TAction
      Tag = 13
      Caption = #54801#54924#51204#47168#44160#49353
      OnExecute = ActionCommand
    end
    object aJudgGradeChkSmall: TAction
      Tag = 14
      Caption = #50976#49324#49548#51116#51648#51312#54924
      OnExecute = ActionCommand
    end
    object aDocIDChange: TAction
      Tag = 15
      Caption = #44048#51221#49436#48264#54840#48320#44221
      OnExecute = ActionCommand
    end
    object aOrderReport: TAction
      Tag = 16
      Caption = #47749#47161#49436#52636#47141
      OnExecute = ActionCommand
    end
    object aTkpOfKapaJunSearch: TAction
      Tag = 17
      Caption = #44221#47588#47932#44148'('#48512#46041#49328') '#54801#54924#51204#47168#51312#54924
      OnExecute = ActionCommand
    end
    object aHF: TAction
      Tag = 18
      Caption = #51452#53469#44552#50997' '#44032#51256#50724#44592
      OnExecute = ActionCommand
    end
  end
  object Qry_Beajung: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_APW_AutoBaeJung :Docid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Docid'
        ParamType = ptUnknown
      end>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    TableName = 'APW_Masterex'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Loffice'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Lstatus'
        DataType = ftString
        Size = 42
      end
      item
        Name = 'address'
        DataType = ftString
        Size = 603
      end
      item
        Name = 'Custname'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'requestdate'
        DataType = ftDateTime
      end
      item
        Name = 'LPurpose'
        DataType = ftString
        Size = 20
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
    Left = 160
    Top = 456
    object StringField32: TStringField
      FieldName = 'Loffice'
      Size = 40
    end
    object StringField33: TStringField
      FieldName = 'DocID'
      Size = 30
    end
    object StringField34: TStringField
      FieldName = 'Lstatus'
      Size = 42
    end
    object StringField35: TStringField
      FieldName = 'address'
      Size = 603
    end
    object StringField36: TStringField
      FieldName = 'Custname'
      Size = 60
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'price'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'requestdate'
    end
    object StringField37: TStringField
      FieldName = 'LPurpose'
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=daehwa0815!;Persist Security Info=T' +
      'rue;User ID=dh;Initial Catalog=apworksdw;Data Source=10.40.254.1' +
      '0'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 218
    Top = 65532
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 306
    Top = 4
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=daehwa0815;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=Daehwa;Data Source=10.40.254.10'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 379
    Top = 35
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 451
    Top = 31
  end
  object TempQry: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_U_SendRollBack :MasterID')
    Params = <
      item
        DataType = ftUnknown
        Name = 'MasterID'
        ParamType = ptUnknown
      end>
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
        Name = 'SEQ'
        DataType = ftLargeint
      end
      item
        Name = 'MasterID'
        DataType = ftLargeint
      end
      item
        Name = 'Code'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ProcessDate'
        DataType = ftDateTime
      end
      item
        Name = 'Charge'
        DataType = ftInteger
      end
      item
        Name = 'Contents'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'iType'
        DataType = ftInteger
      end
      item
        Name = 'PKey'
        DataType = ftInteger
      end
      item
        Name = 'Indate'
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
    Left = 304
    Top = 488
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 390
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 446
    Top = 4
  end
end
