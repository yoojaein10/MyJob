{*

  KHFCPool.

  Woo YongUo
  http://www.bestchoice.co.kr

*}

unit KHFCPool;

interface

uses
	ComObj, ActiveX, Windows, SyncObjs, Classes,
	BlckSock, WinSock, SysUtils, XMLDoc, XMLIntf, Variants,
  DBAccess, MSAccess;

type

	TUpdateEvent = procedure(nActThreads, nCurWorks, nCurThreads: integer) of object;
	TProcessEvent = procedure(ASock: TTCPBlockSocket; ADBConnection: TMSConnection) of object;
	TErrorEvent = procedure(AE: Exception) of object;

	TTcpDaemon = class;

	TWorkerThread = class(TThread)
    private
    FMSConnection: TMSConnection;
    FHost: string;
    FUser: string;
    FPwd: string;
    FTcpDaemon: TTCPDaemon;
		FWorkerSocket: TTCPBlockSocket;
	protected
		procedure Execute; override;
	public
		constructor Create(ATcpDaemon: TTCPDaemon; FHostString: string);
    destructor Destroy; override;
	end;

	TAcceptThread = class(TThread)
  private
    FTcpDaemon: TTCPDaemon;
    FPort: integer;
    FSock: TTCPBlockSocket;
	protected
		procedure Execute; override;
	public
		constructor Create(ATcpDaemon: TTcpDaemon; APort: integer);
		destructor Destroy; override;
	end;

	TTCPDaemon = class(TObject)
    private
		FAcceptthread: TAcceptThread;
		FGType: integer;
		FinPort: integer;
		FoutPort: integer;
		FoutIP: string;
		FIOCPHandle: THandle;
    FMaxThreadsInPool: integer;
    FMinThreadsInPool: integer;
		FCurThreadsInPool: integer;
		FActThreadsInPool: integer;
		FIdleTimeOut: integer;
		FCurWorksInPool: integer;
		FCRTSection: TCriticalSection;
		FTerminateEvent: TSimpleEvent;
		FServiceTerminateEvent: TSimpleEvent;
    FWorkerThreads: TList;
    FOnUpdateEvent: TUpdateEvent;
		FOnProcessEvent: TProcessEvent;
		FOnErrorEvent: TErrorEvent;
		FErrorException: Exception;
		FHost: string;
		FUser: string;
		FPwd: string;
		FActive: boolean;
		procedure IncActThreadsInPool;
		procedure DecActThreadsInPool;
		procedure IncCurThreadsInPool;
		procedure DecCurThreadsInPool;
		procedure IncCurWorksInPool;
		procedure DecCurWorksInPool;
		procedure SyncAtualiza;
		procedure SyncErros;
	public
		constructor Create;
		destructor Destroy; override;
		property Active: boolean read FActive write FActive;
		property GType: integer read FGType write FGType;
		property inPort: integer read FinPort write FinPort;
		property outPort: integer read FoutPort write FoutPort;
		property outIP: string read FoutIP write FoutIP;
		property MaxThreadsInPool: integer read FMaxThreadsInPool write FMaxThreadsInPool;
		property MinThreadsInPool: integer read FMinThreadsInPool write FMinThreadsInPool;
		property IdleTimeOut: integer read FIdleTimeOut write FIdleTimeOut;
		property Host: string read FHost write FHost;
		property User: string read FHost write FHost;
		property Pwd: string read FHost write FHost;
		property OnUpdate: TUpdateEvent read FOnUpdateEvent write FOnUpdateEvent;
		property OnProcess: TProcessEvent read FOnProcessEvent write FOnProcessEvent;
		property OnError: TErrorEvent read FOnErrorEvent write FOnErrorEvent;
		procedure Start;
		procedure Stop;
		procedure WaitForTerminate;
		procedure Config;
	end;

implementation

uses
  Dialogs;

{ TTCPDaemon }
const
	KILL_THREAD = $7fffffff;

procedure TTCPDaemon.DecActThreadsInPool;
begin
	InterlockedDecrement(FActThreadsInPool);
end;

procedure TTCPDaemon.DecCurWorksInPool;
begin
	InterlockedDecrement(FCurWorksInPool);
end;

procedure TTCPDaemon.DecCurThreadsInPool;
begin
	InterlockedDecrement(FCurThreadsInPool);
end;

destructor TTCPDaemon.Destroy;
begin

  FWorkerThreads.Free;
  FCRTSection.Free;
  FTerminateEvent.Free;
  FServiceTerminateEvent.Free;

inherited;

end;

procedure TTCPDaemon.IncActThreadsInPool;
begin
	InterlockedIncrement(FActThreadsInPool);
end;

procedure TTCPDaemon.IncCurWorksInPool;
begin
	InterlockedIncrement(FCurWorksInPool);
end;

procedure TTCPDaemon.IncCurThreadsInPool;
begin
	InterlockedIncrement(FCurThreadsInPool);
end;

procedure TTCPDaemon.SyncAtualiza;
begin

  if Assigned(OnUpdate) then
    OnUpdate(FActThreadsInPool, FCurWorksInPool, FCurThreadsInPool);

end;

procedure TTCPDaemon.Start;
var
	nContador: integer;
	Thread: TWorkerThread;
	SystemInfo: TSystemInfo;

begin

  try

    Config;
    GetSystemInfo(SystemInfo);
    FIOCPHandle := 	CreateIoCompletionPort(INVALID_HANDLE_VALUE, 0, 0, SystemInfo.dwNumberOfProcessors);

    if (FIOCPHandle = 0) then
      raise Exception.Create('Erro IOCP Creation');

    for nContador := 0 to FMinThreadsInPool - 1 do begin
      Thread := TWorkerThread.Create(Self, FHost);
      FWorkerThreads.Add(Thread);
      IncCurThreadsInPool;
    end;

    FAcceptthread := TAcceptThread.Create(Self, FinPort);

    Active := True;

  except

    Active := False;
    raise;

  end;

end;

procedure TTCPDaemon.Stop;
begin

  try

    FAcceptThread.FSock.CloseSocket;
    FAcceptthread.Terminate;
    try
      FAcceptthread.WaitFor;
    except
    end;

    CloseHandle(FIOCPHandle);

  finally

    Active := False;
    FServiceTerminateEvent.SetEvent;

  end;

end;

constructor TTCPDaemon.Create;
begin

  try

    FWorkerThreads := TList.Create;
    FCRTSection := TCriticalSection.Create;
    FTerminateEvent := TSimpleEvent.Create;
    FServiceTerminateEvent := TSimpleEvent.Create;

    FHost := '';
    FUser := '';
    FPwd := '';
    FIdleTimeOut := 0;
    FMinThreadsInPool := 0;
    FMaxThreadsInPool := 0;

    inherited;

  except

    raise

  end;

end;

procedure TTCPDaemon.SyncErros;
begin

  if Assigned(FOnErrorEvent) then
    FOnErrorEvent(FErrorException);

end;

procedure TTCPDaemon.WaitForTerminate;
begin

  FServiceTerminateEvent.WaitFor(INFINITE);

end;

procedure TTCPDaemon.Config;
var
	doc: IXMLDocument;
	xnChild, xnGrandchild : IXMLNode;
  nR : Integer;
  cFile : string;

begin

  cFile := ExtractFilePath(ParamStr(0)) + ChangeFileExt(ExtractFileName(ParamStr(0)),'.config');

  doc :=  LoadXMLDocument(cFile);

  if doc.ChildNodes.First <> nil then
  begin
    xnChild := doc.DocumentElement;
    For nR := 0 To xnChild.ChildNodes.count - 1 Do
    begin
      xnGrandchild := xnChild.ChildNodes[nR];   // xnGrandchild.NodeName - item

      //----- DbConnection !
      if xnGrandchild.NodeName = 'DbConnection' then begin

        FHost := VarToStrDef(xnGrandchild.Attributes['Host'],'');
        FUser := VarToStrDef(xnGrandchild.Attributes['User'],'');
        FPwd := VarToStrDef(xnGrandchild.Attributes['Pwd'],'');

      end;

      //----- SocketConnection !
      if xnGrandchild.NodeName = 'SocketConnection' then begin

        if GType = 1 then begin
          FinPort := StrToInt(VarToStrDef(xnGrandchild.Attributes['inPort'],'0'));

          FoutPort := StrToInt(VarToStrDef(xnGrandchild.Attributes['outPort'],'0'));
          FoutIP := VarToStrDef(xnGrandchild.Attributes['outIP'],'0');
        end else begin
          FinPort := StrToInt(VarToStrDef(xnGrandchild.Attributes['KABinPort'],'0'));
          FoutPort := StrToInt(VarToStrDef(xnGrandchild.Attributes['KABoutPort'],'0'));
          FoutIP := VarToStrDef(xnGrandchild.Attributes['KABoutIP'],'0');
        end;

        FMinThreadsInPool := StrToInt(VarToStrDef(xnGrandchild.Attributes['MinThreads'],'0'));
        FMaxThreadsInPool := StrToInt(VarToStrDef(xnGrandchild.Attributes['MaxThreads'],'0'));
        FIdleTimeOut := StrToInt(VarToStrDef(xnGrandchild.Attributes['IdleTimeOut'],'0'));

      end;

    end;

  end;

end;

{ TAcceptThread }

constructor TAcceptThread.Create;
begin

  FTcpDaemon := ATcpDaemon;
  FPort := APort;
  FSock := TTCPBlockSocket.Create;
  FreeOnTerminate := True;

inherited Create(False);

end;

destructor TAcceptThread.Destroy;
begin

  FSock.Free;
inherited;

end;

procedure TAcceptThread.Execute;
var
	ClientSocket: TSocket;
	nContador: integer;

begin

  with FSock do begin

    CreateSocket;

    setLinger(true, 10000);

    bind('0.0.0.0', IntToStr(FPort));
    listen;

    FTcpDaemon.SyncAtualiza;

    repeat
      if CanRead(5000) then begin
        ClientSocket := Accept;
        if ClientSocket <> -1 then begin
          FTcpDaemon.IncCurWorksInPool;
          PostQueuedCompletionStatus(FTcpDaemon.FIOCPHandle, 0, Cardinal(ClientSocket), nil);
        end;
      end
    until Terminated;

    CloseSocket;

    with FTcpDaemon do begin
      FCRTSection.Enter;
      try
        for nContador := FWorkerThreads.Count - 1 downto 0 do
          PostQueuedCompletionStatus(FIOCPHandle, 0, Cardinal(KILL_THREAD), nil);
      finally
        FCRTSection.Leave;
      end;
      WaitForSingleObject(FTerminateEvent.Handle, INFINITE);
    end;

  end;

end;

{ TWorkerThread }

constructor TWorkerThread.Create(ATcpDaemon: TTCPDaemon; FHostString: string);
begin

  FTcpDaemon := ATcpDaemon;
  FHost := FHostString;

  FreeOnTerminate := True;
  inherited Create(False);

end;

destructor TWorkerThread.Destroy;
begin
	inherited;
end;

procedure TWorkerThread.Execute;
var
	Ov: POverlapped;
	Transfered: dword;
	ClientSocket: TSocket;
	Thread: TThread;
	nContador: integer;

begin

  with FTcpDaemon do begin

		if Length(FHost) > 0 then begin
      try
        FMSConnection:= TMSConnection.Create(nil);
        FMSConnection.Server := FHost;
        FMSConnection.Username := FUser;
        FMSConnection.Password := FPwd;
        FMSConnection.Database := 'apworksdw';
       // ShowMessage(FUser);
        FMSConnection.Connect;
      except
      end;
		end;

		while not Terminated do begin

			//----- 이벤트 대기 !
			if not GetQueuedCompletionStatus(FIOCPHandle, Transfered, Cardinal(ClientSocket), Ov, FIdleTimeOut + 500) then begin

				//----- 시간이 만료되었는지 확인 !
				if GetLastError = WAIT_TIMEOUT then begin

					FCRTSection.Enter;

					try
						if (FCurThreadsInPool > FMinThreadsInPool) then
							Terminate;
					finally
	          FCRTSection.Leave;
					end;

    		end else begin
					Terminate;
					Break;
				end;

			end else begin

				//----- Thread 가 살아 있는지 확인!
				if (ClientSocket = KILL_THREAD) then begin
					Terminate;
					Break;
				end;

				//----- Threads 업데이트!
				IncActThreadsInPool;
				DecCurWorksInPool;
				Synchronize(SyncAtualiza);

				FCRTSection.Enter;

				try
					if (FTcpDaemon.FCurThreadsInPool < FTcpDaemon.FMaxThreadsInPool) then begin
						if (FTcpDaemon.FActThreadsInPool = FTcpDaemon.FCurThreadsInPool) then begin
							Thread := TWorkerThread.Create(FTcpDaemon, FTcpDaemon.FHost);
              FWorkerThreads.Add(Thread);
					    IncCurThreadsInPool;
							Synchronize(SyncAtualiza);
						end;
					end;
				finally
	        FCRTSection.Leave;
				end;

	      FWorkerSocket := TTCPBlockSocket.Create;

				with FWorkerSocket do begin
					//----- 메시지 처리 !
					try
						//--- try/except/finally !
						try
							Socket := ClientSocket;
		          GetSins;
							setLinger(true, 10000);

              //FWorkerSocket.Connect('127.0.0.1', IntToStr(FTcpDaemon.outPort));
              //FWorkerSocket.SocksIP   := '127.0.0.1';
              //FWorkerSocket.SocksPort := IntToStr(FTcpDaemon.outPort);

							if Assigned(FOnProcessEvent) then
                FOnProcessEvent(FWorkerSocket,  FMSConnection);
						except

							on e: Exception do begin
								FCRTSection.Enter;
								try
									FErrorException := e;
								finally
									FCRTSection.Leave;
								end;
							  Synchronize(SyncErros);
							end;
						end;

					finally
						DecActThreadsInPool;
			     	CloseSocket;
          end;

				end;
	      FreeAndNil(FWorkerSocket);
				Synchronize(SyncAtualiza);
			end; //if

		end; //while

		if Assigned(FMSConnection) then begin
			FMSConnection.Close;
			FMSConnection.Free;
		end;

		FCRTSection.Enter;

		try
			nContador := FWorkerThreads.IndexOf(Self);
			if nContador >= 0 then
				FWorkerThreads.Delete(nContador);

			DecCurThreadsInPool;
			Synchronize(SyncAtualiza);

			if FCurThreadsInPool = 0 then
        FTerminateEvent.SetEvent;
		finally
      FCRTSection.Leave;
		end;

  end; //with

end;

end.
