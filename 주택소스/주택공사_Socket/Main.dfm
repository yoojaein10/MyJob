object FrmKHFC: TFrmKHFC
  Left = 3560
  Top = -38
  Width = 962
  Height = 612
  Caption = #51452#53469#44552#50997#44277#49324' -'#50672#46041#54532#47196#44536#47016
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 17
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 48
    Align = alTop
    TabOrder = 0
    object lbl2: TLabel
      Left = 627
      Top = 6
      Width = 38
      Height = 17
      Caption = 'Works'
    end
    object lbl3: TLabel
      Left = 699
      Top = 6
      Width = 35
      Height = 17
      Caption = 'Active'
    end
    object lbl4: TLabel
      Left = 779
      Top = 6
      Width = 43
      Height = 17
      Caption = 'In Pool'
    end
    object btnConnect: TButton
      Left = 160
      Top = 11
      Width = 73
      Height = 25
      Caption = #50672#44208
      TabOrder = 0
      OnClick = btnConnectClick
    end
    object edtCurWorks: TEdit
      Left = 627
      Top = 22
      Width = 65
      Height = 25
      TabOrder = 1
      Text = '0'
    end
    object edtActThreads: TEdit
      Left = 699
      Top = 22
      Width = 73
      Height = 25
      TabOrder = 2
      Text = '0'
    end
    object edtCurThreads: TEdit
      Left = 779
      Top = 22
      Width = 65
      Height = 25
      TabOrder = 3
      Text = '0'
    end
    object edt1: TEdit
      Left = 238
      Top = 12
      Width = 310
      Height = 25
      TabOrder = 4
      Text = '0012KHFCRESKAA14'
    end
    object btnSend: TButton
      Left = 557
      Top = 9
      Width = 55
      Height = 25
      Caption = #51204#49569
      TabOrder = 5
      OnClick = btnSendClick
    end
    object pnlConType: TPanel
      Left = 1
      Top = 1
      Width = 149
      Height = 46
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      object rb1: TRadioButton
        Left = 7
        Top = 6
        Width = 74
        Height = 17
        Caption = #48372#44552#51088#47532
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 87
        Top = 6
        Width = 53
        Height = 17
        Caption = #50672#44552
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rb1Click
      end
      object chkSrv: TCheckBox
        Left = 7
        Top = 25
        Width = 43
        Height = 17
        Caption = 'Srv'
        Enabled = False
        TabOrder = 2
      end
      object chkClient: TCheckBox
        Left = 55
        Top = 25
        Width = 43
        Height = 17
        Caption = 'Clt'
        Enabled = False
        TabOrder = 3
      end
      object chkCMD: TCheckBox
        Left = 103
        Top = 25
        Width = 43
        Height = 17
        Caption = 'Cmd'
        Enabled = False
        TabOrder = 4
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 48
    Width = 946
    Height = 506
    Align = alClient
    TabOrder = 1
    object spl1: TSplitter
      Left = 460
      Top = 1
      Height = 504
    end
    object pnl3: TPanel
      Left = 1
      Top = 1
      Width = 459
      Height = 504
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 459
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lbl1: TLabel
          Left = 8
          Top = 5
          Width = 26
          Height = 17
          Caption = #49569#49888
        end
        object btn1: TButton
          Left = 365
          Top = 1
          Width = 75
          Height = 25
          Caption = #51217#49688' Test'
          TabOrder = 0
          OnClick = btn1Click
        end
        object btnStatus: TButton
          Left = 174
          Top = 1
          Width = 75
          Height = 25
          Caption = #51652#54665#49345#53468
          TabOrder = 1
          OnClick = btnStatusClick
        end
        object edtCMD: TEdit
          Left = 54
          Top = 0
          Width = 121
          Height = 25
          TabOrder = 2
        end
        object btn2: TButton
          Left = 271
          Top = 1
          Width = 75
          Height = 25
          Caption = #48156#49888
          TabOrder = 3
          OnClick = btn2Click
        end
      end
      object mmoSend: TMemo
        Left = 0
        Top = 26
        Width = 459
        Height = 478
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object pnl5: TPanel
      Left = 463
      Top = 1
      Width = 482
      Height = 504
      Align = alClient
      TabOrder = 1
      object pnl6: TPanel
        Left = 1
        Top = 1
        Width = 480
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lbl5: TLabel
          Left = 8
          Top = 5
          Width = 26
          Height = 17
          Caption = #49688#49888
        end
        object btn3: TButton
          Left = 90
          Top = 2
          Width = 75
          Height = 25
          Caption = 'btn3'
          TabOrder = 0
          OnClick = btn3Click
        end
        object Button1: TButton
          Left = 200
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object mmoReceive: TMemo
        Left = 1
        Top = 27
        Width = 480
        Height = 476
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 554
    Width = 946
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object CmdServer: TServerSocket
    Active = False
    Port = 35000
    ServerType = stNonBlocking
    OnListen = CmdServerListen
    OnClientRead = CmdServerClientRead
    OnClientError = CmdServerClientError
    Left = 96
    Top = 170
  end
  object ClientSocket: TClientSocket
    Active = False
    Address = '10.40.0.173'
    ClientType = ctNonBlocking
    Port = 17061
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    Left = 184
    Top = 100
  end
  object ServerSocket: TServerSocket
    Active = False
    Port = 37051
    ServerType = stNonBlocking
    OnListen = ServerSocketListen
    OnClientConnect = ServerSocketClientConnect
    OnClientDisconnect = ServerSocketClientDisconnect
    OnClientRead = ServerSocketClientRead
    OnClientError = ServerSocketClientError
    Left = 98
    Top = 100
  end
  object tmrServer: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrServerTimer
    Left = 186
    Top = 169
  end
end
