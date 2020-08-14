object Frm_Inventory: TFrm_Inventory
  Left = 848
  Top = 11
  BorderStyle = bsDialog
  Caption = #49548#51116#51648#52628#44032
  ClientHeight = 406
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClick = ActionCommand
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object Pan_iud: TRzPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 406
    Align = alClient
    BorderOuter = fsFlatRounded
    BorderSides = []
    Color = clInactiveCaptionText
    TabOrder = 0
    object RzPanel: TRzPanel
      Left = 5
      Top = 45
      Width = 518
      Height = 109
      BorderOuter = fsFlatRounded
      BorderSides = []
      Color = clWhite
      TabOrder = 0
      object cxLabel17: TRzLabel
        Left = 339
        Top = 61
        Width = 12
        Height = 12
        Caption = #54840
        Transparent = True
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel16: TRzLabel
        Left = 282
        Top = 61
        Width = 12
        Height = 12
        Caption = #52789
        Transparent = True
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object cxLabel15: TRzLabel
        Left = 222
        Top = 61
        Width = 12
        Height = 12
        Caption = #46041
        Transparent = True
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel4: TRzLabel
        Left = 6
        Top = 61
        Width = 36
        Height = 12
        Hint = #50500#54028#53944' '#46608#45716' '#49345#44032#51060#47492
        Caption = #44148#47932#47749
        Transparent = True
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object Label3: TLabel
        Left = 6
        Top = 36
        Width = 36
        Height = 12
        Caption = #44396'  '#48516
        Transparent = True
      end
      object Label4: TLabel
        Left = 93
        Top = 36
        Width = 24
        Height = 12
        Caption = #48376#48264
        Transparent = True
      end
      object Label5: TLabel
        Left = 180
        Top = 36
        Width = 24
        Height = 12
        Caption = #48512#48264
        Transparent = True
      end
      object RzDBStatusPane1: TRzDBStatusPane
        Left = 47
        Top = 80
        Width = 467
        Height = 22
        FillColor = clWindow
        FlatColorAdjustment = 0
        ParentFillColor = False
        Transparent = False
        Color = clWhite
        ParentColor = False
        ParentShowHint = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
        DataField = 'Address'
        DataSource = dsInventory
      end
      object cxLabel112: TRzLabel
        Left = 6
        Top = 12
        Width = 36
        Height = 12
        Caption = #49548#51116#51648
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object Edt_Addr: TRzEdit
        Tag = 1
        Left = 47
        Top = 8
        Width = 121
        Height = 20
        HelpType = htKeyword
        HelpKeyword = #49548#51116#51648#47484' '#51077#47141#54616#49464#50836
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 0
        OnKeyPress = Edt_AddrKeyPress
      end
      object BtnAddr: TRzButton
        Left = 174
        Top = 5
        Width = 70
        Height = 24
        FrameColor = 7617536
        Action = aAddr
        Color = 15791348
        HotTrack = True
        TabOrder = 1
      end
      object edtBun1: TRzDBEdit
        Tag = 1
        Left = 120
        Top = 33
        Width = 49
        Height = 20
        HelpType = htKeyword
        HelpKeyword = #48376#48264#51012' '#51077#47141#54616#49464#50836
        DataSource = dsInventory
        DataField = 'BUN1'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 3
        OnExit = edtBun1Exit
      end
      object RzDBEdit2: TRzDBEdit
        Tag = 1
        Left = 207
        Top = 33
        Width = 53
        Height = 20
        HelpType = htKeyword
        HelpKeyword = #48512#48264#51012' '#51077#47141#54616#49464#50836
        DataSource = dsInventory
        DataField = 'BUN2'
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 4
        OnExit = edtBun1Exit
      end
      object cxAptName: TRzDBEdit
        Left = 47
        Top = 56
        Width = 166
        Height = 20
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #44148#47932#47749#51012' '#51077#47141#54616#49464#50836
        DataSource = dsInventory
        DataField = 'Building'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 5
      end
      object cxDONG: TRzDBEdit
        Left = 236
        Top = 57
        Width = 40
        Height = 20
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #46041#51012' '#51077#47141#54616#49464#50836
        DataSource = dsInventory
        DataField = 'Dong'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 6
      end
      object cxCHUNG: TRzDBEdit
        Left = 296
        Top = 57
        Width = 36
        Height = 20
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #52789#51012' '#51077#47141#54616#49464#50836
        DataSource = dsInventory
        DataField = 'Floor'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 7
      end
      object cxHO: TRzDBEdit
        Left = 354
        Top = 57
        Width = 40
        Height = 20
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #54840#47484' '#51077#47141#54616#49464#50836
        DataSource = dsInventory
        DataField = 'Ho'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 8
      end
      object cxSan: TRzDBEdit
        Tag = 1
        Left = 47
        Top = 32
        Width = 40
        Height = 20
        Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #49548#51116#51648' '#44396#48516#51012' '#51077#47141#54644' '#51452#49464#50836'.'
        DataSource = dsInventory
        DataField = 'SAN'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 2
        OnKeyPress = cxSanKeyPress
      end
    end
    object pReceptBtns: TRzPanel
      Left = 5
      Top = 354
      Width = 519
      Height = 48
      BorderOuter = fsFlatRounded
      Color = clWhite
      TabOrder = 1
      object Btn_Save: TRzButton
        Tag = 6
        Left = 361
        Top = 12
        FrameColor = 7617536
        Action = aSave
        Color = 15791348
        HotTrack = True
        TabOrder = 0
      end
      object Btn_Cancel: TRzButton
        Tag = 7
        Left = 438
        Top = 12
        FrameColor = 7617536
        Action = aCancel
        Color = 15791348
        HotTrack = True
        TabOrder = 1
      end
      object Btn_Delete: TRzButton
        Tag = 4
        Left = 239
        Top = 12
        Width = 78
        FrameColor = 7617536
        Action = aDelete
        Color = 15791348
        HotTrack = True
        TabOrder = 2
      end
      object Btn_Edit: TRzButton
        Tag = 3
        Left = 163
        Top = 12
        FrameColor = 7617536
        Action = aEdit
        Color = 15791348
        HotTrack = True
        TabOrder = 3
      end
      object Btn_Copy: TRzButton
        Tag = 2
        Left = 83
        Top = 12
        FrameColor = 7617536
        Action = aCopy
        Color = 15791348
        HotTrack = True
        TabOrder = 4
      end
      object Btn_New: TRzButton
        Tag = 1
        Left = 7
        Top = 12
        FrameColor = 7617536
        Action = aNew
        Color = 15791348
        HotTrack = True
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 528
      Height = 41
      Align = alTop
      Alignment = taRightJustify
      BevelOuter = bvNone
      TabOrder = 2
      object TBToolbar1: TTBToolbar
        Left = 8
        Top = 7
        Width = 124
        Height = 30
        Caption = 'TBToolbar1'
        TabOrder = 0
        object TBXItem4: TTBXItem
          Action = DataSetFirst1
          DisplayMode = nbdmTextOnlyInMenus
          Images = CM.SysImages24
        end
        object TBXItem3: TTBXItem
          Action = DataSetPrior1
          DisplayMode = nbdmTextOnlyInMenus
          Images = CM.SysImages24
        end
        object TBXItem2: TTBXItem
          Action = DataSetNext1
          DisplayMode = nbdmTextOnlyInMenus
          Images = CM.SysImages24
        end
        object TBXItem1: TTBXItem
          Action = DataSetLast1
          DisplayMode = nbdmTextOnlyInMenus
          Images = CM.SysImages24
        end
      end
      object cbSan: TRzDBComboBox
        Tag = 1
        Left = 247
        Top = 5
        Width = 93
        Height = 20
        HelpType = htKeyword
        HelpKeyword = #44396#48516#51012' '#49440#53469#54616#49464#50836
        DataField = 'SAN'
        DataSource = dsInventory
        Ctl3D = False
        FrameController = RzFC
        ImeName = 'Microsoft IME 2003'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
        Items.Strings = (
          ''
          #51068#48152
          #49328
          #44032'('#54364#51456')'
          #44032'-('#49464#48516')'
          'BL-('#54364#51456')'
          'BL-('#49464#48516')'
          #51648#44396'BL-('#54364#51456')'
          #51648#44396'BL-('#49464#48516')'
          #44592#53440)
        Values.Strings = (
          ''
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
    end
    object cxGrid1: TcxGrid
      Left = 4
      Top = 159
      Width = 519
      Height = 192
      TabOrder = 3
      object V: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        DataController.DataSource = dsInventory
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        Styles.ContentEven = cxEven
        Styles.ContentOdd = cxOdd
        Styles.Inactive = cxInactive
        Styles.Footer = cxFooter
        Styles.Header = cxHeader
        object VColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 57
        end
        object VColumn2: TcxGridDBColumn
          Caption = #51217#49688#48264#54840
          DataBinding.FieldName = 'MasterID'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 67
        end
        object VColumn16: TcxGridDBColumn
          Caption = #44048#51221#49436#48264#54840
          DataBinding.FieldName = 'DocID'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 115
        end
        object VColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Row_ID'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 58
        end
        object VColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'REG'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 45
        end
        object VColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'EUB'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 44
        end
        object VColumn7: TcxGridDBColumn
          Caption = #49548#51116#51648
          DataBinding.FieldName = 'ADDR'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 200
        end
        object VColumn6: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'SAN'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 64
        end
        object VColumn8: TcxGridDBColumn
          Caption = #48376#48264
          DataBinding.FieldName = 'BUN1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 40
        end
        object VColumn9: TcxGridDBColumn
          Caption = #48512#48264
          DataBinding.FieldName = 'BUN2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 40
        end
        object VColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'REG1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object VColumn11: TcxGridDBColumn
          DataBinding.FieldName = 'EUB1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object VColumn12: TcxGridDBColumn
          Caption = #44148#47932#47749
          DataBinding.FieldName = 'Building'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 130
        end
        object VColumn13: TcxGridDBColumn
          Caption = #46041
          DataBinding.FieldName = 'Dong'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object VColumn14: TcxGridDBColumn
          Caption = #52789
          DataBinding.FieldName = 'Floor'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object VColumn15: TcxGridDBColumn
          Caption = #54840
          DataBinding.FieldName = 'Ho'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object VColumn17: TcxGridDBColumn
          DataBinding.FieldName = 'Number'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
      end
      object L: TcxGridLevel
        GridView = V
      end
    end
  end
  object ActionList1: TActionList
    Images = CM.SysImages16
    Left = 399
    Top = 5
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 3
      DataSource = dsInventory
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 4
      DataSource = dsInventory
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 5
      DataSource = dsInventory
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 6
      DataSource = dsInventory
    end
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
    object aSave: TAction
      Tag = 5
      Caption = #51200#51109'(&S)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aCancel: TAction
      Tag = 6
      Caption = #52712#49548'(&C)'
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
    object aAddr: TAction
      Tag = 7
      Caption = #49548#51116#51648#44160#49353
      Enabled = False
      HelpKeyword = 'YYYYYY'
      OnExecute = ActionCommand
    end
  end
  object Qry_inventory: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC SP_S_APW_Inventory_Kapa 53844')
    Params = <>
    TransportStreamFormat = CM.ApStreamFormat
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    TableName = 
      'SP_I_APW_Inventory@Output_SEQ=SEQ,SP_U_APW_Inventory,SP_D_APW_In' +
      'ventory'
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldDefsOnOpen = mwafoOnce
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
        Name = 'REG1'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'EUB1'
        DataType = ftString
        Size = 5
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
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Number'
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
    OnCalcFields = Qry_inventoryCalcFields
    Left = 424
    object Qry_inventorySEQ: TLargeintField
      DisplayLabel = #49692#48264
      FieldName = 'SEQ'
      Origin = 'APW_Inventory.SEQ'
    end
    object Qry_inventoryMasterID: TLargeintField
      Tag = 1
      DisplayLabel = #51217#49688#48264#54840
      FieldName = 'MasterID'
      Origin = 'APW_Inventory.MasterID'
    end
    object Qry_inventoryRow_ID: TStringField
      DisplayLabel = #44592#54840
      FieldName = 'Row_ID'
      Origin = 'APW_Inventory.Row_ID'
      Size = 4
    end
    object Qry_inventoryREG: TStringField
      Tag = 1
      DisplayLabel = #49884#44400#44396
      FieldName = 'REG'
      Origin = 'APW_Inventory.REG'
      Size = 5
    end
    object Qry_inventoryEUB: TStringField
      Tag = 1
      DisplayLabel = #51021#47732#46041
      FieldName = 'EUB'
      Origin = 'APW_Inventory.EUB'
      Size = 5
    end
    object Qry_inventorySAN: TStringField
      Tag = 1
      DisplayLabel = #51648#48264#44396#48516
      FieldName = 'SAN'
      Origin = 'APW_Inventory.SAN'
      Size = 1
    end
    object Qry_inventoryADDR: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648
      FieldName = 'ADDR'
      Origin = 'APW_Inventory.ADDR'
      Size = 400
    end
    object Qry_inventoryBUN1: TStringField
      Tag = 1
      DisplayLabel = #48376#48264
      FieldName = 'BUN1'
      Origin = 'APW_Inventory.BUN1'
      Size = 4
    end
    object Qry_inventoryBUN2: TStringField
      Tag = 1
      DisplayLabel = #48512#48264
      FieldName = 'BUN2'
      Origin = 'APW_Inventory.BUN2'
      Size = 4
    end
    object Qry_inventoryREG1: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648#53076#46300'1('#50696#48708')'
      FieldName = 'REG1'
      Origin = 'APW_Inventory.REG1'
      Size = 5
    end
    object Qry_inventoryEUB1: TStringField
      Tag = 1
      DisplayLabel = #49548#51116#51648#53076#46300'2('#50696#48708')'
      FieldName = 'EUB1'
      Origin = 'APW_Inventory.EUB1'
      Size = 5
    end
    object Qry_inventoryBuilding: TStringField
      DisplayLabel = #44148#47932#47749
      FieldName = 'Building'
      Origin = 'APW_Inventory.Building'
      Size = 30
    end
    object Qry_inventoryDong: TStringField
      DisplayLabel = #46041
      FieldName = 'Dong'
      Origin = 'APW_Inventory.Dong'
      Size = 22
    end
    object Qry_inventoryFloor: TStringField
      DisplayLabel = #52789
      FieldName = 'Floor'
      Origin = 'APW_Inventory.Floor'
      Size = 10
    end
    object Qry_inventoryHo: TStringField
      DisplayLabel = #54840
      FieldName = 'Ho'
      Origin = 'APW_Inventory.Ho'
      Size = 10
    end
    object Qry_inventoryDocID: TStringField
      Tag = 1
      DisplayLabel = #44048#51221#49436#48264#54840
      FieldName = 'DocID'
      Origin = 'APW_Inventory.DocID'
      Size = 30
    end
    object Qry_inventoryNumber: TLargeintField
      DisplayLabel = #48264#54840
      FieldName = 'Number'
      Origin = '.'
    end
    object Qry_inventoryAddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'Address'
      Size = 200
      Calculated = True
    end
  end
  object dsInventory: TDataSource
    AutoEdit = False
    OnStateChange = dsInventoryStateChange
    Left = 456
    Top = 4
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 372
    Top = 5
    object cxEven: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxOdd: TcxStyle
      AssignedValues = [svColor]
      Color = 16773857
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
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
  end
  object RzFC: TRzFrameController
    DisabledColor = clWindow
    FlatButtons = False
    FrameVisible = True
    Left = 484
    Top = 4
  end
end
