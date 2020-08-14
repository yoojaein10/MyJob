object Acountfrm: TAcountfrm
  Left = 830
  Top = 354
  BorderStyle = bsDialog
  Caption = #44228#51340#48264#54840#44032#51256#50724#44592
  ClientHeight = 322
  ClientWidth = 459
  Color = clWhite
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxGrid2: TcxGrid
    Left = 4
    Top = 78
    Width = 441
    Height = 200
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxButton2Click
      OnKeyDown = cxGridDBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_APW_Account
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1Bank: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'Bank'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object cxGridDBTableView1Office: TcxGridDBColumn
        Caption = #51648#51216
        DataBinding.FieldName = 'Office'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object cxGridDBTableView1Account: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'Account'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object RbPanel3: TRbPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 49
    Align = alTop
    Color = clWhite
    Font.Charset = HANGEUL_CHARSET
    Font.Color = 2629657
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    TextShadow = True
    ShowCaption = True
    CaptionPosition = cpTopLeft
    CornerWidth = 20
    BorderWidth = 1
    BorderColor = 15589586
    OuterColor = 15589586
    TextShadowColor = clWhite
    Antialiased = True
    Gradient = False
    DefaultFrom = clWhite
    DefaultTo = 14933983
    GradientType = gtVertical
    object Shape5: TShape
      Left = 2
      Top = 37
      Width = 455
      Height = 10
      Align = alBottom
      Pen.Color = clWhite
      Shape = stSquare
    end
    object Shape6: TShape
      Left = 2
      Top = 2
      Width = 455
      Height = 10
      Align = alTop
      Pen.Color = clWhite
      Shape = stSquare
    end
    object Shape7: TShape
      Left = 2
      Top = 92
      Width = 10
      Height = 86
      Align = alLeft
      Pen.Color = clWhite
      Shape = stSquare
    end
    object Shape8: TShape
      Left = 447
      Top = 92
      Width = 10
      Height = 86
      Align = alRight
      Pen.Color = clWhite
      Shape = stSquare
    end
    object Panel1: TPanel
      Left = 2
      Top = 12
      Width = 455
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Shape9: TShape
        Left = 0
        Top = 0
        Width = 10
        Height = 24
        Align = alLeft
        Pen.Color = clWhite
        Shape = stSquare
      end
      object Shape10: TShape
        Left = 445
        Top = 0
        Width = 10
        Height = 24
        Align = alRight
        Pen.Color = clWhite
        Shape = stSquare
      end
      object RbPanel2: TRbPanel
        Left = 10
        Top = 0
        Width = 435
        Height = 24
        Align = alClient
        Color = 14981377
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        TextShadow = True
        ShowCaption = True
        Caption = '   '#44228#51340#48264#54840#44032#51256#50724#44592
        CaptionPosition = cpMiddleLeft
        CornerWidth = 20
        BorderWidth = 1
        BorderColor = 14060034
        OuterColor = clWhite
        TextShadowColor = 8802304
        Antialiased = False
        Gradient = True
        DefaultFrom = 14063873
        DefaultTo = 14060034
        GradientType = gtDoubleVert
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 36
      Width = 455
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
    end
  end
  object cxButton1: TcxButton
    Left = 4
    Top = 277
    Width = 103
    Height = 21
    Caption = #45803#44592
    TabOrder = 2
    OnClick = cxButton1Click
    Colors.Normal = 15921906
    Colors.Disabled = clWhite
  end
  object lbl_Total: TcxLabel
    Left = 105
    Top = 276
    AutoSize = False
    ParentColor = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Style.BorderStyle = ebsUltraFlat
    Style.Color = 15589586
    Height = 23
    Width = 121
  end
  object lbl_TotalAp: TcxLabel
    Left = 223
    Top = 276
    AutoSize = False
    ParentColor = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Style.BorderStyle = ebsUltraFlat
    Style.Color = 15589586
    Height = 23
    Width = 121
  end
  object cxButton2: TcxButton
    Left = 342
    Top = 277
    Width = 103
    Height = 21
    Caption = #49440#53469
    TabOrder = 5
    OnClick = cxButton2Click
    Colors.Normal = 15921906
    Colors.Disabled = clWhite
  end
  object cxLabel1: TcxLabel
    Left = 7
    Top = 56
    Caption = #51008#54665#47749
  end
  object SearchText: TcxTextEdit
    Left = 55
    Top = 54
    TabOrder = 7
    OnKeyPress = SearchTextKeyPress
    Width = 107
  end
  object cxButton3: TcxButton
    Left = 165
    Top = 54
    Width = 87
    Height = 21
    Caption = #44160#49353
    TabOrder = 8
    OnClick = cxButton3Click
    Colors.Normal = 15921906
    Colors.Disabled = clWhite
  end
  object cxLabel2: TcxLabel
    Left = 263
    Top = 56
    Caption = #44160#49353#50612' '#51077#47141#54980' Enter'#52824#49464#50836'.'
    ParentFont = False
    Style.Font.Charset = HANGEUL_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = #44404#47548#52404
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel3: TcxLabel
    Left = 21
    Top = 303
    Caption = #44536#47532#46300#50640#49436' Ctrl + Enter'#47484' '#52824#49884#47732' '#48148#47196' '#49440#53469#51060' '#44032#45733#54633#45768#45796'.'
    ParentFont = False
    Style.Font.Charset = HANGEUL_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -12
    Style.Font.Name = #44404#47548#52404
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object DS_APW_Account: TDataSource
    DataSet = kbmMWClientQuery1
    Left = 116
    Top = 173
  end
  object USP_S_APW_Account: TkbmMWClientStoredProc
    ClientAsTemplate = False
    QueryService = 'PF_Service'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    CacheFlags = []
    SessionName = 'ApWorksClient'
    StoredProcName = '@USP_S_APW_Account'
    Overload = 0
    Params = <
      item
        DataType = ftString
        Name = 'Code'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Bank'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OfficeID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Active'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'sugam'
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
    AutoCalcFields = False
    AutoFieldDefsOnOpen = mwafoNever
    AutoFieldOrigins = mwaforNever
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Bank'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Office'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Account'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OwnerName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RegDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DisuseDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Active'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OfficeID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sugam'
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
    Left = 32
    Top = 173
    object USP_S_APW_AccountSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object USP_S_APW_AccountCODE: TStringField
      FieldName = 'CODE'
      Size = 3
    end
    object USP_S_APW_AccountBank: TStringField
      FieldName = 'Bank'
    end
    object USP_S_APW_AccountOffice: TStringField
      FieldName = 'Office'
    end
    object USP_S_APW_AccountAccount: TStringField
      FieldName = 'Account'
    end
    object USP_S_APW_AccountOwnerName: TStringField
      FieldName = 'OwnerName'
    end
    object USP_S_APW_AccountRegDate: TStringField
      FieldName = 'RegDate'
    end
    object USP_S_APW_AccountDisuseDate: TStringField
      FieldName = 'DisuseDate'
    end
    object USP_S_APW_AccountActive: TStringField
      FieldName = 'Active'
      Size = 1
    end
    object USP_S_APW_AccountOfficeID: TStringField
      FieldName = 'OfficeID'
      Size = 2
    end
    object USP_S_APW_Accountsugam: TStringField
      FieldName = 'sugam'
      Size = 1
    end
  end
  object kbmMWClientQuery1: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      
        'exec SP_S_APW_Account :Code, :Bank, :OfficeID, :Active, :Top, :s' +
        'ugam')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bank'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OfficeID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Active'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Top'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sugam'
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
    AutoFieldOrigins = mwaforAlways
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Bank'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Office'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Account'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OwnerName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RegDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DisuseDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Active'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OfficeID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sugam'
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
    Left = 48
    Top = 112
    object kbmMWClientQuery1SEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = '.'
    end
    object kbmMWClientQuery1CODE: TStringField
      FieldName = 'CODE'
      Origin = 'dbo.acc001d.c_code'
      Size = 10
    end
    object kbmMWClientQuery1Bank: TStringField
      FieldName = 'Bank'
      Origin = '.'
      Size = 50
    end
    object kbmMWClientQuery1Office: TStringField
      FieldName = 'Office'
      Origin = '.'
      Size = 50
    end
    object kbmMWClientQuery1Account: TStringField
      FieldName = 'Account'
      Origin = 'dbo.acc001d.c_no'
    end
    object kbmMWClientQuery1OwnerName: TStringField
      FieldName = 'OwnerName'
      Origin = 'dbo.acc001d.c_boss'
      Size = 50
    end
    object kbmMWClientQuery1RegDate: TStringField
      FieldName = 'RegDate'
      Origin = '.'
    end
    object kbmMWClientQuery1DisuseDate: TStringField
      FieldName = 'DisuseDate'
      Origin = '.'
    end
    object kbmMWClientQuery1Active: TStringField
      FieldName = 'Active'
      Origin = '.'
      Size = 1
    end
    object kbmMWClientQuery1OfficeID: TStringField
      FieldName = 'OfficeID'
      Origin = 'dbo.acc001d.c_office'
      Size = 2
    end
    object kbmMWClientQuery1sugam: TStringField
      FieldName = 'sugam'
      Origin = 'dbo.acc001d.c_sugam'
      Size = 1
    end
  end
end
