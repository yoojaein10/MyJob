object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'MMS'
  ClientHeight = 617
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 617
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 7
      Top = 8
      Width = 1019
      Height = 608
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 601
        Width = 1017
        Height = 6
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 401
        Top = 1
        Width = 617
        Height = 600
        Align = alClient
        TabOrder = 1
        object btn_add: TButton
          Left = 78
          Top = 520
          Width = 27
          Height = 25
          Caption = '<'
          TabOrder = 0
          OnClick = btn_addClick
        end
        object Grid_tel: TAdvStringGrid
          Left = 320
          Top = 64
          Width = 292
          Height = 450
          Cursor = crDefault
          ColCount = 2
          DrawingStyle = gdsClassic
          FixedCols = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          GridLineColor = 15527152
          GridFixedLineColor = 13947601
          HoverRowCells = [hcNormal, hcSelected]
          OnGetAlignment = teamGridGetAlignment
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 16575452
          ActiveCellColorTo = 16571329
          Bands.Active = True
          Bands.PrimaryColor = clSkyBlue
          Bands.Print = True
          ColumnHeaders.Strings = (
            #52404#53356
            #44536#47353#47749)
          ColumnSize.StretchColumn = 1
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
            51)
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
        object teamGrid: TAdvStringGrid
          Left = 39
          Top = 67
          Width = 275
          Height = 451
          Cursor = crDefault
          ColCount = 2
          DrawingStyle = gdsClassic
          FixedCols = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 2
          GridLineColor = 15527152
          GridFixedLineColor = 13947601
          HoverRowCells = [hcNormal, hcSelected]
          OnGetAlignment = teamGridGetAlignment
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 16575452
          ActiveCellColorTo = 16571329
          Bands.Active = True
          Bands.PrimaryColor = clSkyBlue
          Bands.Print = True
          ColumnHeaders.Strings = (
            #52404#53356
            #44536#47353#47749)
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
          FilterDropDownCheck = True
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
          MouseActions.DisjunctRowSelect = True
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
            51)
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
        object btn_add2: TButton
          Left = 350
          Top = 520
          Width = 27
          Height = 25
          Caption = '<'
          TabOrder = 3
          OnClick = btn_add2Click
        end
        object edit_Gname: TEdit
          Left = 39
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 4
          OnKeyPress = edit_GnameKeyPress
        end
        object edit_Iname: TEdit
          Left = 319
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 5
          OnKeyPress = edit_InameKeyPress
        end
        object btn_Gserch: TButton
          Left = 184
          Top = 22
          Width = 75
          Height = 25
          Caption = #44160#49353
          TabOrder = 6
          OnClick = btn_GserchClick
        end
        object btn_Iserch: TButton
          Left = 464
          Top = 22
          Width = 75
          Height = 25
          Caption = #44160#49353
          TabOrder = 7
          OnClick = btn_IserchClick
        end
        object btn_juso: TButton
          Left = 537
          Top = 552
          Width = 75
          Height = 25
          Caption = #51452#49548#47197
          TabOrder = 8
          OnClick = btn_jusoClick
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 400
        Height = 600
        Align = alLeft
        TabOrder = 2
        object Label1: TLabel
          Left = 16
          Top = 490
          Width = 178
          Height = 13
          Caption = #51060#48120#51648#45716' jpg '#54028#51068#47564' '#46321#47197#44032#45733#54633#45768#45796
        end
        object cxLabel73: TcxLabel
          Left = 16
          Top = 32
          AutoSize = False
          Caption = #48372#45236#45716#49324#46988
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 34
          Width = 102
          AnchorX = 67
          AnchorY = 49
        end
        object edit_callfrom: TcxTextEdit
          Left = 115
          Top = 33
          AutoSize = False
          Properties.ValidateOnEnter = False
          TabOrder = 1
          Text = '025252733'
          Height = 34
          Width = 232
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 63
          AutoSize = False
          Caption = #48155#45716#49324#46988
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 89
          Width = 101
          AnchorX = 67
          AnchorY = 108
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 179
          AutoSize = False
          Caption = #45236#50857
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 214
          Width = 102
          AnchorX = 67
          AnchorY = 286
        end
        object memo_text: TcxMemo
          Left = 115
          Top = 180
          TabOrder = 4
          Height = 212
          Width = 232
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 389
          AutoSize = False
          Caption = #51060#48120#51648'1'
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 34
          Width = 102
          AnchorX = 67
          AnchorY = 406
        end
        object edit_img1: TcxTextEdit
          Left = 115
          Top = 389
          AutoSize = False
          Properties.ValidateOnEnter = False
          TabOrder = 6
          Height = 34
          Width = 171
        end
        object btn_img1: TcxButton
          Left = 284
          Top = 390
          Width = 62
          Height = 32
          Caption = #51060#48120#51648'1'
          TabOrder = 7
          OnClick = btn_img1Click
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 420
          AutoSize = False
          Caption = #51060#48120#51648'2'
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 34
          Width = 102
          AnchorX = 67
          AnchorY = 437
        end
        object edit_img2: TcxTextEdit
          Left = 115
          Top = 420
          AutoSize = False
          Properties.ValidateOnEnter = False
          TabOrder = 9
          Height = 34
          Width = 171
        end
        object btn_img2: TcxButton
          Left = 284
          Top = 421
          Width = 62
          Height = 32
          Caption = #51060#48120#51648'2'
          TabOrder = 10
          OnClick = btn_img2Click
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 451
          AutoSize = False
          Caption = #51060#48120#51648'3'
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 34
          Width = 102
          AnchorX = 67
          AnchorY = 468
        end
        object edit_img3: TcxTextEdit
          Left = 115
          Top = 451
          AutoSize = False
          Properties.ValidateOnEnter = False
          TabOrder = 12
          Height = 34
          Width = 171
        end
        object btn_img3: TcxButton
          Left = 284
          Top = 452
          Width = 62
          Height = 31
          Caption = #51060#48120#51648'3'
          TabOrder = 13
          OnClick = btn_img3Click
        end
        object grid_send: TAdvStringGrid
          Left = 115
          Top = 63
          Width = 232
          Height = 89
          Cursor = crDefault
          ColCount = 1
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 2
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 14
          HoverRowCells = [hcNormal, hcSelected]
          OnDblClickCell = grid_sendDblClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 15387318
          ColumnSize.StretchAll = True
          ControlLook.FixedGradientFrom = clWhite
          ControlLook.FixedGradientTo = clSilver
          ControlLook.FixedGradientHoverFrom = 13619409
          ControlLook.FixedGradientHoverTo = 12502728
          ControlLook.FixedGradientHoverMirrorFrom = 12502728
          ControlLook.FixedGradientHoverMirrorTo = 11254975
          ControlLook.FixedGradientHoverBorder = 12033927
          ControlLook.FixedGradientDownFrom = 8816520
          ControlLook.FixedGradientDownTo = 7568510
          ControlLook.FixedGradientDownMirrorFrom = 7568510
          ControlLook.FixedGradientDownMirrorTo = 6452086
          ControlLook.FixedGradientDownBorder = 14991773
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
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HoverButtons.Position = hbLeftFromColumnLeft
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          Look = glTMS
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
          SearchFooter.ColorTo = 15790320
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
          Version = '8.3.2.6'
          ColWidths = (
            64)
        end
        object btn_SEND: TButton
          Left = 88
          Top = 520
          Width = 75
          Height = 25
          Caption = 'SEND'
          TabOrder = 15
          OnClick = btn_SENDClick
        end
        object btn_Close: TButton
          Left = 219
          Top = 520
          Width = 67
          Height = 25
          Caption = #45803'   '#44592
          TabOrder = 16
          OnClick = btn_CloseClick
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 149
          AutoSize = False
          Caption = #51228'   '#47785
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
          Style.Color = 15589586
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 34
          Width = 102
          AnchorX = 67
          AnchorY = 166
        end
        object edit_subject: TcxTextEdit
          Left = 115
          Top = 149
          AutoSize = False
          Properties.ValidateOnEnter = False
          TabOrder = 18
          Height = 34
          Width = 232
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1033
      Height = 7
      Align = alTop
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 1026
      Top = 8
      Width = 8
      Height = 608
      Align = alRight
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 1
      Top = 8
      Width = 6
      Height = 608
      Align = alLeft
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 3
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=daehwa0815;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=Daehwa;Data Source=10.40.254.10'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 360
    Top = 241
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      
        ' select DISTINCT(team),count(team) as count  from dbo.sms_addr G' +
        'ROUP BY team')
    Left = 392
    Top = 313
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      ''
      ' select DISTINCT(name)  from dbo.sms_addr')
    Left = 384
    Top = 361
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.sms_addr')
    Left = 384
    Top = 417
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 520
    Top = 569
  end
  object OpenDialog1: TOpenDialog
    Left = 888
    Top = 249
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 384
    Top = 497
  end
end
