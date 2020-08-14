//------------------------------------------------------------------------------
// Unit        : Unit1.pas
// Author      : mc@kapanet.or.kr
// Description :
// History
//   V 1.00 : 2007.05 처음 작성
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit Js_Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, variants,
  ExtCtrls, Dialogs, cxGraphics, DB, kbmMemTable,
  kbmMWCustomConnectionPool, kbmMWCustomDataset, kbmMWClientDataset,
  ImgList, DBActns, ActnList, cxClasses, cxStyles, cxGridBandedTableView,
  RzCommon, kbmMWStreamFormat, kbmMWBinaryStreamFormat, RzEdit, TBX,
  cxLabel, TB2Item, TB2Dock, TB2Toolbar, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, RzCmboBx, RzDBCmbo, DBCtrls, RzDBEdit, RzRadChk, RzDBChk,
  RzButton, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  cxDBEdit, Mask, RzDBBnEd, RzDBLbl, RzLabel, RzStatus, RzPanel, RzDBStat,
  //
  Clipbrd, dxLink, dxForm, dxMessages, dxDLLManager,
  //
  uAJubSu, frxClass, frxDBSet, frxChBox, uApwRelation, cxMemo, cxCalendar
  ,shellAPI, ScktComp, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, EasyTable, ADODB, HTTPApp;


type
  TFrmJs_Main = class(TXForm)
    dsMst: TDataSource;

    RzFC: TRzFrameController;
    pRecepBase: TRzPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxEven: TcxStyle;
    cxOdd: TcxStyle;
    cxFooter: TcxStyle;
    cxHeader: TcxStyle;
    cxBold: TcxStyle;
    cxInactive: TcxStyle;
    cxSelection: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    Panel2: TPanel;
    TBToolbar: TTBToolbar;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    cxLabel8: TRzLabel;
    Edt_Search: TRzEdit;
    RzPanel2: TRzPanel;
    Btn_Help: TRzBitBtn;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDBDataset1: TfrxDBDataset;
    RzLabel7: TRzLabel;
    pnLockStat: TRzEdit;
    RzLabel1: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    QRMst: TkbmMWClientQuery;
    QRMstMasterID: TLargeintField;
    QRMstGUBUN: TStringField;
    QRMstDocID: TStringField;
    QRMstReceiptDate: TDateTimeField;
    QRMstRequestDate: TDateTimeField;
    QRMstPriority: TStringField;
    QRMstLimitDate: TDateTimeField;
    QRMstWorkInfo: TStringField;
    QRMstPurpose: TStringField;
    QRMstCategory: TStringField;
    QRMstInventory: TIntegerField;
    QRMstReceiptCharge: TIntegerField;
    QRMstCustID: TStringField;
    QRMstCustName: TStringField;
    QRMstProduction: TStringField;
    QRMstCustPart: TStringField;
    QRMstCustCharge: TStringField;
    QRMstCustPhone: TStringField;
    QRMstCustDocID: TStringField;
    QRMstOwnerName: TStringField;
    QRMstOwnerPhone: TStringField;
    QRMstDebtor: TStringField;
    QRMstDebtrID: TStringField;
    QRMstDebtrPhone: TStringField;
    QRMstTitle: TStringField;
    QRMstStatus: TStringField;
    QRMstBigo: TStringField;
    QRMstTs_MasterID: TStringField;
    QRMstAddrEtc: TStringField;
    QRMstAddrPyoung: TStringField;
    QRMstBuildingEtc: TStringField;
    QRMstBuildingPyoung: TStringField;
    QRMstCustChargeHP: TStringField;
    QRMstDebtorHP: TStringField;
    QRMstHouseCnt: TStringField;
    QRMstRefType: TStringField;
    QRMstRefDocID: TStringField;
    QRMstSEQ: TLargeintField;
    QRMstRow_ID: TStringField;
    QRMstREG: TStringField;
    QRMstEUB: TStringField;
    QRMstSAN: TStringField;
    QRMstADDR: TStringField;
    QRMstBUN1: TStringField;
    QRMstBUN2: TStringField;
    QRMstBuilding: TStringField;
    QRMstDong: TStringField;
    QRMstFloor: TStringField;
    QRMstHo: TStringField;
    QRMstBookingStr: TStringField;
    QRMstLocked: TStringField;
    QRMstAllocate: TStringField;
    QRMstJudgment: TStringField;
    QRMstConductDate: TDateTimeField;
    QRMstResult: TStringField;
    QRMstReturnReason: TStringField;
    QRMstPart: TIntegerField;
    QRMstReport: TStringField;
    QRMstReportDate: TDateTimeField;
    QRMstSendDate: TDateTimeField;
    QRMstSendman: TIntegerField;
    QRMstSendMethod: TStringField;
    QRMstDeposit: TCurrencyField;
    QRMstprice: TCurrencyField;
    QRMstCommission: TCurrencyField;
    QRMstPayment: TCurrencyField;
    QRMstComplete: TStringField;
    QRMstSuSuSum: TCurrencyField;
    QRMstTax: TCurrencyField;
    QRMstTotal: TCurrencyField;
    QRMstToJiChk: TStringField;
    QRMstToJiMon: TCurrencyField;
    QRMstToUseChk: TStringField;
    QRMstToUseMon: TCurrencyField;
    QRMstJiJukChk: TStringField;
    QRMstJiJukMon: TCurrencyField;
    QRMstBuildChk: TStringField;
    QRMstBuildMon: TCurrencyField;
    QRMstBuiPyoChk: TStringField;
    QRMstBuiPyoMon: TCurrencyField;
    QRMstBuiJunChk: TStringField;
    QRMstBuiJunMon: TCurrencyField;
    QRMstCadChk: TStringField;
    QRMstCadMon: TCurrencyField;
    QRMstLandChk: TStringField;
    QRMstLandMon: TCurrencyField;
    QRMstBuiDeungChk: TStringField;
    QRMstBuiDeungMon: TCurrencyField;
    QRMstJipHapChk: TStringField;
    QRMstJipHapMon: TCurrencyField;
    QRMstGongBuTotal: TCurrencyField;
    QRMstGuid: TStringField;
    QRMstReported: TStringField;
    QRMstSigner: TIntegerField;
    QRMstSigner_Act: TIntegerField;
    QRMstTrans_Master: TStringField;
    QRMstAdd_Master: TStringField;
    QRMstMerge_Master: TStringField;
    QRMstJudgCnt: TIntegerField;
    QRMstJudgResult: TStringField;
    QRMstCustCategory1: TIntegerField;
    QRMstYCode: TStringField;
    QRMstJun_Master: TIntegerField;
    QRMstSigner_Date: TDateTimeField;
    QRMstJudgment_Date: TDateTimeField;
    QRMstJudgment_Op: TIntegerField;
    QRMstBookingSeq: TLargeintField;
    QRMstRatio: TWordField;
    QRMstBookingCode: TIntegerField;
    QRMstManager: TStringField;
    QRMstCharge: TStringField;
    QRMstProcessCharge: TStringField;
    QRMstJudgCharge: TStringField;
    QRMstSearchStartDate: TStringField;
    QRMstSearchEndDate: TStringField;
    QRMstDSDesigner: TCurrencyField;
    QRMstDSDesigner2: TCurrencyField;
    QRMstDSDesigner3: TCurrencyField;
    QRMstDSDesigner4: TCurrencyField;
    QRMstDSDesigner5: TCurrencyField;
    QRMstDSDesigner6: TCurrencyField;
    QRMstDSDesigner7: TCurrencyField;
    QRMstDSDesigner8: TCurrencyField;
    QRMstDSDesigner10: TCurrencyField;
    QRMstDSDesigner11: TIntegerField;
    QRMstDSDesigner12: TIntegerField;
    QRMstDSDesigner13: TDateTimeField;
    QRMstAddress: TStringField;
    QRMstLSigner: TStringField;
    QRMstLReceiptCharge: TStringField;
    QRMstLWorkinfo: TStringField;
    QRMstLStatus: TStringField;
    QRMstLCategory: TStringField;
    QRMstLPurpose: TStringField;
    QRMstLOffice: TStringField;
    QRMstLCustCategory: TStringField;
    QRMstLockDate: TDateTimeField;
    QRMstLSendMan: TStringField;
    QRMstClient: TStringField;
    QRMstDSDesigner102: TCurrencyField;
    QRMstDSDesigner15: TCurrencyField;
    QRMstDSDesigner14: TCurrencyField;
    QRMstDSDesigner16: TCurrencyField;
    QRMstDSDesigner17: TCurrencyField;
    QRMstDSDesigner18: TFloatField;
    QRMstDSDesigner19: TCurrencyField;
    QRMstDSDesigner20: TFloatField;
    QRMstDSDesigner21: TFloatField;
    QRMstDSDesigner22: TFloatField;
    QRMstReturnMoney: TIntegerField;
    QRMstLTransOffice: TStringField;
    QRMstLReceiveOffice: TStringField;
    QRMstReceive_Master: TStringField;
    QRMstDSDesigner9: TCurrencyField;
    QRMstGUBUN_CODE: TStringField;
    Qry_inventorySearch: TkbmMWClientQuery;
    StringField1: TStringField;
    LargeintField1: TLargeintField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField4: TStringField;
    DateTimeField3: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    DateTimeField4: TDateTimeField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField2: TIntegerField;
    StringField18: TStringField;
    IntegerField3: TIntegerField;
    DateTimeField5: TDateTimeField;
    StringField19: TStringField;
    StringField20: TStringField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField4: TIntegerField;
    StringField24: TStringField;
    CurrencyField1: TCurrencyField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    Qry_inventorySearchpajStatus: TStringField;
    QRMstBUB_CD: TStringField;
    QRMstORD_HOI: TIntegerField;
    QRMstoverDay: TIntegerField;
    QRMstOffice: TStringField;
    QRMstSA_NO: TStringField;
    QRMstGubun_Name: TStringField;
    qry_Kapa: TkbmMWClientQuery;
    QRMstKapaJunPreReport_YN: TStringField;
    QRMsthoetc: TStringField;
    QRMstchaksugum: TStringField;
    pRecept: TRzPanel;
    Shape8: TShape;
    Shape1: TShape;
    Shape7: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxLabel2: TRzLabel;
    cxLabel39: TRzLabel;
    cxLabel37: TRzLabel;
    cxLabel1: TRzLabel;
    cxLabel38: TRzLabel;
    cxLabel4: TRzLabel;
    cxLabel41: TRzLabel;
    cxLabel47: TRzLabel;
    cxLabel46: TRzLabel;
    cxLabel112: TRzLabel;
    cxLabel118: TRzLabel;
    RzLabel6: TRzLabel;
    RzStatusPane1: TRzStatusPane;
    Edt_Nd_Addr: TRzDBLabel;
    Shape2: TShape;
    RzStatusPane2: TRzStatusPane;
    Edt_DocID: TRzDBLabel;
    cxLabel6: TRzLabel;
    cxLabel76: TRzLabel;
    cxLabel77: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel11: TRzLabel;
    cxLabel51: TRzLabel;
    cxLabel49: TRzLabel;
    cxLabel29: TRzLabel;
    cxLabel43: TRzLabel;
    cxLabel45: TRzLabel;
    RzLabel10: TRzLabel;
    cxLabel42: TRzLabel;
    cxLabel52: TRzLabel;
    RzLabel9: TRzLabel;
    cxLabel69: TRzLabel;
    Edt_CustName: TRzDBEdit;
    Lup_Office: TRzDBLookupComboBox;
    Rdo_Priority: TcxDBRadioGroup;
    Edt_WorkInfo: TRzDBEdit;
    Edt_ReceiptDate: TRzDBDateTimeEdit;
    Edt_RequestDate: TRzDBDateTimeEdit;
    Edt_LimitDate: TRzDBDateTimeEdit;
    BtnAddr: TRzButton;
    Edt_Title: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    btnAddrAdd: TRzButton;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    Lup_Category: TcxDBLookupComboBox;
    Lub_Purpose: TcxDBLookupComboBox;
    Lub_Workinfo: TcxDBLookupComboBox;
    Chk_ToJiChk: TRzDBCheckBox;
    Edt_ToJiMon: TRzDBNumericEdit;
    Chk_ToUseChk: TRzDBCheckBox;
    Edt_ToUseMon: TRzDBNumericEdit;
    Chk_JiJukChk: TRzDBCheckBox;
    Edt_JiJukMon: TRzDBNumericEdit;
    Chk_BuildChk: TRzDBCheckBox;
    Edt_BuildMon: TRzDBNumericEdit;
    Chk_BuiPyoChk: TRzDBCheckBox;
    Edt_BuiPyoMon: TRzDBNumericEdit;
    Chk_BuiJunChk: TRzDBCheckBox;
    Edt_BuiJunMon: TRzDBNumericEdit;
    Chk_CadChk: TRzDBCheckBox;
    Edt_CadMon: TRzDBNumericEdit;
    Chk_LandChk: TRzDBCheckBox;
    Edt_LandMon: TRzDBNumericEdit;
    Chk_BuiDeungChk: TRzDBCheckBox;
    Edt_BuiDeungMon: TRzDBNumericEdit;
    Chk_JipHapChk: TRzDBCheckBox;
    Edt_JipHapMon: TRzDBNumericEdit;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    Etc_Ts_MasterID: TRzDBEdit;
    Edt_Add_Master: TRzDBEdit;
    Chk_Report: TRzDBCheckBox;
    Com_RefType: TRzDBComboBox;
    Lup_ChargeName: TcxDBLookupComboBox;
    RzDBCheckBox1: TRzDBCheckBox;
    btnChareNameAdd: TRzButton;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    Edt_OwnerName: TRzDBEdit;
    Edt_Debtor: TRzDBEdit;
    Edt_DebtrPhone: TRzDBEdit;
    Edt_CustDocID: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    BtnCust: TRzButton;
    Edt_CustCharge: TRzDBEdit;
    Edt_CustPart: TRzDBEdit;
    Edt_CustPhone: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    Edt_CustChargeHP: TRzDBEdit;
    pan_DocID: TRzPanel;
    EdtDocID: TRzEdit;
    RzButton4: TRzButton;
    RzButton5: TRzButton;
    chk_auto: TRzCheckBox;
    iblabel: TRzLabel;
    ibday: TcxDBDateEdit;
    BankSocket: TClientSocket;
    Lup_Manager: TcxDBLookupComboBox;
    RzLabel13: TRzLabel;
    QRMstlmanager: TStringField;
    QRMstSYNCLEVEL: TWordField;
    RzButton8: TRzButton;
    frxDBDataset2: TfrxDBDataset;
    DS_IW: TDataSource;
    Query_USA: TkbmMWClientQuery;
    Query_USALoffice: TStringField;
    Query_USADocID: TStringField;
    Query_USALstatus: TStringField;
    Query_USAaddress: TStringField;
    Query_USACustname: TStringField;
    Query_USAprice: TCurrencyField;
    Query_USArequestdate: TDateTimeField;
    Query_USALPurpose: TStringField;
    Edt_DebtorHP: TRzDBEdit;
    cxLabel111: TRzLabel;
    pReceptBtns: TRzPanel;
    BTN_Print: TRzButton;
    Btn_Save: TRzButton;
    Btn_Cancel: TRzButton;
    Pan_iud: TRzPanel;
    Btn_New: TRzButton;
    Btn_Copy: TRzButton;
    Btn_Edit: TRzButton;
    Btn_Delete: TRzButton;
    RzButton6: TRzButton;
    ActionList1: TActionList;
    aNew: TAction;
    aCopy: TAction;
    aEdit: TAction;
    aDelete: TAction;
    DataSetFirst1: TDataSetFirst;
    aCancel: TAction;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    aPrint: TAction;
    DataSetLast1: TDataSetLast;
    aAddr: TAction;
    aSave: TAction;
    aCust: TAction;
    AInventory: TAction;
    aChargeName: TAction;
    aAddrFind: TAction;
    aBooking: TAction;
    aHelp: TAction;
    aKapaJundb: TAction;
    aJudgGradeChkSmall: TAction;
    aDocIDChange: TAction;
    aOrderReport: TAction;
    aTkpOfKapaJunSearch: TAction;
    RzButton7: TRzButton;
    seday: TcxDBDateEdit;
    selabel: TRzLabel;
    pAddress: TRzPanel;
    cxLabel11: TRzLabel;
    cxLabel12: TRzLabel;
    cxLabel13: TRzLabel;
    RzLabel5: TRzLabel;
    cxLabel17: TRzLabel;
    cxLabel16: TRzLabel;
    cxLabel15: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    cxLabel57: TcxLabel;
    Edt_Addr: TRzDBButtonEdit;
    cxSan: TRzDBEdit;
    cxBUN1: TRzDBEdit;
    cxBUN2: TRzDBEdit;
    cxAptName: TRzDBEdit;
    cxDONG: TRzDBEdit;
    cxCHUNG: TRzDBEdit;
    cxHO: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    btnJunSearch: TRzButton;
    btnAddrClose: TRzButton;
    cxAddrEtc: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzButton1: TRzButton;
    RzDBEdit9: TRzDBEdit;
    btn_Ts: TRzButton;
    RzLabel16: TRzLabel;
    edt_signer: TcxDBLookupComboBox;
    lab_manager: TLabel;
    Qry_Beajung: TkbmMWClientQuery;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    CurrencyField2: TCurrencyField;
    DateTimeField8: TDateTimeField;
    StringField37: TStringField;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    cxLabel10: TcxLabel;
    edit_tel: TcxTextEdit;
    cxLabel14: TcxLabel;
    edit_Sub: TcxTextEdit;
    cxLabel18: TcxLabel;
    memo_text: TcxMemo;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    Button3: TButton;
    TempQry: TkbmMWClientQuery;
    Btn_Gong: TButton;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    frxReport1: TfrxReport;
    Btn_HF: TRzButton;
    aHF: TAction;
    Edit_Seq: TEdit;
    procedure XFormCreate(Sender: TObject);
    procedure btnAddrCloseClick(Sender: TObject);
    procedure cxBUN1Exit(Sender: TObject);
    procedure Edt_AddrKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddrKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddrClick(Sender: TObject);
    procedure Edt_CustNameKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_SearchKeyPress(Sender: TObject; var Key: Char);
    procedure dsMstStateChange(Sender: TObject);
    procedure Edt_SearchEnter(Sender: TObject);
    procedure dsMstDataChange(Sender: TObject; Field: TField);

    procedure ActionCommand(Sender: TObject);
    procedure XFormDestroy(Sender: TObject);
    procedure Edt_AddrButtonClick(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzDBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edt_OwnerNameChange(Sender: TObject);
    procedure Edt_OwnerPhoneChange(Sender: TObject);
    procedure btnJunSearchClick(Sender: TObject);
    procedure cxBUN2Exit(Sender: TObject);
    procedure cxSanKeyPress(Sender: TObject; var Key: Char);
    procedure cxSanExit(Sender: TObject);
    procedure Lub_PurposeExit(Sender: TObject);
    procedure Edt_OwnerNameExit(Sender: TObject);
    procedure Edt_DebtorExit(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure RzButton4Click(Sender: TObject);
    procedure RzButton5Click(Sender: TObject);
    procedure chk_autoClick(Sender: TObject);
    procedure QRMstDocIDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QRMstResolveError(Sender: TObject; ErrorType: Integer;
      Message: string; RecordID: Integer; Current: Boolean;
      var Retry: Boolean);
    procedure RzButton7Click(Sender: TObject);
    // 나현찬 2012
      procedure BankSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure RzButton8Click(Sender: TObject);
    procedure btn_TsClick(Sender: TObject);
    procedure Etc_Ts_MasterIDKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Btn_GongClick(Sender: TObject);




  private
    FMasterID: Integer;
    cStatus: string;
    FormMode: string;
    FLocked: Boolean;
    FJubsu: TJubsu;
    function doDataChecked: Boolean;
    procedure Modal_Screen_Size;
    procedure ProcessParameters(ALink: TXLink);
    procedure SetLocked(const Value: Boolean);
    procedure AddressSettion;

    function Get_CustCharge_FAX(): string;
    procedure KapaJunDbCall;
    procedure WMmgReturn(var Message: TMessage); message WM_MSG_APW;
    procedure DataFind(const AKIND: Integer);
    procedure SetDefaultData;
    procedure JudgGradeChkSmallOpen;
    function DocIDChange: Boolean;
    //2008.09.09
    function StatusChk: integer;
    procedure OrderReport;
    //2010.01
    function ShgRegCheck: Boolean;
    function AllReceiptSync: Boolean; //ApworkReceiptSync 삭제
    Procedure Shg_AppDetailOpen;
    // 20100617 추가
    Procedure KapaJunPreference;
    ///2010.09.13
    function ApworkStatusCHK: Boolean;


     ///2011.09.23 추가      나현찬 추가
    function MembershipCHK: Boolean;
    ///2012.01.16 추가
    Procedure SocketCon;
 ///2012.09.07 추가
    Procedure DoGunNameInsert;

    ////2017-08-23 이일우 추가
    function CHK_MMS: Boolean;
    procedure SEND_MMS;

     ///2013.03.26 추가
    ///디자인추가 엑션리스트에 aTkpOfKapaJunSearch 추가 "경매건 협회전례조회" 버튼 추가
    procedure TkpOfKapaJunSearchOpen;
    //2013.08.06 추가 경매건 임시전례생성
    procedure KapaJunPreference_Tkp;
    procedure SimsaBigo_Chk; // 2020-04-23 유재인 추가
  protected
    property Locked: Boolean read FLocked write SetLocked;
  public

// 미래새한 이정구 추가작업
    procedure MRSH_Title_Make();
    procedure HF_DocidSet;
    procedure HF_DataSet;
  end;

procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

{$R *.DFM}

uses { 컴먼에 포함되어야 할 unit ..   RxStrUtils    GsCode06 }
  ActiveX, UserData, dxPlugInUtils, GsCode06, RxStrUtils, DM, CommModule, CommFuncU, UserFunc, ApConfig,ts_jun,
  ComObj;
 
//
// DLL Export function
//

procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TFrmJs_Main;
begin
  Form := TFrmJs_Main.Create(Application);
  try
    AHandle := Form.SetParentControl(AParent);
    Form.ProcessParameters(ALink);
    Form.ShowModal;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TFrmJs_Main.ProcessParameters(ALink: TXLink);
begin
  if ALink <> nil then begin
    cStatus := ALink.ParamByString('cStatus');
    FMasterID := Alink.ParamByInteger('MasterID');
    //ShowMessage(IntToStr(FMasterID));
  end;
end;


procedure TFrmJs_Main.XFormCreate(Sender: TObject);
begin
  FJubsu := TJubsu.Create(self, Pointer(QrMst));
  Modal_Screen_Size;
  Lup_Office.Enabled := UserData.Userinfo.ShowAll; //입력용 본지사
  if UserData.Userinfo.ShowAll then
    Lup_ChargeName.Properties.ListSource := DBM.Dsc_I_TotalAppraisal
  else
    Lup_ChargeName.Properties.ListSource := DBM.Dse_I_JisaAppraisal;
end;

procedure TFrmJs_Main.XFormDestroy(Sender: TObject);
begin
  FreeAndNil(FJubsu);
end;

procedure TFrmJs_Main.Modal_Screen_Size;
begin
end;

procedure TFrmJs_Main.XFormShow(Sender: TObject);
begin
  DataFind(2);
  ///2012.01.18 추가

  if cStatus = 'new' then
    aNew.Execute;
  // 나현찬 20130801
  if (userinfo.Office = '10') or (userinfo.Office = '23') then
    begin
      iblabel.Visible := true;
      ibday.Visible := true;
      selabel.Visible := true;
      seday.Visible := true;
    end
  else
    begin
      iblabel.Visible := false;
      ibday.Visible := false;
      selabel.Visible := false;
      seday.Visible := false;

    end;

end;

procedure TFrmJs_Main.SetDefaultData;
begin
  with QrMst do begin
      if not (State in [dsEdit, dsInsert]) then Edit;
    if COPY(FieldByName('DocId').AsString, 1, 4) = '외부' then
      FieldByName('DocId').AsString := '';
    FieldByName('ReceiptDate').AsDateTime := Date;
    FieldByName('Priority').AsString := '1'; // 우선순위
  //2008.10.13 주석처리

       FieldByName('Status').AsString := '10'; // 접수완료

   // FieldByName('Status').AsString := '10'; // 접수완료
    FieldByName('LOCKED').AsString := 'N'; //잠금상태
    FieldByName('Report').AsString := 'Y'; //실적보고
    FieldByName('ReceiptCharge').AsInteger := Userinfo.UID;
  end;
end;

procedure TFrmJs_Main.DataFind(const AKIND: Integer);
begin
  with QRMst do begin

    dsMst.OnStateChange := nil;
    dsMst.OnDataChange := nil;

    Close;
    Params.ParamByName('nKind').AsInteger := AKIND;
    if AKIND = 1 then
      Params.ParamByName('Docid').AsString := Edt_Search.Text
    else
      Params.ParamByName('Docid').AsInteger := FMasterID;
    dsMst.OnStateChange := dsMstStateChange;
    dsMst.OnDataChange := dsMstDataChange;
    open;
    //2008.12.26 추가
    Edt_CustName.Text := QRMst.FieldByName('CustName').AsString;
    if (not IsEmpty) and (COPY(FieldByName('DocId').AsString, 1, 4) <> '외부') then
      Edt_Search.Text := QRMst.FieldByName('DocID').AsString;
  end;

end;

function TFrmJs_Main.DoDataChecked: Boolean;
var
  i: integer;
  ARzDbEdit: TRzDBEdit;
  ACxCombobox: TcxDBLookupComboBox;
  sSql: string;
begin
  Result := False;
  //2009.01.07(2008.12.26 추가된부분)
  if Edt_CustName.Text <> QRMst.FieldByName('CustName').AsString then
  begin
    MessageDlg('입력하신 거래처는 거래처코드에서 선택된 거래처명이 아닙니다.', mtInformation, [mbOK], 0);
    Edt_CustName.SetFocus;
    Exit;
  end;
  
  ///2016.10.06 중토위 담당평가사 체크
  if (QRMst.FieldByName('GUBUN_CODE').AsString = 'LAN') and (edt_signer.Text = '') then
  begin
    MessageDlg('중토위건은 접수시 담당평가사를 입력하셔야 합니다.(중토위로 통보됨)', mtInformation, [mbOK], 0);
    edt_signer.SetFocus;
    Exit;
  end;

//  for i := 0 to pRecept.ControlCount - 1 do begin
  for i := 0 to self.ComponentCount - 1 do begin
    if ((self.Components[i].Tag = 1) or (self.Components[i].Tag = 2)) then begin
      if (self.Components[i] is TRzDBEdit) then begin
        ARzDbEdit := TRzDBEdit(self.Components[i]);
        if ARzDbEdit.Text = EmptyStr then begin
          MessageDlg(ARzDbEdit.HelpKeyword, mtWarning, [mbOK], 0);
          if (self.Components[i].Tag = 1) then
            ARzDbEdit.SetFocus;
          Exit;
        end;
      end;
      if (self.Components[i] is TcxDBLookupComboBox) then begin
        ACxCombobox := TcxDBLookupComboBox(self.Components[i]);
        if ACxCombobox.Text = EmptyStr then begin
          MessageDlg(ACxCombobox.HelpKeyword, mtWarning, [mbOK], 0);
          ACxCombobox.SetFocus;
          Exit;
        end;
      end;
    end;
  end;

  //2010.01 추가 신한은행 물건 체크 후 법정동 빈데이타 있으면 입력화면 호출
 // 나현찬  if (not ShgRegCheck) then
 /// 2012.06.05 신한은행은 중복위뢰 확인을 위해 무조건 띄우게 변경
///2012.06.05 신한은행은 중복의뢰 확인을 위해 무조건 띄우게 변경
 //  if QrMst.fieldByName('GUBUN_CODE').AsString = 'SHG' then
//    Shg_AppDetailOpen;

  Result := True;
end;


procedure TFrmJs_Main.btnAddrCloseClick(Sender: TObject);
  procedure InvenToryCheck;
  begin
    with Qry_inventorySearch do begin
      Close;
      if QRMst.FieldByName('REG').AsString = '' then Exit;
      Params.ParamByName('REG').AsString := QRMst.FieldByName('REG').AsString;
      Params.ParamByName('EUB').AsString := QRMst.FieldByName('EUB').AsString;
      Params.ParamByName('BUN1').AsString := QRMst.FieldByName('BUN1').AsString;
      Params.ParamByName('MasterID').AsInteger := QRMst.FieldByName('MasterID').AsInteger;
      Open;
      if not IsEmpty then
        Showmessage('유사 소재지의 접수건이 존재합니다. 유사소재지조회를 통해 확인 하실 수 있습니다.');
    end;
  end;
begin

  pAddress.Visible := false;

        // 나현찬 수정 시작
if (userinfo.Office <> '11') then
begin
// 나현찬 주석  20130905 if  (rzdbedit4.Text ='22') or (rzdbedit4.Text ='23') or (rzdbedit4.Text ='24') or (rzdbedit4.Text ='25') then
 // 나현찬 20130905 추가
 if  (rzdbedit4.Text ='22') or (rzdbedit4.Text ='23') or (rzdbedit4.Text ='24') or (rzdbedit4.Text ='25') OR  (rzdbedit4.Text ='D1') or (rzdbedit4.Text ='D2') or (rzdbedit4.Text ='A2') then
   begin
  Clipboard.AsText :=  edt_debtor.Text + ' 담보물'   ;   //나현찬
  QRMst.FieldByName('Title').AsString := edt_debtor.Text + ' 담보물'  ;  //나현찬
   end
  else if (lub_purpose.Text = '법원경매') or (lub_purpose.Text ='체납처분') or (lub_purpose.Text ='공매')  then
   begin
     Clipboard.AsText :=  edt_ownername.Text  + ' 소유물건'   ;
       QRMst.FieldByName('Title').AsString := edt_ownername.Text  + ' ' +
         '소유물건'  ;

      // 20080925  나현찬 수정
      if   Edt_CustDocID.Text <> '' then
      begin
       Clipboard.AsText :=  edt_ownername.Text  + ' 소유물건('+Edt_CustDocID.Text+')'   ;
       QRMst.FieldByName('Title').AsString := edt_ownername.Text  + ' 소유물건('+Edt_CustDocID.Text+')'  ;
      end else begin
       Clipboard.AsText :=  edt_ownername.Text  + ' 소유물건'   ;
       QRMst.FieldByName('Title').AsString := edt_ownername.Text  + ' 소유물건'  ;
      end;
   end
   else begin

        Clipboard.AsText :=  Edt_Nd_Addr.Caption  + ' 소재 부동산'   ;
        QRMst.FieldByName('Title').AsString := Edt_Nd_Addr.Caption  + ' 소재 부동산'   ;
   end;
 end;
  Edt_Title.SetFocus;

 if (userinfo.Office = '11') then
   begin
     edt_title.Text := '';
     edt_title.Text := edt_nd_addr.Caption ;
   end; // 나현찬 수정 끝


  InvenToryCheck;
  SimsaBigo_Chk;

end;



procedure TFrmJs_Main.cxBUN1Exit(Sender: TObject);

var
  cTmp: string[12];
begin
//  btnJunSearch.SetFocus;
// 나현찬 주석 20101101  cxBUN2Exit(cxBUN1);
//  if (FdataSet.fieldByName('Reg').asString <> '') and (FdataSet.fieldByName('Eub').asString <> '') then begin
//    btnJunSearchClick(Sender);
//    cxBUN2.SetFocus;
//  end else begin
//    cxBUN2.SetFocus;
//  end;

// 나현찬 추가
   // 나현찬
 with TcxDBTextEdit(Sender) do begin
    try
      if StrtoIntDef(Text, 0) > 0 then
        cTmp := '0000' + TrimLeft(Text);

      Text := copy(cTmp, length(cTmp) - 3, 4);
    except
    end;
  end;

// 나현찬 끝
  AddressSettion;
end;

procedure TFrmJs_Main.cxBUN2Exit(Sender: TObject);
var
  cTmp: string[12];
begin
  // 지번을 0으로 채움
  with TcxDBTextEdit(Sender) do begin
    try
      if StrtoIntDef(Text, 0) > 0 then
        cTmp := '0000' + TrimLeft(Text);

      Text := copy(cTmp, length(cTmp) - 3, 4);
    except
    end;
  end;
  AddressSettion;
end;

procedure TFrmJs_Main.Edt_AddrKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    aAddrFind.Execute;
end;

procedure TFrmJs_Main.BtnAddrKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnAddrClick(nil);
end;

procedure TFrmJs_Main.BtnAddrClick(Sender: TObject);
begin
  pAddress.Visible := true;
 // 나현찬 주석 20101101 pRecept.Enabled := False;
  Edt_Addr.SetFocus;
end;

procedure TFrmJs_Main.Edt_CustNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    aCust.Execute;
end;

procedure TFrmJs_Main.Edt_SearchEnter(Sender: TObject);
begin
  Edt_Search.SelectAll;
end;

procedure TFrmJs_Main.Edt_SearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Length(Edt_Search.Text) > 0) and (key = #13) then begin
    key := #0;
    DataFind(1);
  end;
end;

procedure TFrmJs_Main.dsMstStateChange(Sender: TObject);
begin


  aEdit.Enabled := (QrMst.State in [dsBrowse]) and (not Locked);
  BtnAddr.Enabled := not aEdit.Enabled and (not Locked);
  TBToolbar.Enabled := (QrMst.State in [dsBrowse]);
  aNew.Enabled := QrMst.State in [dsBrowse];
  aCopy.Enabled := QrMst.State in [dsBrowse];

  aPrint.Enabled := not (QrMst.State in [dsedit, dsinsert]);
  aSave.Enabled := not aEdit.Enabled and (not Locked);
  aCancel.Enabled := not aEdit.Enabled and (not Locked);
  aDelete.Enabled := aEdit.Enabled and (not Locked);
  aAddr.Enabled := not aEdit.Enabled and (not Locked);
  aCust.Enabled := not aEdit.Enabled and (not Locked);
  AInventory.Enabled := aNew.Enabled and (not Locked);
  ABooking.Enabled := aNew.Enabled and (not Locked);
  RzDBMemo1.ReadOnly := aEdit.Enabled;

  aHF.Enabled := not aEdit.Enabled and (not Locked);


  //2019.07.10 충청지사
//  aEdit.Enabled := True;
//  BtnAddr.Enabled := True;
//  TBToolbar.Enabled := True;
//  aNew.Enabled := True;
//  aCopy.Enabled :=True;
//
//  aPrint.Enabled := True;
//  aSave.Enabled := True;
//  aCancel.Enabled := True;
//  aDelete.Enabled := True;
//  aAddr.Enabled := True;
//  aCust.Enabled :=True;
//  AInventory.Enabled := True;
//  ABooking.Enabled := True;
//  RzDBMemo1.ReadOnly := True;


   IF (userinfo.Office = '10'  ) THEN BEGIN
  if (128 and UserData.Userinfo.MyGroups<>128) then begin
    Edt_OwnerName.passwordchar := '*';
   // Edt_OwnerPhone.passwordchar := '*';
    Edt_Debtor.passwordchar := '*';
    Edt_DebtrPhone.passwordchar := '*';
    Edt_DebtorHP.passwordchar := '*';
  end;
 end;

end;

procedure TFrmJs_Main.SetLocked(const Value: Boolean);
begin
  FLocked := Value;
  if FLocked then begin
    pnLockStat.Text := '잠김 (CLOSE)';
    pnLockStat.Font.Color := clRed;
    if cStatus <> 'new' then begin
    end;
  end
  else begin
    pnLockStat.Text := '열림 (OPEN)';
    pnLockStat.Font.Color := clBlue;
  end;
  dsMstStateChange(nil);
end;

procedure TFrmJs_Main.dsMstDataChange(Sender: TObject; Field: TField);
begin
  Locked := QrMst.FieldByName('LOCKED').AsString = 'Y';
  if Pos(',', QrMst.FieldByName('Manager').AsString) > 0 then
    lab_manager.Caption := '전체유치자:' + QrMst.FieldByName('Manager').AsString
  else
    lab_manager.Caption := '';
end;


procedure TFrmJs_Main.ActionCommand(Sender: TObject);
var
  TkpCD: integer;
  aFLD: variant;
  Msg: string;
  ///2018.12.15 추가
  aQuano : string;
begin
  case Tcontrol(Sender).Tag of
    1: begin
        FJubsu.InsertRecord(False);
        Edt_Search.Text := '';
        Edt_WorkInfo.SetFocus;
      end;
    2: begin
        FJubsu.InsertRecord(True);
        Edt_Search.Text := '';
      end;
    3: begin

    //2019.07.10 이일우충정지사
//        if Locked then begin
//          Showmessage('수정 불가능한 데이타 입니다.');
//          exit;
//        end;

        FJubsu.EditRecord;
        //2008.09.21 수정
        if (QrMst.fieldByName('GUBUN_CODE').AsString <> '') and (QrMst.fieldByName('Result').AsString = '00') then
          SetDefaultData;
        Edt_WorkInfo.SetFocus;
      end;
    4: begin
        if Application.MessageBox('삭제하시면 이 접수건의 모든 연관데이타도 삭제 됩니다.' + #13 +
          '삭제 하시겠습니까 ?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES then
          FJubsu.DeleteRecord;
      end;
    5: begin
         FMasterID := QrMst.fieldByName('MasterID').AsInteger;
        if DoDataChecked then begin

          if (QrMst.FieldByName('BookingCode').AsString <> '') and (StrToIntDef(QrMst.FieldByName('Ratio').AsString, 0) = 0) then
            QrMst.FieldByName('Ratio').AsInteger := 100;
            // 2012.07.27 연계데이타 처리 수정
          if  (QrMst.fieldByName('Result').AsString = '00') then begin
            //2011.09.23 평가정보회비관련 체크 추가
            if not MembershipCHK then Exit;
              //법원경매
              if QrMst.fieldByName('GUBUN_CODE').AsString = 'TKP' then begin
                  //2010.09.13 추가
                  if not  ApworkStatusCHK then Exit;

                  TkpCD := StatusChk;
                  if TkpCD > 5 then //취하또는 발송된경우
                    Showmessage('협회에 상태가 접수가능 상태가 아닙니다.' + #13 + #13 + '데이타가져오기 버튼을 눌러 최신 상태를 적용하세요.')
                  else if TkpCD < 4 then begin
                    //협회에 접수완료 처리 시 에러가 발생하지 않아도 상태업데이트 여부를 다시 확인한다.
                    if AllReceiptSync then begin
                      if StatusChk = 4 then
                      begin
                        //2014.03.07 수정 마스터에 입력하는 싱크 프로시져에서 처리하므로 여기선 제외..
                        {
                        if QrMst.fieldByName('KapaJunPreReport_YN').AsString = 'N' THEN
                        begin
                          //2014.01.10 수정 임시전례는 협회에서 감정서번호를 사건번호로 일괄 생성  KapaJunPreference_Tkp;
                          if QrMst.state <> dsEdit then QrMst.Edit;
                          QrMst.Fieldbyname('KapaJunPreReport_YN').AsString := 'Y';
                        end; }
                        FJubsu.SaveDataSet(False);
                      end
                      else begin
                        Showmessage('협회로 접수완료 처리를 하지 못했습니다. 다시 작업해 주세요.');
                        Exit;
                      end;
                    end
                    else begin
                      Showmessage('협회로 접수완료 처리를 하지 못했습니다. 다시 작업해 주세요.');
                      Exit;
                    end;
                  end
                  else FJubsu.SaveDataSet(False);
              end
              //중토위, 금융기관
              else begin
                //2015.06.13 주석처리
                {
                if (QrMst.fieldByName('GUBUN_CODE').AsString = 'SHG') and (not ShgRegCheck) then
                  Showmessage('신한은행 물건 중 소재지를 입력하지 않은 데이타가 있습니다.' + #13 + #13 + '입력하고 저장 하신 후 다시 접수하세요.')
                //2012.07.27 수정
                else }
                if not AllReceiptSync then
                  Showmessage('협회로 접수완료 처리를 하지 못했습니다.'+#13+#13 +'협회에 상태가 접수가능 상태가 아닐 수 있습니다.' + #13 + #13 + '데이타가져오기 버튼을 눌러 최신 상태를 적용하세요.')
                //20130611 임시전례 제출여부 추가
                else begin
                  FJubsu.SaveDataSet(False);
                    //2014.03.07 수정
                    if (QRMst.fieldbyName('REG').AsString <> '') AND (QrMst.fieldByName('KapaJunPreReport_YN').AsString = 'N') and (MessageDlg('협회로 전례 임시제출을 하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                      KapaJunPreference;
                end;
              end;
          end
          else begin
              ///2018.12.15 중토위 5년미만 경력자 여부 체크 추가
            if QrMst.fieldByName('GUBUN_CODE').AsString = 'LAN' then
            begin
              //TMS와 통플 구분 처리
              if Length(Userinfo.Office) > 2 then
                aQuano := QrMst.FieldByName('Signer').AsString
              else begin
                with TempQry do
                begin
                   Close;
                   Query.Text := 'Exec SP_S_QUANO :USR_SEQ ';
                   Params.ParamByName('USR_SEQ').AsString := QrMst.FieldByName('Signer').AsString;
                   Open;
                   aQuano := TempQry.FieldByName('QUANO').AsString;
                end;
              end;
              
              ///2019.08.22 파라메터 추가 :SA_NO 
              with qry_Kapa do begin
                Close;
                QueryService := 'KAPA_APWORK';
                Query.Text := 'EXEC APWORKS_CTS_MANAGEMENT_LTIS_CHECK :QUANO, :SA_NO';
                Params.ParamByName('QUANO').AsString := aQuano;
                Params.ParamByName('SA_NO').AsString := QrMst.fieldByName('SA_NO').AsString;
                Open;

                //경력미만으로 교육을 받아야 하는데 안받은 경우
                if FieldByName('CHKYN').AsString = 'Y' then
                begin
                  Showmessage('경력 5년 미만의 경우,'+#13+#13+
                  '교육을 이수하지 않으면 재결건을 평가할 수 없습니다.'+#13+#13+
                  '협회 추천센터(김종인 02-3465-9914)로 문의하시기 바랍니다.');
                  Exit;
                end;
                // 교육 받은 경력 5년 미만의 경우 협회심사 대상
                if FieldByName('CYEAR').AsInteger < 5 then
                begin
                  //Apw_Master의 JudgGrade를 4로 셋팅해야 하지만 감정서 작성완료시점에 호출되는 심사단계설정 프로시져(SP_Fun_Judgment_Grade_Calc)에서 다시 셋팅될꺼라서 스킵...
                  //발송시 체크하는 협회프로시져에는 협회 심사여부 체크 추가함...
                  Showmessage('경력 5년 미만의 평가사님이 평가한 경우,'+#13+#13+
                  '협회심사를 꼭 받으셔야 합니다.'+#13+#13+
                  '궁금하신 사항은 협회 추천센터(김종인 02-3465-9914)로 문의하시기 바랍니다.');
                end;

              end;

            end;
            ///2018.12.15 중토위 5년미만 경력자 여부 체크 추가끝
            FJubsu.SaveDataSet(False);
            //2014.03.07 수정 법원경매는 협회에서 임시전례를 일괄생성하므로 배제
            if (QRMst.fieldbyName('REG').AsString <> '') AND (QrMst.fieldByName('GUBUN_CODE').AsString <> 'TKP') AND
               (QrMst.fieldByName('KapaJunPreReport_YN').AsString = 'N') and (MessageDlg('협회로 전례 임시제출을 하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              KapaJunPreference;
          end;
          FMasterID := QrMst.fieldByName('MasterID').AsInteger;
          DataFind(2);
          //20100617 추가 20130611 위쪽으로 이동

        end
        else
          Abort;

          ///2019.08.22 수정
        if (QrMst.FieldByName('GUBUN_CODE').AsString <> 'TEM') and (QrMst.FieldByName('GUBUN_CODE').AsString <> 'LAN') then
          DoGunNameInsert;
          
        //2012.09.07추가
        DoGunNameInsert;

        //2013.03.27 추가
        TkpOfKapaJunSearchOpen;

        if (UserInfo.UserName = '양혜지') or (UserInfo.UserName = '강효선') or (UserInfo.UserName  ='이일우') or (UserInfo.UserName  ='남연재') or (UserInfo.UserName  ='유재인') then  ///20160524이일우 추가
        begin
          btn_TsClick(Sender);

        end;
        {
        if (UserInfo.Office ='10') then
         begin
           Qry_Beajung.Query.Clear;
           Qry_Beajung.Params.Clear;
           Qry_Beajung.Query.Text := 'EXEC SP_APW_AutoBaeJung :Docid';
           Qry_Beajung.Params.ParamByName('Docid').AsString := QRMst.FieldByName('Docid').AsString;
           Qry_Beajung.Execute(nil);
         end;


         if (UserInfo.UserName = '양혜지') or (UserInfo.UserName = '이예진') or (UserInfo.UserName  ='이일우')or (UserInfo.UserName  ='추성은') then  ///20160524이일우 추가
        begin
          if CHK_MMS then
           begin
             //ShowMessage('true');
             SEND_MMS;
           end
           else
           begin
            Exit;
            // ShowMessage('False');
           end;
          end;
          }
          if (Pos('한국주택금융공사', Edt_CustName.Text) > 0) then
          begin

            HF_DocidSet;

          end;

      end;
    6: begin
          if Application.MessageBox('정말 취소하시겠습니까?.' , '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES then
          begin
             if pAddress.Visible then pAddress.Visible := False;
              FJubsu.CancelDataSet;
          end;


      end;
    7: begin
        FJubsu.DoAddrFind(Edt_Addr.Text);
        if cxSan.Text = '' then QrMst.FieldByName('SAN').AsString := '1';
        cxSan.SetFocus;
        cxSan.SelectAll;

      end;
    8: begin
      with Query_USA do
       begin
       // if QRMst.FieldByName('REG').AsString = '' then Exit;
//         Query.Clear;
//         Query.Text := 'exec SP_IW_S_USA :REG, :EUB ';
//         Params.CreateParam(ftString,'DocId',ptInput);
//         Params.CreateParam(ftString,'ADDR',ptInput);
         Params.ParamByName('REG').AsString := QRMst.FieldByName('REG').AsString;
         Params.ParamByName('EUB').AsString := QRMst.FieldByName('EUB').AsString;
         Params.ParamByName('BUN1').AsString := QRMst.FieldByName('BUN1').AsString;
         Open;
       end;
        frxReport1.LoadFromFile(Appconfig.path.root + 'Report\메인리스트접수처리표.fr3');
        //Start.. 미래새한 이정구 추가작업
        case StrToInt(Copy(UserInfo.OrgID, 1, 5)) of
          30007: begin // 미래새한
              frxReport1.Variables.Variables['CustChargeFAX'] := QuotedStr(Get_CustCharge_FAX());
            end;
        else begin
          end;
        end;
        //End.. 미래새한 이정구 추가작업
        frxReport1.ShowReport;
      end;
    9: begin
        Msg := FJubsu.doCustFind(Edt_CustName.Text);
        if Msg <> '' then begin
          Showmessage(Msg);
          Edt_CustName.SetFocus;

        end
        else begin //2008.12.26 추가 Edt_CustName 변경됨.(TRzDBEdit -> TRzEdit)
          Edt_CustName.Text := QRMst.FieldByName('CustName').AsString;
          Edt_CustPart.SetFocus;
        end;
      end;
    10: begin
        if QrMst.FieldByName('SEQ').AsString = '' then begin
          ShowMessage('소재지가 한건 이상일 경우 사용하시는 기능 입니다. ' + #13 +
            '수정버튼을 눌러 접수화면에서 먼저 입력하세요.');
          Btn_Edit.SetFocus;
          exit;
        end;
        FJubsu.DoInventory;
      end;
    11: begin
        if QrMst.FieldByName('BookingCode').AsString = '' then begin
          ShowMessage('유치자가 한명이상일 경우 사용하시는 기능 입니다. ' + #13 +
            '수정버튼을 눌러 접수화면에서 먼저 입력하세요.');
          Btn_Edit.SetFocus;
          exit;
        end;
        FJubsu.DoBooking;
        //유치자 추가시 화면에 디스플레이
        QrMst.RefreshData;
      end;
    12: GotoHelpURL(ChangeFileExt(DllName, ''));
    13: KapaJunDbCall;
    14: begin //유사소재지조회-이일우
        if QRMst.fieldbyName('REG').AsString = '' then
          ShowMessage('소재지가 입력되지 않아서 검색할 수 없습니다.')
        else
          JudgGradeChkSmallOpen;
      end;
    15: begin
        pan_DocID.Visible := True;
        pRecept.Enabled := False;
        EdtDocID.Text := Edt_DocID.Caption;
        if not chk_auto.Checked then
          EdtDocID.SetFocus;
      end;
    16: begin
        OrderReport;
      end;
      ///2013.03.26 추가
     17: begin
        TkpOfKapaJunSearchOpen;
    end;
    
     18: begin

         HF_DataSet;

     end;
  end;
end;

//20100617 추가
Procedure TFrmJs_Main.KapaJunPreference;
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('MasterId', FMasterID);
    OpenDLL('Kapa_JunPreference.DLL', nil, ALink);
  finally
    FreeAndNil(ALink);
  end;
end;

function TFrmJs_Main.DocIDChange: Boolean;
begin
  Result := False;
  if EdtDocID.Text <> '' then begin
    with (DBM.Client_Query) do begin
      Close;
      Query.Clear;
      Query.Add('	Exec Sp_S_DocIdChk ''' + EdtDocID.Text + '''');
      Open;

      if not IsEmpty then begin
        Showmessage('이미 존재하는 감정서 번호 입니다. 다시 입력하세요');
        EdtDocID.SetFocus;
        Exit;
      end;
    end;
  end;
  QRMst.Edit;
  QRMst.FieldByName('DocID').AsString := EdtDocID.Text;
  Result := True;
end;

procedure TFrmJs_Main.JudgGradeChkSmallOpen;
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
   if QRMst.fieldbyName('Gubun_Code').AsString = 'TKP' then
  begin
    ALink.AddParams('bub_cd', QRMst.FieldByName('bub_cd').AsString);
    ALink.AddParams('sa_no', QRMst.FieldByName('sa_no').AsString);
    ALink.AddParams('ord_hoi', QRMst.FieldByName('ord_hoi').AsInteger);
    OpenDLL('FindLikeReceipt.DLL', nil, ALink);
  end
  ///법원경매건에 대해 법인 자료 유사소재지 검색도 같이 지원하고자 하는 여기 else만 주석처리...
  else
  if QRMst.fieldbyName('REG').AsString = '' then
    ShowMessage('소재지가 입력되지 않아서 검색할 수 없습니다.')
  else begin
    ALink.AddParams('MasterID', QRMst.fieldbyName('MasterID').AsInteger);
    ALink.AddParams('REG', QRMst.fieldbyName('REG').AsString);
    ALink.AddParams('EUB', QRMst.fieldbyName('EUB').AsString);
    ALink.AddParams('BUN1', QRMst.fieldbyName('BUN1').AsString);
    ALink.AddParams('ADDR', QRMst.fieldbyName('ADDR').AsString);
    OpenDLL('JudgGradeChkSmall.dll', nil, ALink);
  end;
  finally
    FreeAndNil(ALink);
  end;
end;


//2008.09.09
function TFrmJs_Main.StatusChk: integer;
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('BUB_CD', QRMst.fieldbyName('BUB_CD').AsString);
    ALink.AddParams('SA_NO', QRMst.fieldbyName('SA_NO').AsString);
    ALink.AddParams('ORD_HOI', QRMst.fieldbyName('ORD_HOI').AsInteger);
    OpenDLL('ConnStatusChk.DLL', nil, ALink);
    Result := ALink.Result;
  finally
    FreeAndNil(ALink);
  end;
end;


procedure TFrmJs_Main.Edt_AddrButtonClick(Sender: TObject);
begin
  aAddrFind.Execute;
end;


procedure TFrmJs_Main.XFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with (QrMst) do begin
    if state in [dsinsert, dsEdit] then begin
      if MessageDlg('아직 저장되지 않은 데이타가 있습니다. 저장하시겠습니까?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        aSave.Execute
      else
        aCancel.Execute;
    end;
  end;
  ///2012.01.11 추가

end;

procedure TFrmJs_Main.RzDBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', chr(8), chr(9)]) then
    key := #0;
end;

procedure TFrmJs_Main.Edt_OwnerNameChange(Sender: TObject);
begin
  case StrToInt(Copy(UserInfo.OrgID, 1, 5)) of
    30007: begin // 미래새한

      end
  else begin
      with QrMst do begin
        if state in [dsEdit] then
          FieldByName('Debtor').AsString := TEdit(Sender).Text;
      end;
    end;
  end;
end;

procedure TFrmJs_Main.Edt_OwnerPhoneChange(Sender: TObject);
begin
  with QrMst do begin
    if state in [dsEdit] then
      FieldByName('DebtrPhone').AsString := TEdit(Sender).Text;
  end;
end;

procedure TFrmJs_Main.btnJunSearchClick(Sender: TObject);
var
  ALink: TXLink;
  ATs_RMasterID, AJs_RMemo, ATs_TMasterID, AJs_TMemo, Jun_IDNum, a_rdate: string;
  AUnite_Memo: string;      // 나현찬 수정 a_rdate20101101,
begin
  ALink := TXLink.Create(nil);
  try
    Application.Hint := 'S';
    ALink.AddParams('Send_Reg', QrMst.fieldByName('REG').asString);
    ALink.AddParams('Send_Eub', QrMst.fieldByName('EUB').asString);
    ALink.AddParams('Send_SBun', cxBUN1.Text); // QrMst.fieldByName('BUN1').asString);
   // 나현찬 주석 20101101 ALink.AddParams('Send_EBun', cxBUN2.Text);
   ALink.AddParams('Send_EBun', cxBUN1.Text); // 나현찬 추가 이걸루
    ALink.AddParams('cMode', 'VALUE_SEND');

    OpenDLL('JW0001.DLL', nil, ALink);
    if ALink.Result = 1 then begin
      ATs_RMasterID := '';
      AJs_RMemo := '';
      ATs_TMasterID := '';
      AJs_TMemo := '';
      AUnite_Memo := '';
      Jun_IDNum := '';
          // 본건전례자료
      ATs_RMasterID := ALink.ParamByString('RMasterID');
      AJs_RMemo := ALink.ParamByString('RMasterMemo');
          // 탁상자료전례
      ATs_TMasterID := ALink.ParamByString('TMasterID');
      AJs_TMemo := ALink.ParamByString('TMasterMemo');
        a_rdate := alink.parambystring('Trdate'); // 나현찬
          // 공통 추가메모
      AUnite_Memo := ALink.ParamByString('TUnite_Memo');
      Jun_IDNum := ALink.ParamByString('id_num');

          // 본건전례
      if ATs_RMasterID <> '' then begin
        QrMst.FieldByName('Bigo').AsString := '감정서번호:' + ATs_RMasterID + ' 감정가액:' + FormatCurr('#,##', StrToCurr(AJs_RMemo)) + #13 + #10;
      end;
          // 탁상전례 마스터키값
      if ATs_TMasterID <> '' then begin
        QrMst.FieldByName('Ts_MasterID').AsString := ATs_TMasterID;
     // 나현찬 주석 20101101   QrMst.FieldByName('Bigo').AsString := '탁상자문:' + ATs_TMasterID + ' 탁상자문가:' + FormatCurr('#,##', StrToCurr(AJs_TMemo)) + #13 + #10;
     QrMst.FieldByName('Bigo').AsString := ' 탁상자문가:' + FormatCurr(
                '#,##', StrToCurr(AJs_TMemo)) +'  (' +a_rdate+')'+ #13 + #10;
                // 나현찬 수정  ardate인지 a_rdate인지 나중되면 알겄지..
      end;

      if Jun_IDNum <> '' then begin
        QrMst.FieldByName('Bigo').AsString := '자체전례:' + Jun_IDNum + #13 + #10;
      end;
      QrMst.FieldByName('Bigo').AsString := QrMst.FieldByName('Bigo').AsString + #13 + #10 + AUnite_Memo;
    end;
  finally
    Application.Hint := 'C';
    FreeAndNil(ALink);
  end;

end;

procedure TFrmJs_Main.cxSanKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', chr(8), chr(9)]) then
    key := #0;
end;

procedure TFrmJs_Main.AddressSettion;
  function iif(AExpression: Boolean; Value1, Value2: string): string;
  begin
    if AExpression then
      Result := Value1
    else
      Result := Value2;
  end;
begin
  with QrMst do begin
    fieldbyname('Address').asString :=
      fieldbyname('addr').asString + ' ' +
      cBun2Str(fieldbyname('san').asString,
      fieldbyname('bun1').asString,
      fieldbyname('bun2').asString) + ' ' +
      iif(fieldbyname('AddrEtc').asString = '1', '외 ', '') +
      iif(fieldbyname('Building').asString = EmptyStr, '',
      fieldbyname('Building').asString + ' ') +
      iif(fieldbyname('Dong').asString = EmptyStr, '',
      fieldbyname('Dong').asString + '동 ') +
      iif(fieldbyname('Floor').asString = EmptyStr, '',
      fieldbyname('Floor').asString
      + '층 ') +
      iif(fieldbyname('Ho').asString = EmptyStr, '', fieldbyname('Ho').asString
      + '호 ') +
      iif(fieldbyname('AddrPyoung').asString = EmptyStr, '', fieldbyname('AddrPyoung').asString
      + '㎡') +
   // 나현찬 추가 시작
      iif(fieldbyname('BuildingEtc').asString = '1', '외 ', '') + //;   나현찬
        iif(fieldbyname('hoetc').AsString = EmptyStr, '',fieldbyname('hoetc').asString)  ; // 나현찬 추가
   // 나현찬 추가 끝
    // 나현찬 주석 20101101  iif(fieldbyname('BuildingEtc').asString = '1', '외 ', '');
  end;
end;

procedure TFrmJs_Main.cxSanExit(Sender: TObject);
begin
  AddressSettion;
end;

procedure TFrmJs_Main.Lub_PurposeExit(Sender: TObject);
begin
  try
    if (TcxDBLookupComboBox(Sender).DataBinding.Field.NewValue =
      TcxDBLookupComboBox(Sender).DataBinding.Field.OldValue)
      or (TcxDBLookupComboBox(Sender).Text = '') then
      exit;
    case StrToInt(Copy(UserInfo.OrgID, 1, 5)) of
      30007: begin // 미래새한
          MRSH_Title_Make();
        end
    else begin

      end;
    end;
  except
  end;
end;

procedure TFrmJs_Main.Edt_OwnerNameExit(Sender: TObject);
begin
  if TRzDBEdit(Sender).Field.NewValue = TRzDBEdit(Sender).Field.OldValue then
    exit;
  case StrToInt(Copy(UserInfo.OrgID, 1, 5)) of
    30007: begin // 미래새한
        MRSH_Title_Make();
      end
  else begin

    end;
  end;
end;

procedure TFrmJs_Main.Edt_DebtorExit(Sender: TObject);
begin
  if TRzDBEdit(Sender).Field.NewValue = TRzDBEdit(Sender).Field.OldValue then
    exit;
  case StrToInt(Copy(UserInfo.OrgID, 1, 5)) of
    30007: begin // 미래새한
        MRSH_Title_Make();
      end
  else begin

    end;
  end;
end;


 // 미래새한 추가라는데 우리랑 관계가 없음 20130905

procedure TFrmJs_Main.MRSH_Title_Make();
begin
  with QrMst do begin
    if state in [dsEdit, dsInsert] then
    begin
      if (QrMst.FieldByName('Purpose').AsString = '52') then begin // 평가목적이 "담보"
      //  or (QrMst.FieldByName('Purpose').AsString = '24')
      //  or (QrMst.FieldByName('Purpose').AsString = '25')

        if (QrMst.FieldByName('Debtor').AsString <> '') then begin
          QrMst.FieldByName('Title').AsString := QrMst.FieldByName('Debtor').AsString + ' 담보물';
        end else begin
          QrMst.FieldByName('Title').AsString := '담보물';
        end;

      end else if (QrMst.FieldByName('Purpose').AsString = '61')
        or (QrMst.FieldByName('Purpose').AsString = '65') then begin // 평가목적이 "경매"
        if (QrMst.FieldByName('OwnerName').AsString <> '') then begin
          QrMst.FieldByName('Title').AsString := QrMst.FieldByName('OwnerName').AsString + ' 소유물건';
        end else begin
          QrMst.FieldByName('Title').AsString := '소유물건';
        end;

      end;
    end;
  end;
end;

function TFrmJs_Main.Get_CustCharge_FAX(): string;
var
  Fax: string;
  EMP, custID, Office: string;
begin
  Result := '';
  if DBM.Client_Query.Active then DBM.Client_Query.Close;

  DBM.Client_Query.Query.Clear;
  CustID := QrMst.FieldByName('CustID').AsString;
  Office := QrMst.FieldByName('Office').AsString;
  EMP := QrMst.FieldByName('CustCharge').AsString;
  DBM.Client_Query.Query.Text := 'SELECT Fax FROM APW_CustCharge WHERE Office = ''' + Office + ''' and CustID = ''' + CustID + ''' and EMP = ''' + EMP + '''';
  DBM.Client_Query.Open;
  if not DBM.Client_Query.Eof then begin
    Result := DBM.Client_Query.FieldByName('Fax').AsString;
  end;
  if DBM.Client_Query.Active then DBM.Client_Query.Close;
end;
//End.. 미래새한 이정구 추가작업

procedure TFrmJs_Main.KapaJunDbCall;
var FapwParam: Tapwparam;
begin
 //소재지를 선택했을 경우 mgJundb
  if Length(QrMst.FieldByName('REG').AsString) > 0 then begin
    with FapwParam do
    begin
      Handle := Application.Handle;
      Reg := QrMst.FieldByName('Reg').AsString; // string[5];
      Eub := QrMst.FieldByName('Eub').AsString; // string[5];
      San := QrMst.FieldByName('San').AsString; // string[1];
      Bun1 := QrMst.FieldByName('Bun1').AsString; // string[4];
      Bun2 := QrMst.FieldByName('Bun2').AsString; // string[4];
      mKind := '1';
      if MessageDlg('토지.건물(담보.경매)을 조회하시겠습니까?' + #13 + '구분건물을 조회하시려면 NO를 선택하세요.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        mKind := '2';
    end;
    ExecKAPADBExp(mgJundb, FapwParam);
  end
  else begin
    ExecKAPADBExp(mgJundbNoParam, FapwParam);
  end;
end;

procedure TFrmJs_Main.WMmgReturn(var Message: TMessage);
var
  FJundb: TJundb;
  FBdy: TBdy;
  FGs2: TGs2;
  FGsData: TGsData;
begin
  case TmsgGubun(Message.LParam) of
    mgJundbReturn: begin
        LoadJundb(FJundb);
        with FJundb do begin
          QrMst.FieldByName('Bigo').AsString := QrMst.FieldByName('Bigo').AsString +
            '협회전례- 평가기관:' + name1 + ' 소재지:' + EUBNAME + ' 번지:' + BUN1 + '-' + BUN2 +
            '  가격시점:' + FormatDatetime('yyyy-mm-dd', jundate) + ' 평가목적:' + PName + ' 면적:' + CurrToStr(area) + ' 평가금액:' + CurrToStr(kum);
        end;
      end;
    mgGS2Return: begin
        LoadGs2(FGS2);
        with Fgs2 do begin
          QrMst.FieldByName('Bigo').AsString := QrMst.FieldByName('Bigo').AsString +
            '개별지가 - 년도:' + CYEAR + ' 소재지:' + EUBNAME + ' 번지:' + BUN1 + '-' + BUN2 +
            ' 용도지역:' + Giyuk + ' 지목' + Gimok + ' 이용상황:' + YoungDo + ' 지가:' + CurrToStr(GAKUKA);
        end;
      end;
    mgGsDataReturn: begin
        LoadGsdata(FGsData);
        with FGsData do begin
          QrMst.FieldByName('Bigo').AsString := QrMst.FieldByName('Bigo').AsString +
            '표준지가 - 소재지:' + AS4 + ' 번지:' + BUN1 + '-' + BUN2 +
            ' 용도지역1:' + GIYUK1 + ' 용도지역2:' + GIYUK2 + ' 지목' + Gimok + ' 이용상황:' + YOUNGDO + ' 전년지가:' + CurrToStr(GAKUKD) + ' 공시지가' + CurrToStr(GAKUKC);
        end;
      end;
    mgBdyReturn: begin
        LoadBdy(FBdy);
        with FBdy do begin
          QrMst.FieldByName('Bigo').AsString := QrMst.FieldByName('Bigo').AsString +
            '표준지가 - 분기년월:' + IntToStr(cYear) + '년 ' + InttoStr(cMonth) + '월' + ' 소재지:' + AS1 + ' ' + AS2 + ' 번지:' + BUN1 + '-' + BUN2 +
            ' 평균:' + CurrToStr(G0) + ' 주거:' + CurrToStr(G1) + ' 상업' + CurrToStr(G2) + ' 공업:' + CurrToStr(G3) + ' 녹지:' + CurrToStr(G4) + ' 관리:' + CurrToStr(G5) + ' 농림:' + CurrToStr(G6) + ' 자보:' + CurrToStr(G8);
        end;
      end;
  end;
end;

procedure TFrmJs_Main.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
   //감정서번호가 키로 들어가는 감파일이나 테이블들이 존재하므로 신규입력, 외부 연계건 최초 접수시만 허용
//  aDocIDChange.Enabled := ( COPY(FieldByName('DocId').AsString,1,4) = '외부') or (QrMst.FieldByName('DocID').AsString = '');
  aJudgGradeChkSmall.Enabled := (QrMst.FieldByName('Reg').AsString <> '') and (QrMst.FieldByName('Bun1').AsString <> '');
  AInventory.Enabled := (QrMst.FieldByName('SEQ').AsInteger > 0);
  aBooking.Enabled := (QrMst.FieldByName('BookingCode').AsString <> '');
  ///2013.03.26 변경
  aOrderReport.Enabled := (QrMst.FieldByName('Gubun_Code').AsString = 'TKP');
  aDelete.Enabled := QrMst.FieldByName('Gubun_Code').AsString = '';

  ///2013.03.26 추가
  aTkpOfKapaJunSearch.Enabled := aOrderReport.Enabled;
end;

procedure TFrmJs_Main.RzButton4Click(Sender: TObject);
begin
  if (EdtDocID.Text <> QRMst.FieldByName('DocID').AsString) then begin
    if not DocIdChange then begin
      EdtDocID.SetFocus;
      Exit;
    end;
  end;
  pan_DocID.Visible := False;
  pRecept.Enabled := True;
end;

procedure TFrmJs_Main.RzButton5Click(Sender: TObject);
begin
  pan_DocID.Visible := False;
  pRecept.Enabled := True;
end;

procedure TFrmJs_Main.chk_autoClick(Sender: TObject);
begin
  if TRzCheckBox(Sender).Checked then
    EdtDocID.Text := '';

  EdtDocID.Enabled := not TRzCheckBox(Sender).Checked;
end;

procedure TFrmJs_Main.OrderReport;
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('Bub_cd', QrMst.FieldByName('Bub_cd').AsString);
    ALink.AddParams('Sa_no', QrMst.FieldByName('Sa_no').AsString);
    ALink.AddParams('Ord_hoi', QrMst.FieldByName('Ord_hoi').AsInteger);
    OpenDLL('TkpOrderReport.DLL', nil, ALink);
  finally
    FreeAndNil(ALink);
  end;
end;


procedure TFrmJs_Main.QRMstDocIDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if COPY(QrMst.FieldByName('DocId').AsString, 1, 4) = '외부' then
    Text := ''
  else
    Text := QrMst.FieldByName('DocID').AsString;
end;

procedure TFrmJs_Main.QRMstResolveError(Sender: TObject;
  ErrorType: Integer; Message: string; RecordID: Integer; Current: Boolean;
  var Retry: Boolean);
begin
//2008.10.13 추가
//폼에서 변경할 부분
//QRMst - AutoFieldDefsOnOpen = mwafoNever
//        AutoFieldOrigins = mwafoNever
//        이벤트 OnResolveError = QrMstResolveError
//Qry_inventorySearch - 이벤트 OnResolveError = QrMstResolveError
  ShowMessage(Message);
end;

///2012.08.30 수정
function TFrmJs_Main.AllReceiptSync: Boolean;
var
  ALink: TXLink;
begin
   Result := True;
  ALink := TXLink.Create(nil);
  try
    if QrMst.FieldByName('Gubun_Code').AsString = 'TKP' then
    begin
        ALink.AddParams('Gubun', 'APWORK');
        ALink.AddParams('SendGubun', 'RECEIPTUPD');
        ALink.AddParams('MASTERID', FMasterID);
        OpenDLL('KapaSendSYNC.DLL', nil, ALink);
        if ALink.Result > 0 then begin
           Showmessage('협회에 접수완료 처리하였습니다.');
           Result := True;
        end
        else Result := False;
    end
  finally
    FreeAndNil(ALink);
  end
end;


//2010.02 수정
function TFrmJs_Main.ShgRegCheck: Boolean;
begin
//  Result := False;
//  if QrMst.FieldByName('GUBUN_CODE').AsString <> 'SHG' then begin
//    Result := True;
//     exit;
//  end;
//  with qry_Kapa do begin
//    Close;
/////2012.09.07추가
//    QueryService := 'KAPA_APWORK';
//    Query.Text := 'Exec APWORKS_BANK_SHG_Check_APPDETAIL :SA_NO';
//    Params.ParamByName('SA_NO').AsString := QrMst.FieldByName('SA_NO').AsString;
//    Open;
//
//    if  (FieldByName('Cnt').AsInteger > 0) then
//      Exit;
//  end;
//  Result := True;
end;

//2010.01 추가
Procedure TFrmJs_Main.Shg_AppDetailOpen;
//var
//  ALink: TXLink;
begin
//  ALink := TXLink.Create(nil);
//  try
//    ALink.AddParams('SA_NO',QrMst.FieldByName('SA_NO').AsString);
//    OpenDLL('Kapa_Shg_AppDetail.dll', nil, ALink);
//  finally
//    FreeAndNil(ALink);
//  end
end;

///2010.09.13 추가
function TFrmJs_Main.ApworkStatusCHK: Boolean;
begin
  Result := False;
  ///2010.09.13 추가
  with qry_Kapa do begin
    Close;
    //2009.1.12 추가
    QueryService := 'KAPA_APWORK';
    Query.Text := 'EXEC APWORKS_STATUS_CHK_SEL :BUB_CD, :SA_NO, :ORD_HOI';
    Params.ParamByName('BUB_CD').AsString := QrMst.FieldByName('BUB_CD').AsString;
    Params.ParamByName('SA_NO').AsString := QrMst.FieldByName('SA_NO').AsString;
    Params.ParamByName('ORD_HOI').AsString := QrMst.FieldByName('ORD_HOI').AsString;
    OPEN;
    if (IsEmpty) or (FieldByname('GamEval_Cd').AsString = '99') then
    begin
      Showmessage('해당사건의 담당평가사를 법원감정인 명단에서 찾을 수 없기때문에,'+#13+#13+
      '접수(발송)업무를 진행할 수 없습니다.  [법원경매 감정인조회]를 통해 법원감정인을 확인해 보시기 바랍니다.'+#13+#13+
      '담당평가사가 법원감정업무를 지속할 수 없는 상태입니다.'+#13+#13+
      '추가문의사항이 있으시면 02-3465-9870으으로 문의하시기 바랍니다.');
      Exit;
    end
  end;
  Result := True;
end;

procedure TFrmJs_Main.RzButton7Click(Sender: TObject);
var  //나현찬
  ALink: TXLink;
begin


if edt_docid.Caption <> '' then
begin
//  CancelAfterScroll;
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('Masterid', FMasterID);
    ALink.AddParams('Status', QRMst.FieldByName('Status').AsString);
    OpenDLL('Allocate.dll', nil, ALink);
 //   if ALink.Result = 1 then
 //     ApplyAfterScroll
  //  else
  //    QRMst.AfterScroll := QRMstAfterScroll;
  finally
    FreeAndNil(ALink);
  end;
 end
 else
    begin
      showmessage('감정서번호가 생성된 후에 배정해주세요.');
      exit;                
    end;

end;


///2010.10.24 평가정보화 회비 체크 변경
function TFrmJs_Main.MembershipCHK: Boolean;
var path : PAnsiChar;
begin
  Result := True;
  with qry_Kapa do begin
    Close;
    //2009.1.12 추가
    QueryService := 'KAPA_APWORK';
    Query.Text := 'EXEC Apworks_membership_Sel '''+userinfo.OrgID +'''';
    OPEN;

    if not IsEmpty then
    begin
      Path := pChar('http://member.kapanet.or.kr/kapadb/DoYouKnow/membership.jpg');

      if (FieldByname('misu').AsInteger > 0) then
      begin
        if FieldByname('UpdateYN').AsString = 'Y' then
        begin
          if MessageDlg('### 시스템사용제한 일시연장 ###' + #13+#13+
            '미납된 평가정보화 회비가 '+formatFloat('#,###', FieldByname('misu').AsFloat)+' 원 있습니다.' +#13+#13+
            '최종 납부월로부터 3개월이 경과되면 시스템 사용이 제한됩니다..'+#13+#13+
            'CMS 신청(수정)으로 시스템사용제한이 일시 연장되었습니다.'+#13+#13+
            '평가정보화회비 자동납부신청 안내화면을 보시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
            shellexecute(Application.Handle, 'open', 'explorer.exe', path, nil, SW_SHOWNORMAL);
        end
        else if FieldByname('maxInDay').AsInteger < 3 then
        begin
          if MessageDlg('### 시스템사용제한 일시연장 ###' + #13+#13+
            '미납된 평가정보화 회비가 '+formatFloat('#,###', FieldByname('misu').AsFloat)+' 원 있습니다.' +#13+#13+
            '최종 납부월로부터 '+ FieldByname('maxInDay').AsString +'개월이 지났습니다.'+#13+#13+
            '납후 3개월이후 부터는 시스템 사용이 제한됩니다..'+#13+#13+
            '평가정보화회비 자동납부신청 안내화면을 보시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
            shellexecute(Application.Handle, 'open', 'explorer.exe', path, nil, SW_SHOWNORMAL);
        end
        else if (FieldByname('Deposit').AsInteger = 0) then
        begin
          Result := False;
          if MessageDlg('### 시스템사용제한 ###' + #13+#13+
            '미납된 평가정보화 회비가 '+formatFloat('#,###', FieldByname('misu').AsFloat)+' 원 있고,' +#13+#13+
            '최근 3개월간 평가정보화 회비를 납부하신 내역이 존재하지 않습니다..'+#13+#13+
            '전자문서 [지원정보팀-1568](2011년 제2차 전산위원회(2011.8.25) 의결)에 따라 시스템 사용이 제한됩니다.'+#13+#13+
            '회원전용을 통해 평가정보화회비 자동납부신청(3%할인)을 하시면 이번달 말일까지 사용기간이 연장됩니다.'+#13+#13+
            '평가정보화회비 자동납부신청 안내화면을 보시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
            shellexecute(Application.Handle, 'open', 'explorer.exe', Path, nil, SW_SHOWNORMAL);
        end;
      end;
    end
  end;

end;


 //2012.01.16 추가
procedure TFrmJs_Main.SocketCon;
begin
//  with BankSocket do begin
//    Close;
//    if QRMst.FieldByName('GUBUN_CODE').AsString = 'SHG' then
//      Port := 50060
//    else
//      Port := 57620;
//    Host := '10.0.1.9';
//    Active := True;
//  end;
end;
    // 나현찬
 procedure TFrmJs_Main.BankSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  BankSocket.Close;
  ErrorCode := 0;
end;
///2012.09.03 추가
Procedure TFrmJs_Main.DoGunNameInsert;
var
  ALink: TXLink;
begin
  with QRMst do begin      // 나현찬 수정   00 , 01 , 02협의보상만
  // 기존 20130905  if  (Copy(FieldByName('Purpose').AsString,1,2) = '00') and  // 기존 협희보상
  //      ( (FieldByName('GUBUN_CODE').AsString = '' ) or (FieldByName('GUBUN_CODE').AsString = 'OTH' ) or (FieldByName('GUBUN_CODE').AsString = 'CTS' ) )then
  // 나현찬 추가 20130905
  if  (Copy(FieldByName('Purpose').AsString,1,2) = '00') OR (Copy(FieldByName(
    'Purpose').AsString,1,2) = '01') OR (Copy(FieldByName('Purpose').AsString,1,
    2) = '02') OR (Copy(FieldByName('Purpose').AsString,1,2) = '11') OR (Copy(FieldByName('Purpose').AsString,1,2) = '12')  OR (Copy(FieldByName('Purpose').AsString,1,2) = 'C1') THEN
 BEGIN

      ALink := TXLink.Create(nil);
      try
        ALink.AddParams('TITLE', FieldByName('TITLE').AsString);
        ALink.AddParams('SA_NO', FieldByName('SA_NO').AsString);
        ALink.AddParams('CUST', FieldByName('CustName').AsString);
        ALink.AddParams('CUSTDOCID', FieldByName('CustDocID').AsString);
        ALink.AddParams('CHARGE', FieldByName('CustCharge').AsString);
        ALink.AddParams('DOCID', FieldByName('DocID').AsString);
         ///2013.02.21 구분코드 추가
        ALink.AddParams('GUBUN_CODE', FieldByName('GUBUN_CODE').AsString);
        OpenDLL('Kapa_Title_Insert.DLL', nil, ALink);

         ///2013.11.21 조건추가 중토위 국토청건은 연계정보 업데이트 제외
        if (FieldByName('GUBUN_CODE').AsString <> 'TEM') and (FieldByName('GUBUN_CODE').AsString <> 'LAN') then  begin      ///2013.11.25 이일우 추가
        if (ALink.Result = 1) and (ALink.ParamByString('SANO') <> '') and (FieldByName('SA_NO').AsString <> ALink.ParamByString('SANO')) then
        begin
          qry_Kapa.Close;
            qry_Kapa.QueryService := 'AlMighty';
            qry_Kapa.FieldDefs.Clear;
            qry_Kapa.Query.Text := 'exec SP_U_GUBUNCODE :GUBUN_CODE, :BUB_CD, :SA_NO, :MasterID, :ChargeGubun ';
            ///2013.02.21 파라메터로 넘어오는 구분코드로 수정
            qry_Kapa.ParamByName['GUBUN_CODE'].AsString := ALink.ParamByString('GUBUNCODE');
            qry_Kapa.ParamByName['BUB_CD'].AsString := ALink.ParamByString('BUB_CD');
            qry_Kapa.ParamByName['SA_NO'].AsString := ALink.ParamByString('SANO');
            qry_Kapa.ParamByName['MasterID'].AsInteger := FMasterID;
            qry_Kapa.ParamByName['ChargeGubun'].AsString := ALink.ParamByString('ChargeGubun');
            qry_Kapa.Execute;
     end
         //2013.02.21 추천연계건도 사업등록 다시 할수있게 조건 변경
        else //if FieldByName('GUBUN_CODE').AsString = 'OTH' then
        begin
          if MessageDlg('협회와 연결된 사업정보 키를 지우시겠습니까?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qry_Kapa.Close;
            qry_Kapa.QueryService := 'AlMighty';
            qry_Kapa.FieldDefs.Clear;
            qry_Kapa.Query.Text := 'exec SP_U_GUBUNCODE :GUBUN_CODE, :BUB_CD, :SA_NO, :MasterID, :ChargeGubun ';
            qry_Kapa.ParamByName['GUBUN_CODE'].AsString := '';
            qry_Kapa.ParamByName['BUB_CD'].AsString := '';
            qry_Kapa.ParamByName['SA_NO'].AsString := '';
            qry_Kapa.ParamByName['MasterID'].AsInteger := FMasterID;
            qry_Kapa.ParamByName['ChargeGubun'].AsString := '';
            qry_Kapa.Execute;
           end;
          end;
        end;
      finally
        ALink.Free;
      end;
    end;
  end;

end;



 procedure TFrmJs_Main.RzButton8Click(Sender: TObject);

var
  ALink: TXLink;
begin
ALink := TXLink.Create(nil);
try
 begin
 OpenDLL('Kapa_Title_Insert.DLL', nil, ALink);
  end;
finally
        ALink.Free;

end;
end;
 ///2013.03.26 경매건 협회전례 조회 기능 추가(포인트 가감하지 않음)
procedure TFrmJs_Main.TkpOfKapaJunSearchOpen;
var
  ALink: TXLink;
begin
  if QRMst.fieldbyName('Gubun_Code').AsString <> 'TKP' then Exit;
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('BUB_CD', QRMst.fieldbyName('BUB_CD').AsString);
    ALink.AddParams('SA_NO', QRMst.fieldbyName('SA_NO').AsString);
    ALink.AddParams('ORD_HOI', QRMst.fieldbyName('ORD_HOI').AsString);
    OpenDLL('KapaTkpOfKapaJunSearch.dll', nil, ALink);
  finally
    FreeAndNil(ALink);
  end;
end;
//2013.08.23 프로시져이름 변경
procedure TFrmJs_Main.KapaJunPreference_Tkp;
begin
  with qry_Kapa do begin
    Close;
    QueryService := 'KAPA_APWORK';
    Query.Text := 'EXEC APWORKS_ReceiptJunParser :BUB_CD, :SA_NO, :ORD_HOI, :ID_NUM';
    Params.ParamByName('BUB_CD').AsString := QrMst.FieldByName('BUB_CD').AsString;
    Params.ParamByName('SA_NO').AsString := QrMst.FieldByName('SA_NO').AsString;
    Params.ParamByName('ORD_HOI').AsInteger := QrMst.FieldByName('ORD_HOI').AsInteger;
    Params.ParamByName('ID_NUM').AsString := QrMst.FieldByName('DOCID').AsString;
    Execute;
  end;
end;


procedure TFrmJs_Main.btn_TsClick(Sender: TObject);
var
  ALink: TXLink;
begin

  ALink := TXLink.Create(nil);
  try

    ShowMessage(QrMst.FieldByName('MasterID').AsString);
    ShowMessage(QrMst.FieldByName('REG').AsString);
    ShowMessage(QrMst.FieldByName('EUB').AsString);
    ShowMessage(QrMst.FieldByName('BUN1').AsString);
    ShowMessage(QrMst.FieldByName('BUN2').AsString);

    ALink.AddParams('MasterID',QrMst.FieldByName('MasterID').AsString);
    ALink.AddParams('REG',QrMst.FieldByName('REG').AsString);
    ALink.AddParams('EUB',QrMst.FieldByName('EUB').AsString);
    ALink.AddParams('BUN1',QrMst.FieldByName('BUN1').AsString);
    ALink.AddParams('BUN2',QrMst.FieldByName('BUN2').AsString);

    Form4.ShowForm(ALink);

  finally
    FreeAndNil(ALink);

  end;
  QRMst.RefreshData;


end;

procedure TFrmJs_Main.Etc_Ts_MasterIDKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin

    btn_TsClick(Sender);
  end;
end;

function TFrmJs_Main.CHK_MMS: Boolean;
begin
  Result := False;
  if UserInfo.Office = '10' then
  begin
    if ((COPY(QRMst.FieldByName('DocId').AsString, 9, 1)  = '3')or (COPY(QRMst.FieldByName('DocId').AsString, 9, 1)  = '4')) then
      begin
        if copy(Lup_ChargeName.Text, 1, 2) <> '공' then
        begin
          Result := True;

        end;


      end;
  end;

end;

procedure TFrmJs_Main.SEND_MMS;
Var
  SMSTXT: String;
begin
  Panel1.Visible := True;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text := 'SELECT UPtel FROM SEAT_UserInfo where Uname  = :name ';
  ADOQuery1.Parameters.ParamByName('name').Value := Lup_Manager.Text;
  ADOQuery1.Open;
  edit_tel.Text := '';
  edit_tel.Text := ADOQuery1.FieldByName('UPtel').AsString;
  edit_Sub.Text := '';
  edit_Sub.Text := QRMst.FieldByName('docid').AsString + '접수문자';
  memo_text.Clear;
  memo_text.Lines.Add('거래처명 : ' + QRMst.FieldByName('CustName').AsString);
  memo_text.Lines.Add('담당자 : ' + QRMst.FieldByName('CustCharge').AsString);
  memo_text.Lines.Add('전화번호 : ' + QRMst.FieldByName('CustPhone').AsString);
  memo_text.Lines.Add('소재지 : ' + QRMst.FieldByName('Address').AsString);
  memo_text.Lines.Add('물건종류 : ' + Lup_Category.Text);
  memo_text.Lines.Add('어플링크 : ' + 'https://play.google.com/store/apps/details?id=com.embarcadero.Daehwa' );

end;

procedure TFrmJs_Main.Button2Click(Sender: TObject);
begin
    try
      with ADOQuery2 do
    begin

         SQL.Clear;
         Parameters.Clear;
         SQL.Text := 'Exec MMS_SEND :FILE_CNT, :MMS_BODY, :MMS_SUBJECT, :FILE_TYPE1, :FILE_NAME1, :SERVICE_DEP1, :CALL_TO, :CALL_FROM';


         Parameters.ParamByName('FILE_CNT').Value := 0;
         Parameters.ParamByName('MMS_BODY').Value := memo_text.Text;
         Parameters.ParamByName('MMS_SUBJECT').Value := edit_sub.Text;
         Parameters.ParamByName('FILE_TYPE1').Value := '';
         Parameters.ParamByName('FILE_NAME1').Value := '';
         Parameters.ParamByName('SERVICE_DEP1').Value := '';
         Parameters.ParamByName('CALL_TO').Value :=  StringReplace(edit_tel.Text,'-','',[rfReplaceAll]);
         Parameters.ParamByName('CALL_FROM').Value := '025252733';

         ExecSQL;

    end;
  finally
     Panel1.Visible := False;
  end;
end;

procedure TFrmJs_Main.Button1Click(Sender: TObject);
begin
  edit_tel.Text := '';
  edit_Sub.Text := '';
  memo_text.Clear;
  Panel1.Visible := False;
end;

procedure TFrmJs_Main.Button3Click(Sender: TObject);
begin
  ShowMessage(COPY(QRMst.FieldByName('DocId').AsString, 9, 1));
  if CHK_MMS then
  begin
    ShowMessage('true');
    SEND_MMS;
  end
  else
  begin
    ShowMessage('False');
  end;
end;

procedure TFrmJs_Main.Btn_GongClick(Sender: TObject);
var                         
  i : integer;
  EncodedStr, Addr, bun1, bun2, as4 : String;
  Header, Post : OleVariant;
  IE : variant;
  ALink: TXLink;
begin

  with ADOQuery4 do
  begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Exec SP_YJI_kapaID_Insert :flag, :User_Seq, :user_name, :kapa_id, :kapa_pw ';

    Parameters.ParamByName('flag').Value := 'C';
    Parameters.ParamByName('User_Seq').Value := UserInfo.UID;
    Parameters.ParamByName('user_name').Value := UserInfo.UserName;
    Parameters.ParamByName('kapa_id').Value := '';
    Parameters.ParamByName('kapa_pw').Value := '';

    Open;

  end;

  if ADOQuery4.FieldByName('Cnt').Asinteger = 0 then
  Begin

    MessageBox(Handle, '협회ID를 등록하셔야합니다.', '경고', MB_ICONWARNING or
      MB_OK);

    
    ALink := TXLink.Create(nil);

    try

      ALink.AddParams('Flag', 'New');
      OpenDLL('KapaID_Insert.dll', nil, ALink);

    finally

      FreeAndNil(ALink);

    end;

  end
  Else
  Begin

     with ADOQuery3 do
     begin

       SQL.Clear;
       Parameters.Clear;

       SQL.Text := ' Insert into Apw_YJI_GongBu_Log (Docid, Addr, Name, Indate) Values (:docid, :Addr, :Name, :Indate) ';

       Parameters.ParamByName('Docid').Value := Edt_DocID.Caption;
       Parameters.ParamByName('Addr').Value := Edt_Nd_Addr.Caption;
       Parameters.ParamByName('Name').Value := UserInfo.UserName;
       Parameters.ParamByName('Indate').Value := Now;

       ExecSQL;

     end;      

     with ADOQuery1 do
     begin

       SQL.Clear;
       Parameters.Clear;

       SQL.Text := 'Select dbo.ufn_YJI_AddrBun2(MasterID) Addr From Apw_Master Where 1=1 And Docid = :Docid';

       Parameters.ParamByName('docid').Value := Edt_DocID.Caption;

       Open;

       Addr := FieldByName('Addr').AsString;

     end;        

     EncodedStr := 'uid='+ ADOQuery4.FieldByName('Kapa_ID').AsString + '&pwd=' + ADOQuery4.FieldByName('Kapa_Pw').AsString + '&sch=' + HTTPEncode(UTF8Encode(Addr)) + '&key=5FEF04ED-D12D-4817-81BC-AB33FDEF0FD9';

     Post := VarArrayCreate([0, Length(EncodedStr) - 1], varByte);

     for i := 1 to Length(EncodedStr) do
     Begin

       Post[i - 1] := Ord(EncodedStr[i]);

     End;

     Header := 'Content-Type:application/x-www-form-urlencoded'+#10#13;

     try

       IE := CreateOleObject('Internetexplorer.Application');

       // 위치, 크기
       IE.Left:=0;
       IE.Top :=0;
       IE.Width :=800;
       IE.Height:=800;


       // IE 윈도우 상태
       IE.Toolbar  := True;
       IE.Statusbar:= True;
       IE.Menubar  := True;


       // 띄우기
       IE.Visible:=True;
       SetForegroundWindow(IE.HWND);

       IE.Navigate(UTF8Decode('https://m.kapanet.or.kr/rest/nice/apworksso.php'), EmptyParam, EmptyParam, Post, Header);

     finally

       IE:=Unassigned;

     end;

  End;

end;

procedure TFrmJs_Main.SimsaBigo_Chk;
begin

  QRMst.Edit;

  with ADOQuery1 do
  begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Select Docid, Bigo From APW_IW_SIMSA_BIGO Where 1=1 And Reg = :Reg And Eub = :Eub And Bun1 = :Bun1 And Bun2 = :Bun2 ';

    Parameters.ParamByName('Reg').Value := QRMst.FieldByName('REG').AsString;
    Parameters.ParamByName('Eub').Value := QRMst.FieldByName('EUB').AsString;
    Parameters.ParamByName('Bun1').Value := cxBUN1.Text;
    Parameters.ParamByName('Bun2').Value := cxBUN2.Text;

    Open;


    if (FieldByName('Bigo').AsString <> '') then
    Begin

      RzDBMemo1.Clear;
      RzDBMemo1.Lines.Add('※심사의견 : ' + FieldByName('Bigo').AsString + ' 전례감정서번호 : ' + FieldByName('Docid').AsString);

    end;

  end;

  QRMst.Post;
  QRMst.Edit;

end;

procedure TFrmJs_Main.HF_DocidSet;
begin

  with ADOQuery1 do
  begin

    Parameters.Clear;
    SQL.Clear;

    SQL.Text := ' Exec SP_YJI_HF_Docid_In :Docid, :CustDocid, :Seq ';

    Parameters.ParamByName('Docid').Value := Edt_DocID.Caption;
    Parameters.ParamByName('CustDocid').Value := Edt_CustDocID.Text;
    Parameters.ParamByName('Seq').Value := Edit_Seq.Text;

    ExecSQL;

  end;

end;

procedure TFrmJs_Main.HF_DataSet;
var
  ALink : TXLink;
begin

  ALink := TxLink.Create(nil);

  Try

    OpenDLL('HFMIJUB_JS.dll', nil, Alink);

    if ALink.Result = 1 then
    begin


      with QRMst do
      begin

        if State in [dsbrowse] then Edit;

          FieldByName('CustDocID').AsString := ALink.ParamByString('co_prev_insp_no'); // 문서번호
          FieldByName('CustCharge').AsString := ALink.ParamByString('duty_emp_nm'); // 담당자
          FieldByName('CustPhone').AsString := ALink.ParamByString('duty_tel_no'); // 담당자번호
          Edit_Seq.Text := ALink.ParamByString('Seq');

      end;

    end;

  Finally

    Alink.Free;

  End;

end;

end.

