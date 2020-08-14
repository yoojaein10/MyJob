object Form6: TForm6
  Left = 2167
  Top = 33
  Width = 860
  Height = 924
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 133
    Align = alTop
    Color = clActiveCaption
    TabOrder = 0
    object btn_Print: TButton
      Left = 28
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 296
      Top = 50
      Width = 437
      Height = 53
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
    end
    object Button1: TButton
      Left = 692
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 152
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 292
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 424
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 556
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 144
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'Edit1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 133
    Width = 852
    Height = 224
    Align = alTop
    Color = clActiveCaption
    TabOrder = 1
    object edit_daeji: TcxTextEdit
      Left = 127
      Top = 25
      AutoSize = False
      TabOrder = 0
      Height = 32
      Width = 414
    end
    object cxLabel6: TcxLabel
      Left = 20
      Top = 25
      AutoSize = False
      Caption = #45824#51648#50948#52824
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_daejiarea: TcxTextEdit
      Left = 127
      Top = 54
      AutoSize = False
      TabOrder = 2
      Height = 32
      Width = 155
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 54
      AutoSize = False
      Caption = #45824#51648#47732#51201
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object cxLabel2: TcxLabel
      Left = 538
      Top = 25
      AutoSize = False
      Caption = #51648#48264
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_jibun: TcxTextEdit
      Left = 645
      Top = 25
      AutoSize = False
      TabOrder = 5
      Height = 32
      Width = 155
    end
    object edit_yunarea: TcxTextEdit
      Left = 386
      Top = 54
      AutoSize = False
      TabOrder = 6
      Height = 32
      Width = 155
    end
    object cxLabel3: TcxLabel
      Left = 279
      Top = 54
      AutoSize = False
      Caption = #50672#47732#51201
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_namenum: TcxTextEdit
      Left = 645
      Top = 54
      AutoSize = False
      TabOrder = 8
      Height = 32
      Width = 155
    end
    object cxLabel4: TcxLabel
      Left = 538
      Top = 54
      AutoSize = False
      Caption = #47749#52845#48143' '#48264#54840
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object cxLabel5: TcxLabel
      Left = 20
      Top = 83
      AutoSize = False
      Caption = #44148#54224#50984
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_gunpe: TcxTextEdit
      Left = 127
      Top = 83
      AutoSize = False
      TabOrder = 11
      Height = 32
      Width = 155
    end
    object cxLabel7: TcxLabel
      Left = 279
      Top = 83
      AutoSize = False
      Caption = #50857#51201#47456
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_yong: TcxTextEdit
      Left = 386
      Top = 83
      AutoSize = False
      TabOrder = 13
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object edit_totalHo: TcxTextEdit
      Left = 645
      Top = 83
      AutoSize = False
      TabOrder = 14
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object cxLabel8: TcxLabel
      Left = 538
      Top = 83
      AutoSize = False
      Caption = #52509#54840#49688
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object cxLabel9: TcxLabel
      Left = 20
      Top = 112
      AutoSize = False
      Caption = #51452#50857#46020
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_juyong: TcxTextEdit
      Left = 127
      Top = 112
      AutoSize = False
      TabOrder = 17
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object cxLabel10: TcxLabel
      Left = 279
      Top = 112
      AutoSize = False
      Caption = #51452#44396#51312
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_jogu: TcxTextEdit
      Left = 386
      Top = 112
      AutoSize = False
      TabOrder = 19
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object edit_hudata: TcxTextEdit
      Left = 645
      Top = 112
      AutoSize = False
      TabOrder = 20
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object cxLabel11: TcxLabel
      Left = 538
      Top = 112
      AutoSize = False
      Caption = #54728#44032#51068#51088
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object cxLabel12: TcxLabel
      Left = 20
      Top = 141
      AutoSize = False
      Caption = #51648#48533
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_top: TcxTextEdit
      Left = 127
      Top = 141
      AutoSize = False
      TabOrder = 23
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object cxLabel13: TcxLabel
      Left = 279
      Top = 141
      AutoSize = False
      Caption = #52789#49688
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_floor: TcxTextEdit
      Left = 386
      Top = 141
      AutoSize = False
      TabOrder = 25
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object edit_usedate: TcxTextEdit
      Left = 645
      Top = 141
      AutoSize = False
      TabOrder = 26
      Text = 'cxTextEdit1'
      Height = 32
      Width = 155
    end
    object cxLabel14: TcxLabel
      Left = 538
      Top = 141
      AutoSize = False
      Caption = #49324#50857#49849#51064#51068#51088
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object cxLabel15: TcxLabel
      Left = 20
      Top = 170
      AutoSize = False
      Caption = #44288#47144#51648#48264
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 15589586
      Height = 32
      Width = 110
    end
    object edit_matingji: TcxTextEdit
      Left = 127
      Top = 170
      AutoSize = False
      TabOrder = 29
      Text = 'cxTextEdit1'
      Height = 32
      Width = 673
    end
  end
  object pan_gen: TScrollBox
    Left = 0
    Top = 357
    Width = 852
    Height = 272
    Align = alTop
    BorderStyle = bsNone
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 2
    object ScrollBox3: TScrollBox
      Left = 0
      Top = 0
      Width = 852
      Height = 25
      Align = alTop
      Color = clActiveCaption
      ParentColor = False
      TabOrder = 0
      object cxLabel16: TcxLabel
        Left = 4
        Top = 4
        Caption = #44148#52629#47932#54788#54889
      end
    end
  end
  object ScrollBox2: TScrollBox
    Left = 0
    Top = 629
    Width = 852
    Height = 264
    Align = alClient
    BorderStyle = bsNone
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 3
    object ScrollBox4: TScrollBox
      Left = 0
      Top = 0
      Width = 852
      Height = 25
      Align = alTop
      Color = clActiveCaption
      ParentColor = False
      TabOrder = 0
    end
  end
  object IdHTTP1: TIdHTTP
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 40
    Top = 64
  end
  object XMLDocument1: TXMLDocument
    Left = 96
    Top = 84
    DOMVendorDesc = 'MSXML'
  end
end
