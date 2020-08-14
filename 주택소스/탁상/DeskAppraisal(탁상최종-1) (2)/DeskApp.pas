//------------------------------------------------------------------------------
// 탁상감정
// Author      : 전영남
// Description :
// History
//   V 1.00 : 2006.07.26 처음 작성
//   V 2.00 : 2007.06.01 새로 작성
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit DeskApp;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Mask,
  ExtCtrls,
  DB, CommModule,

  dxLink,
  dxForm,
  dxMessages,
  dxDLLManager,

  cxButtonEdit,
  cxCalendar,
  cxCheckBox,
  cxClasses,
  cxContainer,
  cxControls,
  cxCurrencyEdit,
  cxCustomData,
  cxDBData,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxData,
  cxDataStorage,
  cxDropDownEdit,
  cxEdit,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridDBDataDefinitions,
  cxGridBandedTableView,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridTableView,
  cxGroupBox,
  cxLabel,
  cxLookupEdit,
  cxMaskEdit,
  cxMemo,
  cxPC,
  cxSplitter,
  cxStyles,
  cxTextEdit,

  kbmMemTable,
  kbmMWStreamFormat,
  kbmMWBinaryStreamFormat,
  kbmMWCustomConnectionPool,
  kbmMWCustomDataset,
  kbmMWClientDataset,

  RzLabel,
  RzPanel,
  RzEdit,
  RzCmboBx,
  RzButton,
  RzGroupBar,
  RzCommon,
  RzSplit,

  TB2Item,
  TBX,
  TB2Dock,
  TB2Toolbar,

  TFlatPanelUnit,
  cxBlobEdit,
  cxGridCardView,
  cxGridDBCardView,
  ImgList,
  DBActns,
  ActnList,
  RzBorder,
  RzRadChk,
  RzDBChk,
  RzDBEdit,
  RzDBBnEd, DBCtrls, RzDBCmbo, ComCtrls, RzDTP, RzDBDTP, RzStatus, DateUtils,
  frxClass, frxDBSet, RzDBLbl, Inifiles, ADODB, cxImageComboBox;

{Desk_Appraisal.pas}

type
  TFormState = (FormEdit, FormInsert, FormBrowse);

  TForm1 = class(TXForm)
    QRMst: TkbmMWClientQuery;
    dsMst: TDataSource;
    StreamBIN: TkbmMWBinaryStreamFormat;
    RzPanel2: TRzPanel;
    RzPanel0: TRzPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxEven: TcxStyle;
    cxOdd: TcxStyle;
    cxFooter: TcxStyle;
    cxHeader: TcxStyle;
    cxBold: TcxStyle;
    cxInactive: TcxStyle;
    cxSelection: TcxStyle;
    cxBackground: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    RzGroupController1: TRzGroupController;
    RzFC: TRzFrameController;
    RzPanel3: TRzPanel;
    cxSplitterBottom: TcxSplitter;
    QLand: TkbmMWClientQuery;
    dsLand: TDataSource;
    dsBuild: TDataSource;
    QBuild: TkbmMWClientQuery;
    Grid: TcxGrid;
      tvGrid: TcxGridDBTableView;
    tvGridOffice: TcxGridDBColumn;
    tvGridReg_DateTime: TcxGridDBColumn;
    tvGridReg_Charge: TcxGridDBColumn;
    tvGridConsult_Charge: TcxGridDBColumn;
    tvGridCustName: TcxGridDBColumn;
    tvGridCustPhone: TcxGridDBColumn;
    tvGridCustFAX: TcxGridDBColumn;
    tvGridCustCharge: TcxGridDBColumn;
    tvGridAddr: TcxGridDBColumn;
    tvGridBuilding: TcxGridDBColumn;
    tvGridDongHo: TcxGridDBColumn;
    tvGridPyoung: TcxGridDBColumn;
    tvGridCategory: TcxGridDBColumn;
    tvGridToJi_Build_Total: TcxGridDBColumn;
    tvGridAdjPrice: TcxGridDBColumn;
    tvGridDocID: TcxGridDBColumn;
    tvGridJun_Master: TcxGridDBColumn;
    tvGridMinPrice: TcxGridDBColumn;
    tvGridMaxPrice: TcxGridDBColumn;
    tvGridCustID: TcxGridDBColumn;
    tvGridToji_Total: TcxGridDBColumn;
    tvGridBuild_Total: TcxGridDBColumn;
    lvGrid: TcxGridLevel;
    ActionList1: TActionList;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    DataSetFirst1: TDataSetFirst;
    aCancel: TAction;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    aSave: TAction;
    aPrint: TAction;
    pReceptBtns: TRzPanel;
    tvGridMasterID: TcxGridDBColumn;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    Cob_Office: TRzComboBox;
    cxLabel8: TRzLabel;
    Start_Date: TRzDateTimeEdit;
    End_Date: TRzDateTimeEdit;
    Btn_Help: TRzBitBtn;
    RzLabel1: TRzLabel;
    aHelp: TAction;
    frxMstDataset1: TfrxDBDataset;
    frxLandDataset1: TfrxDBDataset;
    frxBuildDataset1: TfrxDBDataset;
    datapanel: TRzPanel;
    RzBorder3: TRzBorder;
    RzBorder4: TRzBorder;
    QLandSEQ: TIntegerField;
    QLandTS_MasterID: TStringField;
    QLandGubun: TStringField;
    QLandJiBun: TStringField;
    QLandJiMok: TStringField;
    QLandAreaUnit: TStringField;
    QLandArea: TFloatField;
    QLandUnitCost: TCurrencyField;
    QLandTotal: TCurrencyField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edt_MasterID: TRzDBEdit;
    Lup_Reg_Charge: TcxDBLookupComboBox;
    Edt_Reg_DateTime: TRzDBDateTimePicker;
    Lup_Manager: TcxDBLookupComboBox;
    Lup_Consult_Charge: TcxDBLookupComboBox;
    Edt_CustName: TRzDBEdit;
    Edt_CustPhone: TRzDBEdit;
    RzButton1: TRzButton;
    pAddress: TRzPanel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    cxLabel15: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel6: TRzLabel;
    cxSan: TRzDBEdit;
    cxBUN1: TRzDBEdit;
    cxBUN2: TRzDBEdit;
    cxAptName: TRzDBEdit;
    cxDONG: TRzDBEdit;
    btnAddrClose: TRzButton;
    editAddress: TRzDBButtonEdit;
    RzDBEdit1: TRzDBEdit;
    btnJunSearch: TRzButton;
    cxAddrEtc: TRzDBCheckBox;
    Etc_CustCharge: TRzDBEdit;
    Edt_CustFAX: TRzDBEdit;
    BtnAddr: TRzButton;
    Edt_Build_Struct: TRzDBEdit;
    Edt_Remodel_Date: TRzDBEdit;
    grLand: TcxGrid;
    tvLand: TcxGridDBTableView;
    tvLandColumn1: TcxGridDBColumn;
    tvLandJiBun: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    tvLandkum: TcxGridDBColumn;
    tvBuild: TcxGridDBTableView;
    tvBuildColumn1: TcxGridDBColumn;
    tvBuildFloors: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    tvBuildRe_Price: TcxGridDBColumn;
    lvLand: TcxGridLevel;
    lvBuild: TcxGridLevel;
    Edt_ToJi_Build_Total: TRzDBEdit;
    cxDBCurrencyEdit4: TRzDBEdit;
    cxLabel18: TcxLabel;
    Edt_Category: TRzDBEdit;
    Lup_Category: TRzDBLookupComboBox;
    Button1: TButton;
    sub_addbtn: TRzBitBtn;
    sub_minusbtn: TRzBitBtn;
    cxLabel2: TcxLabel;
    Edt_Bigo: TRzDBMemo;
    cxDBMemo1: TRzDBMemo;
    cxDBMemo2: TRzDBMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Btn_Close: TRzBitBtn;
    Btn_New: TRzBitBtn;
    Btn_Edit: TRzBitBtn;
    Btn_Delete: TRzBitBtn;
    Hint_yn: TRzCheckBox;
    BTN_Print: TRzBitBtn;
    Btn_Save: TRzBitBtn;
    Btn_Cancel: TRzBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Edit1: TEdit;
    Edit2: TEdit;
    QBuildSEQ: TIntegerField;
    QBuildTS_MasterID: TStringField;
    QBuildFloors: TStringField;
    QBuildArea: TFloatField;
    QBuildUnitCost: TCurrencyField;
    QBuildTotal: TCurrencyField;
    QBuildRe_Price: TStringField;
    kbmMWClientQuery1: TkbmMWClientQuery;
    QRMstTS_SEQ: TIntegerField;
    QRMstMasterID: TStringField;
    QRMstOffice: TStringField;
    QRMstReg_DateTime: TDateTimeField;
    QRMstReg_Charge: TIntegerField;
    QRMstConsult_Charge: TIntegerField;
    QRMstCustName: TStringField;
    QRMstCustPhone: TStringField;
    QRMstCustCharge: TStringField;
    QRMstCustFAX: TStringField;
    QRMstReg: TStringField;
    QRMstEub: TStringField;
    QRMstSAN: TStringField;
    QRMstAddr: TStringField;
    QRMstAS1: TStringField;
    QRMstAS2: TStringField;
    QRMstAS3: TStringField;
    QRMstAS4: TStringField;
    QRMstBUN1: TStringField;
    QRMstBUN2: TStringField;
    QRMstBuilding: TStringField;
    QRMstDongHo: TStringField;
    QRMstPyoung: TStringField;
    QRMstCategory: TStringField;
    QRMstToJiBIGO: TStringField;
    QRMstBuild_Struct: TStringField;
    QRMstRemodel_Date: TStringField;
    QRMstToJi_Build_Total: TCurrencyField;
    QRMstAdjPrice: TCurrencyField;
    QRMstDocID: TStringField;
    QRMstBigo: TStringField;
    QRMstJun_Master: TIntegerField;
    QRMstMinPrice: TCurrencyField;
    QRMstMaxPrice: TCurrencyField;
    QRMstCustID: TStringField;
    QRMstToji_Total: TCurrencyField;
    QRMstBuild_Total: TCurrencyField;
    QRMstBigo_In: TStringField;
    QRMstManager: TIntegerField;
    QRMstAppCode: TStringField;
    QRMstGuid: TStringField;
    QRMstAddrEtc: TStringField;
    QRMstaddress: TStringField;
    RzStatusPane3: TRzStatusPane;
    Edt_Nd_Addr: TRzDBLabel;
    Hint_Panel: TRzPanel;
    RzLabel7: TRzLabel;
    sojae: TRzEdit;
    RzLabel8: TRzLabel;
    RzLabel10: TRzLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    TSBUN: TRzEdit;
    DBNavigator1: TDBNavigator;
    QRMstlconssult_charge: TStringField;
    RzEdit1: TRzEdit;
    SaveDialog: TSaveDialog;
    QRMstcorpname: TStringField;
    QRMstcorptel: TStringField;
    QRMstcorpfax: TStringField;
    QRMstzipcode: TStringField;
    QRMstaddr1: TStringField;
    QRMstaddr2: TStringField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    QRMstLUP_CONSULT_CHARGE: TStringField;
    CopyBtn: TRzBitBtn;
    RzLabel13: TRzLabel;
    Tmanager: TEdit;
    DS_IW: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    RzBitBtn5: TRzBitBtn;
    Panel19: TPanel;
    Btn_Find: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    btnSave: TRzBitBtn;
    btnCancle: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    Panel20: TPanel;
    Panel21: TPanel;
    Label5: TLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Label4: TLabel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    Query_USA: TkbmMWClientQuery;
    Query_USAAddress: TStringField;
    Query_USABUN1: TStringField;
    Query_USABUN2: TStringField;
    Query_USAToji_total: TCurrencyField;
    Query_USABuild_total: TCurrencyField;
    Query_USAToJi_Build_Total: TCurrencyField;
    Query_USAEMP: TStringField;
    Query_USACustName: TStringField;
    Query_USAMasterID: TStringField;
    Query_USAReg_DateTime: TDateTimeField;
    dsdeskusa: TDataSource;
    Masterusa: TDataSource;
    Query_masteusa: TkbmMWClientQuery;
    Query_masteusaDocID: TStringField;
    Query_masteusaaddress: TStringField;
    Query_masteusaBUN1: TStringField;
    Query_masteusaBUN2: TStringField;
    Query_masteusaCustname: TStringField;
    Query_masteusaprice: TCurrencyField;
    Query_masteusaCharge: TStringField;
    Query_masteusaReceiptDate: TDateTimeField;
    cxGridDBTableView4Address: TcxGridDBColumn;
    cxGridDBTableView4BUN1: TcxGridDBColumn;
    cxGridDBTableView4BUN2: TcxGridDBColumn;
    cxGridDBTableView4Toji_total: TcxGridDBColumn;
    cxGridDBTableView4Build_total: TcxGridDBColumn;
    cxGridDBTableView4ToJi_Build_Total: TcxGridDBColumn;
    cxGridDBTableView4EMP: TcxGridDBColumn;
    cxGridDBTableView4CustName: TcxGridDBColumn;
    cxGridDBTableView4MasterID: TcxGridDBColumn;
    cxGridDBTableView4Reg_DateTime: TcxGridDBColumn;
    cxGrid3DBTableView1DocID: TcxGridDBColumn;
    cxGrid3DBTableView1address: TcxGridDBColumn;
    cxGrid3DBTableView1BUN1: TcxGridDBColumn;
    cxGrid3DBTableView1BUN2: TcxGridDBColumn;
    cxGrid3DBTableView1Custname: TcxGridDBColumn;
    cxGrid3DBTableView1price: TcxGridDBColumn;
    cxGrid3DBTableView1Charge: TcxGridDBColumn;
    cxGrid3DBTableView1ReceiptDate: TcxGridDBColumn;
    frxReport1: TfrxReport;
    QRMstHFDocid: TStringField;
    QRMstHFOwnername: TStringField;
    QRMstHFOwnerPhone: TStringField;
    QRMstHFOwnerTel: TStringField;
    QRMstHFGubun: TIntegerField;
    QRMstHFWorkYN: TStringField;
    Panel28: TPanel;
    RzDBEdit4: TRzDBEdit;
    Panel29: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    Panel33: TPanel;
    RzDBEdit9: TRzDBEdit;
    cb_Gubun: TcxDBImageComboBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    Panel30: TPanel;
    btn_HFLIST: TButton;
    btn_HFBuild: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery: TADOQuery;
    procedure QRMstAfterOpen(DataSet: TDataSet);
    //procedure XFormAfterShow(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure QLandResolveError(Sender: TObject; ErrorType: Integer;
      Message: string; RecordID: Integer; Current: Boolean;
      var Retry: Boolean);
    procedure cxBUN1Exit(Sender: TObject);
    procedure btnAddrCloseClick(Sender: TObject);
    procedure editAddressButtonClick(Sender: TObject);
    procedure WMStartProcess(var Message: TMessage); message _MSG_PROGRESS + 5;
    procedure QBuildBeforeResolve(Sender: TObject);
    procedure QRMstAfterScroll(DataSet: TDataSet);
    procedure XFormCreate(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure Edt_AddrButtonClick(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure sub_addbtnClick(Sender: TObject);
    procedure sub_minusbtnClick(Sender: TObject);
    procedure Btn_FindClick(Sender: TObject);
    procedure Btn_CloseClick(Sender: TObject);
    procedure aCancelExecute(Sender: TObject);
    procedure HintProcess(Sender: TObject);
    procedure aHelpExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string;
      var Value: Variant);
    procedure dsMstStateChange(Sender: TObject);
    procedure editAddressKeyPress(Sender: TObject; var Key: Char);
    procedure QRMstCalcFields(DataSet: TDataSet);
    procedure cxBUN2Exit(Sender: TObject);
    procedure btnJunSearchClick(Sender: TObject);
    procedure BtnCustClick(Sender: TObject);
    procedure Edt_CustNameKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_Reg_DateTimeKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_MasterIDEnter(Sender: TObject);
    procedure HintOutProcess(Sender: TObject);
    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxSanKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBColumn3PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBColumn4PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBColumn8PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBColumn7PropertiesEditValueChanged(Sender: TObject);
    procedure tvLandEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure tvBuildEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure grLandMouseEnter(Sender: TObject);
    procedure cxGridDBColumn8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Lup_ManagerKeyPress(Sender: TObject; var Key: Char);
    procedure cxBUN1KeyPress(Sender: TObject; var Key: Char);
    procedure cxBUN2KeyPress(Sender: TObject; var Key: Char);
    procedure cxAptNameKeyPress(Sender: TObject; var Key: Char);
    procedure cxDONGKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edt_Build_StructKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_Remodel_DateKeyPress(Sender: TObject; var Key: Char);
    procedure Lup_CategoryKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit4Enter(Sender: TObject);
    procedure grLandExit(Sender: TObject);
    procedure Edt_Build_StructExit(Sender: TObject);
    procedure Edt_CustFAXKeyPress(Sender: TObject; var Key: Char);
    procedure sojaeKeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxDBMemo1Change(Sender: TObject);
    procedure Edt_MasterIDKeyPress(Sender: TObject; var Key: Char);
    procedure Lup_Consult_ChargeKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_MasterIDClick(Sender: TObject);
    procedure RzEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure TSBUNKeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure CopyBtnClick(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn8Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancleClick(Sender: TObject);
    procedure do_getdeskUsa(REG,EUB,BUN1: String);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure btn_HFLISTClick(Sender: TObject);
    procedure btn_HFBuildClick(Sender: TObject);
  private
    AFormMode: TFormState;
    ScreenRight: TScreenRights;
    procedure FormStateUpdate;
    procedure ProcessTotal;
    procedure loadINI;
    procedure setINI;
  public
    { Public declarations }
  end;

var
  cMode: string;

procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

{$R *.dfm}

uses UserFunc, UserData, dm, Apconfig, Gscode06,cxGridDangaDialog,
cxExportGrid4Link,commfuncU,DESKJUN;   //commfuncu,
 //--uses
//  Gscode06, CommModule, DM, cxExportGrid4Link, UserData, UserFunc, apconfig, DateUtils;

//
// DLL Export function
//

procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TForm1;
begin

  Form := TForm1.Create(Application);
  try
    with Form do begin
      AHandle := SetParentControl(AParent);

      ////      if ALink <> nil then begin
      ////        //Edt_FindWord.Text := ALink.ParamByString('cDocId');
      ////        cMode := ALink.ParamByString('cMode');
      ////      end;
      ////
      ////      // 부모가 지정되지 않으면 MDI Child로 속성을 변경한다
      ////      if cMode = 'modal' then
      ////        ShowModal
      ////      else
      FormStyle := fsMDIChild;

    end;
  except;
  end;
end;

procedure TForm1.XFormCreate(Sender: TObject);
begin
  AFormMode := FormBrowse;
  FormStateUpdate;

 // 나현찬 주석 20131018 LoadLogoImage('Small', ImageSmall);
  loadINI;

  
end;

procedure TForm1.XFormShow(Sender: TObject);
begin

 { ScreenRight := cm.GetScreenRights(ChangeFileExt(DllName, ''));

  with QRMst do begin
    Query.Text := 'Exec SP_S_APW_TS_Master null, :Office, :ST, :ED, :sBUN1, :sBUN2, :Category, :Qry';
    Params.ParamByName('Office').AsString := Cob_Office.Value;
    Params.ParamByName('ST').AsString := DateToStr(Start_Date.Date);
    Params.ParamByName('ED').AsString := DateToStr(End_Date.Date);
    TableName :=
      'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';
  end;

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

  application.ProcessMessages;

  PostMessage(Handle, _MSG_PROGRESS + 5, 0, 0);
  FormStateUpdate;
  application.ProcessMessages;
  }

  ScreenRight := cm.GetScreenRights(ChangeFileExt(DllName, ''));


  with QRMst do begin
    Query.Text := 'Exec SP_S_APW_TS_Master NULL, :BR, :ST, :ED';
    Params.ParamByName('BR').AsString :=  Cob_Office.Value;
    Params.ParamByName('ST').AsString := DateToStr(Start_Date.Date);
    Params.ParamByName('ED').AsString := DateToStr(End_Date.Date);
    TableName :=
      'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';
  end;

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

   application.ProcessMessages;

  PostMessage(Handle, _MSG_PROGRESS + 5, 0, 0);
  FormStateUpdate;
  application.ProcessMessages;



  dsbuild.AutoEdit := true;
  dsmst.AutoEdit := true;
  dsland.AutoEdit := true;




    end;

procedure TForm1.WMStartProcess(var Message: TMessage);
begin

  { 물건종류 }
  with Lup_Category do begin
    ListField := 'Name';
    KeyField := 'Code';
    ListSource := DBM.DSC_View_Category;
  end;
  application.ProcessMessages;

  { 접수자 }
  with Lup_Reg_Charge do
    Properties.ListSource := DBM.DSC_View_Usr_Bac_info;
  application.ProcessMessages;

  { 상담자 }
  with Lup_Consult_Charge do
    Properties.ListSource := DBM.DSC_View_Usr_Bac_info;
  application.ProcessMessages;

  { 평가사 }
  with Lup_Manager do
    Properties.ListSource := DBM.DSC_View_Usr_Bac_info;
  application.ProcessMessages;

  // 본지사명 콤보에 넣기
  if UserInfo.Office = '23' then
  begin

     Cob_Office.Items.Add('본사');
     Cob_Office.Items.Add('동부지사');
     Cob_Office.Values.Add('10');
     Cob_Office.Values.Add('23');

  end
  else
  begin
    DBM.GetOfficeNames(Cob_Office.Items);
    DBM.GetOfficeCodes(Cob_Office.Values);
  end;
  Cob_Office.Value := Userinfo.Office;


  // 검색일자 제어       나현찬
  //  Start_Date.Date := IncDay(Now - 7);
  start_date.Date := now;
  End_Date.Date := Now;

  // GRID
  QRMst.AfterScroll := nil;

  Btn_FindClick(Self);
  //  QRMst.Open;
  QRMst.AfterScroll := QRMstAfterScroll;
  application.ProcessMessages;
  //  QLand.Open;
  //  QBuild.open;

  cxSplitterBottom.OpenSplitter;

  dsMst.OnStateChange := dsMstStateChange;
end;

//procedure TForm1.XFormAfterShow(Sender: TObject);
//begin

 //end;
{}

procedure TForm1.btnAddrCloseClick(Sender: TObject);
begin
//  pAddress.Visible := false;
  //
end;

procedure TForm1.QRMstAfterOpen(DataSet: TDataSet);
begin
  tvGrid.ApplyBestFit();
end;

procedure TForm1.cxBUN1Exit(Sender: TObject);
var
  cTmp: string[12];
begin



  // 지번을 0으로 채움
  with TcxDBTextEdit(Sender) do begin
    try
      cTmp := '0000' + TrimLeft(Text);
      Text := copy(cTmp, length(cTmp) - 3, 4);
    except
    end;
  end;
end;

 


procedure TForm1.aNewExecute(Sender: TObject);
begin


  with QRMst do begin
    Insert;
    fieldByName('Reg_DateTime').AsString := FormatDateTime('yyyy-mm-dd HH:nn', now);
    fieldByName('Office').AsString := Userinfo.Office;
    FieldByName('Reg_Charge').AsInteger := Userinfo.UID;
  //  Fieldbyname('consult_charge').AsInteger := userinfo.UID;
    FieldByName('AppCode').AsString := copy(Userinfo.OrgID, 1, 5) + '0';
  //  fieldbyname('tojibigo').AsString := '- 당법인 춘계행사관계로 5/23(금) ~ 5/26(월)까지 탁상 자문업무가 원할히 이루어지지 '+#13 +
   //                                    '  못하오니 양해하여주시기 바랍니다.' + #13 +
   //                                     '  이틀간의 탁상자문결과는 5/27(화)에 신속히 처리하여 회신하여  드리겠습니다.' ;

  end;

  AFormMode := FormInsert;
  FormStateUpdate;


   edt_custname.SetFocus;
   rzbutton1.Enabled := true;
  lvland.Active := true;
  //ShowMessage('insertBegin');

   with QLand do begin
      QLand.First;
      while not QLand.Eof do begin
        if (QLand.fieldByName('Area').asFloat <> 0) and (QLand.fieldByName('UnitCost').asFloat <> 0)
          then begin
          QLand.Edit;
          QLand.fieldByName('Total').asFloat :=
            QLand.fieldByName('Area').asFloat * QLand.fieldByName('UnitCost').asFloat;
          QLand.fieldByName('TS_MasterID').asstring :=
            QRMst.fieldByName('MasterID').asstring;
        end;
     end;
   end;
  // ShowMessage('insertEnd');
  lup_consult_charge.SetFocus;
end;

procedure TForm1.aSaveExecute(Sender: TObject);
var
   HFGubun : Integer;
begin

  HFGubun := 0;
  if cb_Gubun.ItemIndex = 0 then HFGubun := 1
  else if cb_Gubun.ItemIndex = 1 then    HFGubun := 1
  else if cb_Gubun.ItemIndex = 2 then    HFGubun := 2
  else if cb_Gubun.ItemIndex = 3 then    HFGubun := 2
  else HFGubun := 0;
     try
        QLand.MasterSource := nil;
        QBuild.MasterSource := nil;

        ProcessTotal;
       // ShowMessage('process tatal');

        QLand.Close;
        QLand.MasterSource := dsMst;
        QLand.Open;
       // ShowMessage('Land');

        QBuild.Close;
        QBuild.MasterSource := dsMst;
        QBuild.Open;
      //  ShowMessage('Build');

        dsLand.AutoEdit := false;
        dsBuild.AutoEdit := false;
      finally
    //   QRMst.AfterScroll := QRMstAfterScroll;
    end;
   //  ShowMessage('Try begin');
     AFormMode := FormBrowse;
     FormStateUpdate;
     rzbutton1.Enabled := false;
  //   ShowMessage('End');

     //주공 탁상번호 저장
    if QRMst.FieldByName('HFDocid').AsString <> '' then
    begin

       ADOQuery.SQL.Clear;
       ADOQuery.Parameters.Clear;
       ADOQuery.SQL.Text := 'EXEC SP_IW_U_HF_TSDocid :CustDocid, :TSDocid, ' +
         ':Kind';
       ADOQuery.Parameters.ParamByName('CustDocid').Value := QRMst.FieldByName(
         'HFDocid').AsString;
       ADOQuery.Parameters.ParamByName('TSDocid').Value := Edt_MasterID.Text;
       ADOQuery.Parameters.ParamByName('Kind').Value := HFGubun;
       ADOQuery.ExecSQL;

    end;




  end;

procedure TForm1.QLandResolveError(Sender: TObject; ErrorType: Integer;
  Message: string; RecordID: Integer; Current: Boolean;
  var Retry: Boolean);
begin
  ShowMessage(Message);
end;

procedure TForm1.editAddressButtonClick(Sender: TObject);
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('FindDong', editAddress.Text);
    OpenDLL('FindRegEub.DLL', nil, ALink);
    if ALink.Result = 1 then begin
      with QRMst do begin
        if State in [dsBrowse] then edit;
        fieldByName('REG').asString := ALink.ParamByString('Code1');
        fieldByName('EUB').asString := ALink.ParamByString('Code2');
        fieldByName('Addr').asString := ALink.ParamByString('Code3');
      end;
    end;
    if cxSan.Text = '' then QRMst.FieldByName('SAN').AsString := '1';
  finally
    FreeAndNil(ALink);
    cxSan.SetFocus;
  end;
//  cxSan.SetFocus;
end;

procedure TForm1.QBuildBeforeResolve(Sender: TObject);
begin
  with TkbmMWClientQuery(Sender) do begin

    while not eof do begin
      edit;
      fieldByName('TS_MasterID').AsString := QRMst.fieldByName('MasterID').AsString;
      next;
    end;

    CheckBrowseMode;

  end;
end;

procedure TForm1.QRMstAfterScroll(DataSet: TDataSet);
begin
  // Master Detail
  with qland do begin
    close;
    ParamByName['TS_MasterID'].AsString := QRMst.fieldByName('MasterID').AsString;
    open;
  end;

  with qBuild do begin
    close;
    ParamByName['TS_MasterID'].AsString := QRMst.fieldByName('MasterID').AsString;
    open;
  end;

end;

procedure TForm1.aEditExecute(Sender: TObject);
begin

  QRMst.Edit;
 // qrmst.Fieldbyname('consult_charge').AsInteger := userinfo.UID;
  dsLand.AutoEdit := true;
  dsBuild.AutoEdit := true;
  AFormMode := FormEdit;
  FormStateUpdate;

 // Edt_MasterID.SetFocus;
 lup_consult_charge.SetFocus;
 rzbutton1.Enabled := true;
end;

procedure TForm1.Edt_AddrButtonClick(Sender: TObject);
begin
  pAddress.top := RzStatusPane3.top + RzStatusPane3.height;
  pAddress.left := RzStatusPane3.left;
  pAddress.Parent := RzPanel3;
  pAddress.Visible := true;
  editAddress.SetFocus;
end;

procedure TForm1.aDeleteExecute(Sender: TObject);
begin
  if UserInfo.Office = '10' then begin



    if (userinfo.UserName  <> '이예진')  then
       begin
       showmessage('접근하실 수 없습니다.');
       exit;
       end;

   end;

 if Application.MessageBox('선택한 탁상 건을 정말로 삭제하시겠습니까?' , '확인', MB_ICONEXCLAMATION + MB_YESNO) =
          ID_YES then
  begin

  QRMst.AfterScroll := nil;

  QRMst.Delete;
  QRMst.Resolve(nil);
  FormStateUpdate;

  QRMst.AfterScroll := QRMstAfterScroll;

  end;

 end;

procedure TForm1.sub_addbtnClick(Sender: TObject);
begin
if (btn_edit.Enabled = true) then
   begin
      btn_edit.Click;
   end;

    if grLand.ActiveLevel = lvLand then begin
    //토지탭이 활성화
    tvLand.DataController.Append;
    grland.SetFocus;
    tvLandJiBun.Focused := True;

  end ;

  //  if QRMst.FieldByName('TS_SEQ').AsString <> '' then begin
  //    if AFormMode in [FormBrowse] then
  //      aEditExecute(Sender);
 {if grLand.ActiveLevel = lvLand then begin
    //토지탭이 활성화
    tvLand.DataController.Append;
    grland.SetFocus;
    tvLandJiBun.Focused := True;

  end
  else begin // 빌딩탭이 활성화
    tvBuild.DataController.Append;
    grland.SetFocus;
    tvBuildFloors.Focused := True;

  end;   }
  //  end;
end;

procedure TForm1.sub_minusbtnClick(Sender: TObject);
begin


 if (grLand.ActiveLevel = lvLand)  then begin
    //토지탭이 활성화
    tvLand.DataController.DeleteFocused;
    //      if AFormMode in [FormBrowse] then
    //        aEditExecute(Sender);
  end;

  
  //  end;



  //  if QRMst.FieldByName('TS_SEQ').AsString <> '' then begin
 { if ((grLand.ActiveLevel = lvLand) and (tvLand.DataController.RecordCount > 0)) then begin
    //토지탭이 활성화
    tvLand.DataController.DeleteFocused;
    //      if AFormMode in [FormBrowse] then
    //        aEditExecute(Sender);
  end
  else
    if ((grLand.ActiveLevel = lvBuild) and (tvBuild.DataController.RecordCount > 0)) then begin
      // 빌딩탭이 활성화
      tvBuild.DataController.DeleteFocused;
      //        if AFormMode in [FormBrowse] then
      //          aEditExecute(Sender);
    end;
  //  end;  }
end;

procedure TForm1.Btn_FindClick(Sender: TObject);
var a : string;
begin


 // if (TRIM(sojae.Text) <> '') or (trim(tsbun.Text) <> '')  then
 // if (TRIM(sojae.Text) <> '')   then
 // begin
  QRMst.Close;

  AFormMode := FormBrowse;
  FormStateUpdate;

   QRMst.Query.Text := 'Exec SP_S_APW_TS_Master :ts, :BR, :ST, :ED,null,null,' +
    'null, :sojae,null,null,null,null,null,null,null,null,null, :manager';


   QRMst.Params.Parambyname('ts').AsString := trim(tsbun.text);
   QRMst.Params.ParamByName('BR').AsString := Cob_Office.Value;
   QRMst.Params.ParamByName('ST').AsString := DateToStr(Start_Date.Date);
   QRMst.Params.ParamByName('ED').AsString := DateToStr(End_Date.Date);
   qrmst.Params.ParamByName('sojae').asstring :=  trim(sojae.Text);
   // 나현찬 추가 20130321
   qrmst.Params.ParamByName('manager').asstring :=  trim(tmanager.Text);


  QRMst.TableName :=
    'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

  // GRID

  QRMst.AfterScroll := nil;
  QRMst.Open;
  QRMst.AfterScroll := QRMstAfterScroll;
  QLand.Open;
  QBuild.open;
// end;
/////////////////////////////   ////////////////////////////////////////

 // if (TRIM(sojae.Text) = '') and (trim(tsbun.text) = '' )   then
  if trim(tsbun.text) <> ''    then
  begin
  QRMst.Close;

  AFormMode := FormBrowse;
  FormStateUpdate;

   QRMst.Query.Text := 'Exec SP_S_APW_TS_Master :ts, :BR, null, null,null,null,null, :sojae';


   QRMst.Params.Parambyname('ts').AsString := trim(tsbun.text);
   QRMst.Params.ParamByName('BR').AsString := Cob_Office.Value;
  //나현찬 주석  QRMst.Params.ParamByName('ST').AsString := DateToStr(Start_Date.Date);
 //  QRMst.Params.ParamByName('ED').AsString := DateToStr(End_Date.Date);
   qrmst.Params.ParamByName('sojae').asstring :=  trim(sojae.Text);
    // 나현찬 추가 20130321
  // 주석  qrmst.Params.ParamByName('manager').asstring :=  trim(tmanager.Text);


  QRMst.TableName :=
    'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

  // GRID

  QRMst.AfterScroll := nil;
  QRMst.Open;
  QRMst.AfterScroll := QRMstAfterScroll;
  QLand.Open;
  QBuild.open;
 end;


 //showmessage('검색 완료되었습니다.');



end;

procedure TForm1.Btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.aCancelExecute(Sender: TObject);
begin
//if qrmst.Active then qrmst.Close;

  QRMst.AfterScroll := nil;
  AFormMode := FormBrowse;
  QRMst.Cancel;
  QRMst.Refresh;
  QRMst.AfterScroll := QRMstAfterScroll;
  FormStateUpdate;
 // if pAddress.Visible then pAddress.Visible := false;
 rzbutton1.Enabled := false;
end;

procedure TForm1.HintProcess(Sender: TObject);
begin
//  if Hint_yn.Checked then begin
//    Hint_Panel.top := grLand.top + grLand.height;
 //   Hint_Panel.Caption :=
 //     '           필드간의 이동은 화살표버튼으로 하셔야 합니다.                         레코드의 추가삭제는 Insert / Delete Key로 제어하실 수 있습니다.  금액은 저장시점에 자동계산됩니다.';
 //   Hint_Panel.left := grLand.left;
 //   Hint_Panel.Visible := True;
 // end;
end;

procedure TForm1.aHelpExecute(Sender: TObject);
begin
  GotoHelpURL(ChangeFileExt(DllName, ''));
end;

procedure TForm1.aPrintExecute(Sender: TObject);
begin




    if  QRMst.FieldByName('Office').AsString = '17' then
  begin
   frxReport2.LoadFromFile(Appconfig.path.root + 'Report\탁상감정결과표대구.fr3');
   frxReport2.ShowReport;
  end;

   // 나현찬 수정 20101124
   // 이일우 수정 20140620
  if (QRMst.FieldByName('Office').AsString = '13') or (QRMst.FieldByName('Office').AsString = '18') then
   begin
     frxReport2.LoadFromFile(Appconfig.path.root + 'Report\탁상감정결과표북부.fr3');
   frxReport2.ShowReport;
   end;


  if (QRMst.FieldByName('Office').AsString <> '17')  and (QRMst.FieldByName('Office').AsString <> '13') and (QRMst.FieldByName('Office').AsString <> '18')  then
   begin
     frxReport2.LoadFromFile(Appconfig.path.root + 'Report\탁상감정결과표2.fr3');
      frxReport2.ShowReport;

   end;



end;

procedure TForm1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  Str,dname,daddr,dtel,dfax: string;
begin
  if VarName = 'Charge' then
    if Lup_Consult_Charge.Text <> '' then
      Value := Lup_Consult_Charge.Text
    else
      Value := '';

   if VarName = 'ipCharge' then
    if Lup_reg_Charge.Text <> '' then
      Value := Lup_reg_Charge.Text
    else
      Value := '';

  if VarName = 'Manager' then
    if Lup_Manager.Text <> '' then
      Value := Lup_Manager.Text
    else
      Value := '';


  if VarName = 'juso' then
    Value := UserInfo.Addr1 + ' ' + UserInfo.Addr2;
  if VarName = 'tel' then
    Value := '(Tel) ' + UserInfo.CorpTel + '   (Fax) ' + UserInfo.CorpFax;
  if VarName = 'cop_name' then Value := UserInfo.Corpname;




    if QRMst.FieldByName('Office').AsString = '10' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인';
    if varname = 'daddr' then
      value := '137-878 서울특별시 서초구 사임당로 52 디사모빌리빌딩 3층';
     if varname = 'dtel' then
      value := '(02)5252-733';
    if varname = 'dfax' then
      value := '(02)5254-555';
      end;

    if QRMst.FieldByName('Office').AsString = '11' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 경기지사';
    if varname = 'daddr' then
      value := '16393 경기도 수원시 권선구 금곡로196번길 62 SJ타워상가 501호';
     if varname = 'dtel' then
      value := '(031)239-2266';
    if varname = 'dfax' then
      value := '(031)239-9820';
      end;

     if QRMst.FieldByName('Office').AsString = '12' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 경인지사';
    if varname = 'daddr' then
      value := '403-020 인천광역시 부평구 마장로 256 산곡프라자 501호';
     if varname = 'dtel' then
      value := '(032)523-7272';
    if varname = 'dfax' then
      value := '(032)523-7292';
      end;

       if QRMst.FieldByName('Office').AsString = '13' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 북부지사';
    if varname = 'daddr' then
      value := '410-873 경기도 고양시 일산동구 정발산로 19 지평프라자 201호';
     if varname = 'dtel' then
      value := '(031)905-9008';
    if varname = 'dfax' then
      value := '(031)905-9077';
         end;

      if QRMst.FieldByName('Office').AsString = '14' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 강원지사';
    if varname = 'daddr' then
       value := '26450 강원도 원주시 서원대로 507 신세기타워 1301호';
     if varname = 'dtel' then
      value := '(033)742-8161';
    if varname = 'dfax' then
      value := '(033)742-8163';

         end;

        if QRMst.FieldByName('Office').AsString = '15' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 충청지사';
    if varname = 'daddr' then
      value := '360-814 충청북도 청주시 상당구 내덕로 16 새마을금고연합회 4층 ';
     if varname = 'dtel' then
      value := '(043)225-7777';
    if varname = 'dfax' then
      value := '(043)225-3333';

         end;

        if QRMst.FieldByName('Office').AsString = '16' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 충남지사';
    if varname = 'daddr' then
      value := '330-230 충청남도 천안시 서북구 검은들3길 48 현대메디칼센터 402호 ';
     if varname = 'dtel' then
      value := '(041)5688-111';
    if varname = 'dfax' then
      value := '(041)5688-123';
          end;

        if QRMst.FieldByName('Office').AsString = '17' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 대구경북지사';
    if varname = 'daddr' then
      value := '706-090 대구광역시 수성구 동대구로20길 20 복음빌딩 2층  ';
     if varname = 'dtel' then
      value := '(053)766-8866';
    if varname = 'dfax' then
      value := '(053)766-8343';
          end;

        if QRMst.FieldByName('Office').AsString = '18' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 부산경남지사';
    if varname = 'daddr' then
      value := '614-716 부산광역시 부산진구 황령대로 30번길 30 전문건설회관 6층 ';
     if varname = 'dtel' then
      value := '(051)632-3300';
    if varname = 'dfax' then
      value := '(051)632-0900';
          end;


      if QRMst.FieldByName('Office').AsString = '19' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 호남지사';
    if varname = 'daddr' then
      value := '520-844 전남 나주시 남평읍 남평1로 23 씨티메디컬빌딩 3층';
     if varname = 'dtel' then
      value := '(062)366-5800';
    if varname = 'dfax' then
      value := '(062)365-5300';
          end;


    if QRMst.FieldByName('Office').AsString = '20' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 구제주지사';
    if varname = 'daddr' then
      value := '690-825 제주특별자치도 제주시 이도 2동 1057-3 동남빌딩 5층 ';
     if varname = 'dtel' then
      value := '(064)727-2030';
    if varname = 'dfax' then
      value := '(064)727-2033';
          end;

     if QRMst.FieldByName('Office').AsString = '21' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 경남중앙지사';
    if varname = 'daddr' then
      value := '650-804 경상남도 통영시 중앙로 241 상공회의소 3층 ';
     if varname = 'dtel' then
      value := '(055)642-0123';
    if varname = 'dfax' then
      value := '(055)646-5906';
          end;


     if QRMst.FieldByName('Office').AsString = '22' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 제주지사';
    if varname = 'daddr' then
      value := '690-029 제주특별자치도 제주시 복지로 3길  2-9 2층 ';
     if varname = 'dtel' then
      value := '(064)727-2220';
    if varname = 'dfax' then
      value := '(064)727-2240';
          end;


       if QRMst.FieldByName('Office').AsString = '23' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 동부지사';
    if varname = 'daddr' then
      value := '463-828 경기도 성남시 분당구 장미로 42 리더스빌딩 510호';
     if varname = 'dtel' then
      value := '(031)603-5211';
    if varname = 'dfax' then
      value := '(031)603-9488';
          end;

       if QRMst.FieldByName('Office').AsString = '24' then begin

    if varname = 'dname' then
      value := '(주)대화감정평가법인 전북지사';
    if varname = 'daddr' then
      value := '55038 전라북도 전주시 완산구 팔달로 163 3층 302호(IBK기업은행 전주지점)';
     if varname = 'dtel' then
      value := '(063)-273-1123';
    if varname = 'dfax' then
      value := '(063)-273-1124';
          end;


end;

procedure TForm1.FormStateUpdate;
begin
  aNew.Enabled := AFormMode in [FormBrowse];
  aEdit.Enabled := AFormMode in [FormBrowse];
  aPrint.Enabled := AFormMode in [FormBrowse];

  aSave.Enabled := not (AFormMode in [FormBrowse]);
  aCancel.Enabled := not (AFormMode in [FormBrowse]);
  aDelete.Enabled := AFormMode in [FormBrowse];

  Grid.Enabled := (AFormMode in [FormBrowse]);

  datapanel.Enabled := not (AFormMode in [FormBrowse]);

  TvLand.OptionsData.Appending := not (AFormMode in [FormBrowse]);
  TvLand.OptionsData.CancelOnExit := not (AFormMode in [FormBrowse]);
  TvLand.OptionsData.Deleting := not (AFormMode in [FormBrowse]);
  TvLand.OptionsData.DeletingConfirmation := not (AFormMode in [FormBrowse]);
  TvLand.OptionsData.Editing := not (AFormMode in [FormBrowse]);
  TvLand.OptionsData.Inserting := not (AFormMode in [FormBrowse]);

  tvBuild.OptionsData.Appending := not (AFormMode in [FormBrowse]);
  tvBuild.OptionsData.CancelOnExit := not (AFormMode in [FormBrowse]);
  tvBuild.OptionsData.Deleting := not (AFormMode in [FormBrowse]);
  tvBuild.OptionsData.DeletingConfirmation := not (AFormMode in [FormBrowse]);
  tvBuild.OptionsData.Editing := not (AFormMode in [FormBrowse]);
  tvBuild.OptionsData.Inserting := not (AFormMode in [FormBrowse]);

  dsLand.AutoEdit := not (AFormMode in [FormBrowse]);
  dsBuild.AutoEdit := not (AFormMode in [FormBrowse]);

  //  CM.SetScreenRights( ActionList1, ScreenRight );
end;

procedure TForm1.dsMstStateChange(Sender: TObject);
begin
  if not (dsMst.State in [dsBrowse]) then begin
    AFormMode := FormEdit;
    FormStateUpdate;
   
  end;
end;

procedure TForm1.editAddressKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    editAddressButtonClick(Sender);
end;

procedure TForm1.QRMstCalcFields(DataSet: TDataSet);
  function iif(AExpression: Boolean; Value1, Value2: string): string;
  begin
    if AExpression then
      Result := Value1
    else
      Result := Value2;
  end;
begin
                       //  나현찬
  with QRMst do begin

    QRMst.fieldbyname('Address').asString :=
      QRMst.fieldbyname('addr').asString + ' ' +
      cBun2Str(QRMst.fieldbyname('san').asString,
      QRMst.fieldbyname('bun1').asString,
      QRMst.fieldbyname('bun2').asString) + ' ' +
      iif(fieldbyname('AddrEtc').asString = '1', '외 ', '') +
      iif(fieldbyname('Building').asString = EmptyStr, '',
      fieldbyname('Building').asString + ' ') +
      iif(fieldbyname('Dongho').asString = EmptyStr, '',
      fieldbyname('Dongho').asString + ' ') +
   //    fieldbyname('Dongho').asString + '동 ') +
      iif(fieldbyname('Pyoung').asString = EmptyStr, '',
      fieldbyname('Pyoung').asString
     + '㎡');
   //   + '호' );
  end;
end;

procedure TForm1.cxBUN2Exit(Sender: TObject);
var
  cTmp: string[12];
begin
 // 지번을 0으로 채움
  with TcxDBTextEdit(Sender) do begin
    try
      cTmp := '0000' + TrimLeft(Text);
      Text := copy(cTmp, length(cTmp) - 3, 4);
    except
    end;
  end;
if messagedlg('전례를 확인하시겠습니까?', mtconfirmation, [mbyes,mbno], 0) = mryes then
 begin
 // cxBUN2Exit(cxBUN1);
  if (QRMst.fieldByName('Reg').asString <> '') and (QRMst.fieldByName('Eub').asString <> '') then
  begin
    btnJunSearchClick(Sender);
    cxaddretc.SetFocus;
  end
  else begin
    cxBUN2.SetFocus;
  end;  //나현찬 }
 end
  else  begin
        cxaddretc.SetFocus;
     end;




  // 지번을 0으로 채움
  with TcxDBTextEdit(Sender) do begin
    try
      cTmp := '0000' + TrimLeft(Text);
      Text := copy(cTmp, length(cTmp) - 3, 4);
    except
    end;
  end;
end;

procedure TForm1.btnJunSearchClick(Sender: TObject);
var
  ALink: TXLink;
  ATs_RMasterID, AJs_RMemo, ATs_TMasterID, AJs_TMemo: string;
  AUnite_Memo: string;
begin
    ALink := TXLink.Create(nil);
  ALink.AddParams('Send_Reg', QRMst.fieldByName('REG').asString);
  ALink.AddParams('Send_Eub', QRMst.fieldByName('EUB').asString);
  ALink.AddParams('Send_SBun', cxBUN1.Text);
  ALink.AddParams('Send_EBun', cxBUN1.Text);
  ALink.AddParams('cMode', 'VALUE_SEND');

  OpenDLL('JW0001.DLL', nil, ALink);
  if ALink.Result = 1 then begin
    ATs_RMasterID := '';
    AJs_RMemo := '';
    ATs_TMasterID := '';
    AJs_TMemo := '';
    AUnite_Memo := '';
    // 본건전례자료
    ATs_RMasterID := ALink.ParamByString('RMasterID');
    AJs_RMemo := ALink.ParamByString('RMasterMemo');
    // 탁상자료전례
    ATs_TMasterID := ALink.ParamByString('TMasterID');
    AJs_TMemo := ALink.ParamByString('TMasterMemo');
    // 공통 추가메모
    AUnite_Memo := ALink.ParamByString('TUnite_Memo');

    // 본건전례
    if ATs_RMasterID <> '' then begin
      Qrmst.FieldByName('Bigo').AsString := '감정서번호:' + ATs_RMasterID + ' 감정가액:' + AJs_RMemo
        + #13 + #10 + AUnite_Memo;
    end;

    // 탁상전례 마스터키값
    if ATs_TMasterID <> '' then begin
      Qrmst.FieldByName('Bigo').AsString := '탁상감정:' + ATs_TMasterID + ' 탁상감정가:' + AJs_TMemo
        + #13 + #10 + AUnite_Memo;
    end;
  end;
  ALink.Free;
  // Edt_Production.SetFocus;
end;


{  ALink := TXLink.Create(nil);
  ALink.AddParams('Send_Reg', QRMst.fieldByName('REG').asString);
  ALink.AddParams('Send_Eub', QRMst.fieldByName('EUB').asString);
  ALink.AddParams('Send_SBun', QRMst.fieldByName('BUN1').asString);
  ALink.AddParams('Send_EBun', QRMst.fieldByName('BUN1').asString);
  ALink.AddParams('cMode', 'VALUE_SEND');

  OpenDLL('JW0001.DLL', nil, ALink);
  if ALink.Result = 1 then begin
    ATs_RMasterID := '';
    AJs_RMemo := '';
    ATs_TMasterID := '';
    AJs_TMemo := '';
    AUnite_Memo := '';
    // 본건전례자료
    ATs_RMasterID := ALink.ParamByString('RMasterID');
    AJs_RMemo := ALink.ParamByString('RMasterMemo');
    // 탁상자료전례
    ATs_TMasterID := ALink.ParamByString('TMasterID');
    AJs_TMemo := ALink.ParamByString('TMasterMemo');
    // 공통 추가메모
    AUnite_Memo := ALink.ParamByString('TUnite_Memo');

    // 본건전례
    if ATs_RMasterID <> '' then begin
      Qrmst.FieldByName('Bigo').AsString := '감정서번호:' + ATs_RMasterID + ' 감정가액:' + AJs_RMemo
        + #13 + #10 + AUnite_Memo;
    end;

    // 탁상전례 마스터키값
    if ATs_TMasterID <> '' then begin
      Qrmst.FieldByName('Bigo').AsString := '탁상감정:' + ATs_TMasterID + ' 탁상감정가:' + AJs_TMemo
        + #13 + #10 + AUnite_Memo;
    end;
  end;
  ALink.Free;
  // Edt_Production.SetFocus;}


procedure TForm1.BtnCustClick(Sender: TObject);
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('CustName', Edt_CustName.Text);
    ALink.AddParams('Office', Cob_Office.Value);
    OpenDLL('FINDCUST.DLL', nil, ALink);
    if ALink.Result = 1 then
      with QRMst do begin
        if State in [dsBrowse] then edit;
        FieldByName('CustID').AsString := ALink.ParamByString('CODE');
        FieldByName('CustName').AsString := ALink.ParamByString('NAME');
        FieldByName('CustCharge').AsString := ALink.ParamByString('CHARGE'); //  당당자명
        FieldByName('CustPhone').AsString := ALink.ParamByString('PHONE'); //  전화번호
        FieldByName('CustFAX').AsString := ALink.ParamByString('FAX'); // FAX
     //   fieldbyname('manager').asstring := ALink.ParamByString('hmanager');  //나현찬
      
      end;
     lup_manager.Text :=   ALink.ParamByString('hmanager');

  finally
    FreeAndNil(ALink);
  end;


 if qrmst.FieldByName('custfax').AsString = '' then
     edt_custfax.SetFocus
 else
  lup_category.SetFocus;

 //if ALink.ParamByString('NAME') = '' then
 //  edt_custname.SetFocus;

end;

procedure TForm1.Edt_CustNameKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnCustClick(Sender);


    
end;

procedure TForm1.Edt_Reg_DateTimeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Lup_Reg_Charge.SetFocus;
end;

procedure TForm1.ProcessTotal;
var
  i: Integer;
  tempArea, tempUnit, tempTotal, RecTotal, LandTotal, BuildTotal, Total: Real;
begin
  LandTotal := 0;
  BuildTotal := 0;
  Total := 0;

  try
    //QLand.RecordCount
    QRMst.AfterScroll := nil;

    QRMst.CheckBrowseMode;
    QRMst.Resolve(nil);

    QLand.CheckBrowseMode;
    QBuild.CheckBrowseMode;

    with QLand do begin
      QLand.First;
      while not QLand.Eof do begin
        if (QLand.fieldByName('Area').asFloat <> 0) and (QLand.fieldByName('UnitCost').asFloat <> 0)
          then begin
          QLand.Edit;
          QLand.fieldByName('Total').asFloat :=
            QLand.fieldByName('Area').asFloat * QLand.fieldByName('UnitCost').asFloat;
          QLand.fieldByName('TS_MasterID').asstring :=
            QRMst.fieldByName('MasterID').asstring;
        end;
        LandTotal := LandTotal + QLand.fieldByName('Total').asFloat;
        QLand.Next;
      end; {while}
      QLand.First;
      Resolve(nil);
      refreshdata;
    end;

    with QBuild do begin
      First;

      while not Eof do begin
        if (fieldByName('Area').asFloat <> 0) and (fieldByName('UnitCost').asFloat <> 0) then begin
          Edit;
          fieldByName('Total').asFloat :=
            fieldByName('Area').asFloat * fieldByName('UnitCost').asFloat;
          fieldByName('TS_MasterID').asstring :=
            QRMst.fieldByName('MasterID').asstring;
        end;
        BuildTotal := BuildTotal + fieldByName('Total').asFloat;
        Next;
      end; {while}
      First;
      Resolve(nil);
      refreshdata;
    end;

    Total := LandTotal + BuildTotal;

    QRMst.CheckBrowseMode;
    QRMst.Edit;
    QRMst.FieldByName('Toji_Total').AsFloat := LandTotal;
    QRMst.FieldByName('Build_Total').AsFloat := BuildTotal;
    QRMst.FieldByName('ToJi_Build_Total').AsFloat := Total;
    QRMst.Resolve(nil);
  //  QRMst.refreshdata;  이걸 주석처리하니 처음으로 안가구 지금 데이터만 보여줌

  finally

    QRMst.AfterScroll := QRMstAfterScroll;
  end;

end;

procedure TForm1.Edt_MasterIDEnter(Sender: TObject);
begin
 {if (Hint_yn.Checked) and (Edt_MasterID.Text = '') then begin
    Hint_Panel.top := Edt_MasterID.top + Edt_MasterID.height;
    Hint_Panel.Caption := '탁상번호를 입력하지 않으시면, 저장시점에 자동부여됩니다.';
    Hint_Panel.left := Edt_MasterID.left;
    Hint_Panel.Visible := not (Hint_Panel.Visible);
  end;   }
end;

procedure TForm1.HintOutProcess(Sender: TObject);

 // dland : currency;
//  dbuild : currency;
//  dtotal : currency;



begin


//  Hint_Panel.Visible := False;
 // ProcessTotal;

//   qrmst.FieldByName('toji_build_total').Value := qland.fieldbyname('total').Value + qbuild.fieldbyname('total').Value ;
  //  dland :=     qland.fieldbyname('total').Value;
  //  dbuild :=   qbuild.fieldbyname('total').Value;
 //   dtotal := dland + dbuild;
 // qrmst.FieldByName('toji_build_total').Value := dtotal;

{  with QLand do begin
      QLand.First;
      while not QLand.Eof do begin
        if (QLand.fieldByName('Area').asFloat <> 0) and (QLand.fieldByName('UnitCost').asFloat <> 0)
          then begin
          QLand.Edit;
          QLand.fieldByName('Total').asFloat :=
            QLand.fieldByName('Area').asFloat * QLand.fieldByName('UnitCost').asFloat;
          QLand.fieldByName('TS_MasterID').asstring :=
            QRMst.fieldByName('MasterID').asstring;
        end;
        LandTotal := LandTotal + QLand.fieldByName('Total').asFloat;
        QLand.Next;
      end;
      QLand.First;
      Resolve(nil);
      refreshdata;
    end;

    with QBuild do begin
      First;

      while not Eof do begin
        if (fieldByName('Area').asFloat <> 0) and (fieldByName('UnitCost').asFloat <> 0) then begin
          Edit;
          fieldByName('Total').asFloat :=
            fieldByName('Area').asFloat * fieldByName('UnitCost').asFloat;
          fieldByName('TS_MasterID').asstring :=
            QRMst.fieldByName('MasterID').asstring;
        end;
        BuildTotal := BuildTotal + fieldByName('Total').asFloat;
        Next;
      end;
      First;
      Resolve(nil);
      refreshdata;
    end;

    Total := LandTotal + BuildTotal;

    QRMst.CheckBrowseMode;
    QRMst.Edit;
    QRMst.FieldByName('Toji_Total').AsFloat := LandTotal;
    QRMst.FieldByName('Build_Total').AsFloat := BuildTotal;
    QRMst.FieldByName('ToJi_Build_Total').AsFloat := Total;

    }



 end;

procedure TForm1.loadINI;
var
  myini: TInifile;
begin
  myini := TiniFile.Create(AppConfig.Path.Root + 'myini.ini');
  Hint_yn.Checked := myini.ReadBool('DeskApp', 'HintYN', True);
end;

procedure TForm1.setINI;
var
  myini: TInifile;
begin
  myini := TiniFile.Create(AppConfig.Path.Root + 'myini.ini');
  myini.WriteBool('DeskApp', 'HintYN', Hint_yn.Checked);
end;

procedure TForm1.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetINI;
 
end;

procedure TForm1.cxSanKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', chr(8), chr(9)]) then
    key := #0;

  if key=#13 then
   cxBUN1.SetFocus;
    end;

procedure TForm1.cxGridDBColumn3PropertiesEditValueChanged(
  Sender: TObject);
begin
  with QLand do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      FieldByName('Area').AsCurrency := TcxTextEdit(Sender).EditValue;
      FieldByName('Total').AsCurrency := FieldByName('Area').AsCurrency * FieldByName('UnitCost').AsCurrency;
    end;
  end;
end;

procedure TForm1.cxGridDBColumn4PropertiesEditValueChanged(
  Sender: TObject);
begin
  with QLand do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      FieldByName('UnitCost').AsCurrency := TcxTextEdit(Sender).EditValue;
      FieldByName('Total').AsCurrency := FieldByName('Area').AsCurrency * FieldByName('UnitCost').AsCurrency;
    end;
  end;
end;

procedure TForm1.cxGridDBColumn8PropertiesEditValueChanged(
  Sender: TObject);
begin
  with QBuild do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      FieldByName('UnitCost').AsCurrency := TcxTextEdit(Sender).EditValue;
      FieldByName('Total').AsCurrency := FieldByName('Area').AsCurrency * FieldByName('UnitCost').AsCurrency;
    end;
  end;
end;

procedure TForm1.cxGridDBColumn7PropertiesEditValueChanged(
  Sender: TObject);
begin
 with QBuild do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      FieldByName('Area').AsCurrency := TcxTextEdit(Sender).EditValue;
      FieldByName('Total').AsCurrency := FieldByName('Area').AsCurrency * FieldByName('UnitCost').AsCurrency;
    end;
  end;
end;

procedure TForm1.tvLandEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if (aItem.Name = 'tvLandkum') and (ord(key) = VK_RETURN) then begin
    key := Word(0);
    tvLand.DataController.Append;
    tvLandJiBun.Focused := True;
  end;

end;

procedure TForm1.tvBuildEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if (aItem.Name = 'cxGridDBColumn41') and (ord(key) = VK_RETURN) then begin
    key := Word(0);
    cxGridDBTableView3.DataController.Append;
    cxGridDBColumn37.Focused := True;
  end;
 // cxGridDBTableView3.DataController.Append;
//    cxgrid2.SetFocus;
//    cxGridDBColumn37.Focused := True;


end;

procedure TForm1.grLandMouseEnter(Sender: TObject);
begin
//sub_addbtnClick(Sender);
end;

procedure TForm1.cxGridDBColumn8PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  Value1, Value2, Value3,value5,val8 :string;  //value5
  Value4:Boolean;
   Digit :integer;
   value7 : real;
 // OrgValue, ResultValue: string;
//  i: Integer;
//  ChangeFlag: Boolean;
begin
//띄울 폼코딩


  Value1:='';
  Value2:='';
  Value3:='';
  value5:='';
  Value4:=True;
  ExecuteDangaDialog( Value1, Value2, Value3, value5, Value4, Digit);


   value5 :=  StringReplace(value5,',','',[rfReplaceAll]);
    value7 := strtofloat(value5);

  // showmessage(val8);
   //qbuild.FieldByName('area').AsFloat := cxgriddbcolumn7.ca

 //  qbuild.FieldByName('unitcost').AsFloat  := strtofloat(value5);
 //  qbuild.FieldByName('area').Value := qbuild.FieldByName('area').Value ;

 ///////////////////


  if (qbuild.FieldByName('unitcost').Value > 0) then
    begin
     qbuild.Edit;
     Qbuild.FieldByName('unitcost').Value := null;

    end ;
     Qbuild.FieldByName('unitcost').Value :=  value7;


  with QBuild do
  begin
    if State in [dsInsert, dsEdit] then
    begin
      FieldByName('Total').AsCurrency := 1;  // 나현찬 나중에 추가
  //    FieldByName('Area').AsCurrency := TcxTextEdit(Sender).EditValue;
      FieldByName('Total').AsCurrency := FieldByName('Area').AsCurrency * FieldByName('UnitCost').AsCurrency;
      fieldbyname('re_price').value := Value1 + 'X'+ Value3 + '/'+ Value2;

    end;
  end;
 


end;

procedure TForm1.Lup_ManagerKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 editAddress.SetFocus;
end;

procedure TForm1.cxBUN1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   cxbun2.SetFocus;
end;

procedure TForm1.cxBUN2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   cxAptName.SetFocus;
end;

procedure TForm1.cxAptNameKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   cxDONG.SetFocus;
end;

procedure TForm1.cxDONGKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   RzDBEdit1.SetFocus;
end;

procedure TForm1.RzDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   Edt_Build_Struct.SetFocus;
end;

procedure TForm1.Edt_Build_StructKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  Edt_Remodel_Date.SetFocus;
end;

procedure TForm1.Edt_Remodel_DateKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    sub_addbtn.SetFocus;
end;

procedure TForm1.Lup_CategoryKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  editaddress.SetFocus;
end;

procedure TForm1.cxDBCurrencyEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 edt_bigo.SetFocus;
end;

procedure TForm1.cxDBCurrencyEdit4Enter(Sender: TObject);
begin
  // qrmst.FieldByName('toji_build_total').Value := (qland.fieldbyname('total').Value + qbuild.fieldbyname('total').Value );
end;

procedure TForm1.grLandExit(Sender: TObject);
{var
 landtotal, buildtotal, total : real;
 }
begin

   { with QLand do begin
      QLand.First;
     Edit;
      while not QLand.Eof do begin
          LandTotal := LandTotal + QLand.fieldByName('Total').asFloat;
        QLand.Next;
         end;


    end;

    with QBuild do begin
      First;
      edit;
      while not Eof do begin
        BuildTotal := BuildTotal + fieldByName('Total').asFloat;
        Next;
      end;

    end;

    Total := LandTotal + BuildTotal;


    QRMst.FieldByName('ToJi_Build_Total').AsFloat := Total;

    }

 end;


procedure TForm1.Edt_Build_StructExit(Sender: TObject);
var
 landtotal, buildtotal, total : real;
begin

    with QLand do begin
      QLand.First;
     Edit;
      while not QLand.Eof do begin
          LandTotal := LandTotal + QLand.fieldByName('Total').asFloat;
        QLand.Next;
         end;


    end;

    with QBuild do begin
      First;
      edit;
      while not Eof do begin
        BuildTotal := BuildTotal + fieldByName('Total').asFloat;
        Next;
      end;

    end;

    Total := LandTotal + BuildTotal;


    QRMst.FieldByName('ToJi_Build_Total').AsFloat := Total;



 end;

procedure TForm1.Edt_CustFAXKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 lup_category.SetFocus;
end;

procedure TForm1.sojaeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    btn_find.Click();
  end;
end;

procedure TForm1.RzBitBtn3Click(Sender: TObject);
begin
dsbuild.AutoEdit := true;
if btn_edit.Enabled = true then
   btn_edit.Click;

if cxgrid2.ActiveLevel = cxgridlevel3 then begin // 빌딩탭이 활성화
    cxGridDBTableView3.DataController.Append;
    cxgrid2.SetFocus;
    cxGridDBColumn37.Focused := True;

  end;

end;

procedure TForm1.RzBitBtn4Click(Sender: TObject);
begin
  if (cxgrid2.ActiveLevel = cxgridlevel3)  then begin
      // 빌딩탭이 활성화
      cxGridDBTableView3.DataController.DeleteFocused;
      //        if AFormMode in [FormBrowse] then
      //          aEditExecute(Sender);
    end;
end;

procedure TForm1.cxGridDBTableView1DblClick(Sender: TObject);
begin
  pagecontrol1.ActivePage := tabsheet1;
  rzedit1.Visible := false;
  rzedit1.Text := '';
  edt_masterid.Visible := true;
   do_getdeskUsa(QRMst.fieldByName('REG').AsString,QRMst.fieldByName(
  'EUB').AsString,QRMst.fieldByName('BUN1').AsString);
end;

procedure TForm1.cxDBMemo1Change(Sender: TObject);
begin
{if (btn_edit.Enabled = true) then
   begin
      btn_edit.Click;
   end;  }
end;

procedure TForm1.Edt_MasterIDKeyPress(Sender: TObject; var Key: Char);
begin
{if key = #13 then
  begin
    QRMst.Close;

  AFormMode := FormBrowse;
  FormStateUpdate;

  QRMst.Query.Text := 'Exec SP_S_APW_TS_Master :ts, :BR, NULL,NULL,null,null,null, :sojae';
  if tsbun.Text <> '' then
  QRMst.Params.Parambyname('ts').AsString := trim(tsbun.text)
  else
   QRMst.Params.Parambyname('ts').AsString := trim(edt_masterid.text);
  QRMst.Params.ParamByName('BR').AsString := Cob_Office.Value;
  //QRMst.Params.ParamByName('ST').AsString := DateToStr(Start_Date.Date);
  //QRMst.Params.ParamByName('ED').AsString := DateToStr(End_Date.Date);
  qrmst.Params.ParamByName('sojae').asstring :=  trim(sojae.Text);

  QRMst.TableName :=
    'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

  // GRID

  QRMst.AfterScroll := nil;
  QRMst.Open;
  QRMst.AfterScroll := QRMstAfterScroll;
  QLand.Open;
  QBuild.open;

   dsmst.AutoEdit := true;
   dsbuild.AutoEdit := true;
   dsland.AutoEdit := true;


  end; }
end;

procedure TForm1.Lup_Consult_ChargeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
  edt_custname.SetFocus;
end;

procedure TForm1.Edt_MasterIDClick(Sender: TObject);
begin

 edt_masterid.Visible := false;
 rzedit1.Text := edt_masterid.Text ;
 rzedit1.Visible := true;
 rzedit1.SetFocus;

   dsmst.AutoEdit := false;
   dsbuild.AutoEdit := false;
   dsland.AutoEdit := false;



{if edt_masterid.Text <> '' then
  edt_masterid.Enabled := false
else
  edt_masterid.Enabled := true;
 }
end;

procedure TForm1.RzEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
   begin
      //btn_find.Click();
/////////////////////////////


  QRMst.Close;

  AFormMode := FormBrowse;
  FormStateUpdate;

  QRMst.Query.Text := 'Exec SP_S_APW_TS_Master :ts, :BR, NULL, NULL, null,null,null, null';

  QRMst.Params.Parambyname('ts').AsString := trim(rzedit1.text);
  QRMst.Params.ParamByName('BR').AsString := Cob_Office.Value;
  QRMst.TableName :=
    'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

  // GRID

  QRMst.AfterScroll := nil;
  QRMst.Open;
  QRMst.AfterScroll := QRMstAfterScroll;
  QLand.Open;
  QBuild.open;



//////////////////////////////////////////////////////

      rzedit1.Visible := false;
      tsbun.Text := '';  //20080325 나현찬
      edt_masterid.Visible := true;
      lup_reg_charge.SetFocus;
      dsmst.AutoEdit := true;
      dsbuild.AutoEdit := true;
      dsland.AutoEdit := true;
      rzedit1.Text := '';
   end;
end;

procedure TForm1.TSBUNKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    btn_find.Click();
  end;
end;

procedure TForm1.RzBitBtn1Click(Sender: TObject);
begin
    QRMst.Close;

  AFormMode := FormBrowse;
  FormStateUpdate;

  // 나현찬 주석 20130321 QRMst.Query.Text := 'Exec SP_S_APW_TS_Master :ts, :BR, :ST, :ED,null,null,null, :sojae';
  // 나현찬 추가 20130321
  QRMst.Query.Text := 'Exec SP_S_APW_TS_Master :ts, :BR, :ST, :ED,null,null,' +
    'null, :sojae,null,null,null,null,null,null,null,null,null, :manager';
   QRMst.Params.Parambyname('ts').AsString := trim(tsbun.text);
   QRMst.Params.ParamByName('BR').AsString := Cob_Office.Value;
   QRMst.Params.ParamByName('ST').AsString := DateToStr(Start_Date.Date);
   QRMst.Params.ParamByName('ED').AsString := DateToStr(End_Date.Date);
   qrmst.Params.ParamByName('sojae').asstring :=  trim(sojae.Text);
   // 나현찬 추가 20130321
   qrmst.Params.ParamByName('manager').asstring :=  trim(tmanager.Text);

  QRMst.TableName :=
    'SP_I_APW_TS_Master@MasterID=NewMasterID;TS_SEQ=NewSEQ,SP_U_APW_TS_Master,SP_D_APW_TS_Master';

  QLand.Query.Text := 'Exec SP_S_APW_TS_Land  :TS_MasterID';
  QLand.TableName := 'SP_I_APW_TS_Land,SP_U_APW_TS_Land,SP_D_APW_TS_Land';

  QBuild.Query.Text := 'Exec SP_S_APW_TS_Build  :TS_MasterID';
  QBuild.TableName := 'SP_I_APW_TS_Build,SP_U_APW_TS_Build,SP_D_APW_TS_Build';

  // GRID

  QRMst.AfterScroll := nil;
  QRMst.Open;
  QRMst.AfterScroll := QRMstAfterScroll;
  QLand.Open;
  QBuild.open;

  showmessage('검색 완료되었습니다.');
end;

procedure TForm1.RzBitBtn2Click(Sender: TObject);
var
  cPath, cFile: string;
  PrtFile: TextFile;
begin
  cPath := ExtractFilePath(Application.ExeName) + 'ExcelData\';
  cFile := cPath + '탁상자문서' + '(' + Start_Date.Text + '~' + End_Date.Text + ')' + '.XLS';

  SaveDialog.InitialDir := cPath;
  SaveDialog.FileName := cFile;
  if SaveDialog.Execute then ExportGrid4ToExcel(SaveDialog.FileName, Grid);

end;

procedure TForm1.CopyBtnClick(Sender: TObject);
var
  i, j: integer;
  aFLD: variant;
  LandFLD, BuildFLD: variant;
  landRow, buildRow : integer;
begin
  if tvGrid.DataController.FocusedRecordIndex = -1 then
  begin
    showmessage('신규인용할 탁상데이타를 선택해주세요.');
    exit;
  end;
  // 인용
  // 토지명세 값 저장
  LandFLD := VarArrayCreate([0,QLand.FieldCount-1, 0,QLand.RecordCount-1],varVariant);
  QLand.First;
  j := 0;
  while Not QLand.Eof do
  begin
    for i := 0 to QLand.FieldCount - 1 do
      if QLand.Fields[i].Tag = 1 then
       LandFLD[i,j] := QLand.Fields[i].Value;
    QLand.Next;
    inc(j);
  end;
  landRow := j;

  //건물명세값 저장
  BuildFLD := VarArrayCreate([0,QBuild.FieldCount-1, 0,QBuild.RecordCount-1],varVariant);
  QBuild.First;
  j := 0;
  while Not QBuild.Eof do
  begin
    for i := 0 to QBuild.FieldCount - 1 do
      if QBuild.Fields[i].Tag = 1 then
       BuildFLD[i,j] := QBuild.Fields[i].Value;
    QBuild.Next;
    inc(j);
  end;
  buildRow := j;




  with QRMst do
  begin
    aFLD := VarArrayCreate([0, FieldCount - 1], varVariant);
    //master 데이타 저장
    for i := 0 to FieldCount - 1 do
      if Fields[i].Tag = 1 then
      aFLD[i] := Fields[i].Value;

    Insert;

    //Past to
    //master 데이타 가져오기
    for i := 0 to FieldCount - 1 do
      if Fields[i].Tag = 1 then
      Fields[i].Value := aFLD[i];

    fieldByName('Reg_DateTime').AsString := FormatDateTime('yyyy-mm-dd HH:nn', now);
    fieldByName('Office').AsString := Userinfo.Office;
    FieldByName('Reg_Charge').AsInteger := Userinfo.UID;
    FieldByName('AppCode').AsString := copy(Userinfo.OrgID, 1, 5) + '0';

    //Land 데이타 가저오기
    QLand.First;

    for j :=landRow-1  downto 0 do
    begin
      QLand.Insert;
      for i := 0 to QLand.FieldCount - 1 do
        if QLand.Fields[i].Tag = 1 then
          QLand.Fields[i].Value := LandFLD[i,j] ;
    end;

    //Build 데이타 가저오기
    QBuild.First;
    for j :=  buildRow-1 downto 0 do
    begin
      QBuild.Insert;
      for i := 0 to QBuild.FieldCount - 1 do
        if QBuild.Fields[i].Tag = 1 then
          QBuild.Fields[i].Value := BuildFLD[i,j] ;
    end;

  end;

  AFormMode := FormInsert;
  FormStateUpdate;

  Edt_CustName.SetFocus;
end;


procedure TForm1.RzBitBtn5Click(Sender: TObject);
begin
 if QRMst.FieldByName('Office').AsString = '10' then begin
      with Query_USA do
       begin
       Active := True;
         Query.Clear;
         Query.Text := 'exec SP_IW_S_TSUSA :REG, :EUB, :BUN1 ';
         Params.ParamByName('REG').AsString := QRMst.FieldByName('REG').AsString;
         Params.ParamByName('EUB').AsString := QRMst.FieldByName('Eub').AsString;
         Params.ParamByName('BUN1').AsString := QRMst.FieldByName('BUN1').AsString;
         Open;
        // ShowMessage(IntToStr(Query_USA.RecordCount));
       end;

    frxReport2.LoadFromFile(Appconfig.path.root + 'Report\탁상감정결과표본사.fr3');
    frxReport2.ShowReport;
  end
  else exit;

end;

procedure TForm1.RzBitBtn8Click(Sender: TObject);
begin
if (TRIM(sojae.Text) <> '') or (trim(tsbun.Text) <> '')  then
BEGIN
start_date.Date := Date;
Start_Date.date := start_date.date - 90;
btn_findclick(btn_find);
 showmessage('검색이 완료되었습니다.');
end
ELSE
   BEGIN
   showmessage('조회조건이 없습니다.');
   END;




 end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
if (TRIM(sojae.Text) <> '') or (trim(tsbun.Text) <> '')  then
BEGIN
start_date.Date := Date;
Start_Date.date := start_date.date - 180;
btn_findclick(btn_find);
 showmessage('검색이 완료되었습니다.');
end
ELSE
   BEGIN
   showmessage('조회조건이 없습니다.');
   END;



end;

procedure TForm1.btnCancleClick(Sender: TObject);
begin
if (TRIM(sojae.Text) <> '') or (trim(tsbun.Text) <> '')  then
BEGIN
start_date.Date := Date;
Start_Date.date := start_date.date - 365;
btn_findclick(btn_find);
 showmessage('검색이 완료되었습니다.');
end
ELSE
   BEGIN
   showmessage('조회조건이 없습니다.');
   END;



end;

procedure TForm1.do_getdeskUsa(REG, EUB, BUN1: String);
begin
  Label4.Caption := '정식감정 전례';
  Label5.Caption := '탁상감정 전례';
  Label4.Color := clBtnFace;
  Label5.Color := clBtnFace;
 with Query_USA do
       begin
         Active := True;
         Query.Clear;
         Query.Text := 'exec SP_IW_S_TSUSA :REG, :EUB, :BUN1 ';
         Params.ParamByName('REG').AsString := QRMst.FieldByName('REG').AsString;
         Params.ParamByName('EUB').AsString := QRMst.FieldByName('Eub').AsString;
         Params.ParamByName('BUN1').AsString := QRMst.FieldByName('BUN1').AsString;
         Open;
         if Eof then
         begin
         Label5.Caption := '탁상 전례 검색결과없음';
         Label5.Color := clRed;
         end;

       end;

  with Query_masteusa do
  begin
    Active := True;
    Query.Clear;
    Query.Text := 'exec SP_IW_S_APWMASTERUSA :REG, :EUB, :BUN1 ';
    Params.ParamByName('REG').AsString := QRMst.FieldByName('REG').AsString;
    Params.ParamByName('EUB').AsString := QRMst.FieldByName('Eub').AsString;
    Params.ParamByName('BUN1').AsString := QRMst.FieldByName('BUN1').AsString;
    Open;
     if Eof then
     begin
         Label4.Caption := '정식 전례 검색결과없음';
         Label4.Color := clRed;
     end;
  end;
end;


procedure TForm1.cxGridDBTableView4DblClick(Sender: TObject);
begin
 Form5.do_getdata(Query_USA.FieldByName('MasterID').AsString);
end;

procedure TForm1.btn_HFLISTClick(Sender: TObject);
var
  ALink : TXLink;
begin

  ALink := TxLink.Create(nil);

  Try
    OpenDLL('HFMIJUB.dll', nil, Alink);;

    if ALink.Result = 1 then
    begin
       if QRMst.State in [dsBrowse] then QRMst.Edit;
        if ALink.ParamByInteger('kind') = 1 then   ///보금자리
        begin
          QRMst.FieldByName('HFDocid').AsString := ALink.ParamByString('co_prev_insp_no');
          QRMst.FieldByName('CustName').AsString := ALink.ParamByString('Custname');
          QRMst.FieldByName('CustCharge').AsString := ALink.ParamByString('duty_emp_nm');
          QRMst.FieldByName('CustPhone').AsString := ALink.ParamByString('duty_tel_no');
          QRMst.FieldByName('HFOwnername').AsString := ALink.ParamByString('applcant_nm');
          QRMst.FieldByName('HFOwnerTel').AsString := ALink.ParamByString('applcant_mobile');
          QRMst.FieldByName('HFOwnerPhone').AsString := ALink.ParamByString('applcant_tel_no');
         // QRMst.FieldByName('Addr').AsString := ALink.ParamByString('Adress');
          editAddress.Text :=   ALink.ParamByString('Adress');
          if ALink.ParamByString('Gubun') = '정식' then  QRMst.FieldByName('HFGubun').AsInteger := 1
          else   QRMst.FieldByName('HFGubun').AsInteger := 2;

        end
        else if ALink.ParamByInteger('kind') = 2 then     ///연금
        begin
           QRMst.FieldByName('HFDocid').AsString := ALink.ParamByString('co_prev_insp_no');
          QRMst.FieldByName('CustName').AsString := ALink.ParamByString('Custname');
          QRMst.FieldByName('CustCharge').AsString := ALink.ParamByString('duty_emp_nm');
          QRMst.FieldByName('CustPhone').AsString := ALink.ParamByString('duty_tel_no');
          QRMst.FieldByName('HFOwnername').AsString := ALink.ParamByString('applcant_nm');
          QRMst.FieldByName('HFOwnerTel').AsString := ALink.ParamByString('applcant_mobile');
          QRMst.FieldByName('HFOwnerPhone').AsString := ALink.ParamByString('applcant_tel_no');
         // QRMst.FieldByName('Addr').AsString := ALink.ParamByString('Adress');
         editAddress.Text :=   ALink.ParamByString('Adress');
          if ALink.ParamByString('Gubun') = '정식' then  QRMst.FieldByName(
            'HFGubun').AsInteger := 3
          else   QRMst.FieldByName('HFGubun').AsInteger := 4;
        end;


//       QRMst.Post;
//       QRMst.Resolve(nil);

    end
    else
    begin
      // ShowMessage('No');
    end;
//    QRMst.RefreshData;
//    QRMst.Edit;

  Finally
    Alink.Free;

  End;
end;



procedure TForm1.btn_HFBuildClick(Sender: TObject);
var
  ALink : TXLink;
begin

  ALink := TxLink.Create(nil);

  Try

    ALink.AddParams('MasterID', Edt_MasterID.Text);

    OpenDLL('Buildreport_Tak.dll', nil, Alink);

    if ALink.Result = 1 then
    begin


      with QBuild do
      begin

        dsbuild.AutoEdit := true;
        if btn_edit.Enabled = true then
           btn_edit.Click;

        if cxgrid2.ActiveLevel = cxgridlevel3 then begin // 빌딩탭이 활성화
            cxGridDBTableView3.DataController.Append;
            cxgrid2.SetFocus;
            cxGridDBColumn37.Focused := True;
        end;

        if State in [dsInsert, dsEdit] then
        begin

          FieldByName('Floors').AsString := ALink.ParamByString('Ho'); //호
          FieldByName('Area').AsString := ALink.ParamByString('Area'); // 면적

        end;

      end;

    end;

  Finally

    Alink.Free;

  End;

end;

end.

