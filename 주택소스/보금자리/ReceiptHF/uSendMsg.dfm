object frmSendmsg: TfrmSendmsg
  Left = 567
  Top = 101
  Width = 585
  Height = 577
  Caption = #51452#53469#44552#50997#44277#49324#50640' '#51652#54665#49345#54889' '#50508#47548' '#48372#45236#44592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 538
    Align = alClient
    Color = clActiveCaption
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 198
      Top = 12
      Width = 125
      Height = 20
      Caption = #44277#49324#50640' '#51204#45804#46112#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel5: TRzLabel
      Left = 19
      Top = 301
      Width = 131
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54217#44032#45812#45817#51088' '#49457#47749
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
    object RzLabel26: TRzLabel
      Left = 19
      Top = 323
      Width = 131
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #54217#44032#45812#45817#51088' '#51204#54868#48264#54840
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
    object RzLabel54: TRzLabel
      Left = 19
      Top = 345
      Width = 131
      Height = 116
      Alignment = taCenter
      AutoSize = False
      Caption = #44048#51221#54217#44032#53945#51060#49324#54637' / '#13#10#52712#49548' '#49324#50976
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
    object btnSendMsg: TRzBitBtn
      Tag = 1
      Left = 23
      Top = 16
      Width = 109
      Height = 32
      FrameColor = 7617536
      Caption = #51217#49688#50508#47548'  '#48372#45236#44592
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      OnClick = btnSendMsgClick
    end
    object RzBitBtn3: TRzBitBtn
      Tag = 2
      Left = 23
      Top = 64
      Width = 109
      Height = 32
      FrameColor = 7617536
      Caption = #48176#51221#50508#47548'  '#48372#45236#44592
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      OnClick = btnSendMsgClick
    end
    object RzBitBtn4: TRzBitBtn
      Tag = 3
      Left = 23
      Top = 112
      Width = 109
      Height = 32
      FrameColor = 7617536
      Caption = #52636#51109#50508#47548'  '#48372#45236#44592
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 2
      OnClick = btnSendMsgClick
    end
    object RzBitBtn5: TRzBitBtn
      Tag = 4
      Left = 23
      Top = 160
      Width = 109
      Height = 32
      FrameColor = 7617536
      Caption = #51089#49457#50508#47548'  '#48372#45236#44592
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 3
      OnClick = btnSendMsgClick
    end
    object RzBitBtn1: TRzBitBtn
      Tag = 5
      Left = 23
      Top = 211
      Width = 109
      Height = 32
      FrameColor = 7617536
      Caption = #48156#49569#50508#47548'  '#48372#45236#44592
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 4
      OnClick = btnSendMsgClick
    end
    object cxLabel1: TcxLabel
      Left = 144
      Top = 144
      Caption = '*'#51204#49569#51088#47308' '#51077#47141#52285#50640#49436' '#54217#44032#45812#45817#51088', '#51204#54868' '#48264#54840#47484' '#51200#51109#54616#44256' '#49892#54665#54616#49464#50836
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edtFstatusUsr: TRzDBEdit
      Left = 149
      Top = 301
      Width = 209
      Height = 25
      Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
      DataSource = dsuserinfo
      DataField = 'FstatusUsr'
      AutoSize = False
      Enabled = False
      FrameColor = clCream
      FrameStyle = fsGroove
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 6
    end
    object edtFstatusNo: TRzDBEdit
      Left = 149
      Top = 323
      Width = 209
      Height = 23
      Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
      DataSource = dsuserinfo
      DataField = 'FstatusNo'
      AutoSize = False
      Enabled = False
      FrameStyle = fsGroove
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 7
      OnKeyPress = edtFstatusNoKeyPress
    end
    object edtprogress_note: TRzDBEdit
      Left = 588
      Top = 396
      Width = 209
      Height = 23
      Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
      DataSource = dsuserinfo
      DataField = 'progress_note'
      AutoSize = False
      FrameStyle = fsGroove
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 8
      Visible = False
    end
    object cxLabel2: TcxLabel
      Left = 152
      Top = 96
      Caption = #50557#49885#44048#51221#51008' '#51217#49688', '#48176#51221', '#48156#49569' '#50508#47548#51012' '#48372#45236#50556' '#54633#45768#45796'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel3: TcxLabel
      Left = 152
      Top = 168
      Caption = '('#48176#51221#51060#49345' '#48512#53552')'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel4: TcxLabel
      Left = 144
      Top = 216
      Caption = '*'#51116#51204#49569#50836#52397#51012' '#48155#50520#51012#46412#45716' '#48156#49569#50508#47548#51012' '#50504#48372#45236#49492#46020' '#46121#45768#45796'.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object RzBitBtn2: TRzBitBtn
      Tag = 6
      Left = 23
      Top = 261
      Width = 109
      Height = 32
      FrameColor = 7617536
      Caption = #52712#49548#50508#47548'  '#48372#45236#44592
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 12
      OnClick = btnSendMsgClick
    end
    object Edt_Bigo: TcxDBMemo
      Left = 148
      Top = 343
      DataBinding.DataField = 'progress_note'
      DataBinding.DataSource = dsuserinfo
      Enabled = False
      Properties.ScrollBars = ssBoth
      TabOrder = 13
      Height = 120
      Width = 212
    end
    object RzDBEdit1: TRzDBEdit
      Left = 572
      Top = 345
      Width = 209
      Height = 25
      Hint = #51032#47280#44148#51032' '#49548#50976#51088#47484' '#51077#47141#54633#45768#45796'.'
      DataSource = dsuserinfo
      DataField = 'Masterid'
      AutoSize = False
      FrameColor = clCream
      FrameStyle = fsGroove
      FrameVisible = True
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      TabOnEnter = True
      TabOrder = 14
      Visible = False
    end
    object btnSave: TRzBitBtn
      Left = 101
      Top = 481
      Width = 70
      Height = 33
      FrameColor = 7617536
      Caption = #51200' '#51109
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 15
      OnClick = btnSaveClick
    end
    object btnEdit: TRzBitBtn
      Left = 26
      Top = 482
      Width = 70
      Height = 33
      FrameColor = 7617536
      Caption = #51077#47141
      Color = 15791348
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 16
      OnClick = btnEditClick
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 35000
    OnConnect = ClientSocket1Connect
    Left = 676
    Top = 60
  end
  object qrySaveMsgLog: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'Almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Params = <>
    TransportStreamFormat = DBM.ApStreamFormat
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
    Left = 688
    Top = 124
  end
  object qryUserinfo: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Params = <>
    TransportStreamFormat = DBM.ApStreamFormat
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
    Left = 684
    Top = 188
  end
  object dsuserinfo: TDataSource
    DataSet = qrypunginfo
    Left = 744
    Top = 244
  end
  object qrypunginfo: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC SP_S_APW_DH_HF_LINK_MsgInfo 4')
    Params = <>
    TransportStreamFormat = DBM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    TableName = 'SP_U_APW_DH_HF_LINK_MsgInfo'
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
        Name = 'progress_note'
        DataType = ftString
        Size = 300
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
    Left = 680
    Top = 248
    object qrypunginfoFstatusUsr: TStringField
      FieldName = 'FstatusUsr'
      Origin = 'APW_DH_HF_LINK.FstatusUsr'
      Size = 50
    end
    object qrypunginfoFstatusNo: TStringField
      FieldName = 'FstatusNo'
      Origin = 'APW_DH_HF_LINK.FstatusNo'
      Size = 50
    end
    object qrypunginfoprogress_note: TStringField
      FieldName = 'progress_note'
      Origin = 'APW_DH_HF_LINK.progress_note'
      Size = 300
    end
    object qrypunginfoMasterid: TLargeintField
      FieldName = 'Masterid'
    end
  end
end
