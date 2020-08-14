object Frm_Booking: TFrm_Booking
  Left = 630
  Top = 225
  BorderStyle = bsDialog
  Caption = #50976#52824#51088
  ClientHeight = 328
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object Pan_iud: TRzPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 328
    Align = alClient
    BorderOuter = fsFlatRounded
    BorderSides = []
    Color = clInactiveCaptionText
    TabOrder = 0
    object RzPanel: TRzPanel
      Left = 5
      Top = 45
      Width = 397
      Height = 32
      BorderOuter = fsFlatRounded
      BorderSides = []
      Color = clWhite
      TabOrder = 0
      object RzLabel8: TRzLabel
        Left = 195
        Top = 10
        Width = 24
        Height = 12
        Caption = #48708#50984
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzLabel2: TRzLabel
        Left = 10
        Top = 10
        Width = 36
        Height = 12
        Caption = #50976#52824#51088
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object Lup_ChargeName: TcxDBLookupComboBox
        Tag = 1
        Left = 55
        Top = 6
        HelpType = htKeyword
        HelpKeyword = #50976#52824#51088#47484' '#49440#53469#54616#49464#50836'.'
        MoveEnter = True
        DataBinding.DataField = 'Manager'
        DataBinding.DataSource = dsBooking
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
        Properties.ListSource = DBM.Dse_I_JisaAppraisal
        StyleFocused.Color = clInactiveCaptionText
        TabOrder = 0
        Width = 131
      end
      object RzDBEdit6: TRzDBEdit
        Left = 223
        Top = 6
        Width = 43
        Height = 20
        Hint = #51032#47280#44148#51032' '#52292#47924#51088' '#51204#54868#48264#54840#51077#45768#45796'.'
        HelpType = htKeyword
        HelpKeyword = #48708#50984#51012' '#51077#47141#54616#49464#50836
        DataSource = dsBooking
        DataField = 'Ratio'
        FrameController = RzFC
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2003'
        TabOnEnter = True
        TabOrder = 1
      end
    end
    object pReceptBtns: TRzPanel
      Left = 5
      Top = 276
      Width = 398
      Height = 48
      BorderOuter = fsFlatRounded
      Color = clWhite
      TabOrder = 1
      object Btn_Save: TRzButton
        Tag = 6
        Left = 240
        Top = 12
        FrameColor = 7617536
        Action = aSave
        Color = 15791348
        HotTrack = True
        TabOrder = 0
      end
      object Btn_Cancel: TRzButton
        Tag = 7
        Left = 317
        Top = 12
        FrameColor = 7617536
        Action = aCancel
        Color = 15791348
        HotTrack = True
        TabOrder = 1
      end
      object Btn_Delete: TRzButton
        Tag = 4
        Left = 159
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
        Left = 83
        Top = 12
        FrameColor = 7617536
        Action = aEdit
        Color = 15791348
        HotTrack = True
        TabOrder = 3
      end
      object Btn_New: TRzButton
        Tag = 1
        Left = 7
        Top = 12
        FrameColor = 7617536
        Action = aNew
        Color = 15791348
        HotTrack = True
        TabOrder = 4
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 407
      Height = 41
      Align = alTop
      Alignment = taRightJustify
      BevelOuter = bvNone
      TabOrder = 2
      object TBToolbar1: TTBToolbar
        Left = 8
        Top = 8
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
    end
    object cxGrid1: TcxGrid
      Left = 4
      Top = 81
      Width = 398
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
        DataController.DataSource = dsBooking
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
        object VColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Manager'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 83
        end
        object VColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'emp'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object VColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Ratio'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 79
        end
        object VColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'BillRatio'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 79
        end
        object VColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'BillDate'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 64
        end
        object VColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'Bill'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 40
        end
        object VColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'MasterID'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 75
        end
      end
      object L: TcxGridLevel
        GridView = V
      end
    end
  end
  object ActionList1: TActionList
    Images = CM.SysImages24
    Left = 283
    Top = 5
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ImageIndex = 3
      DataSource = dsBooking
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ImageIndex = 4
      DataSource = dsBooking
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ImageIndex = 5
      DataSource = dsBooking
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 6
      DataSource = dsBooking
    end
    object aNew: TAction
      Tag = 1
      Caption = #49888#44508'(&A)'
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
  end
  object Qry_Booking: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'EXEC SP_S_APW_Booking_Kapa 53844, 1')
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
        Name = 'Manager'
        DataType = ftInteger
      end
      item
        Name = 'Ratio'
        DataType = ftWord
      end
      item
        Name = 'BillRatio'
        DataType = ftWord
      end
      item
        Name = 'Bill'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BillDate'
        DataType = ftDateTime
      end
      item
        Name = 'emp'
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
    Left = 312
    Top = 4
    object Qry_BookingSEQ: TLargeintField
      DisplayLabel = #49692#48264
      FieldName = 'SEQ'
    end
    object Qry_BookingMasterID: TLargeintField
      DisplayLabel = #51217#49688#48264#54840
      FieldName = 'MasterID'
    end
    object Qry_BookingManager: TIntegerField
      DisplayLabel = #50976#52824#51088#53076#46300
      FieldName = 'Manager'
    end
    object Qry_BookingRatio: TWordField
      DisplayLabel = #48708#50984
      FieldName = 'Ratio'
    end
    object Qry_BookingBillRatio: TWordField
      FieldName = 'BillRatio'
    end
    object Qry_BookingBill: TStringField
      FieldName = 'Bill'
      Size = 1
    end
    object Qry_BookingBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object Qry_Bookingemp: TStringField
      DisplayLabel = #50976#52824#51088#47749
      FieldName = 'emp'
    end
  end
  object dsBooking: TDataSource
    AutoEdit = False
    DataSet = Qry_Booking
    OnStateChange = dsBookingStateChange
    Left = 340
    Top = 4
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 256
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
    Left = 368
    Top = 4
  end
end
