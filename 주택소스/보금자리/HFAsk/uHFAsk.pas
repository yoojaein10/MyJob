//------------------------------------------------------------------------------
//
// Unit        : Unit1.pas
// Author      : 이태희
// Description : 
//  HF  의뢰 부분
// History
//   V 1.00 : 2018.12.16 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit uHFAsk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, RzPanel, DB,
  kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, RzCommon, StdCtrls, Mask, RzEdit, RzDBEdit, RzLabel,
  RzButton, cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  cxDBEdit, frxClass, frxDBSet, cxMemo;

type
  TfrmHFAsk = class(TXForm)
    pnTop: TRzPanel;
    qryMain: TkbmMWClientQuery;
    dsMain: TDataSource;
    qryMainMasterid: TLargeintField;
    qryMainco_prev_insp_no: TStringField;
    qryMainseq: TStringField;
    qryMaincancel_yn: TStringField;
    qryMainorg_nm: TStringField;
    qryMainduty_brcd_nm: TStringField;
    qryMainduty_emp_nm: TStringField;
    qryMainduty_tel_no: TStringField;
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
    qryMainprod_grp_cd: TStringField;
    qryMainacpt_no: TStringField;
    qryMainacpt_dy: TDateTimeField;
    qryMainjudge_assess_sht_no: TStringField;
    qryMainjudge_assess_dy: TDateTimeField;
    qryMainjudge_assess_co_nm: TStringField;
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
    qryMainbase_fee_amt: TCurrencyField;
    qryMaintravel_fee_amt: TCurrencyField;
    qryMainspecial_servc_amt: TCurrencyField;
    qryMainsale_amt: TCurrencyField;
    qryMainaddvalue_fee: TCurrencyField;
    qryMaintot_sale_amt: TCurrencyField;
    qryMainvrtl_acc_seq: TStringField;
    qryMainvrtl_acc_no: TStringField;
    qryMainvrtl_acc_dposit_nm: TStringField;
    qryMainvrtl_acc_new_dy: TDateTimeField;
    qryMainvrtl_acc_expire_dy: TDateTimeField;
    qryMainvrtl_acc_org_cd: TStringField;
    qryMainvrtl_acc_fee_amt: TCurrencyField;
    qryMainassess_seq: TStringField;
    qryMainassess_seq_dt: TStringField;
    qryMainFstatusNo: TStringField;
    qryMainFstatusUsr: TStringField;
    qryMainInDate: TDateTimeField;
    qryMainInUser: TStringField;
    qryMainInUserHostName: TStringField;
    qryMainInUserIP: TStringField;
    qryMainInUserOffice: TStringField;
    qryMainInUserSeq: TIntegerField;
    qryMainMgr_Code: TStringField;
    qryMainIsProcess: TBooleanField;
    qryMainprogress_note: TStringField;
    qryMainSigner: TIntegerField;
    qryMainPDF: TStringField;
    RZFC: TRzFrameController;
    btnClose: TRzBitBtn;
    frxDBDataset1: TfrxDBDataset;
    btnPrint: TRzBitBtn;
    qryMainApw_Master_masterid: TLargeintField;
    qryMainEditDate: TDateTimeField;
    qryMainWorkStatus: TStringField;
    qryMainWorkMsg: TStringField;
    qryMainAllocOffice: TStringField;
    qryMainBigo: TStringField;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    RzLabel12: TRzLabel;
    RzLabel39: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel11: TRzLabel;
    Edt_house_dvcd: TRzDBEdit;
    Edt_lawco_dong: TRzDBEdit;
    Edt_mort_addr_kind: TRzDBEdit;
    Edt_mort_dtladdr: TRzDBEdit;
    Edt_mort_rsrch_kind_cd: TRzDBEdit;
    Edt_mort_st: TRzDBEdit;
    Edt_mort_st_stnm_addr: TRzDBEdit;
    Edt_mort_zip_cd: TRzDBEdit;
    Edt_mort_zipaddr: TRzDBEdit;
    Edt_own_pers_nm: TRzDBEdit;
    Edt_applcant_mobile: TRzDBEdit;
    Edt_applcant_tel_no: TRzDBEdit;
    Edt_applcant_zip_cd: TRzDBEdit;
    Edt_fee_brd_cd: TRzDBEdit;
    Edt_hold_term_cd_nm: TRzDBEdit;
    Edt_prod_cd_nm: TRzDBEdit;
    Edt_prod_grp_cd: TRzDBEdit;
    Edt_rent_room_cnt: TRzDBEdit;
    Edt_repot_dlv_hope_dy: TRzDBEdit;
    Edt_req_dy: TRzDBEdit;
    Edt_tot_room_cnt: TRzDBEdit;
    Edt_req_amt: TcxDBCurrencyEdit;
    Edt_usub_ord_bond_amt: TcxDBCurrencyEdit;
    Edt_rent_amt: TcxDBCurrencyEdit;
    Edt_applcant_nm: TRzDBEdit;
    Edt_cancel_yn: TRzDBEdit;
    Edt_seq: TRzDBEdit;
    Edt_duty_brcd_nm: TRzDBEdit;
    Edt_duty_emp_nm: TRzDBEdit;
    Edt_duty_tel_no: TRzDBEdit;
    Edt_org_nm: TRzDBEdit;
    edtco_prev_insp_no: TRzDBEdit;
    Edt_cust_no: TRzDBEdit;
    Edt_expect_judge_amt: TcxDBCurrencyEdit;
    Edt_Bigo: TcxDBMemo;
    RzLabel33: TRzLabel;
    RzLabel44: TRzLabel;
    RzLabel34: TRzLabel;
    RzLabel35: TRzLabel;
    RzLabel36: TRzLabel;
    RzLabel37: TRzLabel;
    RzLabel38: TRzLabel;
    RzLabel40: TRzLabel;
    RzLabel41: TRzLabel;
    RzLabel42: TRzLabel;
    RzLabel43: TRzLabel;
    RzLabel45: TRzLabel;
    RzLabel46: TRzLabel;
    RzLabel47: TRzLabel;
    RzLabel48: TRzLabel;
    RzLabel49: TRzLabel;
    RzLabel50: TRzLabel;
    RzLabel51: TRzLabel;
    RzLabel52: TRzLabel;
    RzLabel53: TRzLabel;
    RzLabel54: TRzLabel;
    RzLabel55: TRzLabel;
    RzLabel56: TRzLabel;
    RzLabel10: TRzLabel;
    procedure XFormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    FMasterid : integer;

    procedure ProcessParameters(ALink: TXLink);
    procedure Datafind;
  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation
Uses
  DM, CommModule, ApConfig;
{$R *.DFM}

//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TfrmHFAsk;
begin
  Form := TfrmHFAsk.Create(Application);

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
procedure TfrmHFAsk.Datafind;
begin

  with qryMain do
  Begin
    if Active then Close;
    params.ParamByName('Masterid').AsInteger := FMasterid;
    open;
  End;

end;

procedure TfrmHFAsk.ProcessParameters(ALink: TXLink);
begin
  if Alink <> nil then
  Begin
    FMasterid := Alink.ParamByInteger('sMasterid');
  End;
end;

procedure TfrmHFAsk.XFormShow(Sender: TObject);
begin
  with qryMain do
  begin
    query.Text := 'Exec SP_S_APW_DH_HF_LINK :Masterid';
  end;

  DataFind;
end;

procedure TfrmHFAsk.btnCloseClick(Sender: TObject);
begin
  close;
end;



procedure TfrmHFAsk.btnPrintClick(Sender: TObject);
begin

  frxReport1.LoadFromFile(Appconfig.path.root + 'Report\KHF_Receipt.fr3');
  frxReport1.ShowReport;

end;

end.
