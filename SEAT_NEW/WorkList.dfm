object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #50629#47924#51068#51648
  ClientHeight = 634
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 634
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 37
      Width = 578
      Height = 596
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet11
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      ClientRectBottom = 596
      ClientRectRight = 578
      ClientRectTop = 20
      object cxTabSheet11: TcxTabSheet
        Caption = #54217#44032#50629#47924
        ImageIndex = 2
        object Panel31: TPanel
          Left = 0
          Top = 315
          Width = 578
          Height = 219
          Align = alClient
          TabOrder = 0
          object ManGrid2: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 576
            Height = 217
            Cursor = crDefault
            Align = alClient
            DrawingStyle = gdsClassic
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
            ScrollBars = ssBoth
            TabOrder = 0
            OnGetEditMask = ManGrid2GetEditMask
            OnKeyDown = ManGrid2KeyDown
            OnSelectCell = ManGrid2SelectCell
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnCanEditCell = ManGrid2CanEditCell
            OnCellsChanged = ManGrid2CellsChanged
            OnGetEditorType = ManGrid2GetEditorType
            OnEditCellDone = ManGrid2EditCellDone
            DragDropSettings.ShowCells = False
            DragDropSettings.OleDropTarget = True
            DragDropSettings.OleDropSource = True
            DragDropSettings.OleEntireRows = True
            DragDropSettings.OleInsertRows = True
            DragDropSettings.OleRemoveRows = True
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
            FocusHelper.Enabled = True
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
        end
        object Panel43: TPanel
          Left = 0
          Top = 0
          Width = 578
          Height = 36
          Align = alTop
          TabOrder = 1
          DesignSize = (
            578
            36)
          object dateman: TDateTimePicker
            Left = 94
            Top = 5
            Width = 121
            Height = 26
            Date = 43357.454626851850000000
            Time = 43357.454626851850000000
            TabOrder = 0
          end
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
            Width = 77
            AnchorX = 57
            AnchorY = 19
          end
          object pr2: TRzBitBtn
            Left = 213
            Top = 3
            Width = 65
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #51312#54924
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            OnClick = pr2Click
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
        end
        object Panel44: TPanel
          Left = 0
          Top = 36
          Width = 578
          Height = 279
          Align = alTop
          TabOrder = 2
          object Panel46: TPanel
            Left = 1
            Top = 245
            Width = 576
            Height = 33
            Align = alBottom
            TabOrder = 0
            object btnaddwork: TButton
              Left = 128
              Top = 3
              Width = 42
              Height = 25
              Caption = #9661
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = btnaddworkClick
            end
            object btnrework: TButton
              Left = 204
              Top = 3
              Width = 42
              Height = 25
              Caption = #9651
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btnreworkClick
            end
            object btn1: TButton
              Left = 276
              Top = 3
              Width = 42
              Height = 25
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btn1Click
            end
            object Button3: TButton
              Left = 340
              Top = 3
              Width = 42
              Height = 25
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = Button3Click
            end
          end
          object ManGrid1: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 576
            Height = 244
            Cursor = crDefault
            Align = alClient
            DrawingStyle = gdsClassic
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
            ScrollBars = ssBoth
            TabOrder = 1
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnDblClickCell = ManGrid1DblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
            Bands.PrimaryColor = clGradientInactiveCaption
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
        end
        object Panel45: TPanel
          Left = 0
          Top = 534
          Width = 578
          Height = 42
          Align = alBottom
          TabOrder = 3
          DesignSize = (
            578
            42)
          object prworkcancel: TRzBitBtn
            Left = 479
            Top = 6
            Width = 80
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #45803#44592
            Color = 15791348
            HotTrack = True
            TabOrder = 0
            OnClick = prworkcancelClick
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
          object prworksave: TRzBitBtn
            Left = 396
            Top = 5
            Width = 77
            Height = 29
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #51200#51109
            Color = 15791348
            HotTrack = True
            TabOrder = 1
            OnClick = prworksaveClick
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
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #53441#49345#50629#47924
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 534
          Width = 578
          Height = 42
          Align = alBottom
          TabOrder = 0
          DesignSize = (
            578
            42)
          object pr1: TRzBitBtn
            Left = 479
            Top = 6
            Width = 80
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #45803#44592
            Color = 15791348
            HotTrack = True
            TabOrder = 0
            OnClick = pr1Click
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
          object pr_TsSAVE: TRzBitBtn
            Left = 396
            Top = 5
            Width = 77
            Height = 29
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #51200#51109
            Color = 15791348
            HotTrack = True
            TabOrder = 1
            OnClick = pr_TsSAVEClick
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
          object pr3: TRzBitBtn
            Left = 135
            Top = 6
            Width = 80
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #44228#49328
            Color = 15791348
            HotTrack = True
            TabOrder = 2
            Visible = False
            OnClick = pr3Click
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
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 578
          Height = 36
          Align = alTop
          TabOrder = 1
          DesignSize = (
            578
            36)
          object datets: TDateTimePicker
            Left = 94
            Top = 5
            Width = 121
            Height = 26
            Date = 43357.454626851850000000
            Time = 43357.454626851850000000
            TabOrder = 0
          end
          object cxLabel1: TcxLabel
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
            Width = 77
            AnchorX = 57
            AnchorY = 19
          end
          object pr_tssearch: TRzBitBtn
            Left = 214
            Top = 4
            Width = 65
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #51312#54924
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            OnClick = pr_tssearchClick
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
        end
        object Panel4: TPanel
          Left = 0
          Top = 36
          Width = 578
          Height = 498
          Align = alClient
          TabOrder = 2
          object grid_Ts: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 576
            Height = 496
            Cursor = crDefault
            Align = alClient
            DrawingStyle = gdsClassic
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
            ScrollBars = ssBoth
            TabOrder = 0
            OnGetEditMask = grid_TsGetEditMask
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetCellColor = grid_TsGetCellColor
            OnDblClickCell = ManGrid1DblClickCell
            OnCanEditCell = grid_TsCanEditCell
            OnGetFloatFormat = grid_TsGetFloatFormat
            OnRadioMouseUp = grid_TsRadioMouseUp
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
            Bands.PrimaryColor = clGradientInactiveCaption
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
            FixedRowAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            FloatingFooter.Column = 5
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
            SortSettings.Column = 0
            SortSettings.Show = True
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
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = #50629#47924#51648#50896#54016
        ImageIndex = 2
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 578
          Height = 36
          Align = alTop
          TabOrder = 0
          DesignSize = (
            578
            36)
          object date_jiwon: TDateTimePicker
            Left = 94
            Top = 5
            Width = 121
            Height = 26
            Date = 43357.454626851850000000
            Time = 43357.454626851850000000
            TabOrder = 0
          end
          object cxLabel2: TcxLabel
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
            Width = 77
            AnchorX = 57
            AnchorY = 19
          end
          object btn_Sjiwon: TRzBitBtn
            Left = 213
            Top = 2
            Width = 65
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #51312#54924
            Color = 15791348
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            HotTrack = True
            ParentFont = False
            TabOrder = 2
            OnClick = btn_SjiwonClick
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
        end
        object Panel7: TPanel
          Left = 0
          Top = 36
          Width = 578
          Height = 498
          Align = alClient
          TabOrder = 1
          object Grid_jiwon: TAdvStringGrid
            Left = 1
            Top = 1
            Width = 576
            Height = 462
            Cursor = crDefault
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DrawingStyle = gdsClassic
            FixedCols = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            OnGetEditMask = Grid_jiwonGetEditMask
            OnKeyDown = Grid_jiwonKeyDown
            GridLineColor = 15527152
            GridFixedLineColor = 13947601
            HoverRowCells = [hcNormal, hcSelected]
            OnGetFloatFormat = Grid_jiwonGetFloatFormat
            OnEditCellDone = Grid_jiwonEditCellDone
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 16575452
            ActiveCellColorTo = 16571329
            Bands.Active = True
            Bands.PrimaryColor = 10930928
            Bands.SecondaryColor = 16768962
            ColumnHeaders.Strings = (
              #44048#51221#49436#48264#54840
              #49884#44036
              #45812#45817#54217#44032#49324
              #48176#51221
              #49548#51116#51648)
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
            FixedColWidth = 106
            FixedRowHeight = 22
            FixedRowAlways = True
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -12
            FixedFont.Name = #44404#47548
            FixedFont.Style = []
            Flat = True
            FloatFormat = '%.1f'
            FloatingFooter.BorderColor = clMenuHighlight
            FloatingFooter.Column = 1
            FloatingFooter.FooterStyle = fsCustomPreview
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glWin7
            Navigation.AlwaysEdit = True
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
              106
              68
              85
              75
              168)
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
          object Panel8: TPanel
            Left = 1
            Top = 463
            Width = 576
            Height = 34
            Align = alBottom
            Color = clSilver
            ParentBackground = False
            TabOrder = 1
            object Label1: TLabel
              Left = 126
              Top = 12
              Width = 48
              Height = 12
              Caption = #49884#44036#44228#49328
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 534
          Width = 578
          Height = 42
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            578
            42)
          object btn_SClose: TRzBitBtn
            Left = 479
            Top = 3
            Width = 80
            Height = 28
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #45803#44592
            Color = 15791348
            HotTrack = True
            TabOrder = 0
            OnClick = prworkcancelClick
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
          object btn_Savejiwon: TRzBitBtn
            Left = 396
            Top = 5
            Width = 77
            Height = 29
            FrameColor = 7617536
            Anchors = [akTop, akRight]
            Caption = #51200#51109
            Color = 15791348
            HotTrack = True
            TabOrder = 1
            OnClick = btn_SavejiwonClick
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
          object btn_jiwonadd: TButton
            Left = 16
            Top = 5
            Width = 37
            Height = 29
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btn_jiwonaddClick
          end
          object btn_jiwondel: TButton
            Left = 59
            Top = 5
            Width = 37
            Height = 29
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btn_jiwondelClick
          end
          object Button2: TButton
            Left = 213
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Button2'
            TabOrder = 4
            Visible = False
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 578
      Height = 36
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 128
        Top = 13
        Width = 84
        Height = 12
        Caption = #51452#44036#44540#47924#49884#44036' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object lb_worktime: TLabel
        Left = 214
        Top = 13
        Width = 6
        Height = 12
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 502
        Top = 1
        Width = 75
        Height = 34
        Align = alRight
        Caption = #53685#44228
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
      end
      object Btn_Edit: TRzBitBtn
        Left = 18
        Top = 3
        Width = 99
        Height = 31
        FrameColor = 7617536
        Caption = #49688#51221#50836#52397
        Color = 15791348
        HotTrack = True
        TabOrder = 1
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
      object Button4: TButton
        Left = 427
        Top = 1
        Width = 75
        Height = 34
        Align = alRight
        Caption = #50900#48324#51089#49457' '#54788#54889
        TabOrder = 2
        OnClick = Button4Click
      end
    end
  end
  object qrywork: TADOQuery
    Parameters = <>
    Left = 450
    Top = 234
  end
end
