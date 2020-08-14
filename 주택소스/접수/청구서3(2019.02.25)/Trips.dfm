object tripsfrm: Ttripsfrm
  Left = 672
  Top = 323
  BorderStyle = bsDialog
  Caption = #50668#48708#44032#51256#50724#44592
  ClientHeight = 374
  ClientWidth = 695
  Color = clWhite
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 8
    Top = 224
    Width = 673
    Height = 2
  end
  object Shape2: TShape
    Left = 320
    Top = 226
    Width = 2
    Height = 151
  end
  object Shape3: TShape
    Left = 347
    Top = 345
    Width = 311
    Height = 1
    Pen.Style = psDot
  end
  object RbPanel3: TRbPanel
    Left = 0
    Top = 0
    Width = 695
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
    TabOrder = 2
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
      Width = 691
      Height = 10
      Align = alBottom
      Pen.Color = clWhite
      Shape = stSquare
    end
    object Shape6: TShape
      Left = 2
      Top = 2
      Width = 691
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
      Left = 683
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
      Width = 691
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
        Left = 681
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
        Width = 671
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
        Caption = '   '#50668#48708#44032#51256#50724#44592
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
      Width = 691
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
    end
  end
  object cxButton1: TcxButton
    Left = 336
    Top = 344
    Width = 110
    Height = 21
    Caption = #52636#51109#48708' '#44228#49328
    TabOrder = 5
    OnClick = cxButton1Click
    Colors.Normal = 15921906
    Colors.Disabled = clWhite
  end
  object cxButton2: TcxButton
    Left = 452
    Top = 344
    Width = 110
    Height = 21
    Caption = #45936#51060#53552#44032#51256#44032#44592
    TabOrder = 3
    OnClick = cxButton2Click
    Colors.Normal = 15921906
    Colors.Disabled = clWhite
  end
  object cxButton3: TcxButton
    Left = 568
    Top = 344
    Width = 110
    Height = 21
    Caption = #45803#44592
    TabOrder = 4
    OnClick = cxButton3Click
    Colors.Normal = 15921906
    Colors.Disabled = clWhite
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 52
    Width = 673
    Height = 78
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TabStop = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_Inventory_Trip_Info1
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
      object cxGrid1DBTableView1REG: TcxGridDBColumn
        DataBinding.FieldName = 'REG'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 56
      end
      object cxGrid1DBTableView1EUB: TcxGridDBColumn
        DataBinding.FieldName = 'EUB'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 54
      end
      object cxGrid1DBTableView1BUN1: TcxGridDBColumn
        Caption = #48264#51648'1'
        DataBinding.FieldName = 'BUN1'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 53
      end
      object cxGrid1DBTableView1BUN2: TcxGridDBColumn
        Caption = #48264#51648'2'
        DataBinding.FieldName = 'BUN2'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 64
      end
      object cxGrid1DBTableView1addr: TcxGridDBColumn
        Caption = #52636#51109#51648#47749
        DataBinding.FieldName = 'addr'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 240
      end
      object cxGrid1DBTableView1totalap: TcxGridDBColumn
        Caption = '1'#51068' '#52636#51109#48708
        DataBinding.FieldName = 'totalap'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 109
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 136
    Caption = ' '#52636#51109#48708' '#53076#46300' '
    TabOrder = 7
    Height = 74
    Width = 673
    object cxLabel24: TcxLabel
      Left = 20
      Top = 19
      AutoSize = False
      Caption = #44368' '#53685' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 20
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TransAP'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 1
      Height = 26
      Width = 100
    end
    object cxLabel1: TcxLabel
      Left = 128
      Top = 19
      AutoSize = False
      Caption = #54788#51648#44368#53685#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 128
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'HyunJiTransAP'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 3
      Height = 26
      Width = 100
    end
    object cxLabel2: TcxLabel
      Left = 237
      Top = 19
      AutoSize = False
      Caption = #51068' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxLabel7: TcxLabel
      Left = 346
      Top = 19
      AutoSize = False
      Caption = #49885' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 237
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'ILBIAP'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 6
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 346
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SikBiAP'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 7
      Height = 26
      Width = 100
    end
    object cxLabel8: TcxLabel
      Left = 455
      Top = 19
      AutoSize = False
      Caption = #49689' '#48149' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxLabel9: TcxLabel
      Left = 564
      Top = 19
      AutoSize = False
      Caption = #54633' '#44228
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Left = 455
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SukBakBiAP'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 10
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit
      Left = 564
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TOTALAP'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 11
      Height = 26
      Width = 100
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 768
    Top = 139
    Caption = ' '#51649#50896' '#52636#51109#48708' '#53076#46300' '
    TabOrder = 8
    Visible = False
    Height = 74
    Width = 673
    object cxLabel10: TcxLabel
      Left = 20
      Top = 19
      AutoSize = False
      Caption = #44368' '#53685' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit
      Left = 20
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'Trans'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 1
      Height = 26
      Width = 100
    end
    object cxLabel11: TcxLabel
      Left = 128
      Top = 19
      AutoSize = False
      Caption = #54788#51648#44368#53685#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit
      Left = 128
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'HyunJiTrans'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 3
      Height = 26
      Width = 100
    end
    object cxLabel12: TcxLabel
      Left = 237
      Top = 19
      AutoSize = False
      Caption = #51068' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxLabel13: TcxLabel
      Left = 346
      Top = 19
      AutoSize = False
      Caption = #49885' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit
      Left = 237
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'ILBI'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 6
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit
      Left = 346
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SikBi'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 7
      Height = 26
      Width = 100
    end
    object cxLabel14: TcxLabel
      Left = 455
      Top = 19
      AutoSize = False
      Caption = #49689' '#48149' '#48708
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxLabel15: TcxLabel
      Left = 564
      Top = 19
      AutoSize = False
      Caption = #54633' '#44228
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit11: TcxDBCurrencyEdit
      Left = 455
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'SukBakBi'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 10
      Height = 26
      Width = 100
    end
    object cxDBCurrencyEdit12: TcxDBCurrencyEdit
      Left = 564
      Top = 42
      MoveEnter = True
      AutoSize = False
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS_Inventory_Trip_Info1
      Enabled = False
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = ',0.;-,0.'
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 11
      Height = 26
      Width = 100
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 32
    Top = 241
    Caption = ' '#52636#51109#45236#50669' '
    TabOrder = 0
    Height = 112
    Width = 257
    object cxLabel3: TcxLabel
      Left = 24
      Top = 19
      AutoSize = False
      Caption = #51064#50896
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 23
      Width = 105
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 43
      AutoSize = False
      Caption = #51068#49688
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 23
      Width = 105
    end
    object apnum: TcxComboBox
      Left = 126
      Top = 19
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 11
      Properties.Items.Strings = (
        '0'#47749
        '1'#47749
        '2'#47749
        '3'#47749
        '4'#47749
        '5'#47749
        '6'#47749
        '7'#47749
        '8'#47749
        '9'#47749
        '10'#47749)
      Properties.OnChange = apnumPropertiesChange
      TabOrder = 0
      Text = '0'#47749
      Height = 23
      Width = 121
    end
    object apday: TcxComboBox
      Left = 126
      Top = 43
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        #45817#51068
        '1'#48149'2'#51068
        '2'#48149'3'#51068
        '3'#48149'4'#51068
        '4'#48149'5'#51068
        '5'#48149'6'#51068
        '6'#48149'7'#51068
        '7'#48149'8'#51068
        '8'#48149'9'#51068
        '9'#48149'10'#51068)
      Properties.OnChange = apdayPropertiesChange
      TabOrder = 1
      Text = #45817#51068
      Height = 23
      Width = 121
    end
    object cxLabel19: TcxLabel
      Left = 24
      Top = 67
      AutoSize = False
      Caption = #54943#49688
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 23
      Width = 105
    end
    object HSU: TcxComboBox
      Left = -98
      Top = 35
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '1'#54924
        '2'#54924
        '3'#54924
        '4'#54924
        '5'#54924
        '6'#54924
        '7'#54924)
      Properties.OnChange = HSUPropertiesChange
      TabOrder = 3
      Text = '1'#54924
      Visible = False
      Height = 23
      Width = 121
    end
    object cxhsu: TcxTextEdit
      Left = 127
      Top = 67
      DragCursor = crDefault
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ImeName = 'Microsoft IME 2003'
      Properties.OnChange = cxhsuPropertiesChange
      Style.Font.Charset = HANGEUL_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = #44404#47548#52404
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = '1'
      OnKeyPress = cxhsuKeyPress
      Width = 120
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 24
    Top = 417
    Caption = ' '#51649#50896' '#52636#51109#45236#50669' '
    TabOrder = 1
    Visible = False
    Height = 184
    Width = 649
    object cxLabel5: TcxLabel
      Left = 24
      Top = 34
      AutoSize = False
      Caption = #51064#50896
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 23
      Width = 105
    end
    object cxLabel6: TcxLabel
      Left = 24
      Top = 58
      AutoSize = False
      Caption = #51068#49688
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 23
      Width = 105
    end
    object jiknum: TcxComboBox
      Left = 126
      Top = 34
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 11
      Properties.Items.Strings = (
        '0'#47749
        '1'#47749
        '2'#47749
        '3'#47749
        '4'#47749
        '5'#47749
        '6'#47749
        '7'#47749
        '8'#47749
        '9'#47749
        '10'#47749)
      TabOrder = 0
      Text = '0'#47749
      Height = 23
      Width = 121
    end
    object jikday: TcxComboBox
      Left = 126
      Top = 58
      AutoSize = False
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        #45817#51068
        '1'#48149'2'#51068
        '2'#48149'3'#51068
        '3'#48149'4'#51068
        '4'#48149'5'#51068
        '5'#48149'6'#51068
        '6'#48149'7'#51068
        '7'#48149'8'#51068
        '8'#48149'9'#51068
        '9'#48149'10'#51068)
      TabOrder = 1
      Text = #45817#51068
      Height = 23
      Width = 121
    end
  end
  object cxLabel16: TcxLabel
    Left = 357
    Top = 276
    AutoSize = False
    Caption = ' '#52636#51109#48708#54633
    ParentColor = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Style.BorderStyle = ebsUltraFlat
    Style.Color = 15589586
    Height = 26
    Width = 123
  end
  object cxLabel17: TcxLabel
    Left = 781
    Top = 228
    AutoSize = False
    Caption = #51649#50896' '#52636#51109#48708#54633
    ParentColor = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Style.BorderStyle = ebsUltraFlat
    Style.Color = 15589586
    Visible = False
    Height = 26
    Width = 123
  end
  object cxLabel18: TcxLabel
    Left = 789
    Top = 276
    AutoSize = False
    Caption = #51204#52404' '#52636#51109#48708#54633
    ParentColor = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Style.BorderStyle = ebsUltraFlat
    Style.Color = 15589586
    Visible = False
    Height = 26
    Width = 123
  end
  object cxCurrencyEdit1: TcxCurrencyEdit
    Left = 477
    Top = 276
    TabStop = False
    AutoSize = False
    Enabled = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    StyleDisabled.TextColor = clBlack
    TabOrder = 12
    Height = 26
    Width = 169
  end
  object cxCurrencyEdit2: TcxCurrencyEdit
    Left = 845
    Top = 228
    TabStop = False
    AutoSize = False
    Enabled = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    StyleDisabled.TextColor = clBlack
    TabOrder = 13
    Visible = False
    Height = 26
    Width = 169
  end
  object cxCurrencyEdit3: TcxCurrencyEdit
    Left = 845
    Top = 276
    TabStop = False
    AutoSize = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    TabOrder = 14
    Visible = False
    Height = 26
    Width = 169
  end
  object DS_Inventory_Trip_Info1: TDataSource
    DataSet = USP_S_Inventory_Trip_Info1
    Left = 220
    Top = 65
  end
  object USP_S_Inventory_Trip_Info1: TkbmMWClientStoredProc
    ClientAsTemplate = False
    QueryService = 'PF_Service'
    QueryServiceVersion = '1.0'
    CacheParams = ptUnknown
    CacheFlags = []
    SessionName = 'ApWorksClient'
    StoredProcName = '@USP_S_Inventory_Trip_Info'
    Overload = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'masterid'
        ParamType = ptInput
        Value = 29279
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
        Size = 40
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
      end
      item
        Name = 'OfficeID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ADDR_1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Trans'
        DataType = ftCurrency
      end
      item
        Name = 'HyunJiTrans'
        DataType = ftCurrency
      end
      item
        Name = 'ILBI'
        DataType = ftCurrency
      end
      item
        Name = 'SikBi'
        DataType = ftCurrency
      end
      item
        Name = 'SukBakBi'
        DataType = ftCurrency
      end
      item
        Name = 'TOTAL'
        DataType = ftCurrency
      end
      item
        Name = 'TransAP'
        DataType = ftCurrency
      end
      item
        Name = 'HyunJiTransAP'
        DataType = ftCurrency
      end
      item
        Name = 'ILBIAP'
        DataType = ftCurrency
      end
      item
        Name = 'SikBiAP'
        DataType = ftCurrency
      end
      item
        Name = 'SukBakBiAP'
        DataType = ftCurrency
      end
      item
        Name = 'TotalAP'
        DataType = ftCurrency
      end
      item
        Name = 'BIGO'
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
    Left = 104
    Top = 57
    object USP_S_Inventory_Trip_Info1SEQ: TLargeintField
      FieldName = 'SEQ'
      Origin = 'APW_Inventory.SEQ'
    end
    object USP_S_Inventory_Trip_Info1MasterID: TLargeintField
      FieldName = 'MasterID'
      Origin = 'APW_Inventory.MasterID'
    end
    object USP_S_Inventory_Trip_Info1Row_ID: TStringField
      FieldName = 'Row_ID'
      Origin = 'APW_Inventory.Row_ID'
      Size = 4
    end
    object USP_S_Inventory_Trip_Info1REG: TStringField
      FieldName = 'REG'
      Origin = 'APW_Inventory.REG'
      Size = 5
    end
    object USP_S_Inventory_Trip_Info1EUB: TStringField
      FieldName = 'EUB'
      Origin = 'APW_Inventory.EUB'
      Size = 5
    end
    object USP_S_Inventory_Trip_Info1SAN: TStringField
      FieldName = 'SAN'
      Origin = 'APW_Inventory.SAN'
      Size = 1
    end
    object USP_S_Inventory_Trip_Info1ADDR: TStringField
      FieldName = 'ADDR'
      Origin = 'APW_Inventory.ADDR'
      Size = 40
    end
    object USP_S_Inventory_Trip_Info1BUN1: TStringField
      FieldName = 'BUN1'
      Origin = 'APW_Inventory.BUN1'
      Size = 4
    end
    object USP_S_Inventory_Trip_Info1BUN2: TStringField
      FieldName = 'BUN2'
      Origin = 'APW_Inventory.BUN2'
      Size = 4
    end
    object USP_S_Inventory_Trip_Info1REG1: TStringField
      FieldName = 'REG1'
      Origin = 'APW_Inventory.REG1'
      Size = 5
    end
    object USP_S_Inventory_Trip_Info1EUB1: TStringField
      FieldName = 'EUB1'
      Origin = 'APW_Inventory.EUB1'
      Size = 5
    end
    object USP_S_Inventory_Trip_Info1Building: TStringField
      FieldName = 'Building'
      Origin = 'APW_Inventory.Building'
      Size = 30
    end
    object USP_S_Inventory_Trip_Info1Dong: TStringField
      FieldName = 'Dong'
      Origin = 'APW_Inventory.Dong'
      Size = 22
    end
    object USP_S_Inventory_Trip_Info1Floor: TStringField
      FieldName = 'Floor'
      Origin = 'APW_Inventory.Floor'
      Size = 10
    end
    object USP_S_Inventory_Trip_Info1Ho: TStringField
      FieldName = 'Ho'
      Origin = 'APW_Inventory.Ho'
      Size = 10
    end
    object USP_S_Inventory_Trip_Info1DocID: TStringField
      FieldName = 'DocID'
      Origin = 'APW_Inventory.DocID'
      Size = 30
    end
    object USP_S_Inventory_Trip_Info1Number: TLargeintField
      FieldName = 'Number'
      Origin = '.'
    end
    object USP_S_Inventory_Trip_Info1OfficeID: TStringField
      FieldName = 'OfficeID'
      Origin = 'APW_Trip_Info.OfficeID'
      Size = 2
    end
    object USP_S_Inventory_Trip_Info1ADDR_1: TStringField
      FieldName = 'ADDR_1'
      Origin = 'APW_Trip_Info.ADDR'
      Size = 50
    end
    object USP_S_Inventory_Trip_Info1Trans: TCurrencyField
      FieldName = 'Trans'
      Origin = 'APW_Trip_Info.Trans'
    end
    object USP_S_Inventory_Trip_Info1HyunJiTrans: TCurrencyField
      FieldName = 'HyunJiTrans'
      Origin = 'APW_Trip_Info.HyunJiTrans'
    end
    object USP_S_Inventory_Trip_Info1ILBI: TCurrencyField
      FieldName = 'ILBI'
      Origin = 'APW_Trip_Info.ILBI'
    end
    object USP_S_Inventory_Trip_Info1SikBi: TCurrencyField
      FieldName = 'SikBi'
      Origin = 'APW_Trip_Info.SikBi'
    end
    object USP_S_Inventory_Trip_Info1SukBakBi: TCurrencyField
      FieldName = 'SukBakBi'
      Origin = 'APW_Trip_Info.SukBakBi'
    end
    object USP_S_Inventory_Trip_Info1TOTAL: TCurrencyField
      FieldName = 'TOTAL'
      Origin = 'APW_Trip_Info.TOTAL'
    end
    object USP_S_Inventory_Trip_Info1TransAP: TCurrencyField
      FieldName = 'TransAP'
      Origin = 'APW_Trip_Info.TransAP'
    end
    object USP_S_Inventory_Trip_Info1HyunJiTransAP: TCurrencyField
      FieldName = 'HyunJiTransAP'
      Origin = 'APW_Trip_Info.HyunJiTransAP'
    end
    object USP_S_Inventory_Trip_Info1ILBIAP: TCurrencyField
      FieldName = 'ILBIAP'
      Origin = 'APW_Trip_Info.ILBIAP'
    end
    object USP_S_Inventory_Trip_Info1SikBiAP: TCurrencyField
      FieldName = 'SikBiAP'
      Origin = 'APW_Trip_Info.SikBiAP'
    end
    object USP_S_Inventory_Trip_Info1SukBakBiAP: TCurrencyField
      FieldName = 'SukBakBiAP'
      Origin = 'APW_Trip_Info.SukBakBiAP'
    end
    object USP_S_Inventory_Trip_Info1TotalAP: TCurrencyField
      FieldName = 'TotalAP'
      Origin = 'APW_Trip_Info.TotalAP'
    end
    object USP_S_Inventory_Trip_Info1BIGO: TStringField
      FieldName = 'BIGO'
      Origin = 'APW_Trip_Info.BIGO'
    end
  end
end
