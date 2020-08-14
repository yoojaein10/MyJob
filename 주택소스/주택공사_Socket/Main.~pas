unit Main;

interface

uses
	KHFCPool,
	Synsock, BlckSock, StdCtrls, Controls, Classes, StrUtils,
	SysUtils, Windows, Messages, Forms, Dialogs, ExtCtrls, DBAccess, MSAccess,
  KHFC_Protocol, ScktComp, ComCtrls;

type
  TFrmKHFC = class(TForm)
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btnConnect: TButton;
    edtCurWorks: TEdit;
    edtActThreads: TEdit;
    edtCurThreads: TEdit;
    edt1: TEdit;
    btnSend: TButton;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    lbl1: TLabel;
    mmoSend: TMemo;
    pnl5: TPanel;
    pnl6: TPanel;
    lbl5: TLabel;
    mmoReceive: TMemo;
    spl1: TSplitter;
    pnlConType: TPanel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    btn1: TButton;
    CmdServer: TServerSocket;
    btnStatus: TButton;
    edtCMD: TEdit;
    ClientSocket: TClientSocket;
    stat1: TStatusBar;
    ServerSocket: TServerSocket;
    chkSrv: TCheckBox;
    chkClient: TCheckBox;
    chkCMD: TCheckBox;
    btn2: TButton;
    btn3: TButton;
    tmrServer: TTimer;
    Button1: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure CmdServerClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure CmdServerClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure rb1Click(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure SendCMD(cCmd:string);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormDestroy(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure CmdServerListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocketListen(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure tmrServerTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    bActive: boolean;
    procedure AppOnUpdate(nActThreads, nCurWorks, nCurThreads: integer);
    procedure AppOnProcess(ASock: TTCPBlockSocket; ADBConnection: TMSConnection);
    procedure AppOnError(AE: Exception);
    procedure ReceiveKHFProcess(AMSConnection: TMSConnection; APacket: String);
    procedure ReceivePHFProcess(AMSConnection: TMSConnection; APacket: String);
    procedure ClientConnected;
    procedure ServerConnected;
  public
    { Public declarations }
    RcvData : String;  // 두번에 나눠서 오는 걸 합쳐서 받을 변수
    procedure WriteLogToFile(cSndType, cPrdtType, cHead, cBody, cYN: string); // 보금자리 업무 처리
    procedure WriteLog(oMemo : TMemo; cLog : string); // 화면에 로그기록
  end;

var
  FrmKHFC: TFrmKHFC;
  TCP:  TTCPDaemon;
  G_Type : string;
  CliSocket : TClientSocket;
  function Chr1310Check(RPacket : string) : string; //Chr(13) + chr(10) 이 들어있는 경우가 있음.
  procedure SendMsgtoKHFC(s: string);

implementation

uses Data;

{$R *.DFM}

procedure TFrmKHFC.btnConnectClick(Sender: TObject);
begin

  if bActive then begin

    //TCP.Stop;
    //FreeAndnil(Tcp);
    btnConnect.Caption := '연결';
    bActive := false;

  end else begin

    TCP := TTcpDaemon.Create;
    if rb1.Checked then begin
      TCP.GType := 1;
      G_Type := 'KHF';
    end else begin
      TCP.GType := 2;
      G_Type := 'PHF';
    end;

   // TCP.OnUpdate := AppOnUpdate;
   // TCP.OnProcess := AppOnProcess;
   // TCP.OnError := AppOnError;
    //

    TCP.Config;
   //  TCP.Start;
    btnConnect.Caption := '끊기';
    bActive := true;

  end;

  pnlConType.Enabled := not bActive;
  CmdServer.Active := bActive;

  if bActive then begin
    ServerSocket.OnClientDisconnect := ServerSocketClientDisconnect;
    ServerConnected;

    ClientSocket.OnDisconnect := ClientSocketDisconnect;
    ClientConnected;
  end else begin
    ServerSocket.OnClientDisconnect := nil;
    ServerSocket.Close;

    ClientSocket.OnDisconnect := nil;
    ClientSocket.Close;
  end;

  stat1.Panels[0].Text := 'OT : '+ TCP.outIP + '('+IntToStr(TCP.outPort)+')';
  stat1.Panels[1].Text := 'IN : '+ IntToStr(TCP.inPort);

end;

procedure TFrmKHFC.AppOnUpdate(nActThreads, nCurWorks, nCurThreads: integer);
begin

  try

    edtCurWorks.Text := IntToStr(nCurWorks);
    edtActThreads.Text := IntToStr(nActThreads);
    edtCurThreads.Text := IntToStr(nCurThreads);

  except
  end;

end;

procedure TFrmKHFC.AppOnProcess(ASock: TTCPBlockSocket; ADBConnection: TMSConnection);
var
  sock: TTCPBlockSocket;
	s : string;
  r : string;

begin

  with ADBConnection, ASock do begin

    try

      r := RecvPacket(60000);

      if r <> '' then
      WriteLog(mmoReceive, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+ '[' + r + ']');
     // ShowMessage( RightStr(r,12));

      if RightStr(r,14) = 'KHFCREQPOAPA14' then begin  // Pos('KHFCREQPOAPA20', r) > 0  // 감정평가
        s :=          '0014KHFCRESPOAPA14';
        SendMsgtoKHFC(s);
        WriteLog(mmoSend, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now) + s);
      end else if RightStr(r,12) = 'KHFCREQKAA14' then begin // Pos('KHFCREQKAA20', r) > 0 // 연금
        s :=  '0012KHFCRESKAA14';
        SendMsgtoKHFC(s);
        WriteLog(mmoSend, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now) + s);
      end else if r <> '' then begin
        if G_Type = 'KHF' then
          ReceiveKHFProcess(ADBConnection, r)
        else
          ReceivePHFProcess(ADBConnection, r)
        ;
      end;

    except

      on E: Exception do begin
        showmessage(E.Message);
      end;

    end;

  end;

end;

procedure TFrmKHFC.AppOnError(AE: Exception);
begin
  WriteLog(mmoSend, AE.Message);
end;

procedure TFrmKHFC.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // CanClose := not Assigned(TCP);
end;

procedure TFrmKHFC.btnSendClick(Sender: TObject);
var
  sock: TTCPBlockSocket;
  s: string;
begin
  //sock:= ttcpblocksocket.Create;
  try
    //sock.Connect(TCP.outIP, IntToStr(TCP.outPort));
    //sock.SendString(edt1.Text + CRLF);
    SendMsgtoKHFC(edt1.Text);
    WriteLog(mmoSend, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now) + edt1.Text);
    //s := sock.recvstring(100);
    //mmoReceive.Lines.Add(s);
  finally
    //sock.Free;
  end;
end;

procedure TFrmKHFC.FormCreate(Sender: TObject);
begin
  CliSocket := ClientSocket;
  G_Type := 'KHF';
end;


// 공사에서 보금자리 접수 전문 받음
procedure TFrmKHFC.ReceiveKHFProcess(AMSConnection: TMSConnection; APacket: String);
const
  iHeaderLength = 680;      //전문헤더(680)
var
  sResponse: string;        // 응답용 헤더
  KHFC_Parser: TKHFC_Parser;
  bErrorGubun: TErrorGubun;
  sCode : string;
  cHead, cBody : string;
  oQry : TMSQuery;
begin

  oQry := TMSQuery.Create(nil);
  oQry.Connection := AMSConnection;

  try
    // 처음 4자리는 전문 길이
    if Copy(APacket,5,9) = 'HFTOPAPPR' then begin
      if Length(APacket) <> (StrToInt(Copy(APacket,1,4))+4) then begin// 2000 전문이면 처리 안하고 다음 전문 기다림
        RcvData := Chr1310Check(APacket);
        Exit;
      end else begin  // 0680 전문이면 바로 처리
        APacket := Chr1310Check(APacket);
      end;
    end else begin // 1383바이트 이후 공백 전문이면 합치고 처리
      APacket := RcvData + Chr1310Check(APacket);
      RcvData := '';
    end;

    APacket := Copy(APacket, 5, Length(APacket)); // 헤더 앞 4byte는 전문길이라서 잘라야 한다 ('2000')

    KHFC_Parser := TKHFC_Parser.Create(APacket);
    try
      with KHFC_Parser do begin

        // DB에 패킷을 로그로 저장
        try
           mmoReceive.Lines.Add('G_Type' + G_Type);
          mmoReceive.Lines.Add('KHFC_Parser.FHead' + KHFC_Parser.FHead);
          mmoReceive.Lines.Add('KHFC_Parser.FBody' + KHFC_Parser.FBody);
          WriteLogToFile('R', G_Type, KHFC_Parser.FHead, KHFC_Parser.FBody, 'Y');


        except
          mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'(WriteLogToFile R 오류!)');
        end;

        try
          with Fcom do
          begin

            WriteLog(mmoReceive, '');
            WriteLog(mmoReceive, '');
            WriteLog(mmoReceive, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+ inttostr(length(APacket))+'byte');
            WriteLog(mmoReceive, 'NO :  [' + FComd.co_prev_insp_no+FComD.seq + ']');
            WriteLog(mmoReceive, 'RCV :  [' + APacket + ']');

            // 공사쪽 요청에 대해서만 접수나 취소처리를 함
            if fulltext_code = '0100' then
            begin
              if FComD.cancel_yn = 'Y' then           // 취소여부(Y:의뢰취소요청, N:의뢰요청)
                bErrorGubun := Cancel(oQry)           // 연계 접수 취소
              else if FComD.cancel_yn = 'R' then
                 bErrorGubun := Cancel(oQry)          // 재요청
              else
                bErrorGubun := InsertAppmain(oQry);   // 연계 접수
            end;

            // 응답전문 생성
            sResponse := Copy(APacket, 1, iHeaderLength); //header make
            sResponse[64] := '1';   //응답코드 (전문코드 0100을 0101로, 0110은 0111로 보냄)
            sResponse := MakesResponseHeader(bErrorGubun, sResponse);

            // 응답전문코드
            if fulltext_code = '0100' then
            begin
              sCode := '0101';
              sResponse := '0680'+sResponse;
            end
            else if fulltext_code = '0110' then
            begin
              sCode := '0111';
              sResponse := '0680'+sResponse;
            end;

            // 결과에 대한 응답처리
            if (fulltext_code = '0111') then begin
              with oQry do
              begin
                Close;
                SQL.Text := 'EXEC SP_U_APW_DH_HF_LINK_WorkStatus :Mgr_Code, :WorkStatus, :WorkMsg';
                ParamByName('Mgr_Code').AsString    := FCom.mgr_code;
                ParamByName('WorkStatus').AsString  := FCom.response_code;
                ParamByName('WorkMsg').AsString     := Trim(FCom.error_msg1);
                Execute;
              end;
            end;

            // 공사에서 의뢰한 전문이 아니면 응답 안함
            if fulltext_code <> '0100' then Exit;

            SendMsgtoKHFC(sResponse);
            mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'('+sCode+') :  [' + sResponse + ']');

            try
              // DB에 발신 로그 저장
              WriteLogToFile('S', G_Type, sResponse, '', 'Y');
            except
              mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'(WriteLogToFile S 오류!');
            end;

          end;
        except
          on E: Exception do
          begin
            ErrorLog(FComd.co_prev_insp_no+FComD.seq, 'ReceiveKHFProcess', APacket, E.Message);
            mmoSend.Lines.add('ReceiveKHFProcess(ERROR) :  [' + E.Message + ']');
          end;
        end;
      end;
    finally
      FreeAndNil(KHFC_Parser);
    end;
  finally
    oQry.Free;
  end;
end;

// 공사에서 연금 접수 전문 받음
procedure TFrmKHFC.ReceivePHFProcess(AMSConnection: TMSConnection; APacket: String);
const
  iKHeaderLength = 200;      //전문헤더(680)
var
  sResponse: string;        // 응답용 헤더
  KHFC_Parser: TKHFC_Parser;
  bErrorGubun: TErrorGubun;
  sCode, ans_req_code : string;
  cHead, cBody : string;
  oQry : TMSQuery;
begin

  oQry := TMSQuery.Create(nil);
  oQry.Connection := AMSConnection;
  try
    // 처음 4자리는 전문 길이
    if Copy(APacket,5,7) = 'HFDAEHW' then begin
      if Length(APacket) <> (StrToInt(Copy(APacket,1,4))+4) then begin// 1200 전문이 아니면 처리 안하고 다음 전문 기다림
        RcvData := Chr1310Check(APacket);
        Exit;
      end else begin
        APacket := Chr1310Check(APacket);
      end;
    end else begin // 1383바이트 이후 공백 전문이면 합치고 처리
      APacket := RcvData + Chr1310Check(APacket);
      RcvData := '';
    end;

    APacket := Copy(APacket, 5, Length(APacket)); // 헤더 앞 4byte는 전문길이라서 잘라야 한다 ('2000')

    KHFC_Parser := TKHFC_Parser.Create(APacket);
    try
      with KHFC_Parser do begin
         mmoReceive.Lines.Add(APacket);
        try
          // DB에 패킷을 로그로 저장
          WriteLogToFile('R', G_Type, KHFC_Parser.FHead, KHFC_Parser.FBody, 'Y');
        except
          mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'(WriteLogToFile R 오류!');
        end;

        try
          with FPHFHead do
          begin

            WriteLog(mmoReceive, '');
            WriteLog(mmoReceive, '');
            WriteLog(mmoReceive, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+ inttostr(length(APacket))+'byte');
            WriteLog(mmoReceive, 'NO :  [' + FPHFHead.app_req_no+ '('+ FPHFBody.DAMBO_NO +')]');
            WriteLog(mmoReceive, 'RCV :  [' + APacket + ']');

            // 공사쪽 요청에 대해서만 접수나 취소처리를 함
            if Pos(req_type, '0100, 0200, 0600, 0650, 0700') > 0 then begin
              bErrorGubun := InsertPHFmain(oQry);   // 연계 접수
            end else if Pos(req_type, '0510') > 0 then begin // 결과(약식) 수신응답전문
              bErrorGubun := updatePHFmain(oQry);
            end;

            ans_req_code := Copy(req_type,1,2)+'10';
            if req_type = '0650' then ans_req_code := '0660';

            // 응답전문 생성
            sResponse := TRXCD//'HFDAEHW' //TRXCD
                        + job_type
                        + '01' //주택공사 발신 00 을 감정기관 발송 01 로 변경
                        + ans_req_code
                        + job_code
                        + '001' //응답코드 데이타송신 041 -> 수신 OK 001
                        + error_msg
                        + app_req_no
                        + app_req_time
                        + mgr_code
                        + FormatDateTime('yyyymmddhhnnss', Now)
                        + mgr_memo
                        + bank_code
                        + '00200'
                        + StringOfChar(' ', 56)
                        ;
            sResponse := '0200'+sResponse;

            SendMsgtoKHFC(sResponse);
            mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'('+app_req_no+') :  [' + sResponse + ']');

            try
              // DB에 발신 로그 저장
              WriteLogToFile('S', G_Type, sResponse, '', 'Y');
            except
              mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'(WriteLogToFile S 오류!');
            end;

          end;
        except
          on E: Exception do
          begin
            ErrorLog(FComd.co_prev_insp_no+FComD.seq, 'ReceivePHFProcess', APacket, E.Message);
            mmoSend.Lines.add('ReceivePHFProcess(ERROR) :  [' + E.Message + ']');
          end;
        end;
      end;
    finally
      FreeAndNil(KHFC_Parser);
    end;
  finally
    oQry.Free;
  end;
end;

procedure TFrmKHFC.WriteLogToFile( cSndType, cPrdtType, cHead, cBody, cYN : string);
var
  oQry : TMSQuery;
begin
  if DM.MSConnection.Connected then begin
    oQry := TMSQuery.Create(nil);
    oQry.Connection := DM.MSConnection;
    oQry.SQL.Text := 'EXEC SP_I_HF_Protocol_Log :Gubun_SendRec, :Gubun_Product, :Header, :body, :SuceessYN';
    oQry.ParamByName('Gubun_SendRec').AsString := cSndType;
    oQry.ParamByName('Gubun_Product').AsString := cPrdtType;
    oQry.ParamByName('Header').AsString := cHead;
    oQry.ParamByName('body').AsString := cBody;
    oQry.ParamByName('SuceessYN').AsString := cYN;
//
//    ShowMessage('cSndType:'+cSndType);
//    ShowMessage('cPrdtType:'+cPrdtType);
//    ShowMessage('cPrdtType:'+cPrdtType);
//    ShowMessage('cHead:'+cHead);
//    ShowMessage('cBody:'+cBody);
    oQry.Execute;
  end;
end;

procedure SendMsgtoKHFC(s:string);
var
  sock : ttcpblocksocket;
  nLen : Integer;
begin

  CliSocket.Socket.SendText(s);
  FrmKHFC.mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+' send '+inttostr(Length(s))+'byte');

//  sock:= ttcpblocksocket.Create;
//  try
//    sock.Connect(TCP.outIP, IntToStr(TCP.outPort));
//    //nLen := Length(s);
//    //s := FormatFloat('0000', nLen)+s;
//    sock.SendString( s + CRLF);
//  finally
//    sock.Free;
//  end;

end;


function Chr1310Check(RPacket : string) : string; //Chr(13) + chr(10) 이 들어있는 경우가 있음.
var
  n13, n10 : integer;
begin
  n13 := 0; n10 := 0;

  repeat
    n13 := pos(chr(13),RPacket);
    if n13 <> 0 then begin
      delete(RPacket,n13,1);
    end;

    n10 := pos(chr(10),RPacket);
    if n10 <> 0 then begin
      delete(RPacket,n10,1);
    end;
  until (n13 = 0) and (n10 = 0);

  result := RPacket;
end;

procedure TFrmKHFC.btn1Click(Sender: TObject);
begin
  if G_Type = 'KHF' then
    ReceiveKHFProcess(DM.MSConnection, edt1.Text)
  else
    ReceivePHFProcess(DM.MSConnection, edt1.Text)
  ;
end;

procedure TFrmKHFC.CmdServerClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
var
  strReceiveText: string;
begin
  strReceiveText := Socket.ReceiveText;      // MASTERID(000000 6자리) + 취소 여부(Y 또는 N)가 넘어옴
  SendCMD(strReceiveText);
end;

procedure TFrmKHFC.SendCMD(cCmd:string);
var
  KHFC_Parser: TKHFC_Parser;
  cHead, cBody : string;
begin
  WriteLog(mmoReceive, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'CMD RCV : ' + cCmd );

   KHFC_Parser := TKHFC_Parser.Create(cCmd, True);
  try
    if G_Type = 'KHF' then begin
      if Length(cCmd) > 8 then begin
        KHFC_Parser.SendDataStatus(cHead, cBody);
      end else begin
        KHFC_Parser.SendData(cHead, cBody);
      end;
    end else begin
        KHFC_Parser.SendPHFData(cHead, cBody);
    end;

    try
      if cBody = 'ERROR' then begin
        mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)
                + 'ERROR ');
      end else begin
        // 접수, 발송 공문 DB에 로그로 저장
        WriteLogToFile('S', G_Type, cHead, cBody, 'Y');
        mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)
                + 'SND : H -' + IntToStr(Length(cHead)) + 'bytes / B -' + IntToStr(Length(cBody)) + 'bytes '
                + cHead + cBody );

      end;

    except
      mmoSend.Lines.add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+'(WriteLogToFile S cmd 오류!');
    end;

  finally
    FreeAndNil(KHFC_Parser);
  end;

end;

procedure TFrmKHFC.CmdServerClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode := 0;
  Socket.Close;
end;

procedure TFrmKHFC.rb1Click(Sender: TObject);
begin
  if rb1.Checked then
    CmdServer.Port := 35000
  else
    CmdServer.Port := 37000;
end;

procedure TFrmKHFC.btnStatusClick(Sender: TObject);
var
  strReceiveText: string;
begin
  strReceiveText := edtCMD.Text;      // MASTERID(000000 6자리) + 취소 여부(Y 또는 N)가 넘어옴
  SendCMD(strReceiveText);
end;

procedure TFrmKHFC.ServerConnected;
begin
  try
    with ServerSocket do
    begin
      if Active = True then Exit;
      Port := TCP.inPort;
      Active := True;
    end;
  except
    on e:Exception do
    begin
      WriteLog(mmoReceive, 'Server Listening Error : '+e.Message);
    end;
  end;
end;

procedure TFrmKHFC.ClientConnected;
begin
  try
    with ClientSocket do
    begin
      if Active = True then Exit;
      Address:= TCP.outIP;
      Port := TCP.outPort;
      Active:= True;
    end;
  except
    on e:Exception do
       WriteLog(mmoReceive, 'KHF Connected Error : '+e.Message);
  end;
end;

procedure TFrmKHFC.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  chkClient.Checked := False;
  ClientConnected;
end;

procedure TFrmKHFC.ServerSocketClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode := 0;
  Socket.Close;
end;

procedure TFrmKHFC.ServerSocketClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  chkSrv.Checked := False;
  WriteLog(mmoReceive, 'Client Disconnected From KHF ('+DateTimeToStr(now)+')');
  tmrServer.Enabled := True;
end;

procedure TFrmKHFC.ServerSocketClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  chkSrv.Checked := True;
  if rb1.Checked then WriteLog(mmoReceive, 'Client Connected From KHF ('+
    DateTimeToStr(now)+')')
  else
    WriteLog(mmoReceive, 'Client Connected From PHF ('DateTimeToStr(now)+')');
  tmrServer.Enabled := False;
end;

procedure TFrmKHFC.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  r, s: string;
begin
  try

    r := Socket.ReceiveText;
   // ShowMessage(r);
    if r <> '' then
    WriteLog(mmoReceive, FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now)+ '[' + r + ']');

    if RightStr(r,14) = 'KHFCREQPOAPA14' then begin  // Pos('KHFCREQPOAPA20', r) > 0  // 감정평가
      s := '0014KHFCRESPOAPA14';
      SendMsgtoKHFC(s);
      mmoSend.Lines.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now) + s);
    end else if RightStr(r,12) = 'KHFCREQKAA14' then begin // Pos('KHFCREQKAA20', r) > 0 // 연금
      s := '0012KHFCRESKAA14';
      SendMsgtoKHFC(s);
      mmoSend.Lines.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss : ', Now) + s);
    end else if r <> '' then begin
      if G_Type = 'KHF' then
        ReceiveKHFProcess(DM.MSConnection, r)
      else
        ReceivePHFProcess(DM.MSConnection, r);
    end;

  except

    on E: Exception do begin
      showmessage(E.Message);
    end;

  end;
end;

procedure TFrmKHFC.FormDestroy(Sender: TObject);
begin
  CmdServer.Close;
  FreeAndNil(TCP);
end;

procedure TFrmKHFC.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  chkClient.Checked := True;
  if rb1.Checked then
    WriteLog(mmoReceive, 'KHF connected ( '+Socket.RemoteAddress+' : '+inttostr(
      Socket.RemotePort)+' )')
  else
    WriteLog(mmoReceive, 'PHF connected ( '+Socket.RemoteAddress+' : '+inttostr(
      Socket.RemotePort)+' )')
end;

procedure TFrmKHFC.CmdServerListen(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  chkCMD.Checked := True;
  WriteLog(mmoReceive, 'CMD Server Listening ('+inttostr(Socket.LocalPort)+') ');
end;

procedure TFrmKHFC.ServerSocketListen(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  WriteLog(mmoReceive, 'Server Listening ('+inttostr(Socket.LocalPort)+') ');
end;

procedure TFrmKHFC.btn2Click(Sender: TObject);
begin
  SendCMD(edtCMD.Text);
end;

procedure TFrmKHFC.btn3Click(Sender: TObject);
var s, d : string;
begin
  s := Format('%f', [StrToFloat(edtCMD.Text)]);
  WriteLog(mmoReceive, s);
  s := StringReplace(s, '.', '', [rfreplaceall]);
  WriteLog(mmoReceive, s);
  //s := RightStr('000000000000000'+s, 15);
  s := RightStr(StringOfChar('0',15)+s, 15);
  WriteLog(mmoReceive, s);
end;

procedure TFrmKHFC.tmrServerTimer(Sender: TObject);
begin
  if ServerSocket.Active = False then
    ServerConnected;
end;

procedure TFrmKHFC.WriteLog(oMemo: TMemo; cLog: string);
begin
  if oMemo.Lines.Count>2000 then
    oMemo.Lines.Clear;
  oMemo.Lines.Add(cLog);
end;

procedure TFrmKHFC.Button1Click(Sender: TObject);
var
   s: string;
begin
   s:= '';
  s := '2000HFTOPAPPRA0142710149000744                    201301071703270100000000000000                                                                                                                        ';
  s := s + '                                                                                                                                                                                                        ';
  s := s + '                                                                                                                                                                                                        ';
  s := s + '                                                                                2000TRAA13005400001N한국주택금융공사              본사                                    WEB                           ';
  s := s + '1688-8114           090383150송남진                                            0640000000  0116966528  6902001690200제주특별자치도 제주시 해안동                                                        ';
  s := s + '                2344제일일출연립101-104                                                                                                                                                                 ';
  s := s + '                                                   송남진         ' +
      '                                   1202000740000000120130107        ' +
      '우대형    00034000000없음03000000000000000000000000  ';

   ReceiveKHFProcess(DM.MSConnection, s);
end;

end.
