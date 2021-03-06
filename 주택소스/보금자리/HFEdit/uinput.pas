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
  ComCtrls, Shellapi, IdExplicitTLSClientServerBase, IdFTP;

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
    od: TOpenDialog;
    IdHTTP1: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    qryHFCategory: TkbmMWClientQuery;
    dsHFCategory: TDataSource;
    qryHFCategorySeq: TIntegerField;
    qryHFCategoryCode: TStringField;
    qryHFCategoryName: TStringField;
    qryHFjosakind: TkbmMWClientQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsHFjosakind: TDataSource;
    qryHFbank: TkbmMWClientQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    dsHFbank: TDataSource;
    btnEdit: TRzBitBtn;
    qryPDF: TkbmMWClientQuery;
    aFindaddr: TAction;
    sd: TSaveDialog;
    qryLog: TkbmMWClientQuery;
    RzLabel47: TRzLabel;
    pnFileUp: TRzPanel;
    lbPdf: TRzLabel;
    btnUpfile: TRzBitBtn;
    edtbtnFileSelect: TcxButtonEdit;
    ProgressBar1: TProgressBar;
    RzLabel57: TRzLabel;
    btnDownPdf: TRzBitBtn;
    qryMainMasterid: TLargeintField;
    qryMainApw_Master_masterid: TLargeintField;
    qryMainIsProcess: TBooleanField;
    qryMainMgr_Code: TStringField;
    qryMainco_prev_insp_no: TStringField;
    qryMainseq: TStringField;
    qryMaincancel_yn: TStringField;
    qryMainorg_nm: TStringField;
    qryMainduty_brcd_nm: TStringField;
    qryMainduty_emp_nm: TStringField;
    qryMainduty_tel_no: TStringField;
    qryMainacpt_no: TStringField;
    qryMainacpt_dy: TDateTimeField;
    qryMainjudge_assess_sht_no: TStringField;
    qryMainjudge_assess_dy: TDateTimeField;
    qryMainSigner: TIntegerField;
    qryMainjudge_assess_co_nm: TStringField;
    qryMaincust_no: TStringField;
    qryMainapplcant_nm: TStringField;
    qryMainapplcant_tel_no: TStringField;
    qryMainapplcant_mobile: TStringField;
    qryMainapplcant_zip_cd: TStringField;
    qryMainmort_addr_kind_dvcd: TStringField;
    qryMainmort_zip_cd: TStringField;
    qryMainmort_zipaddr: TStringField;
    qryMainmort_dtladdr: TStringField;
    qryMainlawco_dong_cd: TStringField;
    qryMainmort_st_stnm_addr_cd: TStringField;
    qryMainmort_st_dtladdr: TStringField;
    qryMainown_pers_nm: TStringField;
    qryMainhouse_dvcd: TStringField;
    qryMainmort_rsrch_kind_cd: TStringField;
    qryMainexpect_judge_amt: TCurrencyField;
    qryMainfee_brd_cd: TStringField;
    qryMainreq_dy: TDateTimeField;
    qryMainrepot_dlv_hope_dy: TDateTimeField;
    qryMainprod_cd_nm: TStringField;
    qryMainreq_amt: TCurrencyField;
    qryMainhold_term_cd_nm: TStringField;
    qryMaintot_room_cnt: TIntegerField;
    qryMainrent_room_cnt: TIntegerField;
    qryMainrent_amt: TCurrencyField;
    qryMainusub_ord_bond_amt: TCurrencyField;
    qryMainmort_pry_amt: TCurrencyField;
    qryMainjudge_assess_amt: TCurrencyField;
    qryMainhouse_mort_assess_amt: TCurrencyField;
    qryMainstore_mort_assess_amt: TCurrencyField;
    qryMainlnd_judge_amt: TCurrencyField;
    qryMaindivs_area: TFloatField;
    qryMainetc_apply_area: TFloatField;
    qryMainsell_area: TFloatField;
    qryMainsell_ph: TFloatField;
    qryMainsell_room_cnt: TIntegerField;
    qryMainuse_apprv_yr: TStringField;
    qryMainlrgt_poss: TFloatField;
    qryMainmain_struct: TStringField;
    qryMainbldng_tot_layer: TIntegerField;
    qryMainheat_type: TStringField;
    qryMaintot_dong_cnt: TIntegerField;
    qryMaintot_house_cnt: TIntegerField;
    qryMainsale_upper_amt: TCurrencyField;
    qryMainsale_lower_amt: TCurrencyField;
    qryMaincmplt_test_dy: TDateTimeField;
    qryMainsell_contrct_dy: TDateTimeField;
    qryMainjudge_assess_opn: TStringField;
    qryMaininqry_rslt_exist_yn: TStringField;
    qryMainbsrch_pnttm: TDateTimeField;
    qryMainmake_dy: TDateTimeField;
    qryMainInUserSeq: TIntegerField;
    qryMainInUser: TStringField;
    qryMainInUserOffice: TStringField;
    qryMainInUserHostName: TStringField;
    qryMainInUserIP: TStringField;
    qryMainInDate: TDateTimeField;
    qryMainassess_seq: TStringField;
    qryMainassess_seq_dt: TStringField;
    qryMainFstatusUsr: TStringField;
    qryMainFstatusNo: TStringField;
    qryMainbase_fee_amt: TCurrencyField;
    qryMaintravel_fee_amt: TCurrencyField;
    qryMainspecial_servc_amt: TCurrencyField;
    qryMainsale_amt: TCurrencyField;
    qryMainaddvalue_fee: TCurrencyField;
    qryMaintot_sale_amt: TCurrencyField;
    qryMainprod_grp_cd: TStringField;
    qryMainprogress_note: TStringField;
    qryMainvrtl_acc_seq: TStringField;
    qryMainvrtl_acc_no: TStringField;
    qryMainvrtl_acc_dposit_nm: TStringField;
    qryMainvrtl_acc_new_dy: TDateTimeField;
    qryMainvrtl_acc_expire_dy: TDateTimeField;
    qryMainvrtl_acc_org_cd: TStringField;
    qryMainvrtl_acc_fee_amt: TCurrencyField;
    qryMainEditDate: TDateTimeField;
    qryMainWorkStatus: TStringField;
    qryMainWorkMsg: TStringField;
    qryMainAllocOffice: TStringField;
    qryMainBigo: TStringField;
    qryMainPDF: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel1: TRzLabel;
    cxLabel4: TRzLabel;
    cxLabel39: TRzLabel;
    cxLabel49: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel9: TRzLabel;
    cxLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    cxLabel42: TRzLabel;
    RzLabel3: TRzLabel;
    cxLabel6: TRzLabel;
    RzLabel21: TRzLabel;
    RzLabel37: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel54: TRzLabel;
    RzLabel58: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    edt_acpt_no: TRzDBEdit;
    Edt_judge_assess_sht_no: TRzDBEdit;
    edt_applcant_nm: TRzDBEdit;
    Edt_co_prev_insp_no: TRzDBEdit;
    edt_seq: TRzDBEdit;
    edt_cancel_yn: TRzDBEdit;
    Edt_acpt_dy: TRzDBDateTimeEdit;
    lub_mort_rsrch_kind_cd: TcxDBLookupComboBox;
    edt_judge_assess_co_nm: TRzDBEdit;
    edt_inqry_rslt_exist_yn: TRzDBEdit;
    edt_mort_zip_cd: TRzDBEdit;
    Edt_judge_assess_dy: TRzDBDateTimeEdit;
    edt_lawco_dong: TRzDBEdit;
    edt_mort_st_stnm: TRzDBEdit;
    edt_mort_addr_kind: TcxDBImageComboBox;
    cb_cancel_yn: TcxDBImageComboBox;
    edtFstatusUsr: TRzDBEdit;
    edtFstatusNo: TRzDBEdit;
    edtprogress_note: TRzDBEdit;
    Edt_Bigo: TcxDBMemo;
    Panel3: TPanel;
    btnFindAddr: TRzBitBtn;
    RzLabel7: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    RzLabel22: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel27: TRzLabel;
    RzLabel53: TRzLabel;
    edt_mort_zipaddr: TRzDBEdit;
    edt_mort_dtladdr: TRzDBEdit;
    edt_mort_st: TRzDBEdit;
    edt_own_pers_nm: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Lub_house_dvcd: TcxDBLookupComboBox;
    edt_mort_pry_amt: TRzDBNumericEdit;
    edt_judge_assess_amt: TRzDBNumericEdit;
    edt_house_mort_assess_amt: TRzDBNumericEdit;
    edt_store_mort_assess_amt: TRzDBNumericEdit;
    edt_lnd_judge_amt: TRzDBNumericEdit;
    edt_divs_area: TcxDBCurrencyEdit;
    edt_etc_apply_area: TcxDBCurrencyEdit;
    edt_sell_area: TcxDBCurrencyEdit;
    RzLabel11: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel28: TRzLabel;
    RzLabel29: TRzLabel;
    RzLabel30: TRzLabel;
    RzLabel31: TRzLabel;
    RzLabel32: TRzLabel;
    RzLabel33: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel34: TRzLabel;
    RzLabel35: TRzLabel;
    RzLabel36: TRzLabel;
    RzLabel38: TRzLabel;
    RzLabel39: TRzLabel;
    edt_sell_ph: TcxDBCurrencyEdit;
    edt_sell_room_cnt: TRzDBNumericEdit;
    edt_lrgt_poss: TcxDBCurrencyEdit;
    edt_use_apprv_yr: TRzDBEdit;
    edt_bldng_tot_layer: TRzDBNumericEdit;
    edt_main_struct: TRzDBEdit;
    edt_heat_type: TRzDBEdit;
    edt_tot_dong_cnt: TRzDBNumericEdit;
    edt_cmplt_test_dy: TRzDBDateTimeEdit;
    edt_tot_house_cnt: TRzDBNumericEdit;
    edt_sale_uppper: TcxDBCurrencyEdit;
    edt_sale_lower_amt: TcxDBCurrencyEdit;
    edt_sell_contrct_dy: TRzDBDateTimeEdit;
    edt_bsrch_pnttm: TRzDBDateTimeEdit;
    mm_judge_assess_opn: TcxDBMemo;
    RzLabel40: TRzLabel;
    RzLabel41: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel42: TRzLabel;
    RzLabel44: TRzLabel;
    RzLabel51: TRzLabel;
    RzLabel52: TRzLabel;
    edt_make_dy: TRzDBDateTimeEdit;
    edt_base_fee_amt: TcxDBCurrencyEdit;
    edt_sale_amt: TcxDBCurrencyEdit;
    edt_special_servc_amt: TcxDBCurrencyEdit;
    edt_tot_sale_amt: TcxDBCurrencyEdit;
    edt_travel_fee_amt: TcxDBCurrencyEdit;
    edt_addvalue_fee: TcxDBCurrencyEdit;
    cxLabel76: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel43: TRzLabel;
    RzLabel45: TRzLabel;
    RzLabel46: TRzLabel;
    RzLabel48: TRzLabel;
    RzLabel49: TRzLabel;
    RzLabel50: TRzLabel;
    RzLabel55: TRzLabel;
    RzLabel56: TRzLabel;
    edt_cust_no: TRzDBEdit;
    edt_vrtl_acc_no: TRzDBEdit;
    edt_vrtl_acc_dposit_nm: TRzDBEdit;
    Lub_vrtl_acc_org_cd: TcxDBLookupComboBox;
    edt_vrtl_acc_new_dy: TRzDBDateTimeEdit;
    edt_vrtl_acc_expire_dy: TRzDBDateTimeEdit;
    edt_vrtl_acc_fee_amt: TcxDBCurrencyEdit;
    edt_vrtl_acc_seq: TcxDBCurrencyEdit;
    edtSeq: TRzDBEdit;
    edt_mort_rsrch_kind_cd: TRzDBEdit;
    msg: TcxMemo;
    Label1: TLabel;
    edt_zipaddr: TRzEdit;
    edt_roadaddr: TRzEdit;
    RzLabel6: TRzLabel;
    Button1: TButton;
    IdFTP1: TIdFTP;
    btn_build: TRzBitBtn;
    qryGam: TkbmMWClientQuery;
    btn_gam: TRzBitBtn;
    qryYack: TkbmMWClientQuery;
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
    procedure edtFstatusNoKeyPress(Sender: TObject; var Key: Char);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure btnDownPdfClick(Sender: TObject);
//    procedure btnBringApClick(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure edtFstatusUsrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure edt_mort_dtladdrChange(Sender: TObject);
    procedure edt_mort_stChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_buildClick(Sender: TObject);
    procedure btn_gamClick(Sender: TObject);
  private
    FMasterid : integer;

    procedure ProcessParameters(ALink: TXLink);
    Procedure DataFind;
    function Datachk:boolean;
    function FileSize(fileName : wideString): int64;
    procedure do_GetGam;
    procedure do_GetYak;




  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

Uses
  DM, CommModule, UserData, DateUtils;

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

    if form.ShowModal = mrok then
    begin
      alink.Result := 1;
    end;
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
    FMasterid := Alink.ParamByInteger('sMasterid');
  End;
end;

procedure TXForm1.XFormShow(Sender: TObject);
begin


  if userinfo.UID = 813 then
  begin
    msg.Visible := True;
    //btnBringAp.Visible := True;
  end else
  begin
    msg.Visible := False;
   // btnBringAp.Visible := False;
  end;

  if qryHFCategory.Active Then qryHFCategory.Close;
  qryHFCategory.Open;
  if qryHFjosakind.Active Then qryHFjosakind.Close;
  qryHFjosakind.open;
  if qryHFbank.Active Then qryHFbank.Close;
  qryHFbank.Open;

  with qryMain do
  begin
    query.Text := 'Exec SP_S_APW_DH_HF_LINK :Masterid';
    TableName := 'fake_i,SP_U_APW_DH_HF_LINK,fake_d';
  end;

  DataFind;
  if qryMain.FieldByName('acpt_no').AsString = '' then
   begin
     do_GetGam;
  end;

end;

procedure TXForm1.DataFind;
begin

  with qryMain do
  Begin
    if Active then Close;
    params.ParamByName('Masterid').AsInteger := FMasterid;
    open;

    if FieldByName('Pdf').AsString  <> '' then
      lbPdf.Caption := FieldByName('PDF').AsString +'첨부';
  End;



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
    if FieldByName('acpt_no').AsString = '' then FieldByName('acpt_no').AsString := FieldByName('Masterid').AsString;

    fieldByName('InUserSeq').AsInteger := userinfo.UID;
    fieldByName('InUser').AsString := userinfo.UserName;
    fieldByName('InUserOffice').AsString := userinfo.Office;
    fieldByName('InUserHostName').AsString := userinfo.ComputerName;
    fieldByName('InUserIP').AsString := userinfo.IP;
  end;

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
    pnFileUp.Enabled := False;
    btn_build.Visible := False;
    btn_gam.Visible := False;
   // btnBringAp.Enabled := False;
  end
  else
  begin
    aEdit.Enabled := False;
    aSave.Enabled := True;
    btnClose.Enabled := False;
    btnCancel.Enabled := True;
    aSendHF.Enabled := False;
    pnFileUp.Enabled := True;
    btn_build.Visible := True;
    btn_gam.Visible := True;
   // btnBringAp.Enabled := True;
  end;

end;

procedure TXForm1.aSendHFExecute(Sender: TObject);
var
  cmd : string;
begin
  //datacheck
  if Datachk then
  begin
    ShowMessage('필수 입력 누락입니다.');
    exit;
  end;

  if Application.MessageBox('주택금융공사로 전송할 자료에 누락 된 사항이(PDF첨부등) 있나 검토 하세요.'+#13+'전송하시겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
  Begin
  
    ClientSocket1.Address := '10.40.0.248';
    ClientSocket1.Port := 35000;  
    if  ClientSocket1.Active Then ClientSocket1.Active := False;

    try
      ClientSocket1.Active := True;
    except on E:Exception do
      ShowMessage('Server 연결실패 ' + E.Message );
    end;
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

  if qrymain.fieldByName('judge_assess_sht_no').AsString = '' then  //
  begin
    ShowMessage('감정서 번호가없습니다.');
    exit;
  end;

  qryMain.Resolve(nil);

  sFilePath := od.FileName;
  url := 'http://10.40.0.246/DelphiUp.php';
  tmpFileName :=  Trim(qrymain.fieldByName('judge_assess_sht_no').AsString) + '.PDF';
 // tmpFileName := 'test.PDF';
  qryPDF.Query.Text := 'Exec SP_I_HF_PdfLog :FilePath, :wUser, :Masterid';

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
        qrypdf.Params.ParamByName('Masterid').AsInteger := qrymain.fieldByName('Masterid').AsInteger;
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

  qryMain.RefreshData;
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

procedure TXForm1.aFindaddrExecute(Sender: TObject);
var
  ALink : TXLink;

  tmpJuso, tmpJibun, tmpRname : string;

begin

  ALink := TxLink.Create(nil);

  try
    ALink.AddParams('FindDong', qryMain.FieldByName('mort_dtladdr').AsString);

    OpenDLL('FindRaddr.dll', nil, Alink);

    if ALink.Result = 1 then
    begin
      if qryMain.State in [dsbrowse] then qryMain.Edit;

      tmpJuso := Alink.ParamByString('siNm');
      msg.lines.Add(tmpjuso);
      if Alink.ParamByString('sggNm') <> '' then
      begin
        tmpJuso := tmpJuso + ' '+Alink.ParamByString('sggNm');
        msg.lines.Add(tmpjuso);
      end;
      if Alink.ParamByString('emdNm') <> '' then begin
        tmpJuso := tmpJuso + ' '+Alink.ParamByString('emdNm');
        msg.lines.Add(tmpjuso);
      end;
      if Alink.ParamByString('liNm') <> '' then begin
        tmpJuso := tmpJuso + ' '+Alink.ParamByString('liNm');
        msg.lines.Add(tmpjuso);
      end;

      if Alink.ParamByString('san') = '0' then
        tmpJibun   := ''
      else if Alink.ParamByString('san') = '1' then
        tmpJibun := '산'
      else
        tmpJibun := '';

      tmpJibun :=  tmpJibun + Alink.ParamByString('bun1');
      msg.Lines.add(tmpJibun);
      if Alink.ParamByString('bun2') <> '0' then
      begin
        tmpJibun := tmpJibun + '-' + Alink.ParamByString('bun2');
        msg.Lines.add(tmpJibun);
      end;

      tmpRname := Alink.ParamByString('RName');
      if Alink.ParamByString('build1') <> '0' then
      begin
        tmpRname := tmpRname +' ' + Alink.ParamByString('build1');
        msg.Lines.add(tmpRname);
      end;
      if Alink.ParamByString('build2') <>  '0' then
      begin
        tmpRname := tmpRname +' ' + Alink.ParamByString('build2');
        msg.Lines.add(tmpRname);
      end;

      //공사측 소재지란 채우기 실행.
      with qrymain do begin
        //FieldByName('').AsString := Alink.ParamByString('');
        FieldByName('mort_zip_cd').AsString := Alink.ParamByString('ZipNo'); //우편주소
        FieldByName('lawco_dong_cd').AsString := Alink.ParamByString('RegEub'); //법정동코드
        FieldByName('mort_st_stnm_addr_cd').AsString := Alink.ParamByString('RCode'); //도로명코드

        FieldByName('mort_zipaddr').AsString := tmpJuso;
        FieldByName('mort_dtladdr').AsString := tmpJibun;

        FieldByName('mort_st_dtladdr').AsString := tmpRname; //도로명

      end;
    end;
  finally
    Alink.Free;
  end;

end;

procedure TXForm1.edtFstatusNoKeyPress(Sender: TObject; var Key: Char);
begin
  if Not ( key in ['0'..'9'] ) then
  begin
    key := #0;
    ShowMessage('숫자만 입력 가능');
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

  cmd := Format('%.6d', [ qrymain.FieldByName('Masterid').AsInteger ] ) + 'Y';

  ClientSocket1.Socket.SendText(cmd);

  with qryLog do
  begin
    query.Text := 'Exec SP_I_HF_StatusLog :Masterid, :wUser, :Msg';
    params.ParamByName('wUser').AsInteger := userinfo.UID;
    params.ParamByName('Msg').AsString := userinfo.UserName + ' 보금자리 전송자료를 시도 했습니다.' ;
    params.ParamByName('Masterid').AsInteger := qryMain.fieldByName('Masterid').AsInteger;
    Execute;
  end;

  { 2019-02-11 주석처리.
  with qryMain do
  begin
    if qryMain.State in [dsbrowse] then qrymain.Edit;
    FieldByName('isProcess').AsBoolean  := True;

    qrymain.Resolve(nil);
    qrymain.RefreshData;
  end;
  }


end;

function TXForm1.Datachk: boolean;
begin

  result := False;

  With qryMain do begin
    if FieldByName('co_prev_insp_no').asstring = '' then Result := True;

    if FieldByName('seq').asstring = '' then Result := True;
    if FieldByName('cancel_yn').asstring = '' then Result := True;

    if FieldByName('acpt_no').asstring = '' then Result := True;

    if FieldByName('acpt_dy').asstring = '' then Result := True;

    if FieldByName('judge_assess_sht_no').asstring = '' then
    begin
      ShowMessage('감정평가서번호 누락.');
      Result := True;
    end;

    if FieldByName('judge_assess_dy').asstring = '' then
    begin
      ShowMessage('감정평가일자 누락.');
      Result := True;
    end;

    if FieldByName('judge_assess_co_nm').asstring = '' then
    begin
      ShowMessage('감정평가사명 누락.');
      Result := True;
    end;

    if FieldByName('cust_no').asstring = '' then Result := True;

    if FieldByName('applcant_nm').asstring = '' then Result := True;

    if FieldByName('mort_addr_kind_dvcd').asstring = '' then Result := True;

    if FieldByName('mort_zip_cd').asstring = '' then Result := True;
    if FieldByName('mort_zipaddr').asstring = '' then Result := True;
    if FieldByName('mort_dtladdr').asstring = '' then Result := True;

    if FieldByName('own_pers_nm').asstring = '' then
    begin
      ShowMessage('소유자성명 누락.');
      Result := True;
    end;

    if FieldByName('house_dvcd').asstring = '' then Result := True;
    if FieldByName('mort_rsrch_kind_cd').asstring = '' then Result := True;
    if FieldByName('mort_pry_amt').asstring = '' then
    begin
      ShowMessage('담보기초가액 누락.');
      Result := True;
    end;
    if FieldByName('judge_assess_amt').asstring = '' then
    begin
      ShowMessage('감정평가금액(총담보평가액).');
      Result := True;
    end;

    if FieldByName('house_mort_assess_amt').AsInteger  = 0 then
    begin
      ShowMessage('주택담보평가금액은 0으로 입력 하면 안됩니다.');
      Result := True;
    end;

    if FieldByName('store_mort_assess_amt').asstring = '' then
    begin
      ShowMessage('상가담보평가금액 누락.');
      Result := True;
    end;

    if FieldByName('divs_area').asstring = '' then Result := True;
    if FieldByName('etc_apply_area').asstring = '' then
    begin
     ShowMessage('기타전용면적(주택부분 외) 누락.');
     Result := True;
    end;
    if FieldByName('sell_area').asstring = '' then
    begin
      ShowMessage('분양면적 누락.');
      Result := True;
    end;

    if FieldByName('sell_ph').asstring = '' then
    begin
      ShowMessage('분양평형 누락.');
      Result := True;
    end;

    if FieldByName('sell_room_cnt').AsInteger = 0 then
    begin
      ShowMessage('분양당시방수는 0으로 입력 하면 안됩니다.');
      Result := True;
    end;


    if FieldByName('use_apprv_yr').asstring = '' then
    begin
      ShowMessage('사용승인년도 누락.');
      Result := True;
    end;

    if FieldByName('lrgt_poss').asstring = '' then
    begin
      ShowMessage('대지권지분 누락.');
      Result := True;
    end;

    if FieldByName('main_struct').asstring = '' then
    begin
      ShowMessage('주요구조 누락.');
      Result := True;
    end;

    if FieldByName('bldng_tot_layer').asstring = '' then
    begin
      ShowMessage('1동의총층수 누락.');
      Result := True;
    end;

    if FieldByName('heat_type').asstring = '' then
    begin
      ShowMessage('난방방식 누락.');
      Result := True;
    end;

    if FieldByName('tot_dong_cnt').asstring = '' then
    begin
      ShowMessage('단지내총동수 누락.');
      Result := True;
    end;

    if FieldByName('tot_house_cnt').asstring = '' then Result := True;
    if FieldByName('sale_upper_amt').asstring = '' then Result := True;
    if FieldByName('sale_lower_amt').asstring = '' then Result := True;
    if FieldByName('cmplt_test_dy').asstring = '' then Result := True;
   // if FieldByName('sell_contrct_dy').asstring = '' then Result := True;
    if FieldByName('judge_assess_opn').asstring = '' then Result := True;
    //if FieldByName('inqry_rslt_exist_yn').asstring = '' then Result := True;
    if FieldByName('bsrch_pnttm').asstring = '' then Result := True;
    if FieldByName('make_dy').asstring = '' then Result := True;
  end;

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

//  url := 'http://10.44.254.160/' + qryMain.fieldByName('judge_assess_sht_no').AsString + '.PDF';
  shellexecute(Application.Handle, 'open', 'iexplore.exe', pchar(url), nil, SW_SHOWNORMAL)

end;

procedure TXForm1.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin

  if qrymain.FieldByName('isProcess').AsBoolean = True then
  begin
    aSendHF.Enabled := false;
    aEdit.Enabled := false;
    aSave.Enabled := false;
    pnFileUp.Enabled := false;
  end;


{
  if UpperCase( qryMain.FieldByName('cancel_yn').AsString ) <> 'R' then
  begin
    if ((qryMain.FieldByName('assess_seq').AsString = '001') or (qryMain.FieldByName('assess_seq').AsString = '002')
       or (qryMain.FieldByName('assess_seq').AsString = '003') or (qryMain.FieldByName('assess_seq').AsString = '004') )
    then
    begin
      aSendHF.Enabled := True;
    end else
    begin
      aSendHF.Enabled := False;
    end;
  end;

  if UpperCase( qryMain.FieldByName('cancel_yn').AsString ) <> 'R' then
  begin
    if qryMain.FieldByName('assess_seq').AsString = '005' then
    begin
      aSendHF.Enabled := false;
      aEdit.Enabled := false;
      aSave.Enabled := false;
      pnFileUp.Enabled := false;
    end;
  end
  // 추가코딩 필요
  else // R이면.
  begin
    //
  end;
}
end;

procedure TXForm1.edtFstatusUsrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Alink : TXLink;
begin

  if key = VK_RETURN then
  begin
    if edtFstatusUsr.Text = '' then exit;

    Alink := Txlink.Create(nil);
    try
     // Alink.AddParams('FindName',edtFstatusUsr.Text);
     // OpenDLL('FINDUSERINFO.DLL', nil, Alink);

           { TODO : 사용자정보가져오기 }

      if Alink.Result = 1 then
      begin
        if qryMain.State in [dsBrowse] then qryMain.Edit;
       // qryMain.FieldByName('FstatusUsr').AsString := Alink.ParamByString('Emp') ;
       // qryMain.FieldByName('FstatusNo').AsString :=  StringReplace( Trim(Alink.ParamByString('Mbl_Tel')), '-', '', [rfReplaceAll] );
      end;
    finally
      Alink.Free;
    end;
  end;

end;

procedure TXForm1.RzBitBtn1Click(Sender: TObject);
var
  ALink : TXLink;

  tmpJuso, tmpJibun, tmpRname : string;

begin

  ALink := TxLink.Create(nil);


    ALink.AddParams('FindDong', qryMain.FieldByName('mort_zipaddr').AsString);

    OpenDLL('FindRaddr.dll', nil, Alink);
end;

procedure TXForm1.edt_mort_dtladdrChange(Sender: TObject);
begin
   if qryMain.FieldByName('mort_dtladdr').AsString <>'' then
   begin
    edt_zipaddr.Text := qryMain.FieldByName('mort_zipaddr').AsString +   ' ' +
      qryMain.FieldByName('mort_dtladdr').AsString;
   end;

end;

procedure TXForm1.edt_mort_stChange(Sender: TObject);
begin
   if  qryMain.FieldByName('mort_st_dtladdr').AsString <>'' then
   begin

    edt_roadaddr.Text :=   qryMain.FieldByName(
      'mort_zipaddr').AsString +   ' ' +
    qryMain.FieldByName('mort_st_dtladdr').AsString;
    end;
end;

procedure TXForm1.Button1Click(Sender: TObject);

var filename :string;
   inf:TWin32FindData;
   f: file of Byte;
   iMaxLen:Longint;

begin

  if   not (od.Execute) then exit;
   filename:=od.FileName;
         AssignFile(f, od.FileName);
         Reset(f);

//         iMaxLen := round(FileSize(f)/1024);
//  if(iMaxLen>10000)then begin
//       //  EditURL.Text:='';
//         od.FileName:='';
//         Application.MessageBox('☞ 파일용량은 10M를 초과할수 없습니다!!!','메시지',MB_OK+MB_ICONINFORMATION);
//         //if(RzButton4.CanFocus)then RzButton4.SetFocus;
//         Exit;
//      end;


 if not IdFTP1.Connected then  IdFTP1.Connect;
   if IdFTP1.Connected then   begin
   IdFTP1.ChangeDir('/upfile/');
   IdFTP1.Put(od.FileName,qryMain.FieldByName('judge_assess_sht_no').AsString+'.pdf');
   sleep(1000);
   showmessage('전송완료');

     IdFTP1.Disconnect;
   end else showmessage('전송실패');


end;



procedure TXForm1.btn_buildClick(Sender: TObject);
var
  ALink : TXLink;
  etcarea: Currency;
begin

  ALink := TxLink.Create(nil);

  Try

    ALink.AddParams('Gubun', 1);
    ALink.AddParams('MasterID', Edt_judge_assess_sht_no.Text);

    OpenDLL('Buildreport.dll', nil, Alink);

    if ALink.Result = 1 then
    begin

      with qryMain do
      begin

        if State in [dsbrowse] then Edit;
        etcarea := StrToFloat(ALink.ParamByString('BunM')) -  StrToFloat(ALink.ParamByString('JunM'));
        FieldByName('use_apprv_yr').AsString := Copy(ALink.ParamByString('UseDate'), 1, 4); // 사용승인일
        FieldByName('cmplt_test_dy').AsString := Copy(ALink.ParamByString('UseDate'), 1, 4) + '-' + Copy(ALink.ParamByString('UseDate'), 5, 2) + '-' + Copy(ALink.ParamByString('UseDate'), 7, 2); // 준공검사
        FieldByName('bldng_tot_layer').AsString := ALink.ParamByString('OneDong'); // 1동의 층수
        FieldByName('tot_dong_cnt').AsString := ALink.ParamByString('TotDong'); // 총동수
        FieldByName('tot_house_cnt').AsString := ALink.ParamByString('TotHouseCnt'); // 총세대수
        FieldByName('main_struct').AsString := ALink.ParamByString('Gujo'); // 주요구조
        FieldByName('divs_area').AsString := ALink.ParamByString('JunM'); // 전용면적
        FieldByName('sell_area').AsString := ALink.ParamByString('BunM'); // 분양면적
        FieldByName('sell_ph').AsString := ALink.ParamByString('BunPung'); // 분양평형
        FieldByName('etc_apply_area').AsFloat := etcarea; //기타전용

      end;

    end;

  Finally

    Alink.Free;

  End;


end;




procedure TXForm1.do_GetGam;
begin

   with qryGam do
   begin
      Close;
      Query.Text := 'EXEC  SP_IW_S_KHF_GETGAM  :docid, :Gubun';
      Params.ParamByName('docid').AsString :=  qryMain.FieldByName('co_prev_insp_no').AsString;
      Params.ParamByName('Gubun').AsInteger := 1;
      Open;

   end;
    if qryGam.FieldByname('Price').AsCurrency  = 0  then
    begin
       ShowMessage('감정가가 없습니다. 감정서를 업로드 해주세요');
       Exit;
    end;
   if qryGam.RecordCount > 0 then
   begin
      if qryMain.State in [dsbrowse] then qryMain.Edit;
       qryMain.FieldByName('acpt_no').AsString := qryGam.FieldByName('Docid').AsString;
       qryMain.FieldByName('judge_assess_sht_no').AsString := qryGam.FieldByName('Docid').AsString;
       qryMain.FieldByName('FstatusUsr').AsString := qryGam.FieldByName('Charge').AsString;
      // qryMain.FieldByName('judge_assess_co_nm').AsString := qryGam.FieldByName('Manager').AsString;
       qryMain.FieldByName('acpt_dy').AsDateTime := qryGam.FieldByName('receiptdate').AsDateTime;

       qryMain.FieldByName('judge_assess_amt').AsCurrency := qryGam.FieldByName('Price').AsCurrency;
       qryMain.FieldByName('house_mort_assess_amt').AsCurrency := qryGam.FieldByName(
         'Price').AsCurrency;
       qryMain.FieldByName('store_mort_assess_amt').AsCurrency := qryGam.FieldByName('Price').AsCurrency;


       qryMain.FieldByName('sale_upper_amt').AsCurrency := qryGam.FieldByName('upprice').AsCurrency;
       qryMain.FieldByName('sale_lower_amt').AsCurrency := qryGam.FieldByName('downprice').AsCurrency;
       qryMain.FieldByName('bsrch_pnttm').AsDateTime := qryGam.FieldByName('PricePointDate').AsDateTime;
       qryMain.FieldByName('make_dy').AsDateTime := qryGam.FieldByName('WriteDate').AsDateTime;
       qryMain.FieldByName('judge_assess_dy').AsDateTime := qryGam.FieldByName('PricePointDate').AsDateTime;

       qryMain.FieldByName('travel_fee_amt').AsCurrency := qryGam.FieldByName('yebi').AsCurrency;
       qryMain.FieldByName('special_servc_amt').AsCurrency := qryGam.FieldByName('specialp').AsCurrency;
       qryMain.FieldByName('sale_amt').AsCurrency := qryGam.FieldByName('Hap').AsCurrency;
       qryMain.FieldByName('base_fee_amt').AsCurrency := qryGam.FieldByName('basicsusu').AsCurrency;
       qryMain.FieldByName('addvalue_fee').AsCurrency := qryGam.FieldByName('Buga').AsCurrency;
       qryMain.FieldByName('tot_sale_amt').AsCurrency := qryGam.FieldByName('Total').AsCurrency;
       qryMain.FieldByName('judge_assess_opn').AsString := 'PDF 참조';

       qryGam.Close;
       qryMain.Post;
       qryMain.Resolve(nil);
       qryMain.Edit;
       ShowMessage('감정서데이터 가져오기 완료');
    end;


end;

procedure TXForm1.btn_gamClick(Sender: TObject);
begin

   if qryMain.FieldByName('mort_rsrch_kind_cd').AsString = '2' then
   begin
     do_GetGam;
   end
   else
   begin
      do_GetYak;
   end;

end;

procedure TXForm1.do_GetYak;
begin
     with qryGam do
     begin

        Query.Clear;
        Params.Clear;

         Query.Text := 'EXEC  SP_IW_S_KHF_GETGAM  :docid, :Gubun';
         Params.ParamByName('docid').AsString :=  qryMain.FieldByName('co_prev_insp_no').AsString;
         Params.ParamByName('Gubun').AsInteger := 2;
         Open;



         if RecordCount > 0 then

         begin

              begin
             qryMain.Edit;
             qryMain.FieldByName('acpt_no').AsString := FieldByName('Docid').AsString;
             qryMain.FieldByName('judge_assess_sht_no').AsString := FieldByName('Docid').AsString;
           //  qryMain.FieldByName('FstatusUsr').AsString := FieldByName('writeman').AsString;
           //  qryMain.FieldByName('FstatusNo').AsString := FieldByName('writemantel').AsString;
            // qryMain.FieldByName('judge_assess_co_nm').AsString := qryGam.FieldByName('Manager').AsString;
             qryMain.FieldByName('acpt_dy').AsDateTime := FieldByName('receiptdate').AsDateTime;
            // qryMain.FieldByName('own_pers_nm').AsString := qryGam.FieldByName('Owner').AsString;
             qryMain.FieldByName('judge_assess_amt').AsCurrency := FieldByName('Price').AsCurrency;
             qryMain.FieldByName('house_mort_assess_amt').AsCurrency := FieldByName('Price').AsCurrency;
             qryMain.FieldByName('store_mort_assess_amt').AsCurrency := FieldByName('Price').AsCurrency;

             qryMain.FieldByName('sale_upper_amt').AsCurrency := FieldByName('upprice').AsCurrency;
             qryMain.FieldByName('sale_lower_amt').AsCurrency := FieldByName('downprice').AsCurrency;
             qryMain.FieldByName('bsrch_pnttm').AsDateTime := FieldByName('Writedate').AsDateTime;
             qryMain.FieldByName('make_dy').AsDateTime := FieldByName('WriteDate').AsDateTime;
             qryMain.FieldByName('judge_assess_dy').AsDateTime := FieldByName('Writedate').AsDateTime;

             qryMain.FieldByName('travel_fee_amt').AsCurrency :=0;
             qryMain.FieldByName('special_servc_amt').AsCurrency := 0;
             qryMain.FieldByName('sale_amt').AsCurrency := 1000;
             qryMain.FieldByName('base_fee_amt').AsCurrency := 1000;
             qryMain.FieldByName('addvalue_fee').AsCurrency := 100;
             qryMain.FieldByName('tot_sale_amt').AsCurrency := 1100;
             qryMain.FieldByName('judge_assess_opn').AsString := 'PDF 참조';

             Close;
             qryMain.Post;
             qryMain.Resolve(nil);
             qryMain.Edit;
             ShowMessage('약식데이터 가져오기 완료');

          end;

        end;
     end;
end;

End.
