//------------------------------------------------------------------------------
//
// Unit        : main.pas
// Author      :
// Description :
// History
//   V 1.00 : 2006.04.25 처음 작성
//
//------------------------------------------------------------------------------
{
  1. 본 청구서에서 착수금은 기본적으로 회계에서 자동으로 끌어오도록 되어있습니다.
  자동으로 끌어오기때문에 수동으로 입력하더라도 다시 DLL이 로드될때 착수금의 데이터가
  회계데이터로 맞춰지게 되어있습니다.
  이 기능을 수동입력이 가능하도록 변경하실 법인은
  ProcessParameters프로시져에서  cxLabel9Click(nil); 라인을 주석처리하시면 됩니다.

  
}



{$WARN SYMBOL_PLATFORM OFF}

unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, StdCtrls,
  ComCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, ImgList, EasyTable,
  frxClass, frxDBSet, DB, cxMemo, cxDBEdit, cxLabel, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridSheet, cxClasses,
  cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters, cxButtons,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup, cxCheckBox, RzButton, RzLabel,
  RzPanel, kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, kbmMWStreamFormat, kbmMWBinaryStreamFormat, RzRadGrp,
  RzDBRGrp, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ADODB;

type
  TXForm1 = class(TXForm)
    DS_gam_info: TDataSource;
    fd_gam_info: TfrxDBDataset;
    fd_tbl0: TfrxDBDataset;                               
    DS_tbl0: TDataSource;
    Qryexec: TEasyQuery;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel24: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    f_price0: TcxDBCurrencyEdit;
    f_price1: TcxDBCurrencyEdit;
    f_price: TcxDBCurrencyEdit;
    cxDBMemo7: TcxDBMemo;
    cxDBMemo8: TcxDBMemo;
    f_SUSU: TcxDBCurrencyEdit;
    cxButton2: TcxButton;
    f_YEBI: TcxDBCurrencyEdit;
    cxDBMemo2: TcxDBMemo;
    f_MULJOSABI_count: TcxTextEdit;
    f_MULJOSABI: TcxDBCurrencyEdit;
    cxDBMemo3: TcxDBMemo;
    f_GONGBU: TcxDBCurrencyEdit;
    cxDBMemo4: TcxDBMemo;
    f_SILBI: TcxDBCurrencyEdit;
    f_YONGYEUK: TcxDBCurrencyEdit;
    f_SUSUSUM: TcxDBCurrencyEdit;
    f_JELSA: TcxDBCurrencyEdit;
    f_TAX: TcxDBCurrencyEdit;
    f_TOTAL: TcxDBCurrencyEdit;
    f_DEPOSIT: TcxDBCurrencyEdit;
    f_BILL: TcxDBCurrencyEdit;
    cxButton1: TcxButton;
    cxLabel25: TcxLabel;
    f_price2: TcxDBCurrencyEdit;
    cxDBMemo1: TcxDBMemo;
    f_price0_1: TcxDBCurrencyEdit;
    f_price1_1: TcxDBCurrencyEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    f_Price20: TcxDBCurrencyEdit;
    cxDBMemo5: TcxDBMemo;
    cxLabel29: TcxLabel;
    cxDBMemo6: TcxDBMemo;
    subprint_yn: TcxRadioGroup;
    cxLabel30: TcxLabel;
    f_TOJOSABI_count: TcxTextEdit;
    f_TOJOSABI: TcxDBCurrencyEdit;
    cxDBMemo9: TcxDBMemo;
    Panel1: TPanel;
    cxLabel33: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Chk_Sale_chk: TcxDBCheckBox;
    Chk_prn_cut_chk: TcxDBCheckBox;
    radio_Mode: TcxDBRadioGroup;
    gs_yn: TcxDBRadioGroup;
    btn_total: TRzBitBtn;
    btn_susu_compute: TRzBitBtn;
    sbtn_other_compute: TRzBitBtn;
    btn_backward: TRzBitBtn;
    cxButton6: TRzBitBtn;
    cxButton7: TRzBitBtn;
    cxButton8: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    Hint_Panel: TRzPanel;
    RzLabel2: TRzLabel;
    RzBitBtn6: TRzBitBtn;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel39: TcxLabel;
    edit_rate: TcxDBTextEdit;
    cxLabel40: TcxLabel;
    edit_DC: TcxDBTextEdit;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    CheckBox1: TCheckBox;
    StreamBIN: TkbmMWBinaryStreamFormat;
    DepositQry: TkbmMWClientQuery;
    DepositQry1: TkbmMWClientQuery;
    cxDBTextEdit1: TcxDBTextEdit;
    susu8: TcxLabel;
    susu12: TcxLabel;
    rdbChargeGubun: TcxDBRadioGroup;
    pnlVolume: TPanel;
    txtMixChargeTOTAL: TcxDBCurrencyEdit;
    cxLabel62: TcxLabel;
    cxLabel64: TcxLabel;
    txtLandVolumeCharge: TcxDBCurrencyEdit;
    txtBuildVolumeCharge: TcxDBCurrencyEdit;
    txtTreeVolumeCharge: TcxDBCurrencyEdit;
    txtMoveFeeVolumeCharge: TcxDBCurrencyEdit;
    cxLabel61: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel72: TcxLabel;
    txtStructureVolumeCharge: TcxDBCurrencyEdit;
    cxLabel71: TcxLabel;
    txtBusinessVolumeCharge: TcxDBCurrencyEdit;
    cxLabel73: TcxLabel;
    txtChargePartial: TcxDBCurrencyEdit;
    cxDBMemo10: TcxDBMemo;
    cxDBMemo11: TcxDBMemo;
    cxLabel76: TcxLabel;
    cxLabel63: TcxLabel;
    txtVolumeCharge: TcxDBCurrencyEdit;
    cxLabel69: TcxLabel;
    txtVolumeChargePartial: TcxDBCurrencyEdit;
    cxLabel70: TcxLabel;
    cxDBMemo13: TcxDBMemo;
    txtResearchLandVolumeCharge: TcxDBCurrencyEdit;
    txtChargeRest: TcxDBCurrencyEdit;
    cxLabel84: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel52: TcxLabel;
    txtTreeCnt: TcxDBCurrencyEdit;
    txtPHILJI: TcxDBCurrencyEdit;
    cxDBMemo12: TcxDBMemo;
    cxLabel55: TcxLabel;
    txtLandPrice: TcxDBCurrencyEdit;
    cxLabel47: TcxLabel;
    txtBuildPrice: TcxDBCurrencyEdit;
    cxLabel49: TcxLabel;
    txtTreePrice: TcxDBCurrencyEdit;
    txtStructurePrice: TcxDBCurrencyEdit;
    txtMoveFeePrice: TcxDBCurrencyEdit;
    txtEtcPrice: TcxDBCurrencyEdit;
    cxLabel48: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel60: TcxLabel;
    cxDBMemo14: TcxDBMemo;
    cxDBMemo15: TcxDBMemo;
    txtMixCharge: TcxDBCurrencyEdit;
    txtMixChargeJELSA: TcxDBCurrencyEdit;
    cxLabel79: TcxLabel;
    cxLabel81: TcxLabel;
    txtMixChargeTAX: TcxDBCurrencyEdit;
    btnVolumeAutoCalc: TRzBitBtn;
    cxLabel78: TcxLabel;
    cxDBMemo16: TcxDBMemo;
    cxLabel65: TcxLabel;
    txtResearchBuildVolumeCharge: TcxDBCurrencyEdit;
    cxLabel83: TcxLabel;
    cxDBMemo17: TcxDBMemo;
    cxLabel80: TcxLabel;
    cxLabel53: TcxLabel;
    txtLandVolumeCharge_Origin: TcxDBCurrencyEdit;
    cxLabel54: TcxLabel;
    txtTreeVolumeCharge_Origin: TcxDBCurrencyEdit;
    txtLaw: TRzLabel;
    cmb_susuj: TRzDBRadioGroup;
    vradio_Mode: TcxDBRadioGroup;
    ds_BCnt: TDataSource;
    ds_TCnt: TDataSource;
    fd_TCnt: TfrxDBDataset;
    fd_BCnt: TfrxDBDataset;
    BSF: TkbmMWBinaryStreamFormat;
    Qry_TCnt: TkbmMWClientQuery;
    Qry_TCnttcnt: TFloatField;
    Qry_TCnttcnt11: TFloatField;
    Qry_TCnttcnt12: TFloatField;
    Qry_TCnttcnt13: TFloatField;
    Qry_TCnttcnt14: TFloatField;
    Qry_TCnttcnt21: TFloatField;
    Qry_TCnttcnt22: TFloatField;
    Qry_TCnttcnt23: TFloatField;
    Qry_TCnttcnt24: TFloatField;
    Qry_TCnttcnt31: TFloatField;
    Qry_TCnttcnt32: TFloatField;
    Qry_TCnttcnt33: TFloatField;
    Qry_TCnttcnt34: TFloatField;
    Qry_TCnttcnt41: TFloatField;
    Qry_TCnttcnt42: TFloatField;
    Qry_TCnttcnt43: TFloatField;
    Qry_TCnttcnt44: TFloatField;
    Qry_TCnttcnt51: TFloatField;
    Qry_TCnttcal11: TStringField;
    Qry_TCnttcal12: TStringField;
    Qry_TCnttcal13: TStringField;
    Qry_TCnttcal14: TStringField;
    Qry_TCnttcal21: TStringField;
    Qry_TCnttcal22: TStringField;
    Qry_TCnttcal23: TStringField;
    Qry_TCnttcal24: TStringField;
    Qry_TCnttcal31: TStringField;
    Qry_TCnttcal32: TStringField;
    Qry_TCnttcal33: TStringField;
    Qry_TCnttcal34: TStringField;
    Qry_TCnttcal41: TStringField;
    Qry_TCnttcal42: TStringField;
    Qry_TCnttcal43: TStringField;
    Qry_TCnttcal44: TStringField;
    Qry_TCnttcal51: TStringField;
    Qry_TCntprice11: TStringField;
    Qry_TCntprice12: TStringField;
    Qry_TCntprice13: TStringField;
    Qry_TCntprice14: TStringField;
    Qry_TCntprice21: TStringField;
    Qry_TCntprice22: TStringField;
    Qry_TCntprice23: TStringField;
    Qry_TCntprice24: TStringField;
    Qry_TCntprice31: TStringField;
    Qry_TCntprice32: TStringField;
    Qry_TCntprice33: TStringField;
    Qry_TCntprice34: TStringField;
    Qry_TCntprice41: TStringField;
    Qry_TCntprice42: TStringField;
    Qry_TCntprice43: TStringField;
    Qry_TCntprice44: TStringField;
    Qry_TCntprice51: TStringField;
    Qry_TCnttprice: TFloatField;
    Qry_BCnt: TkbmMWClientQuery;
    Qry_BCntbcnt: TIntegerField;
    Qry_BCntbcnt101: TIntegerField;
    Qry_BCntbcnt102: TIntegerField;
    Qry_BCntbcnt103: TIntegerField;
    Qry_BCntbcnt104: TIntegerField;
    Qry_BCntbcnt105: TIntegerField;
    Qry_BCntbcnt106: TIntegerField;
    Qry_BCntbcnt107: TIntegerField;
    Qry_BCntbcnt108: TIntegerField;
    Qry_BCntbcnt109: TIntegerField;
    Qry_BCntbcnt110: TIntegerField;
    Qry_BCntbcnt111: TIntegerField;
    Qry_BCntbcnt112: TIntegerField;
    Qry_BCntbcnt201: TIntegerField;
    Qry_BCntbcnt202: TIntegerField;
    Qry_BCntbcnt203: TIntegerField;
    Qry_BCntbcnt204: TIntegerField;
    Qry_BCntbcnt205: TIntegerField;
    Qry_BCntbcnt206: TIntegerField;
    Qry_BCntbcnt207: TIntegerField;
    Qry_BCntbcnt208: TIntegerField;
    Qry_BCntbcnt209: TIntegerField;
    Qry_BCntbcnt210: TIntegerField;
    Qry_BCntbcnt211: TIntegerField;
    Qry_BCntbcnt212: TIntegerField;
    Qry_BCntbcnt301: TIntegerField;
    Qry_BCntbcnt302: TIntegerField;
    Qry_BCntbcnt303: TIntegerField;
    Qry_BCntbcnt304: TIntegerField;
    Qry_BCntbcnt305: TIntegerField;
    Qry_BCntbcnt306: TIntegerField;
    Qry_BCntbcnt307: TIntegerField;
    Qry_BCntbcnt308: TIntegerField;
    Qry_BCntbcnt309: TIntegerField;
    Qry_BCntbcnt310: TIntegerField;
    Qry_BCntbcnt311: TIntegerField;
    Qry_BCntbcnt312: TIntegerField;
    Qry_BCntbcnt401: TIntegerField;
    Qry_BCntbcnt402: TIntegerField;
    Qry_BCntbcnt403: TIntegerField;
    Qry_BCntbcnt404: TIntegerField;
    Qry_BCntbcnt405: TIntegerField;
    Qry_BCntbcnt406: TIntegerField;
    Qry_BCntbcnt407: TIntegerField;
    Qry_BCntbcnt408: TIntegerField;
    Qry_BCntbcnt409: TIntegerField;
    Qry_BCntbcnt410: TIntegerField;
    Qry_BCntbcnt411: TIntegerField;
    Qry_BCntbcnt412: TIntegerField;
    Qry_BCntbcnt51: TIntegerField;
    Qry_BCntbcal101: TStringField;
    Qry_BCntbcal102: TStringField;
    Qry_BCntbcal103: TStringField;
    Qry_BCntbcal104: TStringField;
    Qry_BCntbcal105: TStringField;
    Qry_BCntbcal106: TStringField;
    Qry_BCntbcal107: TStringField;
    Qry_BCntbcal108: TStringField;
    Qry_BCntbcal109: TStringField;
    Qry_BCntbcal110: TStringField;
    Qry_BCntbcal111: TStringField;
    Qry_BCntbcal112: TStringField;
    Qry_BCntbcal201: TStringField;
    Qry_BCntbcal202: TStringField;
    Qry_BCntbcal203: TStringField;
    Qry_BCntbcal204: TStringField;
    Qry_BCntbcal205: TStringField;
    Qry_BCntbcal206: TStringField;
    Qry_BCntbcal207: TStringField;
    Qry_BCntbcal208: TStringField;
    Qry_BCntbcal209: TStringField;
    Qry_BCntbcal210: TStringField;
    Qry_BCntbcal211: TStringField;
    Qry_BCntbcal212: TStringField;
    Qry_BCntbcal301: TStringField;
    Qry_BCntbcal302: TStringField;
    Qry_BCntbcal303: TStringField;
    Qry_BCntbcal304: TStringField;
    Qry_BCntbcal305: TStringField;
    Qry_BCntbcal306: TStringField;
    Qry_BCntbcal307: TStringField;
    Qry_BCntbcal308: TStringField;
    Qry_BCntbcal309: TStringField;
    Qry_BCntbcal310: TStringField;
    Qry_BCntbcal311: TStringField;
    Qry_BCntbcal312: TStringField;
    Qry_BCntbcal401: TStringField;
    Qry_BCntbcal402: TStringField;
    Qry_BCntbcal403: TStringField;
    Qry_BCntbcal404: TStringField;
    Qry_BCntbcal405: TStringField;
    Qry_BCntbcal406: TStringField;
    Qry_BCntbcal407: TStringField;
    Qry_BCntbcal408: TStringField;
    Qry_BCntbcal409: TStringField;
    Qry_BCntbcal410: TStringField;
    Qry_BCntbcal411: TStringField;
    Qry_BCntbcal412: TStringField;
    Qry_BCntbcal51: TStringField;
    Qry_BCntprice101: TStringField;
    Qry_BCntprice102: TStringField;
    Qry_BCntprice103: TStringField;
    Qry_BCntprice104: TStringField;
    Qry_BCntprice105: TStringField;
    Qry_BCntprice106: TStringField;
    Qry_BCntprice107: TStringField;
    Qry_BCntprice108: TStringField;
    Qry_BCntprice109: TStringField;
    Qry_BCntprice110: TStringField;
    Qry_BCntprice111: TStringField;
    Qry_BCntprice112: TStringField;
    Qry_BCntprice201: TStringField;
    Qry_BCntprice202: TStringField;
    Qry_BCntprice203: TStringField;
    Qry_BCntprice204: TStringField;
    Qry_BCntprice205: TStringField;
    Qry_BCntprice206: TStringField;
    Qry_BCntprice207: TStringField;
    Qry_BCntprice208: TStringField;
    Qry_BCntprice209: TStringField;
    Qry_BCntprice210: TStringField;
    Qry_BCntprice211: TStringField;
    Qry_BCntprice212: TStringField;
    Qry_BCntprice301: TStringField;
    Qry_BCntprice302: TStringField;
    Qry_BCntprice303: TStringField;
    Qry_BCntprice304: TStringField;
    Qry_BCntprice305: TStringField;
    Qry_BCntprice306: TStringField;
    Qry_BCntprice307: TStringField;
    Qry_BCntprice308: TStringField;
    Qry_BCntprice309: TStringField;
    Qry_BCntprice310: TStringField;
    Qry_BCntprice311: TStringField;
    Qry_BCntprice312: TStringField;
    Qry_BCntprice401: TStringField;
    Qry_BCntprice402: TStringField;
    Qry_BCntprice403: TStringField;
    Qry_BCntprice404: TStringField;
    Qry_BCntprice405: TStringField;
    Qry_BCntprice406: TStringField;
    Qry_BCntprice407: TStringField;
    Qry_BCntprice408: TStringField;
    Qry_BCntprice409: TStringField;
    Qry_BCntprice410: TStringField;
    Qry_BCntprice411: TStringField;
    Qry_BCntprice412: TStringField;
    Qry_BCntprice51: TStringField;
    Qry_BCntbprice: TStringField;
    Binder: TEasyTable;
    f_Price10: TcxDBCurrencyEdit;
    f_Price15: TcxDBCurrencyEdit;
    tbl_gam_info: TEasyTable;
    tbl0: TEasyTable;
    Panel2: TPanel;
    Label1: TLabel;
    kbmMWClientQuery1: TkbmMWClientQuery;
    kbmMWClientQuery1Code: TIntegerField;
    kbmMWClientQuery1Contents: TStringField;
    DataWhy: TDataSource;
    cxComboBox1: TcxComboBox;
    kbmMWClientQuery2: TkbmMWClientQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    btn_gubun: TButton;
    cxLabel45: TcxLabel;
    Button1: TButton;
    Memo1: TMemo;
    ADOConnection1: TADOConnection;
    ADOQuery: TADOQuery;
    frxReport1: TfrxReport;
    ADOQuery1: TADOQuery;
    Qry_Woori: TkbmMWClientQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    FloatField19: TFloatField;
    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure XFormDestroy(Sender: TObject);
    procedure XFormLink(Sender: TObject; ALink: TXLink);
    procedure f_price0Exit(Sender: TObject);
    procedure btn_totalClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure radio_ModeClick(Sender: TObject);
    procedure btn_susu_computeClick(Sender: TObject);
    procedure sbtn_other_computeClick(Sender: TObject);
    procedure btn_backwardClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure f_MULJOSABI_countPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cmb_susujPropertiesChange(Sender: TObject);
    procedure radio_ModePropertiesChange(Sender: TObject);
    procedure f_TOJOSABI_countPropertiesEditValueChanged(Sender: TObject);
    procedure cxLabel21Click(Sender: TObject);
    procedure f_Price10Exit(Sender: TObject);
    procedure cmb_susujClick(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure Chk_Sale_chkClick(Sender: TObject);
    procedure cxLabel19Click(Sender: TObject);
    procedure cxLabel35Click(Sender: TObject);
    procedure cxLabel36Click(Sender: TObject);
    procedure cxLabel39Click(Sender: TObject);
    procedure edit_DCExit(Sender: TObject);
    procedure cxLabel9Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure subprint_ynExit(Sender: TObject);
    procedure susu8Click(Sender: TObject);
    procedure susu12Click(Sender: TObject);
    procedure btnVolumeAutoCalcClick(Sender: TObject);
    procedure rdbChargeGubunClick(Sender: TObject);
    procedure vradio_ModeClick(Sender: TObject);
    procedure f_TOJOSABIKeyPress(Sender: TObject; var Key: Char);
    procedure do_SetCombo;
    procedure btn_gubunClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxComboBox1Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
//    procedure frxReport1GetValue(const VarName: String;
//      var Value: Variant);



  private
    AppInfo : Pointer;
    ChildDataBase: TEasyDataBase;
    SYSDataBase: TEasyDataBase;
       ///2012.09.27 멤버변수 추가.시작.
    FBolCompensation: Boolean;
    FintObjectCount: Integer;
    FintBisinessCount: Integer;
    ///2012.09.27 멤버변수 추가.끝.
///2012.10.05 멤버변수 추가.시작.
    FLocalQry: TEasyQuery;
    FKbmQry: TkbmMWClientQuery;
    ///2012.10.05 멤버변수 추가.끝.

    ///2012.10.22. 물건 수량 수식 -> 숫자 변경 때문에 추가.
    iTag, iToken, iLeft, iRight: Integer;
    aToken: array[1..100] of string;
    ///2012.10.22. 물건 수량 수식 -> 숫자 변경 때문에 추가.끝.
    dong_test : string;    //19-01-31 테스

    procedure Compute_susu_Sub; //수수료계산
    procedure Compute_Sum_sub; //수수료합계
    procedure Compute_susu; //수수료계산,합계
    procedure OpenAcount; //은행계좌창오픈
    procedure OpenTrips; //출장비창오픈
    procedure chk_Mode;
    procedure DomakeParam;
    procedure Compute_backward;                                                 //역산
    procedure memo_10_Price;                                                    //적요
    procedure memo_15_Price;                                                    //적요
    procedure memo_Total_price;                                                 //적요
    procedure ProcessParameters(ALink: TXLink);
    procedure Field_AlterProc(gTableNme, Str_Field: string);

      // 이하 종량제 신규 method//--이 메소드를 사용한 부분이 다 종량 관련 부분. 이걸로 찾아서 적용하세요.
    procedure Sum_VolumeChargeFromObject; //종량제 수수료 계산하기.
    procedure Compute_VolumeCharge; //종량제 수수료 계산하기.
    function Discount_VolumeLandCharge(LandVolume: Currency; LancCnt: Integer): Currency;  //토지 수량 할일율 계산하기
    function Discount_VolumeTreeCharge(const TreeVolume: Currency; const TreeCnt: Integer): Currency;
    procedure Clear_VolumeCharge;
 

  ///2012.09.27 변수 추가 .프로시져 변경. 시작
    procedure SumVolumeChargeForLand(var LandPrice, LandVolumeCharge: Currency; var LandCnt: Integer; //const ATableName: string;///2012.10.05
      var APublic10Price, APublic15Price, A10Price, A15Price: Currency);
    procedure SumVolumeChargeForBuild(var BuildPrice, BuildVolumeCharge: Currency; var DongCnt, TreeCnt: Integer;
      var TreePrice, StructurePrice, MoveFeePrice, EtcPrice, TreeVolumeCharge, StructureVolumeCharge, BusinessVolumeCharge: Currency; //const ATableName: string;///2012.10.05
      var APublic10Price, A10Price, A15Price: Currency);
    ///2012.09.27 변수 추가 .프로시져 변경. 끝.

    function Divide_Token(sContents: string): Integer;
    procedure Process_Bracket;
    function Left_Bracket_Position: Integer;
    function Right_Bracket_Position(iLast_Left: Integer): Integer;
    procedure do_getsusudata;
    procedure Set_WooriBank;

  public
    bCheck :Boolean;
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

{$R *.DFM}

uses
    CommFuncU, PFConfig, ApConfig, UserData, Trips, Acount
///2012-09-13 종량제 uses 절 CommModule 추가.
  , CommModule;

//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TXForm1;
begin
  Form := TXForm1.Create(Application);
  try
    with Form do
    begin
      AHandle := SetParentControl(AParent, True);

      if AParent = nil then
      begin
        BorderStyle := bsDialog;
        //FormStyle := fsMDIChild;
      end;

      if Assigned(ALink) then
        ProcessParameters(ALink);

      if AParent <> nil then
        Show
      else
        ShowModal;
    end;
  except;
  end

end;

procedure TXForm1.subprint_ynExit(Sender: TObject);
begin
// 나현찬 추가
 if subprint_yn.ItemIndex = 0 then
  begin
    tbl0.Edit;
    tbl0.FieldByName('chk_prn_detail').AsBoolean := false ;
    tbl0.Post;
  end
 else
   begin
    tbl0.Edit;
    tbl0.FieldByName('chk_prn_detail').AsBoolean := true ;
    tbl0.Post;
   end;
end;



{ TXForm1 }

//
// 초기 파라메터 처리 루틴
//
procedure TXForm1.ProcessParameters(ALink: TXLink);
var
  chk_field1,chk_field2,chk_field3,chk_field4,chk_field5,chk_field6,chk_field7,chk_field8,chk_field9,chk_field10,chk_field11,chk_field12,chk_field13,chk_field14,chk_field15,chk_field16 : integer;
 chk_Compensation: integer; ///2012.10.11. 수수료 기준 금액 변수 추가.
begin

  ChildDataBase := TEasyDataBase(ALink.ParamByInteger('DATABASE'));
  SYSDataBase   := TEasyDataBase(ALink.ParamByInteger('SYSDATABASE'));
  AppInfo       := Pointer(ALink.ParamByInteger('AppInfo'));

  with tbl_gam_info do begin
    DatabaseName := ChildDataBase.DatabaseName;
    SessionName  := ChildDataBase.SessionName;
    TableName    := 'gam_info';
    Open;
    Edit;
  end;

  with Qryexec do begin
    DatabaseName := ChildDataBase.DatabaseName;
    SessionName  := ChildDataBase.SessionName;
  end;

  try
    chk_field1 := -1;
    chk_field2 := -1;
    chk_field3 := -1;
    chk_field4 := -1;
    chk_field5 := -1;
    chk_field6 := -1;
    chk_field7 := -1;
    chk_field8 := -1;
    chk_field9 := -1;
    chk_field10 := -1;
    chk_field11 := -1;


    chk_Compensation := -1; ///2012.10.11. 수수료 기준 금액 변수 추가.
    with Qryexec do begin
      Close;
      SQL.Clear;
      SQL.Text := ' SELECT * FROM  ' + ALink.ParamByString('TABLENAME');
      //showmessage(   SQL.Text);
      Open;
    end;
    chk_field12 := -1;
    chk_field13 := -1;

    if Qryexec.FindField('Chk_Auto') = nil then
      chk_field1 := 1;
    if Qryexec.FindField('Chk_Dambo') = nil then
      chk_field2 := 1;
    if Qryexec.FindField('Chk_Amt') = nil then
      chk_field3 := 1;
    if Qryexec.FindField('Chk_His') = nil then
      chk_field4 := 1;
    if Qryexec.FindField('Reg_CopNo') = nil then
      chk_field5 := 1;
    if Qryexec.FindField('Chk_Sale') = nil then
      chk_field6 := 1;
    if Qryexec.FindField('Chk_prn_cut') = nil then
      chk_field7 := 1;
    if Qryexec.FindField('Chk_Tax') = nil then
      chk_field8 := 1;
    if Qryexec.FindField('Chk_prn_detail') = nil then
      chk_field9 := 1;
    if Qryexec.FindField('SusuRate') = nil then
      chk_field10 := 1;
    if Qryexec.FindField('SusuDC') = nil then
      chk_field11 := 1;
    if Qryexec.FindField('Add_doc') = nil then
      chk_field12 := 1;
    if Qryexec.FindField('requestdate') = nil then
      chk_field13 := 1;
    if Qryexec.FindField('ChargeGubun') = nil then
      chk_field14 := 1;
    if Qryexec.FindField('BillPrice') = nil then ///2012.10.11. 수수료 기준 금액 변수 추가.
      chk_Compensation := 1; ///2012.10.11. 수수료 기준 금액 변수 추가.
    if Qryexec.FindField('Chk_AutoV') = nil then
      chk_field15 := 1;
    if Qryexec.FindField('dong_gubun') = nil then
      chk_field16 := 1;

    Qryexec.Close;
    if (chk_field1 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_Auto  integer');
    if (chk_field2 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_Dambo  integer');
    if (chk_field3 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_Amt  integer');
    if (chk_field4 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_His  integer');
    if (chk_field5 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Reg_CopNo string(20)');
    if (chk_field6 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_Sale logical');
    if (chk_field7 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_prn_cut logical');
    if (chk_field8 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_Tax  integer');
    if (chk_field9 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_prn_detail logical');
    if (chk_field10 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'SusuRate  string(6)');
    if (chk_field11 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'SusuDC string(6)');
    if (chk_field12 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Add_doc string(10)');
    if (chk_field13 = 1) then
     Field_AlterProc(ALink.ParamByString('TABLENAME'), 'requestdate string(16)');


        //종량제 관련 컬럼 추가
    if (chk_field14 = 1) then begin
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'LandPrice  Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'BuildPrice   Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'TreePrice     Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'StructurePrice  Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'MoveFeePrice    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'EtcPrice       Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'VolumeCharge    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'LandVolumeCharge  Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'LandVolumeCharge_Origin   Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'BuildVolumeCharge    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'TreeVolumeCharge    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'TreeVolumeCharge_Origin   Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'StructureVolumeCharge    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'BusinessVolumeCharge    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'MoveFeeVolumeCharge    Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'TreeCnt          Integer');

      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'ChargeGubun string(1)');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'ChargePartial Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'VolumeChargePartial Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'ChargeRest Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'ResearchLandVolumeCharge Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'ResearchBuildVolumeCharge Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'MixCharge Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'MixChargeJELSA Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'MixChargeTAX Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'MixChargeTOTAL Currency');
    end;


  ///2012.10.11. 수수료 기준 금액 컬럼 추가.
    if (chk_Compensation = 1) then begin
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'BillPrice  Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Bill10Price   Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Bill15Price     Currency');
    end;

     if (chk_field15 = 1) then
       Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_AutoV integer'); /// 2013.02.06 종량제 자동수동구분 추가
     if (chk_field16 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'dong_gubun   String(10)'); //2019-02-11 동부지사 전용계좌 구분필드 추가

   except
    ;
  end;

  with tbl0 do begin
    DatabaseName := ChildDataBase.DatabaseName;
    SessionName  := ChildDataBase.SessionName;
    TableName    := ALink.ParamByString('TABLENAME');
    Open;
    Edit;
  end;

  DomakeParam;
  if ALink.ParamByString('Command') = 'ALLPRINT' then begin
    /// 2013.02.06 - 중토위, 국토청, 보상, 추천건일때
    if (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'LAN') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'TEM') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'OTH') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'CTS') then
    begin

  /// 2013.02.06 // 토지필지수 카운트
   /// 2013.02.19 // 필지수, 산식, 결과값 추가
      try
        with Qry_TCnt do
        begin
           if Active then close;
          Query.Text := 'exec APWORKS_LAND_KAPA_LAND_COUNT_SEL :Gubun_Code,:MASTERID';
          Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
          Params.ParamByName('MASTERID').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
          Open;

          tbl_gam_info.FieldByName('PHILJI').AsCurrency := FieldByName('tcnt').AsCurrency;
        end;
      except

      end;

  ///2013.01.02 // 지장물 건물수 카운트
    /// 2013.02.19 // 필지수, 산식, 결과값 추가
      try
        with Qry_BCnt do
        begin
          if Active then close;
          Query.Text := 'exec APWORKS_LAND_KAPA_OBJECTS_COUNT_SEL :Gubun_Code,:MASTERID';
          Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
          Params.ParamByName('MASTERID').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
          Open;
        end;
      except

      end;
    end else
    begin

    end;

    Make_PrintSource(TfrxReport(ALink.ParamByInteger('Target_Print')), frxReport1,Qryexec,TItemData(AppInfo^).code);

  end;
  ///2012.09.27. 주석처리.
 //if ( (tbl_gam_info.FieldByName('price0_1').AsCurrency > 0) or (tbl_gam_info.FieldByName('price1_1').AsCurrency > 0) ) then
 //   gs_yn.ItemIndex := 1;

  if ( tbl0.FieldByName('Chk_His').AsString = '0' ) then
    cxLabel21.Caption := '절사금액[수동]'
  else begin
    cxLabel21.Caption := '절사금액[자동]';
    tbl0.FieldByName('Chk_His').AsString := '1';
  end;

  if ( tbl0.FieldByName('Chk_Tax').AsString = '0' ) then
    cxLabel19.Caption := '부가가치세[수동]'
  else begin
    cxLabel19.Caption := '부가가치세[자동]';
    tbl0.FieldByName('Chk_Tax').AsString := '1';
  end;

 // 나현찬 주석 20121008 if not ( tbl0.FieldByName('Chk_Auto').AsString = '1' ) then
  // 나현찬 주석 20121008  tbl0.FieldByName('Chk_Auto').AsInteger := 0;
 // if (tbl0.FieldByName('Chk_Dambo').AsString = '') then
 //   tbl0.FieldByName('Chk_Dambo').AsInteger := 0;
  


 //나현찬 협회 주석  if not ( tbl0.FieldByName('Chk_Dambo').AsString = '1' ) then
 //나현찬 협회 주석   tbl0.FieldByName('Chk_Dambo').AsInteger := 0;

 // if not (tbl0.FieldByName('Chk_Auto').AsString = '1') then
  //  tbl0.FieldByName('Chk_Auto').AsInteger := 0;
 ///////////////협회꺼 다 주석처리하고 원래 우리꺼
 //// 나현찬
 /// 담보인데 자꾸 체크박스가 경매로 간다.
 if not ( tbl0.FieldByName('Chk_Auto').AsString = '1' ) then
    tbl0.FieldByName('Chk_Auto').AsInteger := 0;

//    if (tbl0.FieldByName('Chk_Dambo').AsString = '') then
//    tbl0.FieldByName('Chk_Dambo').AsInteger := 1;
//
//  if not ( tbl0.FieldByName('Chk_Dambo').AsString = '1' ) then
//    tbl0.FieldByName('Chk_Dambo').AsInteger := 0;

 ///나현찬 주석  chk_Mode;
 //////////////////////////////// 나현찬 추가
 if radio_Mode.ItemIndex = 0 then begin
    f_Price10.Enabled     := False;
    f_Price15.Enabled     := False;
    f_SUSU.Enabled        := False;
    f_SUSUSUM.Enabled     := False;
    f_TOTAL.Enabled       := False;
    f_BILL.Enabled        := False;
    btn_backward.Enabled  := False;
    f_price0.Enabled           := False;
    f_price1.Enabled           := False;
    f_price0_1.Enabled  := False;
    f_price1_1.Enabled  := False;
    f_price.Enabled            := False;
    f_price2.Enabled           := False;
    f_Price20.Enabled          := False;

    Chk_Sale_chk.Checked := False;

  end else begin
    f_Price10.Enabled     := True;
    f_Price15.Enabled     := True;
    f_SUSU.Enabled        := True;
    f_SUSUSUM.Enabled     := True;
    f_TOTAL.Enabled       := True;
    f_BILL.Enabled        := True;
    btn_backward.Enabled  := True;
    f_price0.Enabled           := True;
    f_price1.Enabled           := True;
    f_price0_1.Enabled  := True;
    f_price1_1.Enabled  := True;
    f_price.Enabled            := False;
    f_price2.Enabled           := True;
    f_Price20.Enabled          := True;

    Chk_Sale_chk.Checked := true;
   end;
 ////////////////////////////////
  if not ( tbl0.FieldByName('Chk_Amt').AsString = '1' ) then
    tbl0.FieldByName('Chk_Amt').AsInteger := 0;

  if not ( tbl0.FieldByName('Chk_Sale').AsBoolean ) then
    tbl0.FieldByName('Chk_Sale').AsBoolean := False;

  if not ( tbl0.FieldByName('Chk_prn_cut').AsBoolean ) then
    tbl0.FieldByName('Chk_prn_cut').AsBoolean := False;

  if not ( tbl0.FieldByName('Chk_prn_detail').AsBoolean ) then
    tbl0.FieldByName('Chk_prn_detail').AsBoolean := False;

  subprint_yn.ItemIndex := 1;
  if tbl0.FieldByName('Chk_prn_detail').AsBoolean then
    subprint_yn.ItemIndex := 0;

  if Trim( tbl0.FieldByName('SusuRate').AsString ) = '' then
    tbl0.FieldByName('SusuRate').AsString := '1.0';
  if Trim( tbl0.FieldByName('SusuDC').AsString ) = '' then
    tbl0.FieldByName('SusuDC').AsString := '1.0';
  if Trim( tbl_gam_info.FieldByName('Account').AsString ) = '' then
  begin

    if (Pos('우리은행', tbl_gam_info.fieldByName('custpart').AsString) > 0) then
    begin

      with ADOQuery do
      begin

        SQL.Clear;
        Parameters.Clear;

        SQL.Text := ' Exec SP_YJI_ImaAccount_iu :Flag, :Account, :Docid ';

        Parameters.ParamByName('Flag').Value := 'Search';
        Parameters.ParamByName('Account').Value := '';
        Parameters.ParamByName('Docid').Value := cxDBTextEdit2.Text;

        Open;

        if (fieldByName('Use_Yn').AsString = 'N') then
        Begin

           tbl_gam_info.fieldByName('Account').AsString := #13 +'◈ 우리은행' + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( 예금주 :'+  tbl_gam_info.fieldByName('Debtor').AsString +' )';

           with ADOQuery1 do
           begin

             SQL.Clear;
             Parameters.Clear;

             SQL.Text := ' Exec SP_YJI_ImaAccount_iu :Flag, :Account, :Docid, :Debtor ';

             Parameters.ParamByName('Flag').Value := 'Up';
             Parameters.ParamByName('Account').Value := ADOQuery.fieldByName('Account').AsString;
             Parameters.ParamByName('Docid').Value := cxDBTextEdit2.Text;
             Parameters.ParamByName('Debtor').Value := tbl_gam_info.fieldByName('Debtor').AsString;

             ExecSQL;


           end;

           ////

        end
        Else
        begin

          tbl_gam_info.fieldByName('Account').AsString := #13 +'◈ 우리은행' + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( 예금주 :'+  fieldByName('Debtor').AsString +' )';

        end;
//         Set_WooriBank;
      end;

    end
    else if (Pos('한국주택금융공사', tbl_gam_info.fieldByName('custpart').AsString) > 0) then
    begin

      with ADOQuery do
      begin

        SQL.Clear;
        Parameters.Clear;

        SQL.Text := ' Exec SP_IW_HF_ImgAccount_iu :Flag, :Office, :Account, :Docid ';

        Parameters.ParamByName('Flag').Value := 'Search';
        Parameters.ParamByName('Office').Value := UserInfo.Office;
        Parameters.ParamByName('Account').Value := '';
        Parameters.ParamByName('Docid').Value := cxDBTextEdit2.Text;

        Open;

        if (fieldByName('Use_Yn').AsString = 'N') then
        Begin

           tbl_gam_info.fieldByName('Account').AsString := #13 +'◈ ' + fieldByName('AccountNm').AsString + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( 예금주 :'+  tbl_gam_info.fieldByName('Debtor').AsString +' )';

           with ADOQuery1 do
           begin
           
             SQL.Clear;
             Parameters.Clear;

             SQL.Text := ' Exec SP_IW_HF_ImgAccount_iu :Flag, :Office, :Account, :Docid, :Debtor ';

             Parameters.ParamByName('Flag').Value := 'Up';
             Parameters.ParamByName('Office').Value := UserInfo.Office;
             Parameters.ParamByName('Account').Value := ADOQuery.fieldByName('Account').AsString;
             Parameters.ParamByName('Docid').Value := cxDBTextEdit2.Text;
             Parameters.ParamByName('Debtor').Value := tbl_gam_info.fieldByName('Debtor').AsString;

             ExecSQL;                                              

           end;
           
        end
        Else
        begin

          tbl_gam_info.fieldByName('Account').AsString := #13 +'◈ ' + fieldByName('AccountNm').AsString + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( 예금주 :'+  fieldByName('Debtor').AsString +' )';

        end;
        
      end;

    end
    else
    begin

      tbl_gam_info.FieldByName('Account').AsString :=
      PF_Config.OtherInfo.AccountNum.Text;

    end;

  end;

  FBolCompensation := False;   //2013.11.07 이일우 주석
  // FBolCompensation := True;

  if Trim( tbl0.FieldByName('Add_doc').AsString ) = '' then
    tbl0.FieldByName('Add_doc').AsString := '2';

 // 나현찬 협회 주석 tbl0.FieldByName('Add_doc').AsString := '2';  // 나현찬 협회 20121008
  if  Trim(tbl0.FieldByName('requestdate').AsString) = '' then begin
      tbl0.FieldByName('requestdate').AsString :=tbl_gam_info.FieldByName('requestdate').AsString;
  end;
  FBolCompensation := False;     //2013.11.07 이일우 주석
   // FBolCompensation := True;

  if (tbl_gam_info.FieldByName('PurposeCode').AsString = '00') or (tbl_gam_info.FieldByName('PurposeCode').AsString = 'C1') or (tbl_gam_info.FieldByName('PurposeCode').AsString = '01') or (tbl_gam_info.FieldByName('PurposeCode').AsString = '02') or (tbl_gam_info.FieldByName('PurposeCode').AsString = '11') or (tbl_gam_info.FieldByName('PurposeCode').AsString = '12') or (tbl_gam_info.FieldByName('PurposeCode').AsString = 'E3') then
  begin
    FBolCompensation := True;
  end;

  if (tbl_gam_info.FieldByName('PurposeCode').AsString = '72') or
     (tbl_gam_info.FieldByName('PurposeCode').AsString = '68') or
     (tbl_gam_info.FieldByName('PurposeCode').AsString = '83') or
     (tbl_gam_info.FieldByName('PurposeCode').AsString = '14') or
     (tbl_gam_info.FieldByName('PurposeCode').AsString = '16')
     then  begin
    if (tbl_gam_info.FindField('ChargeGubun') <> nil) then begin
        FBolCompensation := False;   //2013.11.07 이일우 주석
        //FBolCompensation := True;

        tbl_gam_info.FieldByName('ChargeGubun').AsString :='P';
      end;
    end;

  FintObjectCount := 0;
  FintBisinessCount := 0;

  ///2012.09.27. 보상 멤버 변수 기본값세팅.끝.
 ///2012.10.05 멤버변수 초기화. 시작.
  FLocalQry := TEasyQuery.Create(nil);
  FLocalQry.DatabaseName := ChildDataBase.DatabaseName;
  FLocalQry.SessionName := ChildDataBase.SessionName;

  FKbmQry := TkbmMWClientQuery.Create(nil);

  with FKbmQry do begin
    TransportStreamFormat := cm.ApStreamFormat;
    SessionName := 'ApWorksClient';
    QueryService := 'KAPA_Apwork';
    QueryServiceVersion := '1.0';
  end;
  ///2012.10.05 멤버변수 초기화. 끝.

end;

procedure TXForm1.XFormClose(Sender: TObject; var Action: TCloseAction);
begin

  if (cxComboBox1.Text = '보수기준을 선택해주세요') and (UserInfo.Office = '10') then
  begin
     
   // ShowMessage('보수기준을 선택해주세요');

  end
  else
  begin
///2012.10.05 멤버변수 Free. 시작.
  FreeAndNil(FKbmQry);
  FreeAndNil(FLocalQry);
  ///2012.10.05 멤버변수 Free. 끝.
  if (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Post;
  tbl0.close;
  if (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Post;
  tbl_gam_info.close;
  ChildDataBase := nil;
  SYSDataBase := nil;

  end;
  Action := cafree;
end;

procedure TXForm1.XFormDestroy(Sender: TObject);
begin
  //
end;

procedure TXForm1.XFormLink(Sender: TObject; ALink: TXLink);
begin

//
//    if (ALink.Command = 'PRINT')   then begin
//        cSParam.Values['Is_Pdf'] := 'False';
//
//
//    Doprint(Qryexec,frxReport1,TItemData(AppInfo^).code);
//  end else if ALink.Command = 'SAVE' then begin
//
//    if (tbl0.state in [dsInsert, dsEdit]) then
//      tbl0.Post;
//    tbl0.edit;
//    if (tbl_gam_info.state in [dsInsert, dsEdit]) then
//      tbl_gam_info.Post;
//    tbl_gam_info.edit;
//
//
//
//  end else if ALink.Command = 'DESIGN' then begin
//
//    Dodesign(Qryexec,frxReport1,TItemData(AppInfo^).code)
//  end
//   else
//    if ALink.Command = 'PDF' then begin
////     if (CheckBox1.Checked  = false)  then begin
////          cSParam.Values['Is_Pdf'] := 'False';
////     end else begin
////          cSParam.Values['Is_Pdf'] := 'True';
////     end;
////
////    DoPDF(Qryexec,frxReport1,TItemData(AppInfo^).code, TItemData(AppInfo^).sd_title+'.pdf');
// cSParam.Values['Is_Pdf'] := 'True';
//          DoPDF(Qryexec, frxReport1, TItemData(AppInfo^).code, TItemData(AppInfo^).sd_title +
//            '.pdf');
//
//  end else if ALink.Command = 'REPARAM' then begin
//    DomakeParam;
//  end else if ALink.Command = 'RefreshFr3' then begin
//    //DoRefreshFr3(Qryexec,TItemData(AppInfo^).code,TItemData(AppInfo^).sd_title);
//    DoRefreshFr3(Qryexec, SYSDataBase, AppInfo);
//  end;begin
  if ALink.Command = 'PRINT' then begin
    cSParam.Values['Is_Pdf'] := 'False';

    Doprint(Qryexec, frxReport1, TItemData(AppInfo^).code);

  end
  else
    if ALink.Command = 'SAVE' then begin
    ////////////////////////////////////저장
       if cxComboBox1.ItemIndex+1 > 0  then begin

          if (UserInfo.Office = '16') or (UserInfo.Office = '23') or (UserInfo.Office = '10') then begin
             ADOQuery.SQL.Clear;
            ADOQuery.Parameters.Clear;
            ADOQuery.SQL.Text := 'EXEC SP_IW_I_SUSUWHY :Docid,:Index,:Bigo,:Office';
            ADOQuery.Parameters.ParamByName('Docid').Value := cxDBTextEdit2.Text;
            ADOQuery.Parameters.ParamByName('Index').Value := cxComboBox1.ItemIndex+1;
            ADOQuery.Parameters.ParamByName('Bigo').Value := Memo1.Text;
            ADOQuery.Parameters.ParamByName('Office').Value := UserInfo.Office;
            ADOQuery.ExecSQL;
            //ShowMessage('저장완료');
          end;
       end;
      if (tbl0.state in [dsInsert, dsEdit]) then
        tbl0.Post;
      tbl0.edit;
      if (tbl_gam_info.state in [dsInsert, dsEdit]) then
        tbl_gam_info.Post;
      tbl_gam_info.edit;

    end
    else
      if ALink.Command = 'DESIGN' then begin
        Dodesign(Qryexec, frxReport1, TItemData(AppInfo^).code)
      end
      else
        if ALink.Command = 'PDF' then begin
          cSParam.Values['Is_Pdf'] := 'True';
          DoPDF(Qryexec, frxReport1, TItemData(AppInfo^).code, TItemData(AppInfo^).sd_title +
            '.pdf');
        end
        else
          if ALink.Command = 'REPARAM' then begin
            DomakeParam;
          end
          else
            if ALink.Command = 'RefreshFr3' then begin
              //DoRefreshFr3(Qryexec,TItemData(AppInfo^).code,TItemData(AppInfo^).sd_title);
              DoRefreshFr3(Qryexec, SYSDataBase, AppInfo);
            end;
end;

procedure TXForm1.DomakeParam;
begin
  with (cSParam) do begin
    clear;
    Add('company_name='+PF_Config.OtherInfo.CompanyName);
    Add('company_tel='+PF_Config.OtherInfo.CompanyTel);
    Add('company_fax='+PF_Config.OtherInfo.CompanyFax);
    Add('writer_name='+UserInfo.UserName);
    if (pf_config.OtherInfo.ConvertMode = cmMode1) then
    begin
      Add('p_type=1');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode2) then
    begin
      Add('p_type=2');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode3) then
    begin
      Add('p_type=3');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode4) then
    begin
      Add('p_type=4');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode5) then
    begin
      Add('p_type=5');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode6) then
    begin
      Add('p_type=6');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode7) then
    begin
      Add('p_type=7');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode8) then
    begin
      Add('p_type=8');
    end
    else if (pf_config.OtherInfo.ConvertMode = cmMode9) then
    begin
      Add('p_type=9');
    end
    else begin
      Add('p_type=1');
    end;
    Add('Mark='+TItemData(AppInfo^).sd_mark);
    Add('sub_title='+TItemData(AppInfo^).sd_sub_title);
    if subprint_yn.ItemIndex = 0 then
      Add('detail_yn=Y')
    else
      Add('detail_yn=N');
  end;

end;

procedure TXForm1.f_price0Exit(Sender: TObject);
begin
  /// 2013.04.03 수동일때는 빠져나감
  if tbl0.FieldByName('Chk_Auto').AsInteger = 1 then // 수동
    exit;
  /// 2013.02.19 정석과장 추가 - 초기값 주지 않아서 자동계산 되지 않는 부분 수정
  if not ( tbl0.FieldByName('Chk_AutoV').AsInteger = 1 ) then begin
      tbl0.FieldByName('Chk_AutoV').AsInteger := 0;

    end;
  /// 2013.02.06 종량제 수동일때는 안함
  if vradio_Mode.ItemIndex = 0 then
  begin
    Compute_susu;
  end;

end;

procedure TXForm1.Compute_susu;
var TSUSU, ASUSU, Su_Value, SUSU10, SUSU15, SUSU00: Currency;
begin
  //ShowMessage(User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));
  ///2012.09.27 변경. 시작...
  if FBolCompensation then //보상일때
  begin
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
      tbl_gam_info.Edit;

    //종가 종량 다 여기서 새로 만든 로직으로 합산.
    if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then
    begin

      Sum_VolumeChargeFromObject;

      with tbl_gam_info do
        begin
          Su_Value := 0; SUSU10 := 0; SUSU15 := 0; SUSU00 := 0;
          if (tbl_gam_info.FieldByName('PHILJI').AsCurrency > 0) or ((FintObjectCount - FintBisinessCount) > 0) then
           begin
          //SUSU10 := FieldByName('price0').AsCurrency;
          //SUSU15 := FieldByName('Price1').AsCurrency;
          SUSU10 := tbl0.FieldByName('Bill10Price').AsCurrency;
          SUSU15 := tbl0.FieldByName('Bill15Price').AsCurrency;
          // 2013.03.29 플래그 2 -> 1 수정, Price00 : 평가액으로 산출된 기초수수료를 리턴받는다.(최저수수료 적용 150000, 225000)
          //2014 이일우 주석  Su_Value := GetSusu(SUSU10, SUSU15, SUSU00, strtofloat(edit_rate.text), '2');
          // 2014.03.04 수정 - 의뢰일자가 2014.03.07 이후 물건이면 새로운 수수료 루틴 적용하기 위해 파라미터에 의뢰일자를 추가
          Su_Value := GetSusu(SUSU10, SUSU15, SUSU00, strtofloat(edit_rate.text), '1', User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));
          ///////////////////////////
         end;

         FieldByName('Price00').AsCurrency := SUSU00;
         FieldByName('Price10').AsCurrency := SUSU10;
         FieldByName('Price15').AsCurrency := SUSU15;


          ///2012.10.17 영업권수수료 계산.->procedure SumVolumeChargeForBuild 로 이동.주석처리.
          //영업권이 평가가 있을 때만 수수료 계산.

           {
           if FintBisinessCount > 0 then
          begin
            TSUSU := 0; ASUSU := 0;
            TSUSU := FieldByName('price2').AsCurrency;
            FieldByName('Price20').AsCurrency := GetSusu(TSUSU, ASUSU, ASUSU, strtofloat(edit_rate.text), '1'); //var 안씀.
          end
          else FieldByName('Price20').AsCurrency := 0;
            }

          //합산
          FieldByName('SUSU').AsCurrency := Trunc(Su_Value + FieldByName('Price20').AsCurrency);

        end;
      Compute_Sum_sub; //종가수수료 계산.
    end

    else begin
     // Sum_VolumeChargeFromObject;
//ShowMessage('test');
      tbl_gam_info.FieldByName('price0').AsCurrency := f_price0.Value;
      tbl_gam_info.FieldByName('price1').AsCurrency := f_price1.Value;
      tbl_gam_info.FieldByName('price0_1').AsCurrency := f_price0_1.Value;
      tbl_gam_info.FieldByName('price1_1').AsCurrency := f_price1_1.Value;
      tbl_gam_info.FieldByName('price2').AsCurrency := f_price2.Value; //영업권 합산금액
      ///2012.10.17 평가금액을 고유해야하므로. 개별금액으로 나올수도 있는 부분. 주석처리.
      //if tbl0.FieldByName('Chk_Amt').AsInteger = 0 then //감정평가액
      ///2012.10.17 협회프로그램은 종가평가총액에 영업권을 더합니다.법인관리패턴에 맞게 적용하세요.
      tbl_gam_info.FieldByName('price').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency
        + tbl_gam_info.FieldByName('price1').AsCurrency + tbl_gam_info.FieldByName('price2').AsCurrency;
      //else //개별지가액
      //  tbl_gam_info.FieldByName('price').AsCurrency := tbl_gam_info.FieldByName('price0_1').AsCurrency
      //    + tbl_gam_info.FieldByName('price1_1').AsCurrency;
      ///2012.10.17 평가금액을 고유해야하므로. 개별금액으로 나올수도 있는 부분. 주석처리.끝.
      tbl_gam_info.FieldByName('Price10').AsCurrency := f_Price10.Value;
      tbl_gam_info.FieldByName('Price15').AsCurrency := f_Price15.Value;
      tbl_gam_info.FieldByName('SUSU').AsCurrency := f_SUSU.Value;
      tbl_gam_info.FieldByName('SUSUSUM').AsCurrency := f_SUSUSUM.Value;
      tbl_gam_info.FieldByName('TOTAL').AsCurrency := f_TOTAL.Value;
      tbl_gam_info.FieldByName('BILL').AsCurrency := f_BILL.Value;
      //영업권
      tbl_gam_info.FieldByName('Price20').AsCurrency := f_Price20.Value;
      ///2012.10.17 수동이더라도 종량관련 금액은 자동 계산되도록 로직 추가.시작.
      Sum_VolumeChargeFromObject; ///2012.10.22 적용안되신 법인이 있는 듯하여 확인해주세요.
      ///2012.10.17 수동이더라도 종량관련 금액은 자동 계산되도록 로직 추가.끝..
    end;


    if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      Compute_VolumeCharge; //종량수수료 계산
  end
  else
  ///2012.09.27 변경. 끝...
  begin //보상 아닐때..기존로직그대로.
    if Chk_Sale_chk.Checked then begin
    //    Application.MessageBox(pchar('수수료 할인모드이므로, 자동수수료계산기능을 지원하지 않습니다.' + #13 + '수수료를 수기입력하실수 있습니다.'), '정보', MB_OK);
    end
    else
        Compute_susu_Sub; // 수수료계산
    Compute_Sum_sub; // 수수료 SUM
   end;
end;

procedure TXForm1.Compute_susu_Sub;
var
  Su_Value, Price_Value, P, P10, P15, P10_1, P15_1, TP, TP10, TP15, TSUSU, SUSU00, SUSU10, SUSU15: Currency;
  Commission_receiptdate: string; //경매적용을 위한 접수일자변수
  Commission_APT: string; //경매적용을 위한 아파트여부변수
begin
  try
    if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
      tbl_gam_info.Edit;

    with (tbl_gam_info) do begin

    // 수동입력시엔 평가총액을 계산해오는 것이 아니고, 입력된 값을 사용하도록 수정
    if radio_Mode.ItemIndex = 0 then   // 자동일때
    begin

        if gs_yn.ItemIndex = 0 then
        begin
          //P := Trunc(GetTotalPriceGS(Qryexec, P10, P15, P10_1, P15_1, 'D', '1', '1')); //일반평가금액(개별금액기준)
          P := Trunc(GetTotalPrice(Qryexec, P10, P15, 'D', '1')); //일반평가금액(감정금액기준)//price sum//내부적초기화
          Price_Value := Trunc(P10 + P15); // 평가총액 SUM
          TP := Trunc(GetBSTotalPrice(Qryexec, TP10, TP15, TSUSU, 'D', '12')); //영업권평가금액
          FieldByName('price').AsCurrency := P10 + P15 + TP; // 평가총액

          SUSU10 := P10;
          SUSU15 := P15;
        end
        else begin
          P := Trunc(GetTotalPriceGS(Qryexec, P10, P15, P10_1, P15_1, 'D', '1', '1')); //일반평가금액(개별금액기준)
          //내부적초기화 하고, 감정평가 액을 50% 금액으로 한경우도있음.
          Price_Value := Trunc(P10_1 + P15_1); // 평가총액 SUM
          TP := Trunc(GetBSTotalPrice(Qryexec, TP10, TP15, TSUSU, 'D', '12')); //영업권평가금액
          FieldByName('price').AsCurrency := P10 + P15 + TP; // 평가총액
          SUSU10 := P10_1;
          SUSU15 := P15_1;
        end;

      end
      else begin   // 수동일때
        P10 := f_price0.Value; // 1.0배 평가총액
        P15 := f_price1.Value; // 1.5배 평가총액
        P10_1 := f_price0_1.Value; // 개별 1.0배 평가총액
        P15_1 := f_price1_1.Value; // 개별 1.5배 평가총액
        TP := f_price2.Value; // 영업권 평가총액
        FieldByName('price').AsCurrency := P10 + P15 + TP; // 평가총액

        // 수동일땐 보상평가액을 기준으로 수수료를 따로 산출
        // TP10.TP15는 본래 이 용도의 변수는 아니지만, 영업수수료계산시에 Temp로 사용.
        // 그러나 뒤에서 사용하지않고, cFlag가 1이므로 지장은 없다.
        TP10 := 0;
        TP15 := 0;
        TSUSU := GetSusu(TP, TP10, TP15, strtofloat(edit_rate.text), '1',User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));

        if gs_yn.ItemIndex = 0 then
        begin
          SUSU10 := P10;
          SUSU15 := P15;
        end
        else begin
          SUSU10 := P10_1;
          SUSU15 := P15_1;
        end;
      end;

     /// 2013.02.13 국민은행 추가건
      if (cmb_susuj.ItemIndex = 0) or (cmb_susuj.ItemIndex = 2) then begin //담보
        Su_Value := GetSusu(SUSU10, SUSU15, SUSU00, strtofloat(edit_rate.text), '1',User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));/////

      end else begin //경매                                    //경매
//          Su_Value    := GetSusu2(SUSU10, SUSU15, SUSU00, '2');
//          2008년 3월 1일부로 경매수수료가 변화됨에 따라 코드수정
//          접수일자 기준으로 3월1일후의 접수건은 바뀐 수수료체계를 따른다.
//          그부분을 위하여 함수를 호출할때 접수일자를 같이 넘기며,
//          접수일자 파라미터가 없을때는 바뀐 수수료체계를 적용한다.  --> 이부분의 코딩은 CommFuncU에서 처리. 상단에 기준일자를 변수처리함.
        Commission_receiptdate := Trim(tbl_gam_info.FieldByName('receiptdate').AsString);
        Commission_receiptdate := User_Remove_char(Commission_receiptdate, '-');
        if Length(Commission_receiptdate) <> 8 then
          Commission_receiptdate := '-';

        Commission_APT := 'No';
        if (Trim(tbl_gam_info.FieldByName('category').AsString) = '아파트') then
          Commission_APT := 'Yes';

        Su_Value := GetSusu2(SUSU10, SUSU15, SUSU00, '2', Commission_receiptdate, Commission_APT);
      end;

      FieldByName('Price00').AsCurrency := SUSU00;
      FieldByName('Price10').AsCurrency := SUSU10;
      FieldByName('Price15').AsCurrency := SUSU15;

      FieldByName('price0').AsCurrency := P10; // 1.0배 평가총액
      FieldByName('price1').AsCurrency := P15; // 1.5배 평가총액
      FieldByName('price0_1').AsCurrency := P10_1; // 개별 1.0배 평가총액
      FieldByName('price1_1').AsCurrency := P15_1; // 개별 1.5배 평가총액
      FieldByName('price2').AsCurrency := TP; // 영업권 평가총액

      FieldByName('Price20').AsCurrency := TSUSU;

      FieldByName('SUSU').AsCurrency := Trunc(Su_Value + TSUSU);
      // 기존에는 1.0과 1.5의 수수료를 각각 더했으나, 최저수수료 적용문제로 인하여 리턴된 수수료를 직접 더함.
      //      FieldByName('SUSU').AsCurrency  := Trunc(SUSU10 + SUSU15 + TSUSU);

      if (edit_DC.Text <> '1.0') then
      begin
        FieldByName('Price10').AsCurrency := FieldByName('Price10').AsCurrency *
          StrToFloat(edit_DC.Text);
        FieldByName('Price15').AsCurrency := FieldByName('Price15').AsCurrency *
          StrToFloat(edit_DC.Text);
        FieldByName('Price20').AsCurrency := FieldByName('Price20').AsCurrency *
          StrToFloat(edit_DC.Text);

       
        FieldByName('SUSU').AsCurrency := Trunc(FieldByName('Price10').AsCurrency + FieldByName('Price15').AsCurrency + FieldByName('Price20').AsCurrency);//2014.02.25이일우 + FieldByName('Price20').AsCurrency);
      end;
    end;
  except
    ;
  end;
end;

procedure TXform1.Compute_Sum_sub;
var
  Su_Value, Price_Value, P10, P15, SUSUJELSA: Currency;
begin

  /// 2013.01.03 tbl_gam_info 데이터 닫혀있어서 에러 - 수정
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Edit;

  if Chk_Sale_chk.Checked then begin
    tbl_gam_info.FieldByName('price').AsCurrency := f_price0.Value + f_price1.Value +
      f_price2.Value; // 평가총액
  end;


  /// 2013.01.10 종량제일 경우 분기
  with (tbl_gam_info) do begin
    if tbl0.FieldByName('ChargeGubun').AsString = 'V' then begin //이정묵 종량제일 경우 합산을 다른 경로로 하도록 수정


    ///2014.03.06  이일우 추가
      // 2014.03.04 수정 - 의뢰일자가 2014.03.07 이후 물건이면 새로운 수수료 루틴 적용
      if User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-') < '20140307' then
       begin

        /// 2013.02.06 토지건물종가70 + 토지건물종량30 + 토지건물외종가100이 15만원이 안될경우는 150000원으로 세팅
        /// 2013.02.08 15만원 비교시 영업권은 뺀 금액으로 비교
        if tbl0.FieldByName('ChargePartial').AsCurrency + tbl0.FieldByName('VolumeChargePartial').AsCurrency + tbl0.FieldByName('ChargeRest').AsCurrency - FieldByName('Price20').AsCurrency > 150000 then
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(tbl0.FieldByName('ChargePartial').AsCurrency + //토지건물 종가 70#
            tbl0.FieldByName('VolumeChargePartial').AsCurrency + //토지건물 종량 30%
            tbl0.FieldByName('ChargeRest').AsCurrency + //토지건물외 100%
                                               /// 2013.01.16 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외
                                               /// 2013.02.06
            /// 2013.02.08 영업권수수료 포함
            /// 2013.02.19 chargerest 에는 영업권 포함으로 다시 변경 - 영업권 포함이므로 영업권은 제외
            // FieldByName('Price20').AsCurrency + //영업권 평가수수료
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //토지조사비
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //물건조사비
            FieldByName('YEBI').AsCurrency + //여비
            FieldByName('GONGBU').AsCurrency + //공부발급비
            FieldByName('SILBI').AsCurrency + //실비
            FieldByName('YONGYEUK').AsCurrency); //특별용역비
        end else
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(150000 + // 15만원 기본수수료
            FieldByName('Price20').AsCurrency + // 영업권
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //토지조사비
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //물건조사비
            FieldByName('YEBI').AsCurrency + //여비
            FieldByName('GONGBU').AsCurrency + //공부발급비
            FieldByName('SILBI').AsCurrency + //실비
            FieldByName('YONGYEUK').AsCurrency); //특별용역비
        end;

      end else
      begin

        /// 2014.03.04 토지건물종가70 + 토지건물종량30 + 토지건물외종가100이 15만원이 안될경우는 200000원으로 세팅
        /// 2013.03.04 20만원 비교시 영업권은 뺀 금액으로 비교
        if tbl0.FieldByName('ChargePartial').AsCurrency + tbl0.FieldByName('VolumeChargePartial').AsCurrency + tbl0.FieldByName('ChargeRest').AsCurrency - FieldByName('Price20').AsCurrency > 200000 then
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(tbl0.FieldByName('ChargePartial').AsCurrency + //토지건물 종가 70#
            tbl0.FieldByName('VolumeChargePartial').AsCurrency + //토지건물 종량 30%
            tbl0.FieldByName('ChargeRest').AsCurrency + //토지건물외 100%
                                               /// 2013.01.16 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외
                                               /// 2013.02.06
            /// 2013.02.08 영업권수수료 포함
            /// 2013.02.19 chargerest 에는 영업권 포함으로 다시 변경 - 영업권 포함이므로 영업권은 제외
            // FieldByName('Price20').AsCurrency + //영업권 평가수수료
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //토지조사비
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //물건조사비
            FieldByName('YEBI').AsCurrency + //여비
            FieldByName('GONGBU').AsCurrency + //공부발급비
            FieldByName('SILBI').AsCurrency + //실비
            FieldByName('YONGYEUK').AsCurrency); //특별용역비
        end else
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(200000 + // 20만원 기본수수료
            FieldByName('Price20').AsCurrency + // 영업권
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //토지조사비
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //물건조사비
            FieldByName('YEBI').AsCurrency + //여비
            FieldByName('GONGBU').AsCurrency + //공부발급비
            FieldByName('SILBI').AsCurrency + //실비
            FieldByName('YONGYEUK').AsCurrency); //특별용역비
        end;

      end;
    end else begin
      FieldByName('SUSUSUM').AsCurrency := Trunc(FieldByName('SUSU').AsCurrency +
        FieldByName('YEBI').AsCurrency +
        FieldByName('TOJOSABI').AsCurrency +
        FieldByName('MULJOSABI').AsCurrency +
        FieldByName('GONGBU').AsCurrency +
        FieldByName('SILBI').AsCurrency +
        FieldByName('YONGYEUK').AsCurrency);

    end;


  /// 2013.02.06 국민은행 관련 추가 담보평가목적이 50번대가 아닌법인은 그 코드로 입력 바랍니다.
    //if (Pos('국민은행', tbl_gam_info.fieldByName('custpart').AsString) > 0) and (Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = '5') then
    if tbl0.FieldByName('Chk_Dambo').AsString = '3' then /// 2013.02.06 분류가 담보(개별절사)인 경우
    begin
    if (cxLabel21.Caption = '절사금액[자동]') then
        FieldByName('JELSA').AsCurrency := FieldByName('SUSU').AsCurrency -
          Trunc(FieldByName('SUSU').AsCurrency / 1000) * 1000;

     // FieldByName('SUSU').AsCurrency := FieldByName('SUSU').AsCurrency -
     //   FieldByName('JELSA').AsCurrency;
    end
    else
    begin
      if (cxLabel21.Caption = '절사금액[자동]') then
        FieldByName('JELSA').AsCurrency := FieldByName('SUSUSUM').AsCurrency -
          Trunc(FieldByName('SUSUSUM').AsCurrency / 1000) * 1000;

      FieldByName('SUSUSUM').AsCurrency := FieldByName('SUSUSUM').AsCurrency -
        FieldByName('JELSA').AsCurrency;
    end;


    //    if ( cxLabel19.Caption = '부가 가치세 [자동]' ) then
    if (tbl0.FieldByName('Chk_Tax').AsInteger = 1) then begin
      FieldByName('TAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);
    end;
    FieldByName('TOTAL').AsCurrency := FieldByName('SUSUSUM').AsCurrency +
      FieldByName('TAX').AsCurrency;
    FieldByName('BILL').AsCurrency := Trunc(FieldByName('TOTAL').AsCurrency -
      FieldByName('DEPOSIT').AsCurrency);



  /// 2013.02.06 국민은행 관련
   // if (Pos('국민은행', tbl_gam_info.fieldByName('custpart').AsString) > 0) and (Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = '5') then

    if tbl0.FieldByName('Chk_Dambo').AsString = '3' then /// 2013.02.06 분류가 
    //담보(개별절사)인 경우
    begin
      FieldByName('SUSUTAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);

      // 2014.03.14 특별용역비 부분이 빠져있다고 해서 수정 - 용역비가 들어있는 법인은 수정 안하셔도 됩니다.
      FieldByName('SILBISUM').AsCurrency := Trunc((FieldByName('YEBI').AsCurrency +
        FieldByName('MULJOSABI').AsCurrency +
        FieldByName('GONGBU').AsCurrency +
        FieldByName('SILBI').AsCurrency +
        FieldByName('YONGYEUK').AsCurrency) / 1000) * 1000;

      FieldByName('SILBITAX').AsCurrency := Trunc(FieldByName('SILBISUM').AsCurrency * 0.1);
      FieldByName('TAX').AsCurrency := Trunc(FieldByName('SUSUTAX').AsCurrency + FieldByName('SILBITAX').AsCurrency);

      SUSUJELSA := (Trunc((FieldByName('SUSU').AsCurrency / 1000)) * 1000);

      FieldByName('SUSUSUM').AsCurrency := Trunc(SUSUJELSA + FieldByName('SILBISUM').AsCurrency);

      /// 2013.02.06 국민은행 관련 - 절사부분 : 수수료의 절사 + 실비의 절사 합
      FieldByName('JELSA').AsCurrency :=
        (FieldByName('SUSU').AsCurrency - Trunc(FieldByName('SUSU').AsCurrency / 1000) * 1000) +
        ((FieldByName('YEBI').AsCurrency + FieldByName('MULJOSABI').AsCurrency + FieldByName('GONGBU').AsCurrency + FieldByName('SILBI').AsCurrency)
        - Trunc((FieldByName('YEBI').AsCurrency + FieldByName('MULJOSABI').AsCurrency + FieldByName('GONGBU').AsCurrency + FieldByName('SILBI').AsCurrency) / 1000) * 1000);

      FieldByName('TAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);

      FieldByName('TOTAL').AsCurrency := FieldByName('SUSUSUM').AsCurrency + FieldByName('TAX').AsCurrency;
      FieldByName('BILL').AsCurrency := Trunc(FieldByName('TOTAL').AsCurrency -
        FieldByName('DEPOSIT').AsCurrency);

    end
    else
    begin

  /// 2013.02.25 수수료부가세, 실비합, 실비합의 부가세를 국민은행일 경우만 계산하지 않고 모든건에 적용한다.

//      FieldByName('SUSUTAX').AsCurrency := 0;
//      FieldByName('SILBISUM').AsCurrency := 0;
//      FieldByName('SILBITAX').AsCurrency := 0;

      FieldByName('SUSUTAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);

      /// 2013.02.25 국민은행일 경우에는 토지조사비가 없어서 포함안했지만 모든건에 적용하기 위해 토지조사비, 특별용역비추가
      FieldByName('SILBISUM').AsCurrency := Trunc((FieldByName('YEBI').AsCurrency +
        FieldByName('TOJOSABI').AsCurrency +
        FieldByName('MULJOSABI').AsCurrency +
        FieldByName('GONGBU').AsCurrency +
        FieldByName('SILBI').AsCurrency +
        FieldByName('YONGYEUK').AsCurrency) / 1000) * 1000;
      FieldByName('SILBITAX').AsCurrency := Trunc(FieldByName('SILBISUM').AsCurrency * 0.1);

    end;


  end;
end;


procedure TXForm1.btn_totalClick(Sender: TObject);
begin
  Compute_susu;

  // 2013.02.12 맨 처음 자동계산시 종가제와 종량제가 맞지 않아서 추가
  if tbl_gam_info.FieldByName('SUSUSUM').AsCurrency <> tbl0.FieldByName('MixCharge').AsCurrency then
  begin
    Compute_susu;
  end;

  memo_Total_price; /// 2013.03.29 수수료 적요
  ///2017.01.31이일우 법원일때 여비 자동 입력
  if (radio_Mode.ItemIndex = 0) and (cmb_susuj.ItemIndex = 1) then
  begin
    if tbl_gam_info.FieldByName('YEBI').AsCurrency = 0 then
    begin
      if tbl_gam_info.FieldByName('Price').AsCurrency <= 200000000 then tbl_gam_info.FieldByName('YEBI').AsCurrency := 84000
      else  tbl_gam_info.FieldByName('YEBI').AsCurrency := 168000;


    end;
  end;

end;

procedure TXForm1.cxButton2Click(Sender: TObject);
begin
  OpenTrips;
end;

procedure TXForm1.OpenTrips;
var
  MasterID : String;
begin
  MasterID := tbl_gam_info.fieldByName('MasterID').AsString;
  if not assigned(tripsfrm) then begin
    tripsfrm := Ttripsfrm.Create(Self);
  end;
  if MasterID = '' then begin
    showmessage('접수번호가 존재하질않습니다.');
  end else begin
    tripsfrm.trips_list(StrtoInt(MasterID));
    tripsfrm.ShowModal;
  end;
end;

procedure TXForm1.OpenAcount;
var
  OfficeID : String;
begin
  OfficeID := UserInfo.Office;
  if not assigned(Acountfrm) then begin
    Acountfrm := TAcountfrm.Create(Self);
  end;
  if OfficeID = '' then begin
    showmessage('본지사코드가 존재하지않습니다.');
  end else begin
    Acountfrm.Acount_list(OfficeID);
    Acountfrm.ShowModal;
  end;
end;

procedure TXForm1.chk_Mode;
begin
// 나현찬 수정 

  if radio_Mode.ItemIndex = 0 then begin
    f_Price10.Enabled     := False;
    f_Price15.Enabled     := False;
    f_SUSU.Enabled        := False;
    f_SUSUSUM.Enabled     := False;
    f_TOTAL.Enabled       := False;
    f_BILL.Enabled        := False;
    btn_backward.Enabled  := False;
    f_price0.Enabled           := False;
    f_price1.Enabled           := False;
    f_price0_1.Enabled  := False;
    f_price1_1.Enabled  := False;
    f_price.Enabled            := False;
    f_price2.Enabled           := False;
    f_Price20.Enabled          := False;

    Chk_Sale_chk.Checked := False;

  end

  else begin

        f_Price10.Enabled     := True;
        f_Price15.Enabled     := True;
        f_SUSU.Enabled        := True;
        f_SUSUSUM.Enabled     := True;
        f_TOTAL.Enabled       := True;
        f_BILL.Enabled        := True;
        btn_backward.Enabled  := True;
        f_price0.Enabled           := True;
        f_price1.Enabled           := True;
        f_price0_1.Enabled  := True;
        f_price1_1.Enabled  := True;
        f_price.Enabled            := False;
        f_price2.Enabled           := True;
        f_Price20.Enabled          := True;

         Chk_Sale_chk.Checked := true;
     

  end;

   // 나현찬
{ if (userinfo.UID =81) or (userinfo.UID =77) or (userinfo.UID =83) then
    begin
       if radio_Mode.ItemIndex = 1 then
         begin
            f_Price10.Enabled     := True;
        f_Price15.Enabled     := True;
        f_SUSU.Enabled        := True;
        f_SUSUSUM.Enabled     := True;
        f_TOTAL.Enabled       := True;
        f_BILL.Enabled        := True;
        btn_backward.Enabled  := True;
        f_price0.Enabled           := True;
        f_price1.Enabled           := True;
        f_price0_1.Enabled  := True;
        f_price1_1.Enabled  := True;
        f_price.Enabled            := False;
        f_price2.Enabled           := True;
        f_Price20.Enabled          := True;

         Chk_Sale_chk.Checked := true;

         end;

    end;  }



  if cmb_susuj.ItemIndex = 1 then
  begin
//       subprint_yn.ItemIndex := 0;
    //    subprint_yn.Enabled := False;

    if not (tbl0.State in [dsEdit, dsInsert]) then
      tbl0.Edit;

    if (edit_rate.Text <> '1.0') then begin
      tbl0.FieldByName('SusuRate').AsString := '1.0';
    end;
  end
  else begin
    //subprint_yn.Enabled := True;  이일우 주석
      if Not(tbl0.State in [dsEdit, dsInsert]) then
        tbl0.Edit;
    //이일우 주석  tbl0.FieldByName('Add_doc').AsString := '2';
  end;

  if subprint_yn.ItemIndex = 0 then begin
    cSParam.Values['detail_yn'] := 'Y';
  end else begin
    cSParam.Values['detail_yn'] := 'N';
  end;

end;

procedure TXForm1.radio_ModeClick(Sender: TObject);
begin
   chk_Mode;
end;


procedure TXForm1.btn_susu_computeClick(Sender: TObject);
begin
  //수수료계산버튼
  if Chk_Sale_chk.Checked then begin
    Application.MessageBox(pchar('수수료 수기입력모드이므로, 자동수수료계산기능을 지원하지 않습니다.' + #13 + '수수료를 수기입력하실수 있습니다.'), '정보', MB_OK);
    Exit;
  end;
  ///2012.10.11 보상일경우 전체계산 태움.아니면 기존 로직.
  if FBolCompensation then
    Compute_susu
  else
    Compute_susu_Sub;

  memo_Total_price; /// 2013.03.29 수수료 적요
end;

procedure TXform1.Compute_backward;
begin
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Edit;

 with (tbl_gam_info) do begin
    FieldByname('TOTAL').AsCurrency := Trunc(FieldByName('BILL').AsCurrency +
      FieldByName('DEPOSIT').AsCurrency);
    FieldByName('TAX').AsCurrency := Trunc(FieldByName('TOTAL').AsCurrency * (1 / 11));
    FieldByName('SUSUSUM').AsCurrency := Trunc(FieldByName('TOTAL').AsCurrency -
      FieldByName('TAX').AsCurrency);
    FieldByName('SUSU').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency -
      FieldByName('YEBI').AsCurrency
      - FieldByName('MULJOSABI').AsCurrency
      - FieldByName('GONGBU').AsCurrency
      - FieldByName('SILBI').AsCurrency
      - FieldByName('YONGYEUK').AsCurrency);
  end;
end;

procedure TXForm1.sbtn_other_computeClick(Sender: TObject);
begin
  //합계계산버튼
  Compute_Sum_sub;
 //종량제 관련 합산.
// 나현찬 협회 시작
   if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
  begin
    Sum_VolumeChargeFromObject;
  end
  else Clear_VolumeCharge;
// 나현찬 협회 끝
end;

procedure TXForm1.btn_backwardClick(Sender: TObject);
begin
  Compute_backward;
end;

procedure TXForm1.memo_Total_price;
begin
  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  tbl0.FieldByName('area1').AsString  := '';

  memo_10_Price;
  memo_15_Price;

//  tbl0.FieldByName('area1').AsString  :=  tbl0.FieldByName('area1').AsString +#13+
//    GetSusuText(tbl_gam_info.fieldByName('price').AsCurrency,tbl_gam_info.fieldByName('SUSU').AsCurrency);
end;

procedure TXForm1.memo_10_Price;
var
  is_Auction: string; //경매건 여부
  Commission_receiptdate: string; //경매적용을 위한 접수일자변수
  Commission_APT: string; //경매적용을 위한 아파트여부변수
begin
  tbl0.FieldByName('area2').AsString := '';

  if tbl_gam_info.FieldByName('price0').AsCurrency < 1 then // 평가액이 0라면
    Exit;

  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  if tbl_gam_info.FieldByName('price1').AsCurrency > 0 then begin

    if gs_yn.ItemIndex = 0 then begin
    // 기준금액이 감정평가액이라면
      /// 2013.04.18 수수료평가기준금액으로 변경
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName(
      //'Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency

      /// 2013.04.19 종량제와 종가제 분기
      if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill10Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));

        tbl0.FieldByName('area2').AsString :=
          GetSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill10Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));
      end else
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));

        tbl0.FieldByName('area2').AsString :=
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));
      end;
    end
    else begin // 기준금액이 개별지가액이라면
      tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
        GetSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price0_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text));

      tbl0.FieldByName('area2').AsString :=
        GetSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price0_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text));
    end;
  end
  else begin
    if cmb_susuj.ItemIndex = 1 then
      is_Auction := 'Yes'
    else
      is_Auction := 'No';

    Commission_receiptdate := Trim(tbl_gam_info.FieldByName('receiptdate').AsString);
    Commission_receiptdate := User_Remove_char(Commission_receiptdate, '-');
    if Length(Commission_receiptdate) <> 8 then
      Commission_receiptdate := '-';

    Commission_APT := 'No';
    if (Trim(tbl_gam_info.FieldByName('category').AsString) = '아파트') then
      Commission_APT := 'Yes';

    if gs_yn.ItemIndex = 0 then begin
      // 기준금액이 감정평가액이라면
      /// 2013.04.18 수수료평가기준금액으로 변경
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName('Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency

/// 2013.04.19 종량제와 종가제 분기
      if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSingleSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill10Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('SUSU').AsCurrency,
          '10', strtofloat(edit_rate.Text), strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);

        tbl0.FieldByName('area2').AsString :=
          GetSingleSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill10Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);
      end else
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('SUSU').AsCurrency,
          '10', strtofloat(edit_rate.Text), strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);

        tbl0.FieldByName('area2').AsString :=
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);
      end;
    end
    else begin // 기준금액이 개별지가액이라면
      tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
        GetSingleSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price0_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text)
        , is_Auction, Commission_receiptdate, Commission_APT);

      tbl0.FieldByName('area2').AsString :=
        GetSingleSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price0_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text)
        , is_Auction, Commission_receiptdate, Commission_APT);
    end;
  end;
end;

procedure TXForm1.memo_15_Price;
var
  is_Auction: string; //경매건 여부
  Commission_receiptdate: string; //경매적용을 위한 접수일자변수
  Commission_APT: string; //경매적용을 위한 아파트여부변수
begin
  tbl0.FieldByName('area3').AsString := '';

  if tbl_gam_info.FieldByName('price1').AsCurrency < 1 then // 평가액이 0라면
    Exit;

  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

 if tbl_gam_info.FieldByName('price0').AsCurrency > 0 then begin
    // 1.0과 1.5가 혼용되어 있다면
    if gs_yn.ItemIndex = 0 then begin
      // 기준금액이 감정평가액이라면
      /// 2013.04.18 수수료평가기준금액으로 변경
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName('Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency
      /// 2013.04.19 종량제와 종가제 분기
      if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));

        tbl0.FieldByName('area3').AsString :=
          GetSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));
      end else
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));

        tbl0.FieldByName('area3').AsString :=
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));
      end;
    end
    else begin // 기준금액이 개별지가액이라면
      tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
        GetSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text));

      tbl0.FieldByName('area3').AsString :=
        GetSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text));
    end;
  end
  else begin
    if cmb_susuj.ItemIndex = 1 then
      is_Auction := 'Yes'
    else
      is_Auction := 'No';

    Commission_receiptdate := Trim(tbl_gam_info.FieldByName('receiptdate').AsString);
    Commission_receiptdate := User_Remove_char(Commission_receiptdate, '-');
    if Length(Commission_receiptdate) <> 8 then
      Commission_receiptdate := '-';

    Commission_APT := 'No';
    if (Trim(tbl_gam_info.FieldByName('category').AsString) = '아파트') then
      Commission_APT := 'Yes';

    if gs_yn.ItemIndex = 0 then begin
      // 기준금액이 감정평가액이라면
      /// 2013.04.18 수수료평가기준금액으로 변경
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName('Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency
      /// 2013.04.19 종량제와 종가제 분기
      if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSingleSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);

        tbl0.FieldByName('area3').AsString :=
          GetSingleSusuText(tbl0.fieldByName('Bill10Price').AsCurrency + /// 2013.04.18 tbl_gam_info.fieldByName('Price0').AsCurrency +
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl0.fieldByName('Bill15Price').AsCurrency, /// 2013.04.18 tbl_gam_info.fieldByName('Price1').AsCurrency,
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);
      end else
      begin
        tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);

        tbl0.FieldByName('area3').AsString :=
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 수정
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);
      end;
    end
    else begin // 기준금액이 개별지가액이라면
      tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString + #13 +
        GetSingleSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text)
        , is_Auction, Commission_receiptdate, Commission_APT);

      tbl0.FieldByName('area3').AsString :=
        GetSingleSusuText(tbl_gam_info.fieldByName('Price0_1').AsCurrency +
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price1_1').AsCurrency,
        tbl_gam_info.fieldByName('Price00').AsCurrency,
        tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
        strtofloat(edit_DC.Text)
        , is_Auction, Commission_receiptdate, Commission_APT);
    end;
  end;
end;

procedure TXForm1.cxButton6Click(Sender: TObject);
begin
  memo_Total_price;
end;

procedure TXForm1.cxButton7Click(Sender: TObject);
begin
  memo_10_Price;
end;

procedure TXForm1.cxButton8Click(Sender: TObject);
begin
  memo_15_Price;
end;

procedure TXForm1.f_MULJOSABI_countPropertiesEditValueChanged( Sender: TObject);
begin
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Edit;

  if IsNumberOnly(f_MULJOSABI_count.Text) then begin
    tbl_gam_info.FieldByName('MULJOSABI').AsCurrency := 3000 * StrtoInt(f_MULJOSABI_count.Text);
  end;
end;

procedure TXForm1.cxButton1Click(Sender: TObject);
begin
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Edit;

  OpenAcount;
end;

procedure TXForm1.cmb_susujPropertiesChange(Sender: TObject);
begin
  chk_Mode;
  Compute_susu;
  DomakeParam;
end;

procedure TXForm1.radio_ModePropertiesChange(Sender: TObject);
begin
  chk_Mode;
  DomakeParam;

  if Not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  if subprint_yn.ItemIndex = 0 then
    tbl0.FieldByName('Chk_prn_detail').AsBoolean := True
  else
    tbl0.FieldByName('Chk_prn_detail').AsBoolean := False;
end;

procedure TXForm1.f_TOJOSABI_countPropertiesEditValueChanged(
  Sender: TObject);
begin
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Edit;

/// 2013.01.02 토지조사비 15000 --> 10000

  if IsNumberOnly(f_TOJOSABI_count.Text) then begin
    /// 2013.01.10 종가제(15000)와 종량제(10000)일때 토지조사비 변경
    if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      tbl_gam_info.FieldByName('TOJOSABI').AsCurrency := 10000 * StrtoInt(f_TOJOSABI_count.Text)
    else if tbl0.FieldByName('ChargeGubun').AsString <> 'V'  then
      
    else
      tbl_gam_info.FieldByName('TOJOSABI').AsCurrency := 15000 * StrtoInt(f_TOJOSABI_count.Text);
  end;
end;

procedure TXForm1.cxLabel21Click(Sender: TObject);
begin
  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  if ( cxLabel21.Caption = '절사금액[자동]' ) then
  begin
    tbl0.FieldByName('Chk_His').AsString := '0';
    cxLabel21.Caption := '절사금액[수동]';
  end
  else begin
    tbl0.FieldByName('Chk_His').AsString := '1';
    cxLabel21.Caption := '절사금액[자동]';
//    f_price0Exit(Sender);
  end;
end;

procedure TXForm1.Field_AlterProc(gTableNme, Str_Field: string);
begin
  with Qryexec do begin
    Close;
    SQL.Clear;
    SQL.Text := 'ALTER TABLE  ' + gTableNme + ' ADD (' + Str_Field + ' )';
    ExecSQL;
    Close;
  end;
end;

procedure TXForm1.f_Price10Exit(Sender: TObject);
begin
  /// 2013.04.03 수동일때는 빠져나감
  if tbl0.FieldByName('Chk_Auto').AsInteger = 1 then // 수동
    exit;

   if Chk_Sale_chk.Checked then begin
    try
      if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
        tbl_gam_info.Edit;
//
      tbl_gam_info.FieldByName('SUSU').AsCurrency :=
        Trunc(tbl_gam_info.FieldByName('Price10').AsCurrency +
        tbl_gam_info.FieldByName('Price15').AsCurrency +
        tbl_gam_info.FieldByName('Price20').AsCurrency);

    except
      ;
    end;
  end;

  //Compute_susu;
end;

procedure TXForm1.cmb_susujClick(Sender: TObject);
begin

  /// 2013.02.13 국민은행 - 2013년 2월 15일부터 적용가능하게 함
  if (Now < StrToDateTime('2013-02-15')) and (cmb_susuj.ItemIndex = 2) then
  begin
    Showmessage('국민은행과 2월 15일 발송데이타 부터 적용하기로 하여 15일부터 선택가능합니다.');
    cmb_susuj.ItemIndex := 0;
    Exit;
  end;

  chk_Mode;


  /// 2013.02.26 분류변경시 수수료 자동계산
  Compute_susu;

end;

procedure TXForm1.RzBitBtn5Click(Sender: TObject);
begin
  Hint_Panel.Left := 98;
  Hint_Panel.Top := 115;
  Hint_Panel.Visible := not Hint_Panel.Visible;
end;

procedure TXForm1.Chk_Sale_chkClick(Sender: TObject);
begin
  if ( Chk_Sale_chk.Checked and (radio_Mode.ItemIndex = 0) ) then
  begin
    Application.MessageBox(pchar('집계옵션이 자동일때는 수수료를 수기입력하실 수 없습니다.' + #13 + '집계옵션을 수동으로 선택하시고 다시 시도하세요.'), '정보', MB_OK);
    Chk_Sale_chk.Checked := False;
  end;
end;

procedure TXForm1.cxLabel19Click(Sender: TObject);
begin
  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  if ( cxLabel19.Caption = '부가가치세[자동]' ) then
  begin
    tbl0.FieldByName('Chk_Tax').AsString := '0';
    cxLabel19.Caption := '부가가치세[수동]';
  end
  else begin
    tbl0.FieldByName('Chk_Tax').AsString := '1';
    cxLabel19.Caption := '부가가치세[자동]';
//    f_price0Exit(Sender);
  end;
end;

procedure TXForm1.cxLabel35Click(Sender: TObject);
begin
  if cmb_susuj.ItemIndex = 1 then
    begin
    Application.MessageBox(pchar('경매물건에 대해서는 적용요율을 변경하실수 없습니다.'), '정보', MB_OK);
    exit;
    end;


  if Not(tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '0.9';
end;

procedure TXForm1.cxLabel36Click(Sender: TObject);
begin
  //// 나 현찬 추가
{   if (userinfo.Office = '10') and (copy(tbl_gam_info.FieldByName(
    'doc_id').AsString,9,1) <> '2' )  then
    begin
      Application.MessageBox(pchar('변경하실수 없습니다. 경리팀에 문의하세요.'), '정보', MB_OK);
    exit;
    end;

   }

  if Not(tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '1.0';
end;

procedure TXForm1.cxLabel39Click(Sender: TObject);
begin
  if cmb_susuj.ItemIndex = 1 then
    begin
    Application.MessageBox(pchar('경매물건에 대해서는 적용요율을 변경하실수 없습니다.'), '정보', MB_OK);
    exit;
    end;

  if Not(tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '1.1';
end;

procedure TXForm1.edit_DCExit(Sender: TObject);
var
  TRate : Real;
  begin
  Try
    TRate := strtofloat(edit_DC.text);
  Except
    Application.MessageBox(pchar('할인할증률의 입력이 잘못되었습니다.'), '정보', MB_OK);
    edit_DC.SetFocus;
  End;

   //// 나 현찬 추가
  {if (userinfo.Office = '10') and (copy(tbl_gam_info.FieldByName('doc_id').AsString,9,1) <> '2' ) and  (edit_dc.Text <> '1.0')  then
    begin
      Application.MessageBox(pchar('변경하실수 없습니다. 경리팀에 문의하세요.'), '정보', MB_OK);
      edit_dc.Text := '1.0' ;

      exit;
    end;
     }

  end;

procedure TXForm1.cxLabel9Click(Sender: TObject);
begin
 //나현찬 주석  Screen.Cursor := crHourGlass;
//나현찬 주석   try
  //착수금 갱신하기
 {나현찬 주석   DepositQry.Close;
    DepositQry.QueryService := 'AlMighty';
    DepositQry.FieldDefs.Clear;
    DepositQry.Query.Text := 'Exec SP_S_APW_MasterEx 1,:docid';
    DepositQry.ParamByName['docid'].AsString := tbl_gam_info.FieldByName('doc_id').AsString;
    DepositQry.Open; }

 { DepositQry.Close;

  DepositQry.ParamByName['docid'].AsString := tbl_gam_info.FieldByName('doc_id').AsString;
  DepositQry.Open;
                   }
 {나현찬 주석  if Not(tbl_gam_info.State in [dsEdit, dsInsert]) then
    tbl_gam_info.Edit;
  tbl_gam_info.FieldByName('DEPOSIT').AsInteger := StrToIntDef(DepositQry.FieldByName('선수금').AsString,0);
  except
  end;
  Compute_Sum_sub;

  Screen.Cursor := crArrow; }
end;

procedure TXForm1.CheckBox1Click(Sender: TObject);
begin
  if  CheckBox1.Checked then begin
      bCheck := true;
  end else begin
      bCheck := false;
  end;
end;






procedure TXForm1.susu8Click(Sender: TObject);
begin
 if cmb_susuj.ItemIndex = 1 then begin
    Application.MessageBox(pchar('경매물건에 대해서는 적용요율을 변경하실수 없습니다.'), '정보',
      MB_OK);
    exit;
  end;

  if not (tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '0.8';
end;

procedure TXForm1.susu12Click(Sender: TObject);
begin
  if cmb_susuj.ItemIndex = 1 then
    begin
    Application.MessageBox(pchar('경매물건에 대해서는 적용요율을 변경하실수 없습니다.'), '정보', MB_OK);
    exit;
    end;

  if Not(tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '1.2';
end;

procedure TXForm1.rdbChargeGubunClick(Sender: TObject);
begin
 rdbChargeGubun.PostEditValue; /// 2013.1.23 대한감정 서정길 추가 - 체크해도 바로 값이 바뀌지 않아서



  ///2012.09.27 변경. 시작...
  if not FBolCompensation then
  begin
    //ShowMessage('보상 건이 아닌 경우 선택하실 필요가 없습니다.');
    Clear_VolumeCharge;
    tbl0.FieldByName('ChargeGubun').AsString := '';
  end;
  ///2012.09.27 변경. 끝....

  ///2012.10.31 수정
  with tbl_gam_info do
  begin
    if state in [dsinsert, dsedit] then edit;
     FieldByName('ChargeGubun').AsString := tbl0.FieldByName('ChargeGubun').AsString;
  end;
  ///2012.10.31

  ///2012-09-13 종량제 자동계산 추가.시작.
  btn_totalClick(nil);
  ///2012-09-13 종량제 자동계산 추가.끝.
  pnlVolume.Visible := (rdbChargeGubun.ItemIndex = 0);
end;

///2012-09-13 종량제 프로시져 변경. 시작.

procedure TXForm1.Compute_VolumeCharge;
var //토지건물평가금액//토지종량할인금액//수목종량할인금액
  curOnlyPrice, curLandBuild, curDiscountLand, curDiscountTree: Currency;
  strMemo: string;
begin

  with tbl0 do begin
    if not (state in [dsInsert, dsEdit]) then
      Edit;

    /// 종가 70% 로직 시작 -----------------
    //토지건물평가금액
    curLandBuild := 0;
    curLandBuild := FieldByName('LandPrice').AsCurrency
      + FieldByName('BuildPrice').AsCurrency;
    //영업권 외 평가금액
    ///2012.09.17 설명. price는 이미 gs_yn 구분에 따라 들어온 금액입니다.
    ///2012.10.17 협회프로그램은 종가평가총액에 영업권을 더합니다.따라서 ,
    ///영업권 제외한 평가금액 총액을 가리키는 curOnlyPrice 변수는 법인관리패턴에 맞게 적용하세요.
//    curOnlyPrice := tbl_gam_info.FieldByName('Price').AsCurrency -
//      tbl_gam_info.FieldByName('Price2').AsCurrency;

    curOnlyPrice := FieldByName('BillPrice').AsCurrency; /// 2013.03.29 curOnlyPrice 변경

    ///2012.09.17. 변경.Price00은. 1.0/1.5수수료 계산 이전 순수수수료 이므로 susu-영업수수료로 변경-----시작
    if curOnlyPrice > 0 then
    begin
      //토지건물 외 종가 수수료 100% = ( 전체수수료 * 기타(토지건물외)평가금액의 비율 ) + 영업권수수료
      /// 2013.02.06 토지건물외 종가수수료 100%에는 영업권수수료를 뺀다

      /// 2013.03.29 감정평가액인지, 개별지가액인지에 따라 토지건물종가수수료 70%를 분기하려 했으나
      /// 2013.03.29 curLandBuild와 curOnlyPrice를 가져올때 분기해서 가져왔으므로 분기하려던 기존소스는 정리

      /// 2013.03.29  토지건물종가수수료(70%) = 수수료(영업권제외) * (토지건물평가금액/평가금액) * 0.7
      FieldByName('ChargePartial').AsCurrency :=
        Trunc((tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency) //Price00 빼고 변경.
        * (curLandBuild / curOnlyPrice)
        * 0.7);

      // 2013.03.29 토지건물종가수수료(70%) 적요 -- 2012.10.17 적요 수정.
      if FieldByName('ChargePartial').AsCurrency > 0 then
        FieldByName('area9').AsString := FormatCurr('#,##0',
          (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) //Price00 빼고 변경.
          + 'x' + '(' + FormatCurr('#,##0', curLandBuild) + '/' + FormatCurr('#,##0', curOnlyPrice) + ')'
          + 'x' + '0.7'
          + #13 + '≒' + FormatCurr('#,##0', FieldByName('ChargePartial').AsCurrency)
      else FieldByName('area9').AsString := '토지건물 없음.';


      /// 2013.03.29 토지건물 외 종가 수수료 100%
      FieldByName('ChargeRest').AsCurrency := Trunc(
        (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency) //Price00 빼고 변경.
        * ((curOnlyPrice - curLandBuild) / curOnlyPrice
        ))
       /// 2013.02.19 chargerest에 영업권 다시 추가
      + tbl_gam_info.FieldByName('Price20').AsCurrency;

        /// 2013.03.29 토지건물 외 종가 수수료 100% -- 2012.10.17적요 수정.
      if FieldByName('ChargeRest').AsCurrency > 0 then
        FieldByName('area13').AsString :=
          FormatCurr('#,##0', (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) ////Price00 빼고 변경.
          + 'x((' + FormatCurr('#,##0', curOnlyPrice)
          + '-' + FormatCurr('#,##0', curLandBuild) + ')/' + FormatCurr('#,##0', curOnlyPrice)
          + ')'
          /// 2013.02.19 chargerest에 영업권 다시 추가
        + '+' + FormatCurr('#,##0', tbl_gam_info.FieldByName('Price20').AsCurrency)
          + #13 + '≒' + FormatCurr('#,##0', FieldByName('ChargeRest').AsCurrency)
      else FieldByName('area13').AsString := '토지건물외 물건없음.';

//      end else
//      begin // 개별지가액일 경우
//
//      // 2013.02.06 - 토지건물종가수수료(70%) (국토부 협의후 배포예정) = 수수료(영업권제외) * ((개별1.0+개별1.5)+(건물평가액) / ((개별1.0+개별1.5)+(건물평가액)+(지장물평가액(수목, 구축물, 이전비, 기타 합))) * 0.7
//        FieldByName('ChargePartial').AsCurrency :=
//          Trunc(
//          ((tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency) //Price00 빼고 변경.
//          *
//          (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency) / (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency + tbl0.FieldByName('TreePrice').AsCurrency + tbl0.FieldByName('StructurePrice').AsCurrency + tbl0.FieldByName('MoveFeePrice').AsCurrency + tbl0.FieldByName('EtcPrice').AsCurrency))
//          * 0.7);
//
//      /// 2013.02.06 토지건물종가수수료(70%) 적요 -- 적요 수정 (국토부 협의후 배포예정)
//        if FieldByName('ChargePartial').AsCurrency > 0 then
//          FieldByName('area9').AsString := FormatCurr('#,##0',
//            (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) //Price00 빼고 변경.
//            + 'x' + '(' + FormatCurr('#,##0', (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency)) + '/'
//            + FormatCurr('#,##0', (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency + tbl0.FieldByName('TreePrice').AsCurrency + tbl0.FieldByName('StructurePrice').AsCurrency + tbl0.FieldByName('MoveFeePrice').AsCurrency + tbl0.FieldByName('EtcPrice').AsCurrency)) + ')'
//            + 'x' + '0.7'
//            + #13 + '≒' + FormatCurr('#,##0', FieldByName('ChargePartial').AsCurrency)
//        else FieldByName('area9').AsString := '토지건물 없음.'
//
//
//      ///토지건물 외 종가 수수료 100% 
//          if FieldByName('ChargeRest').AsCurrency > 0 then
//            FieldByName('area13').AsString :=
//              FormatCurr('#,##0', (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) ////Price00 빼고 변경.
//              + 'x((' + FormatCurr('#,##0', curOnlyPrice)
//              + '-' + FormatCurr('#,##0', curLandBuild) + ')/' + FormatCurr('#,##0', curOnlyPrice)
//              + ')'
//          /// 2013.02.19 chargerest에 영업권 다시 추가
//            + '+' + FormatCurr('#,##0', tbl_gam_info.FieldByName('Price20').AsCurrency)
//              + #13 + '≒' + FormatCurr('#,##0', FieldByName('ChargeRest').AsCurrency)
//          else FieldByName('area13').AsString := '토지건물외 물건없음.';
//
//      end;

    end;
    /// 종가 70% 로직 끝. -----------------
    ///2012.09.17. 변경.Price00은. 1.0/1.5수수료 계산 이전 순수수수료 이므로 susu-영업수수료로 변경-----시작

    /// 종량 수수로 계산 시작..-----------------
    //토지 종량 할인 로직
    curDiscountLand :=
      Discount_VolumeLandCharge(FieldByName('LandVolumeCharge_Origin').AsCurrency,
      tbl_gam_info.FieldByName('PHILJI').AsInteger);
    //토지 기본수수료 로직 추가.
    if tbl_gam_info.FieldByName('PHILJI').AsInteger > 0 then
      FieldByName('LandVolumeCharge').AsCurrency := 100000 +
        FieldByName('LandVolumeCharge_Origin').AsCurrency - curDiscountLand
    else FieldByName('LandVolumeCharge').AsCurrency := 0;

    //건물 기본수수료 로직추가.
    if tbl_gam_info.FieldByName('MULGUNSU').AsInteger > 0 then
      FieldByName('BuildVolumeCharge').AsCurrency := 30000 +
        FieldByName('BuildVolumeCharge').AsCurrency
    else FieldByName('BuildVolumeCharge').AsCurrency := 0;


    //수목 종량 할인 로직
    curDiscountTree :=
      Discount_VolumeTreeCharge(FieldByName('TreeVolumeCharge_Origin').AsCurrency,
      FieldByName('TreeCnt').AsInteger);
    //수목 기본수수료 로직 추가.
    if FieldByName('TreeCnt').AsInteger > 0 then
      FieldByName('TreeVolumeCharge').AsCurrency := 1000 +
        FieldByName('TreeVolumeCharge_Origin').AsCurrency
        - curDiscountTree
    else FieldByName('TreeVolumeCharge').AsCurrency := 0;
    //구축물 기본수수료 로직 추가. ///2012.09.27 기본수수료 오타 15000 ->1500
    if FieldByName('StructureVolumeCharge').AsCurrency > 0 then
      FieldByName('StructureVolumeCharge').AsCurrency := 1500 + FieldByName('StructureVolumeCharge').AsCurrency;

    /// 2013.01.23 영업권
    FieldByName('BusinessVolumeCharge').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency;

    //종량 합
    FieldByName('VolumeCharge').AsCurrency :=
      FieldByName('LandVolumeCharge').AsCurrency
      + FieldByName('BuildVolumeCharge').AsCurrency;

      /// 2013.01.02 종량합에서 수목과 구축물, 이전비, 영업권 부분은 제외
//      + FieldByName('TreeVolumeCharge').AsCurrency
//      + FieldByName('MoveFeeVolumeCharge').AsCurrency
//      + FieldByName('StructureVolumeCharge').AsCurrency
//      + FieldByName('BusinessVolumeCharge').AsCurrency;
    //종량 30%
    FieldByName('VolumeChargePartial').AsCurrency :=
      Trunc((FieldByName('LandVolumeCharge').AsCurrency
      + FieldByName('BuildVolumeCharge').AsCurrency) * 0.3);
    //종량 30% 적요
    if FieldByName('VolumeChargePartial').AsCurrency = 0 then
      FieldByName('area12').AsString := '토지건물 없음.'
    else
    ///2012.10.17 적요 수정.
      FieldByName('area12').AsString := '(' + FormatCurr('#,##0',
        FieldByName('LandVolumeCharge').AsCurrency)
        + '+' + FormatCurr('#,##0', FieldByName('BuildVolumeCharge').AsCurrency) +
        ')x0.3'
        + #13 + '≒' + FormatCurr('#,##', FieldByName('VolumeChargePartial').AsCurrency);

    //토지 조사비
    FieldByName('ResearchLandVolumeCharge').AsCurrency := 10000 * tbl_gam_info.FieldByName('PHILJI').AsCurrency;


    //토지 조사비 적요
    if FieldByName('ResearchLandVolumeCharge').AsCurrency > 0 then
      FieldByName('area14').AsString := '10,000 × ' + FormatCurr('#,##', tbl_gam_info.FieldByName('PHILJI').AsCurrency)
        + ' = ' + FormatCurr('#,##', FieldByName('ResearchLandVolumeCharge').AsCurrency)
    else FieldByName('area14').AsString := '';
    //건물 조사비
    FieldByName('ResearchBuildVolumeCharge').AsCurrency := 3000 * tbl_gam_info.FieldByName('MULGUNSU').AsCurrency;
    //건물 조사비 적요    //////////////////////
   if FieldByName('ResearchBuildVolumeCharge').AsCurrency > 0 then
      FieldByName('area16').AsString := '3,000 × ' + FormatCurr('#,##', tbl_gam_info.FieldByName('MULGUNSU').AsCurrency)
        + ' = ' + FormatCurr('#,##', FieldByName('ResearchBuildVolumeCharge').AsCurrency)
    else FieldByName('area16').AsString := '';

    // 2014.03.04 수정 - 의뢰일자가 2014.03.07 이후 물건이면 새로운 수수료 루틴 적용
    if User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-') < '20140307' then
    begin

      /// 2013.01.10 수수료합 수정 - 영업권 추가
      //수수료 합 = 종가/종량 혼합 수수료 + 영업권 + 실비 등
      /// 2013.01.16 종가+종량수수료가 15만원이 안될경우 기본수수료 15만원으로 세팅하기 위해서 MIXCHARGE 부분 분기
      /// 2013.02.08 15만원 기준 비교시에는 에서는 영업권 삭제해서 비교
      if FieldByName('ChargePartial').AsCurrency + FieldByName('VolumeChargePartial').AsCurrency + FieldByName('ChargeRest').AsCurrency - tbl_gam_info.FieldByName('Price20').AsCurrency > 150000 then
      begin

        FieldByName('MixCharge').AsCurrency :=
          FieldByName('ChargePartial').AsCurrency
          + FieldByName('VolumeChargePartial').AsCurrency
          + FieldByName('ChargeRest').AsCurrency
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 수수료합 수정 - 영업권 추가
        /// 2013.01.16 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외
        /// 2013.02.06 영업권수수료 다시 추가
        /// 2013.02.19 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외 - 다시 수정
        //  + tbl_gam_info.FieldByName('Price20').AsCurrency
        + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end
      else begin

        FieldByName('MixCharge').AsCurrency :=
          150000 // 15만원 기본수수료
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 수수료합 수정 - 영업권 추가
        /// 2013.01.16 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외
        /// 2013.02.06 영업권수수료 다시 추가
        + tbl_gam_info.FieldByName('Price20').AsCurrency
          + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end;

    end else
    begin

      /// 2013.01.10 수수료합 수정 - 영업권 추가
      //수수료 합 = 종가/종량 혼합 수수료 + 영업권 + 실비 등
      /// 2014.03.04 종가+종량수수료가 20만원이 안될경우 기본수수료 20만원으로 세팅하기 위해서 MIXCHARGE 부분 분기
      /// 2014.03.04 20만원 기준 비교시에는 에서는 영업권 삭제해서 비교
      if FieldByName('ChargePartial').AsCurrency + FieldByName('VolumeChargePartial').AsCurrency + FieldByName('ChargeRest').AsCurrency - tbl_gam_info.FieldByName('Price20').AsCurrency > 200000 then
      begin

        FieldByName('MixCharge').AsCurrency :=
          FieldByName('ChargePartial').AsCurrency
          + FieldByName('VolumeChargePartial').AsCurrency
          + FieldByName('ChargeRest').AsCurrency
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 수수료합 수정 - 영업권 추가
        /// 2013.01.16 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외
        /// 2013.02.06 영업권수수료 다시 추가
        /// 2013.02.19 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외 - 다시 수정
        //  + tbl_gam_info.FieldByName('Price20').AsCurrency
        + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end
      else begin

        FieldByName('MixCharge').AsCurrency :=
          200000 // 20만원 기본수수료
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 수수료합 수정 - 영업권 추가
        /// 2013.01.16 영업권수수료는 CHARGEREST에 포함되므로 PRICE20은 제외
        /// 2013.02.06 영업권수수료 다시 추가
        + tbl_gam_info.FieldByName('Price20').AsCurrency
          + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end;

    end;

    //절사//부가가치세//총계
    FieldByName('MixChargeJELSA').AsCurrency := FieldByName('MixCharge').AsCurrency -
      Trunc(FieldByName('MixCharge').AsCurrency / 1000) * 1000;
    FieldByName('MixCharge').AsCurrency := FieldByName('MixCharge').AsCurrency -
      FieldByName('MixChargeJELSA').AsCurrency;
    FieldByName('MixChargeTAX').AsCurrency := Trunc(FieldByName('MixCharge').AsCurrency * 0.1);
    FieldByName('MixChargeTOTAL').AsCurrency := FieldByName('MixCharge').AsCurrency +
      FieldByName('MixChargeTAX').AsCurrency;
    //절사//부가가치세//총계 적요.
    strMemo := FormatCurr('#,##', FieldByName('ChargePartial').AsCurrency);

    if FieldByName('ChargeRest').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', FieldByName('ChargeRest').AsCurrency);

    if FieldByName('VolumeChargePartial').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', FieldByName('VolumeChargePartial').AsCurrency);

    /// 2013.02.06 영업권 적요 추가
    /// 2013.02.19 영업권 chargerest에 포함되므로 삭제
//    if FieldByName('BusinessVolumeCharge').AsCurrency > 0 then
//      strMemo := strMemo + '+' + FormatCurr('#,##',
//        FieldByName('BusinessVolumeCharge').AsCurrency);

///2012.10.08 적요에만 여비가 빠져서 처리함. 시작
    if tbl_gam_info.FieldByName('YEBI').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', tbl_gam_info.FieldByName('YEBI').AsCurrency);


    if FieldByName('ResearchLandVolumeCharge').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##',
        FieldByName('ResearchLandVolumeCharge').AsCurrency);

    if FieldByName('ResearchBuildVolumeCharge').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##',
        FieldByName('ResearchBuildVolumeCharge').AsCurrency);


///2012.10.08 적요에만 여비가 빠져서 처리함. 끝.
    if tbl_gam_info.FieldByName('GONGBU').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', tbl_gam_info.FieldByName('GONGBU').AsCurrency);

    if tbl_gam_info.FieldByName('SILBI').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', tbl_gam_info.FieldByName('SILBI').AsCurrency);
    if tbl_gam_info.FieldByName('YONGYEUK').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', tbl_gam_info.FieldByName('YONGYEUK').AsCurrency);
    if FieldByName('MixChargeJELSA').AsCurrency > 0 then
      strMemo := strMemo + '-' + FormatCurr('#,##', FieldByName('MixChargeJELSA').AsCurrency);
    if FieldByName('MixChargeTAX').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', FieldByName('MixChargeTAX').AsCurrency);
    if FieldByName('MixChargeTOTAL').AsCurrency > 0 then
      FieldByName('area15').AsString := strMemo
        + #13 + '=' + FormatCurr('#,##', FieldByName('MixChargeTOTAL').AsCurrency)
    else FieldByName('area15').AsString := '';
  end;

end;
///2012-09-13 종량제 프로시져 변경. 끝.


function TXForm1.Discount_VolumeLandCharge(LandVolume: Currency;
  LancCnt: Integer): Currency;
var
  curLandCharge, curDiscountPrice: Currency; //토지 총 수수료 //할인금액
  intLandCount, intRestCount: Integer; //토지 수//남은 토지수
  strFifth, strFourth, strThird, strSecond, strMemo: string;
begin
  curLandCharge := 0;
  curDiscountPrice := 0;
  intLandCount := LancCnt; //tbl_gam_info.FieldByName('PHILJI').AsInteger;
  intRestCount := intLandCount;
//  tbl0.FieldByName('area10').AsString := FormatCurr('#,##', LandVolume);///2012.10.11 아래에서 조기화 함.주석처리.
  strFifth := '';
  strFourth := '';
  strThird := '';
  strSecond := '';
  Result := 0;
  ///2012-09-13 종량제 변경. 초기값세팅.
  tbl0.FieldByName('area10').AsString := '';

  ///2012-09-13 종량제 변경.: 할인금액 없는 토지 적요.
 ///2012.10.11 적요 수정: +표시 추가. 할인금액 없음
  if LandVolume > 0 then
    tbl0.FieldByName('area10').AsString := '100,000+' + FormatCurr('#,##', LandVolume)
      + #13 + '=' + FormatCurr('#,##', 100000 + LandVolume) + '(할인금액없음)';

  if intLandCount < 21 then
    exit; //할인금액 없음.

  curLandCharge := LandVolume; //tbl0.FieldByName('LandVolumeCharge_origin').AsCurrency;

  if intRestCount > 500 then begin // 마.501필지부터
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 500) / intLandCount) * 0.4);
    strFifth := IntToStr((intRestCount - 500)) + '/' + IntToStr(intLandCount) + '* 0.4';
    intRestCount := 500;
  end;
  if intRestCount > 250 then begin // 라.251필지부터
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 250) / intLandCount) * 0.3);
    strFourth := IntToStr((intRestCount - 250)) + '/' + IntToStr(intLandCount) + '* 0.3';
    intRestCount := 250;
  end;
  if intRestCount > 150 then begin // 다.151필지부터
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 150) / intLandCount) * 0.2);
    strThird := IntToStr((intRestCount - 150)) + '/' + IntToStr(intLandCount) + '* 0.2';
    intRestCount := 150;
  end;
  if intRestCount > 20 then begin // 나.21필지부터
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 20) / intLandCount) * 0.1);
    strSecond := IntToStr((intRestCount - 20)) + '/' + IntToStr(intLandCount) + '* 0.1';
    intRestCount := 20;
  end;

  strMemo := strSecond;
  if strThird <> '' then strMemo := strMemo + '+' + strThird;
  if strFourth <> '' then strMemo := strMemo + '+' + strFourth;
  if strFifth <> '' then strMemo := strMemo + '+' + strFifth;

///2012.10.11. 적요 + 기호 있는지 확인함 해주세요.
  if LandVolume > 0 then
    tbl0.FieldByName('area10').AsString := '100,000+' + FormatCurr('#,##', LandVolume)
      + '-' + FormatCurr('#,##', LandVolume) + '*(' + strMemo
      + ')' + #13 + '≒' + FormatCurr('#,##', 100000 + curLandCharge - Trunc(curDiscountPrice));

  //절사
  Result := Trunc(curDiscountPrice);

end;

function TXForm1.Discount_VolumeTreeCharge(const TreeVolume: Currency;
  const TreeCnt: Integer): Currency;
var
  curTreeCharge, curDiscountPrice: Currency; //토지 총 수수료 //할인금액
  intTreeCount, intRestCount: Integer; //토지 수//남은 토지수
  strFirst, strFourth, strThird, strSecond, strMemo: string;
begin
  curTreeCharge := 0;
  curDiscountPrice := 0;
  intTreeCount := TreeCnt;
  intRestCount := intTreeCount;
 // tbl0.FieldByName('area11').AsString := FormatCurr('#,##', TreeVolume);
  strSecond := '';
  strFourth := '';
  strThird := '';
  strFirst := '';
  Result := 0;
  ///2012-09-13 종량제 초기화 추가.
  tbl0.FieldByName('area11').AsString := '';


  ///2012-09-13 종량제 : 할인금액 없는 토지 적요.
   if TreeVolume > 0 then
    tbl0.FieldByName('area11').AsString := '1,000+' + FormatCurr('#,##', TreeVolume)
      + #13 + '=' + FormatCurr('#,##', 1000 + TreeVolume) + '(할인금액없음)';

  if intTreeCount < 201 then
    exit; //할인금액 없음.

  curTreeCharge := TreeVolume;

  if intRestCount > 10000 then begin // 10000부터
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 10000) / intTreeCount) * 0.4);
    strFourth := IntToStr((intRestCount - 10000)) + '/' + IntToStr(intTreeCount) + '* 0.4';
    intRestCount := 10000;
  end;
  if intRestCount > 5000 then begin // 5000부터
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 5000) / intTreeCount) * 0.3);
    strThird := IntToStr((intRestCount - 5000)) + '/' + IntToStr(intTreeCount) + '* 0.3';
    intRestCount := 5000;
  end;
  if intRestCount > 500 then begin // 나.21필지부터
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 500) / intTreeCount) * 0.2);
    strSecond := IntToStr((intRestCount - 500)) + '/' + IntToStr(intTreeCount) + '* 0.2';
    intRestCount := 500;
  end;
  if intRestCount > 200 then begin // 마.501필지부터
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 200) / intTreeCount) * 0.1);
    strFirst := IntToStr((intRestCount - 200)) + '/' + IntToStr(intTreeCount) + '* 0.1';
    intRestCount := 200;
  end;

  strMemo := '';
  if strFirst <> '' then strMemo := strFirst;
  if strSecond <> '' then strMemo := strMemo + '+' + strSecond;
  if strThird <> '' then strMemo := strMemo + '+' + strThird;
  if strFourth <> '' then strMemo := strMemo + '+' + strFourth;

  ///2012-09-13 종량제 : 수목 적요.
  tbl0.FieldByName('area11').AsString := '1000+' + FormatCurr('#,##', TreeVolume)
    + '-' + FormatCurr('#,##', TreeVolume) + '*(' + strMemo
    + ')' + #13 + '≒' + FormatCurr('#,##', 1000 + curTreeCharge - Trunc(curDiscountPrice));
  //절사
  Result := Trunc(curDiscountPrice);

end;

 procedure TXForm1.btnVolumeAutoCalcClick(Sender: TObject);
begin
  if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
  begin
     ///2012.09.27 변경.시작.
    Compute_susu;
    //기존 로직 위 compute_susu 에 다 포함되어있으므로  주석처리
    //Sum_VolumeChargeFromObject;
    //Compute_VolumeCharge;
    ///2012.09.27 변경.끝.
  end
  else Clear_VolumeCharge;
end;


procedure TXFORM1.Clear_VolumeCharge;
begin
  with tbl0 do
  begin
    if not Active then
    exit;
      if FieldByName('ChargeGubun').AsString = 'V' then
        exit;
        if not (State in [dsEdit, dsInsert]) then
          tbl0.Edit;

          FieldByName('VolumeCharge').AsCurrency := 0;
          FieldByName('LandVolumeCharge').AsCurrency := 0;
          FieldByName('LandVolumeCharge_Origin').AsCurrency := 0;
          FieldByName('BuildVolumeCharge').AsCurrency := 0;
          FieldByName('TreeVolumeCharge').AsCurrency := 0;
          FieldByName('TreeVolumeCharge_Origin').AsCurrency := 0;
          FieldByName('StructureVolumeCharge').AsCurrency := 0;
          FieldByName('BusinessVolumeCharge').AsCurrency := 0;
          FieldByName('MoveFeeVolumeCharge').AsCurrency := 0;
          FieldByName('ChargePartial').AsCurrency := 0;
          FieldByName('VolumeChargePartial').AsCurrency := 0;
          FieldByName('ChargeRest').AsCurrency := 0;
          FieldByName('ResearchLandVolumeCharge').AsCurrency := 0;
          FieldByName('ResearchBuildVolumeCharge').AsCurrency := 0;
          FieldByName('ResearchLandVolumeCharge').AsCurrency := 0;
          FieldByName('MixCharge').AsCurrency := 0;
          FieldByName('MixChargeJELSA').AsCurrency := 0;
          FieldByName('MixChargeTAX').AsCurrency := 0;
          FieldByName('MixChargeTOTAL').AsCurrency := 0;

          FieldByName('area10').AsString := '';
          FieldByName('area11').AsString := '';
          FieldByName('area12').AsString := '';
          FieldByName('area13').AsString := '';
          FieldByName('area14').AsString := '';
          FieldByName('area15').AsString := '';
          FieldByName('area16').AsString := '';
      end;
  end;
procedure TXForm1.XFormShow(Sender: TObject);
var
  AKbmQuery: TkbmMWClientQuery;
//  I: Integer;
//  Kind : Integer;
begin
//  Kind := 0;
//    for I := 1 to Length(tbl_gam_info.FieldByName('custpart').AsString) do begin
//    if  (copy(tbl_gam_info.FieldByName('custpart').AsString,I,8) = '자산관리')  then
//     begin
//       Kind := 1;
//       Break;
//     end;
//     end;
   // 나현찬 추가 경매일때
   // 담보인데 수수료 청구서 경매로 끌어와 진다.
  ///2012.09.27 종량구분. gam_info있으면 가져옴. 시작....

  if (tbl0.Active) and (not (tbl0.state in [dsInsert, dsEdit])) then
    tbl0.Edit;

  if (tbl0.Active) and (tbl0.FindField('ChargeGubun') <> nil) //
    and (tbl_gam_info.Active) and (tbl_gam_info.FindField('ChargeGubun') <> nil) then
  begin
    tbl0.FieldByName('ChargeGubun').AsString := tbl_gam_info.FieldByName('ChargeGubun').AsString;
  end
  else
  begin ///2012-09-13 종량제 종량구분 서버에서 가져오기 로직 추가 시작
    ///통플 사용 법인은 조서쪽. IsVolumeCharge 로직과 동일하게. 법인 RDB로 바꿔 사용하세요. 이하는 KapaTMS용 로직입니다.
    AKbmQuery := TkbmMWClientQuery.Create(nil);
    try
      with AKbmQuery do begin
        if Active then close;
        TransportStreamFormat := cm.ApStreamFormat;
        SessionName := 'ApWorksClient';
        QueryService := 'AlMighty';
        QueryServiceVersion := '1.0';
        Query.Text := 'exec SP_S_APW_Bill :MASTERID';
        Params.ParamByName('MASTERID').AsInteger := tbl_gam_info.FieldByName('MASTERID').AsInteger;
        Open;

        if (FindField('ChargeGubun') <> nil) and (tbl0.Active) then
        begin
          if not (tbl0.state in [dsInsert, dsEdit]) then
            tbl0.Edit;
          tbl0.FieldByName('ChargeGubun').AsString := FieldByName('ChargeGubun').AsString;
        end;
      end;
    finally
      FreeAndNil(AKbmQuery);
    end;
  ///2012-09-13 종량제 종량구분 서버에서 가져오기 로직 추가 끝.
  end;
  ///2012.09.27 종량구분. gam_info있으면 가져옴. 끝.....

  pnlVolume.Visible := (rdbChargeGubun.ItemIndex = 0);

  ///2012.09.27 변경 component control 시작..
  rdbChargeGubun.Enabled := FBolCompensation;


  /// 2013.02.13 국민은행 관련 - 무조건 담보로 세팅하던 부분과 분류수정불가 부분을 주석처리
//  if (FBolCompensation) then tbl0.FieldByName('Chk_Dambo').AsInteger := 0; //무조건담보로 setting
//  cmb_susuj.Enabled := not FBolCompensation; // 분류 수정불가.

  ///2012.10.11 //디자인에 pnlCompensation 추가 후 txtLaw라벨 올려주시고 수수로기준금액 edit추가. 시작.
  ///2012.10.17 자동일때만 보이게.수정. txtLaw의 크기, 설명이 바뀌었고, 반짝거리게 했습니다.
  if (FBolCompensation) and (gs_yn.ItemIndex = 0) and (tbl0.FieldByName('Chk_Auto').AsInteger = 0) then
    txtLaw.Visible := true //2012.10.11 변경.//txtLaw.Visible := true
  else txtLaw.Visible := false; // txtLaw.Visible := false;
  ///2012.10.11 //디자인에 pnlCompensation 추가 후 txtLaw라벨 올려주시고 수수로기준금액 edit추가. 끝.

  /////// 2013.02.06 - 중토위, 국토청, 보상, 추천건일때
  if (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'LAN') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'TEM') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'OTH') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'CTS') then
  begin

  /// 2013.02.06 // 토지필지수 카운트
  /// 2013.02.19 // 필지수, 산식, 결과값 추가
    try
      with Qry_TCnt do
      begin
        if Active then close;
        Query.Text := 'exec APWORKS_LAND_KAPA_LAND_COUNT_SEL :Gubun_Code,:MASTERID';
        Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
        Params.ParamByName('MASTERID').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
        Open;

        tbl_gam_info.FieldByName('PHILJI').AsCurrency := FieldByName('tcnt').AsCurrency;
      end;
    except

    end;

  ///2013.01.02 // 지장물 건물수 카운트
  /// 2013.02.19 // 필지수, 산식, 결과값 추가
    try
      with Qry_BCnt do
      begin
        if Active then close;
        Query.Text := 'exec APWORKS_LAND_KAPA_OBJECTS_COUNT_SEL :Gubun_Code,:MASTERID';
        Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
        Params.ParamByName('MASTERID').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
        Open;
      end;
    except

    end;
  end else
  begin

  end;


    /// 2013.02.13 수수료청구서가 생성시 자동계산이 안된다고 하여 추가
  if tbl_gam_info.FieldByName('SUSU').AsCurrency = 0 then
  begin
    Compute_susu;
  end;
  //2013.07.18이일우 추가
   if (tbl_gam_info.FieldByName('purpose').AsString = '체납처분') then
    begin
     cmb_susuj.ItemIndex := 0;
    end     //////////////
//    else if (tbl_gam_info.FieldByName('Purposecode').AsString = '9C') or (tbl_gam_info.FieldByName('Purposecode').AsString = '9D') or
//           (tbl_gam_info.FieldByName('Purposecode').AsString = '9E') or (tbl_gam_info.FieldByName('Purposecode').AsString = '9F') or
//           (tbl_gam_info.FieldByName('Purposecode').AsString = '9G')   then
//    begin
//     cmb_susuj.ItemIndex := 0;
//    end
    else if (copy(tbl_gam_info.FieldByName('purpose').AsString,1,4) = '공매') then  begin
      cmb_susuj.ItemIndex := 0;
    end

    else if (tbl_gam_info.FieldByName('purpose').AsString = '경매') or  (copy(tbl_gam_info.FieldByName('doc_id').AsString,9,1) = '2' ) then  begin
      cmb_susuj.ItemIndex := 1;
    end


   /// 2013.02.13 국민은행 초기화 세팅 부분
  else if (Pos('국민은행', tbl_gam_info.fieldByName('custpart').AsString) > 0) and ((Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = '2') or (Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = 'A')) then
  begin
    cmb_susuj.ItemIndex := 2;
  end
  else cmb_susuj.ItemIndex := 0;
  if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then Compute_susu;
 // do_SetCombo;
  ///2013.09.06   이일우 수정 종량제 토지조사비 가져오기

  if (tbl0.FieldByName('ResearchLandVolumeCharge').AsInteger <> 0) and (tbl0.FindField('ChargeGubun') <> nil) and (tbl_gam_info.FindField('ChargeGubun').AsString ='V') then begin
    // ShowMessage('test');
     tbl_gam_info.FieldByName('TOJOSABI').AsInteger := tbl0.FieldByName(
       'ResearchLandVolumeCharge').AsInteger ;
     tbl_gam_info.FieldByName('MULJOSABI').AsInteger := tbl0.FieldByName(
       'ResearchBuildVolumeCharge').AsInteger ;
  end;
   if (UserInfo.Office = '16') or (UserInfo.Office = '23') or (UserInfo.Office = '10') then begin
  do_SetCombo;
  do_getsusudata;
  end
  else
  begin
    Panel2.Visible := False;
  end;
  //////////////////////////////////
  if (Pos('우리은행', tbl_gam_info.fieldByName('custpart').AsString) > 0) then
    begin

         Set_WooriBank;


    end;

    ///////////////////////////////////

end;


procedure TXForm1.Sum_VolumeChargeFromObject;
var
//  aLocalQry: TEasyQuery;///2012.10.05 주석처리. 멤버변수FLocalQry: TEasyQuery;로 올림
  bolExistsLand, bolExistsBuild: Boolean;
//  strLandTableName, strBuildTableName: string; ///2012-09-13 종량제 변수 추가.///2012.10.05 주석처리. 양식중복추가 가능으로 변경.
  DongCnt, LandTreeCnt: Integer;
  LandBuildPrice, TreePrice, StructurePrice, MoveFeePrice, EtcPrice,
    LandBuildVolumeCharge, TreeVolumeCharge, StructureVolumeCharge, BusinessVolumeCharge: Currency;
  ///2012.09.27 변수 추가.
  APublic10Price, APublic15Price, A10Price, A15Price: Currency;
begin

///2012.10.05 주석처리. 양식중복추가 가능으로 변경.및 주석처리

  bolExistsLand := false;
  bolExistsBuild := false;
  //ShowMessage('test');
  try
     with (FLocalQry) do begin // aLocalQry ->FLocalQry///2012.10.05
      Close;
      Sql.Clear;
      Sql.Add('select bd.table_name, B.sd_dllname from Binder B, Binder_detail bd ');
      Sql.Add('where B.code=bd.code ');
      //Sql.Add('and B.sd_flag=' + '16');
      Open;

      if Locate('table_name', 'pbs_land', [loPartialKey]) then
      begin
        bolExistsLand := true;
//        strLandTableName := FieldByName('table_name').AsString; ///2012.10.05 주석처리. 양식중복추가 가능으로 변경.및 주석처리
      end;

      if Locate('table_name', 'pbs_good', [loPartialKey]) then
      begin
        bolExistsBuild := true;

//        strBuildTableName := FieldByName('table_name').AsString;///2012.10.05 주석처리. 양식중복추가 가능으로 변경.및 주석처리
      end

    end;
  finally
//    FreeAndNil(aLocalQry);///2012.10.05 주석처리. form close 로 이동.
  end;

  if (not bolExistsLand) and (not bolExistsBuild) then
  begin
    ShowMessage('토지,물건 조서 양식. 둘 다 없어 계산이 불가능합니다.');
    Clear_VolumeCharge;
    Exit;
  end;

  ///2012.10.17. 자동일 때만 초기화 . 수동인 경운 입력된 금액수수료. 그대로 둠. 시작
  if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then // 자동.
  begin
    tbl_gam_info.FieldByName('price0').AsCurrency := 0;
    tbl_gam_info.FieldByName('price1').AsCurrency := 0;
    tbl_gam_info.FieldByName('price0_1').AsCurrency := 0;
    tbl_gam_info.FieldByName('price1_1').AsCurrency := 0;
    tbl_gam_info.FieldByName('price').AsCurrency := 0;
    tbl_gam_info.FieldByName('price2').AsCurrency := 0;
    ///2012.10.17 영업권 종가 수수료 조기화 로직 추가.
    tbl_gam_info.FieldByName('price20').AsCurrency := 0; ///2012.10.22 적용안하신 법인 있으신듯 합니다.확인해주세요. 영업권 금액이 계속 더해지시는 법인이요.
  end;
  ///2012.10.17. 자동일 때만 초기화 . 수동인 경운 입력된 금액수수료. 그대로 둠. 끝.

  if (not tbl0.Active) or (not tbl_gam_info.Active) then
  begin
    ShowMessage('데이터셋이 활성화 되지 못해 계산이 불가능합니다.');
    exit;
  end;

  if not (tbl0.state in [dsInsert, dsEdit]) or not (tbl_gam_info.state in [dsInsert, dsEdit]) then
  begin
    tbl0.edit;
    tbl_gam_info.edit;
  end;

  ///2012.10.11. 보상 수수료 기준 컬럼 초기화 시작
  tbl0.FieldByName('Bill15Price').AsCurrency := 0;
  tbl0.FieldByName('Bill10Price').AsCurrency := 0;
  tbl0.FieldByName('BillPrice').AsCurrency := 0;
  ///2012.10.11. 보상 수수료 기준 컬럼 초기화 끝.

  if bolExistsBuild then
  begin
    LandBuildPrice := 0;
    LandBuildVolumeCharge := 0;
    LandTreeCnt := 0; DongCnt := 0;
    TreePrice := 0; StructurePrice := 0; MoveFeePrice := 0; EtcPrice := 0; TreeVolumeCharge := 0; StructureVolumeCharge := 0;
    BusinessVolumeCharge := 0;
    ///2012.09.27 추가한 변수 기본값
    APublic10Price := 0; APublic15Price := 0; A10Price := 0; A15Price := 0;

    SumVolumeChargeForBuild(LandBuildPrice, LandBuildVolumeCharge, DongCnt, LandTreeCnt, TreePrice, StructurePrice, MoveFeePrice, EtcPrice, TreeVolumeCharge,
      StructureVolumeCharge, ///2012-09-13 종량제. 이전비 MoveFeeVolumeCharge 삭제.
      BusinessVolumeCharge, //strBuildTableName ,///2012.10.05 주석처리. 양식중복추가 가능으로 변경.및 주석처리
      ///2012.09.27 변수 추가.
      APublic10Price, A10Price, A15Price);

   /////////////////////이일우 2013.04.05
    ///2012.10.17. 자동일 때만. 합산되도록.수정.
    if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then // 자동.
    begin
      tbl_gam_info.FieldByName('price0').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency + A10Price;
      tbl_gam_info.FieldByName('price1').AsCurrency := tbl_gam_info.FieldByName('price1').AsCurrency + A15Price;
      ///2012.10.22 ///개별지가 기준금액에 물건 1.0/1.5 평가금액 더해달라는 요청으로 보완.시작.
      tbl_gam_info.FieldByName('price0_1').AsCurrency := tbl_gam_info.FieldByName('price0_1').AsCurrency + A10Price;
      tbl_gam_info.FieldByName('price1_1').AsCurrency := tbl_gam_info.FieldByName('price1_1').AsCurrency + A15Price;
      ///2012.10.22 ///개별지가 기준금액에 물건 1.0/1.5 평가금액 더해달라는 요청으로 보완.끝.
      tbl_gam_info.FieldByName('price2').AsCurrency := APublic10Price; //영업권 합산금액
    end;

    //평가금액 배분.
    tbl0.FieldByName('BuildPrice').AsCurrency := LandBuildPrice;
    tbl_gam_info.FieldByName('MULGUNSU').AsInteger := DongCnt;
    tbl0.fieldByName('TreeCnt').AsInteger := LandTreeCnt;
    tbl0.FieldByName('TreePrice').AsCurrency := TreePrice;
    tbl0.FieldByName('StructurePrice').AsCurrency := StructurePrice;
    tbl0.FieldByName('MoveFeePrice').AsCurrency := MoveFeePrice;
    tbl0.FieldByName('EtcPrice').AsCurrency := EtcPrice;


   //수수료 계산.
    tbl0.FieldByName('BuildVolumeCharge').AsCurrency := LandBuildVolumeCharge;
    tbl0.FieldByName('TreeVolumeCharge_Origin').AsCurrency := TreeVolumeCharge;
    tbl0.FieldByName('StructureVolumeCharge').AsCurrency := StructureVolumeCharge;
    tbl0.FieldByName('MoveFeeVolumeCharge').AsCurrency := MoveFeePrice * 0.01;
    tbl0.FieldByName('BusinessVolumeCharge').AsCurrency := BusinessVolumeCharge;

  end;

  if bolExistsLand then
  begin
    LandBuildPrice := 0;
    LandBuildVolumeCharge := 0;
    LandTreeCnt := 0;
    //2012.09.27 변수초기화 추가.
    APublic10Price := 0; APublic15Price := 0; A10Price := 0; A15Price := 0;

    SumVolumeChargeForLand(LandBuildPrice, LandBuildVolumeCharge, LandTreeCnt, //strLandTableName,///2012.10.05 주석처리. 양식중복추가 가능으로 변경.및 주석처리
      APublic10Price, APublic15Price, A10Price, A15Price); //변수추가.

    ///2012.10.17. 자동일 때만. 합산되도록.수정.
    if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then // 자동.
    begin
      /// 2012.09.27 종가평가금액 배분
      tbl_gam_info.FieldByName('price0').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency + A10Price;
      tbl_gam_info.FieldByName('price1').AsCurrency := tbl_gam_info.FieldByName('price1').AsCurrency + A15Price;
      tbl_gam_info.FieldByName('price0_1').AsCurrency := tbl_gam_info.FieldByName('price0_1').AsCurrency + APublic10Price;
      tbl_gam_info.FieldByName('price1_1').AsCurrency := tbl_gam_info.FieldByName('price1_1').AsCurrency + APublic15Price;
    end;

    //토지평가금액
    tbl0.fieldByName('LandPrice').AsCurrency := LandBuildPrice;
    tbl_gam_info.FieldByName('PHILJI').AsInteger := LandTreeCnt;
    //종량 수수료 계산.
    tbl0.FieldByName('LandVolumeCharge_Origin').AsCurrency := LandBuildVolumeCharge;
  end;

  //보상은 평가금액에..개별지가. 혹은 평가금액의 50%를 넣어주기 때문에. SumVolumeChargeForLand 참고.
  ///2012.10.17 협회 프로그램은 종가 총 평가금액에 영업권을 더합니다. 법인 관리  패턴에 맞게 수정해주세요.
  tbl_gam_info.FieldByName('price').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency + tbl_gam_info.FieldByName('price1').AsCurrency
    + tbl_gam_info.FieldByName('price2').AsCurrency;
  ///2012.10.11 보상 수수료 기준 금액
  tbl0.FieldByName('BillPrice').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + tbl0.FieldByName('Bill15Price').AsCurrency;
end;
//2012.10.05 이하 프로시져 전반적으로 수정.

procedure TXForm1.SumVolumeChargeForBuild(var BuildPrice,BuildVolumeCharge: Currency; var DongCnt, TreeCnt: Integer;
  var TreePrice, StructurePrice, MoveFeePrice, EtcPrice, TreeVolumeCharge,
  StructureVolumeCharge, BusinessVolumeCharge: Currency;
  ///2012.10.05 주석처리 const ATableName: string;
  var APublic10Price, A10Price, A15Price: Currency);
var aLocalQry: TEasyQuery;
  PriceField_Value, VolumeField_Value: string;
  curTemp, curBiz10Price, curBiz15Price: currency; ///2012.10.22 영업권 수수료 변수  추가.
  intCount: Integer; StrCount: string; ///2012.10.22 영업권 수량 관련 변수추가
begin
  ///2012.10.05 다수개의 조서에서 종가 sum 해오기.
  try
    aLocalQry := TEasyQuery.Create(nil);
    aLocalQry.DatabaseName := ChildDataBase.DatabaseName;
    aLocalQry.SessionName := ChildDataBase.SessionName;
    FLocalQry.first;
    while not FLocalQry.Eof do
    begin
      if pos('pbs_good', FLocalQry.FieldByName('table_name').AsString) > 0 then //pbs_land
      begin
        with (aLocalQry) do
        begin
          Close;
          Sql.Clear;
          Sql.add('Select * from ' + FLocalQry.FieldByName('table_name').AsString);
          Open;
          First;
          while not eof do
          begin
            PriceField_Value := fieldByName('Price').AsString;
            if (UpperCase(fieldByName('Gubun').AsString) = 'D') and (PriceField_Value <> emptyStr) and (IsNumberOnly(PriceField_Value)) then
            begin
            //종가 평가금액 배분 : 로컬edb 파일에서 sum
              if FieldByName('tradeYN').AsString = 'Y' then
              begin
                APublic10Price := APublic10Price + Str2Currency(PriceField_Value);
                //2012.10.22 수량 수식 -> 숫자로 계산 : 조서에 있는 로직 가져왔습니다.법인마다 다른 로직 사용중이시면. 법인로직 활용하세요.
                try
                  intCount := 0;
                  StrCount := StringReplace(FieldByName('COUNT').AsString, ',', '', [rfReplaceAll]);
                  if ((Trim(StrCount) <> '') and ((Pos('/', Trim(StrCount)) > 0) or (Pos('*', Trim(StrCount)) > 0)
                    or (Pos('+', Trim(StrCount)) > 0) or (Pos('-', Trim(StrCount)) > 0))) then begin
                    iToken := Divide_Token(StrCount);
                    repeat
                      Process_Bracket;
                    until iToken = 1;
                    intCount := StrToIntDef(aToken[1], 0);
                  end
                  else
                    intCount := StrToInt(StrCount);
                except
                  intCount := StrToIntDef(StrCount, 0);
                end;
                //2012.10.22 수량 수식 -> 숫자로 계산 끝.

                //2012.10.17 영업권 수수료 로직 추가. 영업권 수수료는 갯수대로 수수로 구간을 태우는게 맞다고 해서.
                if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then
                begin
                  //2012.10.22. 중토위 영업권 1.5 배 로직 때문에 수정.
                  //영업권 수량을 1개씩 조서에 행추가해서 나열 해 드리길 권해 드립니다.
                  //금액이 5천만원 미만이 대부분이지만, 혹시라도 5천만원 이상인 경우. 조서에 1개로 나머지 행추가로 나눠서 작성해주세요.
                  curTemp := 0; curBiz10Price := 0; curBiz15Price := 0;
                  if intCount = 1 then
                  begin
                    if FieldByName('RATIO').AsString = 'Y' then
                      curBiz15Price := Str2Currency(PriceField_Value)
                    else curBiz10Price := Str2Currency(PriceField_Value);

                    // 2014.03.04 수정 - 접수일자가 2014.03.07 이후 물건이면 새로운 수수료 루틴 적용
//                    tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency //
//                      + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1');

                      tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency
                        + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1', User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));

                  end
                  else //영업권이 2개 이상 인 경우: 5천만원 미만으로 보고. 수수료 하드코딩했습니다.
                  begin
                    // 2013.01.23 영업권 수정 (보수기준 요율을 적용하도록 수정)
//                    if FieldByName('RATIO').AsString = 'Y' then
//                      curTemp := 225000 * intCount
//                    else curTemp := 150000 * intCount;
//                    tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency //
//                      + curTemp;

                    if FieldByName('RATIO').AsString = 'Y' then
                      curBiz15Price := Str2Currency(PriceField_Value)
                    else curBiz10Price := Str2Currency(PriceField_Value);

                    // 2014.03.04 수정 - 접수일자가 2014.03.07 이후 물건이면 새로운 수수료 루틴 적용
//                    tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency //
//                      + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1');

                      tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency
                        + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1', User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));

                  end;
                  //2012.10.22. 중토위 영업권 1.5 배 로직 때문에 수정. 끝.
                end;
                //2012.10.17 영업권 수수료 로직 추가. 끝.
              end
              else begin
                if FieldByName('RATIO').AsString = 'Y' then
                  A15Price := A15Price + Str2Currency(PriceField_Value)
                else A10Price := A10Price + Str2Currency(PriceField_Value);
              end;

              if (fieldByName('objgubun').AsString = '건물') then
              begin
                BuildPrice := BuildPrice + Str2Currency(PriceField_Value);
              end
              else if (fieldByName('objgubun').AsString = '수목') then
              begin
                TreePrice := TreePrice + Str2Currency(PriceField_Value);
              end
              else if (fieldByName('objgubun').AsString = '이전비') then
              begin
                MoveFeePrice := MoveFeePrice + Str2Currency(PriceField_Value);
              end
              else if (fieldByName('objgubun').AsString = '구축물') then
              begin
                StructurePrice := StructurePrice + Str2Currency(PriceField_Value);
              end
              else //기타//지장물
                EtcPrice := EtcPrice + Str2Currency(PriceField_Value);
            end;
            Next;
          end;
        end;
      end;
      FLocalQry.Next;
    end;
  except on E: Exception do
    begin
       //error 상황.
      ShowMessage(E.Message + ' dataset open 불가. binder에는 있으나, 실제로 테이블이 없습니다.');
      FreeAndNil(aLocalQry);
    end;
  end;

  //2012.10.05 협회 RDB 데이터 에서 종량 sum 하기.
  try
    with FKbmQry do
    begin
      if Active then close;
      Query.Text := 'exec APWORKS_LAND_KAPA_OBJECTS_SEL :Gubun_Code,:id';
      Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
      Params.ParamByName('id').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
      Open;
      FintObjectCount := RecordCount;
      First;
      while not Eof do
      begin
        if FindField('VolumeCharge') = nil then
        begin
          VolumeField_Value := EmptyStr;
        end
        else VolumeField_Value := fieldByName('VolumeCharge').AsString;

        if (VolumeField_Value <> emptyStr) and (IsNumberOnly(VolumeField_Value)) then
        begin
          if (fieldByName('objgubun').AsString = '건물') and (fieldByName('DongGubun').AsString = '1') then
          begin
            BuildVolumeCharge := BuildVolumeCharge + Str2Currency(VolumeField_Value);
            DongCnt := DongCnt + 1
          end
          else if (fieldByName('objgubun').AsString = '수목') then
          begin
            TreeCnt := TreeCnt + fieldByName('Cnt').AsInteger;
            TreeVolumeCharge := TreeVolumeCharge + Str2Currency(VolumeField_Value);
          end
          else if (fieldByName('objgubun').AsString = '구축물') then
          begin
            StructureVolumeCharge := StructureVolumeCharge + Str2Currency(VolumeField_Value);
          end
          else if (fieldByName('objgubun').AsString = '영업권') then
          begin
            FintBisinessCount := FintBisinessCount + 1;
            BusinessVolumeCharge := BusinessVolumeCharge + Str2Currency(VolumeField_Value);
          end
        end;
        Next;
      end;
    end;
  except on E: Exception do
    begin
       //error 상황.
      ShowMessage(E.Message);
    end;
  end;

  //2012.10.11. 보상 수수료 기준 컬럼
  tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + A10Price;
  tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + A15Price;
  //2012.10.11. 보상 수수료 기준 컬럼끝.

end;



///2012.10.05 아래 프로시져 전반적으로 수정됨.

procedure TXForm1.SumVolumeChargeForLand(var LandPrice,
  LandVolumeCharge: Currency; var LandCnt: Integer;
  ///2012.10.05 주석처리   const ATableName: string  ;
  var APublic10Price, APublic15Price, A10Price, A15Price: Currency);
var
  aLocalQry: TEasyQuery;
  APublicPriceField_Value, PriceField_Value, VolumeField_Value: string;
begin
  ///2012.10.05 다수개의 조서에서 종가 sum 해오기.
  try
    aLocalQry := TEasyQuery.Create(nil);
    aLocalQry.DatabaseName := ChildDataBase.DatabaseName;
    aLocalQry.SessionName := ChildDataBase.SessionName;
    FLocalQry.first;
    while not FLocalQry.Eof do
    begin
      if pos('pbs_land', FLocalQry.FieldByName('table_name').AsString) > 0 then //
      begin
        with (aLocalQry) do
        begin
          Close;
          Sql.Clear;
          Sql.add('Select * from ' + FLocalQry.FieldByName('table_name').AsString);
          Open;
          First;
          while not Eof do
          begin
             ///2012.10.10.체크로직 수정 추가.///2012.10.11 다시한번 확인. 'D'인 건만. 합산로직.   ///이일우 수정
             if (UpperCase(fieldByName('Gubun').AsString) = 'D') then
            begin
              APublicPriceField_Value := fieldByName('PAmt').AsString; //개별공시지가
              PriceField_Value := fieldByName('GAmt').AsString; //보상평가금액
              //평가금액 배분.
              if (PriceField_Value <> emptyStr) and (IsNumberOnly(PriceField_Value)) then
              begin
                if FieldByName('RATIO').AsString = 'Y' then
                  A15Price := A15Price + Str2Currency(PriceField_Value)
                else A10Price := A10Price + Str2Currency(PriceField_Value);
//                ShowMessage(FieldByName('RATIO').AsString + PriceField_Value);
              end;
              //개별지가 배분
              if (APublicPriceField_Value <> emptyStr) and (IsNumberOnly(APublicPriceField_Value)) then
              begin
                if FieldByName('RATIO').AsString = 'Y' then
                  APublic15Price := APublic15Price + Str2Currency(APublicPriceField_Value)
                else APublic10Price := APublic10Price + Str2Currency(APublicPriceField_Value);
              end;
            end; ///2012.10.10.체크로직 수정 추가.끝.
            Next;
          end;
        end;
      end;
      FLocalQry.Next;
    end;
  except on E: Exception do
    begin
      //error 상황.
      ShowMessage(E.Message + ' dataset open 불가. binder에는 있으나, 실제로 테이블이 없습니다.');
      FreeAndNil(aLocalQry);
    end;
  end;
  ///2012.10.05 협회 RDB 데이터 에서 종량 sum 하기.
  try
     with FKbmQry do
    begin
      if Active then close;
      Query.Text := 'exec APWORKS_LAND_KAPA_LAND_SEL :Gubun_Code,:id';
      Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
      Params.ParamByName('id').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
      Open;
      /// 2013.01.02 토지필지수를 보상협회 연계물건에서 가져오지 않고 폼쇼에서 가져온 필드를 보여줌
      //LandCnt := RecordCount;
      LandCnt := tbl_gam_info.FieldByName('PHILJI').AsInteger;

      First;
      while not Eof do
      begin
        VolumeField_Value := fieldByName('VolumeCharge').AsString; //종량수수료.
        LandVolumeCharge := LandVolumeCharge + Str2Currency(VolumeField_Value);

        Next;
      end;

    end;
  except on E: Exception do
    begin
       //error 상황.
      ShowMessage(E.Message);
    end;
  end;

   //개별공시지가에 따라 산정한 지가의 총액이 감정평가액의 50%에 못미치는 경우에는
  //감정평가액의 50%에 상당하는 금액

    ///2012.10.11. 보상 수수료 기준 컬럼 관련 주석처리및 소스 이동시작
  /// 2013.03.29 LandPrice := (A10Price + A15Price); ///2012.10.11. 소스이동

  if (gs_yn.ItemIndex = 0) then  /////////////////////////////////////////////////////2014.04.14 경인지사
   //if ((APublic10Price + APublic15Price) < ((A10Price + A15Price) / 2)) and (tbl_gam_info.FieldByName('company_name').asstring = '경인지사') then
  ///////이일우 수정 수수료 기준 선택되도록 변경
   begin

     LandPrice := ((A10Price + A15Price) / 2);  /// 2013.03.29 수정
  //    A10Price := (A10Price / 2);                /// 2013.04.03 수정
  //    A15Price := (A15Price / 2);                /// 2013.04.03 수정
     txtLaw.Visible := True;

      ///2012.11.2 수정 A10Price = 0 일 경우 0나누기 오류발생.
      /// 2013.03.29 A10Price, A15Price 를 1/2 값이 아닌 값으로 넣는다.
       if A10Price > 0 then
        tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + (A10Price / 2) /// 2013.04.3 수정
      else tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + 0;
      if A15Price > 0 then
         tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + (A15Price / 2) /// 2013.04.3 수정
      else tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + 0;
      ///2012.11.2 수정 A10Price = 0 일 경우 0나누기 오류발생.끝.

  end

  else
  begin //나머지 경우엔. 개별공시지가 = 보상 평가금액

    LandPrice := (APublic10Price + APublic15Price); /// 2013.03.29 수정
   // A10Price := APublic10Price;                    /// 2013.04.3 수정
   // A15Price := APublic15Price;                    /// 2013.04.3 수정
    txtLaw.Visible := False;

    tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + APublic10Price;
    tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + APublic15Price;
    //개별공시지가.
    tbl0.FieldByName('Chk_Amt').AsInteger := 1;
  end;
  if ((APublic10Price + APublic15Price) < ((A10Price + A15Price) / 2)) and (tbl_gam_info.FieldByName('company_name').asstring = '경인지사') then begin
     ///2012.11.2 사용자 확인 메세지추가.
     if tbl0.FieldByName('Chk_Amt').AsInteger = 1 then
       ShowMessage('개별공시지가에 따라 산정한 지가의 총액이 감정평가액의 50%에 못미치는 경우에는,' + #13
         + '감정평가액의 50%에 상당하는 토지평가총액금액으로 수수료 계산됩니다.' + #13
         + '부득이한 경우, 개별지가액 수수료 기준으로 수동계산 하실수 있으나, 보수기준법을 확인하십시요.');
     ///2012.11.2 사용자 확인 메세지추가 끝.

      //감정평가금액.
     tbl0.FieldByName('Chk_Amt').AsInteger := 0;
    end;


  ///2012.10.11. 보상 수수료 기준 컬럼 관련 주석처리및 소스 이동 끝.
end;


///2012.10.22. 물건 수량 수식 -> 숫자 변경 때문에 추가. 조서에 있는 로직 그대로 가져 왔습니다. 시작.
///법인마다. 가지고 계신 로직이 있으시면. 관리하시던 로직 그대로 가져오시면 됩니다.

function TXForm1.Divide_Token(sContents: string): Integer;
var
  i, iPos: Integer;
  s: string;
begin
  iPos := 0; iTag := 0; s := '';
  sContents := Trim(sContents) + '+';
  // 배열에 빈칸이 아닌 문자만 각각 1문자씩 저장한다.
  for i := 1 to Length(sContents) do
    if Copy(sContents, i, 1) <> ' ' then begin
      iTag := iTag + 1;
      aToken[iTag] := Copy(sContents, i, 1);
    end;
  // 저장된 문자중 숫자를 모은다.
  for i := 1 to iTag do
    if (aToken[i] = '(') or (aToken[i] = ')') or (aToken[i] = '*') or (aToken[i] = '/') or
      (aToken[i] = '%') or (aToken[i] = '+') or (aToken[i] = '-') then begin
      if s <> '' then begin
        aToken[i - 1] := s;
        s := '';
      end;
    end else begin
      s := s + aToken[i];
      aToken[i] := '';
    end;
  // 배열에 빈칸이 아닌 데이타만 다시 저장한다.
  for i := 1 to iTag - 1 do
    if aToken[i] <> '' then begin
      iPos := iPos + 1;
      aToken[iPos] := aToken[i];
    end;
  Result := iPos;

end;



procedure TXForm1.Process_Bracket;
var
  blDataYesNo: Boolean;
  i, j, iMin, iMax: Integer;
  sTemp: string;
begin
  iLeft := Left_Bracket_Position;
  iRight := Right_Bracket_Position(iLeft);
  // 괄호가 없는 경우에는 프로시져를 종료한다.
  if iToken = 1 then Exit;
  // 괄호안에 데이타가 1개인 경우 괄호를 제거하고 프로시져를 종료한다.
  if (iRight - iLeft) = 2 then begin
    aToken[iLeft] := ' ';
    aToken[iRight] := ' ';
    sTemp := '';
    for i := 1 to iToken do
      sTemp := sTemp + aToken[i];
    iToken := Divide_Token(sTemp);
    Exit;
  end;
  if iLeft = 0 then begin
    iMin := 1;
    iMax := iToken;
  end else begin
    iMin := iLeft + 1;
    iMax := iRight - 1;
  end;
  // 괄호안에 처리할 데이타가 있으면 해당 데이타를 처리한다.
  blDataYesNo := TRUE;
  for i := iMin to iMax do
    if (aToken[i] = '*') or (aToken[i] = '/') or (aToken[i] = '%') then begin
      if aToken[i] = '*' then
        aToken[i] := FloatToStr(StrToFloat(aToken[i - 1]) * StrToFloat(aToken[i + 1]))
      else if aToken[i] = '/' then
        aToken[i] := FloatToStr(StrToFloat(aToken[i - 1]) / StrToFloat(aToken[i + 1]))
      else
        aToken[i] := IntToStr(StrToInt(aToken[i - 1]) mod StrToInt(aToken[i + 1]));
      aToken[i - 1] := ' ';
      aToken[i + 1] := ' ';
      sTemp := '';
      for j := 1 to iToken do
        sTemp := sTemp + aToken[j];
      iToken := Divide_Token(sTemp);
      blDataYesNo := FALSE;
      break;
    end;
  if not blDataYesNo then Exit;
  for i := iMin to iMax do
    if (aToken[i] = '+') or (aToken[i] = '-') then begin
      if aToken[i] = '+' then
        aToken[i] := FloatToStr(StrToFloat(aToken[i - 1]) + StrToFloat(aToken[i + 1]))
      else
        aToken[i] := FloatToStr(StrToFloat(aToken[i - 1]) - StrToFloat(aToken[i + 1]));
      aToken[i - 1] := ' ';
      aToken[i + 1] := ' ';
      sTemp := '';
      for j := 1 to iToken do
        sTemp := sTemp + aToken[j];
      iToken := Divide_Token(sTemp);
      break;
    end;
end;


function TXForm1.Left_Bracket_Position: Integer;
var
  i, iPos: Integer;
begin
  iPos := 0;
  for i := 1 to iToken do
    if aToken[i] = '(' then iPos := i;
  Result := iPos;
end;

function TXForm1.Right_Bracket_Position(iLast_Left: Integer): Integer;
var
  i, iPos: Integer;
begin
  iPos := 0;
  for i := 1 + iLast_Left to iToken do
    if aToken[i] = ')' then begin
      iPos := i;
      break;
    end;
  Result := iPos;
end;

///2012.10.22. 물건 수량 수식 -> 숫자 변경 때문에 추가. 조서에 있는 로직 그대로 가져 왔습니다. 끝.

procedure TXForm1.vradio_ModeClick(Sender: TObject);
begin
  if vradio_Mode.ItemIndex = 0 then
  begin
    txtLandVolumeCharge.Enabled := False;
    txtBuildVolumeCharge.Enabled := False;
    txtPHILJI.Enabled := False;
    txtTreeVolumeCharge.Enabled := False;
    txtStructureVolumeCharge.Enabled := False;
    txtMoveFeeVolumeCharge.Enabled := False;
    txtBusinessVolumeCharge.Enabled := False;
    txtVolumeCharge.Enabled := False;

    txtLandVolumeCharge_Origin.Enabled := False;

    txtChargePartial.Enabled := False;
    txtVolumeChargePartial.Enabled := False;
    txtChargeRest.Enabled := False;
    txtResearchLandVolumeCharge.Enabled := False;
    txtResearchBuildVolumeCharge.Enabled := False;

    txtMixCharge.Enabled := False;
    txtMixChargeJELSA.Enabled := False;
    txtMixChargeTAX.Enabled := False;
    txtMixChargeTOTAL.Enabled := False;

    // 2013.9.25 추가
    txtLandPrice.Enabled := False;
    txtBuildPrice.Enabled := False;
    txtTreePrice.Enabled := False;
    txtStructurePrice.Enabled := False;
    txtMoveFeePrice.Enabled := False;
    txtEtcPrice.Enabled := False;

  end
  else begin
    txtLandVolumeCharge.Enabled := True;
    txtBuildVolumeCharge.Enabled := True;
    txtPHILJI.Enabled := True;
    txtTreeVolumeCharge.Enabled := True;
    txtStructureVolumeCharge.Enabled := True;
    txtMoveFeeVolumeCharge.Enabled := True;
    txtBusinessVolumeCharge.Enabled := True;
    txtVolumeCharge.Enabled := True;

    txtLandVolumeCharge_Origin.Enabled := True;

    txtChargePartial.Enabled := True;
    txtVolumeChargePartial.Enabled := True;
    txtChargeRest.Enabled := True;
    txtResearchLandVolumeCharge.Enabled := True;
    txtResearchBuildVolumeCharge.Enabled := True;

    txtMixCharge.Enabled := True;
    txtMixChargeJELSA.Enabled := True;
    txtMixChargeTAX.Enabled := True;
    txtMixChargeTOTAL.Enabled := True;

    // 2013.9.25 추가
    txtLandPrice.Enabled := True;
    txtBuildPrice.Enabled := True;
    txtTreePrice.Enabled := True;
    txtStructurePrice.Enabled := True;
    txtMoveFeePrice.Enabled := True;
    txtEtcPrice.Enabled := True;

  end;
end;

procedure TXForm1.f_TOJOSABIKeyPress(Sender: TObject; var Key: Char);
begin
 //if Key = #13 then
  //  Compute_susu;
end;
procedure TXForm1.do_SetCombo;
begin

  cxComboBox1.Properties.Items.Clear;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Text := 'EXEC SP_IW_S_SUSUWHY';
  ADOQuery.Open;
  while not ADOQuery.Eof do
  begin
   // cxComboBox1.Properties.Items.Add(kbmMWClientQuery1.Query.fieldsByname(
   //   'Contents').asstring);

     cxComboBox1.Properties.Items.Add(ADOQuery.FieldByName(
       'Contents').AsString);

    ADOQuery.Next;
  end;
 // FreeAndNil(kbmMWClientQuery1);
end;




procedure TXForm1.btn_gubunClick(Sender: TObject);
begin
  if tbl_gam_info.FindField('ChargeGubun') = nil then exit
  else begin
   tbl_gam_info.Edit;
//   tbl_gam_info.FieldByName('ChargeGubun').AsStrineldByName('purposecode').Ag := 'P';
  // if  tbl_gam_info.FisString = '00' then begin
      FBolCompensation := False;
     tbl_gam_info.FieldByName('purposecode').AsString := '23';
      rdbChargeGubun.ItemIndex := 1;
      btn_totalClick(Sender);
  // end;
  end;
end;

procedure TXForm1.Button1Click(Sender: TObject);
begin
  //  SumVolumeChargeForBuild;
end;

procedure TXForm1.cxComboBox1Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
///
end;

procedure TXForm1.do_getsusudata;
begin

  ADOQuery.SQL.Clear;
  ADOQuery.Parameters.Clear;
  ADOQuery.SQL.Text := 'SELECT B.Code, A.Docid, B.Contents FROM APW_IW_SuSuList A, APw_IW_Susuwhy B  where A.Code = B.docid and a.docid = :docid';
  ADOQuery.Parameters.ParamByName('docid').Value :=  tbl_gam_info.FieldByName('doc_id').AsString;
  ADOQuery.Open;
  //ShowMessage(IntToStr(ADOQuery.RecordCount));
  if ADOQuery.Eof then Exit
  else
  begin
    ADOQuery.First;
     cxComboBox1.Text :=  ADOQuery.FieldByName('Contents').AsString;
  end;
  // FreeAndNil(kbmMWClientQuery2);
   //FreeAndNil();

end;

procedure TXForm1.cxComboBox1PropertiesChange(Sender: TObject);
begin
//  ShowMessage(cxComboBox1.Properties.Items.);
//   if cxComboBox1.Text  = '기타(상세내용 필 기재)' then
//   begin
//     Memo1.Visible := True;
//   end
//   else
//   begin
//     Memo1.Visible := False;
//   end;
end;

procedure TXForm1.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cxComboBox1.ItemIndex+1 > 0  then begin

          if (UserInfo.Office = '16') or (UserInfo.Office = '23') or (UserInfo.Office = '10') then begin
             ADOQuery.SQL.Clear;
            ADOQuery.Parameters.Clear;
            ADOQuery.SQL.Text := 'EXEC SP_IW_I_SUSUWHY :Docid,:Index,:Bigo,:Office';
            ADOQuery.Parameters.ParamByName('Docid').Value := cxDBTextEdit2.Text;
            ADOQuery.Parameters.ParamByName('Index').Value := cxComboBox1.ItemIndex+1;
            ADOQuery.Parameters.ParamByName('Bigo').Value := Memo1.Text;
            ADOQuery.Parameters.ParamByName('Office').Value := UserInfo.Office;
            ADOQuery.ExecSQL;
            //ShowMessage('저장완료');
          end;
       end;
end;

{procedure TXForm1.frxReport1GetValue(const VarName: String;
  var Value: Variant);

  var dong_gubun : string;
begin
  if dong_bank = '(동부)' then begin
    if VarName = 'dong_gubun' then Value := '1';
  end
  else begin
    if VarName = 'dong_gubun' then Value := '0';
    Exit;
  end
end; }

procedure TXForm1.Set_WooriBank;
var
  WooriCount: string;
  BANKYN: string;

begin
  BANKYN := '';
  WooriCount := '';
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text :='SELECT Account,BANKONLINEUSE FROM Apw_YJI_ImgAccount WHERE Docid  = ' +
    ':Docid';
  ADOQuery1.Parameters.ParamByName('Docid').Value := tbl_gam_info.FieldByName(
    'doc_id').AsString;
 ADOQuery1.Open;

 if ADOQuery1.Eof then Exit
 else
 begin

  BANKYN  := ADOQuery1.FieldByName('BANKONLINEUSE').AsString;
  WooriCount := ADOQuery1.FieldByName('Account').AsString;

  if BANKYN = 'N' then
  begin

     Qry_Woori.Query.Clear;
     Qry_Woori.Params.Clear;
     Qry_Woori.Query.Text := 'EXEC APWORKS_BANK_WRB_ACCOUNT_UPD :DAMBO_NO, ' +
       ':ACCOUNT_NO, :APPCODE';
     Qry_Woori.Params.ParamByName('DAMBO_NO').AsString := tbl_gam_info.FieldByName(
       'cuctdocid').AsString;
     Qry_Woori.Params.ParamByName('ACCOUNT_NO').AsString := WooriCount;
      Qry_Woori.Params.ParamByName('APPCODE').AsString := UserInfo.OrgID;
      //ShowMessage(UserInfo.OrgID);
      Qry_Woori.Execute();

     ADOQuery.SQL.Clear;
     ADOQuery.Parameters.Clear;

     ADOQuery.SQL.Text := ' Update Apw_YJI_ImgAccount Set BANKONLINEUSE = ''Y'' Where 1=1 And Account = :Account ';

     ADOQuery.Parameters.ParamByName('Account').Value := WooriCount;

     ADOQuery.ExecSQL;

  end;
 end;

end;

end.
//≒

