//  Here coding......
//
//

unit uSendMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ScktComp, DB, kbmMemTable, kbmMWCustomConnectionPool,
  kbmMWCustomDataset, kbmMWClientDataset, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, StdCtrls, RzLabel, cxLabel, cxCurrencyEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Mask, RzEdit,
  RzDBEdit, ExtCtrls, cxMemo;

type
  TfrmSendmsg = class(TForm)
    ClientSocket1: TClientSocket;
    qrySaveMsgLog: TkbmMWClientQuery;
    qryUserinfo: TkbmMWClientQuery;
    Panel1: TPanel;
    RzLabel1: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel54: TRzLabel;
    btnSendMsg: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    edtFstatusUsr: TRzDBEdit;
    edtFstatusNo: TRzDBEdit;
    edtprogress_note: TRzDBEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    RzBitBtn2: TRzBitBtn;
    Edt_Bigo: TcxDBMemo;
    dsuserinfo: TDataSource;
    qrypunginfo: TkbmMWClientQuery;
    qrypunginfoFstatusUsr: TStringField;
    qrypunginfoFstatusNo: TStringField;
    qrypunginfoprogress_note: TStringField;
    qrypunginfoMasterid: TLargeintField;
    RzDBEdit1: TRzDBEdit;
    btnSave: TRzBitBtn;
    btnEdit: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSendMsgClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUserTel2KeyPress(Sender: TObject; var Key: Char);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure edtFstatusNoKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    Fmsg : string;
    Fgubun : string;
    function chkData:boolean;
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

procedure TfrmSendmsg.btnSendMsgClick(Sender: TObject);
var
  str : string;
begin

  if Tcontrol(sender).Tag > 1 then
  begin

    if chkData then
    begin

      ShowMessage('����� ����, ��ȭ ��ȣ �����ϴ�.');
      exit;
    end;
  end;

  Case  Tcontrol(sender).Tag of
    1 : begin
      Fmsg := ' ���ñ������翡 �����˸� ����.';
      Fgubun := '001';
    end;
    2: begin
      Fmsg := ' ���ñ������翡 �����˸� ����.';
      Fgubun := '002';
    end;
    3: begin
      Fmsg := ' ���ñ������翡 ����˸� ����.';
      Fgubun := '003';
    end;
    4 : begin
      Fmsg := ' ���ñ������翡 �ۼ��˸� ����.';
      Fgubun := '004';
    end;
    5 : begin
      if  TfrmMain(Self.Owner).qryMain.fieldByName('WorkStatus').AsString <> '���ۿϷ�' then
      begin
        ShowMessage( TfrmMain(Self.Owner).qryMain.fieldByName('WorkStatus').AsString + '�����ڷᰡ ���۵��� �ʾҽ��ϴ�. �����ڷḦ ��������');
        exit;
      end;
      Fmsg := ' ���ñ������翡 �߼۾˸� ����.';
      Fgubun := '005';
    end;
    6: begin
      if  TfrmMain(Self.Owner).qryMain.fieldByName('WorkStatus').AsString ='�߼�' then
      begin
        ShowMessage('�ڷḦ �̹� �߼��Ͽ� ����Ҽ������ϴ�.');
        exit;
      end;
      if Edt_Bigo.Text ='' then
      begin
         ShowMessage('��һ����� �Է��Ͽ��ֽñ�ٶ��ϴ�');
         Exit;
      end;

      Fmsg := '���ñ������翡 ��� �˸� ����';
      Fgubun := '999';

    end;
  end;

  str :=  Fmsg + ' �� �����Ͻðڽ��ϱ�?.' +#13 + '���� �̻� �ܰ��̸� ����� ' +
    '����� ��ȭ��ȣ�� �����ڷῡ �Է�/�������� ���� �Ͽ��� �մϴ�.';

//  if TfrmMain(Self.Owner).qrymain.Active then TfrmMain(Self.Owner).qrymain.Close;
//  TfrmMain(Self.Owner).qrymain.RefreshData;

   
  if Application.MessageBox(pchar(str), 'Ȯ��', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
  begin

    ClientSocket1.Address := '10.40.0.248';
    ClientSocket1.Port := 35000;  //�׽�Ʈ��Ʈ
 

    if  ClientSocket1.Active Then ClientSocket1.Active := False;

    try
      ClientSocket1.Active := True;
    except on E:Exception do
      ShowMessage('Server ������� ' + E.Message );
    end;
  end;

end;

procedure TfrmSendmsg.FormShow(Sender: TObject);
var
  i : integer;
begin

  with qrypunginfo do
  begin
    query.Text := 'Exec SP_S_APW_DH_HF_LINK_MsgInfo :Masterid';
    Params.ParamByName('Masterid').AsInteger := TfrmMain(
      Self.Owner).qryMain.fieldByName('Masterid').AsInteger;
    TableName := 'fake_i,SP_U_APW_DH_HF_LINK_MsgInfo,fake_d';
    Open;

  end;
  with qryUserinfo do
  begin
    if Active Then Close;

    query.Text := 'exec SP_S_APW_DH_HF_LINK :Masterid';
    params.ParamByName('Masterid').AsInteger := TfrmMain(Self.Owner).qryMain.fieldByName('Masterid').AsInteger;
    open;
  end;

  if qryUserinfo.FieldByName('assess_seq').AsString = '005' then
  begin
    btnSendMsg.Enabled := false;
    RzBitBtn3.Enabled := False;
    RzBitBtn4.Enabled := false;
    RzBitBtn5.Enabled := False;
    RzBitBtn1.Enabled := False;
  end;
  if qryUserinfo.FieldByName('assess_seq').AsString = '999' then
  begin
    btnSendMsg.Enabled := false;
    RzBitBtn3.Enabled := False;
    RzBitBtn4.Enabled := false;
    RzBitBtn5.Enabled := False;
    RzBitBtn1.Enabled := False;
  end;


end;

function TfrmSendmsg.chkData: boolean;
begin
  result := False;
  if edtFstatusUsr.Text ='' then  result := True;
  if edtFstatusNo.Text  = '' then result := True;

//  if qryUserinfo.fieldByName('FstatusUsr').AsString = '' then
//    result := True;
//  if qryUserinfo.fieldByName('FstatusNo').AsString = '' then
//    result := True;



end;

procedure TfrmSendmsg.edtUserTel2KeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9'] then
  else
  begin
    key := #0;
    ShowMessage('���ڸ� �Է��ϼ���.');
  end;
end;

procedure TfrmSendmsg.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  cmd : string;
  qry : TkbmMWClientQuery;
begin



  if Not ClientSocket1.Active then
  begin
    ShowMessage('HF Server �������  ');
    exit;
  end;

  cmd := Format('%.6d', [TfrmMain(Self.Owner).qryMain.fieldByName('Masterid').AsInteger]);

  cmd := cmd + 'Y' + Fgubun;
  ClientSocket1.Socket.SendText(cmd);

  /// �α� �����.
  with qrySaveMsgLog do
  begin
    query.Text := 'Exec SP_I_HF_StatusLog :Masterid, :wUser, :Msg';
    params.ParamByName('wUser').AsInteger := userinfo.UID;
    params.ParamByName('Msg').AsString := userinfo.UserName + ' �����ڸ� ' + Fmsg + ' �� �߽��ϴ�.' ;
    params.ParamByName('Masterid').AsInteger := TfrmMain(Self.Owner).qryMain.fieldByName('Masterid').AsInteger;
    Execute;
  end;

  if (Fgubun = '005') or (Fgubun = '999') then
  begin
    //�ڷ���� ����.
    qry := TkbmMWClientQuery.Create(Nil);
    try
      with qry do
      begin
        qry.QueryService := qrySaveMsgLog.QueryService;
        qry.QueryServiceVersion := qrySaveMsgLog.QueryServiceVersion;
        SessionName := qrySaveMsgLog.SessionName;
        TransportStreamFormat := qrySaveMsgLog.TransportStreamFormat;

        if active then Close;

        query.Text := 'Exec SP_U_APW_DH_HF_LINK_isProcess :Masterid, :isProcess ';

        params.ParamByName('Masterid').AsInteger := TfrmMain(Self.Owner).qryMain.fieldByName('Masterid').AsInteger;
        params.ParamByName('isProcess').AsBoolean := True;
        Execute;
      end;
    finally
      FreeAndNil(qry);
    end;
  end;


end;

procedure TfrmSendmsg.edtFstatusNoKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['0'..'9'] then
  else
  begin
    key := #0;
    ShowMessage('���ڸ� �Է��ϼ���.');
  end;
end;

procedure TfrmSendmsg.btnEditClick(Sender: TObject);
begin
   if qryUserinfo.State in [dsEdit] then qryUserinfo.Edit;
   edtFstatusUsr.Enabled := True;
   edtFstatusNo.Enabled:= True;
   Edt_Bigo.Enabled := True;

end;

procedure TfrmSendmsg.btnSaveClick(Sender: TObject);
begin
    qryUserinfo.Post;
    edtFstatusUsr.Enabled := False;
   edtFstatusNo.Enabled:= False;
   Edt_Bigo.Enabled := False;
end;

end.
