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
  ComCtrls, Shellapi;

type
  TXForm1 = class(TXForm)
    RzFC: TRzFrameController;
    pnButton: TRzPanel;
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
    od: TOpenDialog;
    IdHTTP1: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    btnEdit: TRzBitBtn;
    qryPDF: TkbmMWClientQuery;
    aFindaddr: TAction;
    qrybankp: TkbmMWClientQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsBankP: TDataSource;
    qryMain: TkbmMWClientQuery;
    qryLog: TkbmMWClientQuery;
    qryMainSeq: TLargeintField;
    qryMainP_Receipt_Seq: TLargeintField;
    qryMainDAMBO_NO: TStringField;
    qryMainCTRL_NO_YEAR: TStringField;
    qryMainGAM_GUBUN: TStringField;
    qryMainDOC_DATE: TDateTimeField;
    qryMainMUL_JONG: TStringField;
    qryMainGAMJUNG_RYO: TCurrencyField;
    qryMainPYUNG_SUSURYO: TCurrencyField;
    qryMainPYUNG_SILBI: TCurrencyField;
    qryMainPYUNG_BUGA: TCurrencyField;
    qryMainCANCEL_YN: TStringField;
    qryMainCANCEL_REASON: TStringField;
    qryMainDAMBO_BAS_VLU_KOR: TStringField;
    qryMainDAMBO_BAS_VLU_NUM: TCurrencyField;
    qryMainSOJAE_SIDO: TStringField;
    qryMainSOJAE_GUSIGUN: TStringField;
    qryMainSOJAE_YUBMYEN: TStringField;
    qryMainSOJAE_DONGRI: TStringField;
    qryMainSOJAE_BUNJIGB: TStringField;
    qryMainSOJAE_ADDR_BONBUN: TStringField;
    qryMainSOJAE_ADDR_BUBUN: TStringField;
    qryMainSOJAE_GUNMULNM: TStringField;
    qryMainSOJAE_DONGNO: TStringField;
    qryMainSOJAE_HONO: TStringField;
    qryMainBUILDING_AREA: TFloatField;
    qryMainEXCLUSIVE_M2: TFloatField;
    qryMainEXCLUSIVE_AREA: TFloatField;
    qryMainCOMMON_M2: TFloatField;
    qryMainCOMMON_AREA: TFloatField;
    qryMainLAND_AREA: TFloatField;
    qryMainFLOOR_CNT: TIntegerField;
    qryMainINNER_STRUCTIURE: TStringField;
    qryMainHEAT_TYPE: TStringField;
    qryMainTOT_HOUSE_CNT: TIntegerField;
    qryMainTOT_DONG_CNT: TIntegerField;
    qryMainCOMPLETE_DATE: TDateTimeField;
    qryMainTOT_FLOOR: TIntegerField;
    qryMainSTRUCTURE: TStringField;
    qryMainSP_HOUSE_CNT1: TStringField;
    qryMainSP_HOUSE_CNT2: TStringField;
    qryMainSP_HOUSE_CNT3: TStringField;
    qryMainSTAIR_TYPE: TStringField;
    qryMainDIRECTION: TStringField;
    qryMainPYN_TYPE: TStringField;
    qryMainDOUBLE_FLAG: TStringField;
    qryMainTOT_ROOM_CNT: TIntegerField;
    qryMainPARK_PER_HOUSE: TIntegerField;
    qryMainAPT_BUS_BUBWAY: TStringField;
    qryMainAPT_SCHOOL: TStringField;
    qryMainAPT_NEAR: TStringField;
    qryMainAPT_SURROUND: TStringField;
    qryMainRNT_HOUSE_CNT: TIntegerField;
    qryMainDONG_OFFICE: TStringField;
    qryMainHOST_NAME1: TStringField;
    qryMainHOST_NAME2: TStringField;
    qryMainHOST_NAME3: TStringField;
    qryMainENTER_DATE1: TDateTimeField;
    qryMainENTER_DATE2: TDateTimeField;
    qryMainENTER_DATE3: TDateTimeField;
    qryMainCONFIRM_DATE1: TDateTimeField;
    qryMainCONFIRM_DATE2: TDateTimeField;
    qryMainCONFIRM_DATE3: TDateTimeField;
    qryMainIM_BOAMT1: TCurrencyField;
    qryMainIM_BOAMT2: TCurrencyField;
    qryMainIM_BOAMT3: TCurrencyField;
    qryMainWOLSE1: TCurrencyField;
    qryMainWOLSE2: TCurrencyField;
    qryMainWOLSE3: TCurrencyField;
    qryMainIMCHA1: TStringField;
    qryMainIMCHA2: TStringField;
    qryMainIMCHA3: TStringField;
    qryMainBIGO1: TStringField;
    qryMainBIGO2: TStringField;
    qryMainBIGO3: TStringField;
    qryMainLEASE_CMNT1: TStringField;
    qryMainLEASE_CMNT2: TStringField;
    qryMainLEASE_CMNT3: TStringField;
    qryMainVLU_BAS_DATE: TDateTimeField;
    qryMainVLU_INVST_REM: TStringField;
    qryMainSELL_UPPER: TCurrencyField;
    qryMainSELL_LOWER: TCurrencyField;
    qryMainRENT_UPPER: TCurrencyField;
    qryMainRENT_LOWER: TCurrencyField;
    qryMainGUJO: TStringField;
    qryMainYONGDO: TStringField;
    qryMainELEV_YN: TStringField;
    qryMainBLD_STAT: TStringField;
    qryMainMULGUN_GUBUN: TStringField;
    qryMainDSC: TStringField;
    qryMainVRTL_ACC_ORG_CD: TStringField;
    qryMainVRTL_ACC_NO: TStringField;
    qryMainVRTL_ACC_CUST_NM: TStringField;
    qryMainVALID_STRT_DY: TDateTimeField;
    qryMainVALID_END_DY: TDateTimeField;
    qryMainTRNSFER_AMT: TCurrencyField;
    qryMainDUMMY: TStringField;
    qryMainInUserSeq: TIntegerField;
    qryMainInUser: TStringField;
    qryMainInUserOffice: TStringField;
    qryMainInUserHostName: TStringField;
    qryMainInUserIP: TStringField;
    qryMainInDate: TDateTimeField;
    qryMainPDF: TStringField;
    qryMainMasterID: TLargeintField;
    RzLabel9: TRzLabel;
    RzLabel47: TRzLabel;
    pnFileUp: TRzPanel;
    lbPdf: TRzLabel;
    btnUpfile: TRzBitBtn;
    edtbtnFileSelect: TcxButtonEdit;
    ProgressBar1: TProgressBar;
    btnDownPdf: TRzBitBtn;
    btnBringAp: TRzBitBtn;
    QryPMain: TkbmMWClientQuery;
    QryPMainSeq: TLargeintField;
    QryPMainbigo: TStringField;
    dsPMain: TDataSource;
    QryPMaincharge: TStringField;
    QryPMainworkStatus: TStringField;
    Panel1: TPanel;
    cxLabel1: TRzLabel;
    cxLabel39: TRzLabel;
    cxLabel42: TRzLabel;
    RzLabel44: TRzLabel;
    RzLabel1: TRzLabel;
    cxLabel6: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel27: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel28: TRzLabel;
    RzLabel29: TRzLabel;
    RzLabel30: TRzLabel;
    RzLabel34: TRzLabel;
    RzLabel36: TRzLabel;
    RzLabel37: TRzLabel;
    RzLabel35: TRzLabel;
    RzLabel38: TRzLabel;
    RzLabel41: TRzLabel;
    RzLabel42: TRzLabel;
    RzLabel43: TRzLabel;
    RzLabel46: TRzLabel;
    RzLabel45: TRzLabel;
    RzLabel49: TRzLabel;
    RzLabel50: TRzLabel;
    RzLabel53: TRzLabel;
    RzLabel52: TRzLabel;
    RzLabel51: TRzLabel;
    RzLabel54: TRzLabel;
    RzLabel55: TRzLabel;
    RzLabel56: TRzLabel;
    RzLabel48: TRzLabel;
    RzLabel57: TRzLabel;
    RzLabel59: TRzLabel;
    RzLabel58: TRzLabel;
    RzLabel60: TRzLabel;
    RzLabel61: TRzLabel;
    RzLabel63: TRzLabel;
    RzLabel64: TRzLabel;
    RzLabel67: TRzLabel;
    RzLabel66: TRzLabel;
    RzLabel68: TRzLabel;
    RzLabel69: TRzLabel;
    RzLabel71: TRzLabel;
    RzLabel72: TRzLabel;
    RzLabel70: TRzLabel;
    RzLabel74: TRzLabel;
    RzLabel75: TRzLabel;
    RzLabel76: TRzLabel;
    RzLabel78: TRzLabel;
    RzLabel79: TRzLabel;
    RzLabel22: TRzLabel;
    RzLabel80: TRzLabel;
    RzLabel82: TRzLabel;
    RzLabel83: TRzLabel;
    RzLabel81: TRzLabel;
    RzLabel84: TRzLabel;
    RzLabel88: TRzLabel;
    RzLabel89: TRzLabel;
    RzLabel90: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel39: TRzLabel;
    Label1: TLabel;
    RzLabel16: TRzLabel;
    btnFindAddr: TRzBitBtn;
    edtTOT_FLOOR: TcxDBCurrencyEdit;
    edtSTRUCTURE: TRzDBEdit;
    edtSP_HOUSE_CNT1: TRzDBEdit;
    edtDAMBO_NO: TRzDBEdit;
    edtCTRL_NO_YEAR: TRzDBEdit;
    edtGAM_GUBUN: TcxDBImageComboBox;
    edtDOC_DATE: TRzDBDateTimeEdit;
    edtMUL_JONG: TRzDBEdit;
    edtGAMJUNG_RYO: TcxDBCurrencyEdit;
    edtPYUNG_SUSURYO: TcxDBCurrencyEdit;
    edtPYUNG_SILBI: TcxDBCurrencyEdit;
    edtPYUNG_BUGA: TcxDBCurrencyEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    edtCANCEL_REASON: TRzDBEdit;
    edtDAMBO_BAS_VLU_KOR: TRzDBEdit;
    edtDAMBO_BAS_VLU_NUM: TcxDBCurrencyEdit;
    edtSOJAE_BUNJIGB: TcxDBImageComboBox;
    edtSOJAE_ADDR_BONBUN: TRzDBEdit;
    edtSOJAE_ADDR_BUBUN: TRzDBEdit;
    edtSOJAE_GUNMULNM: TRzDBEdit;
    edtSOJAE_DONGNO: TRzDBEdit;
    edtSOJAE_HONO: TRzDBEdit;
    edtBUILDING_AREA: TcxDBCurrencyEdit;
    edtEXCLUSIVE_M2: TcxDBCurrencyEdit;
    edtEXCLUSIVE_AREA: TcxDBCurrencyEdit;
    edtCOMMON_M2: TcxDBCurrencyEdit;
    edtCOMMON_AREA: TcxDBCurrencyEdit;
    edtLAND_AREA: TcxDBCurrencyEdit;
    edtFLOOR_CNT: TRzDBEdit;
    edtINNER_STRUCTIURE: TRzDBEdit;
    edtHEAT_TYPE: TRzDBEdit;
    edtTOT_HOUSE_CNT: TcxDBCurrencyEdit;
    edtTOT_DONG_CNT: TcxDBCurrencyEdit;
    edtCOMPLETE_DATE: TRzDBDateTimeEdit;
    edtSP_HOUSE_CNT2: TRzDBEdit;
    edtSP_HOUSE_CNT3: TRzDBEdit;
    edtSTAIR_TYPE: TRzDBEdit;
    edtDIRECTION: TRzDBEdit;
    edtPYN_TYPE: TRzDBEdit;
    edtDOUBLE_FLAG: TcxDBImageComboBox;
    edtTOT_ROOM_CNT: TcxDBCurrencyEdit;
    edtPARK_PER_HOUSE: TcxDBCurrencyEdit;
    edtAPT_BUS_BUBWAY: TRzDBEdit;
    edtAPT_SCHOOL: TRzDBEdit;
    edtAPT_NEAR: TRzDBEdit;
    edtAPT_SURROUND: TRzDBEdit;
    edtRNT_HOUSE_CNT: TcxDBCurrencyEdit;
    edtDONG_OFFICE: TRzDBEdit;
    edtHOST_NAME1: TRzDBEdit;
    edtHOST_NAME2: TRzDBEdit;
    edtHOST_NAME3: TRzDBEdit;
    edtENTER_DATE1: TRzDBDateTimeEdit;
    edtENTER_DATE2: TRzDBDateTimeEdit;
    edtENTER_DATE3: TRzDBDateTimeEdit;
    edtCONFIRM_DATE1: TRzDBDateTimeEdit;
    edtCONFIRM_DATE2: TRzDBDateTimeEdit;
    edtCONFIRM_DATE3: TRzDBDateTimeEdit;
    edtIM_BOAMT1: TcxDBCurrencyEdit;
    edtIM_BOAMT2: TcxDBCurrencyEdit;
    edtIM_BOAMT3: TcxDBCurrencyEdit;
    edtWOLSE1: TcxDBCurrencyEdit;
    edtWOLSE2: TcxDBCurrencyEdit;
    edtWOLSE3: TcxDBCurrencyEdit;
    edtIMCHA1: TRzDBEdit;
    edtIMCHA2: TRzDBEdit;
    edtIMCHA3: TRzDBEdit;
    edtBIGO1: TRzDBEdit;
    edtBIGO2: TRzDBEdit;
    edtBIGO3: TRzDBEdit;
    edtLEASE_CMNT1: TRzDBEdit;
    edtLEASE_CMNT2: TRzDBEdit;
    edtLEASE_CMNT3: TRzDBEdit;
    edtVLU_BAS_DATE: TRzDBDateTimeEdit;
    edtVLU_INVST_REM: TcxDBMemo;
    cbMUl_Jong: TcxDBImageComboBox;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzLabel77: TRzLabel;
    RzLabel91: TRzLabel;
    RzLabel92: TRzLabel;
    RzLabel93: TRzLabel;
    RzLabel94: TRzLabel;
    RzLabel95: TRzLabel;
    RzLabel96: TRzLabel;
    RzLabel97: TRzLabel;
    RzLabel98: TRzLabel;
    RzLabel99: TRzLabel;
    RzLabel3: TRzLabel;
    cxLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel32: TRzLabel;
    RzLabel31: TRzLabel;
    RzLabel6: TRzLabel;
    Shape1: TShape;
    RzLabel12: TRzLabel;
    RzLabel25: TRzLabel;
    edtSELL_UPPER: TcxDBCurrencyEdit;
    edtSELL_LOWER: TcxDBCurrencyEdit;
    edtRENT_UPPER: TcxDBCurrencyEdit;
    edtRENT_LOWER: TcxDBCurrencyEdit;
    edtGUJO: TRzDBEdit;
    edtYONGDO: TRzDBEdit;
    edtELEV_YN: TcxDBImageComboBox;
    edtBLD_STAT: TcxDBImageComboBox;
    edtMULGUN_GUBUN: TcxDBImageComboBox;
    edtDSC: TcxDBMemo;
    edtVRTL_ACC_ORG_CD: TRzDBEdit;
    edtVRTL_ACC_NO: TRzDBEdit;
    edtVRTL_ACC_CUST_NM: TRzDBEdit;
    edtVALID_STRT_DY: TRzDBDateTimeEdit;
    edtVALID_END_DY: TRzDBDateTimeEdit;
    edtTRNSFER_AMT: TcxDBCurrencyEdit;
    msg: TcxMemo;
    LubVRTL_ACC_ORG_CD: TcxDBLookupComboBox;
    Edt_Bigo: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    btn_build: TRzBitBtn;
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
    procedure aFindaddrExecute(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure btnDownPdfClick(Sender: TObject);
    procedure btnBringApClick(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure btn_buildClick(Sender: TObject);
  private
    FMainSeq : integer;
    FMainDAMBO_NO : string;

    procedure ProcessParameters(ALink: TXLink);
    Procedure DataFind;

    function FileSize(fileName : wideString): int64;

    function Datachk:boolean ;
    procedure FillData(AMode: string); 

  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

Uses
  DM, CommModule, UserData, StrUtils;

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
    //Form.ShowModal;
    if form.ShowModal = mrOk then
      alink.Result := 1;

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
var
  tmp :string;
begin

  if userinfo.UID = 1119 then
  begin
    msg.Visible := True;
    btnBringAp.Visible := True;
  end else
  begin
    msg.Visible := False;
    btnBringAp.Visible := False;
  end;

  with qryMain do
  begin
    query.Text := 'Exec SP_S_HF_P_Yak :P_Receipt_Seq, :DAMBO_NO';
    TableName := 'fake_i,SP_U_HF_P_Yak,fake_d';
  end;
  DataFind;

  //감정서 번호 채워 주자....
  FillData('F');

  btnCancelClick(btnCancel);

end;

procedure TXForm1.DataFind;
begin

  with qrybankp do
  begin
    if Active Then Close;
    Open;
  end;

  with qryMain do
  begin
    if Active then close;
    params.ParamByName('P_Receipt_Seq').AsInteger := FMainSeq;
    params.ParamByName('DAMBO_NO').AsString := FMainDAMBO_NO;

    try
      open;
    except on E:Exception do
      ShowMessage(E.Message);
    end;
  end;

  with QryPMain do
  begin
    query.Text := 'Exec SP_S_HF_P_Receipt_Bigo :Seq' ;
    TableName := 'fake_i,SP_U_HF_P_Receipt_Bigo,fask_d';
    if Active then close;
    params.ParamByName('Seq').AsInteger := qrymain.fieldByName('P_Receipt_Seq').asinteger;
    open;
  end;

  if qryMain.FieldByName('Pdf').AsString  <> '' then
  lbPdf.Caption := qryMain.FieldByName('PDF').AsString +'첨부';

end;

procedure TXForm1.btnCloseClick(Sender: TObject);
begin
  close;
  ModalResult := mrOk;
end;



procedure TXForm1.aSaveExecute(Sender: TObject);
var
  tmp : string;
begin
  with qrymain do
  begin

    fieldByName('InUserSeq').AsInteger := userinfo.UID;
    fieldByName('InUser').AsString := userinfo.UserName;
    fieldByName('InUserOffice').AsString := userinfo.Office;
    fieldByName('InUserHostName').AsString := userinfo.ComputerName;
    fieldByName('InUserIP').AsString := userinfo.IP;


    if FieldByName('CTRL_NO_YEAR').AsString <> '' then
    begin
      tmp := '00000000000000'+ trim(qrymain.fieldByName('CTRL_NO_YEAR').AsString);
      tmp := ReverseString(tmp);
      tmp := copy(tmp, 1, 15);
      tmp := ReverseString(tmp);

      FieldByName('CTRL_NO_YEAR').AsString := tmp;
    end;
  end;

  qrymain.Resolve(nil);

  QryPMain.Resolve(nil);

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
    pnFileUp.Enabled := False;
  end
  else
  begin
    aEdit.Enabled := False;
    aSave.Enabled := True;
    btnClose.Enabled := False;
    btnCancel.Enabled := True;
    aSendHF.Enabled := False;
    pnFileUp.Enabled := True;
  end;

end;

procedure TXForm1.aSendHFExecute(Sender: TObject);
begin

  if Datachk then
  begin
    ShowMessage('전송자료에 이상이 있습니다.');
    Exit;
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
      000001   6자리 seq
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
  tmp : string;
begin

  if ( not FileExists(od.filename) ) or ( od.FileName = '') then
  begin
    ShowMessage('선택된 파일이 없습니다.');
    exit;
  end;

  sFilePath := od.FileName;
  url := 'http://10.40.0.246/DelphiUp.php';


  if qrymain.fieldByName('CTRL_NO_YEAR').AsString = '' then
  begin
    ShowMessage('첨부파일명(감정서번호가 없습니다.)');
    exit;
  end;

  tmp := '00000000000000'+ trim(qrymain.fieldByName('CTRL_NO_YEAR').AsString);
  tmp := ReverseString(tmp);
  tmp := copy(tmp, 1, 15);
  tmp := ReverseString(tmp);
  {
  ShowMessage(tmp);
  exit;
  }
  qrymain.FieldByName('CTRL_NO_YEAR').AsString := tmp;
  qrymain.Resolve(nil);
  tmpFileName := tmp + '.PDF';

  qryPDF.Query.Text := 'Exec SP_I_HF_PdfLog :FilePath, :wUser, Null, :P_Receipt_Seq';

  ms := TMemorystream.Create;
  Datastream := TIdMultiPartFormDataStream.Create;

  try
    try
        DataStream.AddFormField('filename', UTF8Encode(tmpFileName) );
        Datastream.AddFile('upfile', sFilePath, '');
        idhttp1.Post(url, Datastream, ms);
        ms.Position := 0;

        qrypdf.Params.ParamByName('FilePath').AsString := tmpFileName;
        qrypdf.Params.ParamByName('wUser').AsInteger := userinfo.UID;
        qrypdf.Params.ParamByName('P_Receipt_Seq').AsInteger := qrymain.fieldByName('P_Receipt_Seq').AsInteger;
        qrypdf.Execute;

    except on E:exception do
      begin
        ShowMessage('파일업로드중 Fail  : ' + E.Message)
      end;
    end;
  finally
    ms.Free;
    DataStream.Free;
  end;

  qrymain.RefreshData;
  lbPdf.Caption := qrymain.fieldByname('pdf').AsString
end;

procedure TXForm1.edtbtnFileSelectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

  if od.Execute then
  begin
    edtbtnFileSelect.Text := od.FileName;
    sFileSize := FileSize(od.FileName);
    ProgressBar1.Min := 0;
    ProgressBar1.max := sFileSize div 1024;
    flag := 1;
  end;

end;

function TXForm1.FileSize(fileName: wideString): int64;
var
 sr : TSearchRec;
begin
 if FindFirst(fileName, faAnyFile, sr ) = 0 then
    result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) + Int64(sr.FindData.nFileSizeLow)
 else
    result := -1;
 FindClose(sr) ;
end;

procedure TXForm1.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Integer);
begin
  if (AWorkMode = wmWrite) and (flag = 1)  then
  begin
    ProgressBar1.Position :=  AWorkCount div  1024 ;
  end else if (AWorkMode = wmRead) and (flag = 2)  then
  begin
    ProgressBar1.Position := AWorkCount div 1024;
  end;

  application.ProcessMessages;
end;

procedure TXForm1.aEditExecute(Sender: TObject);
begin
  qryMain.Edit;
end;

procedure TXForm1.btnCancelClick(Sender: TObject);
begin
  qryMain.Cancel;
end;

procedure TXForm1.aFindaddrExecute(Sender: TObject);
var
  ALink : TXLink;
begin

  ALink := TxLink.Create(nil);

  try
     //ALink.AddParams('FindDong', ADong); 인수 넘기려면..
    OpenDLL('FindRaddr.dll', nil, Alink);

    if ALink.Result = 1 then
    begin
      //공사측 소재지란 채우기 실행.
      with qrymain do begin
        //FieldByName('').AsString := Alink.ParamByString('');
        //ShowMessage(Alink.ParamByString('Code1'));
        //Alink.ParamByString('jiJuso')
        msg.Lines.add( Alink.ParamByString('RegEub'));
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 1, 2));
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 3, 3));
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 6, 3));
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 9, 2));

        msg.Lines.add( Alink.ParamByString('san'));
        msg.Lines.add( Alink.ParamByString('bun1'));
        msg.Lines.add( Alink.ParamByString('bun2'));

        if qryMain.State in [dsBrowse] then qryMain.Edit;

        FieldbyName('SOJAE_SIDO').asString := copy(Alink.ParamByString('RegEub'), 1, 2);
        FieldbyName('SOJAE_GUSIGUN').asString := copy(Alink.ParamByString('RegEub'), 3, 3);
        FieldbyName('SOJAE_YUBMYEN').asString := copy(Alink.ParamByString('RegEub'), 6, 3);
        FieldbyName('SOJAE_DONGRI').asString := copy(Alink.ParamByString('RegEub'), 9, 2);

        FieldbyName('SOJAE_BUNJIGB').asstring := '01';   { TODO : 여기 나중에 debugging }
        FieldbyName('SOJAE_ADDR_BONBUN').asstring := Alink.ParamByString('bun1');
        FieldbyName('SOJAE_ADDR_BUBUN').asstring := Alink.ParamByString('bun2');

      end;
    end;
  finally
    Alink.Free;
  end;

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
    params.ParamByName('Msg').AsString := userinfo.UserName + ' 연금 약식 감정을 전송을 시도 했습니다';
    params.ParamByName('Pseq').AsInteger := qrymain.fieldByName('P_Receipt_Seq').AsInteger;
    Execute;
  end;

end;

function TXForm1.Datachk: boolean;
begin

  Result := False;

  if (qryMain.FieldByName('CTRL_NO_YEAR').AsString = '') or ( pos('외부',  qryMain.FieldByName('CTRL_NO_YEAR').AsString) > 0 ) Then
  begin
    Result := True;
    ShowMessage('감정서번호 이상.');
  end;

  if qryMain.FieldByName('pdf').AsString = '' then
  begin
    Result := True;
    ShowMessage('pdf 첨부 누락.');
  end;

  if qryMain.FieldByName('DAMBO_NO').asString = '' then Result := True;

  if qryMain.FieldByName('CTRL_NO_YEAR').asString = '' then Result := True;

  if qryMain.FieldByName('GAMJUNG_RYO').asString = '' then Result := True;
  if qryMain.FieldByName('PYUNG_SUSURYO').asString = '' then Result := True;
  if qryMain.FieldByName('PYUNG_SILBI').asString = '' then Result := True;
  if qryMain.FieldByName('PYUNG_BUGA').asString = '' then Result := True;
  if qryMain.FieldByName('BUILDING_AREA').asString = '' then Result := True;
  if qryMain.FieldByName('EXCLUSIVE_M2').asString = '' then Result := True;
  if qryMain.FieldByName('EXCLUSIVE_AREA').asString = '' then Result := True;
  if qryMain.FieldByName('COMMON_M2').asString = '' then Result := True;
  if qryMain.FieldByName('COMMON_AREA').asString = '' then Result := True;
  if qryMain.FieldByName('LAND_AREA').asString = '' then Result := True;

end;

procedure TXForm1.btnDownPdfClick(Sender: TObject);
var
  url : string;
begin

  if qryMain.FieldByName('Pdf').AsString  =  '' then
  begin
    ShowMessage('첨부된 파일이 없습니다.');
    exit;
  end;

  url := 'http://10.40.0.246/' + qryMain.fieldByName('CTRL_NO_YEAR').AsString + '.PDF';
  shellexecute(Application.Handle, 'open', 'iexplore.exe', pchar(url), nil, SW_SHOWNORMAL)

end;

procedure TXForm1.FillData(AMode: string);
var
  tmp : string;
begin

  //
end;

procedure TXForm1.btnBringApClick(Sender: TObject);
begin
 // FillData('S');
end;

procedure TXForm1.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
var
  Status : string;
begin
  status := QryPMain.FieldByName('WorkStatus').AsString;

  if {(status = '0500')  or (status = '0510') or} (status = '0600') or (status =  '0610') or (status = '0650')
      or (status = '0660') or (status = '0700') or (status = '0710') then
  begin
    aSendHF.Enabled := False;
    aEdit.Enabled := False;
    aSave.Enabled := False;
    pnFileUp.Enabled := False;
  end;


end;

procedure TXForm1.btn_buildClick(Sender: TObject);
var
  ALink : TXLink;
  etcarea: Currency;
begin

  ALink := TxLink.Create(nil);

  Try

    ALink.AddParams('Gubun', 3);
    ALink.AddParams('MasterID', edtCTRL_NO_YEAR.Text);

    OpenDLL('Buildreport_HFPR.dll', nil, Alink);

    if ALink.Result = 1 then
    begin

//      with qryMain do
//      begin
//
//        if State in [dsbrowse] then Edit;
//        etcarea := StrToFloat(ALink.ParamByString('BunM')) -  StrToFloat(ALink.ParamByString('JunM'));
//        FieldByName('use_apprv_yr').AsString := Copy(ALink.ParamByString('UseDate'), 1, 4); // 사용승인일
//        FieldByName('cmplt_test_dy').AsString := Copy(ALink.ParamByString('UseDate'), 1, 4) + '-' + Copy(ALink.ParamByString('UseDate'), 5, 2) + '-' + Copy(ALink.ParamByString('UseDate'), 7, 2); // 준공검사
//        FieldByName('bldng_tot_layer').AsString := ALink.ParamByString('OneDong'); // 1동의 층수
//        FieldByName('tot_dong_cnt').AsString := ALink.ParamByString('TotDong'); // 총동수
//        FieldByName('tot_house_cnt').AsString := ALink.ParamByString('TotHouseCnt'); // 총세대수
//        FieldByName('main_struct').AsString := ALink.ParamByString('Gujo'); // 주요구조
//        FieldByName('divs_area').AsString := ALink.ParamByString('JunM'); // 전용면적
//        FieldByName('sell_area').AsString := ALink.ParamByString('BunM'); // 분양면적
//        FieldByName('sell_ph').AsString := ALink.ParamByString('BunPung'); // 분양평형
//        FieldByName('etc_apply_area').AsFloat := etcarea; //기타전용
//
//      end;

    end;

  Finally

    Alink.Free;

  End;

end;

End.
