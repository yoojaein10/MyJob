unit http_listen;
 
{$mode objfpc}{$H+}
//{$DEFINE Debug}
 
interface
 
uses
  Classes, SysUtils, blcksock, sockets,
  strutils,
  Synautil;   //needs synapse
 
type
  TPassMessage = procedure(AMsg: string) of object;
 
  TLightWeb = class(TThread)
  private
    _Port: word;
    _PassMessage: TPassMessage;
    procedure AttendConnection(ASocket: TTCPBlockSocket);
    procedure TriggerMessage(AMsg: string);
  protected
    procedure Execute; override;
  public
    constructor Create(APort: word);
    destructor Destroy; override;
    property OnPassMessage: TPassMessage read _PassMessage write _PassMessage;
  end;
 
implementation
 
constructor TLightWeb.Create(APort: word);
begin
  inherited Create(False);
 
  _Port := Aport;
end;
 
procedure TLightWeb.Execute;
var
  ListenerSocket, ConnectionSocket: TTCPBlockSocket;
 
begin
  try
    ListenerSocket := TTCPBlockSocket.Create;
    ConnectionSocket := TTCPBlockSocket.Create;
 
    ListenerSocket.CreateSocket;
    ListenerSocket.setLinger(True, 10);
    ListenerSocket.bind('0.0.0.0', IntToStr(_Port));
    ListenerSocket.listen;
 
    repeat
      if ListenerSocket.canread(1000) then
      begin
        ConnectionSocket.Socket := ListenerSocket.accept;
        WriteLn('Attending Connection. Error code (0=Success): ', ConnectionSocket.lasterror);
        AttendConnection(ConnectionSocket);
        ConnectionSocket.CloseSocket;
      end;
    until Terminated;
 
  finally
    FreeAndNil(ListenerSocket);
    FreeAndNil(ConnectionSocket);
  end;
end;
 
procedure TLightWeb.AttendConnection(ASocket: TTCPBlockSocket);
var
  timeout: integer;
  message: TStringList;
  without_body: word;
  content: word = 0;
 
begin
  timeout := 120000;
  message := TStringList.Create;
 
  try
    try
      {https://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html}
      {message type}
      message.Append(ASocket.RecvString(Timeout));
      {$IF DEFINED(Debug)}
      WriteLn(message.Strings[message.Count - 1]);
      {$EndIF}
 
      {headers}
      repeat
        message.Append(ASocket.RecvString(Timeout));
        WriteLn(message.Strings[message.Count - 1]);
 
        if AnsiContainsText(message.Strings[message.Count - 1], 'Content-Length') then
        begin
          content := StrToInt(copy(message.Strings[message.Count - 1], pos(':', message.Strings[message.Count - 1]) + 1, Length(message.Strings[message.Count - 1])));
        end;
      until message.Strings[message.Count - 1] = '';
 
      {body}
      if content > 0 then
      begin
        without_body := Length(message.Text);
        writeln('content: ' + IntToStr(content) + '|' + 'headers: ' + IntToStr(without_body));
        TriggerMessage('content: ' + IntToStr(content) + '|' + 'headers: ' + IntToStr(without_body));
 
        repeat
          message.Append(ASocket.RecvString(Timeout));
 
          {$IF DEFINED(Debug)}
          writeln('all: ' + IntToStr(length(message.Text)));
          WriteLn(message.Strings[message.Count - 1]);
          writeln(IntToStr(length(message.Text) - without_body - content));
          {$EndIF}
 
        until length(message.Text) - without_body >= content;
      end;
 
      TriggerMessage(message.Text);
      message.Clear;
 
      // Write the headers back to the client
      ASocket.SendString('HTTP/1.0 200' + CRLF);
      ASocket.SendString('Content-type: Text/Html' + CRLF);
      ASocket.SendString('Content-length: 0' + CRLF);
      ASocket.SendString('Connection: close' + CRLF);
      ASocket.SendString('Date: ' + Rfc822DateTime(now) + CRLF);
      ASocket.SendString('Server: Lazarus Synapse' + CRLF);
      ASocket.SendString('' + CRLF);
 
    except
      on E: Exception do
      begin
        TriggerMessage(E.Message);
      end;
    end;
  finally
    FreeAndNil(message);
  end;
end;
 
procedure TLightWeb.TriggerMessage(AMsg: string);
begin
  if Assigned(_PassMessage) then
    _PassMessage(AMsg);
end;
 
destructor TLightWeb.Destroy();
begin
  inherited Destroy;
end;
 
end.