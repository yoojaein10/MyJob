object Form1: TForm1
  Left = 3076
  Top = 50
  AlphaBlend = True
  BorderStyle = bsNone
  Caption = 'SEAT'
  ClientHeight = 880
  ClientWidth = 1570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1570
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object btn_Close: TcxButton
      Left = 1532
      Top = 0
      Width = 38
      Height = 27
      Align = alRight
      Caption = 'X'
      Colors.Default = 5856759
      Colors.Pressed = clRed
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_CloseClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 27
    Width = 1570
    Height = 853
    Align = alClient
    TabOrder = 1
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1224
      Height = 851
      Align = alLeft
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet12
      Properties.CustomButtons.Buttons = <>
      Properties.TabSlants.Kind = skCutCorner
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      TabSlants.Kind = skCutCorner
      ClientRectBottom = 851
      ClientRectRight = 1224
      ClientRectTop = 24
      object cxTabSheet12: TcxTabSheet
        Caption = #51204#52404#48176#52824#54364
        ImageIndex = 7
        object Panel16: TPanel
          Left = 0
          Top = 0
          Width = 1224
          Height = 827
          Align = alClient
          Color = clBtnHighlight
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = -1
          object DXPanel1: TDXPanel
            Left = 10
            Top = 697
            Width = 159
            Height = 114
            Color = clBtnHighlight
            TabOrder = 0
            object Label6: TLabel
              Left = 96
              Top = 49
              Width = 44
              Height = 16
              Caption = #45824#54364#51060#49324
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object p128: TPanel
              Left = 4
              Top = 7
              Width = 74
              Height = 94
              Caption = #49436#50756#49437'(530)'
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 0
              OnClick = p187Click
              object Label53: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 58
                Width = 66
                Height = 13
                Margins.Bottom = 22
                Align = alBottom
                Alignment = taCenter
                Caption = '<'#45824#54364#51060#49324'>'
                ExplicitWidth = 60
              end
            end
          end
          object DXPanel2: TDXPanel
            Left = 10
            Top = 454
            Width = 153
            Height = 240
            Color = clBtnHighlight
            TabOrder = 1
            object Label5: TLabel
              Left = 96
              Top = 144
              Width = 33
              Height = 16
              Caption = #51665#54665#48512
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object p129: TPanel
              Left = 2
              Top = 149
              Width = 63
              Height = 80
              BiDiMode = bdLeftToRight
              Caption = #51060#46041#51652
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 0
              OnClick = p187Click
              object lbl7: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 63
                Width = 55
                Height = 13
                Align = alBottom
                Alignment = taCenter
                Caption = '<'#51116#47924#51060#49324'>'
                ExplicitWidth = 60
              end
              object Label52: TLabel
                Left = 1
                Top = 47
                Width = 61
                Height = 13
                Align = alBottom
                Alignment = taCenter
                Caption = '(518)'
                ExplicitWidth = 26
              end
            end
            object p87: TPanel
              Left = 2
              Top = 68
              Width = 63
              Height = 80
              Caption = #51204#50689#48176
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 1
              OnClick = p187Click
              object lbl6: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 63
                Width = 55
                Height = 13
                Align = alBottom
                Alignment = taCenter
                Caption = '<'#44592#54925#51060#49324'>'
                ExplicitWidth = 60
              end
              object Label1: TLabel
                Left = 1
                Top = 47
                Width = 61
                Height = 13
                Align = alBottom
                Alignment = taCenter
                Caption = '(776)'
                ExplicitWidth = 26
              end
            end
            object Panel17: TPanel
              Left = 65
              Top = 5
              Width = 82
              Height = 63
              Caption = #52509#47924#51060#49324
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 2
              OnClick = p187Click
            end
          end
          object DXPanel3: TDXPanel
            Left = 422
            Top = 217
            Width = 400
            Height = 276
            Color = clBtnHighlight
            TabOrder = 2
            object RzLabel1: TRzLabel
              AlignWithMargins = True
              Left = 4
              Top = 121
              Width = 392
              Height = 34
              Margins.Top = 120
              Margins.Bottom = 120
              Align = alClient
              Alignment = taCenter
              Caption = #54924#51032#49892
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 48
              ExplicitHeight = 24
            end
          end
          object DXPanel4: TDXPanel
            Left = 10
            Top = 285
            Width = 154
            Height = 167
            Color = clBtnHighlight
            TabOrder = 3
            object p104: TPanel
              Left = 78
              Top = 7
              Width = 65
              Height = 44
              BiDiMode = bdLeftToRight
              Caption = #51060#49688#50689'(745)'
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 0
              OnClick = p187Click
            end
            object p81: TPanel
              Left = 11
              Top = 116
              Width = 65
              Height = 44
              BiDiMode = bdLeftToRight
              Caption = #51076#51221#48120'(740)'
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 1
              OnClick = p187Click
            end
            object p243: TPanel
              Left = 11
              Top = 54
              Width = 65
              Height = 44
              Caption = #44608#44221#55148'(738)'
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 2
              OnClick = p187Click
            end
          end
          object p160: TPanel
            Left = 320
            Top = 763
            Width = 65
            Height = 44
            Caption = #44608#49440#54868'(511)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 4
            OnClick = p187Click
          end
          object p204: TPanel
            Left = 244
            Top = 763
            Width = 65
            Height = 44
            Caption = #50724#49457#55148'(533)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 5
            OnClick = p187Click
          end
          object p69: TPanel
            Left = 244
            Top = 713
            Width = 65
            Height = 44
            Caption = #51076#49548#50689'(793)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 6
            OnClick = p187Click
          end
          object p33: TPanel
            Left = 244
            Top = 663
            Width = 65
            Height = 44
            Caption = #50976#51648#50689'(754)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 7
            OnClick = p187Click
          end
          object p35: TPanel
            Left = 194
            Top = 390
            Width = 45
            Height = 65
            Caption = #50577#54812#51648
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 8
            OnClick = p187Click
            object Label67: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 37
              Height = 13
              Margins.Bottom = 11
              Align = alBottom
              Alignment = taCenter
              Caption = '(744)'
              ExplicitWidth = 26
            end
          end
          object p70: TPanel
            Left = 194
            Top = 458
            Width = 45
            Height = 65
            BiDiMode = bdLeftToRight
            Caption = #44053#54952#49440
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 9
            OnClick = p187Click
            object Label70: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 37
              Height = 13
              Margins.Bottom = 11
              Align = alBottom
              Alignment = taCenter
              Caption = '(583)'
              ExplicitWidth = 26
            end
          end
          object p244: TPanel
            Left = 320
            Top = 558
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #51221#49440#54616'(729)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 10
            OnClick = p187Click
          end
          object p203: TPanel
            Left = 320
            Top = 603
            Width = 65
            Height = 45
            Caption = #51109#49464#55148'(736)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 11
            OnClick = p187Click
          end
          object p192: TPanel
            Left = 320
            Top = 663
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #52628#49457#51008'(733)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 12
            OnClick = p187Click
          end
          object p94: TPanel
            Left = 319
            Top = 453
            Width = 65
            Height = 45
            Caption = #51060#54812#50896'(743)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 13
            OnClick = p187Click
          end
          object p71: TPanel
            Left = 248
            Top = 453
            Width = 65
            Height = 45
            Caption = #51060#51008#48708'(711)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 14
            OnClick = p187Click
          end
          object p20: TPanel
            Left = 248
            Top = 392
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #51060#54788#55148'(741)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 15
            OnClick = p187Click
          end
          object p157: TPanel
            Left = 320
            Top = 713
            Width = 65
            Height = 44
            Caption = #51060#49688#51652'(700)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 16
            OnClick = p187Click
          end
          object Panel32: TPanel
            Left = 247
            Top = 559
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 17
          end
          object Panel36: TPanel
            Left = 188
            Top = 383
            Width = 3
            Height = 148
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 18
          end
          object Panel38: TPanel
            Left = 190
            Top = 383
            Width = 55
            Height = 1
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 19
          end
          object DXPanel5: TDXPanel
            Left = 298
            Top = 1
            Width = 169
            Height = 195
            Color = clBtnHighlight
            TabOrder = 20
            object p220: TPanel
              Left = 8
              Top = 8
              Width = 65
              Height = 45
              Caption = #44608#53468#50864'(540)'
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 0
              OnClick = p187Click
            end
            object p150: TPanel
              Left = 96
              Top = 8
              Width = 65
              Height = 45
              BiDiMode = bdLeftToRight
              Caption = #48149#51116#54861'(589)'
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 1
              OnClick = p187Click
            end
            object p181: TPanel
              Left = 8
              Top = 68
              Width = 65
              Height = 45
              Caption = #51312#50689#46041'(535)'
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 2
              OnClick = p187Click
            end
            object p140: TPanel
              Left = 8
              Top = 131
              Width = 65
              Height = 45
              Caption = #48177#51652#49688'(544)'
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 3
              OnClick = p187Click
            end
            object Panel19: TPanel
              Left = 96
              Top = 68
              Width = 65
              Height = 45
              BiDiMode = bdLeftToRight
              Caption = #49900#49324'(734)'
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 4
              Visible = False
              OnClick = p187Click
            end
          end
          object p132: TPanel
            Left = 549
            Top = 8
            Width = 65
            Height = 45
            Caption = #51060#46041#54840'(577)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 21
            OnClick = p187Click
          end
          object p254: TPanel
            Left = 549
            Top = 53
            Width = 65
            Height = 45
            Caption = #51060#51333#51652'(569)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 22
            OnClick = p187Click
          end
          object p156: TPanel
            Left = 660
            Top = 8
            Width = 65
            Height = 45
            Caption = #50504#52285#45909'(588)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 23
            OnClick = p187Click
          end
          object p88: TPanel
            Left = 848
            Top = 53
            Width = 65
            Height = 45
            Caption = #51312#44592#44400'(507)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 24
            OnClick = p187Click
          end
          object p237: TPanel
            Left = 725
            Top = 53
            Width = 65
            Height = 45
            Caption = #44608#51333#47785'(552)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 25
            OnClick = p187Click
          end
          object p223: TPanel
            Left = 725
            Top = 8
            Width = 65
            Height = 45
            Caption = #52572#47805#49457'(541)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 26
            OnClick = p187Click
          end
          object p24: TPanel
            Left = 725
            Top = 143
            Width = 65
            Height = 45
            Caption = #44608#46041#54616'(585)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 27
            OnClick = p187Click
          end
          object p125: TPanel
            Left = 848
            Top = 143
            Width = 65
            Height = 45
            Caption = #44608#46020#50980'(550)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 28
            OnClick = p187Click
          end
          object p26: TPanel
            Left = 913
            Top = 603
            Width = 65
            Height = 45
            Caption = #44608#50696#47536'(562)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 29
            OnClick = p187Click
          end
          object p25: TPanel
            Left = 848
            Top = 539
            Width = 65
            Height = 45
            Caption = #50980#49548#51221'(755)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 30
            OnClick = p187Click
          end
          object p135: TPanel
            Left = 848
            Top = 98
            Width = 65
            Height = 45
            Caption = #51060#54788#50864'(568)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 31
            OnClick = p187Click
          end
          object p119: TPanel
            Left = 913
            Top = 539
            Width = 65
            Height = 45
            Caption = #51060#51221#51008'(575)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 32
            OnClick = p187Click
          end
          object p239: TPanel
            Left = 1016
            Top = 762
            Width = 65
            Height = 47
            Caption = #48149#51456#50857'(739)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 33
            OnClick = p187Click
          end
          object p240: TPanel
            Left = 913
            Top = 764
            Width = 65
            Height = 45
            Caption = #49569#54788#50864'(513)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 34
            OnClick = p187Click
          end
          object p40: TPanel
            Left = 1081
            Top = 539
            Width = 65
            Height = 45
            Caption = #51312#44221#48120'(752)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 35
            OnClick = p187Click
          end
          object p53: TPanel
            Left = 549
            Top = 98
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #49888#46041#44480'(555)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 36
            OnClick = p187Click
          end
          object p169: TPanel
            Left = 913
            Top = 8
            Width = 65
            Height = 45
            Caption = #50724#52632#49453'(566)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 37
            OnClick = p187Click
          end
          object p82: TPanel
            Left = 484
            Top = 98
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #52572#44221#44288
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 38
            OnClick = p187Click
          end
          object p146: TPanel
            Left = 484
            Top = 143
            Width = 65
            Height = 45
            Caption = #44608#49692#44396'(511)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 39
            OnClick = p187Click
          end
          object p96: TPanel
            Left = 912
            Top = 374
            Width = 65
            Height = 45
            Caption = #50980#45796#48712'(762)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 40
            OnClick = p187Click
          end
          object p80: TPanel
            Left = 848
            Top = 260
            Width = 65
            Height = 45
            Caption = #44428#50689#54788'(758)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 41
            OnClick = p187Click
          end
          object p90: TPanel
            Left = 848
            Top = 305
            Width = 65
            Height = 45
            Caption = #44608#44592#49437'(759)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 42
            OnClick = p187Click
          end
          object p98: TPanel
            Left = 913
            Top = 305
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #51452#49464#44221'(763)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 43
            OnClick = p187Click
          end
          object p92: TPanel
            Left = 913
            Top = 260
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #49444#49345#54732'(761)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 44
            OnClick = p187Click
          end
          object p185: TPanel
            Left = 1016
            Top = 603
            Width = 65
            Height = 45
            Caption = #54861#52285#50672'(593)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 45
            OnClick = p187Click
          end
          object p43: TPanel
            Left = 1081
            Top = 374
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #54620#44221#49440'(521)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 46
            OnClick = p187Click
          end
          object p102: TPanel
            Left = 1016
            Top = 260
            Width = 65
            Height = 45
            Caption = #44608#48124#51452'(559)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 47
            OnClick = p187Click
          end
          object p242: TPanel
            Left = 1016
            Top = 305
            Width = 65
            Height = 45
            Caption = #50724#48337#50724'(524)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 48
            OnClick = p187Click
          end
          object p217: TPanel
            Left = 1081
            Top = 603
            Width = 65
            Height = 45
            Caption = #50976#49849#50672'(584)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 49
            OnClick = p187Click
          end
          object p236: TPanel
            Left = 1081
            Top = 260
            Width = 65
            Height = 45
            Caption = #51221#49849#54984'(542)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 50
            OnClick = p187Click
          end
          object p86: TPanel
            Left = 1146
            Top = 305
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #52572#48337#49328'(503)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 51
            OnClick = p187Click
          end
          object p48: TPanel
            Left = 1146
            Top = 374
            Width = 65
            Height = 45
            Caption = #44608#54805#49688'(502)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 52
            OnClick = p187Click
          end
          object p224: TPanel
            Left = 1081
            Top = 305
            Width = 65
            Height = 45
            Caption = #44608#51221#50896'(587)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 53
            OnClick = p187Click
          end
          object p17: TPanel
            Left = 484
            Top = 53
            Width = 65
            Height = 45
            Caption = #44608#51452#54872'(580)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 54
            OnClick = p187Click
          end
          object p30: TPanel
            Left = 1016
            Top = 191
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #48176#51116#50865'(551)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 55
            OnClick = p187Click
            object lbl12: TLabel
              Left = 26
              Top = 22
              Width = 3
              Height = 13
            end
          end
          object p110: TPanel
            Left = 913
            Top = 648
            Width = 65
            Height = 45
            Caption = #44608#52824#50516'(582)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 56
            OnClick = p187Click
            object Label104: TLabel
              Left = -2
              Top = 14
              Width = 3
              Height = 13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object p23: TPanel
            Left = 1016
            Top = 718
            Width = 65
            Height = 44
            Caption = #51060#45909#44428'(756)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 57
            OnClick = p187Click
          end
          object p221: TPanel
            Left = 1016
            Top = 494
            Width = 65
            Height = 45
            Caption = #49888#49345#50864'(501)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 58
            OnClick = p187Click
          end
          object p153: TPanel
            Left = 1016
            Top = 648
            Width = 65
            Height = 45
            Caption = #51221#44200#50868'(581)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 59
            OnClick = p187Click
          end
          object p111: TPanel
            Left = 913
            Top = 719
            Width = 65
            Height = 45
            Caption = #45432#49849#54872'(514)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 60
            OnClick = p187Click
          end
          object p89: TPanel
            Left = 1081
            Top = 648
            Width = 65
            Height = 45
            Caption = #44608#47924#44049'(553)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 61
            OnClick = p187Click
          end
          object p210: TPanel
            Left = 1146
            Top = 494
            Width = 65
            Height = 45
            Caption = #51221#49849#50896'(571)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 62
            OnClick = p187Click
          end
          object p115: TPanel
            Left = 1016
            Top = 36
            Width = 65
            Height = 45
            Caption = #45208#54637#50857'(596)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 63
            OnClick = p187Click
          end
          object p161: TPanel
            Left = 1146
            Top = 191
            Width = 65
            Height = 45
            Caption = #44608#54805#49885'(505)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 64
            OnClick = p187Click
          end
          object p122: TPanel
            Left = 1081
            Top = 36
            Width = 65
            Height = 45
            Caption = #50976#50689#51312'(545)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 65
            OnClick = p187Click
          end
          object p97: TPanel
            Left = 1146
            Top = 539
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44428#50724#50613'(579)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 66
            OnClick = p187Click
          end
          object p179: TPanel
            Left = 1146
            Top = 81
            Width = 65
            Height = 45
            Caption = #44608#50857#48176'(599)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 67
            OnClick = p187Click
          end
          object p60: TPanel
            Left = 1081
            Top = 81
            Width = 65
            Height = 45
            Caption = #51312#49457#44397'(510)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 68
            OnClick = p187Click
          end
          object p99: TPanel
            Left = 660
            Top = 53
            Width = 65
            Height = 45
            Caption = #51060#50857#54984'(519)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 69
            OnClick = p187Click
          end
          object p174: TPanel
            Left = 1081
            Top = 146
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44053#47924#51652'(512)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 70
            OnClick = p187Click
          end
          object p118: TPanel
            Left = 1146
            Top = 146
            Width = 65
            Height = 45
            Caption = #51312#44540#47148'(574)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 71
            OnClick = p187Click
          end
          object p93: TPanel
            Left = 1016
            Top = 146
            Width = 65
            Height = 45
            Caption = #48149#51473#54788'(565)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 72
            OnClick = p187Click
          end
          object p213: TPanel
            Left = 1081
            Top = 494
            Width = 65
            Height = 45
            Caption = #51060#47749#54788'(517)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 73
            OnClick = p187Click
          end
          object p47: TPanel
            Left = 1146
            Top = 603
            Width = 65
            Height = 45
            Caption = #51060#50689#51008'(560)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 74
            OnClick = p187Click
          end
          object p103: TPanel
            Left = 1146
            Top = 260
            Width = 65
            Height = 45
            Caption = #49569#51333#50857'(556)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 75
            OnClick = p187Click
          end
          object p184: TPanel
            Left = 1016
            Top = 374
            Width = 65
            Height = 45
            Caption = #49457#51648#50672'(537)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 76
            OnClick = p187Click
          end
          object p113: TPanel
            Left = 1081
            Top = 191
            Width = 65
            Height = 45
            Caption = #51109#51116#50896'(525)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 77
            OnClick = p187Click
          end
          object p59: TPanel
            Left = 1016
            Top = 539
            Width = 65
            Height = 45
            Caption = #49569#51221#49440'(504)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 78
            OnClick = p187Click
          end
          object p121: TPanel
            Left = 1016
            Top = 419
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #54889#51064#49437'(573)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 79
            OnClick = p187Click
            object Label58: TLabel
              Left = 26
              Top = 22
              Width = 3
              Height = 13
            end
          end
          object p79: TPanel
            Left = 1081
            Top = 419
            Width = 65
            Height = 45
            Caption = #51060#51652#54805'(538)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 80
            OnClick = p187Click
          end
          object p42: TPanel
            Left = 848
            Top = 603
            Width = 65
            Height = 45
            Caption = #44277#50857' PC'
            Color = clWhite
            ParentBackground = False
            TabOrder = 81
          end
          object p68: TPanel
            Left = 660
            Top = 98
            Width = 65
            Height = 45
            Caption = #54889#51648#54984'(783)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 82
            OnClick = p187Click
          end
          object p41: TPanel
            Left = 913
            Top = 494
            Width = 65
            Height = 45
            Caption = #48149#51652'(780)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 83
            OnClick = p187Click
          end
          object p127: TPanel
            Left = 319
            Top = 392
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #49888#54812#51221'(721)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 84
            OnClick = p187Click
          end
          object p66: TPanel
            Left = 912
            Top = 419
            Width = 65
            Height = 45
            Caption = #51076#54616#44221'(781)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 85
            OnClick = p187Click
          end
          object p67: TPanel
            Left = 848
            Top = 494
            Width = 65
            Height = 45
            Caption = #51221#49345#50685'(782)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 86
            OnClick = p187Click
          end
          object p39: TPanel
            Left = 913
            Top = 53
            Width = 65
            Height = 45
            Caption = #51060#49849#54788'(779)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 87
            OnClick = p187Click
          end
          object p22: TPanel
            Left = 725
            Top = 98
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #51076#49457#47784'(523)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 88
            OnClick = p187Click
          end
          object p91: TPanel
            Left = 847
            Top = 374
            Width = 65
            Height = 45
            Caption = #44608#54644#50896'(760)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 89
            OnClick = p187Click
          end
          object p95: TPanel
            Left = 692
            Top = 558
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #52572#46973#55064'(784)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 90
            OnClick = p187Click
          end
          object p73: TPanel
            Left = 545
            Top = 561
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44428#54812#48124'(771)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 91
            OnClick = p187Click
          end
          object p78: TPanel
            Left = 467
            Top = 673
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #50864#54788#50885'(795)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 92
            OnClick = p187Click
          end
          object p147: TPanel
            Left = 757
            Top = 603
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #51060#51652#54840'(720)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 93
            OnClick = p187Click
          end
          object p31: TPanel
            Left = 757
            Top = 717
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #49436#51109#50896'(722)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 94
            OnClick = p187Click
          end
          object p63: TPanel
            Left = 436
            Top = 762
            Width = 65
            Height = 45
            Caption = #49900#52292#50865'(712)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 95
            OnClick = p187Click
          end
          object p65: TPanel
            Left = 545
            Top = 762
            Width = 65
            Height = 45
            Caption = #51076#55148#50864'(713)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 96
            OnClick = p187Click
          end
          object p126: TPanel
            Left = 757
            Top = 672
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #50980#49849#47784'(724)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 97
            OnClick = p187Click
          end
          object p123: TPanel
            Left = 402
            Top = 673
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44608#50864#51221'(718)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 98
            OnClick = p187Click
          end
          object p134: TPanel
            Left = 467
            Top = 718
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #51060#44592#50857'(717)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 99
            OnClick = p187Click
            object Label9: TLabel
              Left = 26
              Top = 22
              Width = 3
              Height = 13
            end
          end
          object p139: TPanel
            Left = 402
            Top = 718
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44608#51333#47928'(726)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 100
            OnClick = p187Click
          end
          object p105: TPanel
            Left = 467
            Top = 603
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #49457#50976#51473'(723)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 101
            OnClick = p187Click
          end
          object p114: TPanel
            Left = 726
            Top = 762
            Width = 65
            Height = 45
            Caption = #44608#50689#49440'(715)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 102
            OnClick = p187Click
          end
          object p18: TPanel
            Left = 402
            Top = 603
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44608#48393#47564'(797)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 103
            OnClick = p187Click
          end
          object p120: TPanel
            Left = 692
            Top = 672
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44428#54785#49345'(728)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 104
            OnClick = p187Click
          end
          object p142: TPanel
            Left = 692
            Top = 717
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #52572#48337#52380'(725)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 105
            OnClick = p187Click
          end
          object p209: TPanel
            Left = 610
            Top = 762
            Width = 65
            Height = 45
            Caption = #51060#46041#55148'(716)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 106
            OnClick = p187Click
          end
          object p136: TPanel
            Left = 610
            Top = 561
            Width = 65
            Height = 45
            Caption = #51060#52292#47536'(590)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 107
            OnClick = p187Click
          end
          object p13: TPanel
            Left = 692
            Top = 603
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #52572#50980#49437'(794)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 108
            OnClick = p187Click
          end
          object p61: TPanel
            Left = 402
            Top = 558
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #44600#51116#49437'(764)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 109
            OnClick = p187Click
          end
          object DXPanel6: TDXPanel
            Left = 251
            Top = 217
            Width = 145
            Height = 160
            Color = clBtnHighlight
            TabOrder = 110
            object p173: TPanel
              Left = 75
              Top = 4
              Width = 65
              Height = 45
              Caption = #51060#51068#50864'(799)'
              Color = clScrollBar
              ParentBackground = False
              TabOrder = 0
              OnClick = p187Click
            end
            object p56: TPanel
              Left = 75
              Top = 64
              Width = 65
              Height = 45
              BiDiMode = bdLeftToRight
              Caption = #45224#50672#51116'(727)'
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 1
              OnClick = p187Click
            end
            object p187: TPanel
              Left = 75
              Top = 109
              Width = 65
              Height = 45
              BiDiMode = bdLeftToRight
              Caption = #50976#51116#51064'(591)'
              Color = clScrollBar
              ParentBiDiMode = False
              ParentBackground = False
              TabOrder = 2
              OnClick = p187Click
              object L173: TLabel
                Left = 29
                Top = 22
                Width = 3
                Height = 13
              end
            end
            object DXPanel7: TDXPanel
              Left = 1
              Top = 1
              Width = 53
              Height = 158
              Align = alLeft
              TabOrder = 3
              object RzLabel2: TRzLabel
                Left = 9
                Top = 17
                Width = 36
                Height = 12
                Alignment = taCenter
                Caption = #49436#48260#49892
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #44404#47548#52404
                Font.Style = []
                ParentFont = False
              end
            end
          end
          object Panel11: TPanel
            Left = 547
            Top = 719
            Width = 63
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 111
          end
          object Panel14: TPanel
            Left = 610
            Top = 719
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 112
          end
          object p50: TPanel
            Left = 1016
            Top = 81
            Width = 65
            Height = 45
            Caption = #51221#50896#51221'(516)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 113
            OnClick = p187Click
          end
          object p249: TPanel
            Left = 847
            Top = 419
            Width = 65
            Height = 45
            Caption = #50980#51221#51452'(594)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 114
            OnClick = p187Click
          end
          object Panel18: TPanel
            Left = 913
            Top = 98
            Width = 65
            Height = 45
            Caption = #44277#50857' PC'
            Color = clWhite
            ParentBackground = False
            TabOrder = 115
          end
          object Panel21: TPanel
            Left = 847
            Top = 721
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 116
          end
          object Panel23: TPanel
            Left = 660
            Top = 146
            Width = 65
            Height = 42
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 117
          end
          object Panel30: TPanel
            Left = 849
            Top = 210
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 119
          end
          object LinkLabel1: TLinkLabel
            Left = 106
            Top = 386
            Width = 37
            Height = 20
            Caption = #51116#47924#54016
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 120
          end
          object Panel24: TPanel
            Left = 549
            Top = 144
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 118
          end
          object Panel26: TPanel
            Left = 1081
            Top = 721
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 121
          end
          object Panel25: TPanel
            Left = 1081
            Top = 765
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 122
          end
          object Panel29: TPanel
            Left = 1146
            Top = 765
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 123
          end
          object Panel28: TPanel
            Left = 1146
            Top = 721
            Width = 65
            Height = 44
            Caption = #44277#49437
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 124
          end
          object p193: TPanel
            Left = 757
            Top = 558
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #48149#48337#49440'(757)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 125
            OnClick = p187Click
          end
          object p186: TPanel
            Left = 467
            Top = 558
            Width = 65
            Height = 45
            BiDiMode = bdLeftToRight
            Caption = #48177#46041#54788'(753)'
            Color = clScrollBar
            ParentBiDiMode = False
            ParentBackground = False
            TabOrder = 126
            OnClick = p187Click
          end
          object p175: TPanel
            Left = 848
            Top = 764
            Width = 65
            Height = 45
            Caption = #51060#51333#54788'(751)'
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 127
            OnClick = p187Click
          end
          object p117: TPanel
            Left = 913
            Top = 143
            Width = 65
            Height = 45
            Color = clScrollBar
            ParentBackground = False
            TabOrder = 128
            OnClick = p187Click
            object lbl8: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 28
              Width = 57
              Height = 13
              Align = alBottom
              Alignment = taCenter
              Caption = '<'#52509#47924#51060#49324'>'
              ExplicitLeft = 6
              ExplicitTop = 30
            end
            object Label7: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 57
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = #51221#50864#51333
              ExplicitWidth = 33
            end
            object Label8: TLabel
              AlignWithMargins = True
              Left = 20
              Top = 15
              Width = 26
              Height = 13
              Alignment = taCenter
              Caption = '(567)'
            end
          end
        end
      end
      object cxTabSheet11: TcxTabSheet
        Caption = #46041#48512#51648#49324
        ImageIndex = 6
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 1224
          Height = 827
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label23: TLabel
            Left = 45
            Top = 50
            Width = 55
            Height = 16
            Caption = '<'#51648#49324#51109'>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 157
            Top = 50
            Width = 77
            Height = 16
            Caption = '<'#51452#51452#54217#44032#49324'>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 279
            Top = 50
            Width = 77
            Height = 16
            Caption = '<'#49548#49549#54217#44032#49324'>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 398
            Top = 50
            Width = 77
            Height = 16
            Caption = '<'#49688#49845#54217#44032#49324'>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 533
            Top = 50
            Width = 55
            Height = 16
            Caption = '<'#50629#47924#54016'>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 661
            Top = 50
            Width = 55
            Height = 16
            Caption = '<'#51648#50896#54016'>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object p300: TPanel
            Left = 24
            Top = 79
            Width = 97
            Height = 72
            Caption = #51221#51665#50672
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            OnClick = p187Click
            object Label21: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 54
              Width = 89
              Height = 14
              Margins.Top = 1
              Align = alBottom
              Alignment = taCenter
              Caption = '9870'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p301: TPanel
            Left = 149
            Top = 79
            Width = 97
            Height = 49
            Caption = #51312#52285#55148
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            OnClick = p187Click
            object Label31: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9640'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p302: TPanel
            Left = 149
            Top = 134
            Width = 97
            Height = 49
            Caption = #51109#54840#44540
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            OnClick = p187Click
            object Label20: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9873'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p303: TPanel
            Left = 149
            Top = 189
            Width = 97
            Height = 49
            Caption = #49436#51221#49437
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 3
            OnClick = p187Click
            object Label32: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9872'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p304: TPanel
            Left = 149
            Top = 243
            Width = 97
            Height = 49
            Caption = #48149#50857#51456
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 4
            OnClick = p187Click
            object Label33: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9874'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p305: TPanel
            Left = 149
            Top = 298
            Width = 97
            Height = 49
            Caption = #44608#50756#54840
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 5
            OnClick = p187Click
            object Label34: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9643'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p306: TPanel
            Left = 149
            Top = 352
            Width = 97
            Height = 49
            Caption = #48149#50689#51116
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 6
            OnClick = p187Click
            object Label35: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9486'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p307: TPanel
            Left = 269
            Top = 79
            Width = 97
            Height = 49
            Caption = #51221#44508#54840
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 7
            OnClick = p187Click
            object Label37: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9644'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p308: TPanel
            Left = 269
            Top = 134
            Width = 97
            Height = 49
            Caption = #44608#51473#47148
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 8
            OnClick = p187Click
            object Label38: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9868'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p309: TPanel
            Left = 392
            Top = 79
            Width = 97
            Height = 49
            Caption = #49457#54788#50689
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 9
            OnClick = p187Click
            object Label42: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9871'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p310: TPanel
            Left = 392
            Top = 134
            Width = 97
            Height = 49
            Caption = #54889#51648#54984
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 10
            OnClick = p187Click
            object Label46: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '5214'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p311: TPanel
            Left = 515
            Top = 79
            Width = 97
            Height = 49
            Caption = #51060#51221#55064
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 11
            OnClick = p187Click
            object Label54: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '5213'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p312: TPanel
            Left = 515
            Top = 134
            Width = 97
            Height = 49
            Caption = #44608#51652#49457
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 12
            OnClick = p187Click
            object Label56: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9427'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p313: TPanel
            Left = 515
            Top = 189
            Width = 97
            Height = 49
            Caption = #45208#50689#51456
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 13
            OnClick = p187Click
            object Label57: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9428'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p314: TPanel
            Left = 515
            Top = 243
            Width = 97
            Height = 49
            Caption = #51452#50864#49457
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 14
            OnClick = p187Click
            object Label59: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9642'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p315: TPanel
            Left = 515
            Top = 298
            Width = 97
            Height = 49
            Caption = #51312#54788#49885
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 15
            OnClick = p187Click
            object Label60: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9869'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p316: TPanel
            Left = 643
            Top = 79
            Width = 97
            Height = 49
            Caption = #51060#51008#49440
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 16
            OnClick = p187Click
            object Label62: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9875'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p317: TPanel
            Left = 643
            Top = 134
            Width = 97
            Height = 49
            Caption = #50976#54788#51456
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 17
            OnClick = p187Click
            object Label65: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '5211'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p318: TPanel
            Left = 643
            Top = 189
            Width = 97
            Height = 49
            Caption = #51060#49688#44221
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 18
            OnClick = p187Click
            object Label66: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '5212'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
          object p319: TPanel
            Left = 643
            Top = 243
            Width = 97
            Height = 49
            Caption = #48149#49548#51652
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 19
            OnClick = p187Click
            object Label68: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 34
              Width = 89
              Height = 14
              Margins.Top = 1
              Margins.Bottom = 0
              Align = alBottom
              Alignment = taCenter
              Caption = '9487'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 28
            end
          end
        end
      end
      object cxTabSheet9: TcxTabSheet
        Caption = #50508#47548
        ImageIndex = 4
        object Image1: TImage
          Left = 618
          Top = 142
          Width = 32
          Height = 32
          Picture.Data = {
            055449636F6E0000010003003030000001001800A81C00003600000020200000
            01001800A80C0000DE1C00001010000001000800680500008629000028000000
            30000000600000000100180000000000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FDFFFE00000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000FDFFFEFFFFFFFEFDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFCFF
            FEFFFCFEFEFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFFFFFEFFFFFFFFFEFFFFFFFEFFFEFDFFFDFFFFFFFDFFFEFDFFFFFFFF
            FFFFFFFFFFFFFEFEFFFDFDFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFFFFFFFEFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFEFFFEFF
            FEFDFFFFFFFDFFFFFFFFFFFFFFFFFEFEFEFFFFFFFCFEFEFDFFFCFFFFFFFFFFFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFFFEFCFDFDFEFDFEFF
            FEFEFFFFFEFCFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFFFFFEFFFFFFFFFFFEFEFEFEFBFFFBFCFE
            FEFEFEFEFFFEFFFFFFFEF8FBFBF4F4ECF6F3EDF7F3EEF7F3EEF8F4EFF7F3EEF7
            F3EDF7F3EDF7F3EDF7F3EDF7F3EDF7F3EDF7F3EDF7F3EDF7F3EDF7F3EDF7F3ED
            F7F3EDF8F2EEF3EEE9EDE9DFEEE9DDF3F0E7F3F4EAF7F4EDF9F3EDF8F4EEF8F4
            EEF8F4EEF8F4EEF8F4EEF8F4EEF8F4EEF8F4EEF8F3EEF6F4EDF5F5EBF6F4EBF6
            F5ECF6F3ECF5F5EAF6F6EEFDFCFDFCFEFEFFFFFFFEFEFEFCFDFEEBE3D9B5814A
            AF702FB17230B27331B27331B27331B27331B27331B27331B27331B27331B273
            31B27331B27331B27331B27331B27331B17230AF7131B98C55CAB190CAAD8AB7
            8046B37132B1722FB17432B27332B27331B27331B27331B27331B27331B27331
            B27331B17330B17430B27332B17233B17332B37131AF7132BB9263F6F6F2FDFF
            FEFDFDFDFFFEFFFDFEFCE9DFD0A96520A04F02A25103A35103A35204A35103A3
            5103A35103A35103A35103A35103A35103A35103A35103A35103A35103A35103
            A24F02A04D0AC08E5BF4EFE7F4ECE4B07332A54E07A25102A45103A35103A351
            03A35103A35103A35103A35103A35103A35103A35104A55104A45103A65203A6
            5202A35002A45005B7793CF5F8EDFCFEFEFDFFFFFFFEFFFEFEFEECDFD2AA661F
            A25000A55201A55302A65302A55302A55201A55201A55300A55300A45201A552
            01A55201A55201A55201A55201A55201A45000A14F0AC59362FCFAF7F8F6F0B4
            7735A55104A55202A55401A55201A55201A55201A55201A55201A55201A55201
            A55201A55201A45300A35301A55400A55300A45100A35004B57B3FF8F5F0FDFF
            FFFDFFFFFFFFFFFEFEFEEAE0D3AD681FA45200A55301A55400A55400A55400A5
            5400A55301A55301A55302A75402A55400A35400A45300A45301A35300A45302
            A35200A14F09C69161FAF9F7F9F5EEB57635A35105A45402A45401A55400A554
            00A55400A55301A55301A55301A55301A55301A55400A45401A55403A55301A7
            5400A55201A55205B87C3FFAF5F0FFFFFFFFFFFFFFFFFFFDFEFEE9E0CFAB6520
            A35100A55301A65402A65402A65402A65402A65402A65402A55402A55400A554
            01A45402A65502A55301A95302A75402A15302A15009C79360FCF9F7F7F4EFB5
            7837A45104A55300A65600A55401A55301A55301A55301A55301A55301A55301
            A55301A55301A65301A65401A55500A55400A45300A45205B47D41F4F7F2FFFF
            FFFFFFFFFDFFFFFEFEFDEBDFCBA65D1E9D47009F4A009F4A009F4A009F4A009F
            4A009F4A009E49009E4A009F4B00A049009F49009E4900A04A00A04A009C4B00
            A25000A5500AC79360FBF8F7F8F4F1B47635A55204A04F009F4C009F4A009F4A
            009F4A009F4A009F4A009F4A009F4A009F4A009F4A009F4B009E4A009E48009D
            49009F48009E4701AC7436F8F8EEFFFFFFFFFFFFFFFFFEFDFEFEEFE7DAB98553
            B3763BB4783CB5793CB5793CB4783CB5793CB5793CB4783CB5783BB7793CB877
            3EB7783DB5783DB5783DB2793CB27437AB5B12A14D0AC5935FFCF9F7F8F3F0B5
            7536A44E06AA641FB6773BB7793EB7783CB7783CB7783CB7783CB7783CB7783C
            B7783CB6783CB4793CB6793CB8783CB5783CB4763AB5763BBF976AF8F8F4FFFF
            FFFEFEFEFFFFFEFFFFFFFBFAF7F0E6DAEEE2D4EFE3D5EFE3D6EFE3D6EFE3D5EF
            E3D6EFE3D6EFE3D6EFE3D5EFE3D6F0E3D5EFE2D5EFE3D5EFE3D5EEE3D6E6D2BF
            B27B459D470BC59261FCF9F6F7F4F0B476369F4505C79B6DE8DAC8F0E3D6F0E3
            D6F0E3D6F0E3D6F0E3D6F0E3D6F0E3D6F0E3D6EFE3D6EEE3D5F0E3D4F1E3D5EF
            E2D6EEE2D5EFE2D4F2E9E0FDFCFDFEFEFEFFFFFFFFFDFFFDFFFEFBFEFDF8FBF6
            F9F9F5FAF9F5FAF9F5FAFAF4FAFAF4FAF9F5FAF9F5FAF9F5FAF9F5FBFAF5FAFA
            F3FAF9F3F9FAF4F9FAF4F7FCF7EAE7DBB581479D460BC69262FCF9F7F8F5EEB1
            77349D4506C7A07AF2EEE7FAFAF7FAFAF4FAFAF4FAF9F5FAF9F5FAF9F5FAF9F5
            FAFAF5F9FAF4F9F9F4F7F9F5F9F9F4FBF9F6F9F9F5F9F9F2FAFBF7FDFEFBFFFF
            FFFFFFFFFFFEFFFDFEFEEEE7DEBF9462B9854EBB8750BB8650BB874FBB8750BB
            8750BC8751BC8751BB8751BC8750BC874FBC874FBD864FBB8650B98952B68248
            A85F159F4D0AC69360FCF9F6F9F4EFB37636A34D05AB6B27B6844CBB8750BB87
            50BB8750BB8750BB8750BB8750BB8750BB8750BC874FBC8750BA8751BC8750BB
            8550BB864FB9864FC4A479FAF9F1FFFFFFFFFFFFFEFFFFFEFEFEE9DFD0A9631F
            A04F00A15101A25101A25201A25101A15101A25101A25101A25101A15101A051
            01A05001A15002A25001A35001A45102A35000A2500AC59361F9F9F7F7F4EEB5
            7536A65004A15200A05101A15101A25101A15101A15101A15101A15101A15101
            A15101A25101A25101A15201A25101A15101A14F00A04E03B2793BF6F5F0FFFF
            FFFFFFFFFEFFFFFEFEFEEBE0D1AB651FA35000A45300A55400A55300A45300A4
            5300A45300A45200A55200A45300A35301A45200A35201A45300A55300A65301
            A55100A34F09C39461FBF9F7F7F3EEB27635A74F04A35200A45300A45200A453
            00A45200A55301A45300A45300A45200A45200A45200A45300A45300A45300A4
            5201A45100A45003B67B3EF6F5F1FDFEFEFFFFFFFFFFFFFEFEFEECE0D1AB661F
            A35200A45400A55401A65401A55301A45301A45401A55400A45400A55401A554
            01A55500A45400A45302A35202A45302A45200A35009C59261FBF8F6F8F4F0B0
            7735A85004A55301A65400A55401A45500A45401A55401A45400A55400A55400
            A45400A45300A55400A55400A45401A55301A55300A55204B77C40F8F6F1FDFF
            FFFEFEFEFFFFFFFEFEFEECE0D1AB661FA45100A55401A55402A55401A45301A5
            5401A55500A55401A55401A45500A45401A65401A55400A75401A85304A45402
            A25300A25109C49260FBF9F6F6F5EAB07631A55104A65203A55403A65302A554
            00A55301A55400A55400A65301A55401A55401A55401A55400A55400A45401A5
            5301A55300A45204B67B3FF7F6F0FCFEFEFFFFFFFFFFFFFEFEFEECE0D1AB661F
            A35200A45400A45401A55400A55301A55301A45401A45400A55300A45400A455
            00A65400A45300A44F00A44A009F49009D48009D4803BF905EFBF8F6F4F4E9B0
            722F9E49009E48009E4800A04A00A44F00A55300A45500A65401A85402A65401
            A45401A55301A55301A55401A55402A55301A55201A55205B67C40F7F6F0FCFE
            FEFFFFFFFFFFFFFEFEFEECE0D1AB661FA35100A55301A55500A55400A45401A4
            5400A55500A65401A65300A55400A14F009F4900A04E00A75A0FB16B2EB97F4A
            C28F62C69A75DAC6ACFBFBF9F8F7F4D4B395C49871BE8D5CB57945AD6727A555
            099F4B009F4A00A34F00A45402A55402A65401A55400A55301A55400A55402A6
            5402A55201A55205B67C40F7F6F0FDFFFFFFFFFFFFFFFFFEFEFEECE0D1AB661F
            A35100A55301A55300A45301A55400A45400A55501A75301A44D00A04C00A55A
            10B5763FC6996FD6B897E3CEB7EBDECEF2EAE2F6F3EDF8FAF7FDFEFDFDFCFEF9
            F7F5F4F1EBEFE8DDE9DACAE1C9B1D4B28EC09065B16E35A554099F4A00A14F00
            A55400A65401A65401A55400A45400A55401A55300A55205B77C40F8F7F1FDFF
            FFFFFFFFFFFFFFFEFEFEECE0D1AB661FA15000A45400A55201A45402A45500A6
            5401A34E00A04B00AA5D19BE8755D4B491E7D7C4F5F1ECFDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFE
            FDF1ECE4E4CFBBD0A985B77D48A358109E4C00A44F00A65302A65401A55500A5
            5400A55300A55205B77C40F8F7F1FCFEFEFFFFFFFFFFFFFEFEFEECE0D1AB661F
            A15100A55300A55401A35402A35201A24C00A55710B9814DD6B797EEE4D8FBFF
            FEFEFFFFFFFFFFFDFFFFFEFFFEFEFEFFFEFEFEFFFFFFFFFEFFFDFEFFFEFFFEFE
            FFFFFEFEFEFFFDFFFDFFFDFCFFFDFDFEFEFFFFFFFFFFFFFAFAF9E9DCCDCEAC87
            B2753CA15008A04B00A55301A55401A55301A55300A55205B77C40F8F7F1FCFE
            FEFFFFFFFEFFFFFEFEFEECE0D1AB661FA25100A55300A55500A25000A24B00AD
            672BCAA57FECE0D2FEFFFFFFFFFFFDFFFEFDFFFEFDFFFEFCFFFFFCFDFFFEFDFE
            FEFCFFFEFFFFFFFFFFFEFFFFFFFFFFFDFFFFFCFFFEFFFEFFFFFFFDFFFFFDFCFE
            FDFDFEFEFCFEFFFEFFFFFFFFFFFBFAF8E5D4C1C5966BA95D1CA04B00A45201A6
            5401A45200A45105B77C40F8F7F0FDFFFFFEFFFFFEFFFFFEFEFEEBE0D1AB671F
            A04F00A75500A45100A04E05B57A40DBC1A6F8F5F1FFFFFFFFFFFFFFFFFEFFFD
            FEFFFFFEFEFFFEFDFEFFFDFDFEFFFFFDFFFFFFFBFFFFF8F5EFF3EEE7F3EEEAF8
            F7F5FEFFFFFFFFFFFFFFFFFEFEFFFDFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFF
            FFFFFFF6EEE6D3B08EAE6C2DA04C00A45100A55300A55204B57D3FF7F6F1FDFF
            FFFDFFFFFFFEFFFEFDFEEBE0D0AA671FA25000A75100A04F08B88350E4D6C2FB
            FDFBFEFFFFFFFFFFFFFFFEFEFEFFFFFDFFFFFEFFFFFFFFFFFFFEFFFFFFFCFBF7
            E9DBC9D5BD9CCAA375C3966DC5966FCEA780D9C3A7EFE4D4FEFEFDFDFFFFFEFE
            FEFEFFFEFEFEFFFDFFFFFCFEFFFDFFFFFDFDFFFEFFFFF8F8F4D9C3A7B07237A0
            4B00A45200A55304B67C40F9F6F2FDFFFFFEFFFFFEFFFFFEFDFEECE0D1AC671F
            A44E00A34E03B88550E9DDCBFEFFFEFEFFFFFDFEFEFEFFFFFEFFFEFDFFFEFFFE
            FFFEFFFEFDFFFFFEFFFEF3EFE8D5B89AB57844A4570D9F4D009F4A00A24900A1
            4E00A45C18BB8653E0C8AFF7F7F2FDFFFFFDFFFEFEFFFEFEFEFEFDFEFEFEFFFF
            FEFEFFFCFEFEFFFFFFFBFBF9DFCAB3B27136A14B00A45304B97C41F8F6F2FDFF
            FFFFFFFFFDFFFFFDFEFEEBE0D0AB671FA14700B77A41E9DAC7FDFEFDFDFFFFFE
            FFFEFEFEFEFDFEFEFDFEFFFEFFFEFFFFFFFDFFFFFCFFFFF2EEE6C6A780A35815
            9F4600A24F00A55300A55300A75400A45301A24D009A4700AB6528D5BDA1F7F6
            F3FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFEFFFFFEFEFEFFFEFEFFFFFFFBF9F7E0
            C6ACAE6726A14C02B67B40F8F6F0FDFFFFFFFFFFFEFFFDFCFEFDEBE0D1A75F1F
            A86423E0CDB6FBFBF9FCFFFFFEFFFFFFFFFFFEFEFFFEFEFFFEFFFFFFFEFFFEFF
            FEFDFFFFF7F6F3D3B79B9D5410A64C00A85600A45501A55301A55401A65400A4
            5302A65501A455009E4700AB642BE4CDB9FCFBF9FEFEFEFEFFFFFEFEFFFFFEFF
            FFFFFFFFFFFFFEFEFFFEFFFFFFFFFFF9F6F1D5B596A05513B57639F9F7F0FEFF
            FFFFFFFFFFFFFDFDFDFDEBDCCDA66329CEB28FF9F5F1FEFFFFFDFEFEFFFFFEFE
            FFFFFDFFFEFEFFFEFFFEFFFFFEFFFDFFFEFDFFFFEADCCDB2763F9F4600A45401
            A65400A55400A55302A75301A45400A55401A85401A75401A55301A14500C494
            66F1EBE0FEFFFFFCFEFEFCFFFFFEFEFFFFFEFEFEFFFEFEFFFFFFFFFFFEFEFEFF
            FFFFF5EEE5C19564B27334F7F4EFFFFFFFFFFFFFFEFFFFFEFCFDE6D9C5BC9768
            F2EAE0FFFFFFFFFFFFFEFFFEFEFFFFFFFFFFFEFEFEFEFEFEFFFFFFFEFFFFFCFF
            FFFCFDFBDCC4A7A4540BA64F00A55400A65301A55401A55401A45500A45301A6
            5400A65300A55402A554029E4900AC6A29E6D6C4FEFFFFFBFEFEFDFEFEFEFFFF
            FEFFFFFEFFFEFFFFFFFEFFFEFDFFFDFEFFFCFDFEFBEADDCAC19563F3EEE5FFFE
            FEFEFEFEFDFFFFFEFDFDEBE5DAE7DECFFAF9F6FEFFFFFEFFFFFFFFFDFFFFFEFF
            FFFFFEFFFFFEFFFFFFFFFFFDFFFEFDFFFFF9F7F1D2B18B9F4D00A35201A55400
            A45401A65500A55300A35600A35400A75301A55301A55303A45401A24E00A75B
            0DE0CBB0FEFFFEFEFFFFFEFEFFFFFEFFFEFFFFFEFFFFFEFEFFFEFEFEFEFFFEFC
            FFFEFDFFFFF9F6F3E3D7C5F2F2E8FFFEFEFFFFFFFFFFFFFEFEFEFDFDFEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
            FFF7F6F1CFAF8C9F4D00A65302A65400A35400A55400A75301A35601A35400A6
            5401A55301A45203A35302A24F01AA5B0DDFCAADFDFFFDFEFFFFFEFFFFFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFFFFFEFFFFFDFDFDFFFF
            FFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFEFEFFFDFFFFFBFCF8DBC19FA35407A65000A45500
            A35401A45400A65400A45502A65201A55502A45400A45400A35401A14B00AE66
            25E5D6C2FEFFFFFCFFFDFCFEFFFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
            FFFEFFFFEADAC9B17235A04900A45303A65202A55302A75500A85300A45400A5
            5400A45500A95600A554009D4500BF8B5CF1E6DBFCFFFFFCFDFCFEFFFEFFFFFF
            FFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFFFEFFFFFFF6F2ECCFAE8A9D500EA15002
            A45401A45402A35300A45401A55302A45200A65301A55301A24C00A85E18E0C9
            ACFBFAF8FDFFFFFEFFFEFFFEFEFFFEFFFDFFFEFDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFE
            FDFDFDFEFCFFFFF2EAE1C3946CA45210A35000A15200A35200A45302A35200A3
            5001A44F00A04F02A65816CDAC8FF6F1EDFFFFFFFFFEFFFEFEFEFFFEFFFFFEFF
            FEFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFEFEFEFEFFFDFFFFFFF2EEE7C7A47A
            A86220A35110A35107A24F05A45105A14F0AA15213B26D30D5BA99F7F4EFFFFE
            FFFFFEFEFFFEFFFCFFFEFDFFFEFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFEFEFF
            FEFEFFFFFEFFFDFDFFFDFFFFFFFBF8F7EADBC9CCA57EBC8750B47B3EB67C42BF
            8C57D1B18EF0E8DAFEFDFBFEFEFFFDFEFFFEFEFFFFFEFEFFFEFFFFFEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFDFFFEFEFEFEFFFDFFFEFEFEFFFFFEFFFFFEFDFFFF
            FFFEFDFEFEFDFDFCFBF7F6F4F8F8F5FDFCFBFCFEFCFBFFFEFEFEFFFFFEFFFFFF
            FEFFFFFEFEFFFFFEFFFEFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFE
            FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFFFFFFFF0000FFFFFFFFFFFF00007FFFFFFFFFFF000000000000
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
            00000000000000000000000000000000000000000000000000000000FFFFFFFF
            FFFF00002800000020000000400000000100180000000000000C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000FFFFFE0000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000FFFFFEFEFEFEFEFDFCFEFDFCFEFDFCFEFDFCFEFD
            FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFBFFFEFDFEFEFCFD
            FCFCFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFDFCFDFDFCFDFCFB
            FCFDFBFDFDFDFFFFFFFFFFFFFDFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFDFFFDFEFEFEFFFFFFF7F8F6DFCDB7E1CBB2E2CCB4E2CDB4E2CC
            B4E2CCB4E2CCB4E2CCB4E2CCB4E2CCB4E2CCB4E2CCB3E1CCB4DCCFBADECDB7E0
            CCB1E2CDB3E3CCB5E2CDB4E2CDB4E2CDB4E2CDB4E2CDB4E1CDB3E0CDB3E1CDB4
            E0CAAFE2D4BEFBFDFDFEFEFEFFFFFFEFEBE1A054099C46009F4B009F4B009E4A
            009E4A009E4A009E4A009E4A009E4A009F4C009D46009D4C03DFCBB4D7BD9F9D
            43009F4A009E4B009E4A009E4A009E4A009E4A009E4A009F4B00A04B00A14C00
            9C4300A96622F9FDF9FDFFFFFFFFFFF3ECE4A75F13A45204A75605A75605A655
            04A65504A65604A75504A55504A65504A65606A45003A55613F9F3ECEDE0CFA0
            4D02A75606A65704A65504A65504A65504A65504A65504A55604A55604A85705
            A34D04B26F2FFDFCFAFDFFFFFFFFFFF0ECE2A65B10A44F00A55301A55300A553
            00A55201A55301A45400A45401A55300A85302A15000A5560FF4EAE0E8D8C6A0
            4C00A55401A55400A55300A55300A55200A55200A55300A55300A55301A55401
            A24B00AE6E2DFAFDFAFFFFFFFFFFFFF3ECE0A155119E4A01A04F05A04E04A04E
            04A04D039F4E02A24D05A04D039F4E049F5006A04D00A7560EF4EAE1E9D8C8A1
            4B00A15004A15006A04D03A04E03A04E03A04E03A04E03A04E02A04E039F4E04
            9E4600A76828FBFEF9FFFFFFFFFFFEFCFBF9EADCCCE9DAC7EBDBC9EBDBC9EBDB
            C9EADBC9EADBC8ECDAC9EADBC9E9DAC7EADDCCBD8B5B9E4A08F5EDE2E9DBC89A
            3F00CDA580EDDDCDEBDAC7ECDBC9ECDBC9ECDBC9ECDBC9E9DBC8ECDBC7EBDBC9
            E9D9C5EDDFD2FDFDFFFFFFFFFEFEFFF9FAF8E7DBC9E7D8C6E7D9C7E7D9C6E8D8
            C7E8D9C7E8D8C7E8D9C6E8D8C4E7D7C4E7E1D2BA8A55A04B08F7EDE3E9DCC799
            4100C8A27DEADECFE7D8C4E7D9C7E7D8C7E7D8C7E7D9C6E7D8C6E5D9C6E9D9C8
            E6D7C3E8E0CEFDFEFBFFFFFFFFFFFFF0EAE0A052059B46009D4B009D4A009D49
            009D4A009D49009D49009D48009D4900A04B00A04A00A55710F4ECE1E8D9C6A2
            4B009E4E009C4A009D49009D49009D49009D49009D49009D49009C4A009E4B00
            9A4100A76520FBFCF9FFFFFFFFFFFFF3ECE3A75D12A45102A65603A65503A655
            02A55502A65502A55503A45502A45503A65605A55103A65711F4ECE2E7D9C7A2
            4C02A65604A65603A55502A65403A55502A65502A65402A65502A55502A65604
            A34E02B16F2EFAFCFBFEFFFFFFFFFFF3ECE3A75C10A45100A45503A55402A554
            01A55402A45401A55501A75804A85605A654049F4C00A25007F4EAE0E5D8C09C
            4500A54F00A55402A65704A65704A65501A65401A45401A55400A45401A55502
            A24D00B06E2CFBFCFAFEFFFFFFFFFFF3ECE3A65D10A35000A45501A55400A554
            00A55502A65603A354019E48009E4600A44F08A65818AC6B2FF3EEE5EADDCCA8
            6021A55A17A04C049E45009F4A00A65302A75603A55402A55301A55501A65503
            A24C00B06E2DFAFCFAFEFFFFFFFFFFF3ECE3A65C10A34F00A55301A55400A556
            03A65200A04600A15105B77B48D1AE8AE4D1BBF1E8DEF7F6F2FCFEFCFDFCFDF5
            F4F0EEE5D9E2CCB5CEA780B2723EA14C009D4800A65400A75603A45400A65502
            A24C00B06E2DFBFDFBFFFFFFFFFFFFF4ECE3A55C10A35100A55403A55703A14A
            00A0500AC39062E9DDCCFCFDFBFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFEFEFDFF
            FFFFFFFFFFFFFFFFFFFFFFFAF9F6E5D3C1B986529D4A03A14A00A75703A55601
            A24C00B16E2DFAFDFBFEFFFFFFFFFFF4ECE3A55C10A35100A656039E4500B273
            3AE6D6C4FFFFFFFFFFFFFEFFFFFBFCFBFBFAF9FDFCFDFFFFFFFFFFFFFFFFFFFF
            FFFFFEFCFCFCFBF8FCFCFAFEFFFFFFFFFFFFFFFFE0CAB4AD652A9E4600A85805
            A24D00B06E2EFBFDFAFEFFFFFFFFFFF3ECE2A45D10A651029D4700C2966AFAF8
            F5FFFFFFFEFDFBFEFCFDFFFFFEFEFEFDFFFFFFFDFEFCE9E1CFDCC5ADDDC6B4EE
            E6D8FFFFFFFFFFFFFEFEFDFEFFFEFCFDFDFCFDFDFFFFFFF5F0E8B7824E9C4600
            A44F01B06E2CFBFDFBFDFFFFFFFFFFF3ECE2A85E119E4200C6A077FFFFFFFEFF
            FFFCFDFBFDFFFEFFFFFFFCFEFDFFFFFFEAE2D4B77C4CA150019E4900A14900A1
            5309BF8B5DF3EEE3FFFFFFFEFEFDFDFEFFFEFFFEFBFAFAFFFFFFFAF9F7BE8958
            9C4000B37131FBFCFBFFFFFFFFFFFFF4EFE69F4E04BE8955FFFFFFFCFDFCFEFD
            FDFEFEFEFEFFFFFEFEFCFEFEFEEBE4D8A35E1EA14400A45402A75503A65503A4
            5301994100B06F3AF7F2ECFFFEFEFEFEFDFFFEFFFFFFFFFDFDFCFFFFFFFBFAF6
            B1703AA9621FFDFFFEFEFFFFFFFFFFEEE2D6AB7037F4F0E8FEFEFEFDFEFCFEFF
            FFFDFEFEFFFEFFFCFEFDFFFFFFBD88599D4200A85A05A55402A55301A45401A7
            5502A95A079C3F00CCA57FFFFFFFFBFCFCFDFFFFFFFFFEFEFFFFFDFDFCFFFFFF
            EADECDB07131FAF7F4FFFFFFFFFFFFEDE4D9DED0B9FFFFFFFEFEFCFFFFFEFFFF
            FFFEFFFFFEFEFEFDFFFFF6F3ECA9621AA44F01A55402A65301A45500A45400A6
            5301A655049F4A02B47536FEFFFEFDFEFEFFFEFFFEFFFFFEFEFFFEFFFFFCFEFC
            FFFFFFDDCAB0F4F1E9FFFFFFFFFFFFFEFEFFFFFFFFFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFEFEFEFFFFFFF2EEE5A85F16A55101A45501A55400A45500A45401A5
            5301A35404A14C02B57330FCFEFCFEFFFEFEFEFFFFFFFFFFFFFFFEFEFEFFFFFF
            FFFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFDFEFEFEFEFCB6793E9F4800A65705A55401A75401A65301A4
            5400A95A049C4200C39164FFFFFFFAFDFBFEFFFEFEFFFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFFFFFDFDFCFFFFFFE0CFB99C4908A34E00A55703A65704A55604A7
            5503A04800A35514EDE3D4FFFFFFFEFEFDFFFEFFFDFEFFFEFFFFFFFFFFFFFFFF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFFFFFEFEFDFEFBFFFFFFDAC1A8A45A169D46009D46009D46009B
            4400AC6529E3D2BFFFFFFFFEFEFDFDFFFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFFFEFEFFFEFEFEFEFEFEFCFFFFFFF3ECE2D5B494C69C6EC89D71D7
            BC9EF8F6EFFFFFFFFEFDFDFEFEFEFEFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFCFBFEFCFBFEFCFBFD
            FCFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000FFFFFFFF7FFFFFFF000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000FFFFFFFF2800000010000000200000000100080000000000
            000100000000000000000000000100000000000000000000A4520200A04A0000
            F0E6DC00F6F0E900BD845400D4B29000C28E5900A85D1500CDA47E00A04C0300
            A4500000F9F8F400E0C7B000D3B08E00D4B08E00F2EAE200D7B69600F9FAF700
            AD652000CFA98100FBFAF700AB621800D8BC9E00CB9F7400D1A88400C28E5A00
            FCFCFA00E2CBB600C7976A00C08A5500F9F8F500CBA07A00D8BA9C00D4B08F00
            AE6B3100D0A68200B3723600F2EAE300F8F4F000FEFEFD00A35204009A3F0000
            E0C9B400C18E6300FBFAF800CB9F7500FCFAF8009B4200009C420000F9F6F300
            AE6A2C00AA5E1400D3B495009D4500009E450000FDFCFB00EFE5D900FEFCFB00
            B06F37009D480000BE874E00DBBDA500D9BA9D00FDFEFE00FEFEFE00FFFEFE00
            A04B0000A4550500BD854C00912E0000DFC8B000F5EFE700FEFCFC00BD874F00
            93310000CEA78100BE874F0094310000C89A6C00D9C0A60095340000AB621B00
            97370000F4EDE500C28F5A00983A0000993D0000D7B79700C18D5800C28D5800
            AC6524009C4300009D430000C08F5B00C99C7000D3AF8D00F6F3EE009D460000
            D7B59500C18B5600B06A2700D6B79800A14C0000D1AD8B00BE865400BB834C00
            F6F1EC00FCFBF900A34F0000AB621D00912F0000F6F3EF00FDFDFC00DABFA300
            C4956400BD884F00A4510300AC642000FBF9F700A85E1000C08E5700CA9B6C00
            CFA78400A85B0800FEFFFF00FFFFFF00AF672000D2B08C00983B0000FEFDFD00
            F3ECE300C89B6D00C18E5800A85B0900D8BAA200F9F8F3009D440000F4EEE600
            BC885900CFA680009E4700000000000000000000000000000000000000000000
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
            000000007D0000000000000000000000000000007D7E7E7E7E7E7E7E7E7E7E7E
            7E7E7E7D70736407591A05358069555A071E4F12833C53818157468C7A6F5756
            815129880C660E060F118B242E2C63220660211B615E454D3D852319183B794A
            746A73158A443767362A4E4C844B2A37675C340C48160102135F3E1003871D52
            4375651F04780A7B277E7E407D7E7E6B208D7F125408477E7E6C09765B68497E
            7E3F6E0C39507E774272300B6D891C422F7E1754717E823A7E145D867C31587E
            38287E717E427E424226336236256B41417E427E7E7E7E7E417E320D2B2D7E41
            7E7E7E7E7E7E7E7E7E427E7E7E7E427E7E7E7E7EFFFF00007FFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000}
          Stretch = True
          Visible = False
        end
        object Panel110: TPanel
          Left = 0
          Top = 0
          Width = 585
          Height = 827
          Align = alLeft
          Caption = 'pp'
          TabOrder = 0
          object Label2: TLabel
            Left = 32
            Top = 40
            Width = 230
            Height = 23
            Caption = #51064#54252#52992#50612'  : dha    /  dh4530'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 32
            Top = 77
            Width = 228
            Height = 23
            Caption = #51064#54252#52992#50612'  : dha1  /  dh4530'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 32
            Top = 116
            Width = 295
            Height = 23
            Caption = #51064#53552#45367#46321#44592' :  daehwa1  / dh4530TT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 32
            Top = 156
            Width = 290
            Height = 23
            Caption = #54620#44397#47932#44032#54801#54924' :  dhapp  / dh4530TT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 32
            Top = 195
            Width = 211
            Height = 23
            Caption = #49436#48260#48169'   :  '#51060#47492' / 5252733'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl36: TLabel
            Left = 32
            Top = 233
            Width = 420
            Height = 46
            Caption = 
              #48512#46041#49328'114 (REPS'#49556#47336#49496'/'#48512#46041#49328#53685#44228') : dhapp / 2345'#13#10'                         ' +
              '                         (~2019.08.23)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxClock1: TRxClock
            Left = 77
            Top = 340
            Width = 185
            Height = 41
            AlarmEnabled = True
            AlarmHour = 17
            AlarmMinute = 30
            OnAlarm = RxClock1Alarm
          end
          object RxClock3: TRxClock
            Left = 308
            Top = 620
            Width = 185
            Height = 41
            AlarmEnabled = True
            AlarmHour = 11
            OnAlarm = RxClock3Alarm
          end
        end
        object Memo1: TMemo
          Left = 680
          Top = 113
          Width = 318
          Height = 208
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
          Visible = False
        end
      end
    end
    object Panel3: TPanel
      Left = 1233
      Top = 1
      Width = 336
      Height = 851
      Align = alClient
      BevelOuter = bvNone
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 753
        Width = 336
        Height = 98
        Align = alBottom
        TabOrder = 0
        object btn_hide: TcxButton
          Left = 174
          Top = 40
          Width = 153
          Height = 25
          Caption = #52285' '#45236#47532#44592
          Colors.Default = 16776176
          TabOrder = 0
          OnClick = btn_hideClick
        end
        object cxButton1: TcxButton
          Left = 15
          Top = 11
          Width = 153
          Height = 25
          Caption = #52636#53748#44540' '#54869#51064
          Colors.Default = 16776176
          TabOrder = 1
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 174
          Top = 9
          Width = 153
          Height = 25
          Caption = #50629#47924#51068#51648
          Colors.Default = 16776176
          TabOrder = 2
          Visible = False
          OnClick = cxButton2Click
        end
        object cxButton3: TcxButton
          Left = 15
          Top = 40
          Width = 153
          Height = 25
          Caption = #53685' '#44228
          Colors.Default = 16776176
          TabOrder = 3
          OnClick = cxButton3Click
        end
        object cxButton5: TcxButton
          Left = 174
          Top = 40
          Width = 153
          Height = 25
          Caption = #44048#51221#50896#51204#47168
          Colors.Default = 16776176
          TabOrder = 4
          Visible = False
          OnClick = cxButton5Click
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 336
        Height = 39
        Align = alTop
        TabOrder = 1
        object Panel7: TPanel
          Left = 5
          Top = 10
          Width = 49
          Height = 22
          Caption = #51077#49892
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
        end
        object Panel8: TPanel
          Left = 74
          Top = 10
          Width = 49
          Height = 22
          Caption = #52636#51109
          Color = 16747718
          ParentBackground = False
          TabOrder = 1
        end
        object Panel9: TPanel
          Left = 136
          Top = 10
          Width = 49
          Height = 22
          Caption = 'NPL'
          Color = 10813439
          ParentBackground = False
          TabOrder = 2
        end
        object Panel12: TPanel
          Left = 196
          Top = 10
          Width = 49
          Height = 22
          Caption = #45796#47480#50857#47924
          Color = 16759807
          ParentBackground = False
          TabOrder = 3
        end
        object Panel10: TPanel
          Left = 260
          Top = 10
          Width = 49
          Height = 22
          Caption = #53748#44540
          Color = clScrollBar
          ParentBackground = False
          TabOrder = 4
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 39
        Width = 336
        Height = 714
        Align = alClient
        TabOrder = 2
        object cxPageControl2: TcxPageControl
          Left = 1
          Top = 1
          Width = 334
          Height = 712
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxTabSheet5
          Properties.CustomButtons.Buttons = <>
          Properties.MultiLine = True
          Properties.Style = 8
          ClientRectBottom = 712
          ClientRectRight = 334
          ClientRectTop = 24
          object cxTabSheet5: TcxTabSheet
            Caption = #44592#48376#51221#48372
            ImageIndex = 0
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 334
              Height = 192
              Align = alTop
              TabOrder = 0
              object Image2: TImage
                Left = 8
                Top = 2
                Width = 121
                Height = 160
                Stretch = True
              end
              object edit_search: TcxTextEdit
                Left = 130
                Top = 1
                AutoSize = False
                Properties.ValidateOnEnter = False
                TabOrder = 0
                OnKeyPress = edit_searchKeyPress
                Height = 38
                Width = 148
              end
              object cxLabel1: TcxLabel
                Left = 130
                Top = 36
                AutoSize = False
                Caption = #51060'  '#47492
                ParentColor = False
                Style.BorderColor = clHighlight
                Style.BorderStyle = ebsSingle
                Style.Color = clGradientActiveCaption
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Height = 34
                Width = 65
                AnchorX = 163
                AnchorY = 53
              end
              object btn_Find: TcxButton
                Left = 276
                Top = 1
                Width = 47
                Height = 36
                Caption = 'Search'
                Colors.Default = clGradientActiveCaption
                TabOrder = 1
                OnClick = btn_FindClick
              end
              object cxLabel2: TcxLabel
                Left = 130
                Top = 67
                AutoSize = False
                Caption = #51649'  '#52293
                ParentColor = False
                Style.BorderColor = clHighlight
                Style.BorderStyle = ebsSingle
                Style.Color = clGradientActiveCaption
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Height = 34
                Width = 65
                AnchorX = 163
                AnchorY = 84
              end
              object cxLabel3: TcxLabel
                Left = 130
                Top = 98
                AutoSize = False
                Caption = #51204#54868#48264#54840
                ParentColor = False
                Style.BorderColor = clHighlight
                Style.BorderStyle = ebsSingle
                Style.Color = clGradientActiveCaption
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Height = 34
                Width = 65
                AnchorX = 163
                AnchorY = 115
              end
              object cxLabel4: TcxLabel
                Left = 130
                Top = 129
                AutoSize = False
                Caption = #54648#46300#54256#48264#54840
                ParentColor = False
                Style.BorderColor = clHighlight
                Style.BorderStyle = ebsSingle
                Style.Color = clGradientActiveCaption
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Height = 34
                Width = 65
                AnchorX = 163
                AnchorY = 146
              end
              object edit_name: TcxTextEdit
                Left = 192
                Top = 36
                AutoSize = False
                Properties.ValidateOnEnter = False
                TabOrder = 6
                Height = 34
                Width = 131
              end
              object edit_grade: TcxTextEdit
                Left = 192
                Top = 67
                AutoSize = False
                Properties.ValidateOnEnter = False
                TabOrder = 7
                Height = 34
                Width = 131
              end
              object edit_Dnum: TcxTextEdit
                Left = 192
                Top = 98
                AutoSize = False
                Properties.ValidateOnEnter = False
                TabOrder = 8
                Height = 34
                Width = 106
              end
              object edit_Pnum: TcxTextEdit
                Left = 192
                Top = 129
                AutoSize = False
                Properties.ValidateOnEnter = False
                TabOrder = 9
                Height = 34
                Width = 106
              end
              object cxButton7: TcxButton
                Left = 297
                Top = 98
                Width = 27
                Height = 33
                Caption = 'Call'
                Colors.Default = clGradientActiveCaption
                TabOrder = 10
                OnClick = cxButton7Click
              end
              object cxButton8: TcxButton
                Left = 297
                Top = 130
                Width = 27
                Height = 32
                Caption = 'Call'
                Colors.Default = clGradientActiveCaption
                TabOrder = 11
                OnClick = cxButton8Click
              end
              object btn_Print: TcxButton
                Left = 130
                Top = 160
                Width = 194
                Height = 26
                Caption = 'Print'
                Colors.Default = clGradientActiveCaption
                TabOrder = 12
                OnClick = btn_PrintClick
              end
              object LGUBaseOpenApi1: TLGUBaseOpenApi
                Left = 330
                Top = 184
                Width = 17
                Height = 21
                TabOrder = 13
                OnSendRingEvent = LGUBaseOpenApi1SendRingEvent
                OnSendLoginResultEvent = LGUBaseOpenApi1SendLoginResultEvent
                ControlData = {00000100C20100002C02000000000000}
              end
            end
            object Panel15: TPanel
              Left = 0
              Top = 192
              Width = 334
              Height = 496
              Align = alClient
              TabOrder = 1
              object cxPageControl3: TcxPageControl
                Left = 1
                Top = 1
                Width = 332
                Height = 494
                Align = alClient
                TabOrder = 0
                Properties.ActivePage = cxTabSheet8
                Properties.CustomButtons.Buttons = <>
                Properties.Style = 8
                ClientRectBottom = 494
                ClientRectRight = 332
                ClientRectTop = 24
                object cxTabSheet7: TcxTabSheet
                  Caption = #51649#50896#52636#51109#54788#54889
                  ImageIndex = 0
                  object Grid_TodayCul: TAdvStringGrid
                    Left = 0
                    Top = 30
                    Width = 332
                    Height = 440
                    Cursor = crDefault
                    Align = alClient
                    DrawingStyle = gdsClassic
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
                    ScrollBars = ssBoth
                    TabOrder = 0
                    GridLineColor = 15527152
                    GridFixedLineColor = 13947601
                    HoverRowCells = [hcNormal, hcSelected]
                    OnGetAlignment = Grid_TodayCulGetAlignment
                    ActiveCellFont.Charset = DEFAULT_CHARSET
                    ActiveCellFont.Color = clWindowText
                    ActiveCellFont.Height = -11
                    ActiveCellFont.Name = 'Tahoma'
                    ActiveCellFont.Style = [fsBold]
                    ActiveCellColor = 16575452
                    ActiveCellColorTo = 16571329
                    Bands.Active = True
                    Bands.PrimaryColor = clInactiveBorder
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
                    ScrollBarAlways = saBoth
                    ScrollColor = clMenuBar
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
                  object Panel34: TPanel
                    Left = 0
                    Top = 0
                    Width = 332
                    Height = 30
                    Align = alTop
                    TabOrder = 1
                    object btn_Culrefresh: TcxButton
                      Left = 1
                      Top = 1
                      Width = 330
                      Height = 28
                      Align = alClient
                      Caption = #52636#51109#51221#48372' '#49352#47196#44256#52840
                      Colors.Default = clGradientActiveCaption
                      TabOrder = 0
                      OnClick = btn_CulrefreshClick
                    end
                  end
                end
                object cxTabSheet8: TcxTabSheet
                  Caption = #52376#47532#49345#53468
                  ImageIndex = 1
                  object Grid_Work: TAdvStringGrid
                    Left = 0
                    Top = 32
                    Width = 332
                    Height = 438
                    Cursor = crDefault
                    Align = alClient
                    DrawingStyle = gdsClassic
                    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goRowSelect]
                    PopupMenu = PopupMenu2
                    ScrollBars = ssBoth
                    TabOrder = 0
                    OnSelectCell = Grid_WorkSelectCell
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
                    Bands.PrimaryColor = clInactiveBorder
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
                    ScrollBarAlways = saBoth
                    ScrollColor = clMenuBar
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
                  object Panel37: TPanel
                    Left = 0
                    Top = 0
                    Width = 332
                    Height = 32
                    Align = alTop
                    TabOrder = 1
                    object btn_docrefresh: TcxButton
                      Left = 1
                      Top = 1
                      Width = 330
                      Height = 30
                      Align = alClient
                      Caption = #44048#51221#49436' '#49345#53468' '#49352#47196#44256#52840
                      Colors.Default = clGradientActiveCaption
                      TabOrder = 0
                      OnClick = btn_docrefreshClick
                    end
                  end
                end
              end
            end
          end
          object cxTabSheet6: TcxTabSheet
            Caption = #51068' '#51221
            ImageIndex = 1
            object Grid_cul: TAdvStringGrid
              Left = 0
              Top = 41
              Width = 334
              Height = 647
              Cursor = crDefault
              Align = alClient
              DrawingStyle = gdsClassic
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #44404#47548#52404
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
              ParentFont = False
              PopupMenu = PopupMenu1
              ScrollBars = ssBoth
              TabOrder = 0
              GridLineColor = 15527152
              GridFixedLineColor = 13947601
              HoverRowCells = [hcNormal, hcSelected]
              OnGetAlignment = Grid_culGetAlignment
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ActiveCellColor = 16575452
              ActiveCellColorTo = 16571329
              Bands.Active = True
              Bands.PrimaryColor = clWhite
              Bands.SecondaryColor = clInactiveCaption
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
            object Panel20: TPanel
              Left = 0
              Top = 0
              Width = 334
              Height = 41
              Align = alTop
              TabOrder = 1
              object culjangdate: TDateTimePicker
                Left = 16
                Top = 8
                Width = 186
                Height = 27
                Date = 42485.472108865740000000
                Time = 42485.472108865740000000
                TabOrder = 0
              end
              object btn_serchcul: TButton
                Left = 207
                Top = 8
                Width = 75
                Height = 29
                Caption = #44160#49353
                TabOrder = 1
                OnClick = btn_serchculClick
              end
            end
          end
        end
        object Panel33: TPanel
          Left = 59
          Top = 169
          Width = 222
          Height = 105
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object cxLabel5: TcxLabel
            Left = 4
            Top = 34
            AutoSize = False
            Caption = #52636#51109#51068#51088
            Style.BorderColor = clHighlight
            Style.BorderStyle = ebsSingle
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 30
            Width = 62
            AnchorX = 35
            AnchorY = 49
          end
          object cxButton4: TcxButton
            Left = 197
            Top = 5
            Width = 20
            Height = 20
            Caption = 'X'
            Colors.Pressed = clRed
            Colors.PressedText = clWhite
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton4Click
          end
          object btn_saveCul: TcxButton
            Left = 142
            Top = 72
            Width = 75
            Height = 25
            Caption = #51200' '#51109
            Colors.Default = clGradientActiveCaption
            TabOrder = 2
            OnClick = btn_saveCulClick
          end
          object edit_culdate: TcxDateEdit
            Left = 63
            Top = 34
            AutoSize = False
            TabOrder = 3
            Height = 30
            Width = 153
          end
          object Edit1: TEdit
            Left = 48
            Top = 152
            Width = 121
            Height = 21
            TabOrder = 4
            Text = 'Edit1'
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1225
      Top = 1
      Width = 8
      Height = 851
      HotZoneClassName = 'TcxMediaPlayer9Style'
      Control = cxPageControl1
      Color = clMoneyGreen
      ParentColor = False
    end
    object Panel22: TPanel
      Left = 1270
      Top = 343
      Width = 208
      Height = 192
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      Visible = False
      object Label44: TLabel
        Left = 129
        Top = 51
        Width = 6
        Height = 11
        Caption = '~'
      end
      object Label45: TLabel
        Left = 34
        Top = 210
        Width = 48
        Height = 11
        Caption = #52636' '#51109' '#51648
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edit_where: TEdit
        Left = 93
        Top = 199
        Width = 157
        Height = 19
        TabOrder = 2
        Visible = False
      end
      object edit_start: TEdit
        Left = 63
        Top = 44
        Width = 56
        Height = 19
        TabOrder = 0
      end
      object edit_end: TEdit
        Left = 143
        Top = 44
        Width = 54
        Height = 19
        TabOrder = 1
      end
      object Button2: TButton
        Left = 124
        Top = 160
        Width = 75
        Height = 25
        Caption = #51200#51109
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object cxLabel6: TcxLabel
        Left = 3
        Top = 43
        AutoSize = False
        Caption = #51068#51221#49884#44036
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 30
        Width = 62
        AnchorX = 34
        AnchorY = 58
      end
      object cxLabel7: TcxLabel
        Left = 3
        Top = 70
        AutoSize = False
        Caption = #44396'  '#48516
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 30
        Width = 62
        AnchorX = 34
        AnchorY = 85
      end
      object cxLabel8: TcxLabel
        Left = 3
        Top = 97
        AutoSize = False
        Caption = #49345#49464#45236#50669
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 59
        Width = 62
        AnchorX = 34
        AnchorY = 127
      end
      object combo_Gubun: TcxComboBox
        Left = 62
        Top = 70
        AutoSize = False
        Properties.Items.Strings = (
          #52636'     '#51109
          #51088#47532#50808#44540#47924
          #44592'     '#53440
          #55092'     '#44032
          '  N P L')
        TabOrder = 7
        Text = #44396#48516#51012' '#49440#53469#54616#49464#50836
        Height = 29
        Width = 136
      end
      object memo_bigo: TcxMemo
        Left = 62
        Top = 96
        TabOrder = 8
        Height = 60
        Width = 137
      end
      object btn_dlgclose: TcxButton
        Left = 162
        Top = 11
        Width = 31
        Height = 22
        Caption = 'X'
        Colors.Default = 5856759
        Colors.Pressed = clRed
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_dlgcloseClick
      end
    end
  end
  object AdoCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=daehwa0815!;Persist Security Info=T' +
      'rue;User ID=dh;Initial Catalog=apworksdw;Data Source=10.40.254.1' +
      '0'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 1406
    Top = 356
  end
  object Qry: TADOQuery
    Connection = AdoCon
    Parameters = <>
    Left = 1422
    Top = 420
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 1326
    Top = 140
  end
  object pictime: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = pictimeTimer
    Left = 1409
    Top = 586
  end
  object PopupMenu2: TPopupMenu
    Left = 1253
    Top = 281
    object N2: TMenuItem
      Caption = #52636#51109#51068' '#51077#47141
      OnClick = N2Click
    end
  end
  object PopupMenu1: TPopupMenu
    MenuAnimation = [maTopToBottom]
    Left = 1200
    Top = 240
    object N1: TMenuItem
      Caption = #51077'   '#47141
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #49325'   '#51228
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #44592'   '#53440
      OnClick = N5Click
    end
  end
  object Cultimer: TTimer
    Interval = 100000
    OnTimer = CultimerTimer
    Left = 1409
    Top = 536
  end
  object MSNPopUp1: TMSNPopUp
    Text = 'text'
    URL = 'http://www.url.com/'
    IconLeft = 8
    IconTop = 8
    Width = 148
    Height = 121
    GradientColor1 = clGradientActiveCaption
    GradientColor2 = clWhite
    ScrollSpeed = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    HoverFont.Charset = DEFAULT_CHARSET
    HoverFont.Color = clBlue
    HoverFont.Height = -11
    HoverFont.Name = 'Tahoma'
    HoverFont.Style = [fsUnderline]
    Title = 'Call'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = '@Arial Unicode MS'
    TitleFont.Style = [fsBold]
    Options = [msnAutoOpenURL, msnCascadePopups, msnAllowScroll, msnAllowHyperlink, msnAllowDuplicate]
    TextAlignment = taCenter
    TextCursor = crDefault
    PopupMarge = 1
    PopupStartX = 16
    PopupStartY = 2
    DefaultMonitor = dmMainForm
    Left = 1342
    Top = 202
  end
  object PrintDialog1: TPrintDialog
    Left = 1401
    Top = 296
  end
  object SEATTime: TTimer
    Interval = 300000
    OnTimer = SEATTimeTimer
    Left = 1390
    Top = 646
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 600000
    OnTimer = Timer1Timer
    Left = 1382
    Top = 254
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '10.40.0.197'
    Port = 2150
    OnRead = ClientSocket1Read
    Left = 1377
    Top = 708
  end
  object PopupMenu3: TPopupMenu
    Left = 1261
    Top = 473
    object MenuItem1: TMenuItem
      Caption = #54840#52636#47928#51088#51204#49569
      OnClick = MenuItem1Click
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = tmr1Timer
    Left = 1417
    Top = 476
  end
  object il2: TImageList
    Height = 24
    ShareImages = True
    Width = 24
    Left = 1436
    Top = 96
  end
end
