object Form11: TForm11
  Left = 3568
  Top = 70
  Caption = #52636#53748#44540#44592#47197
  ClientHeight = 652
  ClientWidth = 589
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
    Top = 570
    Width = 589
    Height = 13
    Align = alBottom
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 583
    Width = 589
    Height = 69
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 208
      Top = 28
      Width = 8
      Height = 13
      Caption = '~'
    end
    object Sdate: TDateTimePicker
      Left = 16
      Top = 24
      Width = 186
      Height = 21
      Date = 42012.411431261570000000
      Time = 42012.411431261570000000
      TabOrder = 0
    end
    object Edate: TDateTimePicker
      Left = 224
      Top = 24
      Width = 186
      Height = 21
      Date = 42012.411431261570000000
      Time = 42012.411431261570000000
      TabOrder = 1
    end
    object btn_serch: TButton
      Left = 418
      Top = 23
      Width = 46
      Height = 25
      Caption = #44160#49353
      TabOrder = 2
      OnClick = btn_serchClick
    end
    object btn_Close: TButton
      Left = 489
      Top = 23
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 3
      OnClick = btn_CloseClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 589
    Height = 570
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object Grid: TStringGrid
      Left = 1
      Top = 1
      Width = 587
      Height = 568
      Align = alClient
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tenter')
    Left = 248
    Top = 192
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\\caps\acserver\ACC' +
      'ESS.mdb;Persist Security Info=False;Jet OLEDB:Database Password=' +
      'fdmsamho;'
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 152
    Top = 320
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=fdmsamho;Persist Security Info=True' +
      ';User ID=fdmsusr;Initial Catalog=ACSDB;Data Source=CAPS\SQLEXPRE' +
      'SS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 392
    Top = 312
  end
end
