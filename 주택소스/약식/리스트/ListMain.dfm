object XForm2: TXForm2
  Left = 3480
  Top = -73
  BorderStyle = bsDialog
  Caption = #50557#49885
  ClientHeight = 711
  ClientWidth = 1177
  Color = clBtnFace
  Constraints.MinHeight = 492
  Constraints.MinWidth = 463
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  OnClose = XFormClose
  OnShow = XFormShow
  CaptionButtons = <>
  DLLName = 'HF_YakList.dll'
  InitHeight = 0
  InitWidth = 0
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1177
    Height = 711
    Align = alClient
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGradientActiveCaption
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 238
      Height = 709
      Align = alLeft
      Color = clActiveCaption
      TabOrder = 0
      DesignSize = (
        238
        709)
      object RzLabel5: TRzLabel
        Left = 26
        Top = 282
        Width = 36
        Height = 12
        Caption = #44160#49353#50612
        Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        BlinkIntervalOff = 1000
        BlinkIntervalOn = 1000
      end
      object RzRadioGroup1: TRzRadioGroup
        Left = 20
        Top = 83
        Width = 205
        Height = 185
        Caption = #44160#49353#51312#44148
        Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          #49440#53469#50504#54632
          #44048#51221#49436#48264#54840
          #51032#47280#48264#54840
          #44144#47000#52376#47749
          #49548#51116#51648)
        ParentFont = False
        StartXPos = 18
        StartYPos = 10
        TabOrder = 0
        VerticalSpacing = 15
      end
      object Edt_Search: TRzEdit
        Left = 80
        Top = 278
        Width = 140
        Height = 20
        Hint = #51077#47141#54616#49888' '#48264#54840#50752' '#50526#48264#54840#44032' '#51068#52824#54616#45716' '#47784#46304' '#44048#51221#49436#48264#54840#47484' '#51312#54924#54633#45768#45796'.'
        DisabledColor = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        FrameHotTrack = True
        FrameVisible = True
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 1
        OnKeyPress = Edt_SearchKeyPress
      end
      object RzBitBtn1: TRzBitBtn
        Left = 123
        Top = 307
        Width = 95
        Height = 38
        FrameColor = 7617536
        Anchors = [akTop, akRight]
        Caption = #51312#54924'(&F)'
        Color = 15791348
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 2
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF969190736E6EAF7D7EFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9792916C6C70174B82326089AF7B7BFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8386863A79B11A81FF0D62
          BC3B5F7FB07D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2698FF
          3DB0FF349DFF1C7EF80C62BA395E7FB07B7DFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF2996FF42ADFE349AFF1C7EF80C60B8405F7FB17D7BFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A96FE41AFFE349AFF1C7EF80C
          5FB83E5F7EB07B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A97
          FE41AFFE349AFF1A7BF80B5FB744627FA97A7EFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF2C98FE41ADFE349CFF197BF60C5EB62B587FFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D99FE41ADFE339CFF287FE7
          3D607BFF00FFFF00FFFF00FF996964996964996964996964996964FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D
          9AFE4BB5FF8CBDEDAC9F966C565593665F996964DDCCABFFFFD9FFFFD9FFFFD7
          E9D5B6996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFD1ADA5B68775CCAB8CFFFFD3FFFFD3FF
          FFD0FFFFCFFFFFD0FFFFD3FFFFE2D4BAA4996964FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996B65D4AF8FFFEF
          B0FBEDB8FFFFCFFFFFCEFFFFCFFFFFD7FFFFDCFFFFEAFFFFFFD3BBB8996964FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          996964FFEAA6F2C78FFAEBB6FFFFD0FFFFCFFFFFD3FFFFE5FFFFF2FFFFFAFFFF
          FCFFFFFE996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF996964E6C9A0F6CA8BEEBA7FFBE7B4FFFFD0FFFFCFFFFFD7FFFFEB
          FFFFFEFFFFFCFFFFF2FFFFE5D8C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF996964FFEFADF0BC7DEBB075F7DDA7FEFCCBFF
          FFD1FFFFD5FFFFE6FFFFF6FFFFF6FFFFE6FFFFD7FFFFDA996964FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFF0AFEFBA7BE9A5
          6AF2C98FFCEFBCFFFFD1FFFFD3FFFFD9FFFFE1FFFFE2FFFFD9FFFFD3FFFFDA99
          6964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964
          FFF2B2F3C484E99E63EDB57AF4D79FFCF4C2FFFFD1FFFFD3FFFFD3FFFFD3FFFF
          D0FFFFCFFFFFD8996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF996964E6C9A0FCDE9EEFBA7EEEB779EFC284F6DAA1FBF2BFFFFFCF
          FFFFD1FFFFD0FFFFD0FFFFD1D9C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFFEC2FBEBCAF6D7ACF0C186EF
          BF82F3CC95FAE3ADFCF0BCFBF4C1FEF6C4FFFFD4996964FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964D7BB9EFFFF
          FFFEF7EEF6D8ACEDB474E9A76BEDB478F0C48AF6D49CFFF4B6D3B799996964FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF996964CEB6AFFFFFFFFFF4CBF6CF90F0BC7DF2BF81F7CE90FFEDA9D4B1
          93996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF996964996964E1C9A0FFF7B5FFF2AFFFF2B1
          E9CCA4996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF99696499
          6964996964996964996964FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object FindDate: TRzRadioGroup
        Left = 16
        Top = 362
        Width = 201
        Height = 115
        Caption = #44160#49353#44592#44036
        Color = clActiveCaption
        FlatColor = 15717318
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object RzLabel1: TRzLabel
          Left = 106
          Top = 29
          Width = 24
          Height = 12
          Caption = #48512#53552
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object RzLabel3: TRzLabel
          Left = 106
          Top = 49
          Width = 24
          Height = 12
          Caption = #44620#51648
          Transparent = False
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
        end
        object Edt_Start_ReceiptDate: TRzDateTimeEdit
          Left = 21
          Top = 25
          Width = 83
          Height = 20
          Hint = #51217#49688#51068#51088#44592#51456' '#49884#51089#51068#51088#51077#45768#45796'.'
          EditType = etDate
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          TabOrder = 0
        end
        object Edt_End_ReceiptDate: TRzDateTimeEdit
          Left = 21
          Top = 45
          Width = 83
          Height = 20
          Hint = #51217#49688#51068#51088#44592#51456' '#44160#49353#51333#47308#51068#51088' '#51077#45768#45796'.'
          EditType = etDate
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
        end
        object Btn_NowDate: TRzButton
          Tag = 1
          Left = 17
          Top = 73
          Width = 38
          Height = 20
          FrameColor = 7617536
          Caption = #50724#45720
          Color = 15791348
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 3
          TabStop = False
        end
        object Btn_Week: TRzButton
          Tag = 2
          Left = 55
          Top = 73
          Width = 38
          Height = 20
          FrameColor = 7617536
          Caption = '2'#51068
          Color = 15791348
          HotTrack = True
          TabOrder = 5
          TabStop = False
        end
        object Btn_Fifteen: TRzButton
          Tag = 3
          Left = 92
          Top = 73
          Width = 38
          Height = 20
          FrameColor = 7617536
          Caption = '3'#51068
          Color = 15791348
          HotTrack = True
          TabOrder = 2
          TabStop = False
        end
        object Btn_Month: TRzButton
          Tag = 4
          Left = 129
          Top = 73
          Width = 38
          Height = 20
          FrameColor = 7617536
          Caption = '1'#51452
          Color = 15791348
          HotTrack = True
          TabOrder = 4
          TabStop = False
        end
      end
      object GroupBox1: TGroupBox
        Left = 18
        Top = 15
        Width = 204
        Height = 48
        Caption = #48376' / '#51648' '#49324' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object Cob_Office: TRzComboBox
          Left = 19
          Top = 20
          Width = 160
          Height = 20
          Hint = #48376#51648#49324#47749#51012' '#44592#51456#51004#47196' '#44160#49353
          BeepOnInvalidKey = False
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 12
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object Panel5: TPanel
      Left = 239
      Top = 1
      Width = 937
      Height = 709
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 935
        Height = 707
        Align = alClient
        Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGradientActiveCaption
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 1
          Top = 29
          Width = 933
          Height = 677
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DS_KHF
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            Styles.ContentEven = CM.cxEven
            Styles.ContentOdd = CM.cxOdd
            Styles.Inactive = CM.cxInactive
            Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
            Styles.Footer = CM.cxBold
            Styles.Header = CM.cxHeader
            object cxGrid1DBTableView1Docid: TcxGridDBColumn
              Caption = #50557#49885#48264#54840
              DataBinding.FieldName = 'Docid'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 115
            end
            object cxGrid1DBTableView1simsaCHK: TcxGridDBColumn
              Caption = #49900#49324#54869#51064
              DataBinding.FieldName = 'simsaCHK'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 81
            end
            object cxGrid1DBTableView1CustDocid: TcxGridDBColumn
              Caption = #51032#47280#47928#49436#48264#54840
              DataBinding.FieldName = 'CustDocid'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 120
            end
            object cxGrid1DBTableView1Receiptdate: TcxGridDBColumn
              Caption = #51217#49688#51068#51088
              DataBinding.FieldName = 'Receiptdate'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1Address: TcxGridDBColumn
              Caption = #49548#51116#51648
              DataBinding.FieldName = 'Address'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 399
            end
            object cxGrid1DBTableView1writeman: TcxGridDBColumn
              Caption = #51089#49457#51088
              DataBinding.FieldName = 'writeman'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CustName: TcxGridDBColumn
              Caption = #44144#47000#52376#47749
              DataBinding.FieldName = 'CustName'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 149
            end
            object cxGrid1DBTableView1CustPhone: TcxGridDBColumn
              Caption = #44144#47000#52376#51204#54868#48264#54840
              DataBinding.FieldName = 'CustPhone'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 155
            end
            object cxGrid1DBTableView1Debtor: TcxGridDBColumn
              Caption = #52292#47924#51088
              DataBinding.FieldName = 'Debtor'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 142
            end
            object cxGrid1DBTableView1OwnerName: TcxGridDBColumn
              Caption = #49548#50976#51088
              DataBinding.FieldName = 'OwnerName'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 144
            end
            object cxGrid1DBTableView1Title: TcxGridDBColumn
              Caption = #44148#47749
              DataBinding.FieldName = 'Title'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 577
            end
            object cxGrid1DBTableView1status: TcxGridDBColumn
              Caption = #49345#53468
              DataBinding.FieldName = 'status'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 112
            end
            object cxGrid1DBTableView1TS_MasterID: TcxGridDBColumn
              Caption = #53441#49345#48264#54840
              DataBinding.FieldName = 'TS_MasterID'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 128
            end
            object cxGrid1DBTableView1Manager: TcxGridDBColumn
              Caption = #45812#45817#54217#44032#49324
              DataBinding.FieldName = 'Manager'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 139
            end
            object cxGrid1DBTableView1LCategory: TcxGridDBColumn
              DataBinding.FieldName = 'LCategory'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 60
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
            Options.DetailFrameColor = clSkyBlue
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 933
          Height = 28
          Align = alTop
          Color = clActiveCaption
          TabOrder = 1
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 168
            Height = 13
            Caption = #51452#53469#44552#50997#44277#49324' '#50557#49885' '#47532#49828#53944
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object DS_KHF: TDataSource
    DataSet = qry_HF
    Left = 409
    Top = 189
  end
  object PopupMenu1: TPopupMenu
    Left = 581
    Top = 159
    object N0: TMenuItem
      Caption = #51089'       '#49457
      OnClick = N0Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 644
    Top = 264
    object cx3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14671871
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = 13
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = 4194432
    end
    object cx1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12303359
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = 4194432
    end
    object cxErr: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8947967
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = #44404#47548#52404
      Font.Style = []
      TextColor = 4194432
    end
    object cxend: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14540253
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxendCancel: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14540253
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = #44404#47548#52404
      Font.Style = [fsStrikeOut]
    end
    object cxNA1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = #44404#47548#52404
      Font.Style = []
    end
    object cxiw: TcxStyle
      AssignedValues = [svColor]
      Color = 10092543
    end
    object cxiw2: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object qryOffice: TkbmMWClientQuery
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
    Left = 132
    Top = 120
  end
  object qry_HF: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'almighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      
        'EXEC  SP_IW_S_HF_YACKLIST '#39'2020-01-01'#39' , '#39'2020-06-30'#39' , '#39#39', '#39'10'#39 +
        ' , 0')
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
        Name = 'Docid'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Receiptdate'
        DataType = ftDateTime
      end
      item
        Name = 'CustName'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CustPhone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Debtor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OwnerName'
        DataType = ftString
        Size = 140
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CustDocid'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'status'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TS_MasterID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Manager'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 603
      end
      item
        Name = 'LCategory'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'simsaCHK'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'writeman'
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
    Left = 344
    Top = 184
    object qry_HFDocid: TStringField
      FieldName = 'Docid'
      Origin = 'dbo.APW_Master.Docid'
      Size = 30
    end
    object qry_HFReceiptdate: TDateTimeField
      FieldName = 'Receiptdate'
      Origin = 'dbo.APW_Master.Receiptdate'
    end
    object qry_HFCustName: TStringField
      FieldName = 'CustName'
      Origin = 'dbo.APW_Master.CustName'
      Size = 60
    end
    object qry_HFCustPhone: TStringField
      FieldName = 'CustPhone'
      Origin = 'dbo.APW_Master.CustPhone'
      Size = 40
    end
    object qry_HFDebtor: TStringField
      FieldName = 'Debtor'
      Origin = 'dbo.APW_Master.Debtor'
      Size = 60
    end
    object qry_HFOwnerName: TStringField
      FieldName = 'OwnerName'
      Origin = 'dbo.APW_Master.OwnerName'
      Size = 140
    end
    object qry_HFTitle: TStringField
      FieldName = 'Title'
      Origin = 'dbo.APW_Master.Title'
      Size = 200
    end
    object qry_HFCustDocid: TStringField
      FieldName = 'CustDocid'
      Origin = 'dbo.APW_Master.CustDocid'
      Size = 40
    end
    object qry_HFstatus: TStringField
      FieldName = 'status'
      Origin = '.'
      Size = 50
    end
    object qry_HFTS_MasterID: TStringField
      FieldName = 'TS_MasterID'
      Origin = 'dbo.APW_Master.TS_MasterID'
      Size = 30
    end
    object qry_HFManager: TStringField
      FieldName = 'Manager'
      Origin = '.Manager'
      Size = 300
    end
    object qry_HFAddress: TStringField
      FieldName = 'Address'
      Origin = '.'
      Size = 603
    end
    object qry_HFLCategory: TStringField
      FieldName = 'LCategory'
      Origin = 'dbo.APW_Category.Name'
      Size = 50
    end
    object qry_HFsimsaCHK: TStringField
      FieldName = 'simsaCHK'
      Origin = 'APW_IW_HF_YACKMASTER.simsaCHK'
      Size = 2
    end
    object qry_HFwriteman: TStringField
      FieldName = 'writeman'
      Origin = 'APW_IW_HF_YACKMASTER.writeman'
    end
  end
end
