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
  ComCtrls, cxCalendar, cxTimeEdit, Variants, ShellApi;

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
    qryJimok: TkbmMWClientQuery;
    qryYongdo: TkbmMWClientQuery;
    dsJimok: TDataSource;
    dsYongdo: TDataSource;
    qryJimokSeq: TIntegerField;
    qryJimokCode: TStringField;
    qryJimokName: TStringField;
    qryYongdoSeq: TIntegerField;
    qryYongdoCode: TStringField;
    qryYongdoName: TStringField;
    qrybankp: TkbmMWClientQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsBankP: TDataSource;
    qryMain: TkbmMWClientQuery;
    qryMainSeq: TLargeintField;
    qryMainP_Receipt_Seq: TLargeintField;
    qryMainDAMBO_NO: TStringField;
    qryMainGAMJUNG_NO: TStringField;
    qryMainGAM_GUBUN: TStringField;
    qryMainPRICE_DATE: TDateTimeField;
    qryMainPNG_NAME: TStringField;
    qryMainGAMJUNG_RYO: TCurrencyField;
    qryMainPYUNG_SUSURYO: TCurrencyField;
    qryMainPYUNG_SILBI: TCurrencyField;
    qryMainPYUNG_EXIT: TCurrencyField;
    qryMainPYUNG_BUGA: TCurrencyField;
    qryMainMUL_JONG: TStringField;
    qryMainGONGSI_DATE: TDateTimeField;
    qryMainGONGSI_ADDR: TStringField;
    qryMainGONGSI_AMT: TCurrencyField;
    qryMainDETAIL_CNT: TIntegerField;
    qryMainCANCEL_YN: TStringField;
    qryMainCANCEL_REASON: TStringField;
    qryMainVRTL_ACC_ORG_CD: TStringField;
    qryMainVRTL_ACC_NO: TStringField;
    qryMainVRTL_ACC_CUST_NM: TStringField;
    qryMainVALID_STRT_DY: TDateTimeField;
    qryMainVALID_END_DY: TDateTimeField;
    qryMainTRNSFER_AMT: TCurrencyField;
    qryMainDUMMY: TStringField;
    qryMainDAMBO_NO2: TStringField;
    qryMainMUL_SEQ: TIntegerField;
    qryMainDETAIL_SEQ: TIntegerField;
    qryMainDETAIL_JONG: TStringField;
    qryMainRESULT_SEQNO: TIntegerField;
    qryMainRESULT_SEQSEQNO: TIntegerField;
    qryMainTOJI_TOT_AREA: TCurrencyField;
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
    qryMainJIMOK: TStringField;
    qryMainGONGBU_AREA: TFloatField;
    qryMainSAJUNG_AREA: TFloatField;
    qryMainAPP_DANGA: TCurrencyField;
    qryMainGUJO: TStringField;
    qryMainYONGDO: TStringField;
    qryMainNAEYONG_YEAR: TIntegerField;
    qryMainJANJON_YEAR: TIntegerField;
    qryMainYMD_JAEJAK: TDateTimeField;
    qryMainDETAIL_BIGO: TStringField;
    qryMainCHONG_FOOR: TStringField;
    qryMainJUST_FOOR: TStringField;
    qryMainDUMMY2: TStringField;
    qryMainInUserSeq: TIntegerField;
    qryMainInUser: TStringField;
    qryMainInUserOffice: TStringField;
    qryMainInUserHostName: TStringField;
    qryMainInUserIP: TStringField;
    qryMainInDate: TDateTimeField;
    qryMainPDF: TStringField;
    qryMainMasterID: TLargeintField;
    qryLog: TkbmMWClientQuery;
    qryDetail: TkbmMWClientQuery;
    dsDetail: TDataSource;
    qryDetailSeq: TLargeintField;
    qryDetailP_Receipt_Seq: TLargeintField;
    qryDetailPJungMainSeq: TLargeintField;
    qryDetailDAMBO_NO: TStringField;
    qryDetailMUL_SEQ: TIntegerField;
    qryDetailDETAIL_SEQ: TIntegerField;
    qryDetailDETAIL_JONG: TStringField;
    qryDetailRESULT_SEQNO: TIntegerField;
    qryDetailRESULT_SEQSEQNO: TIntegerField;
    qryDetailTOJI_TOT_AREA: TCurrencyField;
    qryDetailSOJAE_SIDO: TStringField;
    qryDetailSOJAE_GUSIGUN: TStringField;
    qryDetailSOJAE_YUBMYEN: TStringField;
    qryDetailSOJAE_DONGRI: TStringField;
    qryDetailSOJAE_BUNJIGB: TStringField;
    qryDetailSOJAE_ADDR_BONBUN: TStringField;
    qryDetailSOJAE_ADDR_BUBUN: TStringField;
    qryDetailSOJAE_GUNMULNM: TStringField;
    qryDetailSOJAE_DONGNO: TStringField;
    qryDetailSOJAE_HONO: TStringField;
    qryDetailJIMOK: TStringField;
    qryDetailGONGBU_AREA: TFloatField;
    qryDetailSAJUNG_AREA: TFloatField;
    qryDetailAPP_DANGA: TCurrencyField;
    qryDetailGUJO: TStringField;
    qryDetailYONGDO: TStringField;
    qryDetailNAEYONG_YEAR: TIntegerField;
    qryDetailJANJON_YEAR: TIntegerField;
    qryDetailYMD_JAEJAK: TDateTimeField;
    qryDetailDETAIL_BIGO: TStringField;
    qryDetailCHONG_FOOR: TStringField;
    qryDetailJUST_FOOR: TStringField;
    qryDetailDUMMY2: TStringField;
    pnMain: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel47: TRzLabel;
    pnFileUp: TRzPanel;
    lbPdf: TRzLabel;
    btnUpfile: TRzBitBtn;
    edtbtnFileSelect: TcxButtonEdit;
    ProgressBar1: TProgressBar;
    btnDownPdf: TRzBitBtn;
    btnBringAP: TRzBitBtn;
    qryApwMaster: TkbmMWClientQuery;
    QryPMain: TkbmMWClientQuery;
    dsPMain: TDataSource;
    QryPMainSeq: TLargeintField;
    QryPMainbigo: TStringField;
    QryPMaincharge: TStringField;
    QryPMainworkStatus: TStringField;
    Panel1: TPanel;
    cxLabel39: TRzLabel;
    RzLabel1: TRzLabel;
    cxLabel42: TRzLabel;
    cxLabel6: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel15: TRzLabel;
    cxLabel1: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel22: TRzLabel;
    RzLabel27: TRzLabel;
    RzLabel25: TRzLabel;
    cxLabel4: TRzLabel;
    RzLabel29: TRzLabel;
    RzLabel32: TRzLabel;
    RzLabel31: TRzLabel;
    RzLabel58: TRzLabel;
    RzLabel10: TRzLabel;
    btnFindAddrS: TRzBitBtn;
    msg: TcxMemo;
    edtDAMBO_NO: TRzDBEdit;
    edtGAMJUNG_NO: TRzDBEdit;
    edtGAM_GUBUN: TRzDBEdit;
    edtGAM_GUBUN1: TcxDBImageComboBox;
    edtPRICE_DATE: TRzDBDateTimeEdit;
    edtPNG_NAME: TRzDBEdit;
    edtGAMJUNG_RYO: TcxDBCurrencyEdit;
    edtPYUNG_SUSURYO: TcxDBCurrencyEdit;
    edtPYUNG_SILBI: TcxDBCurrencyEdit;
    edtPYUNG_EXIT: TcxDBCurrencyEdit;
    edtPYUNG_BUGA: TcxDBCurrencyEdit;
    edtMUL_JONG: TcxDBImageComboBox;
    edtGONGSI_DATE: TRzDBDateTimeEdit;
    edtGONGSI_ADDR: TRzDBEdit;
    edtGONGSI_AMT: TcxDBCurrencyEdit;
    edtDETAIL_CNT: TcxDBCurrencyEdit;
    edtCANCEL_YN1: TRzDBEdit;
    edtCANCEL_YN: TcxDBImageComboBox;
    edtCANCEL_REASON: TRzDBEdit;
    edtVRTL_ACC_ORG_CD: TRzDBEdit;
    edtVRTL_ACC_NO: TRzDBEdit;
    edtVRTL_ACC_CUST_NM: TRzDBEdit;
    edtVALID_STRT_DY: TRzDBDateTimeEdit;
    edtVALID_END_DY: TRzDBDateTimeEdit;
    edtTRNSFER_AMT: TcxDBCurrencyEdit;
    LubVRTL_ACC_ORG_CD: TcxDBLookupComboBox;
    Edt_Bigo: TcxDBMemo;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel2: TPanel;
    Grid_Main: TcxGrid;
    GVJ_: TcxGridDBTableView;
    GVJ_MUL_SEQ: TcxGridDBColumn;
    GVJ_DETAIL_SEQ: TcxGridDBColumn;
    GVJ_DETAIL_JONG: TcxGridDBColumn;
    GVJ_RESULT_SEQNO: TcxGridDBColumn;
    GVJ_RESULT_SEQSEQNO: TcxGridDBColumn;
    GVJ_TOJI_TOT_AREA: TcxGridDBColumn;
    GVJ_Column1: TcxGridDBColumn;
    GVJ_SOJAE_BUNJIGB: TcxGridDBColumn;
    GVJ_SOJAE_ADDR_BONBUN: TcxGridDBColumn;
    GVJ_SOJAE_ADDR_BUBUN: TcxGridDBColumn;
    GVJ_SOJAE_GUNMULNM: TcxGridDBColumn;
    GVJ_SOJAE_DONGNO: TcxGridDBColumn;
    GVJ_SOJAE_HONO: TcxGridDBColumn;
    GVJ_JIMOK: TcxGridDBColumn;
    GVJ_GONGBU_AREA: TcxGridDBColumn;
    GVJ_SAJUNG_AREA: TcxGridDBColumn;
    GVJ_APP_DANGA: TcxGridDBColumn;
    GVJ_GUJO: TcxGridDBColumn;
    GVJ_YONGDO: TcxGridDBColumn;
    GVJ_NAEYONG_YEAR: TcxGridDBColumn;
    GVJ_JANJON_YEAR: TcxGridDBColumn;
    GVJ_CHONG_FOOR: TcxGridDBColumn;
    GVJ_JUST_FOOR: TcxGridDBColumn;
    GVJ_YMD_JAEJAK: TcxGridDBColumn;
    GVJ_DETAIL_BIGO: TcxGridDBColumn;
    GLJ: TcxGridLevel;
    Panel3: TPanel;
    Panel7: TPanel;
    Btn_DeleteJun: TRzBitBtn;
    btn_AddJun: TRzBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    RzDBEdit1: TRzDBEdit;
    RzLabel14: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel16: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    RzLabel18: TRzLabel;
    RzLabel20: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel21: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzLabel23: TRzLabel;
    RzDBEdit9: TRzDBEdit;
    RzLabel24: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzLabel26: TRzLabel;
    RzDBEdit12: TRzDBEdit;
    RzLabel28: TRzLabel;
    RzDBEdit13: TRzDBEdit;
    RzLabel30: TRzLabel;
    RzDBEdit14: TRzDBEdit;
    RzLabel33: TRzLabel;
    cxDBImageComboBox3: TcxDBImageComboBox;
    RzLabel34: TRzLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    RzLabel35: TRzLabel;
    edt_etc_apply_area: TcxDBCurrencyEdit;
    RzLabel37: TRzLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    RzLabel38: TRzLabel;
    RzLabel39: TRzLabel;
    RzLabel40: TRzLabel;
    RzDBEdit15: TRzDBEdit;
    RzLabel42: TRzLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzLabel43: TRzLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzLabel44: TRzLabel;
    cxDBMemo1: TcxDBMemo;
    RzDBEdit16: TRzDBEdit;
    RzLabel36: TRzLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    RzDBEdit19: TRzDBEdit;
    btn_edit: TRzBitBtn;
    Panel8: TPanel;
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
    procedure btnFindAddrSClick(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure GVJ_EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btn_AddJunClick(Sender: TObject);
    procedure Btn_DeleteJunClick(Sender: TObject);
    procedure GVJ_CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnDownPdfClick(Sender: TObject);
    procedure btnBringAPClick(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure btn_editClick(Sender: TObject);
    procedure btn_buildClick(Sender: TObject);
  private
    FMainSeq : integer;
    FMainDAMBO_NO : string;

    procedure ProcessParameters(ALink: TXLink);
    Procedure DataFind;
    function FileSize(fileName : wideString): int64;
    procedure DoFindAddress(sAddress : String; GV : TcxGridDBTableView);
    function Datachk:boolean;

    procedure FillData(AMode:String);

  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

Uses
  DM, CommModule, UserData;

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
    if Form.ShowModal = mrOk then Alink.Result := 1;
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

  if userinfo.UID = 1119 then
  begin
    msg.Visible := True;
    btnBringAP.Visible := True;
  end
  else
  begin
    msg.Visible := false;
    btnBringAP.Visible := False;
  end;

  with qryJimok do
  begin
    if Active then close;
    open;
  end;

  with qryYongdo do
  begin
    if Active then close;
    open;
    
  end;

  with qrybankp do
  begin
    if Active Then Close;
    Open;
  end;

  with qryMain do
  begin
    query.Text := 'Exec SP_S_HF_P_Jung :P_Receipt_Seq, :DAMBO_NO';
    TableName := 'fake_i,SP_U_HF_P_Jung,fake_d';
  end;

  DataFind;

  FillData('F');

  if qrymain.RecordCount < 1 Then
  begin
    ShowMessage('접수번호가 없음. Error 전산실로 연락 하세요.' );
  end;

end;

procedure TXForm1.DataFind;
begin

   //ShowMessage( intTostr(FMainSeq) );
   //ShowMessage( FMainDAMBO_NO);
  with qryMain do
  Begin
    if Active then Close;
    params.ParamByName('P_Receipt_Seq').AsInteger := FMainSeq;   //정식 의 Seq
    params.ParamByName('DAMBO_NO').AsString := FMainDAMBO_NO;

    try
      open;
    except on E:Exception do
      ShowMessage(E.Message);
    end;

    if FieldByName('Pdf').AsString  <> '' then
      lbPdf.Caption := FieldByName('PDF').AsString +'첨부';
  End;

  with qryDetail do begin
    if Active then close;

    query.Text := 'Exec SP_S_HF_P_JungDetail :PJungMainSeq';
    qryDetail.TableName := 'SP_I_HF_P_JungDetail, SP_U_HF_P_JungDetail, SP_D_HF_P_JungDetail';

    params.ParamByName('PJungMainSeq').Asinteger := qrymain.fieldbyName('seq').AsInteger;
   // ShowMessage(IntToStr(qrymain.fieldbyName('seq').AsInteger));
    open;
  end;

  with QryPMain do
  begin
    query.Text := 'Exec SP_S_HF_P_Receipt_Bigo :Seq' ;
    TableName := 'fake_i,SP_U_HF_P_Receipt_Bigo,fask_d';
    if Active then close;
    params.ParamByName('Seq').AsInteger := qrymain.fieldByName('P_Receipt_Seq').asinteger;
    open;
  end;

end;

procedure TXForm1.btnCloseClick(Sender: TObject);
begin
  close;
  ModalResult := mrOk;
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

  qrymain.Resolve(nil);
  QryPMain.Resolve(nil);



  with qryDetail do
  begin
    first;
    While not qryDetail.eof do begin
      edit;

      if FieldByName('P_Receipt_Seq').AsString = '' then
        FieldByName('P_Receipt_Seq').AsInteger  := qrymain.FieldByName('P_Receipt_Seq').AsInteger;

      if FieldByName('PJungMainSeq').AsString = '' then
        FieldByName('PJungMainSeq').AsInteger := qrymain.FieldByName('seq').AsInteger ;

      if FieldByName('DAMBO_NO').AsString = '' then
        FieldByName('DAMBO_NO').AsString  := qrymain.FieldByName('DAMBO_NO').AsString;

      Next;
    end;
   // qryDetail.Post;
    qryDetail.Resolve(nil);
  end;

  qryDetail.Open;

  if qrydetail.RecordCount > 0 then
  begin
    qrymain.Edit;
    qrymain.FieldByName('DETAIL_CNT').AsInteger := qryDetail.RecordCount;
    qrymain.Post;
  end;

  qrymain.Resolve(nil);
  qrydetail.Resolve(nil);


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
    pnMain.Enabled := false;
    pnFileUp.Enabled := false;
    btnBringAP.Enabled := False;
    btnBringAP.Enabled := False;
  end
  else
  begin
    aEdit.Enabled := False;
    aSave.Enabled := True;
    btnClose.Enabled := False;
    btnCancel.Enabled := True;
    aSendHF.Enabled := False;
    pnMain.Enabled := true;
    pnFileUp.Enabled := true;
    btnBringAP.Enabled := True;
    btnBringAP.Enabled := True;
  end;

end;

procedure TXForm1.aSendHFExecute(Sender: TObject);
begin
  //DataChk

  if Datachk then
  begin
    ShowMessage('필수 사항 누락.');
    exit;
  end;

  if Application.MessageBox('주택금융공사로 전송할 자료에 누락 된 사항이 있나 검토 하세요.'+#13+'전송하시겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
  Begin

    ClientSocket1.Address := '10.40.0.248';
    ClientSocket1.Port := 37000;  //연금테스트포트
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
begin

  if ( not FileExists(od.filename) ) or ( od.FileName = '') then
  begin
    ShowMessage('선택된 파일이 없습니다.');
    exit;
  end;

  if qrymain.fieldByName('GAMJUNG_NO').AsString = '' then
  begin
    ShowMessage('감정서 번호가 없습니다.');
    exit;
  end;

  qrymain.Resolve(nil);
  sFilePath := od.FileName;
  url := 'http://10.40.0.246/DelphiUp.php';
  tmpFileName := Trim(qrymain.fieldByName('GAMJUNG_NO').AsString) + '.PDF';

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
  lbPdf.Caption := qrymain.fieldByname('pdf').AsString;

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

procedure TXForm1.aFindaddrExecute(Sender: TObject);  // 물건소재지
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
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 1, 2) );
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 3, 3) );
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 6, 3) );
        msg.Lines.add( copy(Alink.ParamByString('RegEub'), 9, 2) );

        msg.Lines.add( Alink.ParamByString('san'));
        msg.Lines.add( Alink.ParamByString('bun1'));
        msg.Lines.add( Alink.ParamByString('bun2'));


      end;
    end;
  finally
    Alink.Free;
  end;

end;

procedure TXForm1.btnFindAddrSClick(Sender: TObject); /// 표준지 채우기
var
  ALink : TXLink;
begin

  ALink := TxLink.Create(nil);

  try
    OpenDLL('FindRaddr.dll', nil, Alink);

    if ALink.Result = 1 then
    begin
      //공사측 소재지란 채우기 실행.
      with qrymain do begin
        if qrymain.State in [dsBrowse] Then qryMain.Edit;
        FieldbyName('GONGSI_ADDR').asstring := Alink.ParamByString('jiJuso');
      end;

      msg.Lines.Add(Alink.ParamByString('jiJuso'));
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
    params.ParamByName('Msg').AsString := userinfo.UserName + ' 연금 정식 감정을 전송 시도 했습니다.';
    params.ParamByName('Pseq').AsInteger := qrymain.fieldByName('P_Receipt_Seq').AsInteger;
    Execute;
  end;

end;

procedure TXForm1.DoFindAddress(sAddress: String; GV: TcxGridDBTableView);
var
  ALink: TXLink;
  DataSet : TDataSet;
  tmp :string;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('FindDong', sAddress);
    OpenDLL('FindRegEub.DLL', nil, ALink);
    if ALink.Result = 1 then begin
      DataSet := GV.DataController.DataSource.DataSet;

      with DataSet do begin
        if State in [dsBrowse] then edit;

         tmp := ALink.ParamByString('Code1') + ALink.ParamByString('Code2');
         
         if FindField('DUMMY2') <> nil then
         begin
          fieldByName('DUMMY2').asString := ALink.ParamByString('CODE3');
         end;
         if FindField('SOJAE_SIDO') <> nil then FieldbyName('SOJAE_SIDO').asString := copy(tmp, 1, 2);
         if FindField('SOJAE_GUSIGUN') <> nil then FieldbyName('SOJAE_GUSIGUN').asString := copy(tmp, 3, 3);
         if FindField('SOJAE_YUBMYEN') <> nil then FieldbyName('SOJAE_YUBMYEN').asString := copy(tmp, 6, 3);
         if FindField('SOJAE_DONGRI') <> nil then FieldbyName('SOJAE_DONGRI').asString := copy(tmp, 9, 2);
      end;
    end;
  finally
    FreeAndNil(ALink);
  end;

end;

procedure TXForm1.GVJ_EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
var
  DataSet : TDataSet;
  NewKeyword : string;
begin
  if (Pos('[소재지]', AItem.AlternateCaption) > 0) and ((Key = VK_F3) or (Key = VK_RETURN)) then begin   // 소재지
    DataSet := TcxGridDBTableView(Sender).DataController.DataSource.DataSet;
    AEdit.PostEditValue;
    NewKeyword := VartoStr(AItem.EditValue);
    DoFindAddress(NewKeyword, TcxGridDBTableView(Sender));
   end;

end;

procedure TXForm1.btn_AddJunClick(Sender: TObject);
begin
  qryDetail.Append;
  dsDetail.AutoEdit:= true;
end;

procedure TXForm1.Btn_DeleteJunClick(Sender: TObject);
begin
  if Application.MessageBox('삭제 하시겠습니까?', '삭제 확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES then begin
   qryDetail.Delete;
  end;
end;

procedure TXForm1.GVJ_CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin

  if (AViewInfo.item.Index = 0) then
  begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;
  if AViewInfo.item.Index = 1 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 2 then
  begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 5 then
  begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 14 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 15 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

   if AViewInfo.item.Index = 16 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 19 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 20 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 21 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

  if AViewInfo.item.Index = 22 then
   begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
  end;

end;

function TXForm1.Datachk: boolean;
var
  DList : TStringList;
  multilDetail : Boolean;
  i : integer;
begin

  Result := False;

  multilDetail := qryDetail.RecordCount > 1;

  With qryMain do
  begin

    if FieldByName('GAMJUNG_NO').AsString = '' Then Result := True;
    if FieldByName('GAMJUNG_RYO').AsString = '' Then Result := True;
    if FieldByName('PYUNG_SUSURYO').AsString = '' Then Result := True;
    if FieldByName('PYUNG_SILBI').AsString = '' Then Result := True;
    if FieldByName('PYUNG_EXIT').AsString = '' Then Result := True;
    if FieldByName('PYUNG_BUGA').AsString = '' Then Result := True;

    if FieldByName('GONGSI_AMT').AsString = '' Then Result := True;
    if FieldByName('DETAIL_CNT').AsString = '' Then Result := True;

    if multilDetail then
    begin
      DList := TStringList.Create;
      DList.Sorted := True;
      DList.Duplicates := dupIgnore;
    end;

    qryDetail.First;

    while Not qryDetail.Eof do
    begin
      if qryDetail.FieldByName('MUL_SEQ').AsString = '' then Result := True;
      if qryDetail.FieldByName('DETAIL_SEQ').AsString = '' then Result := True;
      if qryDetail.FieldByName('DETAIL_JONG').AsString = '' then Result := True;
      if qryDetail.FieldByName('TOJI_TOT_AREA').AsString = '' then Result := True;
      if qryDetail.FieldByName('GONGBU_AREA').AsString = '' then Result := True;
      if qryDetail.FieldByName('GONGBU_AREA').AsString = '' then Result := True;
      if qryDetail.FieldByName('JANJON_YEAR').AsString = '' then Result := True;
      if qryDetail.FieldByName('CHONG_FOOR').AsString = '' then Result := True;
      if qryDetail.FieldByName('JUST_FOOR').AsString = '' then Result := True;

      if multilDetail then
      begin
        for i := 0 to qryDetail.RecordCount - 1 do
        begin
          DList.Add('(' +qryDetail.FieldByName('MUL_SEQ').AsString+','+qryDetail.FieldByName('DETAIL_SEQ').AsString +')' );
        end;
      end;

      qryDetail.Next;
    end;

  end;

  if multilDetail then
  begin
    if qryDetail.RecordCount - DList.Count > 0 then
    begin
      ShowMessage('물건일련번호와 세부일련번호 조합에 중복이 있습니다.');
      result := True;
    end;
    DList.Free;
  end;

end;

procedure TXForm1.btnDownPdfClick(Sender: TObject);
var
  url : string;
begin
  if qryMain.FieldByName('PDF').AsString = '' then
  begin
    ShowMessage('첨부된 파일이 없습니다.');
    exit;
 end;


  url := 'http://10.40.0.246/' + qryMain.fieldByName('GAMJUNG_NO').AsString + '.PDF';
  shellexecute(Application.Handle, 'open', 'iexplore.exe', pchar(url), nil, SW_SHOWNORMAL)

end;

procedure TXForm1.FillData(AMode: String);
begin
  if AMode = 'F' Then
  begin
    With qryMain do
    begin
      {
      if qryMain.State in [dsbrowse] then qryMain.Edit;

      if (qryMain.FieldByName('GAMJUNG_NO').AsString = '') or (pos('외부', qryMain.FieldByName('GAMJUNG_NO').AsString ) > 0) then
      begin
        qryMain.FieldByName('GAMJUNG_NO').AsString := qryApwMaster.fieldByName('Docid').AsString;
      end;
      qrymain.Resolve(nil);
       }
    end;
  end
  else
  begin
    if Application.MessageBox('자료 가져오기를 하시면 기존 자료를 삭제 하고 가져 옵니다.' +#13+'가져오시겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
    begin
      {
      if qryMain.State in [dsbrowse] then qryMain.Edit;
      qryMain.FieldByName('GAMJUNG_NO').AsString := qryApwMaster.FieldByName('Docid').AsString;
      }
    end;
  end;
end;

procedure TXForm1.btnBringAPClick(Sender: TObject);
begin
  FillData('S');
end;

procedure TXForm1.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
var
  Status : string;
begin
  status := QryPMain.FieldByName('WorkStatus').AsString;

  if {(status = '0500')  or (status = '0510') or } (status = '0600') or (status =  '0610') or (status = '0650')
      or (status = '0660') or (status = '0700') or (status = '0710') then
  begin
    aSendHF.Enabled := False;
    aEdit.Enabled := False;
    aSave.Enabled := False;
    pnFileUp.Enabled := False;
  end;
end;

procedure TXForm1.btn_editClick(Sender: TObject);
begin
 qryDetail.Edit;

end;

procedure TXForm1.btn_buildClick(Sender: TObject);
var
  ALink : TXLink;
  etcarea: Currency;
begin

  ALink := TxLink.Create(nil);

  Try

    ALink.AddParams('Gubun', 2);
    ALink.AddParams('MasterID', edtGAMJUNG_NO.Text);

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
