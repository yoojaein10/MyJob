object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #50629#47924#51068#51648' '#53685#44228
  ClientHeight = 656
  ClientWidth = 1430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1430
    Height = 26
    Align = alTop
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 26
    Width = 1430
    Height = 630
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 8
    Properties.TabHeight = 30
    ClientRectBottom = 630
    ClientRectRight = 1430
    ClientRectTop = 32
    object cxTabSheet1: TcxTabSheet
      Caption = #50976#52824
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 78
        Width = 1430
        Height = 520
        Align = alClient
        TabOrder = 0
        object pnl1: TPanel
          Left = 1
          Top = 1
          Width = 435
          Height = 518
          Align = alClient
          Alignment = taLeftJustify
          Caption = 'pnl1'
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Sheet_Pung_Main: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 433
            Height = 516
            Cursor = crDefault
            Align = alClient
            DefaultColWidth = 55
            DefaultRowHeight = 25
            DrawingStyle = gdsClassic
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = Sheet_Pung_MainGetAlignment
            OnClickCell = Sheet_Pung_MainClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
            ColumnSize.StretchColumn = 0
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
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
            FixedColWidth = 55
            FixedRowHeight = 25
            FixedRowAlways = True
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            WordWrap = False
            ColWidths = (
              55
              55
              55
              55
              55)
            RowHeights = (
              25
              25)
          end
        end
        object pnl2: TPanel
          Left = 436
          Top = 1
          Width = 993
          Height = 518
          Align = alRight
          Caption = 'pnl2'
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Sheet_Pung_Detail: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 991
            Height = 475
            Cursor = crDefault
            Align = alClient
            DefaultRowHeight = 25
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = Sheet_Pung_DetailGetAlignment
            OnGetColumnFilter = Sheet_Pung_DetailGetColumnFilter
            OnFilterSelect = Sheet_Pung_DetailFilterSelect
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownAuto = True
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
            FixedRowHeight = 25
            FixedRowAlways = True
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            Version = '8.3.2.6'
            WordWrap = False
            ColWidths = (
              64
              64
              64
              64
              64)
            RowHeights = (
              25
              25)
          end
          object RelativePanel1: TRelativePanel
            Left = 1
            Top = 476
            Width = 991
            Height = 41
            ControlCollection = <
              item
                Control = lb_filter1
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_gun
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = Label2
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_time
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_timecal
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_gun1
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end>
            Align = alBottom
            TabOrder = 1
            Visible = False
            object lb_filter1: TLabel
              Left = 63
              Top = 13
              Width = 42
              Height = 12
              Align = alLeft
              Caption = #54596#53552#47553' '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_gun: TLabel
              Left = 150
              Top = 13
              Width = 6
              Height = 12
              Align = alLeft
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Label2: TLabel
              Left = 5
              Top = 13
              Width = 54
              Height = 12
              Align = alLeft
              Caption = #54596#53552#47553' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_time: TLabel
              Left = 270
              Top = 13
              Width = 6
              Height = 12
              Align = alLeft
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_timecal: TLabel
              Left = 361
              Top = 14
              Width = 6
              Height = 12
              Align = alLeft
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_gun1: TLabel
              Left = 228
              Top = 13
              Width = 30
              Height = 12
              Align = alLeft
              Caption = #49884#44036':'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
          end
        end
      end
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 1430
        Height = 78
        Align = alTop
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object grp1: TGroupBox
          Left = 17
          Top = 14
          Width = 568
          Height = 55
          Caption = #51312#54924#51312#44148
          Color = clInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          DesignSize = (
            568
            55)
          object f_Date: TcxDateEdit
            Left = 398
            Top = 18
            Properties.ShowTime = False
            Properties.OnChange = f_datePropertiesChange
            TabOrder = 0
            Width = 100
          end
          object Cbo_Gbn: TComboBox
            Left = 76
            Top = 18
            Width = 106
            Height = 21
            TabOrder = 1
            OnChange = Cbo_GbnChange
            Items.Strings = (
              #51204#52404
              #54217#44032#50629#47924
              #53441#49345
              #50629#47924#51648#50896#54016)
          end
          object Cbo_Manager: TComboBox
            Left = 238
            Top = 18
            Width = 105
            Height = 21
            TabOrder = 2
          end
          object cxLabel2: TcxLabel
            Left = 342
            Top = 18
            AutoSize = False
            Caption = #51089#50629#51068#51088
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 21
            Width = 58
            AnchorX = 371
            AnchorY = 29
          end
          object btn_S: TRzBitBtn
            Left = 500
            Top = 15
            Width = 65
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #44160#49353
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 4
            OnClick = btn_SClick
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
          object cxLabel1: TcxLabel
            Left = 181
            Top = 18
            AutoSize = False
            Caption = #45812#45817#51088#47749
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 21
            Width = 58
            AnchorX = 210
            AnchorY = 29
          end
          object cxLabel3: TcxLabel
            Left = 27
            Top = 18
            AutoSize = False
            Caption = #44396#48516
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 21
            Width = 50
            AnchorX = 52
            AnchorY = 29
          end
        end
        object Button1: TButton
          Left = 721
          Top = 30
          Width = 75
          Height = 27
          Caption = #50976#52824#50641#49472
          TabOrder = 1
          Visible = False
          OnClick = Button1Click
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #54217#44032#50629#47924
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 78
        Width = 1430
        Height = 520
        Align = alClient
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 507
          Height = 518
          Align = alClient
          Alignment = taLeftJustify
          Caption = 'pnl1'
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Sheet_Emp_Main: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 505
            Height = 516
            Cursor = crDefault
            Align = alClient
            DefaultRowHeight = 25
            DrawingStyle = gdsClassic
            FixedCols = 2
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = Sheet_Emp_MainGetAlignment
            OnClickCell = Sheet_Emp_MainClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
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
            FixedRowHeight = 25
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            WordWrap = False
            ColWidths = (
              64
              64
              64
              64
              64)
            RowHeights = (
              25
              25)
          end
        end
        object Panel5: TPanel
          Left = 508
          Top = 1
          Width = 921
          Height = 518
          Align = alRight
          Caption = 'pnl2'
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Sheet_Emp_Detail: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 919
            Height = 475
            Cursor = crDefault
            Align = alClient
            DefaultRowHeight = 25
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = Sheet_Emp_DetailGetAlignment
            OnGetColumnFilter = Sheet_Emp_DetailGetColumnFilter
            OnFilterSelect = Sheet_Emp_DetailFilterSelect
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownAuto = True
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
            FixedRowHeight = 25
            FixedRowAlways = True
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SortSettings.DefaultFormat = ssAutomatic
            SortSettings.Show = True
            SortSettings.HeaderColor = 16579058
            SortSettings.HeaderColorTo = 16579058
            SortSettings.HeaderMirrorColor = 16380385
            SortSettings.HeaderMirrorColorTo = 16182488
            Version = '8.3.2.6'
            WordWrap = False
            ColWidths = (
              64
              64
              64
              64
              64)
            RowHeights = (
              25
              25)
          end
          object RelativePanel2: TRelativePanel
            Left = 1
            Top = 476
            Width = 919
            Height = 41
            ControlCollection = <
              item
                Control = lb_filterp
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_gunp
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = Label4
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_timep
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = lb_timecalp
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end
              item
                Control = Label7
                AlignBottomWithPanel = False
                AlignHorizontalCenterWithPanel = False
                AlignLeftWithPanel = False
                AlignRightWithPanel = False
                AlignTopWithPanel = False
                AlignVerticalCenterWithPanel = False
              end>
            Align = alBottom
            TabOrder = 1
            Visible = False
            object lb_filterp: TLabel
              Left = 63
              Top = 13
              Width = 6
              Height = 12
              Align = alLeft
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_gunp: TLabel
              Left = 150
              Top = 13
              Width = 6
              Height = 12
              Align = alLeft
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Label4: TLabel
              Left = 5
              Top = 13
              Width = 54
              Height = 12
              Align = alLeft
              Caption = #54596#53552#47553' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_timep: TLabel
              Left = 270
              Top = 13
              Width = 6
              Height = 12
              Align = alLeft
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object lb_timecalp: TLabel
              Left = 361
              Top = 14
              Width = 6
              Height = 12
              Align = alLeft
              Caption = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
            object Label7: TLabel
              Left = 228
              Top = 13
              Width = 30
              Height = 12
              Align = alLeft
              Caption = #49884#44036':'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1430
        Height = 78
        Align = alTop
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 17
          Top = 14
          Width = 568
          Height = 55
          Caption = #51312#54924#51312#44148
          Color = clInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          DesignSize = (
            568
            55)
          object Emp_Date: TcxDateEdit
            Left = 398
            Top = 18
            Properties.ShowTime = False
            Properties.OnChange = Emp_DatePropertiesChange
            TabOrder = 0
            Width = 100
          end
          object Cbo_Emp_Gubun: TComboBox
            Left = 76
            Top = 18
            Width = 106
            Height = 21
            TabOrder = 1
            OnChange = Cbo_Emp_GubunChange
            Items.Strings = (
              #51204#52404
              #54217#44032#50629#47924
              #53441#49345
              #50629#47924#51648#50896#54016)
          end
          object Cbo_Emp: TComboBox
            Left = 238
            Top = 18
            Width = 105
            Height = 21
            TabOrder = 2
          end
          object cxLabel4: TcxLabel
            Left = 342
            Top = 18
            AutoSize = False
            Caption = #51089#50629#51068#51088
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 21
            Width = 58
            AnchorX = 371
            AnchorY = 29
          end
          object Btn_EmpS: TRzBitBtn
            Left = 500
            Top = 15
            Width = 65
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #44160#49353
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 4
            OnClick = Btn_EmpSClick
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
          object cxLabel5: TcxLabel
            Left = 181
            Top = 18
            AutoSize = False
            Caption = #45812#45817#51088#47749
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 21
            Width = 58
            AnchorX = 210
            AnchorY = 29
          end
          object cxLabel6: TcxLabel
            Left = 27
            Top = 18
            AutoSize = False
            Caption = #44396#48516
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 21
            Width = 50
            AnchorX = 52
            AnchorY = 29
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #50629#47924#51068#51648#53685#44228
      ImageIndex = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1430
        Height = 65
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 1
          Top = 9
          Width = 1428
          Height = 47
          Align = alClient
          Caption = #51312#54924#51312#44148
          Color = clInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object StartDATE: TcxDateEdit
            Left = 60
            Top = 15
            Align = alLeft
            AutoSize = False
            Properties.ShowTime = False
            Properties.OnChange = Emp_DatePropertiesChange
            TabOrder = 0
            Height = 30
            Width = 100
          end
          object cxLabel7: TcxLabel
            Left = 2
            Top = 15
            Align = alLeft
            AutoSize = False
            Caption = #44160#49353#51068#51088
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 58
            AnchorX = 31
            AnchorY = 30
          end
          object btn_STong: TRzBitBtn
            Left = 260
            Top = 15
            Width = 73
            Height = 30
            FrameColor = 7617536
            Align = alLeft
            Caption = #44160#49353
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            OnClick = btn_STongClick
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
          object EndDATE: TcxDateEdit
            Left = 160
            Top = 15
            Align = alLeft
            AutoSize = False
            Properties.ShowTime = False
            Properties.OnChange = Emp_DatePropertiesChange
            TabOrder = 3
            Visible = False
            Height = 30
            Width = 100
          end
          object Edit1: TEdit
            Left = 368
            Top = 20
            Width = 121
            Height = 21
            TabOrder = 4
            Visible = False
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 56
          Width = 1428
          Height = 8
          Align = alBottom
          BevelOuter = bvNone
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 1
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 1428
          Height = 8
          Align = alTop
          BevelOuter = bvNone
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 2
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 544
        Width = 1430
        Height = 54
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1430
          54)
        object btn_Excel: TRzBitBtn
          Left = 20
          Top = 6
          Width = 88
          Height = 38
          FrameColor = 7617536
          Caption = 'Excel'
          Color = 15791348
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 0
          OnClick = btn_ExcelClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF00FF00FF00FAF8F900B9838500B9838400B8838400A7868700FFFEFE00FEFD
            FD00FDFCFC00B4807E00C29E9C00A8868300A87D7800AB817C00AB817D00C09A
            9600AB817B00AD898400AD847D00B1878000C19A9300C0999300B68B8200BA8F
            8400B78F8400BE938600A88378009E8B8500C1877300C1968700A08A8200F7F1
            EF00C3907B00C59A8900FFFAF800C99D8A00D8B9AB00D19F8700D2A48D00CDA1
            8C00FEFAF800FEFCFB00C4937700D7A88E00F7EEE900D0926D00D0987700DAA4
            8200DBA68500DFAF9100DFAF9200DAAC9000DFA98600D3A48100FAF2EC00FDF6
            F100FFFBF800D2A48000F7EDE400FBF3EC00FDF6F000DB9E6000DBA77400DCAC
            7C00FAEFE400F9EFE500FBF3EB00FDF7F100FAF5F000FFFBF700FEFAF600FCF9
            F600FFFEFD00FEFDFC00F7E5D100F8E7D400F7E6D300F5E5D300F8E9D900F9EC
            DE00FBF0E400FAF0E500FBF3EA00F4DBBC00F5DEC200F5E2CC00F6E4CE00F8E9
            D800F9EAD900F6E8D700F8EADA00FAEDDE00FBF1E500FCF6EF00FCF7F100EC9F
            3900F1D3AA00F2D6B000F3D9B600F4DBBB00F4DCBC00F5DEC100F5DFC200F4DE
            C200E7D3B800F5E1C700F5E1C800F7E3CA00F8E5CD00F6E4CD00F7E7D300F8EA
            D800FAEEDE00F9EDDE00FBF0E200F7ECDE00F8EFE300FBF4EB00F9F2E900FCF6
            EE00FEFBF700F3C17C00F3D9B500FAE3C200FAE7CB00F5E2C700F9EAD400FAED
            DB00FBF2E500FBF3E800FCF5EB00FCF7F000FFCA7400F6D8A700F7DDB300F8E0
            B900C9BAA300F8E8CF00FFBD4E00F6DBAD00FCE9C900DFD5C300FFF5E300FDFA
            F400FFFEFC00C6BEAD00FBF2DD00FFFCF500BBB5A400FFFFFD00FFFFFE000084
            0000848484000000000000000000000000000000000000000000000000000000
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
            0202999A999A999A999A999A999A999A999A02020202020202029A999A999A99
            9A999A999A999A999A990E04040506060606999A010101010101010101010101
            999A127E8E7D89888D879A990101010101010101010101019A990F576D56557C
            6362999A019999990101010199999901999A0F4F8B6C566564639A9901019999
            99010199999901019A990F5B80586B676664999A010101999999999999010101
            999A1075814D6F6C68669A990101010199999999010101019A991476745C4E58
            6C69999A010101019999999901010101999A1578837359706F6B9A9901010199
            99999999990101019A99184679535150706F999A010199999901019999990101
            999A1949913D435D714E9A990199999901010101999999019A991B2B92453853
            725A999A010101010101010101010101999A1F4B013A3E445E5D9A9901010101
            01010101010101019A99230A010824457753999A999A999A999A999A999A999A
            999A250A0101084760779A999A999A999A999A999A999A999A99294B01010198
            7A39445273594C6E7F6A8A20020202020202284B01010101982A855442739094
            8F93961D0202020202022D4B01010101014A7A5F8482261A130D071C02020202
            020235090101010101019748953C162C403F611E020202020202330901010101
            0101014A972E17377B8C2F02020202020202330901010101010101010121113B
            863002020202020202023401010101010101010101030C412702020202020202
            0202313232323232323232323236220B02020202020202020202}
        end
        object btn_print: TRzBitBtn
          Left = 114
          Top = 6
          Width = 86
          Height = 37
          FrameColor = 7617536
          Anchors = [akTop, akRight]
          Caption = #51064#49604
          Color = 15791348
          HotTrack = True
          TabOrder = 1
          OnClick = btn_printClick
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
        object Btn_Edit: TRzBitBtn
          Left = 203
          Top = 6
          Width = 110
          Height = 37
          FrameColor = 7617536
          Caption = #50629#47924#51068#51648' '#47560#44048
          Color = 15791348
          HotTrack = True
          TabOrder = 2
          Visible = False
          OnClick = Btn_EditClick
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
      end
      object Grid_Tong: TAdvStringGrid
        Left = 0
        Top = 65
        Width = 1430
        Height = 479
        Cursor = crDefault
        Align = alClient
        DefaultColWidth = 80
        DrawingStyle = gdsClassic
        FixedCols = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
        GridLineColor = 15527152
        GridFixedLineColor = 13947601
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = Grid_TongGetAlignment
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 16575452
        ActiveCellColorTo = 16571329
        Bands.Active = True
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
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        DefaultAlignment = taCenter
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
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
        FixedColWidth = 80
        FixedRowHeight = 25
        FixedFont.Charset = ANSI_CHARSET
        FixedFont.Color = clBlack
        FixedFont.Height = -12
        FixedFont.Name = #44404#47548#52404
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
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.Color = 16645370
        SearchFooter.ColorTo = 16247261
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
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
        Version = '8.3.2.6'
        WordWrap = False
        ColWidths = (
          80
          80
          80
          80
          80)
        RowHeights = (
          25
          22
          22
          22
          22
          22
          22
          22
          22
          22)
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #50629#47924#51068#51648' '#49345#49464#45236#50669
      ImageIndex = 3
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1430
        Height = 598
        Align = alClient
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet5
        Properties.AllowTabDragDrop = True
        Properties.CustomButtons.Buttons = <>
        Properties.Rotate = True
        Properties.Style = 8
        Properties.TabHeight = 50
        Properties.TabPosition = tpLeft
        ClientRectBottom = 598
        ClientRectLeft = 59
        ClientRectRight = 1430
        ClientRectTop = 0
        object cxTabSheet5: TcxTabSheet
          Caption = #54217#44032#50629#47924
          ImageIndex = 0
          object grid_pung: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 1371
            Height = 520
            Cursor = crDefault
            Align = alClient
            DrawingStyle = gdsClassic
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = grid_pungGetAlignment
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
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
            FixedRowHeight = 22
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            Version = '8.3.2.6'
            WordWrap = False
            ColWidths = (
              64
              64
              64
              64
              64)
            RowHeights = (
              22
              22
              22
              22
              22
              22
              22
              22
              22
              22)
          end
          object Panel11: TPanel
            Left = 0
            Top = 520
            Width = 1371
            Height = 78
            Align = alBottom
            TabOrder = 1
            object cxLabel9: TcxLabel
              Left = 18
              Top = 6
              AutoSize = False
              Caption = #50629#47924#51068#51648' '#45216#51676
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 64
              AnchorY = 19
            end
            object Button2: TButton
              Left = 34
              Top = 61
              Width = 75
              Height = 25
              Caption = 'Button2'
              TabOrder = 1
              Visible = False
              OnClick = Button2Click
            end
            object cxLabel8: TcxLabel
              Left = 18
              Top = 30
              AutoSize = False
              Caption = #51312#54924#44148#49688
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 64
              AnchorY = 43
            end
            object cxLabel10: TcxLabel
              Left = 245
              Top = 6
              AutoSize = False
              Caption = #45224#51649#50896#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 291
              AnchorY = 19
            end
            object cxLabel11: TcxLabel
              Left = 245
              Top = 30
              AutoSize = False
              Caption = #49688#49845#45224#51649#50896#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 291
              AnchorY = 43
            end
            object cxLabel12: TcxLabel
              Left = 471
              Top = 6
              AutoSize = False
              Caption = #51648#50896#54016#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 517
              AnchorY = 19
            end
            object cxLabel13: TcxLabel
              Left = 471
              Top = 30
              AutoSize = False
              Caption = #49688#49845#51648#50896#54016#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 517
              AnchorY = 43
            end
            object cxLabel14: TcxLabel
              Left = 697
              Top = 6
              AutoSize = False
              Caption = #49548#49549#54217#44032#49324#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 743
              AnchorY = 19
            end
            object cxLabel15: TcxLabel
              Left = 697
              Top = 30
              AutoSize = False
              Caption = #49688#49845#54217#44032#49324#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 743
              AnchorY = 43
            end
            object cxLabel16: TcxLabel
              Left = 923
              Top = 6
              AutoSize = False
              Caption = #53441#49345#54217#44032#44552#50529
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 969
              AnchorY = 19
            end
            object cxLabel17: TcxLabel
              Left = 923
              Top = 30
              AutoSize = False
              Caption = 'Total'
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 969
              AnchorY = 43
            end
            object edit_date: TcxTextEdit
              Left = 108
              Top = 6
              AutoSize = False
              Properties.Alignment.Horz = taCenter
              TabOrder = 11
              Height = 25
              Width = 138
            end
            object edit_nam: TcxCurrencyEdit
              Left = 335
              Top = 6
              AutoSize = False
              EditValue = 0.000000000000000000
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 12
              Height = 25
              Width = 138
            end
            object edit_Snam: TcxCurrencyEdit
              Left = 335
              Top = 30
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 13
              Height = 25
              Width = 138
            end
            object edit_SJiwon: TcxCurrencyEdit
              Left = 561
              Top = 30
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 14
              Height = 25
              Width = 138
            end
            object edit_jiwon: TcxCurrencyEdit
              Left = 561
              Top = 6
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 15
              Height = 25
              Width = 138
            end
            object edit_Spung: TcxCurrencyEdit
              Left = 787
              Top = 30
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 16
              Height = 25
              Width = 138
            end
            object edit_pung: TcxCurrencyEdit
              Left = 787
              Top = 6
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 17
              Height = 25
              Width = 138
            end
            object edit_Total: TcxCurrencyEdit
              Left = 1013
              Top = 30
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 18
              Height = 25
              Width = 138
            end
            object edit_Desk: TcxCurrencyEdit
              Left = 1013
              Top = 6
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              TabOrder = 19
              Height = 25
              Width = 138
            end
            object edit_gun: TcxTextEdit
              Left = 108
              Top = 30
              AutoSize = False
              Properties.Alignment.Horz = taCenter
              TabOrder = 20
              Height = 25
              Width = 138
            end
            object Edit2: TEdit
              Left = 1157
              Top = 6
              Width = 121
              Height = 21
              TabOrder = 21
              Text = 'Edit2'
              Visible = False
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #44592#53440
          ImageIndex = 1
          object grid_etc: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 1371
            Height = 496
            Cursor = crDefault
            Align = alClient
            DrawingStyle = gdsClassic
            FixedCols = 0
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = grid_etcGetAlignment
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
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
            FixedRowHeight = 22
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            Version = '8.3.2.6'
            ColWidths = (
              64
              64
              64
              64
              64)
            RowHeights = (
              22
              22
              22
              22
              22
              22
              22
              22
              22
              22)
          end
          object Panel12: TPanel
            Left = 0
            Top = 496
            Width = 1371
            Height = 102
            Align = alBottom
            TabOrder = 1
            object cxLabel18: TcxLabel
              Left = 26
              Top = 23
              AutoSize = False
              Caption = #50629#47924#51068#51648' '#45216#51676
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 72
              AnchorY = 36
            end
            object cxLabel19: TcxLabel
              Left = 26
              Top = 47
              AutoSize = False
              Caption = #53441#49345#51217#49688
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 72
              AnchorY = 60
            end
            object lb_DESKcount: TcxLabel
              Left = 116
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 70
              AnchorX = 151
              AnchorY = 60
            end
            object lb_DESKCOST: TcxLabel
              Left = 185
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 94
              AnchorX = 279
              AnchorY = 60
            end
            object cxLabel20: TcxLabel
              Left = 278
              Top = 23
              AutoSize = False
              Caption = #51221#49885#51217#49688
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 324
              AnchorY = 36
            end
            object lb_JUBCount: TcxLabel
              Left = 368
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 70
              AnchorX = 403
              AnchorY = 36
            end
            object lb_JUBCost: TcxLabel
              Left = 437
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 94
              AnchorX = 531
              AnchorY = 36
            end
            object cxLabel23: TcxLabel
              Left = 278
              Top = 47
              AutoSize = False
              Caption = #51221#49885#48156#49569
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 324
              AnchorY = 60
            end
            object lb_SendCount: TcxLabel
              Left = 368
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 70
              AnchorX = 403
              AnchorY = 60
            end
            object lb_SendCost: TcxLabel
              Left = 437
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 94
              AnchorX = 531
              AnchorY = 60
            end
            object cxLabel26: TcxLabel
              Left = 530
              Top = 23
              AutoSize = False
              Caption = #49900'       '#49324
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 576
              AnchorY = 36
            end
            object lb_SimCount: TcxLabel
              Left = 620
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 70
              AnchorX = 655
              AnchorY = 36
            end
            object lb_SimCost: TcxLabel
              Left = 689
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 94
              AnchorX = 783
              AnchorY = 36
            end
            object cxLabel29: TcxLabel
              Left = 530
              Top = 47
              AutoSize = False
              Caption = #49884' '#51312' '#50948
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 576
              AnchorY = 60
            end
            object lb_SijoCount: TcxLabel
              Left = 620
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 70
              AnchorX = 655
              AnchorY = 60
            end
            object lb_SijoCost: TcxLabel
              Left = 689
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 94
              AnchorX = 783
              AnchorY = 60
            end
            object cxLabel32: TcxLabel
              Left = 782
              Top = 23
              AutoSize = False
              Caption = #50557'     '#49885
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 828
              AnchorY = 36
            end
            object lb_YackCount: TcxLabel
              Left = 872
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 70
              AnchorX = 907
              AnchorY = 36
            end
            object lb_YackCost: TcxLabel
              Left = 941
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 94
              AnchorX = 1035
              AnchorY = 36
            end
            object cxLabel35: TcxLabel
              Left = 782
              Top = 47
              AutoSize = False
              Caption = 'T o t a l'
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clGradientActiveCaption
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 91
              AnchorX = 828
              AnchorY = 60
            end
            object lb_TotCost: TcxLabel
              Left = 872
              Top = 47
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 163
              AnchorX = 1035
              AnchorY = 60
            end
            object lb_date: TcxLabel
              Left = 116
              Top = 23
              AutoSize = False
              ParentColor = False
              Style.BorderColor = clHighlight
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnHighlight
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Height = 25
              Width = 163
              AnchorX = 198
              AnchorY = 36
            end
          end
        end
      end
      object btn_ExcelDetail: TRzBitBtn
        Left = 8
        Top = 526
        Width = 36
        Height = 38
        FrameColor = 7617536
        Color = 15791348
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 1
        OnClick = btn_ExcelDetailClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B0000000100000000000000000000FFFF
          FF00FF00FF00FAF8F900B9838500B9838400B8838400A7868700FFFEFE00FEFD
          FD00FDFCFC00B4807E00C29E9C00A8868300A87D7800AB817C00AB817D00C09A
          9600AB817B00AD898400AD847D00B1878000C19A9300C0999300B68B8200BA8F
          8400B78F8400BE938600A88378009E8B8500C1877300C1968700A08A8200F7F1
          EF00C3907B00C59A8900FFFAF800C99D8A00D8B9AB00D19F8700D2A48D00CDA1
          8C00FEFAF800FEFCFB00C4937700D7A88E00F7EEE900D0926D00D0987700DAA4
          8200DBA68500DFAF9100DFAF9200DAAC9000DFA98600D3A48100FAF2EC00FDF6
          F100FFFBF800D2A48000F7EDE400FBF3EC00FDF6F000DB9E6000DBA77400DCAC
          7C00FAEFE400F9EFE500FBF3EB00FDF7F100FAF5F000FFFBF700FEFAF600FCF9
          F600FFFEFD00FEFDFC00F7E5D100F8E7D400F7E6D300F5E5D300F8E9D900F9EC
          DE00FBF0E400FAF0E500FBF3EA00F4DBBC00F5DEC200F5E2CC00F6E4CE00F8E9
          D800F9EAD900F6E8D700F8EADA00FAEDDE00FBF1E500FCF6EF00FCF7F100EC9F
          3900F1D3AA00F2D6B000F3D9B600F4DBBB00F4DCBC00F5DEC100F5DFC200F4DE
          C200E7D3B800F5E1C700F5E1C800F7E3CA00F8E5CD00F6E4CD00F7E7D300F8EA
          D800FAEEDE00F9EDDE00FBF0E200F7ECDE00F8EFE300FBF4EB00F9F2E900FCF6
          EE00FEFBF700F3C17C00F3D9B500FAE3C200FAE7CB00F5E2C700F9EAD400FAED
          DB00FBF2E500FBF3E800FCF5EB00FCF7F000FFCA7400F6D8A700F7DDB300F8E0
          B900C9BAA300F8E8CF00FFBD4E00F6DBAD00FCE9C900DFD5C300FFF5E300FDFA
          F400FFFEFC00C6BEAD00FBF2DD00FFFCF500BBB5A400FFFFFD00FFFFFE000084
          0000848484000000000000000000000000000000000000000000000000000000
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
          0202999A999A999A999A999A999A999A999A02020202020202029A999A999A99
          9A999A999A999A999A990E04040506060606999A010101010101010101010101
          999A127E8E7D89888D879A990101010101010101010101019A990F576D56557C
          6362999A019999990101010199999901999A0F4F8B6C566564639A9901019999
          99010199999901019A990F5B80586B676664999A010101999999999999010101
          999A1075814D6F6C68669A990101010199999999010101019A991476745C4E58
          6C69999A010101019999999901010101999A1578837359706F6B9A9901010199
          99999999990101019A99184679535150706F999A010199999901019999990101
          999A1949913D435D714E9A990199999901010101999999019A991B2B92453853
          725A999A010101010101010101010101999A1F4B013A3E445E5D9A9901010101
          01010101010101019A99230A010824457753999A999A999A999A999A999A999A
          999A250A0101084760779A999A999A999A999A999A999A999A99294B01010198
          7A39445273594C6E7F6A8A20020202020202284B01010101982A855442739094
          8F93961D0202020202022D4B01010101014A7A5F8482261A130D071C02020202
          020235090101010101019748953C162C403F611E020202020202330901010101
          0101014A972E17377B8C2F02020202020202330901010101010101010121113B
          863002020202020202023401010101010101010101030C412702020202020202
          0202313232323232323232323236220B02020202020202020202}
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = #44048#51221#49436#48324#53685#44228
      ImageIndex = 4
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1430
        Height = 49
        Align = alTop
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 1
          Top = 1
          Width = 1428
          Height = 47
          Align = alClient
          Caption = #51312#54924#51312#44148
          Color = 16768710
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object DocSdate: TcxDateEdit
            Left = 60
            Top = 15
            Align = alLeft
            AutoSize = False
            Properties.ShowTime = False
            Properties.OnChange = Emp_DatePropertiesChange
            TabOrder = 0
            Height = 30
            Width = 100
          end
          object cxLabel21: TcxLabel
            Left = 2
            Top = 15
            Align = alLeft
            AutoSize = False
            Caption = #51077#44552#51068#51088
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 58
            AnchorX = 31
            AnchorY = 30
          end
          object btn_DocSerch: TRzBitBtn
            Left = 439
            Top = 15
            Width = 73
            Height = 30
            FrameColor = 7617536
            Align = alLeft
            Caption = #44160#49353
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            OnClick = btn_DocSerchClick
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
          object DocEdate: TcxDateEdit
            Left = 160
            Top = 15
            Align = alLeft
            AutoSize = False
            Properties.ShowTime = False
            Properties.OnChange = Emp_DatePropertiesChange
            TabOrder = 3
            Height = 30
            Width = 100
          end
          object edit_docid: TEdit
            Left = 318
            Top = 15
            Width = 121
            Height = 30
            Align = alLeft
            TabOrder = 4
            OnKeyPress = edit_docidKeyPress
            ExplicitHeight = 21
          end
          object cxLabel22: TcxLabel
            Left = 260
            Top = 15
            Align = alLeft
            AutoSize = False
            Caption = #44048#51221#49436#48264#54840
            ParentColor = False
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Style.Color = clGradientActiveCaption
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 58
            AnchorX = 289
            AnchorY = 30
          end
          object btn_docExcel: TRzBitBtn
            Left = 1338
            Top = 15
            Width = 88
            Height = 30
            FrameColor = 7617536
            Align = alRight
            Caption = 'Excel'
            Color = 15791348
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 6
            OnClick = btn_docExcelClick
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000120B0000120B0000000100000000000000000000FFFF
              FF00FF00FF00FAF8F900B9838500B9838400B8838400A7868700FFFEFE00FEFD
              FD00FDFCFC00B4807E00C29E9C00A8868300A87D7800AB817C00AB817D00C09A
              9600AB817B00AD898400AD847D00B1878000C19A9300C0999300B68B8200BA8F
              8400B78F8400BE938600A88378009E8B8500C1877300C1968700A08A8200F7F1
              EF00C3907B00C59A8900FFFAF800C99D8A00D8B9AB00D19F8700D2A48D00CDA1
              8C00FEFAF800FEFCFB00C4937700D7A88E00F7EEE900D0926D00D0987700DAA4
              8200DBA68500DFAF9100DFAF9200DAAC9000DFA98600D3A48100FAF2EC00FDF6
              F100FFFBF800D2A48000F7EDE400FBF3EC00FDF6F000DB9E6000DBA77400DCAC
              7C00FAEFE400F9EFE500FBF3EB00FDF7F100FAF5F000FFFBF700FEFAF600FCF9
              F600FFFEFD00FEFDFC00F7E5D100F8E7D400F7E6D300F5E5D300F8E9D900F9EC
              DE00FBF0E400FAF0E500FBF3EA00F4DBBC00F5DEC200F5E2CC00F6E4CE00F8E9
              D800F9EAD900F6E8D700F8EADA00FAEDDE00FBF1E500FCF6EF00FCF7F100EC9F
              3900F1D3AA00F2D6B000F3D9B600F4DBBB00F4DCBC00F5DEC100F5DFC200F4DE
              C200E7D3B800F5E1C700F5E1C800F7E3CA00F8E5CD00F6E4CD00F7E7D300F8EA
              D800FAEEDE00F9EDDE00FBF0E200F7ECDE00F8EFE300FBF4EB00F9F2E900FCF6
              EE00FEFBF700F3C17C00F3D9B500FAE3C200FAE7CB00F5E2C700F9EAD400FAED
              DB00FBF2E500FBF3E800FCF5EB00FCF7F000FFCA7400F6D8A700F7DDB300F8E0
              B900C9BAA300F8E8CF00FFBD4E00F6DBAD00FCE9C900DFD5C300FFF5E300FDFA
              F400FFFEFC00C6BEAD00FBF2DD00FFFCF500BBB5A400FFFFFD00FFFFFE000084
              0000848484000000000000000000000000000000000000000000000000000000
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
              0202999A999A999A999A999A999A999A999A02020202020202029A999A999A99
              9A999A999A999A999A990E04040506060606999A010101010101010101010101
              999A127E8E7D89888D879A990101010101010101010101019A990F576D56557C
              6362999A019999990101010199999901999A0F4F8B6C566564639A9901019999
              99010199999901019A990F5B80586B676664999A010101999999999999010101
              999A1075814D6F6C68669A990101010199999999010101019A991476745C4E58
              6C69999A010101019999999901010101999A1578837359706F6B9A9901010199
              99999999990101019A99184679535150706F999A010199999901019999990101
              999A1949913D435D714E9A990199999901010101999999019A991B2B92453853
              725A999A010101010101010101010101999A1F4B013A3E445E5D9A9901010101
              01010101010101019A99230A010824457753999A999A999A999A999A999A999A
              999A250A0101084760779A999A999A999A999A999A999A999A99294B01010198
              7A39445273594C6E7F6A8A20020202020202284B01010101982A855442739094
              8F93961D0202020202022D4B01010101014A7A5F8482261A130D071C02020202
              020235090101010101019748953C162C403F611E020202020202330901010101
              0101014A972E17377B8C2F02020202020202330901010101010101010121113B
              863002020202020202023401010101010101010101030C412702020202020202
              0202313232323232323232323236220B02020202020202020202}
          end
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 49
        Width = 1430
        Height = 549
        Align = alClient
        Caption = 'Panel17'
        TabOrder = 1
        object Panel13: TPanel
          Left = 420
          Top = 1
          Width = 1009
          Height = 547
          Align = alClient
          TabOrder = 0
          object DocGrid_Detail: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 1007
            Height = 545
            Cursor = crDefault
            Align = alClient
            DefaultColWidth = 80
            DrawingStyle = gdsClassic
            FixedCols = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
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
            FixedColWidth = 80
            FixedRowHeight = 25
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -12
            FixedFont.Name = #44404#47548#52404
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            Version = '8.3.2.6'
            WordWrap = False
            ColWidths = (
              80
              80
              80
              80
              80)
            RowHeights = (
              25
              22
              22
              22
              22
              22
              22
              22
              22
              22)
          end
        end
        object Panel15: TPanel
          Left = 1
          Top = 1
          Width = 416
          Height = 547
          Align = alLeft
          TabOrder = 1
          object DocGrid_Main: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 414
            Height = 545
            Cursor = crDefault
            Align = alClient
            DefaultColWidth = 55
            DefaultRowHeight = 25
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetAlignment = Sheet_Pung_MainGetAlignment
            OnDblClickCell = DocGrid_MainDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
            ColumnSize.StretchColumn = 0
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
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taCenter
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
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
            FixedColWidth = 55
            FixedRowHeight = 25
            FixedRowAlways = True
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
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = 16645370
            SearchFooter.ColorTo = 16247261
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
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
            WordWrap = False
            ColWidths = (
              55
              55
              55
              55
              55)
            RowHeights = (
              25
              25)
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 417
          Top = 1
          Width = 3
          Height = 547
          Cursor = crHSplit
        end
      end
    end
  end
  object qry1: TADOQuery
    Parameters = <>
    Left = 1096
    Top = 8
  end
  object Qry_tong: TADOQuery
    Connection = Form1.AdoCon
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'Exec SP_IW_S_TaskStats '#39'2019-12-30'#39', '#39#39)
    Left = 712
    Top = 251
    object Qry_tongManager: TStringField
      FieldName = 'Manager'
    end
    object Qry_tongWork1: TFloatField
      FieldName = 'Work1'
      ReadOnly = True
    end
    object Qry_tongWork2: TFloatField
      FieldName = 'Work2'
      ReadOnly = True
    end
    object Qry_tongWork3: TFloatField
      FieldName = 'Work3'
      ReadOnly = True
    end
    object Qry_tongWork4: TFloatField
      FieldName = 'Work4'
      ReadOnly = True
    end
    object Qry_tongWork5: TFloatField
      FieldName = 'Work5'
      ReadOnly = True
    end
    object Qry_tongWork6: TFloatField
      FieldName = 'Work6'
      ReadOnly = True
    end
    object Qry_tongWork7: TFloatField
      FieldName = 'Work7'
      ReadOnly = True
    end
    object Qry_tongTs_Cnt: TIntegerField
      FieldName = 'Ts_Cnt'
      ReadOnly = True
    end
    object Qry_tongJs_Cnt: TIntegerField
      FieldName = 'Js_Cnt'
      ReadOnly = True
    end
    object Qry_tongSend_Cnt: TIntegerField
      FieldName = 'Send_Cnt'
      ReadOnly = True
    end
    object Qry_tongSim_Cnt: TIntegerField
      FieldName = 'Sim_Cnt'
      ReadOnly = True
    end
    object Qry_tongSim2_Cnt: TIntegerField
      FieldName = 'Sim2_Cnt'
      ReadOnly = True
    end
    object Qry_tongYS_Cnt: TIntegerField
      FieldName = 'YS_Cnt'
      ReadOnly = True
    end
    object Qry_tongWork1_Price: TFloatField
      FieldName = 'Work1_Price'
      ReadOnly = True
    end
    object Qry_tongWork2_Price: TFloatField
      FieldName = 'Work2_Price'
      ReadOnly = True
    end
    object Qry_tongWork3_Price: TFloatField
      FieldName = 'Work3_Price'
      ReadOnly = True
    end
    object Qry_tongWork4_Price: TFloatField
      FieldName = 'Work4_Price'
      ReadOnly = True
    end
    object Qry_tongWork5_Price: TFloatField
      FieldName = 'Work5_Price'
      ReadOnly = True
    end
    object Qry_tongWork6_Price: TFloatField
      FieldName = 'Work6_Price'
      ReadOnly = True
    end
    object Qry_tongWork7_Price: TFloatField
      FieldName = 'Work7_Price'
      ReadOnly = True
    end
    object Qry_tongTs_Cnt_Price: TBCDField
      FieldName = 'Ts_Cnt_Price'
      ReadOnly = True
      Precision = 19
    end
    object Qry_tongJs_Cnt_Price: TBCDField
      FieldName = 'Js_Cnt_Price'
      ReadOnly = True
      Precision = 19
    end
    object Qry_tongSend_Cnt_Price: TBCDField
      FieldName = 'Send_Cnt_Price'
      ReadOnly = True
      Precision = 19
    end
    object Qry_tongSim_Cnt_Price: TBCDField
      FieldName = 'Sim_Cnt_Price'
      ReadOnly = True
      Precision = 19
    end
    object Qry_tongSim2_Cnt_Price: TBCDField
      FieldName = 'Sim2_Cnt_Price'
      ReadOnly = True
      Precision = 19
    end
    object Qry_tongYS_Cnt_Price: TBCDField
      FieldName = 'YS_Cnt_Price'
      ReadOnly = True
      Precision = 19
    end
    object Qry_tongFix_Price: TBCDField
      FieldName = 'Fix_Price'
      ReadOnly = True
      Precision = 19
    end
  end
  object frxReport1: TfrxReport
    Version = '5.6'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #54364#51456
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43467.448383032400000000
    ReportOptions.LastChange = 43867.623492500000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 840
    Top = 259
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object Shape1: TfrxShapeView
        Left = 11.220470000000000000
        Top = 17.204700000000000000
        Width = 1016.693570000000000000
        Height = 672.756340000000000000
      end
      object Memo1: TfrxMemoView
        Left = 93.574830000000000000
        Top = 267.968503940000000000
        Width = 120.944862360000000000
        Height = 41.574805590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #45224' '#51649' '#50896)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 887.496600000000000000
        Top = 153.504020000000000000
        Width = 102.047212360000000000
        Height = 22.677155590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Manager]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        Align = baCenter
        Left = 330.708874999999600000
        Top = 61.456710000000000000
        Width = 385.512060000001000000
        Height = 64.252010000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '   '#50629' '#47924' '#51068' '#51648'  '#45236' '#50669' '#49436'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 214.677165350000000000
        Top = 267.968503940000000000
        Width = 143.622042360000000000
        Height = 41.574805590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W1Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Align = baLeft
        Top = 39.118120000000000000
        Width = 234.330860000000000000
        Height = 22.677155590000000000
        AutoWidth = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Memo.UTF8W = (
          '       '#44592#44036' : [Sdate]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Left = 358.299212600000000000
        Top = 267.968503940000000000
        Width = 158.740162360000000000
        Height = 41.574808030000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W1Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 93.574830000000000000
        Top = 309.543307090000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #45224#51649#50896'('#49688#49845')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Left = 214.677165350000000000
        Top = 309.543307086614000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W2Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo9: TfrxMemoView
        Left = 358.299212600000000000
        Top = 309.543307090000000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W2Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo10: TfrxMemoView
        Left = 93.574830000000000000
        Top = 351.118110240000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #53441'     '#49345)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Left = 214.677165350000000000
        Top = 351.118110236220000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W3Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo12: TfrxMemoView
        Left = 358.299212600000000000
        Top = 351.118110236220000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W3Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 93.574830000000000000
        Top = 392.771653540000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #49548#49549#54217#44032#49324)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 214.677165350000000000
        Top = 392.771653540000000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W5Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Left = 358.299212600000000000
        Top = 392.771653540000000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W5Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Left = 93.574830000000000000
        Top = 434.346456690000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #49688#49845#54217#44032#49324)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 214.677165350000000000
        Top = 434.346456690000000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W6Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 358.299212600000000000
        Top = 434.346456690000000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W6Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo19: TfrxMemoView
        Left = 93.574830000000000000
        Top = 475.921259840000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #50629#47924#51648#50896#54016)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 214.677165350000000000
        Top = 475.921259840000000000
        Width = 143.622042360000000000
        Height = 40.440944880000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W4Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo21: TfrxMemoView
        Left = 358.299212600000000000
        Top = 475.921259840000000000
        Width = 158.740162360000000000
        Height = 40.440944880000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W4Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo22: TfrxMemoView
        Left = 93.574830000000000000
        Top = 218.842610000000000000
        Width = 120.944862360000000000
        Height = 49.133865590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #44396'    '#48516)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Left = 214.677165350000000000
        Top = 218.842610000000000000
        Width = 143.622042360000000000
        Height = 49.133865590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #49884'  '#44036)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        Left = 358.299212600000000000
        Top = 218.842519690000000000
        Width = 158.740162360000000000
        Height = 49.133863150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #44552'   '#50529)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo25: TfrxMemoView
        Left = 517.039370080000000000
        Top = 218.842610000000000000
        Width = 120.944862360000000000
        Height = 49.133865590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #44396'    '#48516)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Left = 637.984251968503900000
        Top = 218.842610000000000000
        Width = 143.622042360000000000
        Height = 49.133865590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #44148'   '#49688)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo27: TfrxMemoView
        Left = 781.606299212598000000
        Top = 218.842519690000000000
        Width = 158.740157480000000000
        Height = 49.133865590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #44552'   '#50529)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo28: TfrxMemoView
        Left = 517.039370080000000000
        Top = 267.968503937008000000
        Width = 120.944862360000000000
        Height = 41.574805590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #53441' '#49345' '#51217' '#49688)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo29: TfrxMemoView
        Left = 517.039370080000000000
        Top = 309.543307086614000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #51217'     '#49688)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo30: TfrxMemoView
        Left = 517.039370080000000000
        Top = 351.118110236220000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #48156'     '#49569)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo31: TfrxMemoView
        Left = 517.039370080000000000
        Top = 392.771653540000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #49900'    '#49324)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo32: TfrxMemoView
        Left = 517.039370080000000000
        Top = 434.346456690000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #49884'  '#51312'  '#50948)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo33: TfrxMemoView
        Left = 517.039370080000000000
        Top = 475.921259840000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #50557'     '#49885)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo34: TfrxMemoView
        Left = 637.984251970000000000
        Top = 267.968503937008000000
        Width = 143.622042360000000000
        Height = 41.574805590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[TsCnt]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo35: TfrxMemoView
        Left = 781.606299210000000000
        Top = 267.968503940000000000
        Width = 158.740162360000000000
        Height = 41.574808030000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[TSMoney]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo36: TfrxMemoView
        Left = 637.984251970000000000
        Top = 309.543307086614000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[JsCnt]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo37: TfrxMemoView
        Left = 781.606299210000000000
        Top = 309.543307086614000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[JSMoney]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo38: TfrxMemoView
        Left = 637.984251970000000000
        Top = 351.118110236220000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[SendCnt]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo39: TfrxMemoView
        Left = 781.606299210000000000
        Top = 351.118110240000000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[SendMoney]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo40: TfrxMemoView
        Left = 637.984251970000000000
        Top = 392.771653540000000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[SimCnt]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo41: TfrxMemoView
        Left = 781.606299210000000000
        Top = 392.771653540000000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[SimMoney]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Left = 637.984251970000000000
        Top = 434.346456690000000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Sim2Cnt]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo43: TfrxMemoView
        Left = 781.606299210000000000
        Top = 434.346456690000000000
        Width = 158.740162360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[Sim2Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo44: TfrxMemoView
        Left = 637.984251970000000000
        Top = 475.921259840000000000
        Width = 143.622042360000000000
        Height = 40.440944881889800000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[YsCnt]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo45: TfrxMemoView
        Left = 781.606299210000000000
        Top = 475.921259840000000000
        Width = 158.740162360000000000
        Height = 40.440944880000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[YsMoney]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo46: TfrxMemoView
        Left = 93.354330710000000000
        Top = 558.070892990000000000
        Width = 121.322834645669000000
        Height = 52.913395590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #54633'     '#44228)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo47: TfrxMemoView
        Left = 214.677165350000000000
        Top = 558.070892990000000000
        Width = 725.669486610000000000
        Height = 52.913395590000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[Total]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo48: TfrxMemoView
        Left = 517.039643460000000000
        Top = 516.283464570000000000
        Width = 120.944862360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #50900#48512#45812#50529)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo49: TfrxMemoView
        Left = 637.984525350000000000
        Top = 516.661417320000000000
        Width = 302.362302360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[Fix_Price]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo50: TfrxMemoView
        Left = 93.354330710000000000
        Top = 516.283464566929000000
        Width = 121.322834650000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = cl3DLight
        HAlign = haCenter
        Memo.UTF8W = (
          #50629#47924#51648#50896#54016'('#49688#49845')')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo51: TfrxMemoView
        Left = 214.677165350000000000
        Top = 516.283464566929000000
        Width = 143.622042360000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[W7Time]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo52: TfrxMemoView
        Left = 358.212632600000000000
        Top = 516.283464566929000000
        Width = 159.118110240000000000
        Height = 41.574803150000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8W = (
          '[W7Money]  ')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Manager=Manager'
      'Work1=Work1'
      'Work2=Work2'
      'Work3=Work3'
      'Work4=Work4'
      'Work5=Work5'
      'Work6=Work6'
      'Work7=Work7'
      'Ts_Cnt=Ts_Cnt'
      'Js_Cnt=Js_Cnt'
      'Send_Cnt=Send_Cnt'
      'Sim_Cnt=Sim_Cnt'
      'Sim2_Cnt=Sim2_Cnt'
      'YS_Cnt=YS_Cnt'
      'Work1_Price=Work1_Price'
      'Work2_Price=Work2_Price'
      'Work3_Price=Work3_Price'
      'Work4_Price=Work4_Price'
      'Work5_Price=Work5_Price'
      'Work6_Price=Work6_Price'
      'Work7_Price=Work7_Price'
      'Ts_Cnt_Price=Ts_Cnt_Price'
      'Js_Cnt_Price=Js_Cnt_Price'
      'Send_Cnt_Price=Send_Cnt_Price'
      'Sim_Cnt_Price=Sim_Cnt_Price'
      'Sim2_Cnt_Price=Sim2_Cnt_Price'
      'YS_Cnt_Price=YS_Cnt_Price'
      'Fix_Price=Fix_Price')
    DataSet = Qry_tong
    BCDToCurrency = False
    Left = 784
    Top = 363
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel Files|*.xls'
    Left = 688
    Top = 339
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = Grid_Tong
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportCellFormats = False
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 656
    Top = 403
  end
  object AdvGridExcelIO2: TAdvGridExcelIO
    AdvStringGrid = Sheet_Pung_Detail
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 720
    Top = 466
  end
  object qry_dtong: TADOQuery
    Connection = Form1.AdoCon
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'EXEC SP_IW_S_TaskStats '#39'2018-12-01'#39', '#39'2018-12-10'#39','#39#54889#51064#49437#39)
    Left = 712
    Top = 195
  end
  object AdvGridExcelIO3: TAdvGridExcelIO
    AdvStringGrid = DocGrid_Main
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 1008
    Top = 418
  end
  object AdvGridExcelIO4: TAdvGridExcelIO
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 960
    Top = 346
  end
end