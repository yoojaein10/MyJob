//------------------------------------------------------------------------------
//
// Unit        : Unit1.pas
// Author      :
// Description :
//  가접수 입력화면
// History
//   V 1.00 : 2017.11.16 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit uinput;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, cxGraphics,
  StdCtrls, RzCmboBx, RzDBCmbo, RzRadChk, RzDBChk, cxLabel, RzPanel,
  RzButton, RzDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, RzCommon, DBCtrls, Mask, RzEdit, RzDBBnEd, RzLabel,
  DB, kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, ActnList, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, RzDBLbl, RzTabs, ScktComp, cxCurrencyEdit, cxDBEdit,
  cxMemo, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, cxButtonEdit, idMultipartformData,
  ComCtrls;

type
  TXForm1 = class(TXForm)
    RzFC: TRzFrameController;
    pnButton: TRzPanel;
    qryMain: TkbmMWClientQuery;
    dsMain: TDataSource;
    ActionList1: TActionList;
    btnSave: TRzBitBtn;
    btnClose: TRzBitBtn;
    aSave: TAction;
    aEdit: TAction;
    btnCancel: TRzBitBtn;
    btnSendHF: TRzBitBtn;
    ClientSocket1: TClientSocket;
    aSendHF: TAction;
    edtbtnFileSelect: TcxButtonEdit;
    od: TOpenDialog;
    btnUpfile: TRzBitBtn;
    IdHTTP1: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    pnFileUp: TRzPanel;
    ProgressBar1: TProgressBar;
    btnEdit: TRzBitBtn;
    qryPDF: TkbmMWClientQuery;
    RzBitBtn1: TRzBitBtn;
    lbPdf: TRzLabel;
    btnFindAddr: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel44: TRzLabel;
    RzLabel2: TRzLabel;
    edtGAMJUMG_NO: TRzDBEdit;
    edtBIGO: TRzDBEdit;
    edtGAMJUMG_GA: TcxDBCurrencyEdit;
    edtDAMBO_NO: TRzDBEdit;
    qryLog: TkbmMWClientQuery;
    Panel1: TPanel;
    Label1: TLabel;
    qryMainSeq: TLargeintField;
    qryMainP_Receipt_Seq: TLargeintField;
    qryMainDAMBO_NO: TStringField;
    qryMainGAMJUMG_NO: TStringField;
    qryMainGAMJUMG_GA: TCurrencyField;
    qryMainBIGO: TStringField;
    qryMainDUMMY: TStringField;
    qryMainInUserSeq: TIntegerField;
    qryMainInUser: TStringField;
    qryMainInUserOffice: TStringField;
    qryMainInUserHostName: TStringField;
    qryMainInUserIP: TStringField;
    qryMainInDate: TDateTimeField;
    procedure XFormShow(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure aSendHFExecute(Sender: TObject);
    procedure btnUpfileClick(Sender: TObject);
    procedure edtbtnFileSelectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Integer);
    procedure aEditExecute(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    FMainSeq : integer;
    FMainDAMBO_NO : string;

    procedure ProcessParameters(ALink: TXLink);
    Procedure DataFind;

    function FileSize(fileName : wideString): int64;

    function Datachk:boolean;

  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

Uses
  DM, CommModule, UserData, Gscode06;

var
    sFileSize : Int64 = 0;
    flag : Integer = 0;

{$R *.DFM}

//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TXForm1;
begin
  Form := TXForm1.Create(Application);

  try
    AHandle := Form.SetParentControl(AParent);
    Form.ProcessParameters(ALink);
    Form.ShowModal;
  finally
    FreeAndNil(Form);
  end;

end;

{ TXForm1 }

//
// 초기 파라메터 처리 루틴
//


procedure TXForm1.ProcessParameters(ALink: TXLink);
begin
  if Alink <> nil then
  Begin
    FMainSeq := Alink.ParamByInteger('MainSeq');
    FMainDAMBO_NO := Alink.ParamByString('MainDAMBO_NO');
  End;
end;

procedure TXForm1.XFormShow(Sender: TObject);
begin

  with qryMain do
  begin
    query.Text := 'Exec SP_S_HF_P_TS  :P_Receipt_Seq, :DAMBO_NO';
//    Params.ParamByName('P_Receipt_Seq').AsInteger := FMainSeq;
//    Params.ParamByName('DAMBO_NO').AsString := FMainDAMBO_NO;
    TableName := 'fake_i,SP_U_HF_P_TS,fake_d';
  end;

  //ShowMessage( inttostr(Fmainseq) +#13+FMainDAMBO_NO );

  DataFind;

end;

procedure TXForm1.DataFind;
begin

  with qryMain do
  Begin
    if Active then Close;
    params.ParamByName('P_Receipt_Seq').AsInteger := FMainSeq;
    params.ParamByName('DAMBO_NO').AsString := FMainDAMBO_NO;
    open;
  End;
end;

procedure TXForm1.btnCloseClick(Sender: TObject);
begin
  close;
end;



procedure TXForm1.aSaveExecute(Sender: TObject);
begin
  with qrymain do
  begin

    fieldByName('InUserSeq').AsInteger := userinfo.UID;
    fieldByName('InUser').AsString := userinfo.UserName;
    fieldByName('InUserOffice').AsString := userinfo.Office;
    fieldByName('InUserHostName').AsString := userinfo.ComputerName;
    fieldByName('InUserIP').AsString := userinfo.IP;
  end;
 // qryMain.Post;
  qrymain.Resolve(nil);

  if qrymain.Active then qrymain.Close;
  qrymain.RefreshData;

end;

procedure TXForm1.dsMainStateChange(Sender: TObject);
begin

  if qrymain.State in [dsbrowse] then
  begin
    aEdit.Enabled := True;
    aSave.Enabled := False;
    btnClose.Enabled := True;
    btnCancel.Enabled := False;
    aSendHF.Enabled := True;
  end
  else
  begin
    aEdit.Enabled := False;
    aSave.Enabled := True;
    btnClose.Enabled := False;
    btnCancel.Enabled := True;
    aSendHF.Enabled := False;
  end;

end;

procedure TXForm1.aSendHFExecute(Sender: TObject);
begin

  if Datachk then
  begin
    ShowMessage('필수항목이 누락되었습니다.');
    exit;
  end;

  if Application.MessageBox('주택금융공사로 전송할 자료에 누락 된 사항이 있나 검토 하세요.'+#13+'전송하시겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
  Begin

    ClientSocket1.Address := '10.40.0.248';
    ClientSocket1.Port := 37000;

    if  ClientSocket1.Active Then ClientSocket1.Active := False;

    try
      ClientSocket1.Active := True;
    except on E:Exception do
      ShowMessage('Server 연결실패 ' + E.Message );
    end;
    {
      [연금] - 37000 포트
      000001   6자리 seq   HF_P_Receipt 의 seq.
      Y/N      1자리
    }
  End;

end;


procedure TXForm1.btnUpfileClick(Sender: TObject);
var
  url : string;
  tmpFileName : string;
  sFilePath : string;
  ms : TMemoryStream ;
  Datastream : TIdMultiPartFormDataStream;
begin
//
//  if ( not FileExists(od.filename) ) or ( od.FileName = '') then
//  begin
//    ShowMessage('선택된 파일이 없습니다.');
//    exit;
//  end;
//
//  sFilePath := od.FileName;
//  url := 'http://10.44.254.70:8181/DelphiUp.php';
//  tmpFileName := qrymain.fieldByName('judge_assess_sht_no').AsString + '.PDF';
//
//  qryPDF.Query.Text := 'Exec SP_I_HF_PdfLog :FilePath, :wUser, :Masterid';
//
//  ms := TMemorystream.Create;
//  Datastream := TIdMultiPartFormDataStream.Create;
//
//  try
//    try
//        DataStream.AddFormField('filename', UTF8Encode(tmpFileName) );
//        Datastream.AddFile('upfile', sFilePath, '');
//        idhttp1.Post(url, Datastream, ms);
//        ms.Position := 0;
//
//        qrypdf.Params.ParamByName('FilePath').AsString := tmpFileName;
//        qrypdf.Params.ParamByName('wUser').AsInteger := userinfo.UID;
//        qrypdf.Params.ParamByName('Masterid').AsInteger := qrymain.fieldByName('Masterid').AsInteger;
//        qrypdf.Execute;
//
//    except on E:exception do
//      begin
//        ShowMessage('파일업로드중 Fail  : ' + E.Message)
//      end;
//    end;
//  finally
//    ms.Free;
//    DataStream.Free;
//  end;
end;

procedure TXForm1.edtbtnFileSelectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
//
//  if od.Execute then
//  begin
//    edtbtnFileSelect.Text := od.FileName;
//    sFileSize := FileSize(od.FileName);
//    ProgressBar1.Min := 0;
//    ProgressBar1.max := sFileSize div 1024;
//    flag := 1;
////  end;

end;

function TXForm1.FileSize(fileName: wideString): int64;
var
 sr : TSearchRec;
begin
// if FindFirst(fileName, faAnyFile, sr ) = 0 then
//    result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) + Int64(sr.FindData.nFileSizeLow)
// else
//    result := -1;
// FindClose(sr) ;
end;

procedure TXForm1.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Integer);
begin
//  if (AWorkMode = wmWrite) and (flag = 1)  then
//  begin
//    ProgressBar1.Position :=  AWorkCount div  1024 ;
//  end else if (AWorkMode = wmRead) and (flag = 2)  then
//  begin
//    ProgressBar1.Position := AWorkCount div 1024;
//  end;
//
//  application.ProcessMessages;
end;

procedure TXForm1.aEditExecute(Sender: TObject);
begin
  qryMain.Edit;
end;

procedure TXForm1.btnCancelClick(Sender: TObject);
begin
  qryMain.Cancel;
end;

procedure TXForm1.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  cmd : string;
begin

  if Not ClientSocket1.Active then
  begin
    ShowMessage('HF Server 연결실패  ');
    exit;
  end;

  cmd := Format('%.6d', [qryMain.FieldByName('P_Receipt_Seq').AsInteger]) + 'Y'; //seq  접수의 seq인가  맞다..P_Receipt_Seq
  ClientSocket1.Socket.SendText(cmd);

  /// 로그 남기기.
  with qryLog do
  begin
    query.Text := 'Exec SP_I_HF_StatusLog null, :wUser, :Msg, :PSeq';
    params.ParamByName('wUser').AsInteger := userinfo.UID;
    params.ParamByName('Msg').AsString := userinfo.UserName + ' 연금 탁상을 전송 시도 했습니다.';
    params.ParamByName('Pseq').AsInteger := qrymain.fieldByName('P_Receipt_Seq').AsInteger;
    Execute;
  end;

end;

function TXForm1.Datachk: boolean;
begin
  Result := False;

  if qryMain.FieldByName('DAMBO_NO').asString = '' then Result := True;
  if qryMain.FieldByName('GAMJUMG_NO').asString = '' then Result := True;
  if qryMain.FieldByName('GAMJUMG_GA').asString = '' then Result := True;


end;

End.
