object frmHFLIST: TfrmHFLIST
  Left = 3493
  Top = -49
  BorderStyle = bsDialog
  Caption = #51452#53469#44552#50997#44277#49324' '#47532#49828#53944
  ClientHeight = 669
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 669
    Align = alClient
    Color = clActiveCaption
    TabOrder = 0
    object Grid_PHF: TcxGrid
      Left = 1
      Top = 390
      Width = 1119
      Height = 278
      Align = alBottom
      TabOrder = 0
      object Grid_PHFDBTableView1: TcxGridDBTableView
        OnDblClick = Grid_PHFDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPHF
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = CM.cxBackground
        Styles.ContentEven = CM.cxEven
        Styles.ContentOdd = CM.cxOdd
        Styles.Inactive = CM.cxInactive
        Styles.Footer = CM.cxFooter
        Styles.Header = CM.cxHeader
        object Grid_PHFDBTableView1Masterid: TcxGridDBColumn
          DataBinding.FieldName = 'Masterid'
          Visible = False
        end
        object Grid_PHFDBTableView1InDate: TcxGridDBColumn
          Caption = #51032#47280#51068#51088
          DataBinding.FieldName = 'InDate'
        end
        object Grid_PHFDBTableView1DAMBO_NO: TcxGridDBColumn
          Caption = #51032#47280#48264#54840
          DataBinding.FieldName = 'DAMBO_NO'
        end
        object Grid_PHFDBTableView1workgubun: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'workgubun'
        end
        object Grid_PHFDBTableView1GAM_EUI_NM: TcxGridDBColumn
          Caption = #51032#47280#52376#47749
          DataBinding.FieldName = 'GAM_EUI_NM'
          Width = 157
        end
        object Grid_PHFDBTableView1GAM_EUI_JA: TcxGridDBColumn
          Caption = #45812#45817#51088
          DataBinding.FieldName = 'GAM_EUI_JA'
        end
        object Grid_PHFDBTableView1GAM_EUI_TEL: TcxGridDBColumn
          Caption = #45812#45817#51088#48264#54840
          DataBinding.FieldName = 'GAM_EUI_TEL'
          Width = 102
        end
        object Grid_PHFDBTableView1CHAEMU_NAME: TcxGridDBColumn
          Caption = #52292#47924#51088#47749
          DataBinding.FieldName = 'CHAEMU_NAME'
          Width = 87
        end
        object Grid_PHFDBTableView1CHAEMU_TELL2: TcxGridDBColumn
          Caption = #52292#47924#51088#48264#54840
          DataBinding.FieldName = 'CHAEMU_TELL2'
        end
        object Grid_PHFDBTableView1GUBUN: TcxGridDBColumn
          Caption = #47932#44148#51333#47448
          DataBinding.FieldName = 'GUBUN'
        end
        object Grid_PHFDBTableView1Address: TcxGridDBColumn
          Caption = #49548#51116#51648
          DataBinding.FieldName = 'Address'
          Width = 254
        end
      end
      object Grid_PHFLevel1: TcxGridLevel
        GridView = Grid_PHFDBTableView1
      end
    end
    object cxSplitter6: TcxSplitter
      Left = 1
      Top = 341
      Width = 1119
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salBottom
      Control = Grid_PHF
      Color = 5504937
      ParentColor = False
    end
    object Grid_KHF: TcxGrid
      Left = 1
      Top = 42
      Width = 1119
      Height = 299
      Align = alClient
      TabOrder = 2
      object cxGridDBTableView1: TcxGridDBTableView
        OnDblClick = cxGridDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DSKHF
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = CM.cxBackground
        Styles.ContentEven = CM.cxEven
        Styles.ContentOdd = CM.cxOdd
        Styles.Inactive = CM.cxInactive
        Styles.Footer = CM.cxFooter
        Styles.Header = CM.cxHeader
        object cxGridDBTableView1Masterid: TcxGridDBColumn
          DataBinding.FieldName = 'Masterid'
          Visible = False
        end
        object cxGridDBTableView1indate: TcxGridDBColumn
          Caption = #51032#47280#51068#51088
          DataBinding.FieldName = 'indate'
        end
        object cxGridDBTableView1co_prev_insp_no: TcxGridDBColumn
          Caption = #51032#47280#48264#54840
          DataBinding.FieldName = 'co_prev_insp_no'
          Width = 114
        end
        object cxGridDBTableView1kindhouse: TcxGridDBColumn
          Caption = #47932#44148#51333#47448
          DataBinding.FieldName = 'kindhouse'
        end
        object cxGridDBTableView1WorkKind: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'WorkKind'
        end
        object cxGridDBTableView1proprietary_name: TcxGridDBColumn
          DataBinding.FieldName = 'proprietary_name'
          Visible = False
        end
        object cxGridDBTableView1Custname: TcxGridDBColumn
          Caption = #51032#47280#52376
          DataBinding.FieldName = 'Custname'
          Width = 151
        end
        object cxGridDBTableView1seq: TcxGridDBColumn
          DataBinding.FieldName = 'seq'
          Visible = False
        end
        object cxGridDBTableView1duty_emp_nm: TcxGridDBColumn
          Caption = #45812#45817#51088
          DataBinding.FieldName = 'duty_emp_nm'
          Width = 126
        end
        object cxGridDBTableView1duty_tel_no: TcxGridDBColumn
          Caption = #45812#45817#51088#51204#54868#48264#54840
          DataBinding.FieldName = 'duty_tel_no'
          Width = 92
        end
        object cxGridDBTableView1Address: TcxGridDBColumn
          Caption = #49548#51116#51648
          DataBinding.FieldName = 'Address'
          Width = 317
        end
        object cxGridDBTableView1applcant_nm: TcxGridDBColumn
          Caption = #49888#52397#51064
          DataBinding.FieldName = 'applcant_nm'
          Width = 126
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = #49888#52397#51064'HP'
          DataBinding.FieldName = 'applcant_mobile'
        end
        object cxGridDBTableView1applcant_tel_no: TcxGridDBColumn
          Caption = #49888#52397#51064#51204#54868#48264#54840
          DataBinding.FieldName = 'applcant_tel_no'
          Width = 95
        end
        object cxGridDBTableView1applcant_zip_cd: TcxGridDBColumn
          DataBinding.FieldName = 'applcant_zip_cd'
          Visible = False
        end
        object cxGridDBTableView1own_pers_nm: TcxGridDBColumn
          DataBinding.FieldName = 'own_pers_nm'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 349
      Width = 1119
      Height = 41
      Align = alBottom
      Color = clActiveCaption
      TabOrder = 3
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 242
        Height = 39
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = #9633' '#50672#44552' '#48120#51217#49688' '#45936#51060#53552
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = #47928#52404#48512' '#46027#51020#52404
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1119
      Height = 41
      Align = alTop
      Color = clActiveCaption
      TabOrder = 4
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 216
        Height = 39
        Align = alLeft
        Alignment = taCenter
        Caption = #9633' '#48372#44552#51088#47532' '#48120#51217#49688' '#45936#51060#53552
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = #47928#52404#48512' '#46027#51020#52404
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
  end
  object DSKHF: TDataSource
    DataSet = qry_KHF
    Left = 232
    Top = 144
  end
  object qry_KHF: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC SP_IW_S_KHF_JSLIST '#39'10'#39)
    Params = <>
    TransportStreamFormat = DBM.ApStreamFormat
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
        Name = 'indate'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'co_prev_insp_no'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WorkKind'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'proprietary_name'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Custname'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'seq'
        DataType = ftString
        Size = 5
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
        Name = 'applcant_zip_cd'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'own_pers_nm'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'kindhouse'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'applcant_mobile'
        DataType = ftString
        Size = 12
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
    Left = 144
    Top = 144
    object qry_KHFMasterid: TLargeintField
      FieldName = 'Masterid'
      Origin = 'APW_DH_HF_LINK.Masterid'
    end
    object qry_KHFindate: TStringField
      FieldName = 'indate'
      Origin = '.'
      Size = 19
    end
    object qry_KHFco_prev_insp_no: TStringField
      FieldName = 'co_prev_insp_no'
      Origin = 'APW_DH_HF_LINK.co_prev_insp_no'
      Size = 10
    end
    object qry_KHFWorkKind: TStringField
      FieldName = 'WorkKind'
      Origin = '.'
      Size = 8
    end
    object qry_KHFproprietary_name: TStringField
      FieldName = 'proprietary_name'
      Origin = '.'
      Size = 8
    end
    object qry_KHFCustname: TStringField
      FieldName = 'Custname'
      Origin = '.'
      Size = 70
    end
    object qry_KHFseq: TStringField
      FieldName = 'seq'
      Origin = 'APW_DH_HF_LINK.seq'
      Size = 5
    end
    object qry_KHFduty_emp_nm: TStringField
      FieldName = 'duty_emp_nm'
      Origin = 'APW_DH_HF_LINK.duty_emp_nm'
      Size = 30
    end
    object qry_KHFduty_tel_no: TStringField
      FieldName = 'duty_tel_no'
      Origin = 'APW_DH_HF_LINK.duty_tel_no'
    end
    object qry_KHFapplcant_nm: TStringField
      FieldName = 'applcant_nm'
      Origin = 'APW_DH_HF_LINK.applcant_nm'
      Size = 50
    end
    object qry_KHFapplcant_tel_no: TStringField
      FieldName = 'applcant_tel_no'
      Origin = 'APW_DH_HF_LINK.applcant_tel_no'
      Size = 12
    end
    object qry_KHFapplcant_zip_cd: TStringField
      FieldName = 'applcant_zip_cd'
      Origin = 'APW_DH_HF_LINK.applcant_zip_cd'
      Size = 6
    end
    object qry_KHFown_pers_nm: TStringField
      FieldName = 'own_pers_nm'
      Origin = 'APW_DH_HF_LINK.own_pers_nm'
      Size = 50
    end
    object qry_KHFkindhouse: TStringField
      FieldName = 'kindhouse'
      Origin = '.'
      Size = 12
    end
    object qry_KHFAddress: TStringField
      FieldName = 'Address'
      Origin = '.'
      Size = 200
    end
    object qry_KHFapplcant_mobile: TStringField
      FieldName = 'applcant_mobile'
      Origin = 'APW_DH_HF_LINK.applcant_mobile'
      Size = 12
    end
  end
  object qry_PHF: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC SP_IW_S_PHF_JSLIST '#39'10'#39)
    Params = <>
    TransportStreamFormat = DBM.ApStreamFormat
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
        Name = 'InDate'
        DataType = ftDateTime
      end
      item
        Name = 'DAMBO_NO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'workgubun'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'GAM_EUI_NM'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'GAM_EUI_JA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'GAM_EUI_TEL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CHAEMU_NAME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CHAEMU_TELL2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GUBUN'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 151
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
    Left = 144
    Top = 492
  end
  object dsPHF: TDataSource
    DataSet = qry_PHF
    Left = 296
    Top = 484
  end
end
