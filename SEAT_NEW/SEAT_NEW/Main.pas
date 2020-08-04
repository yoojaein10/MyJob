unit Main;

interface

uses
  Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,Printers,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGraphics, cxControls, cxLookAndFeels,ShellApi,
  cxLookAndFeelPainters, cxSplitter, Vcl.StdCtrls, cxPC, Vcl.ExtCtrls,
  Vcl.Menus, cxButtons, Data.DB, Data.Win.ADODB, IdBaseComponent, IdComponent,
  IdIPWatch,WinInet,Vcl.Imaging.jpeg, cxContainer, cxEdit, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, cxLabel, cxTextEdit, cxImage, Vcl.ComCtrls, dxCore, ComObj, SysUtils,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, DateUtils,
  MSNPopUp, Vcl.OleCtrls,  AdvUtil,IdIcmpClient,
  dxBarBuiltInMenu, System.Win.ScktComp, Vcl.WinXCalendars,
  System.ImageList, Vcl.ImgList, RzButton, Vcl.Buttons, RxClock,
  LGUBASEOPENAPILib_TLB, dxPanel, RzLabel;
Const
   WM_MYMESSAGE = WM_USER+100;  {Message being passed to tray icon}

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    Panel3: TPanel;
    cxSplitter1: TcxSplitter;
    btn_Close: TcxButton;
    AdoCon: TADOConnection;
    Qry: TADOQuery;
    IdIPWatch1: TIdIPWatch;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel10: TPanel;
    Panel13: TPanel;
    edit_search: TcxTextEdit;
    cxLabel1: TcxLabel;
    btn_Find: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edit_name: TcxTextEdit;
    edit_grade: TcxTextEdit;
    edit_Dnum: TcxTextEdit;
    edit_Pnum: TcxTextEdit;
    Panel15: TPanel;
    cxPageControl3: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    Grid_TodayCul: TAdvStringGrid;
    Grid_Work: TAdvStringGrid;
    Image2: TImage;
    pictime: TTimer;
    btn_hide: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    Panel33: TPanel;
    cxLabel5: TcxLabel;
    cxButton4: TcxButton;
    btn_saveCul: TcxButton;
    edit_culdate: TcxDateEdit;
    Grid_cul: TAdvStringGrid;
    Panel20: TPanel;
    culjangdate: TDateTimePicker;
    btn_serchcul: TButton;
    Panel22: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    edit_where: TEdit;
    edit_start: TEdit;
    edit_end: TEdit;
    Button2: TButton;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    combo_Gubun: TcxComboBox;
    memo_bigo: TcxMemo;
    btn_dlgclose: TcxButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Cultimer: TTimer;
    MSNPopUp1: TMSNPopUp;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    btn_Print: TcxButton;
    PrintDialog1: TPrintDialog;
    Panel34: TPanel;
    btn_Culrefresh: TcxButton;
    Panel37: TPanel;
    btn_docrefresh: TcxButton;
    SEATTime: TTimer;
    Timer1: TTimer;
    cxTabSheet9: TcxTabSheet;
    Panel110: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label28: TLabel;
    LGUBaseOpenApi1: TLGUBaseOpenApi;
    ClientSocket1: TClientSocket;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    tmr1: TTimer;
    cxButton5: TcxButton;
    lbl36: TLabel;
    il2: TImageList;
    RxClock1: TRxClock;
    cxTabSheet11: TcxTabSheet;
    Panel27: TPanel;
    p300: TPanel;
    Label21: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    p301: TPanel;
    Label31: TLabel;
    p302: TPanel;
    Label20: TLabel;
    p303: TPanel;
    Label32: TLabel;
    p304: TPanel;
    Label33: TLabel;
    p305: TPanel;
    Label34: TLabel;
    p306: TPanel;
    Label35: TLabel;
    p307: TPanel;
    Label37: TLabel;
    p308: TPanel;
    Label38: TLabel;
    p309: TPanel;
    Label42: TLabel;
    p310: TPanel;
    Label46: TLabel;
    p311: TPanel;
    Label54: TLabel;
    p312: TPanel;
    Label56: TLabel;
    p313: TPanel;
    Label57: TLabel;
    p314: TPanel;
    Label59: TLabel;
    p315: TPanel;
    Label60: TLabel;
    p316: TPanel;
    Label62: TLabel;
    p317: TPanel;
    Label65: TLabel;
    p318: TPanel;
    Label66: TLabel;
    p319: TPanel;
    Label68: TLabel;
    RxClock3: TRxClock;
    cxTabSheet12: TcxTabSheet;
    Panel16: TPanel;
    DXPanel1: TDXPanel;
    DXPanel2: TDXPanel;
    p128: TPanel;
    Label53: TLabel;
    DXPanel3: TDXPanel;
    p129: TPanel;
    lbl7: TLabel;
    Label52: TLabel;
    p117: TPanel;
    lbl8: TLabel;
    p87: TPanel;
    lbl6: TLabel;
    DXPanel4: TDXPanel;
    p104: TPanel;
    p81: TPanel;
    p243: TPanel;
    p160: TPanel;
    p204: TPanel;
    p69: TPanel;
    p33: TPanel;
    p35: TPanel;
    p70: TPanel;
    p244: TPanel;
    p203: TPanel;
    p192: TPanel;
    p94: TPanel;
    p71: TPanel;
    p20: TPanel;
    p157: TPanel;
    Panel32: TPanel;
    Label67: TLabel;
    Label70: TLabel;
    Panel36: TPanel;
    Panel38: TPanel;
    DXPanel5: TDXPanel;
    p220: TPanel;
    p150: TPanel;
    p181: TPanel;
    p140: TPanel;
    p132: TPanel;
    p254: TPanel;
    p156: TPanel;
    p88: TPanel;
    p237: TPanel;
    p223: TPanel;
    p24: TPanel;
    p125: TPanel;
    p26: TPanel;
    p25: TPanel;
    p135: TPanel;
    p119: TPanel;
    p239: TPanel;
    p240: TPanel;
    p40: TPanel;
    p53: TPanel;
    p169: TPanel;
    p82: TPanel;
    p146: TPanel;
    p96: TPanel;
    p80: TPanel;
    p90: TPanel;
    p98: TPanel;
    p92: TPanel;
    p185: TPanel;
    p43: TPanel;
    p102: TPanel;
    p242: TPanel;
    p217: TPanel;
    p236: TPanel;
    p86: TPanel;
    p48: TPanel;
    p224: TPanel;
    p17: TPanel;
    p30: TPanel;
    lbl12: TLabel;
    p110: TPanel;
    Label104: TLabel;
    p23: TPanel;
    p221: TPanel;
    p153: TPanel;
    p111: TPanel;
    p89: TPanel;
    p210: TPanel;
    p115: TPanel;
    p161: TPanel;
    p122: TPanel;
    p97: TPanel;
    p179: TPanel;
    p60: TPanel;
    p99: TPanel;
    p174: TPanel;
    p118: TPanel;
    p93: TPanel;
    p213: TPanel;
    p47: TPanel;
    p103: TPanel;
    p184: TPanel;
    p113: TPanel;
    p59: TPanel;
    p121: TPanel;
    Label58: TLabel;
    p79: TPanel;
    p42: TPanel;
    p68: TPanel;
    p41: TPanel;
    p127: TPanel;
    p66: TPanel;
    p67: TPanel;
    p39: TPanel;
    p22: TPanel;
    p124: TPanel;
    RzLabel1: TRzLabel;
    p95: TPanel;
    p73: TPanel;
    p78: TPanel;
    p147: TPanel;
    p31: TPanel;
    p63: TPanel;
    p65: TPanel;
    p126: TPanel;
    p123: TPanel;
    p134: TPanel;
    Label9: TLabel;
    p139: TPanel;
    p105: TPanel;
    p114: TPanel;
    p18: TPanel;
    p120: TPanel;
    p142: TPanel;
    p209: TPanel;
    p136: TPanel;
    p13: TPanel;
    p61: TPanel;
    DXPanel6: TDXPanel;
    p173: TPanel;
    p56: TPanel;
    p187: TPanel;
    L173: TLabel;
    DXPanel7: TDXPanel;
    RzLabel2: TRzLabel;
    Edit1: TEdit;
    Image1: TImage;
    Panel11: TPanel;
    Panel14: TPanel;
    Panel19: TPanel;
    p50: TPanel;
    p249: TPanel;
    Panel18: TPanel;
    Panel17: TPanel;
    Panel21: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Label1: TLabel;
    Panel30: TPanel;
    LinkLabel1: TLinkLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Panel31: TPanel;
    Panel35: TPanel;

    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure btn_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure p187Click(Sender: TObject);
    procedure btn_FindClick(Sender: TObject);
    procedure pictimeTimer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Grid_WorkSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btn_saveCulClick(Sender: TObject);
    procedure btn_dlgcloseClick(Sender: TObject);
    procedure btn_serchculClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Grid_culGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure CultimerTimer(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure LGUBaseOpenApi1SendRingEvent(ASender: TObject;
      var bstrRingEvent: WideString);
    procedure LGUBaseOpenApi1SendLoginResultEvent(ASender: TObject;
      var bstrLoginResult: WideString);
    procedure cxButton2Click(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_MMSClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btn_hideClick(Sender: TObject);
    procedure edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CulrefreshClick(Sender: TObject);
    procedure btn_docrefreshClick(Sender: TObject);
    procedure Grid_TodayCulGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure SEATTimeTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure MenuItem1Click(Sender: TObject);
    procedure D187MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure do_SetPrinter(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure ManGrid2CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure ManGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnaddworkClick(Sender: TObject);
    procedure RxClock1Alarm(Sender: TObject);
    procedure RxClock3Alarm(Sender: TObject);
  private
    { Private declarations }
    function SubStr(Str:string;const Position:integer;const Delimiter:string=','):string;
    function IsAlpha(str:string):boolean;
    procedure do_Tray;
    procedure TrayMessage(var Msg: TMessage); message WM_MYMESSAGE;
    procedure WMQueryEndSession(var Msg: TMessage);message WM_ENDSESSION;
    procedure Get_data;
    procedure Get_MyData;
    procedure do_Login;
    procedure do_Logout;
    procedure do_getTodayCul;
    procedure do_SETState(State: Integer);
    procedure do_GetWorkJUJU;
    procedure do_getwork;
    procedure do_GetWorkdata;
    procedure init_cul;
    procedure do_GetCul;
    procedure check_CUL;
    procedure do_setculdatalogin(FLAG, ID, GUBUN: String);
    procedure do_setcul(LIST:TStringList; FLAG, ID, GUBUN: string; ListCount: Integer);
    procedure do_varsion;
    function InternetCon:Boolean;
    procedure do_LGLogin;
    procedure ScreenShot(x, y, Width, Height: integer; bm: TBitMap);
    function IsWindows64: Boolean;
    function ActiveCaption: string;
    procedure CHK_workList;

  public
    { Public declarations }
    function Ping: Boolean;

  end;
  var
    NotifyStruc : PNotifyIconData; {Structure needed for tray icon}
    MYIP,Locate, MyName, Mytel, MyTeam: String;
    Mode: Integer;
    TIMELISTM: TStringList;
    Paneltemp: String;
    NotWorkdate : string;
    WorkFlag: string;

var
  Form1: TForm1;

implementation
  uses
    Inout, MMS, stats, juso, JUN , WorkList, WorkTong;
{$R *.dfm}

function TForm1.ActiveCaption: string;
var
  Handle: THandle;
  Len: LongInt;
  Title: string;
begin
  Result := '';
  Handle := GetForegroundWindow;
  if Handle <> 0 then
  begin
    Len := GetWindowTextLength(Handle) + 1;
    SetLength(Title, Len);
    GetWindowText(Handle, PChar(Title), Len);
    ActiveCaption := TrimRight(Title);
  end;
end;

procedure TForm1.btnaddworkClick(Sender: TObject);
begin
////
end;

procedure TForm1.btn_CloseClick(Sender: TObject);
begin
  Form1.Visible:=false;
  Shell_NotifyIcon(NIM_ADD,NotifyStruc);
  ShowWindow(Application.Handle,SW_HIDE);
end;

procedure TForm1.btn_CulrefreshClick(Sender: TObject);
begin
///
  do_getTodayCul;
end;

procedure TForm1.btn_dlgcloseClick(Sender: TObject);
begin
//
  Panel22.Visible := False;
 // do_getCUL;
end;

procedure TForm1.btn_docrefreshClick(Sender: TObject);
begin
  do_GetWorkdata;
end;

procedure TForm1.btn_FindClick(Sender: TObject);
var
  jpgImage: TJPEGImage;
  temp, temp2 : TComponent;
begin
   Qry.SQL.Clear;
   Qry.Parameters.Clear;
   Qry.SQL.Text := 'SELECT UID,UName, Ugrade, UDtel, UPtel FROM Seat_UserInfo  WHERE Udtel = :UDtel or Uname = :Uname';
   Qry.Parameters.ParamByName('UDtel').Value := edit_Search.Text;
   Qry.Parameters.ParamByName('Uname').Value := edit_Search.Text;
   Qry.Open;
   Qry.First;
   if not Qry.Eof then begin
      edit_name.Text := Qry.FieldByName('UName').AsString;
      edit_grade.Text := Qry.FieldByName('Ugrade').AsString;
      edit_Dnum.Text := Qry.FieldByName('UDtel').AsString;
      edit_Pnum.Text := Qry.FieldByName('UPtel').AsString;
   end;
   jpgImage := TJPEGImage.Create;
  jpgImage.LoadFromFile('\\server\DATA1\프로그램\daehwa\'+edit_name.Text+'.jpg');
 // if  jpgImage. then ShowMessage('이미지가없습니다');

  Image2.Picture.Assign(jpgImage);
    temp := FindComponent('p'+Qry.FieldByName('UID').AsString);
        if  TPanel(temp) = nil then begin
         //ShowMessage('111');
        exit;
        end;

      if temp <> nil then
       begin
          TPanel(temp).Color := $3366FF;
          pictime.Enabled := True;
       end;
  temp2 := FindComponent('D'+Qry.FieldByName('UID').AsString);
      if  TPanel(temp2) = nil then begin
         //ShowMessage('111');
        exit;
        end;

      if temp2 <> nil then
       begin
          TPanel(temp2).Color := $3366FF;
          pictime.Enabled := True;
       end;
  jpgImage.Free;
  edit_Search.Text := '';
  edit_Search.SetFocus;
end;

procedure TForm1.btn_hideClick(Sender: TObject);
begin
  Form1.Visible:=false;
  Shell_NotifyIcon(NIM_ADD,NotifyStruc);
  ShowWindow(Application.Handle,SW_HIDE);
end;

procedure TForm1.btn_MMSClick(Sender: TObject);
begin
if (MyName='양혜지') or (MyName='구한나') or (MyName='이현희') or(MyName='유재인') or(MyName='이일우') or(MyName='임정미') or(MyName='이수영') or(MyName='김경희') then  MMS.Form12.Show

  else
  begin

    ShowMessage('권한이 없습니다');
    Exit;
  end;
end;

procedure TForm1.btn_PrintClick(Sender: TObject);
var
  ScaleX, ScaleY: Integer;

  RR: TRect;

begin
   if PrintDialog1.Execute then begin
    if cxPageControl1.ActivePage = cxTabSheet12 then
    begin
     Panel10.Visible := False;
     Form1.Width := 1224;

     Printer.Orientation := poLandscape;
     Form1.PrintScale := poPrintToFit;
     //Image2.
     Print;
     Form1.Width := 1570;
     Panel10.Visible := True;
    end
//    else
//    begin
//     Panel10.Visible := False;
//     Form1.Width := 457;
//
//     Printer.Orientation := poPortrait;
//     Form1.PrintScale := poPrintToFit;
//     //Image2.
//     Print;
//     Form1.Width := 790;
//     Panel10.Visible := True;
//    end;
   end;

end;

procedure TForm1.btn_saveCulClick(Sender: TObject);
begin
  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'SELECT * FROM APW_IW_BAEJUNG_DETAIL WHERE docid = :docid';
  Qry.Parameters.ParamByName('docid').Value := Edit1.Text;
  Qry.Open;
  if Qry.Eof then
  begin
    ShowMessage('배정데이터가 없습니다');
    Exit;
  end;

  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'UPDATE APW_IW_BAEJUNG_DETAIL SET Culjangdate = :Culdate Where docid = :docid';
  Qry.Parameters.ParamByName('Culdate').Value := edit_culdate.Date;
  Qry.Parameters.ParamByName('docid').Value := Edit1.Text;
  Qry.ExecSQL;
  ShowMessage('저장되었습니다');
  Panel33.Visible := False;
end;

procedure TForm1.btn_serchculClick(Sender: TObject);
begin
  init_cul;
  do_getCUL;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  RowCount: Integer;

begin
  if combo_Gubun.Text = '구분을 선택하세요' then
  begin
    ShowMessage('구분을 선택하세요');
    combo_Gubun.SetFocus;
    Exit;
  end;

  if (combo_Gubun.ItemIndex = 0) or (combo_Gubun.ItemIndex = 1) then
  begin
//    if edit_where.Text = '' then
//    begin
//     // ShowMessage('출장지를 입력해주세요');
//     // Exit;
//    end;
    if memo_bigo.Text = '' then
    begin
      ShowMessage('상세내역을  입력해주세요');
      memo_bigo.SetFocus;
      Exit;
    end;


  end;

   if Mode = 1 then
    begin

    do_setcul(TIMELISTM,'IN','0',IntToStr(combo_Gubun.ItemIndex+2),TIMELISTM.Count);

    end
    else if Mode = 2 then
    begin
           ////수정
    end

    else if Mode = 4 then
    begin
   ///
    end
    else
    begin
      ///기타
    end;
    Panel22.Visible := False;
    do_getCUL;

end;


procedure TForm1.check_CUL;
var
  Count: Integer;
  date: String;
begin


  //Con_Connection2;
  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'EXEC SP_IW_CHECK_SEATCUL :Name';
  Qry.Parameters.ParamByName('Name').Value := MyName;
  if MyName = '' then Exit;

  Qry.Open;



  if Qry.Eof  then Exit;

  for Count := 0 to Qry.RecordCount-1 do
    begin
//        if qry_CUL.FieldByName('Count').AsInteger >= 9 then
//        begin
//        // ShowMessage(IntToStr(qry_CUL.FieldByName('Count').AsInteger));
//        // Exit;
//        end;
       date := '';
        if Qry.FieldByName('Count').AsInteger < 9 then
        begin
          Form1.Show;

          if Edit1.Text = 'N'  then
          begin
            Edit1.Text := 'Y';


            date := Qry.FieldByName('date').AsString;
             if date = FormatDateTime('yyyy-mm-dd',now) then Exit;


             if  MessageDlg(date + '의 데이터가 업습니다 해당일자로 이동합니다',mtInformation,mbYesNo,0) =mrYes then
             begin

               //Form1.Visible := True;

               culjangdate.Date := StrToDate(date);
               btn_serchculClick(nil);

               cxPageControl2.ActivePage := cxTabSheet6;
                Edit1.Text := 'N';
              end
              else
              begin
                Edit1.Text := 'N';
              end;

            Exit;
          end;

        end;

        Qry.Next;
       end;



 // ShowMessage('CHCEK :' + IntToStr(qry_CUL.RecordCount));
end;

procedure TForm1.CHK_workList;
begin
 //
 if (MyTeam = 'M1') or (MyTeam = 'P2' )or (MyTeam = 'P4' ) Then // or (MyTeam = 'J2') then
 //if MyName ='이일우' then
 begin

   Qry.SQL.Clear;
   Qry.Parameters.Clear;
   Qry.SQL.Text :='EXEC SP_YJI_CHECK_WORKLIST :NAME ';
   Qry.Parameters.ParamByName('NAME').Value := MyName;
   Qry.Open;
   if Qry.Eof then  Exit;
   WorkFlag := 'Y';
   NotWorkdate := Qry.FieldByName('notworkdate').AsString;
   Qry.Close;

   if MessageDlg( NotWorkdate +'업무일지가 없습니다  작성하시겠습니까?', mtConfirmation, [mbYes], 0) = mrYes then
   begin

     WorkList.Form3.Show;
   end;

 end;

end;

procedure TForm1.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
  RevMessage, Command,IP: String;
  Ptemp,Ltemp : TComponent;
  State: String;
begin
 //  RevMessage := Socket.ReceiveText;
 //  Memo1.Lines.Add(RevMessage);
 //  Command := SubStr(RevMessage,1,'|');
 //  if Command = 'Monitor' then
 //  begin
     //
 //  end;

end;

procedure TForm1.CultimerTimer(Sender: TObject);
begin
  do_setculdatalogin('IN','','1');
  init_cul;
  do_getCUL;
end;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
   Application.CreateForm(TForm11,Form11);
  if Locate = '0' then Inout.Form11.showModal;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
///
  WorkList.Form3.Show;
end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
  stats.Form14.Show;
end;

procedure TForm1.cxButton4Click(Sender: TObject);
begin
  Panel33.Visible := False;
end;

procedure TForm1.cxButton5Click(Sender: TObject);
begin
  JUN.Form2.Show;
end;

procedure TForm1.cxButton7Click(Sender: TObject);
begin

  if edit_Dnum.Text = '' then begin
    ShowMessage('전화걸 자리를 선택후 다시 시도해주세요');
  end
  else
   begin
     if LGUBaseOpenApi1.IsConnected then begin
        do_LGLogin;
        LGUBaseOpenApi1.Click2Call(StringReplace(edit_Dnum.Text,'-','',[rfReplaceAll]) ,'','');
        //LGUBaseOpenApi1.DisconnectServer;

     end
     else
     begin
        //do_LGLogin;
        LGUBaseOpenApi1.Click2Call(StringReplace(edit_Dnum.Text,'-','',[rfReplaceAll]) ,'','');
       // LGUBaseOpenApi1.DisconnectServer;
     end;


   end;

end;

procedure TForm1.cxButton8Click(Sender: TObject);
begin

  if edit_Pnum.Text = '' then begin
    ShowMessage('전화걸 자리를 선택후 다시 시도해주세요');
  end
  else begin
//    if LGUBaseOpenApi1.IsConnected then begin
//       do_LGLogin;
//      LGUBaseOpenApi1.Click2Call(StringReplace(edit_Pnum.Text,'-','',[rfReplaceAll]) ,'','');
//     // LGUBaseOpenApi1.DisconnectServer;
//    end
//    else
//    begin
      do_LGLogin;
      LGUBaseOpenApi1.Click2Call(StringReplace(edit_Pnum.Text,'-','',[rfReplaceAll]) ,'','');
      //LGUBaseOpenApi1.DisconnectServer;
    end;

//  end;
end;



procedure TForm1.D187MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Paneltemp := TComponent(Sender).Name;
  //ShowMessage(Paneltemp + 'ptemp');
end;


procedure TForm1.do_GetCul;
var
  Count,I: Integer;
  TIMEList: TStringList;

begin
 // Con_Connection;

  Count:= 0;
  I := 0;


  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'EXEC SP_IW_S_SEATCULJANG :NAME,:DATE';

  Qry.Parameters.ParamByName('NAME').Value := MyName;
  Qry.Parameters.ParamByName('DATE').Value := DateToStr(culjangdate.Date);
 // ShowMessage(qry_CUL.Parameters.ParamByName('DATE').Value);

  Qry.Open;

  if Qry.Eof then  Exit;
  for Count := 0 to Qry.RecordCount-1 do
    begin
      TIMELIST := TStringList.Create;
      TIMELIST.Clear;
      try
        TIMELIST.Delimiter := ',';
        TIMELIST.DelimitedText := Qry.FieldByName('TIME').AsString;

        for I := 0 to TIMELIST.Count-1 do
          begin

            if TIMELIST[I] = '08' then
            begin
               Grid_cul.Cells[1, 1] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 1] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 1] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else  if TIMELIST[I] = '09' then
            begin
              if Grid_cul.Cells[1,1] = '' then begin

               Grid_cul.Cells[1, 1] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 1] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 1] := Qry.FieldByName('GUBUNCODE').AsString;
              end;
            end

            else if TIMELIST[I] = '10' then
            begin
               Grid_cul.Cells[1, 2] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 2] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 2] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '11' then
            begin
               Grid_cul.Cells[1, 3] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 3] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 3] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '12' then
            begin
               Grid_cul.Cells[1, 4] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 4] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 4] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '13' then
            begin
               Grid_cul.Cells[1, 5] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 5] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 5] := Qry.FieldByName('GUBUNCODE').AsString;
            end
               else if TIMELIST[I] = '14' then
            begin
               Grid_cul.Cells[1, 6] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 6] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 6] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '15' then
            begin
               Grid_cul.Cells[1, 7] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 7] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 7] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '16' then
            begin
               Grid_cul.Cells[1, 8] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 8] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 8] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '17' then
            begin
               Grid_cul.Cells[1, 9] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 9] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 9] := Qry.FieldByName('GUBUNCODE').AsString;
            end
            else if TIMELIST[I] = '18' then
            begin
               Grid_cul.Cells[1, 9] := Qry.FieldByName('GUBUN').AsString;
               Grid_cul.Cells[2, 9] := Qry.FieldByName('ID').AsString;
               Grid_cul.Cells[3, 9] := Qry.FieldByName('GUBUNCODE').AsString;
            end;
          end;
      finally
        TIMEList.Free;
      end;
      Qry.Next;
    end;
//    Grid_cul.me
//    Grid_cul.MergeColumnCells(1, True);
//   DisCon_Connection;
end;




procedure TForm1.do_getTodayCul;
var
  Count: Integer;
begin
  Grid_TodayCul.Clear;
  Grid_TodayCul.RowCount := 1;
  Grid_TodayCul.ColCount := 3;
  Grid_TodayCul.RowCount := 2;
  Grid_TodayCul.FixedRows  := 1;
  Grid_TodayCul.ColWidths[0] := 90;
  Grid_TodayCul.ColWidths[1] := 110;
  Grid_TodayCul.ColWidths[2] := 80;

  Grid_TodayCul.Cells[0, 0] := '이름';
  Grid_TodayCul.Cells[1, 0] := '감정서번호';
  Grid_TodayCul.Cells[2, 0] := '출장지';

  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'EXEC SP_IW_S_TODAYCULJANG';
  Qry.Open;
  if Qry.Eof then Exit;
  Grid_TodayCul.RowCount := Qry.RecordCount + 1;
  for Count := 1 to Grid_TodayCul.RowCount -1 do
    begin
      Grid_TodayCul.Cells[0, Count] := Qry.FieldByName('name').AsString;
      Grid_TodayCul.Cells[1, Count] := Qry.FieldByName('Docid').AsString;
      Grid_TodayCul.Cells[2, Count] := Qry.FieldByName('AS2').AsString;
      Qry.Next;
     end;
end;

procedure TForm1.do_getwork;
var
  Count: Integer;
begin
//////직원무상태
 // Con_Connection;
  Grid_Work.ColCount := 5;
  Grid_Work.RowCount := 2;
  Grid_Work.FixedRows := 1;
  Grid_Work.Cells[0,0] := '감정서번호';
  Grid_Work.Cells[1,0] := '건명';
  Grid_Work.Cells[2,0] := '평가사';
  Grid_Work.Cells[3,0] := '상태';
  Grid_Work.Cells[4,0] := '출장일';
  Grid_Work.ColWidths[0] := 100;
  Grid_Work.ColWidths[1] := 100;
  Grid_Work.ColWidths[2] := 50;
  Grid_Work.ColWidths[3] := 100;
  Grid_Work.ColWidths[4] := 80;
  with  Qry do begin
    SQL.Clear;

    SQL.Text := 'SELECT Ex.Docid,EX.LStatus,Ex.CustName,Ex.Manager , B.CulJangDate FROM APW_MasterEX EX , dbo.APW_IW_BAEJUNG_DETAIL B WHERE EX.MasterID = B.MasterID AND EX.charge = :worker and ex.Status < 72 ';
    Parameters.ParamByName('worker').Value := MyName;

    Open;
     if Eof then begin
      Grid_Work.Cells[0,1] := '없음';
      exit;

    end;
    Grid_Work.RowCount := RecordCount + 1;

    for Count := 1 to Grid_Work.RowCount-1 do begin
      Grid_Work.Cells[0,Count] := FieldByName('Docid').AsString;
      Grid_Work.Cells[1,Count] := FieldByName('CustName').AsString;
      Grid_Work.Cells[2,Count] := FieldByName('Manager').AsString;
      Grid_Work.Cells[3,Count] := FieldByName('LStatus').AsString;
      Grid_Work.Cells[4,Count] := FieldByName('CulJangDate').AsString;
      Next;
    end;
  end;
//  DisCon_Connection;
end;

procedure TForm1.do_GetWorkdata;
var
  persongubun: String;
begin
  //Con_Connection;
  Qry.SQL.Clear;
  Qry.SQL.Text := 'SELECT appraisal_FL FROM  TMWCMN_USR_BAC_INFO where emp = :emp and office_Id = 10';
  Qry.Parameters.ParamByName('emp').Value := MyName;
  Qry.Open;

  persongubun :=  Qry.FieldByName('appraisal_FL').AsString;
 // DisCon_Connection;

  if persongubun = '0' then begin
    /////평가사
    do_getworkjuju;
    //Grid_cul.Visible := True;
  end
  else begin
    ////// 직원
    ///
    do_getwork;   ////나중에 변경
    //Grid_cul.Visible := False;

  end;
end;

procedure TForm1.do_GetWorkJUJU;
var
  Count: Integer;
begin
//////주주평가사 업무상태
//  Con_Connection;
  Grid_Work.ColCount := 4;
  Grid_Work.RowCount := 2;
  Grid_Work.FixedRows := 1;
  Grid_Work.Cells[0,0] := '감정서번호';
  Grid_Work.Cells[1,0] := '건명';
  Grid_Work.Cells[2,0] := '담당자';
  Grid_Work.Cells[3,0] := '상태';
  Grid_Work.ColWidths[0] := 110;
  Grid_Work.ColWidths[1] := 100;
  Grid_Work.ColWidths[2] := 50;
  Grid_Work.ColWidths[3] := 100;
  with  Qry do begin
    SQL.Clear;
    SQL.Text := 'SELECT Docid, LStatus, CustName, charge FROM APW_MasterEX WHERE Manager = :juju  and Office = :Office and receiptdate between getdate()-30 and getdate()';
    Parameters.ParamByName('juju').Value := MyName;
    Parameters.ParamByName('Office').Value := '10';
    Open;
     if Eof then begin
      Grid_Work.Cells[0,1] := '없음';
      exit;

    end;
    Grid_Work.RowCount := RecordCount + 1;

    for Count := 1 to Grid_Work.RowCount-1 do begin
      Grid_Work.Cells[0,Count] := FieldByName('Docid').AsString;
      Grid_Work.Cells[1,Count] := FieldByName('CustName').AsString;
      Grid_Work.Cells[2,Count] := FieldByName('charge').AsString;
      Grid_Work.Cells[3,Count] := FieldByName('LStatus').AsString;
      Next;
    end;
  end;

//  DisCon_Connection;
end;


procedure TForm1.do_LGLogin;

begin
 // ShowMessage(Mytel);
  LGUBaseOpenApi1.LoginServer(Mytel,'password123#','112.222.102.170');
  Memo1.Lines.Add(Mytel);
end;

procedure TForm1.do_Login;
begin
 //
 do_SETState(1);
 do_setculdatalogin('IN','','1');
end;

procedure TForm1.do_Logout;
begin
  //ShowMessage('Logout');
  do_SETState(9);
  do_setculdatalogin('OUT','','9');
end;

procedure TForm1.do_setcul(LIST: TStringList; FLAG, ID, GUBUN: string;ListCount: Integer);
var
  Count: Integer;
begin
  LIST.Delimiter := ',';
 // Con_Connection;
  with Qry do
  begin
    SQL.Clear;
    Parameters.Clear;
    for Count := 0 to ListCount-1 do
    begin

      SQL.Text := 'EXEC APW_IW_SEAT_CULJANG_IUD :FLAG, :ID, :NAME, :DATE, :TIME, :GUBUN, :DOCID, :CULWHERE,'+
      ' :REG,:EUB, :CUSTCODE, :BIGO, :GUBUNCODE';

      Parameters.ParamByName('FLAG').Value := FLAG;
      Parameters.ParamByName('ID').Value := StrToInt(ID);
      Parameters.ParamByName('NAME').Value := MyName;
      Parameters.ParamByName('DATE').Value := DateToStr(culjangdate.Date);
      Parameters.ParamByName('TIME').Value := LIST[Count];

      if Mode = 4 then  Parameters.ParamByName('GUBUN').Value := '기타'
      else Parameters.ParamByName('GUBUN').Value := combo_Gubun.Text;

      Parameters.ParamByName('DOCID').Value := '';

      if Mode = 4 then  Parameters.ParamByName('CULWHERE').Value := '기타'
      else Parameters.ParamByName('CULWHERE').Value := edit_where.Text;


      Parameters.ParamByName('REG').Value := '';
      Parameters.ParamByName('EUB').Value := '';
      Parameters.ParamByName('CUSTCODE').Value := '';
      if GUBUN = '4' then  Parameters.ParamByName('BIGO').Value := '기타'
      else   Parameters.ParamByName('BIGO').Value := memo_bigo.Text;

       Parameters.ParamByName('GUBUNCODE').Value := GUBUN;
     // ShowMessage( FLAG+ '||||||\'+GUBUN);
      ExecSQL;
    end;
  end;
 // DisCon_Connection;
   ///////////////////
end;

procedure TForm1.do_setculdatalogin(FLAG, ID, GUBUN: String);
var
  hour,checkhour,date: string;
  TIME,GUBUNCODE: STring;
  inthour, Count: Integer;
  TIMELIST: TStringList;
  GUBUNresult :Boolean;
begin
///////////////로그인및 계속 사무실있을때 체크

  TIME := '';
  GUBUNCODE :='';
  GUBUNresult := False;
  hour := '';
  date := '';
  hour := FormatDateTime('hh',Now);
  date := FormatDateTime('YYYY-MM-DD',Now);
  inthour := StrToInt(hour);
  checkhour := IntToStr(inthour-1);
 // Con_Connection;
  if checkhour = '8' then  checkhour := '08'
  else if checkhour = '9' then checkhour := '09';
  //ShowMessage(checkhour);
  TIMELIST := TStringList.Create;
  TIMELIST.Clear;
  TIMELIST.Delimiter := ',';
   ////전에 데이터 확인

   Qry.SQL.Clear;
   Qry.Parameters.Clear;
   Qry.SQL.Text := 'SELECT * FROM APW_IW_SEAT_CULJANG WHERE NAME =:NAME AND DATE = :DATE AND GUBUNCODE =:GUBUN AND (TIME = :TIME or TIME =:TIME2) order by TIME';
   Qry.Parameters.ParamByName('NAME').Value := MyName;
   Qry.Parameters.ParamByName('DATE').Value := date;
   Qry.Parameters.ParamByName('GUBUN').Value := GUBUN;
   Qry.Parameters.ParamByName('TIME').Value :=  checkhour;
   Qry.Parameters.ParamByName('TIME2').Value := hour;
   Qry.Open;
   if Qry.Eof then
   begin

   end
   else
   begin
    Qry.First;

     ///위에가 사무실이면 아래는 시간안찍히고 사무실만 써진다
        TIME := Qry.FieldByName('TIME').AsString;
      // ShowMessage(TIME+'||||||||'+hour);
        GUBUNCODE := Qry.FieldByName('GUBUNCODE').AsString;
        if (StrToInt(TIME) = StrToInt(hour)-1) and (GUBUNCODE = '1') then
        begin
          GUBUNresult := True;
        end;
     end;
  // if GUBUNresult then Exit;
     //qry_cul2.First;

    Qry.SQL.Clear;
    Qry.Parameters.Clear;

    Qry.SQL.Text := 'EXEC APW_IW_SEAT_CULJANG_IUD :FLAG, :ID, :NAME, :DATE, :TIME, :GUBUN, :DOCID, :CULWHERE, :REG,:EUB, :CUSTCODE, :BIGO, :GUBUNCODE';
    Qry.Parameters.ParamByName('FLAG').Value := 'IN';
    if ID = '' then Qry.Parameters.ParamByName('ID').Value := 0
    else  Qry.Parameters.ParamByName('ID').Value := ID;
    Qry.Parameters.ParamByName('NAME').Value := MyName;
    Qry.Parameters.ParamByName('DATE').Value := date;
    Qry.Parameters.ParamByName('TIME').Value := hour ;
    if  (GUBUNCODE = '1')  and (hour = '12')  and ( GUBUNresult = False) then   Qry.Parameters.ParamByName('GUBUN').Value := TimeToStr(Now)+' 점심시간'
    else if (GUBUNresult) and (hour = '12') then Qry.Parameters.ParamByName('GUBUN').Value :=' 점심시간'
    else if (GUBUNresult) then Qry.Parameters.ParamByName('GUBUN').Value := ' 사무실'
    else if  (not GUBUNresult) AND  (GUBUN = '1') then Qry.Parameters.ParamByName('GUBUN').Value := TimeToStr(Now)+' 사무실'


    else if (FLAG = 'OUT')and (GUBUN = '9') then  Qry.Parameters.ParamByName('GUBUN').Value :=  TimeToStr(Now)+' 퇴근';

    Qry.Parameters.ParamByName('DOCID').Value := '';
    Qry.Parameters.ParamByName('CULWHERE').Value := edit_where.Text;
    Qry.Parameters.ParamByName('REG').Value := '';
    Qry.Parameters.ParamByName('EUB').Value := '';
    Qry.Parameters.ParamByName('CUSTCODE').Value := '';
    Qry.Parameters.ParamByName('BIGO').Value := memo_bigo.Text;
    Qry.Parameters.ParamByName('GUBUNCODE').Value := GUBUN;
    Qry.ExecSQL;
 //   DisCon_Connection;
end;


procedure TForm1.do_SetPrinter(Sender: TObject);
var
  PrinterIP, temp : string;
  FileName,bit: string;
begin

/////
 bit := '';
 PrinterIP := '';
 FileName := '';
 if IsWindows64 then bit := '64'
 else bit := '32';
 PrinterIP := TComponent(Sender).Name;
 FileName := '/c \\server\Data1\printbat\'+ PrinterIP+'-' + bit+'.bat';
  if Application.MessageBox( '프린터를 설치하시겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES then
  begin
   if not FileExists('C:\Windows\System32\prnport.vbs') then
      CopyFile(PChar('\\server\Data1\Printbat\prnport.vbs'), PChar('C:\Windows\System32\prnport.vbs'), False);
     //ShowMessage(FileName);
      ShellExecute(Handle, 'open', PChar('cmd.exe'), PChar(FileName), nil, SW_SHOW);

  end;

end;

procedure TForm1.do_SETState(State: Integer);
begin
//
 Qry.SQL.Clear;
 Qry.Parameters.Clear;
 Qry.SQL.Text := 'EXEC SP_IW_U_SEATSTATE :UID, :UName, :Gubun';
 Qry.Parameters.ParamByName('UID').Value := MYIP;
 Qry.Parameters.ParamByName('UName').Value := MyName;
 Qry.Parameters.ParamByName('Gubun').Value := State;
 Qry.ExecSQL;

end;

procedure TForm1.do_Tray;
begin
//
   New(NotifyStruc);
   NotifyStruc^.cbSize := SizeOf(NotifyStruc^);
   NotifyStruc^.Wnd := Handle;
   NotifyStruc^.uID := 1;
   NotifyStruc^.uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
   NotifyStruc^.uCallbackMessage := WM_MYMESSAGE; {User defined message}
   NotifyStruc^.hIcon :=  Form1.Image1.Picture.Icon.Handle;
   NotifyStruc^.szTip := 'DAEHWA SEAT';
end;

procedure TForm1.do_varsion;
begin
//
  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text :='UPDATE Seat_Userinfo set Version = :Version , lastlogin_date = getdate() where Uname = :Name';
  Qry.Parameters.ParamByName('Version').Value := '1.3';
  Qry.Parameters.ParamByName('Name').Value := MyName;
  Qry.ExecSQL;
end;

procedure TForm1.edit_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin

    btn_FindClick(Sender);
    Key := #0;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  do_Logout;
end;

procedure TForm1.FormCreate(Sender: TObject);

begin

  Get_MyData;
  WorkFlag := 'N';

end;

procedure TForm1.FormShow(Sender: TObject);

begin

    NotWorkdate := '';
    // 시스템 레지스터에  multicid.ocx 를 등록하라

    ComObj.RegisterComServer( '\\server\data1\LGUBaseOpenApi.OCX' );

   do_Tray;
   do_Login;
  // ShowMessage(MyName);
   Get_data;
   do_getTodayCul;
   do_GetWorkdata;
   do_LGLogin;
   culjangdate.Date := Now;
   init_cul;
   do_GetCul;
   do_varsion;
   TIMELISTM := TStringList.Create;
   if (MyName = '이일우') or (MyName = '유재인') or (MyName = '이혜원')or (MyName = '정우종')or (MyName = '업무부장') or (MyName = '남연재') or (MyName = '서완석') then
     begin
       JUN.Form2.Show;
       cxButton5.Visible := True;
     end;
   if (MyTeam = 'J1') or (MyTeam = 'P1')or (MyTeam = 'J2')  then
   begin
       WorkTong.Form4.Show;
   end;
   cxButton2.Visible := True;
   //CHK_workList;
//      btn_MMS.Visible := False;
//   if (MyName='이정윤') or (MyName='구한나') or (MyName='이현희')  or(MyName='임정미') or(MyName='박민주') or(MyName='김경희')      then
//   begin
//      cxButton2.Visible := False;
//      btn_MMS.Visible := True;
//
//   end;
//    if (MyName='이일우') or (MyName='안창덕') or (MyName='유재인') or(MyName='남연재') then
//   begin
//      cxButton2.Visible := True;
//      btn_MMS.Visible := False;
//
//   end


//
  if WorkFlag = 'N' then
  begin
     CHK_workList;
  end;

end;

procedure TForm1.Get_data;
var
  sql,Compo: String;
  i: Integer;
  temp: TComponent;
begin
  //Con_Connection;


  Qry.SQL.Clear;
  Qry.SQL.Add('SELECT a.* FROM WorkGubun a, SEAT_Userinfo b where a.UserID = b.UID ');
  Qry.Open;
  if Qry.Eof then  Exit;

  while not Qry.Eof do
     begin

         temp := FindComponent('p'+Qry.FieldByName('UserID').AsString);


         if temp <> nil then
       begin
         case Qry.FieldByName('Gubun').AsInteger of
          1: TPanel(temp).Color := clSkyBlue;      //입실
          2: TPanel(temp).Color := $00FF8CC6;     //출장
          3: TPanel(temp).Color := $009797FF;     //휴가
          4: TPanel(temp).Color := $002DBF3C;     //교육
          5: TPanel(temp).Color := $00A4FFFF;     //NPL
          6: TPanel(temp).Color := clMoneyGreen;     //회의중
          7: TPanel(temp).Color := clSkyBlue;     //자리비움
          8: TPanel(temp).Color := $00FFBBFF;     //다른용무중
          9: TPanel(temp).Color := clScrollBar;     //퇴근
         end;
       end;
        temp := FindComponent('D'+Qry.FieldByName('UserID').AsString);


         if temp <> nil then
       begin
         case Qry.FieldByName('Gubun').AsInteger of
          1: TPanel(temp).Color := clSkyBlue;      //입실
          2: TPanel(temp).Color := $00FF8CC6;     //출장
          3: TPanel(temp).Color := $009797FF;     //휴가
          4: TPanel(temp).Color := $002DBF3C;     //교육
          5: TPanel(temp).Color := $00A4FFFF;     //NPL
          6: TPanel(temp).Color := clMoneyGreen;     //회의중
          7: TPanel(temp).Color := clSkyBlue;     //자리비움
          8: TPanel(temp).Color := $00FFBBFF;     //다른용무중
          9: TPanel(temp).Color := clScrollBar;     //퇴근
         end;
       end;
    Qry.Next;
  end;
 // DisCon_Connection;
end;

procedure TForm1.Get_MyData;
var
  IPTemp: String;
begin;

  if Ping then
  begin
    IPTemp := IdIPWatch1.LocalIP;
    MyIP := SubStr(IPTemp,4,'.');
    Locate := SubStr(IPTemp,3,'.');
    Qry.SQL.Clear;
    Qry.SQL.Text := 'SELECT Uname,Udtel, team_name  FROM Seat_UserInfo WHERE UID = :UID';
    Qry.Parameters.ParamByName('UID').Value := MyIP;

    Qry.Open;
    if Qry.Eof then exit;
    MyName := Qry.FieldByName('Uname').AsString;
    Mytel := Qry.FieldByName('Udtel').AsString;
    MyTeam := Qry.FieldByName('team_name').AsString;
  end
  else
  begin
    ShowMessage('인터넷이 연결안되어있습니다');
    Exit;
  end;

end;

procedure TForm1.Grid_culGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign := taCenter;
  VAlign := vtaCenter;
//
end;

procedure TForm1.Grid_TodayCulGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign := taCenter;
  VAlign := vtaCenter;
end;

procedure TForm1.Grid_WorkSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  if ARow > 0 then Exit;
  Edit1.Text  := Grid_Work.Cells[0, ARow];
end;

procedure TForm1.init_cul;
begin
  Grid_cul.ClearAll;
  Grid_cul.RowCount := 10;
  Grid_cul.ColCount := 4;

  Grid_cul.RowHeights[0] := 35;
  Grid_cul.RowHeights[1] := 35;
  Grid_cul.RowHeights[2] := 35;
  Grid_cul.RowHeights[3] := 35;
  Grid_cul.RowHeights[4] := 35;
  Grid_cul.RowHeights[5] := 35;
  Grid_cul.RowHeights[6] := 35;
  Grid_cul.RowHeights[7] := 35;
  Grid_cul.RowHeights[8] := 35;
  Grid_cul.RowHeights[9] := 35;
 // Grid_cul.RowHeights[10] := 35;

  Grid_cul.Cells[0, 0] := 'Time';
  Grid_cul.Cells[1, 0] := '상 태';
  Grid_cul.Cells[0, 1] := '9시~10시 ';
  Grid_cul.Cells[0, 2] := '10시~11시';
  Grid_cul.Cells[0, 3] := '11시~12시';
  Grid_cul.Cells[0, 4] := '12시~13시';
  Grid_cul.Cells[0, 5] := '13시~14시';
  Grid_cul.Cells[0, 6] := '14시~15시';
  Grid_cul.Cells[0, 7] := '15시~16시';
  Grid_cul.Cells[0, 8] := '16시~17시';
  Grid_cul.Cells[0, 9] := '17시~18시';
 // Grid_cul.Cells[0, 10] := '18시~19시';

  Grid_cul.ColWidths[0] := 100;
  Grid_cul.ColWidths[1] := 180;
  Grid_cul.ColWidths[2] := 0;
  Grid_cul.ColWidths[3] := 0;
end;


function TForm1.InternetCon: Boolean;
var
   dwConnectionTypes: DWORD;
begin
 if(InternetGetConnectedState(@dwConnectionTypes, 0)) then
 begin
   if((dwConnectionTypes and INTERNET_CONNECTION_MODEM)      <> 0)then Result := True;
   if((dwConnectionTypes and INTERNET_CONNECTION_LAN)        <> 0)then Result := True;
   if((dwConnectionTypes and INTERNET_CONNECTION_PROXY)      <> 0)then Result := True;
   if((dwConnectionTypes and INTERNET_CONNECTION_MODEM_BUSY) <> 0)then Result := True;
   if((dwConnectionTypes and INTERNET_RAS_INSTALLED)         <> 0)then Result := True;
   if((dwConnectionTypes and INTERNET_CONNECTION_OFFLINE)    <> 0)then Result := True;
   if((dwConnectionTypes and INTERNET_CONNECTION_CONFIGURED) <> 0)then Result := True;
 end
 else Result := False;
end;



procedure TForm1.p187Click(Sender: TObject);
var
  CompName,temp: String;
  jpgImage: TJPEGImage;
  ptemp: TComponent;
begin

  if cxPageControl2.ActivePage = cxTabSheet6  then  cxPageControl2.ActivePage := cxTabSheet5;

  edit_name.Text := '';
  edit_grade.Text := '';
  edit_Pnum.Text := '';
  temp := TComponent(Sender).Name;
  CompName := Trim( StringReplace(temp,'p','',[rfReplaceAll]));

 // if (StrToInt(CompName) > 255)  then exit;//빈자리 예외처리


     Qry.SQL.Clear;
     Qry.Parameters.Clear;
     Qry.SQL.Text := 'SELECT UName, Ugrade, UDtel, UPtel FROM Seat_UserInfo  WHERE UID = :UID';
     Qry.Parameters.ParamByName('UID').Value := CompName;
     Qry.Open;
     Qry.First;
     if not Qry.Eof then
     begin
        edit_name.Text := Qry.FieldByName('UName').AsString;
        edit_grade.Text := Qry.FieldByName('Ugrade').AsString;
        edit_Dnum.Text := Qry.FieldByName('UDtel').AsString;
        edit_Pnum.Text := Qry.FieldByName('UPtel').AsString;

     end;

    jpgImage := TJPEGImage.Create;
    jpgImage.LoadFromFile('\\server\DATA1\프로그램\daehwa\'+edit_name.Text+'.jpg');
 /// ShowMessage(edit_name.Text);

    Image2.Picture.Assign(jpgImage);

//  Image2.Picture.Assign(jpgImage);
    ptemp := FindComponent('p'+CompName);

  TPanel(ptemp).Color := $6666CC;
  pictime.Enabled := True;  /////////////////////////

  jpgImage.Free;


 // PageControl1.ActivePage := TabSheet1;


end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //위에 Panel 잡고 움직임
  ReleaseCapture;
  SendMessage(Handle,WM_NCLBUTTONDOWN,HTCAPTION,0);
end;

procedure TForm1.pictimeTimer(Sender: TObject);
begin
   Get_data;
  // Memo1.Lines.Add(IntToStr(pictime.Interval));
   pictime.Enabled := False;
end;

function TForm1.Ping: Boolean;
var
  IcmpClient: TIdIcmpClient;
begin
  Result := False;
  IcmpClient := TIdIcmpClient.Create(nil);
  IcmpClient.ReceiveTimeout := 1000;
  IcmpClient.Host := '74.125.128.94';
  IcmpClient.PacketSize := 24;
  try
    IcmpClient.Ping;
    if IcmpClient.ReplyStatus.ReplyStatusType  = rsEcho then Result := True;

  finally
    IcmpClient.Free;
  end;


end;

procedure TForm1.RxClock1Alarm(Sender: TObject);
var
 result: string;
begin
  result := '';
 Qry.SQL.Clear;
 Qry.Parameters.Clear;
 Qry.SQL.Text := 'EXEC SP_IW_CHECK_WORK :NAME';
 Qry.Parameters.ParamByName('NAME').Value := MyName;
 Qry.Open;
 if Qry.Eof then Exit;

 result := Qry.FieldByName('Result').AsString;

 if result = 'DESK' then
 begin
    if MessageDlg('탁상업무일지를 저장하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
       WorkList.Form3.Show;
    end;
 end
 else if result = 'NO' then
      begin
         if MessageDlg('업무일지 시간이 8시간이 안됩니다 작성하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
           WorkList.Form3.Show;
        end;
      end;

 // Qry.Close;

end;

procedure TForm1.RxClock3Alarm(Sender: TObject);
begin
  CHK_workList;
end;

procedure TForm1.ScreenShot(x, y, Width, Height: integer; bm: TBitMap);
var
  dc: HDC;
  lpPal : PLOGPALETTE;
begin
  if ((Width = 0) OR (Height = 0)) then
     exit;

  bm.Width := Width;
  bm.Height := Height;

{get the screen dc}
  dc := GetDc(0);
  if (dc = 0) then
     exit;

{do we have a palette device?}
  if (GetDeviceCaps(dc, RASTERCAPS) AND RC_PALETTE = RC_PALETTE) then
  begin
  {allocate memory for a logical palette}
     GetMem(lpPal, sizeof(TLOGPALETTE) + (255 * sizeof(TPALETTEENTRY)));

  {zero it out to be neat}
     FillChar(lpPal^, sizeof(TLOGPALETTE) + (255 * sizeof(TPALETTEENTRY)), #0);

  {fill in the palette version}
     lpPal^.palVersion := $300;

  {grab the system palette entries}
     lpPal^.palNumEntries := GetSystemPaletteEntries(dc, 0, 256, lpPal^.palPalEntry);

     if (lpPal^.PalNumEntries <> 0) then
     begin
    {create the palette}
       bm.Palette := CreatePalette(lpPal^);
     end;

    FreeMem(lpPal, sizeof(TLOGPALETTE) + (255 * sizeof(TPALETTEENTRY)));
  end;

{copy from the screen to the bitmap}
  BitBlt(bm.Canvas.Handle, 0, 0, Width, Height, Dc, x, y, SRCCOPY);

{release the screen dc}
  ReleaseDc(0, dc);
end;

procedure TForm1.SEATTimeTimer(Sender: TObject);
begin
  Get_data;
  do_getTodayCul;
end;

function TForm1.SubStr(Str: string; const Position: integer;
  const Delimiter: string): string;
var
  Strlen,ZeichenIdx,SubIdx,kompos:integer;
begin

    Result:='';
    Str:=Str+Delimiter;
    StrLen:=Length(Str);
    ZeichenIdx:=1;
    SubIdx:=1;
    While ZeichenIdx<=StrLen do
    begin
      KomPos:=Pos(Delimiter,Str);
      if KomPos<>0 then
      begin
        if SubIdx=Position then
        begin
          result:=Copy(Str,1,KomPos-1);
          break;
        end;
        delete(Str,1,KomPos);
        inc(SubIdx);
      end;
    inc(ZeichenIdx);
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
//var
//  Bitmap: TBitmap;
begin
//  Bitmap := TBitmap.Create;

//  try
//
//    if (MyName = '') then
//    begin
//
//     ScreenShot(-1920,0,3840,1080,Bitmap);
//     Bitmap.SaveToFile('\\server\data1\GPKI\certificate\Class1\'+FormatDateTime('yyyy-mm-dd-hh-nn-ss',Now)+'nnn'+'.bmp');
//
//   end;
//    if (MyName = '') then
//    begin
//
//     ScreenShot(-1920,0,3840,1080,Bitmap);
//     Bitmap.SaveToFile('\\server\data1\GPKI\certificate\Class1\'+FormatDateTime('yyyy-mm-dd-hh-nn-ss',Now)+'nnn'+'.bmp');
//
//   end;

//   finally
//     FreeAndNil(Bitmap);
// end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  if (MyName  = '이일우' ) or (MyName = '유재인') or (MyName = '남연재')then
  begin
    //
  end
  else
  begin

    Qry.SQL.Clear;
    Qry.Parameters.Clear;
    Qry.SQL.Text := 'UPDATE SEAT_USERINFO set Bigo = :Bigo Where Uname = :name';
    Qry.Parameters.ParamByName('Bigo').Value := ActiveCaption;
    Qry.Parameters.ParamByName('name').Value := MyName;
   // if MyName <> '' then  Qry.ExecSQL;

  end;
end;



procedure TForm1.TrayMessage(var Msg: TMessage);
begin
   if (Msg.LParam=WM_LBUTTONDOWN) then
     begin
        If (Form1.Visible=false) then
           begin
              Form1.Visible:=true;
              ShowWindow(Application.Handle,SW_SHOW);
           end
     end;
end;

procedure TForm1.WMQueryEndSession(var Msg: TMessage);
begin
  inherited;
  Application.Terminate;
  Msg.Result :=  Longint(True);
  //   if (Msg.WParam=SC_CLOSE) then
//    Msg.Result:=-1;
end;


function TForm1.IsAlpha(str: string): boolean;
begin
  try

    StrToInt(str);

    result:=false;     //문자

  except

    result:=true;  //숫자

end;
end;


procedure TForm1.LGUBaseOpenApi1SendLoginResultEvent(ASender: TObject;
  var bstrLoginResult: WideString);
begin
//
end;

procedure TForm1.LGUBaseOpenApi1SendRingEvent(ASender: TObject; var bstrRingEvent: WideString);
var
  NUM,CallNUM: String;
begin

   do_LGLogin;
  NUM := SubStr(bstrRingEvent,7,'|');
 // Memo1.Lines.Add('Num = ' + NUM);
   //ShowMessage(NUM);
 // Memo1.Lines.Add('ring = ' +bstrRingEvent);
  CallNUM := SubStr(NUM,2,':');
// Memo1.Lines.Add('CALLNM = ' + CallNUM);
// if CallNUM.Length > 4 then begin
    //ShowMessage(CallNUM);
    Qry.SQL.Clear;
    Qry.Parameters.Clear;
    Qry.SQL.Text := 'SELECT Uname FROM Seat_UserInfo WHERE Udtel = :DTEL or replace(Uptel,''-'' , '''') =  :PTEL';
   // ShowMessage(Qry.SQL.Text);
    Qry.Parameters.ParamByName('DTEL').Value := CallNUM;
    Qry.Parameters.ParamByName('PTEL').Value := CallNUM;

    Qry.Open;
    if Qry.Eof then  exit;
    //ShowMessage(QueryClient.FieldByName('Uname').AsString);
    Qry.First;

   // Memo1.Lines.Add('전화건사람 : ' + Qry.FieldByName('name').AsString);

    MSNPopUp1.Text := Qry.FieldByName('Uname').AsString + '님전화.';
    MSNPopUp1.ShowPopUp;
// end;
end;

procedure TForm1.ManGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
//
end;

procedure TForm1.ManGrid2CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
  if (ARow > 0 ) and (ACol = 1) then  CanEdit := True;

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
var
  replacetmp: String;
begin
  //
  replacetmp := '';
  // temp := TComponent(Sender).Name;
   ShowMessage(Paneltemp);
   replacetmp := StringReplace(Paneltemp,'D','',[rfReplaceAll]);
end;

procedure TForm1.N1Click(Sender: TObject);
var
  RowCount,endtime: Integer;
 // TIMEList: TStringList;
begin
  Mode := 1;
  RowCount := 0;
  Panel22.Visible:= True;
 // TIMELIST := TStringList.Create;
  TIMELISTM.Clear;
  for RowCount := 1 to Grid_cul.RowCount -1 do
    begin
      if Grid_cul.IsSelected(1,RowCount) then
      begin
        if RowCount = 1 then TIMELISTM.Add('09')
        else TIMELISTM.Add(IntToStr(RowCount+8));
      end;
    end;
    if  Grid_cul.Cells[1,(StrToInt(TIMELISTM[0])-8)] = '' then
    begin
      combo_Gubun.ItemIndex := 0;
      edit_where.Text := '';
      memo_bigo.Text := '';
    end;
   // ShowMessage('ERROR');
    edit_start.Text := TIMELISTM[0];

//    edit_end.Text := TIMELIST[TIMELIST.Count-1];
    endtime := StrToInt(TIMELISTM[TIMELISTM.Count-1]) +1;
    edit_end.Text := IntToStr(endtime);
end;

procedure TForm1.N2Click(Sender: TObject);
begin

//   if (Edit1.Text= '' ) or (Edit1.Text = '없음' ) then
//   begin
//      ShowMessage('입력할 감정서번호가 없습니다');
//      Exit;
//
//   end;
//   Qry.SQL.Clear;
//   Qry.Parameters.Clear;
//   Qry.SQL.Text  := 'SELECT Culjangdate FROM dbo.APW_IW_BAEJUNG_DETAIL Where docid = :docid ';
//   Qry.Parameters.ParamByName('docid').Value := Edit1.Text;
//   Qry.Open;
//   if Qry.Eof then Exit;
//   edit_culdate.Date := Qry.FieldByName('Culjangdate').AsDateTime;
end;

procedure TForm1.N3Click(Sender: TObject);
var
  RowCount: Integer;
begin
 // Con_Connection;
  Mode := 3;
  RowCount := 0;
  TIMELISTM.Clear;
   for RowCount := 0 to Grid_cul.RowCount-1 do
     begin
       if Grid_cul.IsSelected(1, RowCount) then
       begin
          if Grid_cul.Cells[3, RowCount] = '9' then
          begin
            ShowMessage('Logout DATA는 삭제 안됩니다');
            Exit;
          end;
          Qry.SQL.Clear;
          Qry.Parameters.Clear;
          Qry.SQL.Text := 'DELETE FROM APW_IW_SEAT_CULJANG where ID = :ID AND NAME = :NAME';
          if  Grid_cul.Cells[2, RowCount] <> '' then begin
            Qry.Parameters.ParamByName('ID').Value := Grid_cul.Cells[2, RowCount];
            Qry.Parameters.ParamByName('NAME').Value := MyName;
            Qry.ExecSQL;
          end;



       end;
     end;
   //  DisCon_Connection;
    init_cul;
    do_getCUL;
end;


procedure TForm1.N5Click(Sender: TObject);
var
  RowCount: Integer;
begin
 // Con_Connection;
  //휴가
   Mode := 4;
   TIMELISTM.Clear;
   for RowCount := 1 to Grid_cul.RowCount -1 do
    begin
      if Grid_cul.IsSelected(1,RowCount) then
      begin
        if RowCount = 1 then TIMELISTM.Add('09')
        else TIMELISTM.Add(IntToStr(RowCount+8));
      end;
    end;
  // ShowMessage(TIMELIST.Text);
 // DisCon_Connection;
   do_setcul(TIMELISTM,'IN','0','4',TIMELISTM.Count);

   init_cul;
    do_getCUL;
end;

function TForm1.IsWindows64: Boolean;

type

  TIsWow64Process = function( // Type of IsWow64Process API fn

    Handle: Windows.THandle; var Res: Windows.BOOL

  ): Windows.BOOL; stdcall;

var

  IsWow64Result: Windows.BOOL; // Result from IsWow64Process

  IsWow64Process: TIsWow64Process; // IsWow64Process fn reference

begin

  // Try to load required function from kernel32

  IsWow64Process := Windows.GetProcAddress(

    Windows.GetModuleHandle('kernel32'), 'IsWow64Process'

  );

  if Assigned(IsWow64Process) then

  begin

    // Function is implemented: call it

    if not IsWow64Process(

      Windows.GetCurrentProcess, IsWow64Result

    ) then

      raise SysUtils.Exception.Create('IsWindows64: bad process handle');

    // Return result of function

    Result := IsWow64Result;

  end

  else

    // Function not implemented: can't be running on Wow64

    Result := False;

end;

end.
