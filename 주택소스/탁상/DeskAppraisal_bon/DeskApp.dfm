object Form1: TForm1
  Left = 163
  Top = 0
  Width = 1717
  Height = 1046
  Caption = #53441#49345#51088#47928' '#44288#47532
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
  OnShow = XFormShow
  CaptionButtons = <>
  DLLName = 'DeskAppraisal_bon.dll'
  InitHeight = 0
  InitWidth = 0
  MaxInstance = 1
  PixelsPerInch = 96
  TextHeight = 12
  object RzPanel0: TRzPanel
    Left = 0
    Top = 57
    Width = 1701
    Height = 931
    Align = alClient
    TabOrder = 1
    object RzPanel3: TRzPanel
      Left = 2
      Top = 829
      Width = 1697
      Height = 100
      Align = alBottom
      BorderOuter = fsFlat
      BorderHighlight = clWhite
      BorderShadow = 13290186
      Color = clWindow
      FlatColorAdjustment = 0
      FrameController = RzFC
      TabOrder = 0
      Visible = False
      object pReceptBtns: TRzPanel
        Left = 10
        Top = 250
        Width = 916
        Height = 44
        BorderOuter = fsFlatRounded
        Color = clWhite
        TabOrder = 0
      end
      object datapanel: TRzPanel
        Left = 1
        Top = 1
        Width = 1695
        Height = 152
        Align = alTop
        BorderOuter = fsNone
        Color = clWhite
        TabOrder = 1
        Visible = False
        object RzBorder3: TRzBorder
          Left = 5
          Top = 166
          Width = 920
          Height = 28
        end
        object RzBorder4: TRzBorder
          Left = 5
          Top = 192
          Width = 920
          Height = 51
        end
      end
    end
    object cxSplitterBottom: TcxSplitter
      Left = 2
      Top = 821
      Width = 1697
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      HotZone.SizePercent = 83
      AlignSplitter = salBottom
      Control = RzPanel3
      Color = clSkyBlue
      ParentColor = False
    end
    object Grid: TcxGrid
      Left = 138
      Top = 242
      Width = 111
      Height = 223
      TabOrder = 2
      TabStop = False
      Visible = False
      object tvGrid: TcxGridDBTableView
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
        DataController.DataSource = dsMst
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = cxBackground
        Styles.ContentEven = cxEven
        Styles.ContentOdd = cxOdd
        Styles.Inactive = cxInactive
        Styles.Footer = cxFooter
        Styles.Header = cxHeader
        object tvGridMasterID: TcxGridDBColumn
          DataBinding.FieldName = 'MasterID'
          Width = 142
        end
        object tvGridOffice: TcxGridDBColumn
          Caption = #48376#51648#49324
          DataBinding.FieldName = 'Office'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'OfficeID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 79
        end
        object tvGridReg_DateTime: TcxGridDBColumn
          Caption = #51217#49688#51068#51088
          DataBinding.FieldName = 'Reg_DateTime'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGridReg_Charge: TcxGridDBColumn
          Caption = #51217#49688#45812#45817
          DataBinding.FieldName = 'Reg_Charge'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'USR_SEQ'
          Properties.ListColumns = <
            item
              FieldName = 'EMP'
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGridColumn1: TcxGridDBColumn
          Caption = #45812#45817#54217#44032#49324
          DataBinding.FieldName = 'LUP_CONSULT_CHARGE'
        end
        object tvGridConsult_Charge: TcxGridDBColumn
          Caption = #53441#49345#45812#45817
          DataBinding.FieldName = 'LConsult_Charge'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'USR_SEQ'
          Properties.ListColumns = <
            item
              FieldName = 'EMP'
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGridCustName: TcxGridDBColumn
          Caption = #51032' '#47280' '#52376
          DataBinding.FieldName = 'CustName'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 195
        end
        object tvGridToji_Total: TcxGridDBColumn
          Caption = #53664#51648#44552#50529#54633#44228
          DataBinding.FieldName = 'Toji_Total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 110
        end
        object tvGridBuild_Total: TcxGridDBColumn
          Caption = #44148#47932#44552#50529#54633#44228
          DataBinding.FieldName = 'Build_Total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 110
        end
        object tvGridToJi_Build_Total: TcxGridDBColumn
          Caption = #53664#51648#44148#47932#54633#44228
          DataBinding.FieldName = 'ToJi_Build_Total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 85
        end
        object tvGridAddr: TcxGridDBColumn
          Caption = #49548' '#51116' '#51648
          DataBinding.FieldName = 'Address'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGridJun_Master: TcxGridDBColumn
          Caption = #51204#47168
          DataBinding.FieldName = 'Jun_Master'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 94
        end
        object tvGridCustPhone: TcxGridDBColumn
          Caption = #51032#47280#52376#51204#54868
          DataBinding.FieldName = 'CustPhone'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 87
        end
        object tvGridCustFAX: TcxGridDBColumn
          Caption = #51032#47280#52376#54057#49828
          DataBinding.FieldName = 'CustFAX'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 78
        end
        object tvGridCustCharge: TcxGridDBColumn
          Caption = #51032#47280#52376#45812#45817
          DataBinding.FieldName = 'CustCharge'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 75
        end
        object tvGridBuilding: TcxGridDBColumn
          Caption = #44148' '#47932' '#47749
          DataBinding.FieldName = 'Building'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 70
        end
        object tvGridDongHo: TcxGridDBColumn
          Caption = #46041#54840
          DataBinding.FieldName = 'DongHo'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 67
        end
        object tvGridPyoung: TcxGridDBColumn
          Caption = #54217
          DataBinding.FieldName = 'Pyoung'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 49
        end
        object tvGridCategory: TcxGridDBColumn
          Caption = #47932#44148#51333#47448
          DataBinding.FieldName = 'Category'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 73
        end
        object tvGridAdjPrice: TcxGridDBColumn
          Caption = #51201#51221#49884#49464
          DataBinding.FieldName = 'AdjPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 100
        end
        object tvGridDocID: TcxGridDBColumn
          Caption = #51221#49885#44048#51221#49436#48264#54840
          DataBinding.FieldName = 'DocID'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 93
        end
        object tvGridMinPrice: TcxGridDBColumn
          Caption = #52572#49548#44552#50529
          DataBinding.FieldName = 'MinPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 110
        end
        object tvGridMaxPrice: TcxGridDBColumn
          Caption = #52572#45824#44552#50529
          DataBinding.FieldName = 'MaxPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 110
        end
        object tvGridCustID: TcxGridDBColumn
          Caption = #44144#47000#52376#53076#46300
          DataBinding.FieldName = 'CustID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 83
        end
      end
      object lvGrid: TcxGridLevel
        GridView = tvGrid
      end
    end
    object Hint_Panel: TRzPanel
      Left = 1195
      Top = 696
      Width = 449
      Height = 63
      BorderInner = fsLowered
      Caption = 
        '           '#54596#46300#44036#51032' '#51060#46041#51008' '#54868#49332#54364#48260#53948#51004#47196' '#54616#49492#50556' '#54633#45768#45796'.                         '#47112#53076#46300 +
        #51032' '#52628#44032#49325#51228#45716' Insert / Delete Key'#47196' '#51228#50612#54616#49892' '#49688' '#51080#49845#45768#45796'.  '#44552#50529#51008' '#51200#51109#49884#51216#50640' '#51088#46041#44228#49328#46121#45768#45796'.'
      Color = 8454143
      TabOrder = 3
      Visible = False
    end
    object Panel20: TPanel
      Left = 1010
      Top = 2
      Width = 689
      Height = 819
      Align = alClient
      Caption = #47924
      Color = clWhite
      Locked = True
      TabOrder = 4
      object Panel21: TPanel
        Left = 1
        Top = 673
        Width = 687
        Height = 145
        Align = alBottom
        Caption = 'Panel21'
        TabOrder = 0
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 685
          Height = 12
          Align = alTop
          Caption = #51221#49885#44048#51221' '#51204#47168
        end
        object cxGrid3: TcxGrid
          Left = 1
          Top = 13
          Width = 685
          Height = 131
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = Masterusa
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid3DBTableView1DocID: TcxGridDBColumn
              Caption = #47928#49436#48264#54840
              DataBinding.FieldName = 'DocID'
              Width = 100
            end
            object cxGrid3DBTableView1address: TcxGridDBColumn
              Caption = #51452#49548
              DataBinding.FieldName = 'address'
              Width = 204
            end
            object cxGrid3DBTableView1BUN1: TcxGridDBColumn
              Caption = #48376#48264
              DataBinding.FieldName = 'BUN1'
            end
            object cxGrid3DBTableView1BUN2: TcxGridDBColumn
              Caption = #48512#48264
              DataBinding.FieldName = 'BUN2'
            end
            object cxGrid3DBTableView1price: TcxGridDBColumn
              Caption = #54217#44032#50529
              DataBinding.FieldName = 'price'
              Width = 92
            end
            object cxGrid3DBTableView1Custname: TcxGridDBColumn
              Caption = #44144#47000#52376#47749
              DataBinding.FieldName = 'Custname'
              Width = 196
            end
            object cxGrid3DBTableView1Charge: TcxGridDBColumn
              Caption = #45812#45817#51088
              DataBinding.FieldName = 'Charge'
              Width = 137
            end
            object cxGrid3DBTableView1ReceiptDate: TcxGridDBColumn
              Caption = #51217#49688#51068#51088
              DataBinding.FieldName = 'ReceiptDate'
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object Panel22: TPanel
        Left = 1
        Top = 427
        Width = 687
        Height = 246
        Align = alBottom
        Caption = 'Panel22'
        TabOrder = 1
        object Label5: TLabel
          Left = 1
          Top = 1
          Width = 685
          Height = 12
          Align = alTop
          Caption = #53441#49345#44048#51221' '#51204#47168
        end
        object cxGrid4: TcxGrid
          Left = 1
          Top = 13
          Width = 685
          Height = 232
          Align = alClient
          TabOrder = 0
          TabStop = False
          object cxGridDBTableView4: TcxGridDBTableView
            OnDblClick = cxGridDBTableView4DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsdeskusa
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGridDBTableView4Address: TcxGridDBColumn
              Caption = #51452#49548
              DataBinding.FieldName = 'Address'
              Options.Editing = False
              Width = 239
            end
            object cxGridDBTableView4BUN1: TcxGridDBColumn
              Caption = #48376#48264
              DataBinding.FieldName = 'BUN1'
              Options.Editing = False
            end
            object cxGridDBTableView4BUN2: TcxGridDBColumn
              Caption = #48512#48264
              DataBinding.FieldName = 'BUN2'
              Options.Editing = False
            end
            object cxGridDBTableView4Toji_total: TcxGridDBColumn
              Caption = #53664#51648#54633
              DataBinding.FieldName = 'Toji_total'
              Options.Editing = False
              Width = 86
            end
            object cxGridDBTableView4Build_total: TcxGridDBColumn
              Caption = #44148#47932#54633
              DataBinding.FieldName = 'Build_total'
              Options.Editing = False
              Width = 97
            end
            object cxGridDBTableView4ToJi_Build_Total: TcxGridDBColumn
              Caption = #44148#47932','#53664#51648#54633
              DataBinding.FieldName = 'ToJi_Build_Total'
              Options.Editing = False
              Width = 106
            end
            object cxGridDBTableView4EMP: TcxGridDBColumn
              Caption = #49345#45812#51088
              DataBinding.FieldName = 'EMP'
              Options.Editing = False
              Width = 104
            end
            object cxGridDBTableView4CustName: TcxGridDBColumn
              Caption = #44144#47000#52376#47749
              DataBinding.FieldName = 'CustName'
              Options.Editing = False
              Width = 160
            end
            object cxGridDBTableView4MasterID: TcxGridDBColumn
              Caption = #47928#49436#48264#54840
              DataBinding.FieldName = 'MasterID'
              Options.Editing = False
              Width = 129
            end
            object cxGridDBTableView4Reg_DateTime: TcxGridDBColumn
              Caption = #51217#49688#51068
              DataBinding.FieldName = 'Reg_DateTime'
              Options.Editing = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
      end
      object ScrollBox1: TScrollBox
        Left = 1
        Top = 1
        Width = 687
        Height = 426
        Align = alClient
        TabOrder = 2
        object GroupBox2: TGroupBox
          Left = 21
          Top = 174
          Width = 657
          Height = 223
          Caption = #50629#47924#54016#51088#47308
          TabOrder = 0
          object Label6: TLabel
            Left = 16
            Top = 30
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'1'
          end
          object Label7: TLabel
            Left = 16
            Top = 68
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'2'
          end
          object Label8: TLabel
            Left = 16
            Top = 103
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'3'
          end
          object Label9: TLabel
            Left = 16
            Top = 140
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'4'
          end
          object Label10: TLabel
            Left = 16
            Top = 175
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'5'
          end
          object edit_file4: TEdit
            Left = 78
            Top = 26
            Width = 220
            Height = 20
            TabOrder = 0
          end
          object edit_file5: TEdit
            Left = 78
            Top = 66
            Width = 220
            Height = 20
            TabOrder = 1
          end
          object edit_file6: TEdit
            Left = 78
            Top = 103
            Width = 220
            Height = 20
            TabOrder = 2
          end
          object btn_file4in: TButton
            Left = 310
            Top = 22
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 3
            OnClick = btn_file4inClick
          end
          object btn_file4ma: TButton
            Left = 399
            Top = 22
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 4
            OnClick = btn_file4maClick
          end
          object btn_file4open: TButton
            Left = 481
            Top = 22
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 5
            OnClick = btn_file4openClick
          end
          object btn_file5in: TButton
            Left = 312
            Top = 62
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 6
            OnClick = btn_file5inClick
          end
          object btn_file5ma: TButton
            Left = 399
            Top = 60
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 7
            OnClick = btn_file5maClick
          end
          object btn_file5open: TButton
            Left = 481
            Top = 59
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 8
            OnClick = btn_file5openClick
          end
          object btn_file6in: TButton
            Left = 313
            Top = 98
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 9
            OnClick = btn_file6inClick
          end
          object btn_file6ma: TButton
            Left = 399
            Top = 98
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 10
            OnClick = btn_file6maClick
          end
          object btn_file6open: TButton
            Left = 481
            Top = 98
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 11
            OnClick = btn_file6openClick
          end
          object edit_file7: TEdit
            Left = 78
            Top = 138
            Width = 220
            Height = 20
            TabOrder = 12
          end
          object edit_file8: TEdit
            Left = 78
            Top = 175
            Width = 220
            Height = 20
            TabOrder = 13
          end
          object btn_file7in: TButton
            Left = 312
            Top = 134
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 14
            OnClick = btn_file7inClick
          end
          object btn_file7ma: TButton
            Left = 399
            Top = 132
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 15
            OnClick = btn_file7maClick
          end
          object btn_file7open: TButton
            Left = 481
            Top = 131
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 16
            OnClick = btn_file7openClick
          end
          object btn_file8in: TButton
            Left = 313
            Top = 170
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 17
            OnClick = btn_file8inClick
          end
          object btn_file8ma: TButton
            Left = 399
            Top = 169
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 18
            OnClick = btn_file8maClick
          end
          object btn_file8open: TButton
            Left = 481
            Top = 169
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 19
            OnClick = btn_file8openClick
          end
          object btn_delF4: TButton
            Left = 562
            Top = 22
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 20
            OnClick = btn_delF4Click
          end
          object btn_delF5: TButton
            Left = 562
            Top = 58
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 21
            OnClick = btn_delF5Click
          end
          object btn_delF6: TButton
            Left = 562
            Top = 97
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 22
            OnClick = btn_delF6Click
          end
          object btn_delF7: TButton
            Left = 562
            Top = 131
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 23
            OnClick = btn_delF7Click
          end
          object btn_delF8: TButton
            Left = 562
            Top = 168
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 24
            OnClick = btn_delF8Click
          end
        end
        object GroupBox1: TGroupBox
          Left = 24
          Top = 8
          Width = 652
          Height = 145
          Caption = #53441#49345#54016#51088#47308
          TabOrder = 1
          object Label1: TLabel
            Left = 16
            Top = 30
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'1'
          end
          object Label2: TLabel
            Left = 16
            Top = 68
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'2'
          end
          object Label3: TLabel
            Left = 16
            Top = 103
            Width = 54
            Height = 12
            Caption = #52392#48512#54028#51068'3'
          end
          object edit_file1: TEdit
            Left = 74
            Top = 26
            Width = 219
            Height = 20
            TabOrder = 0
          end
          object edit_file2: TEdit
            Left = 74
            Top = 66
            Width = 219
            Height = 20
            TabOrder = 1
          end
          object edit_file3: TEdit
            Left = 74
            Top = 103
            Width = 219
            Height = 20
            TabOrder = 2
          end
          object btn_file1in: TButton
            Left = 305
            Top = 22
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 3
            OnClick = btn_file1inClick
          end
          object btn_file1ma: TButton
            Left = 394
            Top = 22
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 4
            OnClick = btn_file1maClick
          end
          object btn_file1open: TButton
            Left = 476
            Top = 22
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 5
            OnClick = btn_file1openClick
          end
          object btn_file2in: TButton
            Left = 307
            Top = 62
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 6
            OnClick = btn_file2inClick
          end
          object btn_file2ma: TButton
            Left = 394
            Top = 60
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 7
            OnClick = btn_file2maClick
          end
          object btn_file2open: TButton
            Left = 476
            Top = 59
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 8
            OnClick = btn_file2openClick
          end
          object btn_file3in: TButton
            Left = 308
            Top = 98
            Width = 75
            Height = 25
            Caption = #54028#51068#45347#44592
            TabOrder = 9
            OnClick = btn_file3inClick
          end
          object btn_file3ma: TButton
            Left = 394
            Top = 98
            Width = 75
            Height = 25
            Caption = #54028#51068#49373#49457
            TabOrder = 10
            OnClick = btn_file3maClick
          end
          object btn_file3open: TButton
            Left = 476
            Top = 98
            Width = 75
            Height = 25
            Caption = #50676#46988
            TabOrder = 11
            OnClick = btn_file3openClick
          end
          object btn_delF1: TButton
            Left = 558
            Top = 22
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 12
            OnClick = btn_delF1Click
          end
          object btn_delF2: TButton
            Left = 558
            Top = 58
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 13
            OnClick = btn_delF2Click
          end
          object btn_delF3: TButton
            Left = 558
            Top = 97
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 14
            OnClick = btn_delF3Click
          end
        end
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 1008
      Height = 819
      ActivePage = TabSheet1
      Align = alLeft
      TabOrder = 5
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #53441#49345#51077#47141
        object Edt_MasterID: TRzDBEdit
          Left = 147
          Top = -1
          Width = 225
          Height = 20
          DataSource = dsMst
          DataField = 'MasterID'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 20
          OnChange = Edt_MasterIDChange
          OnClick = Edt_MasterIDClick
          OnEnter = Edt_MasterIDEnter
          OnExit = HintOutProcess
          OnKeyPress = Edt_MasterIDKeyPress
        end
        object Lup_Reg_Charge: TcxDBLookupComboBox
          Left = 147
          Top = 17
          MoveEnter = True
          DataBinding.DataField = 'Reg_Charge'
          DataBinding.DataSource = dsMst
          ParentFont = False
          Properties.KeyFieldNames = 'USR_SEQ'
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
          StyleFocused.Color = clMedGray
          TabOrder = 21
          Width = 225
        end
        object Edt_Reg_DateTime: TRzDBDateTimePicker
          Left = 565
          Top = 0
          Width = 228
          Height = 18
          Date = 44014.481096273150000000
          Format = 'yyyy-MM-dd tt h:mm:ss'
          Time = 44014.481096273150000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOrder = 22
          OnKeyPress = Edt_Reg_DateTimeKeyPress
          FrameController = RzFC
          DataField = 'Reg_DateTime'
          DataSource = dsMst
        end
        object Lup_Manager: TcxDBLookupComboBox
          Left = 565
          Top = 36
          MoveEnter = True
          DataBinding.DataField = 'Manager'
          DataBinding.DataSource = dsMst
          ParentFont = False
          Properties.KeyFieldNames = 'USR_SEQ'
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
          StyleFocused.Color = clMedGray
          TabOrder = 2
          OnKeyPress = Lup_ManagerKeyPress
          Width = 126
        end
        object Lup_Consult_Charge: TcxDBLookupComboBox
          Left = 565
          Top = 18
          MoveEnter = True
          DataBinding.DataField = 'Consult_Charge'
          DataBinding.DataSource = dsMst
          ParentFont = False
          Properties.KeyFieldNames = 'USR_SEQ'
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
          StyleFocused.Color = clMedGray
          TabOrder = 23
          OnKeyPress = Lup_Consult_ChargeKeyPress
          Width = 126
        end
        object Edt_CustName: TRzDBEdit
          Tag = 1
          Left = 147
          Top = 37
          Width = 225
          Height = 20
          Hint = #51032#47280#54620' '#44144#47000#52376#51032' '#48512#49436#51077#45768#45796'.'
          HelpType = htKeyword
          HelpKeyword = #44144#47000#52376#47749#51012' '#51077#47141#54644#51452#49464#50836
          DataSource = dsMst
          DataField = 'CustName'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edt_CustNameKeyPress
        end
        object Edt_CustPhone: TRzDBEdit
          Left = 565
          Top = 55
          Width = 225
          Height = 20
          DataSource = dsMst
          DataField = 'CustPhone'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 5
        end
        object RzButton1: TRzButton
          Left = 372
          Top = 37
          Width = 19
          Height = 20
          Caption = '&1'
          Enabled = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnCustClick
        end
        object pAddress: TRzPanel
          Left = 146
          Top = 95
          Width = 644
          Height = 70
          BorderInner = fsFlat
          BorderOuter = fsFlat
          BorderHighlight = clWhite
          BorderShadow = 13290186
          Color = clWindow
          FlatColorAdjustment = 0
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ParentFont = False
          TabOrder = 8
          object RzLabel2: TRzLabel
            Left = 267
            Top = 6
            Width = 24
            Height = 12
            Caption = #44396#48516
            Transparent = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object RzLabel3: TRzLabel
            Left = 373
            Top = 6
            Width = 24
            Height = 12
            Caption = #48376#48264
            Transparent = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object RzLabel4: TRzLabel
            Left = 439
            Top = 6
            Width = 24
            Height = 12
            Caption = #48512#48264
            Transparent = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object RzLabel5: TRzLabel
            Left = 9
            Top = 5
            Width = 36
            Height = 12
            Caption = #49548#51116#51648
            Transparent = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object cxLabel15: TRzLabel
            Left = 591
            Top = 34
            Width = 12
            Height = 12
            Caption = #46041
            Transparent = False
            Visible = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object RzLabel9: TRzLabel
            Left = 8
            Top = 26
            Width = 72
            Height = 12
            Hint = #50500#54028#53944' '#46608#45716' '#49345#44032#51060#47492
            Caption = #44148#47932#47749' '#46041' '#54840
            Transparent = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object RzLabel6: TRzLabel
            Left = 596
            Top = 82
            Width = 12
            Height = 12
            Caption = #13217
            Transparent = False
            Visible = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object RzStatusPane3: TRzStatusPane
            Left = 2
            Top = 42
            Width = 583
            Height = 29
            BorderWidth = 5
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object Edt_Nd_Addr: TRzDBLabel
            Left = 11
            Top = 49
            Width = 559
            Height = 16
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
            DataField = 'Address'
            DataSource = dsMst
          end
          object RzLabel7: TRzLabel
            Left = 671
            Top = 34
            Width = 12
            Height = 12
            Caption = #54840
            Transparent = False
            Visible = False
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
          end
          object cxBUN1: TRzDBEdit
            Left = 397
            Top = 3
            Width = 40
            Height = 20
            Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
            DataSource = dsMst
            DataField = 'BUN1'
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            TabOnEnter = True
            TabOrder = 2
            OnExit = cxBUN1Exit
            OnKeyPress = cxBUN1KeyPress
          end
          object cxBUN2: TRzDBEdit
            Left = 465
            Top = 3
            Width = 40
            Height = 20
            Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
            DataSource = dsMst
            DataField = 'BUN2'
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            TabOnEnter = True
            TabOrder = 3
            OnExit = cxBUN2Exit
            OnKeyPress = cxBUN2KeyPress
          end
          object cxAptName: TRzDBEdit
            Left = 87
            Top = 25
            Width = 492
            Height = 20
            Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
            DataSource = dsMst
            DataField = 'Building'
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            MaxLength = 200
            TabOnEnter = True
            TabOrder = 5
            OnKeyPress = cxAptNameKeyPress
          end
          object cxDONG: TRzDBEdit
            Left = 584
            Top = 43
            Width = 69
            Height = 20
            Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
            DataSource = dsMst
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            TabOnEnter = True
            TabOrder = 8
            Visible = False
            OnKeyPress = cxDONGKeyPress
          end
          object btnAddrClose: TRzButton
            Left = 606
            Top = 70
            Width = 76
            Height = 29
            Hint = #49548#51116#51648#47484' '#51200#51109#54633#45768#45796'.'
            FrameColor = 7617536
            Caption = #54869#51064'(&L)'
            Color = 15791348
            HotTrack = True
            TabOrder = 6
            Visible = False
            OnClick = btnAddrCloseClick
          end
          object editAddress: TRzDBButtonEdit
            Tag = 1
            Left = 54
            Top = 3
            Width = 202
            Height = 20
            Hint = #52286#44256#51088' '#54616#45716' '#49548#51116#51648#51032' '#51021#47732#46041#47532#47484'  '#51077#47141#54980' Ctrl+Enter'#47484' '#52824#49464#50836'.'
            HelpType = htKeyword
            HelpKeyword = #49548#51116#51648#47484' '#51077#47141#54644' '#51452#49464#50836
            DataSource = dsMst
            DataField = 'Addr'
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            TabOrder = 0
            OnKeyPress = editAddressKeyPress
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = editAddressButtonClick
          end
          object RzDBEdit1: TRzDBEdit
            Left = 664
            Top = 51
            Width = 73
            Height = 20
            Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
            DataSource = dsMst
            DataField = 'Pyoung'
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            TabOnEnter = True
            TabOrder = 9
            Visible = False
            OnKeyPress = RzDBEdit1KeyPress
          end
          object btnJunSearch: TRzButton
            Left = 548
            Top = 2
            Width = 91
            Height = 23
            Hint = #54217#44032#54620' '#51204#47168#47484' '#54869#51064#54633#45768#45796
            FrameColor = 7617536
            Caption = #51204#47168#44160#49353'(&T)'
            Color = 15791348
            HotTrack = True
            TabOrder = 7
            OnClick = btnJunSearchClick
          end
          object cxAddrEtc: TRzDBCheckBox
            Left = 512
            Top = 4
            Width = 34
            Height = 17
            Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#49892#51201#48372#44256' '#44032#45733#54616#44172' '#54633#45768#45796'.'
            DataField = 'AddrEtc'
            DataSource = dsMst
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = #50808
            DisabledColor = clWindow
            FrameController = RzFC
            HotTrack = True
            HotTrackColor = clBtnShadow
            HotTrackStyle = htsFrame
            TabOnEnter = True
            TabOrder = 4
          end
          object RzDBEdit3: TRzDBEdit
            Left = 305
            Top = 3
            Width = 40
            Height = 20
            DataSource = dsMst
            DataField = 'SAN'
            FrameController = RzFC
            ImeMode = imSHanguel
            ImeName = 'Microsoft IME 2003'
            TabOnEnter = True
            TabOrder = 1
            OnKeyPress = RzDBEdit3KeyPress
          end
        end
        object Etc_CustCharge: TRzDBEdit
          Left = 147
          Top = 56
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'CustCharge'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 3
        end
        object Edt_CustFAX: TRzDBEdit
          Left = 147
          Top = 74
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'CustFAX'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 6
          OnKeyPress = Edt_CustFAXKeyPress
        end
        object BtnAddr: TRzButton
          Left = 1025
          Top = 549
          Width = 19
          Caption = '&2'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 24
          Visible = False
          OnClick = Edt_AddrButtonClick
        end
        object Edt_Build_Struct: TRzDBEdit
          Left = 141
          Top = 466
          Width = 206
          Height = 20
          DataSource = dsMst
          DataField = 'Build_Struct'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 13
          OnExit = Edt_Build_StructExit
          OnKeyPress = Edt_Build_StructKeyPress
        end
        object Edt_Remodel_Date: TRzDBEdit
          Left = 552
          Top = 465
          Width = 238
          Height = 20
          DataSource = dsMst
          DataField = 'Remodel_Date'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 14
          OnKeyPress = Edt_Remodel_DateKeyPress
        end
        object grLand: TcxGrid
          Left = 36
          Top = 232
          Width = 754
          Height = 119
          Font.Charset = HANGEUL_CHARSET
          Font.Color = cl3DLight
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          TabStop = False
          OnEnter = HintProcess
          OnExit = grLandExit
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Slants.Positions = [spLeft, spRight]
          LookAndFeel.NativeStyle = False
          RootLevelOptions.DetailFrameColor = clBtnHighlight
          RootLevelOptions.DetailTabsPosition = dtpTop
          OnMouseEnter = grLandMouseEnter
          object tvLand: TcxGridDBTableView
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
            OnEditKeyDown = tvLandEditKeyDown
            DataController.DataSource = dsLand
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'Total'
                Column = tvLandkum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = cxBackground
            Styles.ContentEven = cxEven
            Styles.ContentOdd = cxOdd
            Styles.Inactive = cxInactive
            Styles.Footer = cxBackground
            Styles.Header = cxHeader
            object tvLandColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
            object tvLandJiBun: TcxGridDBColumn
              Caption = #51648#48264
              DataBinding.FieldName = 'JiBun'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 73
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #51648#47785
              DataBinding.FieldName = 'JiMok'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 52
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #47732#51201'('#13217')'
              DataBinding.FieldName = 'Area'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.EditFormat = True
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.00'
              Properties.UseDisplayFormatWhenEditing = True
              Properties.OnEditValueChanged = cxGridDBColumn3PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 63
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #45800#44032
              DataBinding.FieldName = 'UnitCost'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnEditValueChanged = cxGridDBColumn4PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 78
            end
            object tvLandkum: TcxGridDBColumn
              Caption = #44552#50529
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Styles.Footer = cxEven
              Width = 98
            end
          end
          object tvBuild: TcxGridDBTableView
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
            OnEditKeyDown = tvBuildEditKeyDown
            DataController.DataSource = dsBuild
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'Total'
                Column = cxGridDBColumn9
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = cxBackground
            Styles.ContentEven = cxEven
            Styles.ContentOdd = cxOdd
            Styles.Inactive = cxInactive
            Styles.Footer = cxFooter
            Styles.Header = cxHeader
            object tvBuildColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
            object tvBuildFloors: TcxGridDBColumn
              Caption = #52789
              DataBinding.FieldName = 'Floors'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 60
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #47732#51201
              DataBinding.FieldName = 'Area'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.00'
              Properties.OnEditValueChanged = cxGridDBColumn7PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 77
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #45800#44032
              DataBinding.FieldName = 'UnitCost'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 114
              Properties.OnButtonClick = cxGridDBColumn8PropertiesButtonClick
              Properties.OnEditValueChanged = cxGridDBColumn8PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 77
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #44552#50529
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 104
            end
            object tvBuildRe_Price: TcxGridDBColumn
              Caption = #51116#51312#45804#44032#44201
              DataBinding.FieldName = 'Re_Price'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 118
            end
          end
          object lvLand: TcxGridLevel
            Caption = #53664#51648#47749#49464
            GridView = tvLand
          end
          object lvBuild: TcxGridLevel
            Caption = #44148#47932#47749#49464
            Visible = False
          end
        end
        object Edt_ToJi_Build_Total: TRzDBEdit
          Left = 551
          Top = 486
          Width = 239
          Height = 20
          DataSource = dsMst
          DataField = 'ToJi_Build_Total'
          Alignment = taRightJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 16
        end
        object cxDBCurrencyEdit4: TRzDBEdit
          Left = 140
          Top = 486
          Width = 207
          Height = 20
          DataSource = dsMst
          DataField = 'AdjPrice'
          Alignment = taRightJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 15
          OnEnter = cxDBCurrencyEdit4Enter
          OnKeyPress = cxDBCurrencyEdit4KeyPress
        end
        object cxLabel18: TcxLabel
          Left = 16
          Top = 426
          Caption = '-'
          StyleDisabled.TextColor = clBlack
          Visible = False
        end
        object Edt_Category: TRzDBEdit
          Left = 565
          Top = 75
          Width = 36
          Height = 20
          DataSource = dsMst
          DataField = 'Category'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 55
          Visible = False
        end
        object Lup_Category: TRzDBLookupComboBox
          Tag = 1
          Left = 601
          Top = 75
          Width = 189
          Height = 20
          Hint = #47932#44148#51333#47448#47484' '#49440#53469#54616#50668' '#51077#47141#54633#45768#45796'.'
          HelpType = htKeyword
          HelpKeyword = #47932#44148#51333#47448#53076#46300' '#51077#47141#54644' '#51452#49464#50836'.'
          DataField = 'Category'
          DataSource = dsMst
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          KeyField = 'Code'
          ListField = 'Name'
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnKeyPress = Lup_CategoryKeyPress
          FrameController = RzFC
          TabOnEnter = True
        end
        object Button1: TButton
          Left = 798
          Top = 628
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 26
          Visible = False
        end
        object sub_addbtn: TRzBitBtn
          Left = 0
          Top = 236
          Width = 34
          Height = 28
          FrameColor = 7617536
          Color = 15791348
          HotTrack = True
          TabOrder = 9
          OnClick = sub_addbtnClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000000
            7D0000047D0001147E00000081000005800000048700010A840000058A000005
            8D00021683000113840001128A000216890002178E0000059100000596000108
            93000008970000049D0001139200021895000219980002199D00162A8200162B
            8400172D8A0019309500010CA300000CA6000007AA000009A900000CAB000216
            A000021BA4000116AF00021CAD00000CBD000118B200021CB200021DB6000118
            BB00021DBF001C37B10033469000354893004B5C9C00596DB700596DB800000F
            C200000FC600000FC900011DC400011DCB000118CF00011DCD000011D100011D
            D300011DD6000015DC000019D900011EDA00011EDD000A28C1001333C7001F3E
            CB000828D8001F3ED5000016E000001EE1000019E600001EE6000017E900001E
            E900001EEE00001EF200001BF400001EF800001EFD001234E1001C3FEB000728
            F4000323F8000120FF000324FF000426FF000628FD00092BFD000A2DFE000D30
            FE001337FA001337FC001C3FF800183DFC002B49CF002C4AD1002C4AD5002B4A
            D8003A57D3003957DA001C40FC002A4BE500294BEF002044FC00264AFB002448
            FC00294DFB002D51FB003154FB003456FB003558FB003B5DFA003C5EFA00385A
            FE003C5DFF003F62FA004865D9004865DE004765E1004765E5004766EA004666
            F0004163FA004264FA004364FE004466FD004668FA004A6BFA004868FE005171
            F8005575FB005170FC005B7AFA005D7BF8005A79FC006981DD006781EA006781
            EF006781F2006681F7006683FB006681FD006883FF006984FE006D88FF00748F
            FB00708AFF007790FA00808AAB00848FB1008A95B8008C97BB008E99BD00919C
            C1009FABD4008B9EE5008A9EEE00899FF700829AFE00869DFE00899FFE009DAD
            EA008FA5FB008AA0FC008EA3FE009CADF3009CADF7009CADFC00A9B6E300ADBB
            E900B0BDEF00AFBDF700A7B8FE00ABBCFB00AFBDFA00ADBDFF00B0C0FF00B5C2
            FF00B7C6FF00BDC9FE00CCCCCC00D7D7D700DEDEDE00C2CFFE00C6D1FE00CAD4
            FC00CCD7FE00E5E5E500EAEAEA00EFEFEF00EAEEFE00F1F1F100F7F7F700F2F4
            FF00FEFEFE000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000040408040804040400000000000000000000000000000411211717150D0D
            0D0D040200000000000000000000040F26262B2F999797952E19030D02020000
            0000000000041C345EA8BDBDBDBDBDBDB6B494190D04020000000000041C3775
            C2C2BE9C636060629BBDBDB42C030404000000000F3A77C2C2A5423A3A373734
            343FA1BDB52D0A04000000043A65C2C28A453E3E3E3A3A373734349BC0B51A0D
            0200001F45AEC2A54A4A454A89C2C2893A37342AA1BD970D0400133E66C2BE51
            4B4B4B4A8AC2C2893A3A373440C2BB1B15041E4A93C2A04E4E4E4E4E8DC2C28A
            3E3A3A37349BBD301702324EAEC27255558F8F8DAEC2C2AE8A89773A3775C29A
            1708384EB0C2725959C2C2C2C2C2C2C2C2C2AB3A375EC2A822083B56B0C27C5D
            5DC2C2C2C2C2C2C2C2C2AB3E3A61C2A924084559B0C2866969A09F9FB3C2C2AE
            8D8A79453A77C2AA2608485BA0C2AC6C6E6C6B699FC2C28F554B4A453E9CC287
            26044B5B7EC2C17F7C7C726C9FC2C2904E4E4A454FC2C241260400596AB8C2B7
            81817E72A0C2C293554E4B4AA5C2AA341100004E6A8DC2C2AE8681796C695D59
            554E4B9DC2C24334040000005972A0C2C2B9867C6C695D595555A5C2C277370F
            000000004E5D7FA0C2C2C1B08F817C7FA0C2C2C2793A1C0400000000004E647F
            91B9C2C2C2C2C2C2C2C2AE503E1C04000000000000004E596E7281A0B7B3B0B0
            8F5D4A3E1304000000000000000000004E5969695D5D57554E45321300000000
            000000000000000000004E4E554A454433250000000000000000}
        end
        object sub_minusbtn: TRzBitBtn
          Left = -1
          Top = 266
          Width = 34
          Height = 28
          FrameColor = 7617536
          Color = 15791348
          HotTrack = True
          TabOrder = 27
          OnClick = sub_minusbtnClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000000
            7D0000047D0001147E00000081000005800000048700010A840000058A000005
            8D00021683000113840001128A000216890002178E0000059100000596000108
            93000008970000049D0001139200021895000219980002199D00162A8200162B
            8400172D8A0019309500010CA300000CA6000007AA000009A900000CAB000216
            A000021BA4000116AF00021CAD00000CBD000118B200021CB200021DB6000118
            BB00021DBF001C37B10033469000354893004B5C9C00596DB700596DB800000F
            C200000FC600000FC900011DC400011DCB000118CF00011DCD000011D100011D
            D300011DD6000015DC000019D900011EDA00011EDD000A28C1001333C7001F3E
            CB000828D8001233D7001F3ED5000016E000001EE1000019E600001EE6000017
            E900001EEA00001EEE00001EF200001BF400001EF400001EF800001EFD001234
            E1001C3FEB000728F4000323F8000120FF000324FF000425FF000628FD00082B
            FD000A2DFE000C2FFE000D30FE001337FA001236FC001639FD001C3FF800183D
            FC002B49CF002C4AD1002C4AD5002B4AD8003A57D3003957DA001C40FC002A4B
            E1002A4BE600294BEE00294BF000294BF6002044FC002649FB002448FC00284B
            FA00294DFB00284BFE002A4DFF002D4FFF002D51FB002E51FF003154FB003456
            FB003558FB003B5DFA003C5EFA00385AFE003C5DFF003F62FA004865D9004865
            DE004765E1004765E5004666EA004163FA004264FA004364FE004466FD004668
            FA004A6BFA004868FE005070F8005374F8005575FB005170FC005B7AFA005D7B
            F8005A79FC006981DD006781EA006781F2006683FB006782FF006984FE006D88
            FC00748FFB00758FFE007790FA007E96FE00808AAB00848FB1008A95B8008C97
            BB008E99BD00919CC1009FABD4008B9EE5008A9EEE00899FF700899FFE009DAD
            EA008FA5FB008AA0FC008EA3FE009CADF3009CADF7009CADF8009CADFC00A9B6
            E300ADBBE900B0BDEF00A7B8FE00ABBCFB00AFBDFA00ADBDFD00B0BFFF00B0C0
            FF00B5C2FF00B7C6FF00BBC9FF00BECAFE00CCCCCC00D7D7D700DEDEDE00C1CD
            FE00C6D1FE00CAD4FC00CCD7FE00E5E5E500EAEAEA00EFEFEF00EAEEFE00F1F1
            F100F7F7F700F2F4FF00FEFEFE00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000040408040804040400000000000000000000000000000411211717150D0D
            0D0D040200000000000000000000040F26262B2FA3A1A19F2E19030D02020000
            0000000000041C3462B1C7C7C7C7C7C7C0BE9E190D04020000000000041C3781
            CCCCC8A667646466A5C7C7BE2C030404000000000F3A83CCCCAD423A3A373734
            343FA9C7BF2D0A04000000043A69CCCC95463E3E3E3A3A37373434A5CABF1A0D
            0200001F46B6CCAF4A4A4A46463E3E3E3737342AA9C7A10D0400133E6BCCC853
            4E4E4E4E4A4A3E3E3E3A373440CCC51B15041E4A9CCCA8505050504E4E4E4A46
            463E3A3734A5C73017023250B6CC7E575F77757575756D6D6B6969433781CCA4
            17083850B9CC7E5B9BCCCCCCCCCCCCCCCCCCCC943762CCB122083B58B9CC8761
            9DCCCCCCCCCCCCCCCCCCCC943A69CCB22408465BB9CC927599C1C1BDBDB9B9BA
            B6B6B6843A83CCB32608495EACCCB4777A78777561615C57504E4A463EA6CC93
            26044E5E87CCCB8A87877E7775615E5B57504E4651CCCC412604005B75C2CCC1
            8D8D857B776E5F5B57504E46ADCCB334110000507595CCCCB6918D8578755E5B
            57504EA8CCCC4434040000005B7FACCCCCC29185786F5F5B5858ADCCCC83370F
            00000000505F8AACCCCCCBB9998A898AACCCCCCC843A1C04000000000050618A
            9BC4CCCCCCCCCCCCCCCCB6523E1F0400000000000000505B7A7E8EACBDBDB9B9
            995F4A3E130400000000000000000000505B68755F5F5C575046321300000000
            000000000000000000005750544A4A4533250000000000000000}
        end
        object cxLabel2: TcxLabel
          Left = 21
          Top = 413
          Caption = '='
          StyleDisabled.TextColor = clBlack
          Visible = False
        end
        object Edt_Bigo: TRzDBMemo
          Left = 747
          Top = 695
          Width = 259
          Height = 131
          DataSource = dsMst
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          TabOrder = 53
          Visible = False
          FrameController = RzFC
        end
        object cxDBMemo1: TRzDBMemo
          Left = 796
          Top = 558
          Width = 651
          Height = 40
          DataSource = dsMst
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOrder = 17
          Visible = False
          OnChange = cxDBMemo1Change
          FrameController = RzFC
        end
        object cxDBMemo2: TRzDBMemo
          Left = 140
          Top = 509
          Width = 651
          Height = 172
          DataField = 'ToJiBIGO'
          DataSource = dsMst
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOrder = 18
          FrameController = RzFC
        end
        object Panel1: TPanel
          Left = 38
          Top = 0
          Width = 103
          Height = 18
          Caption = #53441#49345#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object Panel2: TPanel
          Left = 440
          Top = 1
          Width = 106
          Height = 17
          Caption = #51217#49688#51068#49884
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object Panel3: TPanel
          Left = 38
          Top = 18
          Width = 103
          Height = 18
          Caption = #51217#49688#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object Panel4: TPanel
          Left = 440
          Top = 38
          Width = 106
          Height = 18
          Caption = #45812#45817#54217#44032#49324
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
        end
        object Panel5: TPanel
          Left = 440
          Top = 20
          Width = 106
          Height = 18
          Caption = #49345#45812#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
        end
        object Panel6: TPanel
          Left = 37
          Top = 37
          Width = 104
          Height = 18
          Caption = #44144#47000#52376
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
        end
        object Panel7: TPanel
          Left = 440
          Top = 56
          Width = 106
          Height = 18
          Caption = #51204#54868#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        end
        object Panel8: TPanel
          Left = 37
          Top = 74
          Width = 104
          Height = 18
          Caption = #54057#49828#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        end
        object Panel9: TPanel
          Left = 37
          Top = 56
          Width = 104
          Height = 18
          Caption = #44144#47000#45812#45817
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        end
        object Panel10: TPanel
          Left = 37
          Top = 92
          Width = 104
          Height = 73
          Caption = #49548#51116#51648
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object Btn_Close: TRzBitBtn
          Left = 825
          Top = 201
          Width = 86
          Height = 32
          FrameColor = 7617536
          Caption = #45803#44592'(&X)'
          Color = 15791348
          HotTrack = True
          TabOrder = 38
          OnClick = Btn_CloseClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF00FF00FF004E1E1F00BF4C4D00BD4B4C00C04D4E00C14E4F00C4505100C24F
            5000C5515200B64B4C00C9545500C7535400C6525300CA555600CB565700CE58
            5900CC575800C5545500D05A5B00CF595A00D35C5D00D15B5C00D55E5F00D45D
            5E00D8606200D75F6000AF4E4F00D9626300DD656600DC646500DA636400E067
            6800DE666700E2696A00E1686900E56B6C00E36A6B00E96E6F00E76D6E00E66C
            6D009F4B4C00EA6F7000A04C4D00EB707200A34E4F00EE737400ED7273009C4B
            4C00F2767700F0757600EF747500E06D6E00A6515200F6797A00F4787900F377
            7800A9535400F87B7D00F77A7B00FB7E7F00FA7D7E00AF585900AC5657009A4D
            4E00FF818200FE808100FC7F8000F77E7F00B25B5C00EE7A7B00D56F7000B860
            6200B6626300AF5E5F00FE8B8C0091515200FC929300EF909100FB9A9C00E690
            9100EB959600FAA3A400F8AAAB00F2A9AA00EEA6A700F7B5B600A5505000994B
            4B00AB555500B15A5A00B55D5D00B75F5F00914B4B00BB636300BF666600BD65
            65008C4B4B00894B4B009F58580098555500824B4B00EB9C9C00F7B1B100EECE
            AF00FFFFD300D9F6BD00B7EBAA0058A55B003F9E4C005ED3770045CA67001EBC
            4C00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000020202020202
            02020202026603020202020202020202020202020202020202026666625E0302
            020202020202020202020202020202666663310B052A03020202020202020202
            02020202026666411C070604042A03596666666666666666020202020266130C
            0D0E0A08092C034C4E505354685757660202020202661112100F0C0D0E2E036E
            71717171717157660202020202661714151112100F58036E7171717171715766
            0202020202661818191617141536036E7171717171715766020202020266201D
            1A1B1819163A036E7171717171715766020202020266221E1F201D1A1B5A036E
            71717171717157660202020202662324212235511F40036D7171717171715766
            020202020266282925265601673F03696C6F6F70707057660202020202662D2B
            27285501525B03696A6A6A6A6B6B5766020202020266342F302D2B4F28460369
            6A6A6A6A6A6A576602020202026639393233342F305C03696A6A6A6A6A6A5766
            0202020202663B3C37383932335D03696A6A6A6A6A6A5766020202020266443D
            3E3B3C37384903696A6A6A6A6A6A576602020202026642424344443D3E5F0369
            6A6A6A6A6A6A5766020202020266424242424243436103696A6A6A6A6A6A5766
            020202020266454242424242426003696A6A6A6A6A6A5766020202020266664B
            48424242426003696A6A6A6A6A6A57660202020202020266664D4A474260035E
            6666666666666666020202020202020202026666656403020202020202020202
            0202020202020202020202020266030202020202020202020202}
        end
        object Btn_New: TRzBitBtn
          Left = 824
          Top = 32
          Width = 86
          Height = 30
          FrameColor = 7617536
          Action = aNew
          Caption = #49888#44508'(&A)'
          Color = 15791348
          HotTrack = True
          TabOrder = 39
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
            69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
            00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0CE9EEFCB97
            EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
            7F9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DABBF2D5B1F0
            D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
            E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED7
            C0F6E0C1F2D9B8F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC189EABF82E9
            BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
            FF00FF93655FEFDAC5F7E2C7F3DCBFF2D8B7F2D4B0F0D1AAEFCEA3EECB9CEDC7
            95EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
            00FFFF00FFFF00FFFF00FF936560F0DECCF8E6CFF6E0C6F3DCBDF2D8B7F2D5B1
            F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7FE9BD7FEABF7FE7BC
            7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D3FAEAD7F6E3CEF4
            DEC5F3DCBFF2D8B8F0D4B1F0D1AAEFCEA3EECB9DEDC797EDC590EBC189E9BD81
            E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
            DAFAEEDEF7E7D4F6E2CBF4E0C5F3DCBFF2D8B7F2D5B0F0D1A9EFCEA3EECB9DED
            C796EDC58FEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
            FF00FF9E6E64F4EAE1FBF2E6F8EADCF7E6D3F6E2CCF4E0C6F3DCBFF2D8B7F2D5
            B0F0D1AAEFCEA4EDCB9CEDC796EBC58FEBC188EABF82E7BB7E9F6F60FF00FFFF
            00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3F7EADAF7E6D3F6E2CC
            F4DEC5F3DCBDF2D8B6F0D5B0F0D1AAEFCEA3EECA9CEDC795EBC48EEBC288E7BC
            809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EBF8
            EEE3F8EBDCF7E7D3F6E2CCF4E0C5F3DCBDF2D8B7F2D4B1F0D1A9EFCEA3EDCB9C
            EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
            F4FFFFFEFEF8F3FBF2EAF8EEE3F8EBDAF7E6D3F7E2CCF6E0C5F3DCBFF2D8B7F2
            D4B0F0D1AAEFCEA3EECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
            FF00FFB17E6BFAF6F4FFFFFFFFFEFBFEF7F0FBF3EAFAEFE3F8EADAF7E7D3F6E2
            CBF6E0C5F3DCBFF2D8B6F2D4B0F0D1A9EFCEA1EECB9CEBC592A07264FF00FFFF
            00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFFFFCFBFEF7F2FBF3EB
            F8EEE3F8EBDCF7E6D3F6E3CCF6DEC5F3DCBDF3D8B6F2D4AFF0D1A9F0CFA3EDC9
            999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFFF
            FFFFFFFEFBFEF7F2FBF3EAFAEEE3F8EADAF7E6D3F6E2CBF6DEC4F3DABCF2D8B6
            F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
            F4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFEF7F2FBF2EAFAEEE2F8EBDAF7E6D3F6
            E2CBF6DEC4F3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
            FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFCF8F2FBF3
            EAF8EEE2F8EAD9F8E7D4FAE9D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
            00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B95655B96655B9665
            5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B69F675BDAA16B
            DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
            F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFEF7DD
            C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572A5686BFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD39570E6C2ACE7C6B0E7C6B0E6
            C4B0E3C2B0E1C0AFDEBDADDCBCACD8BAACD5B7ABD3B5ABC099909F675BA5686B
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object Btn_Edit: TRzBitBtn
          Left = 824
          Top = 67
          Width = 86
          Height = 30
          FrameColor = 7617536
          Action = aEdit
          Caption = #49688#51221'(&U)'
          Color = 15791348
          HotTrack = True
          TabOrder = 40
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF0022212300534E5700FF00FF0041353800A4676900A5686B007A494A005A35
            35008B555500804E4E0091595900965D5D008B565600734747008C5757009560
            6000AA6E6E00A96D6D00A76C6C00A66B6B008C5B5B0091606000B77A7A00B679
            7900B87B7B00BB7E7E00BA7D7D009C696900CB8C8C00CA8B8B00C98B8B00C78A
            8A00CC8E8E00DA9A9A00D9999900C2898900D99A9A00DC9D9D00E1A1A100DA9C
            9C00E2A3A300EBAAAA00E2A4A400E1A3A300643B3A00734847007B504F005D38
            360093656000E2D0CE009566600093655F009869630084544C009F675B009E6E
            6400A3726600DDC7C200FBF7F6009D6D5F00865D51007350460062443C00A775
            68009F6F6000AC796900583F3700533C3500DDC4BC0096695A00B17E6B00FFFC
            FB00BB846E00B6816C00BCA19600DAC0B600BBA19600CB917300C58C7000C089
            6F00FCF8F600FAF6F400CF8E6800D4987500CF967400F6EEE900F8F3F000AA78
            56003C383500FEF7F200ECD5C200E1CCBB003E3935006A554200F2E2D300FAEE
            E300F4EAE100B77D460066523F0064513E0065524000EFDAC500F2E6DA00FBF2
            E900FEF7F000FDF8F300EAB2730062503D00604F3D00EED4B800F0DAC200F6E3
            CE00F0DECB00F7E6D300F4E3D000F8EEE300FBF3EA00EFA75100EDB57200EAB4
            7400F2D5B100E9CCAB00F4DEC500F4E1CA00F3E0CA00F7E7D400FAEAD700F8EA
            D900F7EADA00F8EBDC008E745100E5BC8400A4865F00B29268009E835F00E1BB
            88006C594100897253006A5841008E775900DEBB8C00AA8F6B00C6A67E007764
            4C00E1C09300C1A57F00836F5600E6C79D00C9AD89008C796000EDCEA700D9BD
            9900E6CEAF00F2DABC00EAD4B600F4DEC000AC9D8A00F6E1C600F7E5CE00F6E6
            D100F8EBDA00FAEEDE00FBF2E600E1B77900EABF7F00CCA66E00E9BD7F00E7BC
            7E00E5BB7D00DEB57900DAB17700D9B17600E3BA7D00D1AB7300C09C6900A989
            5D009A7E5500E7BC8100E1B77D00C7A36F00BC996900B2916300D1AB7500826C
            4B00987D5800DAB47F00C7A474007B664800B89A6F007E694C00766347006F5D
            4300D1AF7F009D876700F0D8B700EBD8BD00FCF6ED00FCF7F000E3BA7B00FEFB
            F600FFFAEF00FFFEFB00FFFEF700FFFFFE003A494800748686003443440000BD
            FF0000B1F2004E6C760000AAEA0000A6E600009FDE000093D100097BAB001A3E
            4D000087C4000084C100028AC4000B4159000C3C5200113B4E00008CD100036A
            9D0004689A000459830005679800064F7500182A33001B506E00315065003547
            56002A34400041485500012BA700001C9D002D4FF6005270FC00021DB100031E
            B1000420B8000725DC000F2ECC001839E3000C21BF00010D9D001322BD001624
            BF0001099700010A9700050DA50000058F00000082001F1F2100040404040404
            0404040404040404040404040404040404043506060606060606060606060606
            06060606060404040404356F9B7A9895928E8985B3A9A8A8A8A8A6A942040404
            0404355C9DC47B99969390C2BBB4AEA9A8A8A6A942040404040435679F9B9A02
            5E97C38FBEBCB8ABAAA9A6A94204040404043272A07C9C5AFFE6D0948D8887B5
            ADAEA9A942040404040434608071709EDFE2E5DECE918B86B6AFA5C842040404
            04043668A37F7DC5D9E1E4E7EA055FBFBAB7A7AC3D04040404043962A483737E
            CFE3E811120D2E66C084B1B04704040404043A57C675827372DD16221B120D2E
            65C1B9B23E04040404044158C9767583A1D31D271E1C130C096D8CBD3F040404
            04044353CD6B6975A274302C271E1C1310096E8A400404040404485301CB6A76
            61815D302A271F1A140E09644404040404044B530101495B7675835D2F2D2920
            1A140E314504040404044A53010101CB5B7661814E2F28232018150A09040404
            0404515301010101CB5B6961A24E2F28262118150A0904040404505301010101
            01496B7675814C172B2421190BEBE90404044F53010101010101CBC769A45C37
            172B2403DCD4D5DA0404563C0101010101010149C7CA4D38591725D8D1D1D5ED
            FE045552010101010101010149CC463879630FD6D1E0EDF7FBFE555201010101
            0101010101013B386C7708D7D2ECF3F2F0FB55CD010101010101010101013338
            78070404DBF6EEF4F1FD54545454545454545454545454380704040404F9EFF5
            FA040404040404040404040404040404040404040404F8FC0404}
        end
        object Btn_Delete: TRzBitBtn
          Left = 856
          Top = 392
          Width = 86
          Height = 31
          FrameColor = 7617536
          Action = aDelete
          Caption = #49325#51228'(&D)'
          Color = 15791348
          HotTrack = True
          TabOrder = 41
          Visible = False
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000157
            030002590500036F070005730A0003740800047F0A000B7B14000C7F1800B744
            0100BA490200AC530500A7581700AC5B160090523C00A35D2C00AF662800AA68
            3800C1530A00C2540A00C5570C00CA631600CC671A00D06C1F00D16F2400D575
            2900D7782B00D77A2D008B585800925B56009F6A5400AD6F4400A46B4E00B87B
            46009E6D6A00A47674000A83130010841C000A9616000F951D00129922001890
            2D001E9A350015A5280018A32C0022B63D0027B2470036D5630040DC720043E1
            7800C5813A00D9813500DC833900DC843A00DE863C00BB815400CA884200DE89
            4100C78A5300E18C4300E28E4500E3904700E3914A00E3934C00E5934D00E195
            4C00E5965000E7995400E79C5500E2A05A00E9A15D00E9A45F00CC9A7300C495
            7A00C6997E00D1A07300EDA36000EAA66300EDA46200EDA66600EAAA6600EEA7
            6800EAAB6900EEA96A00EEAC6A00EFAD6E00F0AC6E00EDB06D00EEB17000EEB5
            7300EFB67500EEBC7600E7BA7D00EFBA7A00F2B17700F2B47A00F3B57E00F0BA
            7B00F0BB7D00D9B29200F4B78100E5BC9300F0C28400F2C48600F2C78A00F2C7
            8C00F3C98F00F6C59000FAC19100FAC49300FBC59700F4CA9200F4D09700F7D3
            9A00F5D59E00E1C6AF00FCCFA400FCD0A500F7DCA500FED4AB00FBDAAA00FBDE
            AB00E2C4B000FEDAB000FEDDB200FEDEB400F7E0AA00FAE0AA00FAE2AC00FBE5
            B200FEE0B400FBE9B600FFE3BA00FCE7B800FCEDBB00FEEEC200F0E3CA00FEF2
            C200FFF2C700FEF7CA00FFFACD00FFFDD200FFFFD400FFFFDC00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000004E4E4E4E4E4E000000000000000000000000000000004E78
            7B756C5F4E4E4E4E000000000000000000000000004E858A7B756C5F534E4E4E
            000000000000000000000000004E8C877B756C5F514E4E4E0000000000000000
            00000000004E8D877B756C5F534E4E4E4E00000000000000000000004E7F8D8A
            7B776C64534E4E4E4E00000000000000000000004E868D8782756C64534E4E4E
            4E00000000000000000000005F8C8D8A85776C64534E4E4E4E4E000000000000
            0000004E6F8F8C786B645F554E4E4E4E4E4E0000000000000000004E71694135
            354143505858534E4E4E0000000000000000004E3313131735415061696A6758
            504E00000000000000000039090A151A3C46586F767F71695346000000000000
            00000041130A151A41466170838A7E6A57460000000000000000000042171619
            3C4501017F8271625000000000000000000000000000444141012A3001615700
            00000000000000001C1C1C00000000000129312F2C0100000000001D1C4A4A49
            1C5B37000000000107292E2D28270100000022731C5C5C5C1C0F1F1C00000001
            0101082B01010100000023885C111C1C631C481C000000000001252601000000
            00001C1C320B207A653A211C0000000000012405010000000000001C1C0C384B
            1C1C1E00000000000001030100000000000000000E0D101C5C5C1C0000000000
            050601000000000000000000001C1C5C5C1C0000000001010101000000000000
            0000000000001C1C1C1C00000000000000000000000000000000}
        end
        object Hint_yn: TRzCheckBox
          Left = 486
          Top = 725
          Width = 67
          Height = 17
          Caption = ' Hint'#52285' '#48372#44592
          State = cbUnchecked
          TabOrder = 42
          TabStop = False
          Visible = False
        end
        object BTN_Print: TRzBitBtn
          Left = 825
          Top = 136
          Width = 86
          Height = 30
          FrameColor = 7617536
          Action = aPrint
          Caption = #51064#49604'(&P)'
          Color = 15791348
          HotTrack = True
          TabOrder = 43
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF001E1D1F00FF00FF00181718002A292A00262526002E2D2E002D2C2D003A39
            3A00A3A1A3004F4E4F004544450066656600BBBABB00A5A4A500F0E9EF00A395
            A000524F51009693950087848600A4A1A300A19EA0006E6A6C0086828400817D
            7F009C989A0095919300535152007F7D7E0078767700989697008A8889008280
            8100807E7F00ABA9AA00757072009A9597008F8A8C007A777800797677007875
            7600706D6E006F6C6D008C898A00827F8000817E7F00807D7E00E0DDDE005854
            55006C68690076727300726E6F008C888900938F9000B4B0B100D7D3D4007E79
            7A007D787900868181007D7979008E8A8A00868282009C989800959191007976
            76007875750073707000726F6F00B4B0B000969393008C89890087848400BAB7
            B700A7A4A400A3A0A0009A9797007A78780078767600F3F0F000E3E0E000DDDA
            DA00D7D4D400CCC9C900A9A7A700A09E9E009593930093919100918F8F00908E
            8E008A888800888686008482820082808000817F7F00FAF8F800F8F6F600F6F4
            F400E7E5E500D1CFCF00CECCCC00C6C4C400BDBBBB00ADABAB00ABA9A9006D6C
            6C00FFFEFE00FBFAFA00F0EFEF00EBEAEA00EAE9E900DEDDDD00DAD9D900D9D8
            D800D8D7D700D4D3D300CFCECE00CCCBCB00C7C6C600C2C1C100C1C0C000BDBC
            BC00BBBABA00B7B6B600B5B4B400B0AFAF00AAA9A900A5A4A40082818100C088
            8600D3A09C00E2C0BD00D7A49E00D4A19C00D38C8200D7978F00D7A7A100D8AB
            A500DDB5B000D7958900D79D9300D7A19800DEADA500E5897600F4907800E796
            8400FB9C8100FFA18600F69A8200FFA78E00FFC1AF00E7C4BB00DEC7C100FFA0
            8400FFA48800FFA98F00FFAB9000FEA98F00FFAF9500FEB09800FEB19800FFB7
            A100FFBAA400FEBAA400EFC4B600FFDACE00FFB79E00FFC0A900FFC9B500FEC9
            B700FFCCBA00F6C6B600D4CCC900FFD3C100FFD9C900CEC9C700FFD4C000FFD7
            C600FFDDCC008A888700FFE7D900FFEBDD00F0EFEE00E9E9E700878C86008187
            8000DDE2DD00C9CBC9004B9C4F00B7E7BA00BABDBD00BDC0C00091939300C4C6
            C600EFF0F00080818100B7BCBD00A0A4A5000007E1000008E100000251000002
            E1000004E0000004D6000000C000000264000001610000000300070708000909
            0A00161618000C0C0D000D0D0E00111112001717180037373800EFEFEF00EBEB
            EB00E5E5E500D9D9D900D8D8D800D7D7D700D4D4D400D3D3D300D1D1D100CFCF
            CF00CECECE00CBCBCB00C4C4C400C2C2C200C1C1C100C0C0C000BDBDBD00BCBC
            BC00BBBBBB00BABABA00B7B7B700B6B6B600ADADAD00A7A7A7000F0F0F000A0A
            0A00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000030303030303
            032E233E2B03031DED774C2F03030303030303030303032E156D6C403E05081C
            5E7E74DD492C030303030303032236706A6B6E584802D0D4D607125D7C71763A
            0303030321536B5F615F3047470D0902F0F1D3D208314E03030324454F606C6C
            707F222B432D265B690C06D5D1042A03030324DAD962643F39597B3D41341744
            39B35A1E0BD7440303032473775827580EBB6372664A582D332A2B423B474E03
            030324144D57ECC1E7EB6F4FD8625278674C5A3C432A32030303241B49E6E9EA
            EDE16C16113775DCDBE2E77D55402803030324EAE8EAEAECE36C25B9BCB8195C
            565479E4E4E680030303031FE5BFE7DE703D13B7BDBA38941A5B3A2D46133503
            0303030320547A4B5E686C6C105051DBDCE2E700000000000303030303032A57
            E4EEC3EF657372DEE0DFE30029C7030003030303030318C2B6AF40C0C5C4BEBF
            E80A22CFC603C7CE0303030303030383A5ADA9ABA49798ACE50F0300030303CB
            0303030303030382B1AA96A19E959A928A030300000000C8CA03030303030385
            B2AA96A29F9D99900303030303030303CCC903030303038EB2AA96A29F9D938F
            03030303030303030303030303030389AEAA96A29F9D93940303030000000000
            0303030303030389B1AA96A29F9B94940303030003C7030003030303030388B4
            B1AA96A3A09C9403030303CFC603C7CD03030303030389B5B2B0A8A7A6919403
            03030300030303CB03030303038189848D8C878B8694030303030300000000C8
            CA0303030303030303030303030303030303030303030303CCC9}
        end
        object Btn_Save: TRzBitBtn
          Left = 825
          Top = 102
          Width = 86
          Height = 30
          FrameColor = 7617536
          Action = aSave
          Caption = #51200#51109'(&S)'
          Color = 15791348
          HotTrack = True
          TabOrder = 19
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF7F2B287F2B287F2B287F2B28A18283A18283A18283A18283
            A18283A18283A18283A18283A18283A18283A182837F2B287F2B287F2B287F2B
            28FF00FFFF00FFFF00FFFF00FF7F2B28B04E4CC24A4ABA4A49B441418B5959E2
            D9D9C9BDBDC4AFADE2CFCCF3EBE7F3EDEAE5DEDEDAE0DEDAE0DEB165647A1817
            822121A53939AD44457F2B28FF00FFFF00FFFF00FF7F2B28B4514FC24A4AC24E
            4EBB45468B3C3DE2D9D9791617791617AC4E4CF4E7E3FFFFFCFAF6F2EFF6F3EF
            F6F3B16564791515822020A93A3AB448487F2B28FF00FFFF00FFFF00FF7F2B28
            B2504EC24A4AC04D4DB844448C4040E2D9D9791617791617B25350E3D5D3FAF8
            F4FEF8F4FCFFFBFCFFFFB16564791515822020A73A3AB247477F2B28FF00FFFF
            00FFFF00FF7F2B28B2504EC24A4AC04D4DB743438F4141E2D9D9791617791617
            B25350CFC0BFEBEAE7FAF4F2FFFFFFFCFFFFB16564791515822020A73A3AB247
            477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D4DB74343914241E2
            D9D9791617791617B25350B0A09FD4D4D1EEE7E3FFFFFFFCFFFFB16564781414
            832020A73A3AB247477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D
            4DB54242934343E2D9D9791617791617B253508C8382A7AFADD3D4D0FCFFFFFC
            FFFFB16564741111801E1EA63939B247477F2B28FF00FFFF00FFFF00FF7F2B28
            B2504EC24A4ABF4C4CB744449C4141E2D9D9E2D9D9E2D9D9E2D9D9E2D9D9E2D9
            D9E2D9D9E2D9D9E2D9D9B16564831C1C8C2727AB3D3DB246477F2B28FF00FFFF
            00FFFF00FF7F2B28B2514EC24A4ABF4B4BBD4A49B74646BF5B5BCE7777D07B7B
            CC7475CE6E6FCB6C6CC76868C46868C05A5AB64443B44141B64343BD4949B145
            467F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AB24443B74B49BC5151BB
            504FBB4D4CBB4D4DBB4D4DBB4D4DBB4D4CBB4D4CBA4C4BBB504FC05857C15B5A
            C15757C14E4EB044457F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4ACA8C
            8ACA8C8ACB8F8CCC908ECC908ECC908ECC908ECC908ECC908ECC908FCC908FCC
            908FCC908ECC918FCB908EC05555C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
            C24A4AC24A4AD7B4B1FEFCFCFEFCFCFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFE
            FEFFFEFEFFFEFEFFFEFEFEFCFCFCFBFBDDB7B6B54B4BC24A4A7F2B28FF00FFFF
            00FFFF00FF7F2B28C24A4AC24A4AD9B8B6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B7B44948C24A
            4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFE
            DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
            B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
            C24A4AC24A4AD9B6B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF
            00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B44948C24A
            4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
            B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
            C24A4AC24A4AD9B7B5FEFEFEFEFEFEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B54A4AC24A4A7F2B28FF00FFFF
            00FFFF00FF7F2B28C24A4AC24A4AD3B1AFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB8B6C24A4AC24A
            4A7F2B28FF00FFFF00FFFF00FFFF00FF7F2B287F2B28C1A09EFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            E0BAB77F2B287F2B28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object Btn_Cancel: TRzBitBtn
          Left = 825
          Top = 170
          Width = 86
          Height = 30
          FrameColor = 7617536
          Action = aCancel
          Caption = #52712#49548'(&C)'
          Color = 15791348
          HotTrack = True
          TabOrder = 44
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF00003C
            7A00003F8000004286000043880000448A0000479000004A9600004B9800004C
            9A00004FA0000050A2000052A6000053A8000054AA000056AE000057B0000058
            B2000059B500005CBA00005DBD00005FC0000060C2000061C4000064CA000065
            CC000067D0000068D2000069D400006BD800006CDA00006DDC00006FE0000070
            E2000071E4000073E8000074EA000075ED000077F0000078F2000079F400007B
            F800007CF900007EFE000380FF000581FF000982FF000B84FF000E85FF001186
            FF001388FF001689FF00198BFF001E8EFF00218FFF002190FF002792FF002893
            FF002A94FF002D95FF003096FF003398FF00379AFF00399AFF003A9CFF003E9D
            FF00409FFF0042A0FF0046A2FF0049A3FF004BA4FF004EA6FF0053A8FF0058AA
            FF005AACFF005DADFF0060A5ED0060A8F20060ABF70060ABF80060ADFB0060AE
            FD0066B1FF0068B3FF006AB5FF006DB6FF0073B8FF0074B8FF0078BBFF007BBC
            FF007EBDFF0080BFFF0082C0FF0084C1FF008BC4FF008EC5FF009FC8F10090C7
            FF0091C8FF0095C9FF0099CCFF009DCDFE00A0CFFF00A5D1FF00ABD4FF00ADD5
            FF00B1D7FF00B4D9FF00B9DCFF00BCDDFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000C0C0A090706050505050505
            05050505050402020000001412161414120F0F0C0F0C0C0C0F0C0C0C0F0C0702
            020000142528282525231F1F1F1F1F1F1F1F1F1F1F201B070200001B2B2B2828
            252523251F1F1F1F1F1F1F1F1F201F0F0500001F2C2B2B28282525231F1F1F1F
            1F1F1F1F1F1F1F0F0400001F2F2F2B2B2828252525251F1F1F1B1F1B1F1F1F0C
            050000253334312F2C666E4E252323234C6E601F1F1F1F0F0400002338393633
            2F6E6E6E4E25254C6E6E6E1F1F1F1F0C0500002341413C3634526E6E6E4F4E6E
            6E6E4C1F1F1F1F0C04000025494941363434526E6E6E6E6E6E4E251F1F1F1F0F
            050000235656473939342F536E6E6E6E4E252525251F1F0C040000235C5C4939
            3C3433536E6E6E6E4F2828252325250F050000255E5E523D3D38536E6E6E6E6E
            6E4F28282525231209000023626253413D586E6E6E53536E6E6E4F2B28282514
            0C00002362665741476E6E6E533431536E6E6E2B2B2828160F00002565665C47
            496D6E5839383434536E522C2B2B2B180F00002365696247494944413D393938
            3431312F2C2C2B1B14000023656B69565349494741414139383331312F2F2C1B
            16000025616A6D6B6966655E585249423934332F2F312F251500002358666A6D
            6D6B6965625852473C383333313131231B0000232B5C5E656565625E58564944
            393434312F312C1F1B000000251F2325232325232325231F2523232523231B1F
            0000000000000000000000000000000000000000000000000000}
        end
        object Panel11: TPanel
          Left = 31
          Top = 466
          Width = 105
          Height = 18
          Caption = #44148#47932#44396#51312
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 45
        end
        object Panel12: TPanel
          Left = 386
          Top = 467
          Width = 153
          Height = 18
          Caption = #49888#52629#45380#46020
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 46
        end
        object Panel13: TPanel
          Left = 439
          Top = 74
          Width = 107
          Height = 18
          Caption = #54788#45824#52880#54588#53448#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 47
        end
        object Panel14: TPanel
          Left = 31
          Top = 486
          Width = 105
          Height = 18
          Caption = #51201#51221#49884#49464
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 48
        end
        object Panel15: TPanel
          Left = 386
          Top = 487
          Width = 153
          Height = 18
          Caption = #53664#51648' / '#44148#47932#54633#44228#44552#50529
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 49
        end
        object Panel16: TPanel
          Left = 819
          Top = 531
          Width = 259
          Height = 26
          Caption = #47700'  '#47784
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 50
          Visible = False
        end
        object Panel17: TPanel
          Left = 824
          Top = 588
          Width = 105
          Height = 43
          Caption = #48708#44256'('#51064#49604')'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 51
          Visible = False
        end
        object Panel18: TPanel
          Left = 32
          Top = 510
          Width = 104
          Height = 171
          Caption = #48708'  '#44256
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 52
        end
        object cxGrid2: TcxGrid
          Left = 34
          Top = 351
          Width = 756
          Height = 114
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          TabStop = False
          OnEnter = HintProcess
          OnExit = grLandExit
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Slants.Positions = [spLeft, spRight]
          LookAndFeel.NativeStyle = False
          RootLevelOptions.DetailTabsPosition = dtpTop
          OnMouseEnter = grLandMouseEnter
          object cxGridDBTableView2: TcxGridDBTableView
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
            OnEditKeyDown = tvLandEditKeyDown
            DataController.DataSource = dsLand
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'Total'
                Column = cxGridDBColumn35
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = cxBackground
            Styles.ContentEven = cxEven
            Styles.ContentOdd = cxOdd
            Styles.Inactive = cxInactive
            Styles.Footer = cxFooter
            Styles.Header = cxHeader
            object cxGridDBColumn30: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
            object cxGridDBColumn31: TcxGridDBColumn
              Caption = #51648#48264
              DataBinding.FieldName = 'JiBun'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 73
            end
            object cxGridDBColumn32: TcxGridDBColumn
              Caption = #51648#47785
              DataBinding.FieldName = 'JiMok'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 52
            end
            object cxGridDBColumn33: TcxGridDBColumn
              Caption = #47732#51201'('#13217')'
              DataBinding.FieldName = 'Area'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.EditFormat = True
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.00'
              Properties.UseDisplayFormatWhenEditing = True
              Properties.OnEditValueChanged = cxGridDBColumn3PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 63
            end
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = #45800#44032
              DataBinding.FieldName = 'UnitCost'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              Properties.OnEditValueChanged = cxGridDBColumn4PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 78
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = #44552#50529
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 98
            end
          end
          object cxGridDBTableView3: TcxGridDBTableView
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
            OnEditKeyDown = tvBuildEditKeyDown
            DataController.DataSource = dsBuild
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'Total'
                Column = cxGridDBColumn40
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = cxBackground
            Styles.ContentEven = cxFooter
            Styles.ContentOdd = cxOdd
            Styles.Inactive = cxInactive
            Styles.Footer = cxFooter
            Styles.Header = cxHeader
            object cxGridDBColumn36: TcxGridDBColumn
              DataBinding.FieldName = 'SEQ'
              Visible = False
            end
            object cxGridDBColumn37: TcxGridDBColumn
              Caption = #52789
              DataBinding.FieldName = 'Floors'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 60
            end
            object cxGridDBColumn38: TcxGridDBColumn
              Caption = #47732#51201
              DataBinding.FieldName = 'Area'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '#,##0.00'
              Properties.OnEditValueChanged = cxGridDBColumn7PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 77
            end
            object cxGridDBColumn39: TcxGridDBColumn
              Caption = #45800#44032
              DataBinding.FieldName = 'UnitCost'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 114
              Properties.OnButtonClick = cxGridDBColumn8PropertiesButtonClick
              Properties.OnEditValueChanged = cxGridDBColumn8PropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 77
            end
            object cxGridDBColumn40: TcxGridDBColumn
              Caption = #44552#50529
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 104
            end
            object cxGridDBColumn41: TcxGridDBColumn
              Caption = #51116#51312#45804#44032#44201
              DataBinding.FieldName = 'Re_Price'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 118
            end
          end
          object cxGridLevel3: TcxGridLevel
            Caption = #44148#47932#47749#49464
            GridView = cxGridDBTableView3
          end
        end
        object RzBitBtn3: TRzBitBtn
          Left = 0
          Top = 353
          Width = 33
          TabOrder = 11
          OnClick = RzBitBtn3Click
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000000
            7D0000047D0001147E00000081000005800000048700010A840000058A000005
            8D00021683000113840001128A000216890002178E0000059100000596000108
            93000008970000049D0001139200021895000219980002199D00162A8200162B
            8400172D8A0019309500010CA300000CA6000007AA000009A900000CAB000216
            A000021BA4000116AF00021CAD00000CBD000118B200021CB200021DB6000118
            BB00021DBF001C37B10033469000354893004B5C9C00596DB700596DB800000F
            C200000FC600000FC900011DC400011DCB000118CF00011DCD000011D100011D
            D300011DD6000015DC000019D900011EDA00011EDD000A28C1001333C7001F3E
            CB000828D8001F3ED5000016E000001EE1000019E600001EE6000017E900001E
            E900001EEE00001EF200001BF400001EF800001EFD001234E1001C3FEB000728
            F4000323F8000120FF000324FF000426FF000628FD00092BFD000A2DFE000D30
            FE001337FA001337FC001C3FF800183DFC002B49CF002C4AD1002C4AD5002B4A
            D8003A57D3003957DA001C40FC002A4BE500294BEF002044FC00264AFB002448
            FC00294DFB002D51FB003154FB003456FB003558FB003B5DFA003C5EFA00385A
            FE003C5DFF003F62FA004865D9004865DE004765E1004765E5004766EA004666
            F0004163FA004264FA004364FE004466FD004668FA004A6BFA004868FE005171
            F8005575FB005170FC005B7AFA005D7BF8005A79FC006981DD006781EA006781
            EF006781F2006681F7006683FB006681FD006883FF006984FE006D88FF00748F
            FB00708AFF007790FA00808AAB00848FB1008A95B8008C97BB008E99BD00919C
            C1009FABD4008B9EE5008A9EEE00899FF700829AFE00869DFE00899FFE009DAD
            EA008FA5FB008AA0FC008EA3FE009CADF3009CADF7009CADFC00A9B6E300ADBB
            E900B0BDEF00AFBDF700A7B8FE00ABBCFB00AFBDFA00ADBDFF00B0C0FF00B5C2
            FF00B7C6FF00BDC9FE00CCCCCC00D7D7D700DEDEDE00C2CFFE00C6D1FE00CAD4
            FC00CCD7FE00E5E5E500EAEAEA00EFEFEF00EAEEFE00F1F1F100F7F7F700F2F4
            FF00FEFEFE000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000040408040804040400000000000000000000000000000411211717150D0D
            0D0D040200000000000000000000040F26262B2F999797952E19030D02020000
            0000000000041C345EA8BDBDBDBDBDBDB6B494190D04020000000000041C3775
            C2C2BE9C636060629BBDBDB42C030404000000000F3A77C2C2A5423A3A373734
            343FA1BDB52D0A04000000043A65C2C28A453E3E3E3A3A373734349BC0B51A0D
            0200001F45AEC2A54A4A454A89C2C2893A37342AA1BD970D0400133E66C2BE51
            4B4B4B4A8AC2C2893A3A373440C2BB1B15041E4A93C2A04E4E4E4E4E8DC2C28A
            3E3A3A37349BBD301702324EAEC27255558F8F8DAEC2C2AE8A89773A3775C29A
            1708384EB0C2725959C2C2C2C2C2C2C2C2C2AB3A375EC2A822083B56B0C27C5D
            5DC2C2C2C2C2C2C2C2C2AB3E3A61C2A924084559B0C2866969A09F9FB3C2C2AE
            8D8A79453A77C2AA2608485BA0C2AC6C6E6C6B699FC2C28F554B4A453E9CC287
            26044B5B7EC2C17F7C7C726C9FC2C2904E4E4A454FC2C241260400596AB8C2B7
            81817E72A0C2C293554E4B4AA5C2AA341100004E6A8DC2C2AE8681796C695D59
            554E4B9DC2C24334040000005972A0C2C2B9867C6C695D595555A5C2C277370F
            000000004E5D7FA0C2C2C1B08F817C7FA0C2C2C2793A1C0400000000004E647F
            91B9C2C2C2C2C2C2C2C2AE503E1C04000000000000004E596E7281A0B7B3B0B0
            8F5D4A3E1304000000000000000000004E5969695D5D57554E45321300000000
            000000000000000000004E4E554A454433250000000000000000}
        end
        object RzBitBtn4: TRzBitBtn
          Left = 0
          Top = 380
          Width = 32
          Height = 28
          TabOrder = 56
          OnClick = RzBitBtn4Click
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000000
            7D0000047D0001147E00000081000005800000048700010A840000058A000005
            8D00021683000113840001128A000216890002178E0000059100000596000108
            93000008970000049D0001139200021895000219980002199D00162A8200162B
            8400172D8A0019309500010CA300000CA6000007AA000009A900000CAB000216
            A000021BA4000116AF00021CAD00000CBD000118B200021CB200021DB6000118
            BB00021DBF001C37B10033469000354893004B5C9C00596DB700596DB800000F
            C200000FC600000FC900011DC400011DCB000118CF00011DCD000011D100011D
            D300011DD6000015DC000019D900011EDA00011EDD000A28C1001333C7001F3E
            CB000828D8001233D7001F3ED5000016E000001EE1000019E600001EE6000017
            E900001EEA00001EEE00001EF200001BF400001EF400001EF800001EFD001234
            E1001C3FEB000728F4000323F8000120FF000324FF000425FF000628FD00082B
            FD000A2DFE000C2FFE000D30FE001337FA001236FC001639FD001C3FF800183D
            FC002B49CF002C4AD1002C4AD5002B4AD8003A57D3003957DA001C40FC002A4B
            E1002A4BE600294BEE00294BF000294BF6002044FC002649FB002448FC00284B
            FA00294DFB00284BFE002A4DFF002D4FFF002D51FB002E51FF003154FB003456
            FB003558FB003B5DFA003C5EFA00385AFE003C5DFF003F62FA004865D9004865
            DE004765E1004765E5004666EA004163FA004264FA004364FE004466FD004668
            FA004A6BFA004868FE005070F8005374F8005575FB005170FC005B7AFA005D7B
            F8005A79FC006981DD006781EA006781F2006683FB006782FF006984FE006D88
            FC00748FFB00758FFE007790FA007E96FE00808AAB00848FB1008A95B8008C97
            BB008E99BD00919CC1009FABD4008B9EE5008A9EEE00899FF700899FFE009DAD
            EA008FA5FB008AA0FC008EA3FE009CADF3009CADF7009CADF8009CADFC00A9B6
            E300ADBBE900B0BDEF00A7B8FE00ABBCFB00AFBDFA00ADBDFD00B0BFFF00B0C0
            FF00B5C2FF00B7C6FF00BBC9FF00BECAFE00CCCCCC00D7D7D700DEDEDE00C1CD
            FE00C6D1FE00CAD4FC00CCD7FE00E5E5E500EAEAEA00EFEFEF00EAEEFE00F1F1
            F100F7F7F700F2F4FF00FEFEFE00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000040408040804040400000000000000000000000000000411211717150D0D
            0D0D040200000000000000000000040F26262B2FA3A1A19F2E19030D02020000
            0000000000041C3462B1C7C7C7C7C7C7C0BE9E190D04020000000000041C3781
            CCCCC8A667646466A5C7C7BE2C030404000000000F3A83CCCCAD423A3A373734
            343FA9C7BF2D0A04000000043A69CCCC95463E3E3E3A3A37373434A5CABF1A0D
            0200001F46B6CCAF4A4A4A46463E3E3E3737342AA9C7A10D0400133E6BCCC853
            4E4E4E4E4A4A3E3E3E3A373440CCC51B15041E4A9CCCA8505050504E4E4E4A46
            463E3A3734A5C73017023250B6CC7E575F77757575756D6D6B6969433781CCA4
            17083850B9CC7E5B9BCCCCCCCCCCCCCCCCCCCC943762CCB122083B58B9CC8761
            9DCCCCCCCCCCCCCCCCCCCC943A69CCB22408465BB9CC927599C1C1BDBDB9B9BA
            B6B6B6843A83CCB32608495EACCCB4777A78777561615C57504E4A463EA6CC93
            26044E5E87CCCB8A87877E7775615E5B57504E4651CCCC412604005B75C2CCC1
            8D8D857B776E5F5B57504E46ADCCB334110000507595CCCCB6918D8578755E5B
            57504EA8CCCC4434040000005B7FACCCCCC29185786F5F5B5858ADCCCC83370F
            00000000505F8AACCCCCCBB9998A898AACCCCCCC843A1C04000000000050618A
            9BC4CCCCCCCCCCCCCCCCB6523E1F0400000000000000505B7A7E8EACBDBDB9B9
            995F4A3E130400000000000000000000505B68755F5F5C575046321300000000
            000000000000000000005750544A4A4533250000000000000000}
        end
        object DBNavigator1: TDBNavigator
          Left = 811
          Top = 1
          Width = 136
          Height = 25
          DataSource = dsMst
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 57
        end
        object RzEdit1: TRzEdit
          Left = 153
          Top = 1
          Width = 226
          Height = 20
          ImeName = 'Microsoft IME 2003'
          TabOrder = 58
          Visible = False
          OnKeyPress = RzEdit1KeyPress
        end
        object CopyBtn: TRzBitBtn
          Left = 825
          Top = 236
          Width = 85
          Height = 33
          FrameColor = 7617536
          Caption = #51064#50857'(&C)'
          Color = 15791348
          HotTrack = True
          TabOrder = 59
          OnClick = CopyBtnClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
            69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
            00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0CE9EEFCB97
            EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
            7F9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DABBF2D5B1F0
            D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
            E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED7
            C0F6E0C1F2D9B8F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC189EABF82E9
            BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
            FF00FF93655FEFDAC5F7E2C7F3DCBFF2D8B7F2D4B0F0D1AAEFCEA3EECB9CEDC7
            95EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
            00FFFF00FFFF00FFFF00FF936560F0DECCF8E6CFF6E0C6F3DCBDF2D8B7F2D5B1
            F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7FE9BD7FEABF7FE7BC
            7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D3FAEAD7F6E3CEF4
            DEC5F3DCBFF2D8B8F0D4B1F0D1AAEFCEA3EECB9DEDC797EDC590EBC189E9BD81
            E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
            DAFAEEDEF7E7D4F6E2CBF4E0C5F3DCBFF2D8B7F2D5B0F0D1A9EFCEA3EECB9DED
            C796EDC58FEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
            FF00FF9E6E64F4EAE1FBF2E6F8EADCF7E6D3F6E2CCF4E0C6F3DCBFF2D8B7F2D5
            B0F0D1AAEFCEA4EDCB9CEDC796EBC58FEBC188EABF82E7BB7E9F6F60FF00FFFF
            00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3F7EADAF7E6D3F6E2CC
            F4DEC5F3DCBDF2D8B6F0D5B0F0D1AAEFCEA3EECA9CEDC795EBC48EEBC288E7BC
            809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EBF8
            EEE3F8EBDCF7E7D3F6E2CCF4E0C5F3DCBDF2D8B7F2D4B1F0D1A9EFCEA3EDCB9C
            EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
            F4FFFFFEFEF8F3FBF2EAF8EEE3F8EBDAF7E6D3F7E2CCF6E0C5F3DCBFF2D8B7F2
            D4B0F0D1AAEFCEA3EECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
            FF00FFB17E6BFAF6F4FFFFFFFFFEFBFEF7F0FBF3EAFAEFE3F8EADAF7E7D3F6E2
            CBF6E0C5F3DCBFF2D8B6F2D4B0F0D1A9EFCEA1EECB9CEBC592A07264FF00FFFF
            00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFFFFCFBFEF7F2FBF3EB
            F8EEE3F8EBDCF7E6D3F6E3CCF6DEC5F3DCBDF3D8B6F2D4AFF0D1A9F0CFA3EDC9
            999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFFF
            FFFFFFFEFBFEF7F2FBF3EAFAEEE3F8EADAF7E6D3F6E2CBF6DEC4F3DABCF2D8B6
            F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
            F4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFEF7F2FBF2EAFAEEE2F8EBDAF7E6D3F6
            E2CBF6DEC4F3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
            FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFCF8F2FBF3
            EAF8EEE2F8EAD9F8E7D4FAE9D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
            00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B95655B96655B9665
            5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B69F675BDAA16B
            DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
            F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFEF7DD
            C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572A5686BFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD39570E6C2ACE7C6B0E7C6B0E6
            C4B0E3C2B0E1C0AFDEBDADDCBCACD8BAACD5B7ABD3B5ABC099909F675BA5686B
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object RzBitBtn5: TRzBitBtn
          Left = 826
          Top = 272
          Width = 86
          Height = 30
          FrameColor = 7617536
          Action = aPrint
          Caption = #51064#49604'(&P)'
          Color = 15791348
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 60
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF001E1D1F00FF00FF00181718002A292A00262526002E2D2E002D2C2D003A39
            3A00A3A1A3004F4E4F004544450066656600BBBABB00A5A4A500F0E9EF00A395
            A000524F51009693950087848600A4A1A300A19EA0006E6A6C0086828400817D
            7F009C989A0095919300535152007F7D7E0078767700989697008A8889008280
            8100807E7F00ABA9AA00757072009A9597008F8A8C007A777800797677007875
            7600706D6E006F6C6D008C898A00827F8000817E7F00807D7E00E0DDDE005854
            55006C68690076727300726E6F008C888900938F9000B4B0B100D7D3D4007E79
            7A007D787900868181007D7979008E8A8A00868282009C989800959191007976
            76007875750073707000726F6F00B4B0B000969393008C89890087848400BAB7
            B700A7A4A400A3A0A0009A9797007A78780078767600F3F0F000E3E0E000DDDA
            DA00D7D4D400CCC9C900A9A7A700A09E9E009593930093919100918F8F00908E
            8E008A888800888686008482820082808000817F7F00FAF8F800F8F6F600F6F4
            F400E7E5E500D1CFCF00CECCCC00C6C4C400BDBBBB00ADABAB00ABA9A9006D6C
            6C00FFFEFE00FBFAFA00F0EFEF00EBEAEA00EAE9E900DEDDDD00DAD9D900D9D8
            D800D8D7D700D4D3D300CFCECE00CCCBCB00C7C6C600C2C1C100C1C0C000BDBC
            BC00BBBABA00B7B6B600B5B4B400B0AFAF00AAA9A900A5A4A40082818100C088
            8600D3A09C00E2C0BD00D7A49E00D4A19C00D38C8200D7978F00D7A7A100D8AB
            A500DDB5B000D7958900D79D9300D7A19800DEADA500E5897600F4907800E796
            8400FB9C8100FFA18600F69A8200FFA78E00FFC1AF00E7C4BB00DEC7C100FFA0
            8400FFA48800FFA98F00FFAB9000FEA98F00FFAF9500FEB09800FEB19800FFB7
            A100FFBAA400FEBAA400EFC4B600FFDACE00FFB79E00FFC0A900FFC9B500FEC9
            B700FFCCBA00F6C6B600D4CCC900FFD3C100FFD9C900CEC9C700FFD4C000FFD7
            C600FFDDCC008A888700FFE7D900FFEBDD00F0EFEE00E9E9E700878C86008187
            8000DDE2DD00C9CBC9004B9C4F00B7E7BA00BABDBD00BDC0C00091939300C4C6
            C600EFF0F00080818100B7BCBD00A0A4A5000007E1000008E100000251000002
            E1000004E0000004D6000000C000000264000001610000000300070708000909
            0A00161618000C0C0D000D0D0E00111112001717180037373800EFEFEF00EBEB
            EB00E5E5E500D9D9D900D8D8D800D7D7D700D4D4D400D3D3D300D1D1D100CFCF
            CF00CECECE00CBCBCB00C4C4C400C2C2C200C1C1C100C0C0C000BDBDBD00BCBC
            BC00BBBBBB00BABABA00B7B7B700B6B6B600ADADAD00A7A7A7000F0F0F000A0A
            0A00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000030303030303
            032E233E2B03031DED774C2F03030303030303030303032E156D6C403E05081C
            5E7E74DD492C030303030303032236706A6B6E584802D0D4D607125D7C71763A
            0303030321536B5F615F3047470D0902F0F1D3D208314E03030324454F606C6C
            707F222B432D265B690C06D5D1042A03030324DAD962643F39597B3D41341744
            39B35A1E0BD7440303032473775827580EBB6372664A582D332A2B423B474E03
            030324144D57ECC1E7EB6F4FD8625278674C5A3C432A32030303241B49E6E9EA
            EDE16C16113775DCDBE2E77D55402803030324EAE8EAEAECE36C25B9BCB8195C
            565479E4E4E680030303031FE5BFE7DE703D13B7BDBA38941A5B3A2D46133503
            0303030320547A4B5E686C6C105051DBDCE2E700000000000303030303032A57
            E4EEC3EF657372DEE0DFE30029C7030003030303030318C2B6AF40C0C5C4BEBF
            E80A22CFC603C7CE0303030303030383A5ADA9ABA49798ACE50F0300030303CB
            0303030303030382B1AA96A19E959A928A030300000000C8CA03030303030385
            B2AA96A29F9D99900303030303030303CCC903030303038EB2AA96A29F9D938F
            03030303030303030303030303030389AEAA96A29F9D93940303030000000000
            0303030303030389B1AA96A29F9B94940303030003C7030003030303030388B4
            B1AA96A3A09C9403030303CFC603C7CD03030303030389B5B2B0A8A7A6919403
            03030300030303CB03030303038189848D8C878B8694030303030300000000C8
            CA0303030303030303030303030303030303030303030303CCC9}
        end
        object LUP_Dongho: TcxDBLookupComboBox
          Left = 689
          Top = 37
          MoveEnter = True
          DataBinding.DataField = 'DongHo'
          DataBinding.DataSource = dsMst
          ParentFont = False
          Properties.KeyFieldNames = 'USR_SEQ'
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
          StyleFocused.Color = clMedGray
          TabOrder = 61
          OnKeyPress = Lup_Consult_ChargeKeyPress
          Width = 102
        end
        object Panel23: TPanel
          Left = 690
          Top = 19
          Width = 100
          Height = 19
          Caption = #48176#51221
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 62
        end
        object radio_com: TRzDBCheckBox
          Left = 831
          Top = 348
          Width = 82
          Height = 17
          Hint = #51032#47280#44148#50640' '#45824#54616#50668' '#49892#51201#48372#44256' '#44032#45733#54616#44172' '#54633#45768#45796'.'
          DataField = 'AppCode'
          DataSource = dsMst
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
          Caption = #51089#49457#50756#47308
          DisabledColor = clWindow
          FrameController = RzFC
          HotTrack = True
          HotTrackColor = clBtnShadow
          HotTrackStyle = htsFrame
          TabOnEnter = True
          TabOrder = 63
          OnClick = radio_comClick
        end
        object radio_tel: TRzDBCheckBox
          Left = 831
          Top = 372
          Width = 82
          Height = 17
          DataField = 'Guid'
          DataSource = dsMst
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
          Caption = #53685#48372#50756#47308
          DisabledColor = clWindow
          FrameController = RzFC
          HotTrack = True
          HotTrackColor = clBtnShadow
          HotTrackStyle = htsFrame
          TabOnEnter = True
          TabOrder = 64
          OnClick = radio_telClick
        end
        object edt_KB: TRzDBEdit
          Left = 564
          Top = 75
          Width = 226
          Height = 20
          DataSource = dsMst
          DataField = 'Bigo'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 65
          OnKeyPress = Edt_CustFAXKeyPress
        end
        object btn_web: TRzBitBtn
          Left = 824
          Top = 392
          Width = 86
          Height = 31
          FrameColor = 7617536
          Caption = #49436#47448
          Color = 15791348
          HotTrack = True
          TabOrder = 66
          OnClick = btn_webClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000157
            030002590500036F070005730A0003740800047F0A000B7B14000C7F1800B744
            0100BA490200AC530500A7581700AC5B160090523C00A35D2C00AF662800AA68
            3800C1530A00C2540A00C5570C00CA631600CC671A00D06C1F00D16F2400D575
            2900D7782B00D77A2D008B585800925B56009F6A5400AD6F4400A46B4E00B87B
            46009E6D6A00A47674000A83130010841C000A9616000F951D00129922001890
            2D001E9A350015A5280018A32C0022B63D0027B2470036D5630040DC720043E1
            7800C5813A00D9813500DC833900DC843A00DE863C00BB815400CA884200DE89
            4100C78A5300E18C4300E28E4500E3904700E3914A00E3934C00E5934D00E195
            4C00E5965000E7995400E79C5500E2A05A00E9A15D00E9A45F00CC9A7300C495
            7A00C6997E00D1A07300EDA36000EAA66300EDA46200EDA66600EAAA6600EEA7
            6800EAAB6900EEA96A00EEAC6A00EFAD6E00F0AC6E00EDB06D00EEB17000EEB5
            7300EFB67500EEBC7600E7BA7D00EFBA7A00F2B17700F2B47A00F3B57E00F0BA
            7B00F0BB7D00D9B29200F4B78100E5BC9300F0C28400F2C48600F2C78A00F2C7
            8C00F3C98F00F6C59000FAC19100FAC49300FBC59700F4CA9200F4D09700F7D3
            9A00F5D59E00E1C6AF00FCCFA400FCD0A500F7DCA500FED4AB00FBDAAA00FBDE
            AB00E2C4B000FEDAB000FEDDB200FEDEB400F7E0AA00FAE0AA00FAE2AC00FBE5
            B200FEE0B400FBE9B600FFE3BA00FCE7B800FCEDBB00FEEEC200F0E3CA00FEF2
            C200FFF2C700FEF7CA00FFFACD00FFFDD200FFFFD400FFFFDC00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000004E4E4E4E4E4E000000000000000000000000000000004E78
            7B756C5F4E4E4E4E000000000000000000000000004E858A7B756C5F534E4E4E
            000000000000000000000000004E8C877B756C5F514E4E4E0000000000000000
            00000000004E8D877B756C5F534E4E4E4E00000000000000000000004E7F8D8A
            7B776C64534E4E4E4E00000000000000000000004E868D8782756C64534E4E4E
            4E00000000000000000000005F8C8D8A85776C64534E4E4E4E4E000000000000
            0000004E6F8F8C786B645F554E4E4E4E4E4E0000000000000000004E71694135
            354143505858534E4E4E0000000000000000004E3313131735415061696A6758
            504E00000000000000000039090A151A3C46586F767F71695346000000000000
            00000041130A151A41466170838A7E6A57460000000000000000000042171619
            3C4501017F8271625000000000000000000000000000444141012A3001615700
            00000000000000001C1C1C00000000000129312F2C0100000000001D1C4A4A49
            1C5B37000000000107292E2D28270100000022731C5C5C5C1C0F1F1C00000001
            0101082B01010100000023885C111C1C631C481C000000000001252601000000
            00001C1C320B207A653A211C0000000000012405010000000000001C1C0C384B
            1C1C1E00000000000001030100000000000000000E0D101C5C5C1C0000000000
            050601000000000000000000001C1C5C5C1C0000000001010101000000000000
            0000000000001C1C1C1C00000000000000000000000000000000}
          ImageIndex = 0
        end
        object Memo1: TMemo
          Left = 772
          Top = 749
          Width = 185
          Height = 89
          Lines.Strings = (
            'Memo1')
          TabOrder = 67
          Visible = False
        end
        object cxSan: TRzDBEdit
          Tag = 1
          Left = 217
          Top = 744
          Width = 24
          Height = 20
          Hint = #50629#47924#44396#48516#53076#46300#47484' Key-in'#54633#45768#45796'.'
          HelpType = htKeyword
          HelpKeyword = #49548#51116#51648' '#44396#48516#51012' '#51077#47141#54644' '#51452#49464#50836'.'
          DataSource = dsMst
          DataField = 'SAN'
          FrameController = RzFC
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2003'
          TabOnEnter = True
          TabOrder = 68
          Visible = False
          OnKeyPress = cxSanKeyPress
        end
        object Panel24: TPanel
          Left = 31
          Top = 694
          Width = 105
          Height = 18
          Caption = #48376#44148' '#50857#46020#51648#50669
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 69
        end
        object Panel25: TPanel
          Left = 395
          Top = 698
          Width = 105
          Height = 18
          Caption = #44060#48324#44277#49884#51648#44032
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 70
        end
        object RzDBComboBox1: TRzDBComboBox
          Left = 156
          Top = 697
          Width = 213
          Height = 20
          DataField = 'DocID'
          DataSource = dsMst
          ItemHeight = 12
          TabOrder = 71
          Items.Strings = (
            #51228'1'#51333#51204#50857#51452#44144#51648#50669
            #51228'2'#51333#51204#50857#51452#44144#51648#50669
            #51228'1'#51333#51068#48152#51452#44144#51648#50669
            #51228'2'#51333#51068#48152#51452#44144#51648#50669
            #51228'3'#51333#51068#48152#51452#44144#51648#50669
            #51456#51452#44144#51648#50669
            #51473#49900#49345#50629#51648#50669
            #51068#48152#49345#50629#51648#50669
            #44540#47536#49345#50629#51648#50669
            #50976#53685#49345#50629#51648#50669
            #51204#50857#44277#50629#51648#50669
            #51068#48152#44277#50629#51648#50669
            #51456#44277#50629#51648#50669
            #51088#50672#45433#51648#51648#50669
            #49373#49328#45433#51648#51648#50669
            #48372#51204#45433#51648#51648#50669
            #48372#51204#44288#47532#51648#50669
            #49373#49328#44288#47532#51648#50669
            #44228#54925#44288#47532#51648#50669
            #45453#47548#51648#50669
            #51088#50672#54872#44221#48372#51204#51648#50669)
        end
        object RzDBEdit2: TRzDBEdit
          Left = 507
          Top = 697
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'MinPrice'
          Alignment = taRightJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 72
        end
        object btn_adelete: TRzBitBtn
          Left = 825
          Top = 308
          Width = 86
          Height = 31
          FrameColor = 7617536
          Caption = #49325#51228'(&D)'
          Color = 15791348
          HotTrack = True
          TabOrder = 73
          OnClick = btn_adeleteClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FF00FF000157
            030002590500036F070005730A0003740800047F0A000B7B14000C7F1800B744
            0100BA490200AC530500A7581700AC5B160090523C00A35D2C00AF662800AA68
            3800C1530A00C2540A00C5570C00CA631600CC671A00D06C1F00D16F2400D575
            2900D7782B00D77A2D008B585800925B56009F6A5400AD6F4400A46B4E00B87B
            46009E6D6A00A47674000A83130010841C000A9616000F951D00129922001890
            2D001E9A350015A5280018A32C0022B63D0027B2470036D5630040DC720043E1
            7800C5813A00D9813500DC833900DC843A00DE863C00BB815400CA884200DE89
            4100C78A5300E18C4300E28E4500E3904700E3914A00E3934C00E5934D00E195
            4C00E5965000E7995400E79C5500E2A05A00E9A15D00E9A45F00CC9A7300C495
            7A00C6997E00D1A07300EDA36000EAA66300EDA46200EDA66600EAAA6600EEA7
            6800EAAB6900EEA96A00EEAC6A00EFAD6E00F0AC6E00EDB06D00EEB17000EEB5
            7300EFB67500EEBC7600E7BA7D00EFBA7A00F2B17700F2B47A00F3B57E00F0BA
            7B00F0BB7D00D9B29200F4B78100E5BC9300F0C28400F2C48600F2C78A00F2C7
            8C00F3C98F00F6C59000FAC19100FAC49300FBC59700F4CA9200F4D09700F7D3
            9A00F5D59E00E1C6AF00FCCFA400FCD0A500F7DCA500FED4AB00FBDAAA00FBDE
            AB00E2C4B000FEDAB000FEDDB200FEDEB400F7E0AA00FAE0AA00FAE2AC00FBE5
            B200FEE0B400FBE9B600FFE3BA00FCE7B800FCEDBB00FEEEC200F0E3CA00FEF2
            C200FFF2C700FEF7CA00FFFACD00FFFDD200FFFFD400FFFFDC00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000004E4E4E4E4E4E000000000000000000000000000000004E78
            7B756C5F4E4E4E4E000000000000000000000000004E858A7B756C5F534E4E4E
            000000000000000000000000004E8C877B756C5F514E4E4E0000000000000000
            00000000004E8D877B756C5F534E4E4E4E00000000000000000000004E7F8D8A
            7B776C64534E4E4E4E00000000000000000000004E868D8782756C64534E4E4E
            4E00000000000000000000005F8C8D8A85776C64534E4E4E4E4E000000000000
            0000004E6F8F8C786B645F554E4E4E4E4E4E0000000000000000004E71694135
            354143505858534E4E4E0000000000000000004E3313131735415061696A6758
            504E00000000000000000039090A151A3C46586F767F71695346000000000000
            00000041130A151A41466170838A7E6A57460000000000000000000042171619
            3C4501017F8271625000000000000000000000000000444141012A3001615700
            00000000000000001C1C1C00000000000129312F2C0100000000001D1C4A4A49
            1C5B37000000000107292E2D28270100000022731C5C5C5C1C0F1F1C00000001
            0101082B01010100000023885C111C1C631C481C000000000001252601000000
            00001C1C320B207A653A211C0000000000012405010000000000001C1C0C384B
            1C1C1E00000000000001030100000000000000000E0D101C5C5C1C0000000000
            050601000000000000000000001C1C5C5C1C0000000001010101000000000000
            0000000000001C1C1C1C00000000000000000000000000000000}
        end
        object RzDBCheckBox1: TRzDBCheckBox
          Left = 827
          Top = 424
          Width = 130
          Height = 17
          DataField = 'Jun_Master'
          DataSource = dsMst
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = #44148#52629#47932#45824#51109' '#50630#51020
          DisabledColor = clWindow
          FrameController = RzFC
          HotTrack = True
          HotTrackColor = clBtnShadow
          HotTrackStyle = htsFrame
          TabOnEnter = True
          TabOrder = 74
          OnClick = radio_telClick
        end
        object btn_Cust: TBitBtn
          Left = 400
          Top = 39
          Width = 26
          Height = 18
          Caption = 'C'
          TabOrder = 4
          OnClick = btn_CustClick
        end
        object TS_Score: TcxDBRadioGroup
          Left = 821
          Top = 450
          TabStop = False
          Caption = #50629#47924#45212#51060#46020
          DataBinding.DataField = 'Score'
          DataBinding.DataSource = dsMst
          Properties.DefaultValue = 1
          Properties.Items = <
            item
              Caption = #50612#47140#50880
              Value = 0
            end
            item
              Caption = #48372#53685
              Value = 1
            end
            item
              Caption = #49772#50880
              Value = '2'
            end
            item
              Caption = #54644#45817#50630#51020
              Value = '3'
            end>
          TabOrder = 75
          Transparent = True
          Height = 89
          Width = 105
        end
        object Panel28: TPanel
          Left = 37
          Top = 166
          Width = 104
          Height = 18
          Caption = #51452#53469#51032#47280#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 76
        end
        object RzDBEdit4: TRzDBEdit
          Left = 146
          Top = 166
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'HFDocid'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 77
          OnKeyPress = Edt_CustFAXKeyPress
        end
        object Panel29: TPanel
          Left = 37
          Top = 186
          Width = 104
          Height = 18
          Caption = #51452#53469#44552#50997#44396#48516
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 78
        end
        object Panel31: TPanel
          Left = 445
          Top = 168
          Width = 104
          Height = 18
          Caption = #49548#50976#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 79
        end
        object Panel32: TPanel
          Left = 445
          Top = 188
          Width = 104
          Height = 18
          Caption = #49548#50976#51088#51204#54868#48264#54840'1'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 80
        end
        object RzDBEdit7: TRzDBEdit
          Left = 554
          Top = 184
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'HFOwnerTel'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 81
          OnKeyPress = Edt_CustFAXKeyPress
        end
        object RzDBEdit8: TRzDBEdit
          Left = 554
          Top = 165
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'HFOwnername'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 82
          OnKeyPress = Edt_CustFAXKeyPress
        end
        object Panel33: TPanel
          Left = 445
          Top = 207
          Width = 104
          Height = 18
          Caption = #49548#50976#51088#51204#54868#48264#54840'2'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 83
        end
        object RzDBEdit9: TRzDBEdit
          Left = 554
          Top = 203
          Width = 224
          Height = 20
          DataSource = dsMst
          DataField = 'HFOwnerPhone'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          FrameController = RzFC
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOnEnter = True
          TabOrder = 84
          OnKeyPress = Edt_CustFAXKeyPress
        end
        object cb_Gubun: TcxDBImageComboBox
          Left = 145
          Top = 184
          MoveEnter = True
          AutoSize = False
          DataBinding.DataField = 'HFGubun'
          DataBinding.DataSource = dsMst
          Properties.Items = <
            item
              Description = #48372#44552#51088#47532' '#51221#49885
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #48372#44552#51088#47532' '#50557#49885
              Value = 2
            end
            item
              Description = #50672#44552' '#51221#49885
              Value = 3
            end
            item
              Description = #50672#44552' '#50557#49885
              Value = 4
            end>
          TabOrder = 85
          Height = 23
          Width = 226
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 145
          Top = 204
          MoveEnter = True
          AutoSize = False
          DataBinding.DataField = 'HFWorkYN'
          DataBinding.DataSource = dsMst
          Properties.Items = <
            item
              Description = 'Y'
              ImageIndex = 0
              Value = 'Y'
            end
            item
              Description = 'N'
              Value = 'N'
            end
            item
              Description = '-'
            end>
          TabOrder = 86
          Height = 23
          Width = 226
        end
        object Panel30: TPanel
          Left = 38
          Top = 206
          Width = 104
          Height = 18
          Caption = #51652#54665#50668#48512
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 87
        end
        object btn_HFLIST: TButton
          Left = 372
          Top = 167
          Width = 70
          Height = 31
          Caption = #51452#44277#51032#47280
          TabOrder = 88
          OnClick = btn_HFLISTClick
        end
        object btn_HFBuild: TButton
          Left = 372
          Top = 197
          Width = 70
          Height = 30
          Caption = #51452#44277#44148#52629
          TabOrder = 89
          OnClick = btn_HFBuildClick
        end
      end
      object TabSheet2: TTabSheet
        Caption = #53441#49345#51312#54924
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1000
          Height = 791
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
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
            DataController.DataSource = dsMst
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0'
                Kind = skSum
                Column = cxGridDBColumn13
              end
              item
                Format = ',0'
                Kind = skSum
                Column = cxGridDBColumn14
              end
              item
                Format = ',0'
                Kind = skCount
                Column = cxGridDBColumn1
              end
              item
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = cxBackground
            Styles.ContentEven = cxEven
            Styles.ContentOdd = cxOdd
            Styles.Inactive = cxInactive
            Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
            Styles.Footer = cxFooter
            Styles.Header = cxHeader
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'MasterID'
              FooterAlignmentHorz = taCenter
              Width = 108
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #48376#51648#49324
              DataBinding.FieldName = 'Office'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'OfficeID'
              Properties.ListColumns = <
                item
                  FieldName = 'Name'
                end>
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 79
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #51217#49688#51068#51088
              DataBinding.FieldName = 'Reg_DateTime'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 135
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = #48176#51221
              DataBinding.FieldName = 'Lbaejung'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'USR_SEQ'
              Properties.ListColumns = <
                item
                  Caption = 'EMP'
                  FieldName = 'EMP'
                end>
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = #45812#45817#54217#44032#49324
              DataBinding.FieldName = 'LUP_CONSULT_CHARGE'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #51217#49688#45812#45817
              DataBinding.FieldName = 'Reg_Charge'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'USR_SEQ'
              Properties.ListColumns = <
                item
                  FieldName = 'EMP'
                end>
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = #53441#49345#45812#45817
              DataBinding.FieldName = 'LConsult_Charge'
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = #51032#47280#52376#54057#49828
              DataBinding.FieldName = 'CustFAX'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 49
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #51032' '#47280' '#52376
              DataBinding.FieldName = 'CustName'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 186
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = #49548' '#51116' '#51648
              DataBinding.FieldName = 'Address'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 320
            end
            object cxGridDBTableView1Column4: TcxGridDBColumn
              Caption = #50756#47308#50668#48512
              DataBinding.FieldName = 'AppCode'
              Width = 53
            end
            object cxGridDBTableView1Column3: TcxGridDBColumn
              Caption = #53685#48372#50668#48512
              DataBinding.FieldName = 'Guid'
              Width = 61
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = #53664#51648#44552#50529#54633#44228
              DataBinding.FieldName = 'Toji_Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 122
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #44148#47932#44552#50529#54633#44228
              DataBinding.FieldName = 'Build_Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 124
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = #53664#51648#44148#47932#54633#44228
              DataBinding.FieldName = 'ToJi_Build_Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 126
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = #51204#47168
              DataBinding.FieldName = 'Jun_Master'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Styles.Content = cxiw
              Width = 94
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = #51032#47280#52376#51204#54868
              DataBinding.FieldName = 'CustPhone'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 96
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = #51032#47280#52376#45812#45817
              DataBinding.FieldName = 'CustCharge'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 120
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = #44148' '#47932' '#47749
              DataBinding.FieldName = 'Building'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 234
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = #54217
              DataBinding.FieldName = 'Pyoung'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 37
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = #47932#44148#51333#47448
              DataBinding.FieldName = 'Category'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 73
            end
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = #51201#51221#49884#49464
              DataBinding.FieldName = 'AdjPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 100
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = #51221#49885#44048#51221#49436#48264#54840
              DataBinding.FieldName = 'DocID'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 93
            end
            object cxGridDBColumn27: TcxGridDBColumn
              Caption = #52572#49548#44552#50529
              DataBinding.FieldName = 'MinPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 110
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = #52572#45824#44552#50529
              DataBinding.FieldName = 'MaxPrice'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;-,0.'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 110
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = #44144#47000#52376#53076#46300
              DataBinding.FieldName = 'CustID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Width = 83
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 1701
    Height = 57
    Align = alTop
    BorderOuter = fsFlat
    BorderHighlight = clWhite
    BorderShadow = 13290186
    FlatColorAdjustment = 0
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1701
      57)
    object cxLabel8: TRzLabel
      Left = -1
      Top = 10
      Width = 52
      Height = 12
      Caption = #48376#51648#49324#47749
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel1: TRzLabel
      Left = 138
      Top = 11
      Width = 52
      Height = 12
      Caption = #51217#49688#51068#51088
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel8: TRzLabel
      Left = 406
      Top = 4
      Width = 39
      Height = 11
      Caption = #49548#51116#51648
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel10: TRzLabel
      Left = 406
      Top = 18
      Width = 39
      Height = 11
      Caption = #51032#47280#52376
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel11: TRzLabel
      Left = 582
      Top = 12
      Width = 52
      Height = 11
      Caption = #53441#49345#48264#54840
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel12: TRzLabel
      Left = 293
      Top = 10
      Width = 9
      Height = 15
      Caption = '~'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzLabel13: TRzLabel
      Left = 782
      Top = 11
      Width = 65
      Height = 11
      Caption = #45812#45817#54217#44032#49324
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object Cob_Office: TRzComboBox
      Left = 53
      Top = 6
      Width = 79
      Height = 20
      Hint = #48376#51648#49324#47749#51012' '#44592#51456#51004#47196' '#44160#49353
      BeepOnInvalidKey = False
      Ctl3D = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      FrameController = RzFC
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object Start_Date: TRzDateTimeEdit
      Left = 194
      Top = 6
      Width = 95
      Height = 20
      Hint = #51217#49688#51068#51088#44592#51456' '#49884#51089#51068#51088#51077#45768#45796'.'
      EditType = etDate
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      FrameController = RzFC
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 1
    end
    object End_Date: TRzDateTimeEdit
      Left = 304
      Top = 6
      Width = 100
      Height = 20
      Hint = #51217#49688#51068#51088#44592#51456' '#44160#49353#51333#47308#51068#51088' '#51077#45768#45796'.'
      EditType = etDate
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      FrameController = RzFC
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 2
    end
    object Btn_Help: TRzBitBtn
      Left = 1649
      Top = 1
      Width = 38
      Height = 30
      FrameColor = 7617536
      Action = aHelp
      Anchors = [akTop, akRight]
      Color = 15791348
      HotTrack = True
      TabOrder = 3
      Visible = False
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
    object sojae: TRzEdit
      Left = 451
      Top = 7
      Width = 129
      Height = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 4
      OnKeyPress = sojaeKeyPress
    end
    object TSBUN: TRzEdit
      Left = 636
      Top = 6
      Width = 121
      Height = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 5
      OnKeyPress = TSBUNKeyPress
    end
    object Tmanager: TEdit
      Left = 848
      Top = 5
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
    end
    object Panel19: TPanel
      Left = 984
      Top = 1
      Width = 474
      Height = 55
      TabOrder = 7
      DesignSize = (
        474
        55)
      object Btn_Find: TRzBitBtn
        Left = 42
        Top = 3
        Width = 80
        Height = 26
        FrameColor = 7617536
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        Color = 15791348
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 0
        OnClick = Btn_FindClick
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
      object RzBitBtn1: TRzBitBtn
        Left = 122
        Top = 3
        Width = 100
        Height = 27
        Anchors = [akTop, akRight]
        Caption = #53441#49345#45812#45817#51312#54924
        Color = 15791348
        HotTrack = True
        TabOrder = 1
        OnClick = RzBitBtn1Click
      end
      object RzBitBtn8: TRzBitBtn
        Left = 40
        Top = 30
        Width = 81
        FrameColor = 7617536
        Caption = '3'#44060#50900
        Color = 15791348
        HotTrack = True
        TabOrder = 2
        OnClick = RzBitBtn8Click
      end
      object btnSave: TRzBitBtn
        Left = 120
        Top = 30
        FrameColor = 7617536
        Caption = '6'#44060#50900
        Color = 15791348
        HotTrack = True
        TabOrder = 3
        OnClick = btnSaveClick
      end
      object btnCancle: TRzBitBtn
        Left = 194
        Top = 30
        FrameColor = 7617536
        Caption = '1'#45380
        Color = 15791348
        HotTrack = True
        TabOrder = 4
        OnClick = btnCancleClick
      end
      object RzBitBtn2: TRzBitBtn
        Left = 221
        Top = 2
        Width = 47
        Height = 27
        Caption = 'EXCEL'
        Color = 15791348
        HotTrack = True
        TabOrder = 5
        OnClick = RzBitBtn2Click
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 988
    Width = 1701
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 1621
      Height = 19
      Align = alClient
      AutoSize = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object RzStatusPane2: TRzStatusPane
      Left = 1621
      Top = 0
      Width = 80
      Height = 19
      FrameStyle = fsNone
      ParentFillColor = False
      Transparent = False
      Align = alRight
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Alignment = taCenter
      AutoHint = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      Caption = 'KADC'
    end
  end
  object MMS_PAN: TPanel
    Left = 208
    Top = 316
    Width = 297
    Height = 345
    Color = clActiveCaption
    TabOrder = 3
    Visible = False
    object btn_MMSClose: TButton
      Left = 256
      Top = 12
      Width = 27
      Height = 25
      Caption = 'X'
      TabOrder = 0
      OnClick = btn_MMSCloseClick
    end
    object btn_send: TButton
      Left = 208
      Top = 308
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 1
      OnClick = btn_sendClick
    end
    object cxLabel4: TcxLabel
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
    object edit_Manager: TcxTextEdit
      Left = 86
      Top = 43
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      TabOrder = 3
      Height = 32
      Width = 200
    end
    object cxLabel1: TcxLabel
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
    object edit_sub: TcxTextEdit
      Left = 86
      Top = 72
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      TabOrder = 5
      Height = 32
      Width = 200
    end
    object cxLabel3: TcxLabel
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
    object memo_MMS: TcxMemo
      Left = 86
      Top = 101
      TabOrder = 7
      Height = 146
      Width = 200
    end
    object cxLabel5: TcxLabel
      Left = 11
      Top = 244
      AutoSize = False
      Caption = #49324#51652
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 78
    end
    object edit_photo: TcxTextEdit
      Left = 86
      Top = 244
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      TabOrder = 9
      Height = 32
      Width = 200
    end
  end
  object Panel26: TPanel
    Left = 888
    Top = 76
    Width = 393
    Height = 352
    Color = clActiveCaption
    TabOrder = 4
    Visible = False
    object Panel27: TPanel
      Left = 1
      Top = 1
      Width = 391
      Height = 41
      Align = alTop
      Color = clActiveCaption
      TabOrder = 0
      object btn_CustClose: TButton
        Left = 340
        Top = 8
        Width = 27
        Height = 25
        Caption = 'X'
        TabOrder = 0
        OnClick = btn_CustCloseClick
      end
    end
    object Grid_Cust: TAdvStringGrid
      Left = 1
      Top = 42
      Width = 391
      Height = 309
      Cursor = crDefault
      Align = alClient
      ColCount = 4
      DefaultColWidth = 130
      DefaultRowHeight = 26
      FixedColor = clActiveBorder
      FixedCols = 0
      RowCount = 11
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      GridLineColor = 15527152
      GridFixedLineColor = 13947601
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 16575452
      ActiveCellColorTo = 16571329
      Bands.Active = True
      BackGround.Cells = bcFixed
      BackGround.Color = clHighlightText
      BackGround.ColorTo = clActiveCaption
      ColumnHeaders.Strings = (
        #51217#49688#51068#51088
        #44144#47000#52376#47749
        #45812#45817#51088
        #45812#45817#54217#44032#49324)
      ControlLook.FixedGradientMirrorFrom = 16049884
      ControlLook.FixedGradientMirrorTo = 16247261
      ControlLook.FixedGradientHoverFrom = 16710648
      ControlLook.FixedGradientHoverTo = 16446189
      ControlLook.FixedGradientHoverMirrorFrom = 16049367
      ControlLook.FixedGradientHoverMirrorTo = 15258305
      ControlLook.FixedGradientDownFrom = 15853789
      ControlLook.FixedGradientDownTo = 15852760
      ControlLook.FixedGradientDownMirrorFrom = 15522767
      ControlLook.FixedGradientDownMirrorTo = 15588559
      ControlLook.FixedGradientDownBorder = 14007466
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      DefaultAlignment = taCenter
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 130
      FixedRowHeight = 26
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clBlack
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glWin7
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = 16645370
      SearchFooter.ColorTo = 16247261
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.HeaderColor = 16579058
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      VAlignment = vtaCenter
      Version = '8.3.2.6'
    end
  end
  object QRMst: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_S_APW_TS_Master NULL, '#39'10'#39', '#39'2020-05-01'#39', '#39'2020-05-15'#39
      '')
    Params = <>
    TransportStreamFormat = StreamBIN
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    OnResolveError = QLandResolveError
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldDefsOnOpen = mwafoOnce
    FieldDefs = <
      item
        Name = 'TS_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'MasterID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Office'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Reg_DateTime'
        DataType = ftDateTime
      end
      item
        Name = 'Reg_Charge'
        DataType = ftInteger
      end
      item
        Name = 'Consult_Charge'
        DataType = ftInteger
      end
      item
        Name = 'CustName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CustPhone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CustCharge'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CustFAX'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Reg'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Eub'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SAN'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Addr'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AS1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AS2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AS3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AS4'
        DataType = ftString
        Size = 24
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
        Size = 100
      end
      item
        Name = 'DongHo'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'Pyoung'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Category'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ToJiBIGO'
        DataType = ftString
        Size = 3000
      end
      item
        Name = 'Build_Struct'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'Remodel_Date'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ToJi_Build_Total'
        DataType = ftCurrency
      end
      item
        Name = 'AdjPrice'
        DataType = ftCurrency
      end
      item
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Bigo'
        DataType = ftString
        Size = 5000
      end
      item
        Name = 'Jun_Master'
        DataType = ftInteger
      end
      item
        Name = 'MinPrice'
        DataType = ftCurrency
      end
      item
        Name = 'MaxPrice'
        DataType = ftCurrency
      end
      item
        Name = 'CustID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Toji_Total'
        DataType = ftCurrency
      end
      item
        Name = 'Build_Total'
        DataType = ftCurrency
      end
      item
        Name = 'Bigo_In'
        DataType = ftString
        Size = 4096
      end
      item
        Name = 'Manager'
        DataType = ftInteger
      end
      item
        Name = 'AppCode'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Guid'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AddrEtc'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'corpname'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'corptel'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'corpfax'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'zipcode'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'addr1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'addr2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Score'
        DataType = ftInteger
      end
      item
        Name = 'HFDocid'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HFOwnername'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HFOwnerTel'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HFGubun'
        DataType = ftInteger
      end
      item
        Name = 'HFWorkYN'
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
    AfterScroll = QRMstAfterScroll
    OnCalcFields = QRMstCalcFields
    Left = 1040
    Top = 516
    object QRMstTS_SEQ: TIntegerField
      FieldName = 'TS_SEQ'
      Origin = 'APW_TS_Master.TS_SEQ'
    end
    object QRMstMasterID: TStringField
      FieldName = 'MasterID'
      Origin = 'APW_TS_Master.MasterID'
      Size = 30
    end
    object QRMstOffice: TStringField
      FieldName = 'Office'
      Origin = 'APW_TS_Master.Office'
      Size = 2
    end
    object QRMstReg_DateTime: TDateTimeField
      FieldName = 'Reg_DateTime'
      Origin = 'APW_TS_Master.Reg_DateTime'
    end
    object QRMstReg_Charge: TIntegerField
      Tag = 1
      FieldName = 'Reg_Charge'
      Origin = 'APW_TS_Master.Reg_Charge'
    end
    object QRMstConsult_Charge: TIntegerField
      Tag = 1
      FieldName = 'Consult_Charge'
      Origin = 'APW_TS_Master.Consult_Charge'
    end
    object QRMstCustName: TStringField
      Tag = 1
      FieldName = 'CustName'
      Origin = 'APW_TS_Master.CustName'
      Size = 50
    end
    object QRMstCustPhone: TStringField
      Tag = 1
      FieldName = 'CustPhone'
      Origin = 'APW_TS_Master.CustPhone'
    end
    object QRMstCustCharge: TStringField
      Tag = 1
      FieldName = 'CustCharge'
      Origin = 'APW_TS_Master.CustCharge'
      Size = 30
    end
    object QRMstCustFAX: TStringField
      Tag = 1
      FieldName = 'CustFAX'
      Origin = 'APW_TS_Master.CustFAX'
    end
    object QRMstReg: TStringField
      Tag = 1
      FieldName = 'Reg'
      Origin = 'APW_TS_Master.Reg'
      Size = 5
    end
    object QRMstEub: TStringField
      Tag = 1
      FieldName = 'Eub'
      Origin = 'APW_TS_Master.Eub'
      Size = 5
    end
    object QRMstSAN: TStringField
      Tag = 1
      FieldName = 'SAN'
      Origin = 'APW_TS_Master.SAN'
      Size = 4
    end
    object QRMstAddr: TStringField
      Tag = 1
      FieldName = 'Addr'
      Origin = 'APW_TS_Master.Addr'
      Size = 40
    end
    object QRMstAS1: TStringField
      FieldName = 'AS1'
      Origin = 'APW_RegHist.AS1'
    end
    object QRMstAS2: TStringField
      FieldName = 'AS2'
      Origin = 'APW_RegHist.AS2'
    end
    object QRMstAS3: TStringField
      FieldName = 'AS3'
      Origin = 'APW_RegHist.AS3'
    end
    object QRMstAS4: TStringField
      FieldName = 'AS4'
      Origin = 'APW_RegHist.AS4'
      Size = 24
    end
    object QRMstBUN1: TStringField
      Tag = 1
      FieldName = 'BUN1'
      Origin = 'APW_TS_Master.BUN1'
      Size = 4
    end
    object QRMstBUN2: TStringField
      Tag = 1
      FieldName = 'BUN2'
      Origin = 'APW_TS_Master.BUN2'
      Size = 4
    end
    object QRMstBuilding: TStringField
      Tag = 1
      FieldName = 'Building'
      Origin = 'APW_TS_Master.Building'
      Size = 100
    end
    object QRMstDongHo: TStringField
      Tag = 1
      FieldName = 'DongHo'
      Origin = 'APW_TS_Master.DongHo'
      Size = 22
    end
    object QRMstPyoung: TStringField
      Tag = 1
      FieldName = 'Pyoung'
      Origin = 'APW_TS_Master.Pyoung'
      Size = 10
    end
    object QRMstCategory: TStringField
      Tag = 1
      FieldName = 'Category'
      Origin = 'APW_TS_Master.Category'
      Size = 2
    end
    object QRMstToJiBIGO: TStringField
      Tag = 1
      FieldName = 'ToJiBIGO'
      Origin = 'APW_TS_Master.ToJiBIGO'
      Size = 3000
    end
    object QRMstBuild_Struct: TStringField
      Tag = 1
      FieldName = 'Build_Struct'
      Origin = 'APW_TS_Master.Build_Struct'
      Size = 500
    end
    object QRMstRemodel_Date: TStringField
      Tag = 1
      FieldName = 'Remodel_Date'
      Origin = 'APW_TS_Master.Remodel_Date'
    end
    object QRMstToJi_Build_Total: TCurrencyField
      Tag = 1
      FieldName = 'ToJi_Build_Total'
      Origin = 'APW_TS_Master.ToJi_Build_Total'
    end
    object QRMstAdjPrice: TCurrencyField
      Tag = 1
      FieldName = 'AdjPrice'
      Origin = 'APW_TS_Master.AdjPrice'
    end
    object QRMstDocID: TStringField
      FieldName = 'DocID'
      Origin = 'APW_TS_Master.DocID'
      Size = 30
    end
    object QRMstBigo: TStringField
      Tag = 1
      FieldName = 'Bigo'
      Origin = 'APW_TS_Master.Bigo'
      Size = 5000
    end
    object QRMstJun_Master: TIntegerField
      FieldName = 'Jun_Master'
      Origin = 'APW_TS_Master.Jun_Master'
    end
    object QRMstMinPrice: TCurrencyField
      FieldName = 'MinPrice'
      Origin = 'APW_TS_Master.MinPrice'
    end
    object QRMstMaxPrice: TCurrencyField
      FieldName = 'MaxPrice'
      Origin = 'APW_TS_Master.MaxPrice'
    end
    object QRMstCustID: TStringField
      Tag = 1
      FieldName = 'CustID'
      Origin = 'APW_TS_Master.CustID'
      Size = 6
    end
    object QRMstToji_Total: TCurrencyField
      Tag = 1
      FieldName = 'Toji_Total'
      Origin = 'APW_TS_Master.Toji_Total'
    end
    object QRMstBuild_Total: TCurrencyField
      Tag = 1
      FieldName = 'Build_Total'
      Origin = 'APW_TS_Master.Build_Total'
    end
    object QRMstBigo_In: TStringField
      Tag = 1
      FieldName = 'Bigo_In'
      Origin = 'APW_TS_Master.Bigo_In'
      Size = 4096
    end
    object QRMstManager: TIntegerField
      Tag = 1
      FieldName = 'Manager'
      LookupDataSet = DBM.Qry_View_Usr_Bac_info
      LookupKeyFields = 'Usr_Seq'
      LookupResultField = 'Emp'
      KeyFields = 'Manager'
      Origin = 'APW_TS_Master.Manager'
    end
    object QRMstAppCode: TStringField
      FieldName = 'AppCode'
      Origin = 'APW_TS_Master.AppCode'
      Size = 6
    end
    object QRMstGuid: TStringField
      FieldName = 'Guid'
      Origin = 'APW_TS_Master.Guid'
      Size = 40
    end
    object QRMstAddrEtc: TStringField
      Tag = 1
      FieldName = 'AddrEtc'
      Origin = 'APW_TS_Master.AddrEtc'
      Size = 1
    end
    object QRMstaddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'address'
      Size = 200
      Calculated = True
    end
    object QRMstlconssult_charge: TStringField
      FieldKind = fkLookup
      FieldName = 'lconsult_charge'
      LookupDataSet = DBM.Qry_View_Usr_Bac_info
      LookupKeyFields = 'USR_SEQ'
      LookupResultField = 'EMP'
      KeyFields = 'Consult_Charge'
      Size = 30
      Lookup = True
    end
    object QRMstcorpname: TStringField
      FieldName = 'corpname'
      Size = 100
    end
    object QRMstcorptel: TStringField
      FieldName = 'corptel'
      Size = 50
    end
    object QRMstcorpfax: TStringField
      FieldName = 'corpfax'
      Size = 50
    end
    object QRMstzipcode: TStringField
      FieldName = 'zipcode'
      Size = 7
    end
    object QRMstaddr1: TStringField
      FieldName = 'addr1'
      Size = 40
    end
    object QRMstaddr2: TStringField
      FieldName = 'addr2'
      Size = 40
    end
    object QRMstLUP_CONSULT_CHARGE: TStringField
      FieldKind = fkLookup
      FieldName = 'LUP_CONSULT_CHARGE'
      LookupDataSet = DBM.Qry_View_Usr_Bac_info
      LookupKeyFields = 'Usr_Seq'
      LookupResultField = 'Emp'
      KeyFields = 'Manager'
      Lookup = True
    end
    object QRMstLbaejung: TStringField
      FieldKind = fkLookup
      FieldName = 'Lbaejung'
      LookupDataSet = DBM.Qry_View_Usr_Bac_info
      LookupKeyFields = 'Usr_Seq'
      LookupResultField = 'Emp'
      KeyFields = 'DongHo'
      Lookup = True
    end
    object QRMstScore: TIntegerField
      FieldName = 'Score'
      Origin = '.'
    end
    object QRMstHFDocid: TStringField
      FieldName = 'HFDocid'
      Origin = 'APW_TS_Master.HFDocid'
    end
    object QRMstHFOwnername: TStringField
      FieldName = 'HFOwnername'
      Origin = 'APW_TS_Master.HFOwnername'
    end
    object QRMstHFOwnerPhone: TStringField
      FieldKind = fkCalculated
      FieldName = 'HFOwnerPhone'
      Origin = 'APW_TS_Master.HFOwnerPhone'
      Calculated = True
    end
    object QRMstHFOwnerTel: TStringField
      FieldName = 'HFOwnerTel'
      Origin = 'APW_TS_Master.HFOwnerTel'
    end
    object QRMstHFGubun: TIntegerField
      FieldName = 'HFGubun'
      Origin = 'APW_TS_Master.HFGubun'
    end
    object QRMstHFWorkYN: TStringField
      FieldName = 'HFWorkYN'
      Origin = 'APW_TS_Master.HFWorkYN'
      Size = 2
    end
  end
  object dsMst: TDataSource
    DataSet = QRMst
    OnStateChange = dsMstStateChange
    Left = 960
    Top = 417
  end
  object StreamBIN: TkbmMWBinaryStreamFormat
    Version = '1.04'
    sfLargeFields = []
    sfCalculated = []
    sfLookup = []
    LargeFieldSize = 0
    Left = 700
    Top = 144
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 596
    Top = 296
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
      Color = clBtnFace
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
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
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
    object cxBackground: TcxStyle
    end
    object cxiw: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
  end
  object RzGroupController1: TRzGroupController
    BorderColor = clWhite
    CaptionColor = clInactiveCaptionText
    CaptionColorStart = clWhite
    CaptionColorStop = clInactiveCaption
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clHotLight
    CaptionFont.Height = -12
    CaptionFont.Name = #44404#47548#52404
    CaptionFont.Style = [fsBold]
    CaptionHotColor = clGradientInactiveCaption
    Color = clSkyBlue
    DividerColor = clGradientInactiveCaption
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ItemHotColor = clSkyBlue
    ItemStaticFont.Charset = HANGEUL_CHARSET
    ItemStaticFont.Color = clWindowText
    ItemStaticFont.Height = -12
    ItemStaticFont.Name = #44404#47548
    ItemStaticFont.Style = [fsBold]
    ParentFont = False
    SelectionShadowColor = clActiveCaption
    SelectionFrameColor = clSkyBlue
    Left = 924
    Top = 148
  end
  object RzFC: TRzFrameController
    DisabledColor = clWindow
    FlatButtons = False
    FrameHotTrack = True
    FrameVisible = True
    Left = 936
    Top = 108
  end
  object QLand: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_APW_TS_Land  :TS_MasterID')
    Params = <
      item
        DataType = ftString
        Name = 'TS_MasterID'
        ParamType = ptUnknown
        Size = 31
        Value = 'A2007.06.04-015'
      end>
    TransportStreamFormat = StreamBIN
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    OnResolveError = QLandResolveError
    RequeryDetails = True
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldDefsOnOpen = mwafoOnce
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TS_MasterID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Gubun'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'JiBun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JiMok'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AreaUnit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Area'
        DataType = ftFloat
      end
      item
        Name = 'UnitCost'
        DataType = ftCurrency
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end>
    AutoReposition = True
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    MasterFields = 'MasterID'
    DetailFields = 'TS_MasterID'
    MasterSource = dsMst
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforeResolve = QBuildBeforeResolve
    Left = 988
    Top = 496
    object QLandSEQ: TIntegerField
      Tag = 1
      FieldName = 'SEQ'
    end
    object QLandTS_MasterID: TStringField
      FieldName = 'TS_MasterID'
      Size = 30
    end
    object QLandGubun: TStringField
      Tag = 1
      FieldName = 'Gubun'
      Size = 100
    end
    object QLandJiBun: TStringField
      Tag = 1
      FieldName = 'JiBun'
    end
    object QLandJiMok: TStringField
      Tag = 1
      FieldName = 'JiMok'
      Size = 30
    end
    object QLandAreaUnit: TStringField
      Tag = 1
      FieldName = 'AreaUnit'
      Size = 10
    end
    object QLandArea: TFloatField
      Tag = 1
      FieldName = 'Area'
      DisplayFormat = '#,##0.0'
    end
    object QLandUnitCost: TCurrencyField
      Tag = 1
      FieldName = 'UnitCost'
    end
    object QLandTotal: TCurrencyField
      Tag = 1
      FieldName = 'Total'
    end
  end
  object dsLand: TDataSource
    AutoEdit = False
    DataSet = QLand
    Left = 864
    Top = 321
  end
  object dsBuild: TDataSource
    DataSet = QBuild
    Left = 1060
    Top = 485
  end
  object QBuild: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'Exec SP_S_APW_TS_Build  :TS_MasterID')
    Params = <
      item
        DataType = ftString
        Name = 'TS_MasterID'
        ParamType = ptUnknown
        Size = 31
        Value = 'A2007.03.08-001'
      end>
    TransportStreamFormat = StreamBIN
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    OnResolveError = QLandResolveError
    RequeryDetails = True
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldDefsOnOpen = mwafoOnce
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TS_MasterID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Floors'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Area'
        DataType = ftFloat
      end
      item
        Name = 'UnitCost'
        DataType = ftCurrency
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Re_Price'
        DataType = ftString
        Size = 50
      end>
    AutoReposition = True
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = False
    EnableVersioning = True
    FilterOptions = []
    MasterFields = 'MasterID'
    DetailFields = 'TS_MasterID'
    MasterSource = dsMst
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforeResolve = QBuildBeforeResolve
    Left = 1072
    Top = 524
    object QBuildSEQ: TIntegerField
      Tag = 1
      FieldName = 'SEQ'
    end
    object QBuildTS_MasterID: TStringField
      FieldName = 'TS_MasterID'
      Size = 30
    end
    object QBuildFloors: TStringField
      Tag = 1
      FieldName = 'Floors'
      Size = 10
    end
    object QBuildArea: TFloatField
      Tag = 1
      FieldName = 'Area'
    end
    object QBuildUnitCost: TCurrencyField
      Tag = 1
      FieldName = 'UnitCost'
      DisplayFormat = '#,##0'
    end
    object QBuildTotal: TCurrencyField
      Tag = 1
      FieldName = 'Total'
    end
    object QBuildRe_Price: TStringField
      Tag = 1
      FieldName = 'Re_Price'
      Size = 50
    end
  end
  object ActionList1: TActionList
    Left = 699
    Top = 248
    object aNew: TAction
      Tag = 1
      Caption = #49888#44508'(&A)'
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Tag = 3
      Caption = #49688#51221'(&U)'
      Enabled = False
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Tag = 4
      Caption = #49325#51228'(&D)'
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
      OnExecute = aCancelExecute
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
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ImageIndex = 3
      DataSource = dsMst
    end
    object aSave: TAction
      Tag = 5
      Caption = #51200#51109'(&S)'
      Enabled = False
      OnExecute = aSaveExecute
    end
    object aPrint: TAction
      Tag = 8
      Caption = #51064#49604'(&P)'
      OnExecute = aPrintExecute
    end
    object aHelp: TAction
      OnExecute = aHelpExecute
    end
  end
  object frxReport1: TfrxReport
    Version = '3.23.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #44592#48376#44050
    ReportOptions.CreateDate = 38925.508284317090000000
    ReportOptions.LastChange = 39539.651389965280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo50OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo28OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 1037
    Top = 455
    Datasets = <
      item
        DataSet = frxBuildDataset1
        DataSetName = 'frxBuildDataset'
      end
      item
        DataSet = frxLandDataset1
        DataSetName = 'frxLandDataset'
      end
      item
        DataSet = frxMstDataset1
        DataSetName = 'frxMstDataset'
      end>
    Variables = <>
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
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 1012.914040000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 162.196970000000000000
          Top = 22.677180000000000000
          Width = 404.409710000000000000
          Height = 60.472480000000000000
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          Left = 5.000000000000000000
          Top = 103.220470000000000000
          Width = 458.984540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Memo.UTF8 = (
            '[daddr]'
            '  ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 132.283550000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          DataSetName = 'frDbSet_Desk_Appraisal'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 132.283550000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."MasterID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 362.834880000000000000
          Top = 132.283550000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '?? ?? ?'#0)
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 483.779840000000000000
          Top = 132.283550000000000000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[Charge]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 162.519790000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '?? ?? ?? ?'#0)
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 120.944960000000000000
          Top = 162.519790000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."Reg_DateTime"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 362.834880000000000000
          Top = 162.519790000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 483.779840000000000000
          Top = 162.519790000000000000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[Manager]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 192.756030000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 120.944960000000000000
          Top = 192.756030000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."CustName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 362.834880000000000000
          Top = 192.756030000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 483.779840000000000000
          Top = 192.756030000000000000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."CustCharge"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 120.944960000000000000
          Top = 222.992270000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."CustPhone"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 362.834880000000000000
          Top = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 483.779840000000000000
          Top = 222.992270000000000000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."CustFAX"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 253.228510000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '??   ??   '#63966#128)
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 120.944960000000000000
          Top = 253.228510000000000000
          Width = 597.165740000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 355.275820000000000000
          Width = 120.944960000000000000
          Height = 158.740235590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '??   '#63966#128)
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 514.016080000000000000
          Width = 120.944960000000000000
          Height = 158.740235590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 120.944960000000000000
          Top = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Top = 283.464750000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Top = 313.700990000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 120.944960000000000000
          Top = 313.700990000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."Build_Struct"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 483.779840000000000000
          Top = 313.700990000000000000
          Width = 234.330706220000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."Remodel_Date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 684.094930000000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Align = baRight
          Left = 476.220779999999900000
          Top = 684.094930000000000000
          Width = 241.889920000000000000
          Height = 37.795275590000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 355.275820000000000000
          Top = 684.094930000000000000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '???????'#0)
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 721.890230000000000000
          Width = 120.944960000000000000
          Height = 117.165405590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 120.944960000000000000
          Top = 721.890230000000000000
          Width = 597.165740000000000000
          Height = 117.165405590000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 10.000000000000000000
          GapY = 6.000000000000000000
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Top = 842.835190000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 362.834880000000000000
          Top = 313.700990000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 120.944960000000000000
          Top = 283.464750000000000000
          Width = 597.165740000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frxMstDataset."Building"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 120.944960000000000000
          Top = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 120.944960000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 200.315090000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 279.685220000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #63950#45825#51195'(??')
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 359.055350000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '?? '#23195#128)
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 438.425480000000000000
          Top = 355.275820000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 559.370440000000000000
          Top = 355.275820000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 200.315090000000000000
          Top = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 279.685220000000000000
          Top = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 359.055350000000000000
          Top = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 438.425480000000000000
          Top = 377.953000000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 559.370440000000000000
          Top = 377.953000000000000000
          Width = 158.740260000000000000
          Height = 136.063055590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 120.944960000000000000
          Top = 400.630180000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 200.315090000000000000
          Top = 400.630180000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 279.685220000000000000
          Top = 400.630180000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 359.055350000000000000
          Top = 400.630180000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 438.425480000000000000
          Top = 400.630180000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo52: TfrxMemoView
          Left = 120.944960000000000000
          Top = 423.307360000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 200.315090000000000000
          Top = 423.307360000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 279.685220000000000000
          Top = 423.307360000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 359.055350000000000000
          Top = 423.307360000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 438.425480000000000000
          Top = 423.307360000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 120.944960000000000000
          Top = 445.984540000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 200.315090000000000000
          Top = 445.984540000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo61: TfrxMemoView
          Left = 279.685220000000000000
          Top = 445.984540000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 359.055350000000000000
          Top = 445.984540000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo63: TfrxMemoView
          Left = 438.425480000000000000
          Top = 445.984540000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo65: TfrxMemoView
          Left = 120.944960000000000000
          Top = 468.661720000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Left = 200.315090000000000000
          Top = 468.661720000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo67: TfrxMemoView
          Left = 279.685220000000000000
          Top = 468.661720000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo68: TfrxMemoView
          Left = 359.055350000000000000
          Top = 468.661720000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo69: TfrxMemoView
          Left = 438.425480000000000000
          Top = 468.661720000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo77: TfrxMemoView
          Left = 120.944960000000000000
          Top = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 200.315090000000000000
          Top = 491.338900000000000000
          Width = 238.110390000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo82: TfrxMemoView
          Left = 438.425480000000000000
          Top = 491.338900000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo79: TfrxMemoView
          Left = 120.944960000000000000
          Top = 514.016080000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 200.315090000000000000
          Top = 514.016080000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 306.141930000000000000
          Top = 514.016080000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '??  '#23195#128)
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 411.968770000000000000
          Top = 514.016080000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 559.370440000000000000
          Top = 514.016080000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 200.315090000000000000
          Top = 536.693260000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo86: TfrxMemoView
          Left = 306.141930000000000000
          Top = 536.693260000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo87: TfrxMemoView
          Left = 411.968770000000000000
          Top = 536.693260000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo88: TfrxMemoView
          Left = 559.370440000000000000
          Top = 536.693260000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo106: TfrxMemoView
          Left = 120.944960000000000000
          Top = 650.079160000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 200.315090000000000000
          Top = 650.079160000000000000
          Width = 211.653680000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo109: TfrxMemoView
          Left = 411.968770000000000000
          Top = 650.079160000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo110: TfrxMemoView
          Left = 559.370440000000000000
          Top = 650.079160000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          Left = 120.944960000000000000
          Top = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 200.315090000000000000
          Top = 559.370440000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 306.141930000000000000
          Top = 559.370440000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 411.968770000000000000
          Top = 559.370440000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 559.370440000000000000
          Top = 559.370440000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Left = 120.944960000000000000
          Top = 582.047620000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 200.315090000000000000
          Top = 582.047620000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo76: TfrxMemoView
          Left = 306.141930000000000000
          Top = 582.047620000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo89: TfrxMemoView
          Left = 411.968770000000000000
          Top = 582.047620000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo90: TfrxMemoView
          Left = 559.370440000000000000
          Top = 582.047620000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo91: TfrxMemoView
          Left = 120.944960000000000000
          Top = 604.724800000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo92: TfrxMemoView
          Left = 200.315090000000000000
          Top = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo93: TfrxMemoView
          Left = 306.141930000000000000
          Top = 604.724800000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo94: TfrxMemoView
          Left = 411.968770000000000000
          Top = 604.724800000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo95: TfrxMemoView
          Left = 559.370440000000000000
          Top = 604.724800000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo96: TfrxMemoView
          Left = 120.944960000000000000
          Top = 627.401980000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo97: TfrxMemoView
          Left = 200.315090000000000000
          Top = 627.401980000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo98: TfrxMemoView
          Left = 306.141930000000000000
          Top = 627.401980000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo99: TfrxMemoView
          Left = 411.968770000000000000
          Top = 627.401980000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo100: TfrxMemoView
          Left = 559.370440000000000000
          Top = 627.401980000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo208: TfrxMemoView
          Left = 3.779530000000000000
          Top = 960.000620000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dname]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo209: TfrxMemoView
          Left = 468.661720000000000000
          Top = 102.047310000000000000
          Width = 247.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '??dtel]   FAX.[dfax]'
            '  ')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          Align = baRight
          Left = -241.889920000000000000
          Top = 702.992580000000000000
          Width = 241.889920000000000000
          Height = 37.795275590000000000
          Visible = False
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo211: TfrxMemoView
          Left = 120.944960000000000000
          Top = 684.094930000000000000
          Width = 234.330860000000000000
          Height = 37.795275590000000000
          Color = clWindow
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 778.583180000000000000
        Top = 1092.284170000000000000
        Width = 718.110700000000000000
        DataSet = frxLandDataset1
        DataSetName = 'frxLandDataset'
        RowCount = 0
        object Memo70: TfrxMemoView
          Left = 158.000000000000000000
          Top = 777.330549999999900000
          Width = 374.803340000000000000
          Height = 41.564316670000000000
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
        object Memo101: TfrxMemoView
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          DataSetName = 'frDbSet_Desk_Appraisal'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 120.944960000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataField = 'MasterID'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."MasterID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 362.834880000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '?? ?? ?'#0)
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 483.779840000000000000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[Charge]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Top = 30.236240000000180000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '?? ?? ?? ?'#0)
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 120.944960000000000000
          Top = 30.236240000000180000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataField = 'Reg_DateTime'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."Reg_DateTime"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 362.834880000000000000
          Top = 30.236240000000180000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 483.779840000000000000
          Top = 30.236240000000180000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[Manager]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Top = 60.472480000000360000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 120.944960000000000000
          Top = 60.472480000000360000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataField = 'CustName'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."CustName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 362.834880000000000000
          Top = 60.472480000000360000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 483.779840000000000000
          Top = 60.472480000000360000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataField = 'CustCharge'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."CustCharge"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Top = 90.708720000000090000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 120.944960000000000000
          Top = 90.708720000000090000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataField = 'CustPhone'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."CustPhone"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 362.834880000000000000
          Top = 90.708720000000090000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 483.779840000000000000
          Top = 90.708720000000090000
          Width = 234.330860000000000000
          Height = 30.236240000000000000
          DataField = 'CustFAX'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."CustFAX"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Top = 120.944960000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '??   ??   '#63966#128)
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 120.944960000000000000
          Top = 120.944960000000000000
          Width = 597.165740000000000000
          Height = 30.236240000000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            
              '[frDbSet_Desk_Appraisal."Addr"] [frDbSet_Desk_Appraisal."San"] [' +
              'frDbSet_Desk_Appraisal."bun1"] [frDbSet_Desk_Appraisal."bun2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Top = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 158.740235590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '??   '#63966#128)
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Top = 381.732530000000000000
          Width = 120.944960000000000000
          Height = 158.740235590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 120.944960000000000000
          Top = 245.669450000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo126: TfrxMemoView
          Top = 151.181200000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Top = 181.417439999999900000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 120.944960000000000000
          Top = 181.417439999999900000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          DataField = 'Build_Struct'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."Build_Struct"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 483.779840000000000000
          Top = 181.417439999999900000
          Width = 234.330706220000000000
          Height = 30.236240000000000000
          DataField = 'Remodel_Date'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."Remodel_Date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Top = 551.811380000000100000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Align = baRight
          Left = -241.889920000000000000
          Top = 551.811380000000100000
          Width = 241.889920000000000000
          Height = 37.795275590000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              '[FORMATFLOAT('#39'##,###,###,###,##0'#39',<frDbSet_Desk_Appraisal."ToJi_' +
              'Build_Total">)] ?'#0)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 362.834880000000000000
          Top = 551.811380000000100000
          Width = 120.944960000000000000
          Height = 37.795275590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '???????'#0)
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Align = baRight
          Left = 128.504020000000000000
          Top = 551.811380000000100000
          Width = 234.330860000000000000
          Height = 37.795275590000000000
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              '[FORMATFLOAT('#39'##,###,###,###,##0'#39',<frDbSet_Desk_Appraisal."AdjPr' +
              'ice">)] ?'#0)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Top = 589.606680000000100000
          Width = 120.944960000000000000
          Height = 117.165405590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 120.944960000000000000
          Top = 589.606680000000100000
          Width = 597.165740000000000000
          Height = 117.165405590000000000
          DataField = 'Bigo'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 10.000000000000000000
          GapY = 6.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."Bigo"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Top = 725.669760000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 362.834880000000000000
          Top = 181.417439999999900000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 120.944960000000000000
          Top = 151.181200000000000000
          Width = 597.165740000000000000
          Height = 30.236240000000000000
          DataField = 'Building'
          DataSetName = 'frDbSet_Desk_Appraisal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          Memo.UTF8 = (
            '[frDbSet_Desk_Appraisal."Building"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 120.944960000000000000
          Top = 404.409709999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo140: TfrxMemoView
          Left = 120.944960000000000000
          Top = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 200.315090000000000000
          Top = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 279.685220000000000000
          Top = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #63950#45825#51195'(??')
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 359.055350000000000000
          Top = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '?? '#23195#128)
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 438.425480000000000000
          Top = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 559.370440000000000000
          Top = 222.992270000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 200.315090000000000000
          Top = 245.669450000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo147: TfrxMemoView
          Left = 279.685220000000000000
          Top = 245.669450000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo148: TfrxMemoView
          Left = 359.055350000000000000
          Top = 245.669450000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo149: TfrxMemoView
          Left = 438.425480000000000000
          Top = 245.669450000000100000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo150: TfrxMemoView
          Left = 559.370440000000000000
          Top = 245.669450000000100000
          Width = 158.740260000000000000
          Height = 136.063055590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 120.944960000000000000
          Top = 268.346630000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo152: TfrxMemoView
          Left = 200.315090000000000000
          Top = 268.346630000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo153: TfrxMemoView
          Left = 279.685220000000000000
          Top = 268.346630000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo154: TfrxMemoView
          Left = 359.055350000000000000
          Top = 268.346630000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo155: TfrxMemoView
          Left = 438.425480000000000000
          Top = 268.346630000000000000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo156: TfrxMemoView
          Left = 120.944960000000000000
          Top = 291.023809999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo157: TfrxMemoView
          Left = 200.315090000000000000
          Top = 291.023809999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo158: TfrxMemoView
          Left = 279.685220000000000000
          Top = 291.023809999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo159: TfrxMemoView
          Left = 359.055350000000000000
          Top = 291.023809999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo160: TfrxMemoView
          Left = 438.425480000000000000
          Top = 291.023809999999900000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo161: TfrxMemoView
          Left = 120.944960000000000000
          Top = 313.700990000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo162: TfrxMemoView
          Left = 200.315090000000000000
          Top = 313.700990000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo163: TfrxMemoView
          Left = 279.685220000000000000
          Top = 313.700990000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo164: TfrxMemoView
          Left = 359.055350000000000000
          Top = 313.700990000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo165: TfrxMemoView
          Left = 438.425480000000000000
          Top = 313.700990000000100000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo166: TfrxMemoView
          Left = 120.944960000000000000
          Top = 336.378169999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo167: TfrxMemoView
          Left = 200.315090000000000000
          Top = 336.378169999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo168: TfrxMemoView
          Left = 279.685220000000000000
          Top = 336.378169999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo169: TfrxMemoView
          Left = 359.055350000000000000
          Top = 336.378169999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo170: TfrxMemoView
          Left = 438.425480000000000000
          Top = 336.378169999999900000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo171: TfrxMemoView
          Left = 120.944960000000000000
          Top = 359.055350000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 200.315090000000000000
          Top = 359.055350000000100000
          Width = 238.110390000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo173: TfrxMemoView
          Left = 438.425480000000000000
          Top = 359.055350000000100000
          Width = 120.944960000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              '[FORMATFLOAT('#39'##,###,###,###,##0'#39',<frDbSet_Desk_Appraisal."Toji_' +
              'Total">)] ?'#0)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo174: TfrxMemoView
          Left = 120.944960000000000000
          Top = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 200.315090000000000000
          Top = 381.732530000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 306.141930000000000000
          Top = 381.732530000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '??  '#23195#128)
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 411.968770000000000000
          Top = 381.732530000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 559.370440000000000000
          Top = 381.732530000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Color = clBtnFace
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 200.315090000000000000
          Top = 404.409709999999900000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo181: TfrxMemoView
          Left = 306.141930000000000000
          Top = 404.409709999999900000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo182: TfrxMemoView
          Left = 411.968770000000000000
          Top = 404.409709999999900000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo183: TfrxMemoView
          Left = 559.370440000000000000
          Top = 404.409709999999900000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo184: TfrxMemoView
          Left = 120.944960000000000000
          Top = 517.795609999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 200.315090000000000000
          Top = 517.795609999999900000
          Width = 211.653680000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo186: TfrxMemoView
          Left = 411.968770000000000000
          Top = 517.795609999999900000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              '[FORMATFLOAT('#39'##,###,###,###,##0'#39',<frDbSet_Desk_Appraisal."Build' +
              '_Total">)] ?'#0)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo187: TfrxMemoView
          Left = 559.370440000000000000
          Top = 517.795609999999900000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo188: TfrxMemoView
          Left = 120.944960000000000000
          Top = 427.086890000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo189: TfrxMemoView
          Left = 200.315090000000000000
          Top = 427.086890000000100000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo190: TfrxMemoView
          Left = 306.141930000000000000
          Top = 427.086890000000100000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo191: TfrxMemoView
          Left = 411.968770000000000000
          Top = 427.086890000000100000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo192: TfrxMemoView
          Left = 559.370440000000000000
          Top = 427.086890000000100000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo193: TfrxMemoView
          Left = 120.944960000000000000
          Top = 449.764069999999900000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo194: TfrxMemoView
          Left = 200.315090000000000000
          Top = 449.764069999999900000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo195: TfrxMemoView
          Left = 306.141930000000000000
          Top = 449.764069999999900000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo196: TfrxMemoView
          Left = 411.968770000000000000
          Top = 449.764069999999900000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo197: TfrxMemoView
          Left = 559.370440000000000000
          Top = 449.764069999999900000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo198: TfrxMemoView
          Left = 120.944960000000000000
          Top = 472.441250000000100000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo199: TfrxMemoView
          Left = 200.315090000000000000
          Top = 472.441250000000100000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo200: TfrxMemoView
          Left = 306.141930000000000000
          Top = 472.441250000000100000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo201: TfrxMemoView
          Left = 411.968770000000000000
          Top = 472.441250000000100000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo202: TfrxMemoView
          Left = 559.370440000000000000
          Top = 472.441250000000100000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo203: TfrxMemoView
          Left = 120.944960000000000000
          Top = 495.118430000000000000
          Width = 79.370130000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo204: TfrxMemoView
          Left = 200.315090000000000000
          Top = 495.118430000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo205: TfrxMemoView
          Left = 306.141930000000000000
          Top = 495.118430000000000000
          Width = 105.826840000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo206: TfrxMemoView
          Left = 411.968770000000000000
          Top = 495.118430000000000000
          Width = 147.401670000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo207: TfrxMemoView
          Left = 559.370440000000000000
          Top = 495.118430000000000000
          Width = 158.740260000000000000
          Height = 22.677155590000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 8.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 1931.339830000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxMstDataset1: TfrxDBDataset
    UserName = 'frxMstDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TS_SEQ=TS_SEQ'
      'MasterID=MasterID'
      'Office=Office'
      'Reg_DateTime=Reg_DateTime'
      'Reg_Charge=Reg_Charge'
      'Consult_Charge=Consult_Charge'
      'CustName=CustName'
      'CustPhone=CustPhone'
      'CustCharge=CustCharge'
      'CustFAX=CustFAX'
      'Reg=Reg'
      'Eub=Eub'
      'SAN=SAN'
      'Addr=Addr'
      'AS1=AS1'
      'AS2=AS2'
      'AS3=AS3'
      'AS4=AS4'
      'BUN1=BUN1'
      'BUN2=BUN2'
      'Building=Building'
      'DongHo=DongHo'
      'Pyoung=Pyoung'
      'Category=Category'
      'ToJiBIGO=ToJiBIGO'
      'Build_Struct=Build_Struct'
      'Remodel_Date=Remodel_Date'
      'ToJi_Build_Total=ToJi_Build_Total'
      'AdjPrice=AdjPrice'
      'DocID=DocID'
      'Bigo=Bigo'
      'Jun_Master=Jun_Master'
      'MinPrice=MinPrice'
      'MaxPrice=MaxPrice'
      'CustID=CustID'
      'Toji_Total=Toji_Total'
      'Build_Total=Build_Total'
      'Bigo_In=Bigo_In'
      'Manager=Manager'
      'AppCode=AppCode'
      'Guid=Guid'
      'AddrEtc=AddrEtc'
      'address=address'
      'lconsult_charge=lconsult_charge')
    DataSet = QRMst
    Left = 709
    Top = 307
  end
  object frxLandDataset1: TfrxDBDataset
    UserName = 'frxLandDataset'
    CloseDataSource = False
    DataSource = dsLand
    Left = 913
    Top = 327
  end
  object frxBuildDataset1: TfrxDBDataset
    UserName = 'frxBuildDataset'
    CloseDataSource = False
    DataSource = dsBuild
    Left = 1145
    Top = 475
  end
  object kbmMWClientQuery1: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_S_APW_office')
    Params = <>
    TransportStreamFormat = StreamBIN
    FetchLargeFieldsOnDemand = True
    LargeFieldSize = 256
    FetchMaxRecords = 0
    KeyFields = '*'
    OnResolveError = QLandResolveError
    AutoResolveOnChange = False
    AutoResolveOnClose = False
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoFieldDefsOnOpen = mwafoOnce
    FieldDefs = <>
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
    AfterScroll = QRMstAfterScroll
    OnCalcFields = QRMstCalcFields
    Left = 612
    Top = 728
  end
  object frxReport2: TfrxReport
    Version = '3.23.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #44592#48376#44050
    ReportOptions.CreateDate = 38925.508284317100000000
    ReportOptions.LastChange = 41453.580647719910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 989
    Top = 272
    Datasets = <
      item
        DataSet = frxBuildDataset1
        DataSetName = 'frxBuildDataset'
      end
      item
        DataSet = frxLandDataset1
        DataSetName = 'frxLandDataset'
      end
      item
        DataSet = frxMstDataset1
        DataSetName = 'frxMstDataset'
      end>
    Variables = <>
    Style = <>
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        PrintChildIfInvisible = True
        ReprintOnNewPage = True
        object Memo151: TfrxMemoView
          Top = 120.944960000000000000
          Width = 117.165356770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 117.165430000000000000
          Top = 120.944960000000000000
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
        object Memo153: TfrxMemoView
          Left = 419.527830000000000000
          Top = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 215.433210000000000000
          Top = 120.944960000000000000
          Width = 105.826717950000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #23236#44245#50706#63971#49422#52344)
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 910.866730000000000000
          Top = 120.944960000000000000
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
        object Memo156: TfrxMemoView
          Left = 740.787880000000000000
          Top = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #23236#45824#1066)
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 589.606680000000000000
          Top = 120.944960000000000000
          Width = 75.590526770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #36418#47747#53170)
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 665.197280000000000000
          Top = 120.944960000000000000
          Width = 75.590526770000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 321.260050000000000000
          Top = 120.944960000000000000
          Width = 98.267657950000000000
          Height = 26.456710000000000000
          Color = clSilver
          DataSetName = 'FRXsanction'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Align = baCenter
          Left = 330.708875000000000000
          Top = 34.015770000000000000
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
      end
      object MasterData4: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 49.133890000000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        RowCount = 0
        object Memo142: TfrxMemoView
          Left = 117.165430000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy-mm-dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."Reg_DateTime"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 215.433210000000000000
          Width = 105.826840000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."CustName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 321.260050000000000000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."EMP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 419.527830000000000000
          Width = 170.078850000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."Addr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 910.866730000000000000
          Width = 136.063080000000000000
          Height = 49.133890000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frDbUSADetail."ToJi_Build_Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 589.606680000000000000
          Width = 75.590600000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."BUN1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 740.787880000000000000
          Width = 170.078850000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."Building"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."BUN2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Width = 117.165430000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frDbUSADetail."MasterID"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        Stretched = True
      end
    end
  end
  object SaveDialog: TSaveDialog
    Options = [ofEnableSizing]
    Left = 1093
    Top = 480
  end
  object Query_USA: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_IW_S_TSUSA  :REG,  :EUB, :BUN1')
    Params = <
      item
        DataType = ftString
        Name = 'REG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'EUB'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BUN1'
        ParamType = ptInput
        Value = ''
      end>
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
        Name = 'Address'
        DataType = ftString
        Size = 170
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
        Name = 'Toji_total'
        DataType = ftCurrency
      end
      item
        Name = 'Build_total'
        DataType = ftCurrency
      end
      item
        Name = 'ToJi_Build_Total'
        DataType = ftCurrency
      end
      item
        Name = 'EMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CustName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MasterID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Reg_DateTime'
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
    Left = 708
    Top = 680
    object Query_USAAddress: TStringField
      FieldName = 'Address'
      Origin = '.'
      Size = 170
    end
    object Query_USABUN1: TStringField
      FieldName = 'BUN1'
      Origin = 'dbo.APW_TS_Master.BUN1'
      Size = 4
    end
    object Query_USABUN2: TStringField
      FieldName = 'BUN2'
      Origin = 'dbo.APW_TS_Master.BUN2'
      Size = 4
    end
    object Query_USAToji_total: TCurrencyField
      FieldName = 'Toji_total'
      Origin = 'dbo.APW_TS_Master.Toji_total'
    end
    object Query_USABuild_total: TCurrencyField
      FieldName = 'Build_total'
      Origin = 'dbo.APW_TS_Master.Build_total'
    end
    object Query_USAToJi_Build_Total: TCurrencyField
      FieldName = 'ToJi_Build_Total'
      Origin = 'dbo.APW_TS_Master.ToJi_Build_Total'
    end
    object Query_USAEMP: TStringField
      FieldName = 'EMP'
      Origin = 'TMWCMN_USR_BAC_INFO.EMP'
    end
    object Query_USACustName: TStringField
      FieldName = 'CustName'
      Origin = 'dbo.APW_TS_Master.CustName'
      Size = 50
    end
    object Query_USAMasterID: TStringField
      FieldName = 'MasterID'
      Origin = 'dbo.APW_TS_Master.MasterID'
      Size = 30
    end
    object Query_USAReg_DateTime: TDateTimeField
      FieldName = 'Reg_DateTime'
      Origin = 'dbo.APW_TS_Master.Reg_DateTime'
    end
  end
  object DS_IW: TDataSource
    AutoEdit = False
    DataSet = Query_USA
    Left = 320
    Top = 712
  end
  object OpenDialog1: TOpenDialog
    Left = 1764
    Top = 87
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=daehwa0815!;Persist Security Info=T' +
      'rue;User ID=dh;Initial Catalog=apworksdw;Data Source=10.40.254.1' +
      '0'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 1018
    Top = 605
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 1098
    Top = 605
  end
  object dsdeskusa: TDataSource
    AutoEdit = False
    DataSet = Query_USA
    Left = 828
    Top = 741
  end
  object Query_masteusa: TkbmMWClientQuery
    ClientAsTemplate = False
    QueryService = 'AlMighty'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    SessionName = 'ApWorksClient'
    CacheFlags = []
    Query.Strings = (
      'exec SP_IW_S_APWMASTERUSA  :REG,  :EUB, :BUN1')
    Params = <
      item
        DataType = ftString
        Name = 'REG'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'EUB'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BUN1'
        ParamType = ptInput
        Value = ''
      end>
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
        Name = 'DocID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'address'
        DataType = ftString
        Size = 603
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
        Name = 'Custname'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'price'
        DataType = ftCurrency
      end
      item
        Name = 'Charge'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'ReceiptDate'
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
    Left = 688
    Top = 800
    object Query_masteusaDocID: TStringField
      FieldName = 'DocID'
      Origin = 'dbo.APW_Master.DocID'
      Size = 30
    end
    object Query_masteusaaddress: TStringField
      FieldName = 'address'
      Origin = '.'
      Size = 603
    end
    object Query_masteusaBUN1: TStringField
      FieldName = 'BUN1'
      Origin = 'dbo.APW_Inventory.BUN1'
      Size = 4
    end
    object Query_masteusaBUN2: TStringField
      FieldName = 'BUN2'
      Origin = 'dbo.APW_Inventory.BUN2'
      Size = 4
    end
    object Query_masteusaCustname: TStringField
      FieldName = 'Custname'
      Origin = 'dbo.APW_Master.Custname'
      Size = 60
    end
    object Query_masteusaprice: TCurrencyField
      FieldName = 'price'
      Origin = 'dbo.APW_Master.price'
    end
    object Query_masteusaCharge: TStringField
      FieldName = 'Charge'
      Origin = '.Charge'
      Size = 300
    end
    object Query_masteusaReceiptDate: TDateTimeField
      FieldName = 'ReceiptDate'
      Origin = 'dbo.APW_Master.ReceiptDate'
    end
  end
  object Masterusa: TDataSource
    AutoEdit = False
    DataSet = Query_masteusa
    Left = 820
    Top = 829
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=daehwa0815!;Persist Security Info=T' +
      'rue;User ID=dh;Initial Catalog=Daehwa;Data Source=10.40.254.10'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 1023
    Top = 679
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 1095
    Top = 675
  end
end
