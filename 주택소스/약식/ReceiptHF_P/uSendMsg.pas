unit uSendMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ScktComp, DB, kbmMemTable, kbmMWCustomConnectionPool,
  kbmMWCustomDataset, kbmMWClientDataset;

type
  TfrmSendmsg = class(TForm)
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    ClientSocket1: TClientSocket;
    qrySaveMsgLog: TkbmMWClientQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSendmsg: TfrmSendmsg;

implementation
uses
  Dm, userData,uMain;

{$R *.dfm}

procedure TfrmSendmsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSendmsg.FormDestroy(Sender: TObject);
begin
  frmSendmsg := nil;
end;

procedure TfrmSendmsg.RzBitBtn2Click(Sender: TObject);
var
  msg : string;
begin { TODO :
공사로 상태 메세지 보내기
log 남기기. }


  Case  Tcontrol(sender).Tag of
    1 : begin
      msg := 'aa';
    end;
    2: begin
      msg := 'bb';
    end;
    3: begin

    end;
    4 : begin

    end;
  end;

  ShowMessage(msg);

  with qrySaveMsgLog do
  begin
    //
  end;
end;

end.
