//------------------------------------------------------------------------------
//
// Unit        : main.pas
// Author      :
// Description :
// History
//   V 1.00 : 2006.04.25 ó�� �ۼ�
//
//------------------------------------------------------------------------------
{
  1. �� û�������� �������� �⺻������ ȸ�迡�� �ڵ����� ��������� �Ǿ��ֽ��ϴ�.
  �ڵ����� ������⶧���� �������� �Է��ϴ��� �ٽ� DLL�� �ε�ɶ� �������� �����Ͱ�
  ȸ�赥���ͷ� �������� �Ǿ��ֽ��ϴ�.
  �� ����� �����Է��� �����ϵ��� �����Ͻ� ������
  ProcessParameters���ν�������  cxLabel9Click(nil); ������ �ּ�ó���Ͻø� �˴ϴ�.

  
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
       ///2012.09.27 ������� �߰�.����.
    FBolCompensation: Boolean;
    FintObjectCount: Integer;
    FintBisinessCount: Integer;
    ///2012.09.27 ������� �߰�.��.
///2012.10.05 ������� �߰�.����.
    FLocalQry: TEasyQuery;
    FKbmQry: TkbmMWClientQuery;
    ///2012.10.05 ������� �߰�.��.

    ///2012.10.22. ���� ���� ���� -> ���� ���� ������ �߰�.
    iTag, iToken, iLeft, iRight: Integer;
    aToken: array[1..100] of string;
    ///2012.10.22. ���� ���� ���� -> ���� ���� ������ �߰�.��.
    dong_test : string;    //19-01-31 �׽�

    procedure Compute_susu_Sub; //��������
    procedure Compute_Sum_sub; //�������հ�
    procedure Compute_susu; //��������,�հ�
    procedure OpenAcount; //�������â����
    procedure OpenTrips; //�����â����
    procedure chk_Mode;
    procedure DomakeParam;
    procedure Compute_backward;                                                 //����
    procedure memo_10_Price;                                                    //����
    procedure memo_15_Price;                                                    //����
    procedure memo_Total_price;                                                 //����
    procedure ProcessParameters(ALink: TXLink);
    procedure Field_AlterProc(gTableNme, Str_Field: string);

      // ���� ������ �ű� method//--�� �޼ҵ带 ����� �κ��� �� ���� ���� �κ�. �̰ɷ� ã�Ƽ� �����ϼ���.
    procedure Sum_VolumeChargeFromObject; //������ ������ ����ϱ�.
    procedure Compute_VolumeCharge; //������ ������ ����ϱ�.
    function Discount_VolumeLandCharge(LandVolume: Currency; LancCnt: Integer): Currency;  //���� ���� ������ ����ϱ�
    function Discount_VolumeTreeCharge(const TreeVolume: Currency; const TreeCnt: Integer): Currency;
    procedure Clear_VolumeCharge;
 

  ///2012.09.27 ���� �߰� .���ν��� ����. ����
    procedure SumVolumeChargeForLand(var LandPrice, LandVolumeCharge: Currency; var LandCnt: Integer; //const ATableName: string;///2012.10.05
      var APublic10Price, APublic15Price, A10Price, A15Price: Currency);
    procedure SumVolumeChargeForBuild(var BuildPrice, BuildVolumeCharge: Currency; var DongCnt, TreeCnt: Integer;
      var TreePrice, StructurePrice, MoveFeePrice, EtcPrice, TreeVolumeCharge, StructureVolumeCharge, BusinessVolumeCharge: Currency; //const ATableName: string;///2012.10.05
      var APublic10Price, A10Price, A15Price: Currency);
    ///2012.09.27 ���� �߰� .���ν��� ����. ��.

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
///2012-09-13 ������ uses �� CommModule �߰�.
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
// ������ �߰�
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
// �ʱ� �Ķ���� ó�� ��ƾ
//
procedure TXForm1.ProcessParameters(ALink: TXLink);
var
  chk_field1,chk_field2,chk_field3,chk_field4,chk_field5,chk_field6,chk_field7,chk_field8,chk_field9,chk_field10,chk_field11,chk_field12,chk_field13,chk_field14,chk_field15,chk_field16 : integer;
 chk_Compensation: integer; ///2012.10.11. ������ ���� �ݾ� ���� �߰�.
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


    chk_Compensation := -1; ///2012.10.11. ������ ���� �ݾ� ���� �߰�.
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
    if Qryexec.FindField('BillPrice') = nil then ///2012.10.11. ������ ���� �ݾ� ���� �߰�.
      chk_Compensation := 1; ///2012.10.11. ������ ���� �ݾ� ���� �߰�.
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


        //������ ���� �÷� �߰�
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


  ///2012.10.11. ������ ���� �ݾ� �÷� �߰�.
    if (chk_Compensation = 1) then begin
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'BillPrice  Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Bill10Price   Currency');
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Bill15Price     Currency');
    end;

     if (chk_field15 = 1) then
       Field_AlterProc(ALink.ParamByString('TABLENAME'), 'Chk_AutoV integer'); /// 2013.02.06 ������ �ڵ��������� �߰�
     if (chk_field16 = 1) then
      Field_AlterProc(ALink.ParamByString('TABLENAME'), 'dong_gubun   String(10)'); //2019-02-11 �������� ������� �����ʵ� �߰�

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
    /// 2013.02.06 - ������, ����û, ����, ��õ���϶�
    if (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'LAN') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'TEM') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'OTH') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'CTS') then
    begin

  /// 2013.02.06 // ���������� ī��Ʈ
   /// 2013.02.19 // ������, ���, ����� �߰�
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

  ///2013.01.02 // ���幰 �ǹ��� ī��Ʈ
    /// 2013.02.19 // ������, ���, ����� �߰�
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
  ///2012.09.27. �ּ�ó��.
 //if ( (tbl_gam_info.FieldByName('price0_1').AsCurrency > 0) or (tbl_gam_info.FieldByName('price1_1').AsCurrency > 0) ) then
 //   gs_yn.ItemIndex := 1;

  if ( tbl0.FieldByName('Chk_His').AsString = '0' ) then
    cxLabel21.Caption := '����ݾ�[����]'
  else begin
    cxLabel21.Caption := '����ݾ�[�ڵ�]';
    tbl0.FieldByName('Chk_His').AsString := '1';
  end;

  if ( tbl0.FieldByName('Chk_Tax').AsString = '0' ) then
    cxLabel19.Caption := '�ΰ���ġ��[����]'
  else begin
    cxLabel19.Caption := '�ΰ���ġ��[�ڵ�]';
    tbl0.FieldByName('Chk_Tax').AsString := '1';
  end;

 // ������ �ּ� 20121008 if not ( tbl0.FieldByName('Chk_Auto').AsString = '1' ) then
  // ������ �ּ� 20121008  tbl0.FieldByName('Chk_Auto').AsInteger := 0;
 // if (tbl0.FieldByName('Chk_Dambo').AsString = '') then
 //   tbl0.FieldByName('Chk_Dambo').AsInteger := 0;
  


 //������ ��ȸ �ּ�  if not ( tbl0.FieldByName('Chk_Dambo').AsString = '1' ) then
 //������ ��ȸ �ּ�   tbl0.FieldByName('Chk_Dambo').AsInteger := 0;

 // if not (tbl0.FieldByName('Chk_Auto').AsString = '1') then
  //  tbl0.FieldByName('Chk_Auto').AsInteger := 0;
 ///////////////��ȸ�� �� �ּ�ó���ϰ� ���� �츮��
 //// ������
 /// �㺸�ε� �ڲ� üũ�ڽ��� ��ŷ� ����.
 if not ( tbl0.FieldByName('Chk_Auto').AsString = '1' ) then
    tbl0.FieldByName('Chk_Auto').AsInteger := 0;

//    if (tbl0.FieldByName('Chk_Dambo').AsString = '') then
//    tbl0.FieldByName('Chk_Dambo').AsInteger := 1;
//
//  if not ( tbl0.FieldByName('Chk_Dambo').AsString = '1' ) then
//    tbl0.FieldByName('Chk_Dambo').AsInteger := 0;

 ///������ �ּ�  chk_Mode;
 //////////////////////////////// ������ �߰�
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

    if (Pos('�츮����', tbl_gam_info.fieldByName('custpart').AsString) > 0) then
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

           tbl_gam_info.fieldByName('Account').AsString := #13 +'�� �츮����' + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( ������ :'+  tbl_gam_info.fieldByName('Debtor').AsString +' )';

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

          tbl_gam_info.fieldByName('Account').AsString := #13 +'�� �츮����' + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( ������ :'+  fieldByName('Debtor').AsString +' )';

        end;
//         Set_WooriBank;
      end;

    end
    else if (Pos('�ѱ����ñ�������', tbl_gam_info.fieldByName('custpart').AsString) > 0) then
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

           tbl_gam_info.fieldByName('Account').AsString := #13 +'�� ' + fieldByName('AccountNm').AsString + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( ������ :'+  tbl_gam_info.fieldByName('Debtor').AsString +' )';

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

          tbl_gam_info.fieldByName('Account').AsString := #13 +'�� ' + fieldByName('AccountNm').AsString + ': ' +Format('%-20s',[fieldByName('Account').AsString]) +'( ������ :'+  fieldByName('Debtor').AsString +' )';

        end;
        
      end;

    end
    else
    begin

      tbl_gam_info.FieldByName('Account').AsString :=
      PF_Config.OtherInfo.AccountNum.Text;

    end;

  end;

  FBolCompensation := False;   //2013.11.07 ���Ͽ� �ּ�
  // FBolCompensation := True;

  if Trim( tbl0.FieldByName('Add_doc').AsString ) = '' then
    tbl0.FieldByName('Add_doc').AsString := '2';

 // ������ ��ȸ �ּ� tbl0.FieldByName('Add_doc').AsString := '2';  // ������ ��ȸ 20121008
  if  Trim(tbl0.FieldByName('requestdate').AsString) = '' then begin
      tbl0.FieldByName('requestdate').AsString :=tbl_gam_info.FieldByName('requestdate').AsString;
  end;
  FBolCompensation := False;     //2013.11.07 ���Ͽ� �ּ�
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
        FBolCompensation := False;   //2013.11.07 ���Ͽ� �ּ�
        //FBolCompensation := True;

        tbl_gam_info.FieldByName('ChargeGubun').AsString :='P';
      end;
    end;

  FintObjectCount := 0;
  FintBisinessCount := 0;

  ///2012.09.27. ���� ��� ���� �⺻������.��.
 ///2012.10.05 ������� �ʱ�ȭ. ����.
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
  ///2012.10.05 ������� �ʱ�ȭ. ��.

end;

procedure TXForm1.XFormClose(Sender: TObject; var Action: TCloseAction);
begin

  if (cxComboBox1.Text = '���������� �������ּ���') and (UserInfo.Office = '10') then
  begin
     
   // ShowMessage('���������� �������ּ���');

  end
  else
  begin
///2012.10.05 ������� Free. ����.
  FreeAndNil(FKbmQry);
  FreeAndNil(FLocalQry);
  ///2012.10.05 ������� Free. ��.
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
    ////////////////////////////////////����
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
            //ShowMessage('����Ϸ�');
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
  /// 2013.04.03 �����϶��� ��������
  if tbl0.FieldByName('Chk_Auto').AsInteger = 1 then // ����
    exit;
  /// 2013.02.19 �������� �߰� - �ʱⰪ ���� �ʾƼ� �ڵ���� ���� �ʴ� �κ� ����
  if not ( tbl0.FieldByName('Chk_AutoV').AsInteger = 1 ) then begin
      tbl0.FieldByName('Chk_AutoV').AsInteger := 0;

    end;
  /// 2013.02.06 ������ �����϶��� ����
  if vradio_Mode.ItemIndex = 0 then
  begin
    Compute_susu;
  end;

end;

procedure TXForm1.Compute_susu;
var TSUSU, ASUSU, Su_Value, SUSU10, SUSU15, SUSU00: Currency;
begin
  //ShowMessage(User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));
  ///2012.09.27 ����. ����...
  if FBolCompensation then //�����϶�
  begin
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
      tbl_gam_info.Edit;

    //���� ���� �� ���⼭ ���� ���� �������� �ջ�.
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
          // 2013.03.29 �÷��� 2 -> 1 ����, Price00 : �򰡾����� ����� ���ʼ����Ḧ ���Ϲ޴´�.(���������� ���� 150000, 225000)
          //2014 ���Ͽ� �ּ�  Su_Value := GetSusu(SUSU10, SUSU15, SUSU00, strtofloat(edit_rate.text), '2');
          // 2014.03.04 ���� - �Ƿ����ڰ� 2014.03.07 ���� �����̸� ���ο� ������ ��ƾ �����ϱ� ���� �Ķ���Ϳ� �Ƿ����ڸ� �߰�
          Su_Value := GetSusu(SUSU10, SUSU15, SUSU00, strtofloat(edit_rate.text), '1', User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));
          ///////////////////////////
         end;

         FieldByName('Price00').AsCurrency := SUSU00;
         FieldByName('Price10').AsCurrency := SUSU10;
         FieldByName('Price15').AsCurrency := SUSU15;


          ///2012.10.17 �����Ǽ����� ���.->procedure SumVolumeChargeForBuild �� �̵�.�ּ�ó��.
          //�������� �򰡰� ���� ���� ������ ���.

           {
           if FintBisinessCount > 0 then
          begin
            TSUSU := 0; ASUSU := 0;
            TSUSU := FieldByName('price2').AsCurrency;
            FieldByName('Price20').AsCurrency := GetSusu(TSUSU, ASUSU, ASUSU, strtofloat(edit_rate.text), '1'); //var �Ⱦ�.
          end
          else FieldByName('Price20').AsCurrency := 0;
            }

          //�ջ�
          FieldByName('SUSU').AsCurrency := Trunc(Su_Value + FieldByName('Price20').AsCurrency);

        end;
      Compute_Sum_sub; //���������� ���.
    end

    else begin
     // Sum_VolumeChargeFromObject;
//ShowMessage('test');
      tbl_gam_info.FieldByName('price0').AsCurrency := f_price0.Value;
      tbl_gam_info.FieldByName('price1').AsCurrency := f_price1.Value;
      tbl_gam_info.FieldByName('price0_1').AsCurrency := f_price0_1.Value;
      tbl_gam_info.FieldByName('price1_1').AsCurrency := f_price1_1.Value;
      tbl_gam_info.FieldByName('price2').AsCurrency := f_price2.Value; //������ �ջ�ݾ�
      ///2012.10.17 �򰡱ݾ��� �����ؾ��ϹǷ�. �����ݾ����� ���ü��� �ִ� �κ�. �ּ�ó��.
      //if tbl0.FieldByName('Chk_Amt').AsInteger = 0 then //�����򰡾�
      ///2012.10.17 ��ȸ���α׷��� �������Ѿ׿� �������� ���մϴ�.���ΰ������Ͽ� �°� �����ϼ���.
      tbl_gam_info.FieldByName('price').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency
        + tbl_gam_info.FieldByName('price1').AsCurrency + tbl_gam_info.FieldByName('price2').AsCurrency;
      //else //����������
      //  tbl_gam_info.FieldByName('price').AsCurrency := tbl_gam_info.FieldByName('price0_1').AsCurrency
      //    + tbl_gam_info.FieldByName('price1_1').AsCurrency;
      ///2012.10.17 �򰡱ݾ��� �����ؾ��ϹǷ�. �����ݾ����� ���ü��� �ִ� �κ�. �ּ�ó��.��.
      tbl_gam_info.FieldByName('Price10').AsCurrency := f_Price10.Value;
      tbl_gam_info.FieldByName('Price15').AsCurrency := f_Price15.Value;
      tbl_gam_info.FieldByName('SUSU').AsCurrency := f_SUSU.Value;
      tbl_gam_info.FieldByName('SUSUSUM').AsCurrency := f_SUSUSUM.Value;
      tbl_gam_info.FieldByName('TOTAL').AsCurrency := f_TOTAL.Value;
      tbl_gam_info.FieldByName('BILL').AsCurrency := f_BILL.Value;
      //������
      tbl_gam_info.FieldByName('Price20').AsCurrency := f_Price20.Value;
      ///2012.10.17 �����̴��� �������� �ݾ��� �ڵ� ���ǵ��� ���� �߰�.����.
      Sum_VolumeChargeFromObject; ///2012.10.22 ����ȵǽ� ������ �ִ� ���Ͽ� Ȯ�����ּ���.
      ///2012.10.17 �����̴��� �������� �ݾ��� �ڵ� ���ǵ��� ���� �߰�.��..
    end;


    if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
      Compute_VolumeCharge; //���������� ���
  end
  else
  ///2012.09.27 ����. ��...
  begin //���� �ƴҶ�..���������״��.
    if Chk_Sale_chk.Checked then begin
    //    Application.MessageBox(pchar('������ ���θ���̹Ƿ�, �ڵ������������� �������� �ʽ��ϴ�.' + #13 + '�����Ḧ �����Է��ϽǼ� �ֽ��ϴ�.'), '����', MB_OK);
    end
    else
        Compute_susu_Sub; // ��������
    Compute_Sum_sub; // ������ SUM
   end;
end;

procedure TXForm1.Compute_susu_Sub;
var
  Su_Value, Price_Value, P, P10, P15, P10_1, P15_1, TP, TP10, TP15, TSUSU, SUSU00, SUSU10, SUSU15: Currency;
  Commission_receiptdate: string; //��������� ���� �������ں���
  Commission_APT: string; //��������� ���� ����Ʈ���κ���
begin
  try
    if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
      tbl_gam_info.Edit;

    with (tbl_gam_info) do begin

    // �����Է½ÿ� ���Ѿ��� ����ؿ��� ���� �ƴϰ�, �Էµ� ���� ����ϵ��� ����
    if radio_Mode.ItemIndex = 0 then   // �ڵ��϶�
    begin

        if gs_yn.ItemIndex = 0 then
        begin
          //P := Trunc(GetTotalPriceGS(Qryexec, P10, P15, P10_1, P15_1, 'D', '1', '1')); //�Ϲ��򰡱ݾ�(�����ݾױ���)
          P := Trunc(GetTotalPrice(Qryexec, P10, P15, 'D', '1')); //�Ϲ��򰡱ݾ�(�����ݾױ���)//price sum//�������ʱ�ȭ
          Price_Value := Trunc(P10 + P15); // ���Ѿ� SUM
          TP := Trunc(GetBSTotalPrice(Qryexec, TP10, TP15, TSUSU, 'D', '12')); //�������򰡱ݾ�
          FieldByName('price').AsCurrency := P10 + P15 + TP; // ���Ѿ�

          SUSU10 := P10;
          SUSU15 := P15;
        end
        else begin
          P := Trunc(GetTotalPriceGS(Qryexec, P10, P15, P10_1, P15_1, 'D', '1', '1')); //�Ϲ��򰡱ݾ�(�����ݾױ���)
          //�������ʱ�ȭ �ϰ�, ������ ���� 50% �ݾ����� �Ѱ�쵵����.
          Price_Value := Trunc(P10_1 + P15_1); // ���Ѿ� SUM
          TP := Trunc(GetBSTotalPrice(Qryexec, TP10, TP15, TSUSU, 'D', '12')); //�������򰡱ݾ�
          FieldByName('price').AsCurrency := P10 + P15 + TP; // ���Ѿ�
          SUSU10 := P10_1;
          SUSU15 := P15_1;
        end;

      end
      else begin   // �����϶�
        P10 := f_price0.Value; // 1.0�� ���Ѿ�
        P15 := f_price1.Value; // 1.5�� ���Ѿ�
        P10_1 := f_price0_1.Value; // ���� 1.0�� ���Ѿ�
        P15_1 := f_price1_1.Value; // ���� 1.5�� ���Ѿ�
        TP := f_price2.Value; // ������ ���Ѿ�
        FieldByName('price').AsCurrency := P10 + P15 + TP; // ���Ѿ�

        // �����϶� �����򰡾��� �������� �����Ḧ ���� ����
        // TP10.TP15�� ���� �� �뵵�� ������ �ƴ�����, ������������ÿ� Temp�� ���.
        // �׷��� �ڿ��� ��������ʰ�, cFlag�� 1�̹Ƿ� ������ ����.
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

     /// 2013.02.13 �������� �߰���
      if (cmb_susuj.ItemIndex = 0) or (cmb_susuj.ItemIndex = 2) then begin //�㺸
        Su_Value := GetSusu(SUSU10, SUSU15, SUSU00, strtofloat(edit_rate.text), '1',User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));/////

      end else begin //���                                    //���
//          Su_Value    := GetSusu2(SUSU10, SUSU15, SUSU00, '2');
//          2008�� 3�� 1�Ϻη� ��ż����ᰡ ��ȭ�ʿ� ���� �ڵ����
//          �������� �������� 3��1������ �������� �ٲ� ������ü�踦 ������.
//          �׺κ��� ���Ͽ� �Լ��� ȣ���Ҷ� �������ڸ� ���� �ѱ��,
//          �������� �Ķ���Ͱ� �������� �ٲ� ������ü�踦 �����Ѵ�.  --> �̺κ��� �ڵ��� CommFuncU���� ó��. ��ܿ� �������ڸ� ����ó����.
        Commission_receiptdate := Trim(tbl_gam_info.FieldByName('receiptdate').AsString);
        Commission_receiptdate := User_Remove_char(Commission_receiptdate, '-');
        if Length(Commission_receiptdate) <> 8 then
          Commission_receiptdate := '-';

        Commission_APT := 'No';
        if (Trim(tbl_gam_info.FieldByName('category').AsString) = '����Ʈ') then
          Commission_APT := 'Yes';

        Su_Value := GetSusu2(SUSU10, SUSU15, SUSU00, '2', Commission_receiptdate, Commission_APT);
      end;

      FieldByName('Price00').AsCurrency := SUSU00;
      FieldByName('Price10').AsCurrency := SUSU10;
      FieldByName('Price15').AsCurrency := SUSU15;

      FieldByName('price0').AsCurrency := P10; // 1.0�� ���Ѿ�
      FieldByName('price1').AsCurrency := P15; // 1.5�� ���Ѿ�
      FieldByName('price0_1').AsCurrency := P10_1; // ���� 1.0�� ���Ѿ�
      FieldByName('price1_1').AsCurrency := P15_1; // ���� 1.5�� ���Ѿ�
      FieldByName('price2').AsCurrency := TP; // ������ ���Ѿ�

      FieldByName('Price20').AsCurrency := TSUSU;

      FieldByName('SUSU').AsCurrency := Trunc(Su_Value + TSUSU);
      // �������� 1.0�� 1.5�� �����Ḧ ���� ��������, ���������� ���빮���� ���Ͽ� ���ϵ� �����Ḧ ���� ����.
      //      FieldByName('SUSU').AsCurrency  := Trunc(SUSU10 + SUSU15 + TSUSU);

      if (edit_DC.Text <> '1.0') then
      begin
        FieldByName('Price10').AsCurrency := FieldByName('Price10').AsCurrency *
          StrToFloat(edit_DC.Text);
        FieldByName('Price15').AsCurrency := FieldByName('Price15').AsCurrency *
          StrToFloat(edit_DC.Text);
        FieldByName('Price20').AsCurrency := FieldByName('Price20').AsCurrency *
          StrToFloat(edit_DC.Text);

       
        FieldByName('SUSU').AsCurrency := Trunc(FieldByName('Price10').AsCurrency + FieldByName('Price15').AsCurrency + FieldByName('Price20').AsCurrency);//2014.02.25���Ͽ� + FieldByName('Price20').AsCurrency);
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

  /// 2013.01.03 tbl_gam_info ������ �����־ ���� - ����
  if not (tbl_gam_info.state in [dsInsert, dsEdit]) then
    tbl_gam_info.Edit;

  if Chk_Sale_chk.Checked then begin
    tbl_gam_info.FieldByName('price').AsCurrency := f_price0.Value + f_price1.Value +
      f_price2.Value; // ���Ѿ�
  end;


  /// 2013.01.10 �������� ��� �б�
  with (tbl_gam_info) do begin
    if tbl0.FieldByName('ChargeGubun').AsString = 'V' then begin //������ �������� ��� �ջ��� �ٸ� ��η� �ϵ��� ����


    ///2014.03.06  ���Ͽ� �߰�
      // 2014.03.04 ���� - �Ƿ����ڰ� 2014.03.07 ���� �����̸� ���ο� ������ ��ƾ ����
      if User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-') < '20140307' then
       begin

        /// 2013.02.06 �����ǹ�����70 + �����ǹ�����30 + �����ǹ�������100�� 15������ �ȵɰ��� 150000������ ����
        /// 2013.02.08 15���� �񱳽� �������� �� �ݾ����� ��
        if tbl0.FieldByName('ChargePartial').AsCurrency + tbl0.FieldByName('VolumeChargePartial').AsCurrency + tbl0.FieldByName('ChargeRest').AsCurrency - FieldByName('Price20').AsCurrency > 150000 then
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(tbl0.FieldByName('ChargePartial').AsCurrency + //�����ǹ� ���� 70#
            tbl0.FieldByName('VolumeChargePartial').AsCurrency + //�����ǹ� ���� 30%
            tbl0.FieldByName('ChargeRest').AsCurrency + //�����ǹ��� 100%
                                               /// 2013.01.16 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ����
                                               /// 2013.02.06
            /// 2013.02.08 �����Ǽ����� ����
            /// 2013.02.19 chargerest ���� ������ �������� �ٽ� ���� - ������ �����̹Ƿ� �������� ����
            // FieldByName('Price20').AsCurrency + //������ �򰡼�����
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //���������
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //���������
            FieldByName('YEBI').AsCurrency + //����
            FieldByName('GONGBU').AsCurrency + //���ι߱޺�
            FieldByName('SILBI').AsCurrency + //�Ǻ�
            FieldByName('YONGYEUK').AsCurrency); //Ư���뿪��
        end else
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(150000 + // 15���� �⺻������
            FieldByName('Price20').AsCurrency + // ������
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //���������
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //���������
            FieldByName('YEBI').AsCurrency + //����
            FieldByName('GONGBU').AsCurrency + //���ι߱޺�
            FieldByName('SILBI').AsCurrency + //�Ǻ�
            FieldByName('YONGYEUK').AsCurrency); //Ư���뿪��
        end;

      end else
      begin

        /// 2014.03.04 �����ǹ�����70 + �����ǹ�����30 + �����ǹ�������100�� 15������ �ȵɰ��� 200000������ ����
        /// 2013.03.04 20���� �񱳽� �������� �� �ݾ����� ��
        if tbl0.FieldByName('ChargePartial').AsCurrency + tbl0.FieldByName('VolumeChargePartial').AsCurrency + tbl0.FieldByName('ChargeRest').AsCurrency - FieldByName('Price20').AsCurrency > 200000 then
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(tbl0.FieldByName('ChargePartial').AsCurrency + //�����ǹ� ���� 70#
            tbl0.FieldByName('VolumeChargePartial').AsCurrency + //�����ǹ� ���� 30%
            tbl0.FieldByName('ChargeRest').AsCurrency + //�����ǹ��� 100%
                                               /// 2013.01.16 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ����
                                               /// 2013.02.06
            /// 2013.02.08 �����Ǽ����� ����
            /// 2013.02.19 chargerest ���� ������ �������� �ٽ� ���� - ������ �����̹Ƿ� �������� ����
            // FieldByName('Price20').AsCurrency + //������ �򰡼�����
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //���������
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //���������
            FieldByName('YEBI').AsCurrency + //����
            FieldByName('GONGBU').AsCurrency + //���ι߱޺�
            FieldByName('SILBI').AsCurrency + //�Ǻ�
            FieldByName('YONGYEUK').AsCurrency); //Ư���뿪��
        end else
        begin
          FieldByName('SUSUSUM').AsCurrency := Trunc(200000 + // 20���� �⺻������
            FieldByName('Price20').AsCurrency + // ������
            tbl0.FieldByName('ResearchLandVolumeCharge').AsCurrency + //���������
            tbl0.FieldByName('ResearchBuildVolumeCharge').AsCurrency + //���������
            FieldByName('YEBI').AsCurrency + //����
            FieldByName('GONGBU').AsCurrency + //���ι߱޺�
            FieldByName('SILBI').AsCurrency + //�Ǻ�
            FieldByName('YONGYEUK').AsCurrency); //Ư���뿪��
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


  /// 2013.02.06 �������� ���� �߰� �㺸�򰡸����� 50���밡 �ƴѹ����� �� �ڵ�� �Է� �ٶ��ϴ�.
    //if (Pos('��������', tbl_gam_info.fieldByName('custpart').AsString) > 0) and (Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = '5') then
    if tbl0.FieldByName('Chk_Dambo').AsString = '3' then /// 2013.02.06 �з��� �㺸(��������)�� ���
    begin
    if (cxLabel21.Caption = '����ݾ�[�ڵ�]') then
        FieldByName('JELSA').AsCurrency := FieldByName('SUSU').AsCurrency -
          Trunc(FieldByName('SUSU').AsCurrency / 1000) * 1000;

     // FieldByName('SUSU').AsCurrency := FieldByName('SUSU').AsCurrency -
     //   FieldByName('JELSA').AsCurrency;
    end
    else
    begin
      if (cxLabel21.Caption = '����ݾ�[�ڵ�]') then
        FieldByName('JELSA').AsCurrency := FieldByName('SUSUSUM').AsCurrency -
          Trunc(FieldByName('SUSUSUM').AsCurrency / 1000) * 1000;

      FieldByName('SUSUSUM').AsCurrency := FieldByName('SUSUSUM').AsCurrency -
        FieldByName('JELSA').AsCurrency;
    end;


    //    if ( cxLabel19.Caption = '�ΰ� ��ġ�� [�ڵ�]' ) then
    if (tbl0.FieldByName('Chk_Tax').AsInteger = 1) then begin
      FieldByName('TAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);
    end;
    FieldByName('TOTAL').AsCurrency := FieldByName('SUSUSUM').AsCurrency +
      FieldByName('TAX').AsCurrency;
    FieldByName('BILL').AsCurrency := Trunc(FieldByName('TOTAL').AsCurrency -
      FieldByName('DEPOSIT').AsCurrency);



  /// 2013.02.06 �������� ����
   // if (Pos('��������', tbl_gam_info.fieldByName('custpart').AsString) > 0) and (Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = '5') then

    if tbl0.FieldByName('Chk_Dambo').AsString = '3' then /// 2013.02.06 �з��� 
    //�㺸(��������)�� ���
    begin
      FieldByName('SUSUTAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);

      // 2014.03.14 Ư���뿪�� �κ��� �����ִٰ� �ؼ� ���� - �뿪�� ����ִ� ������ ���� ���ϼŵ� �˴ϴ�.
      FieldByName('SILBISUM').AsCurrency := Trunc((FieldByName('YEBI').AsCurrency +
        FieldByName('MULJOSABI').AsCurrency +
        FieldByName('GONGBU').AsCurrency +
        FieldByName('SILBI').AsCurrency +
        FieldByName('YONGYEUK').AsCurrency) / 1000) * 1000;

      FieldByName('SILBITAX').AsCurrency := Trunc(FieldByName('SILBISUM').AsCurrency * 0.1);
      FieldByName('TAX').AsCurrency := Trunc(FieldByName('SUSUTAX').AsCurrency + FieldByName('SILBITAX').AsCurrency);

      SUSUJELSA := (Trunc((FieldByName('SUSU').AsCurrency / 1000)) * 1000);

      FieldByName('SUSUSUM').AsCurrency := Trunc(SUSUJELSA + FieldByName('SILBISUM').AsCurrency);

      /// 2013.02.06 �������� ���� - ����κ� : �������� ���� + �Ǻ��� ���� ��
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

  /// 2013.02.25 ������ΰ���, �Ǻ���, �Ǻ����� �ΰ����� ���������� ��츸 ������� �ʰ� ���ǿ� �����Ѵ�.

//      FieldByName('SUSUTAX').AsCurrency := 0;
//      FieldByName('SILBISUM').AsCurrency := 0;
//      FieldByName('SILBITAX').AsCurrency := 0;

      FieldByName('SUSUTAX').AsCurrency := Trunc(FieldByName('SUSUSUM').AsCurrency * 0.1);

      /// 2013.02.25 ���������� ��쿡�� ��������� ��� ���Ծ������� ���ǿ� �����ϱ� ���� ���������, Ư���뿪���߰�
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

  // 2013.02.12 �� ó�� �ڵ����� �������� �������� ���� �ʾƼ� �߰�
  if tbl_gam_info.FieldByName('SUSUSUM').AsCurrency <> tbl0.FieldByName('MixCharge').AsCurrency then
  begin
    Compute_susu;
  end;

  memo_Total_price; /// 2013.03.29 ������ ����
  ///2017.01.31���Ͽ� �����϶� ���� �ڵ� �Է�
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
    showmessage('������ȣ�� ���������ʽ��ϴ�.');
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
    showmessage('�������ڵ尡 ���������ʽ��ϴ�.');
  end else begin
    Acountfrm.Acount_list(OfficeID);
    Acountfrm.ShowModal;
  end;
end;

procedure TXForm1.chk_Mode;
begin
// ������ ���� 

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

   // ������
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
    //subprint_yn.Enabled := True;  ���Ͽ� �ּ�
      if Not(tbl0.State in [dsEdit, dsInsert]) then
        tbl0.Edit;
    //���Ͽ� �ּ�  tbl0.FieldByName('Add_doc').AsString := '2';
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
  //���������ư
  if Chk_Sale_chk.Checked then begin
    Application.MessageBox(pchar('������ �����Է¸���̹Ƿ�, �ڵ������������� �������� �ʽ��ϴ�.' + #13 + '�����Ḧ �����Է��ϽǼ� �ֽ��ϴ�.'), '����', MB_OK);
    Exit;
  end;
  ///2012.10.11 �����ϰ�� ��ü��� �¿�.�ƴϸ� ���� ����.
  if FBolCompensation then
    Compute_susu
  else
    Compute_susu_Sub;

  memo_Total_price; /// 2013.03.29 ������ ����
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
  //�հ����ư
  Compute_Sum_sub;
 //������ ���� �ջ�.
// ������ ��ȸ ����
   if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
  begin
    Sum_VolumeChargeFromObject;
  end
  else Clear_VolumeCharge;
// ������ ��ȸ ��
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
  is_Auction: string; //��Ű� ����
  Commission_receiptdate: string; //��������� ���� �������ں���
  Commission_APT: string; //��������� ���� ����Ʈ���κ���
begin
  tbl0.FieldByName('area2').AsString := '';

  if tbl_gam_info.FieldByName('price0').AsCurrency < 1 then // �򰡾��� 0���
    Exit;

  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  if tbl_gam_info.FieldByName('price1').AsCurrency > 0 then begin

    if gs_yn.ItemIndex = 0 then begin
    // ���رݾ��� �����򰡾��̶��
      /// 2013.04.18 �������򰡱��رݾ����� ����
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName(
      //'Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency

      /// 2013.04.19 �������� ������ �б�
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
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));

        tbl0.FieldByName('area2').AsString :=
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));
      end;
    end
    else begin // ���رݾ��� �����������̶��
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
    if (Trim(tbl_gam_info.FieldByName('category').AsString) = '����Ʈ') then
      Commission_APT := 'Yes';

    if gs_yn.ItemIndex = 0 then begin
      // ���رݾ��� �����򰡾��̶��
      /// 2013.04.18 �������򰡱��رݾ����� ����
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName('Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency

/// 2013.04.19 �������� ������ �б�
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
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('SUSU').AsCurrency,
          '10', strtofloat(edit_rate.Text), strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);

        tbl0.FieldByName('area2').AsString :=
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price0').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price10').AsCurrency, '10', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);
      end;
    end
    else begin // ���رݾ��� �����������̶��
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
  is_Auction: string; //��Ű� ����
  Commission_receiptdate: string; //��������� ���� �������ں���
  Commission_APT: string; //��������� ���� ����Ʈ���κ���
begin
  tbl0.FieldByName('area3').AsString := '';

  if tbl_gam_info.FieldByName('price1').AsCurrency < 1 then // �򰡾��� 0���
    Exit;

  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

 if tbl_gam_info.FieldByName('price0').AsCurrency > 0 then begin
    // 1.0�� 1.5�� ȥ��Ǿ� �ִٸ�
    if gs_yn.ItemIndex = 0 then begin
      // ���رݾ��� �����򰡾��̶��
      /// 2013.04.18 �������򰡱��رݾ����� ����
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName('Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency
      /// 2013.04.19 �������� ������ �б�
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
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));

        tbl0.FieldByName('area3').AsString :=
          GetSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text));
      end;
    end
    else begin // ���رݾ��� �����������̶��
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
    if (Trim(tbl_gam_info.FieldByName('category').AsString) = '����Ʈ') then
      Commission_APT := 'Yes';

    if gs_yn.ItemIndex = 0 then begin
      // ���رݾ��� �����򰡾��̶��
      /// 2013.04.18 �������򰡱��رݾ����� ����
      ///tbl_gam_info.fieldByName('Price0').AsCurrency --> tbl0.fieldByName('Bill10Price').AsCurrency
      ///tbl_gam_info.fieldByName('Price1').AsCurrency --> tbl0.fieldByName('Bill15Price').AsCurrency
      /// 2013.04.19 �������� ������ �б�
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
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);

        tbl0.FieldByName('area3').AsString :=
          GetSingleSusuText(tbl_gam_info.fieldByName('Price0').AsCurrency + /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price1').AsCurrency, /// 2013.04.19 ����
          tbl_gam_info.fieldByName('Price00').AsCurrency,
          tbl_gam_info.fieldByName('Price15').AsCurrency, '15', strtofloat(edit_rate.Text),
          strtofloat(edit_DC.Text)
          , is_Auction, Commission_receiptdate, Commission_APT);
      end;
    end
    else begin // ���رݾ��� �����������̶��
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

/// 2013.01.02 ��������� 15000 --> 10000

  if IsNumberOnly(f_TOJOSABI_count.Text) then begin
    /// 2013.01.10 ������(15000)�� ������(10000)�϶� ��������� ����
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

  if ( cxLabel21.Caption = '����ݾ�[�ڵ�]' ) then
  begin
    tbl0.FieldByName('Chk_His').AsString := '0';
    cxLabel21.Caption := '����ݾ�[����]';
  end
  else begin
    tbl0.FieldByName('Chk_His').AsString := '1';
    cxLabel21.Caption := '����ݾ�[�ڵ�]';
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
  /// 2013.04.03 �����϶��� ��������
  if tbl0.FieldByName('Chk_Auto').AsInteger = 1 then // ����
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

  /// 2013.02.13 �������� - 2013�� 2�� 15�Ϻ��� ���밡���ϰ� ��
  if (Now < StrToDateTime('2013-02-15')) and (cmb_susuj.ItemIndex = 2) then
  begin
    Showmessage('��������� 2�� 15�� �߼۵���Ÿ ���� �����ϱ�� �Ͽ� 15�Ϻ��� ���ð����մϴ�.');
    cmb_susuj.ItemIndex := 0;
    Exit;
  end;

  chk_Mode;


  /// 2013.02.26 �з������ ������ �ڵ����
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
    Application.MessageBox(pchar('����ɼ��� �ڵ��϶��� �����Ḧ �����Է��Ͻ� �� �����ϴ�.' + #13 + '����ɼ��� �������� �����Ͻð� �ٽ� �õ��ϼ���.'), '����', MB_OK);
    Chk_Sale_chk.Checked := False;
  end;
end;

procedure TXForm1.cxLabel19Click(Sender: TObject);
begin
  if not (tbl0.state in [dsInsert, dsEdit]) then
    tbl0.Edit;

  if ( cxLabel19.Caption = '�ΰ���ġ��[�ڵ�]' ) then
  begin
    tbl0.FieldByName('Chk_Tax').AsString := '0';
    cxLabel19.Caption := '�ΰ���ġ��[����]';
  end
  else begin
    tbl0.FieldByName('Chk_Tax').AsString := '1';
    cxLabel19.Caption := '�ΰ���ġ��[�ڵ�]';
//    f_price0Exit(Sender);
  end;
end;

procedure TXForm1.cxLabel35Click(Sender: TObject);
begin
  if cmb_susuj.ItemIndex = 1 then
    begin
    Application.MessageBox(pchar('��Ź��ǿ� ���ؼ��� ��������� �����ϽǼ� �����ϴ�.'), '����', MB_OK);
    exit;
    end;


  if Not(tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '0.9';
end;

procedure TXForm1.cxLabel36Click(Sender: TObject);
begin
  //// �� ���� �߰�
{   if (userinfo.Office = '10') and (copy(tbl_gam_info.FieldByName(
    'doc_id').AsString,9,1) <> '2' )  then
    begin
      Application.MessageBox(pchar('�����ϽǼ� �����ϴ�. �渮���� �����ϼ���.'), '����', MB_OK);
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
    Application.MessageBox(pchar('��Ź��ǿ� ���ؼ��� ��������� �����ϽǼ� �����ϴ�.'), '����', MB_OK);
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
    Application.MessageBox(pchar('������������ �Է��� �߸��Ǿ����ϴ�.'), '����', MB_OK);
    edit_DC.SetFocus;
  End;

   //// �� ���� �߰�
  {if (userinfo.Office = '10') and (copy(tbl_gam_info.FieldByName('doc_id').AsString,9,1) <> '2' ) and  (edit_dc.Text <> '1.0')  then
    begin
      Application.MessageBox(pchar('�����ϽǼ� �����ϴ�. �渮���� �����ϼ���.'), '����', MB_OK);
      edit_dc.Text := '1.0' ;

      exit;
    end;
     }

  end;

procedure TXForm1.cxLabel9Click(Sender: TObject);
begin
 //������ �ּ�  Screen.Cursor := crHourGlass;
//������ �ּ�   try
  //������ �����ϱ�
 {������ �ּ�   DepositQry.Close;
    DepositQry.QueryService := 'AlMighty';
    DepositQry.FieldDefs.Clear;
    DepositQry.Query.Text := 'Exec SP_S_APW_MasterEx 1,:docid';
    DepositQry.ParamByName['docid'].AsString := tbl_gam_info.FieldByName('doc_id').AsString;
    DepositQry.Open; }

 { DepositQry.Close;

  DepositQry.ParamByName['docid'].AsString := tbl_gam_info.FieldByName('doc_id').AsString;
  DepositQry.Open;
                   }
 {������ �ּ�  if Not(tbl_gam_info.State in [dsEdit, dsInsert]) then
    tbl_gam_info.Edit;
  tbl_gam_info.FieldByName('DEPOSIT').AsInteger := StrToIntDef(DepositQry.FieldByName('������').AsString,0);
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
    Application.MessageBox(pchar('��Ź��ǿ� ���ؼ��� ��������� �����ϽǼ� �����ϴ�.'), '����',
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
    Application.MessageBox(pchar('��Ź��ǿ� ���ؼ��� ��������� �����ϽǼ� �����ϴ�.'), '����', MB_OK);
    exit;
    end;

  if Not(tbl0.State in [dsEdit, dsInsert]) then
    tbl0.Edit;
  tbl0.FieldByName('SusuRate').AsString := '1.2';
end;

procedure TXForm1.rdbChargeGubunClick(Sender: TObject);
begin
 rdbChargeGubun.PostEditValue; /// 2013.1.23 ���Ѱ��� ������ �߰� - üũ�ص� �ٷ� ���� �ٲ��� �ʾƼ�



  ///2012.09.27 ����. ����...
  if not FBolCompensation then
  begin
    //ShowMessage('���� ���� �ƴ� ��� �����Ͻ� �ʿ䰡 �����ϴ�.');
    Clear_VolumeCharge;
    tbl0.FieldByName('ChargeGubun').AsString := '';
  end;
  ///2012.09.27 ����. ��....

  ///2012.10.31 ����
  with tbl_gam_info do
  begin
    if state in [dsinsert, dsedit] then edit;
     FieldByName('ChargeGubun').AsString := tbl0.FieldByName('ChargeGubun').AsString;
  end;
  ///2012.10.31

  ///2012-09-13 ������ �ڵ���� �߰�.����.
  btn_totalClick(nil);
  ///2012-09-13 ������ �ڵ���� �߰�.��.
  pnlVolume.Visible := (rdbChargeGubun.ItemIndex = 0);
end;

///2012-09-13 ������ ���ν��� ����. ����.

procedure TXForm1.Compute_VolumeCharge;
var //�����ǹ��򰡱ݾ�//�����������αݾ�//�����������αݾ�
  curOnlyPrice, curLandBuild, curDiscountLand, curDiscountTree: Currency;
  strMemo: string;
begin

  with tbl0 do begin
    if not (state in [dsInsert, dsEdit]) then
      Edit;

    /// ���� 70% ���� ���� -----------------
    //�����ǹ��򰡱ݾ�
    curLandBuild := 0;
    curLandBuild := FieldByName('LandPrice').AsCurrency
      + FieldByName('BuildPrice').AsCurrency;
    //������ �� �򰡱ݾ�
    ///2012.09.17 ����. price�� �̹� gs_yn ���п� ���� ���� �ݾ��Դϴ�.
    ///2012.10.17 ��ȸ���α׷��� �������Ѿ׿� �������� ���մϴ�.���� ,
    ///������ ������ �򰡱ݾ� �Ѿ��� ����Ű�� curOnlyPrice ������ ���ΰ������Ͽ� �°� �����ϼ���.
//    curOnlyPrice := tbl_gam_info.FieldByName('Price').AsCurrency -
//      tbl_gam_info.FieldByName('Price2').AsCurrency;

    curOnlyPrice := FieldByName('BillPrice').AsCurrency; /// 2013.03.29 curOnlyPrice ����

    ///2012.09.17. ����.Price00��. 1.0/1.5������ ��� ���� ���������� �̹Ƿ� susu-����������� ����-----����
    if curOnlyPrice > 0 then
    begin
      //�����ǹ� �� ���� ������ 100% = ( ��ü������ * ��Ÿ(�����ǹ���)�򰡱ݾ��� ���� ) + �����Ǽ�����
      /// 2013.02.06 �����ǹ��� ���������� 100%���� �����Ǽ����Ḧ ����

      /// 2013.03.29 �����򰡾�����, ���������������� ���� �����ǹ����������� 70%�� �б��Ϸ� ������
      /// 2013.03.29 curLandBuild�� curOnlyPrice�� �����ö� �б��ؼ� ���������Ƿ� �б��Ϸ��� �����ҽ��� ����

      /// 2013.03.29  �����ǹ�����������(70%) = ������(����������) * (�����ǹ��򰡱ݾ�/�򰡱ݾ�) * 0.7
      FieldByName('ChargePartial').AsCurrency :=
        Trunc((tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency) //Price00 ���� ����.
        * (curLandBuild / curOnlyPrice)
        * 0.7);

      // 2013.03.29 �����ǹ�����������(70%) ���� -- 2012.10.17 ���� ����.
      if FieldByName('ChargePartial').AsCurrency > 0 then
        FieldByName('area9').AsString := FormatCurr('#,##0',
          (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) //Price00 ���� ����.
          + 'x' + '(' + FormatCurr('#,##0', curLandBuild) + '/' + FormatCurr('#,##0', curOnlyPrice) + ')'
          + 'x' + '0.7'
          + #13 + '��' + FormatCurr('#,##0', FieldByName('ChargePartial').AsCurrency)
      else FieldByName('area9').AsString := '�����ǹ� ����.';


      /// 2013.03.29 �����ǹ� �� ���� ������ 100%
      FieldByName('ChargeRest').AsCurrency := Trunc(
        (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency) //Price00 ���� ����.
        * ((curOnlyPrice - curLandBuild) / curOnlyPrice
        ))
       /// 2013.02.19 chargerest�� ������ �ٽ� �߰�
      + tbl_gam_info.FieldByName('Price20').AsCurrency;

        /// 2013.03.29 �����ǹ� �� ���� ������ 100% -- 2012.10.17���� ����.
      if FieldByName('ChargeRest').AsCurrency > 0 then
        FieldByName('area13').AsString :=
          FormatCurr('#,##0', (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) ////Price00 ���� ����.
          + 'x((' + FormatCurr('#,##0', curOnlyPrice)
          + '-' + FormatCurr('#,##0', curLandBuild) + ')/' + FormatCurr('#,##0', curOnlyPrice)
          + ')'
          /// 2013.02.19 chargerest�� ������ �ٽ� �߰�
        + '+' + FormatCurr('#,##0', tbl_gam_info.FieldByName('Price20').AsCurrency)
          + #13 + '��' + FormatCurr('#,##0', FieldByName('ChargeRest').AsCurrency)
      else FieldByName('area13').AsString := '�����ǹ��� ���Ǿ���.';

//      end else
//      begin // ������������ ���
//
//      // 2013.02.06 - �����ǹ�����������(70%) (����� ������ ��������) = ������(����������) * ((����1.0+����1.5)+(�ǹ��򰡾�) / ((����1.0+����1.5)+(�ǹ��򰡾�)+(���幰�򰡾�(����, ���๰, ������, ��Ÿ ��))) * 0.7
//        FieldByName('ChargePartial').AsCurrency :=
//          Trunc(
//          ((tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency) //Price00 ���� ����.
//          *
//          (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency) / (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency + tbl0.FieldByName('TreePrice').AsCurrency + tbl0.FieldByName('StructurePrice').AsCurrency + tbl0.FieldByName('MoveFeePrice').AsCurrency + tbl0.FieldByName('EtcPrice').AsCurrency))
//          * 0.7);
//
//      /// 2013.02.06 �����ǹ�����������(70%) ���� -- ���� ���� (����� ������ ��������)
//        if FieldByName('ChargePartial').AsCurrency > 0 then
//          FieldByName('area9').AsString := FormatCurr('#,##0',
//            (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) //Price00 ���� ����.
//            + 'x' + '(' + FormatCurr('#,##0', (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency)) + '/'
//            + FormatCurr('#,##0', (tbl_gam_info.FieldByName('price0_1').AsCurrency + tbl_gam_info.FieldByName('price1_1').AsCurrency + tbl0.FieldByName('BuildPrice').AsCurrency + tbl0.FieldByName('TreePrice').AsCurrency + tbl0.FieldByName('StructurePrice').AsCurrency + tbl0.FieldByName('MoveFeePrice').AsCurrency + tbl0.FieldByName('EtcPrice').AsCurrency)) + ')'
//            + 'x' + '0.7'
//            + #13 + '��' + FormatCurr('#,##0', FieldByName('ChargePartial').AsCurrency)
//        else FieldByName('area9').AsString := '�����ǹ� ����.'
//
//
//      ///�����ǹ� �� ���� ������ 100% 
//          if FieldByName('ChargeRest').AsCurrency > 0 then
//            FieldByName('area13').AsString :=
//              FormatCurr('#,##0', (tbl_gam_info.FieldByName('SUSU').AsCurrency - tbl_gam_info.FieldByName('price20').AsCurrency)) ////Price00 ���� ����.
//              + 'x((' + FormatCurr('#,##0', curOnlyPrice)
//              + '-' + FormatCurr('#,##0', curLandBuild) + ')/' + FormatCurr('#,##0', curOnlyPrice)
//              + ')'
//          /// 2013.02.19 chargerest�� ������ �ٽ� �߰�
//            + '+' + FormatCurr('#,##0', tbl_gam_info.FieldByName('Price20').AsCurrency)
//              + #13 + '��' + FormatCurr('#,##0', FieldByName('ChargeRest').AsCurrency)
//          else FieldByName('area13').AsString := '�����ǹ��� ���Ǿ���.';
//
//      end;

    end;
    /// ���� 70% ���� ��. -----------------
    ///2012.09.17. ����.Price00��. 1.0/1.5������ ��� ���� ���������� �̹Ƿ� susu-����������� ����-----����

    /// ���� ������ ��� ����..-----------------
    //���� ���� ���� ����
    curDiscountLand :=
      Discount_VolumeLandCharge(FieldByName('LandVolumeCharge_Origin').AsCurrency,
      tbl_gam_info.FieldByName('PHILJI').AsInteger);
    //���� �⺻������ ���� �߰�.
    if tbl_gam_info.FieldByName('PHILJI').AsInteger > 0 then
      FieldByName('LandVolumeCharge').AsCurrency := 100000 +
        FieldByName('LandVolumeCharge_Origin').AsCurrency - curDiscountLand
    else FieldByName('LandVolumeCharge').AsCurrency := 0;

    //�ǹ� �⺻������ �����߰�.
    if tbl_gam_info.FieldByName('MULGUNSU').AsInteger > 0 then
      FieldByName('BuildVolumeCharge').AsCurrency := 30000 +
        FieldByName('BuildVolumeCharge').AsCurrency
    else FieldByName('BuildVolumeCharge').AsCurrency := 0;


    //���� ���� ���� ����
    curDiscountTree :=
      Discount_VolumeTreeCharge(FieldByName('TreeVolumeCharge_Origin').AsCurrency,
      FieldByName('TreeCnt').AsInteger);
    //���� �⺻������ ���� �߰�.
    if FieldByName('TreeCnt').AsInteger > 0 then
      FieldByName('TreeVolumeCharge').AsCurrency := 1000 +
        FieldByName('TreeVolumeCharge_Origin').AsCurrency
        - curDiscountTree
    else FieldByName('TreeVolumeCharge').AsCurrency := 0;
    //���๰ �⺻������ ���� �߰�. ///2012.09.27 �⺻������ ��Ÿ 15000 ->1500
    if FieldByName('StructureVolumeCharge').AsCurrency > 0 then
      FieldByName('StructureVolumeCharge').AsCurrency := 1500 + FieldByName('StructureVolumeCharge').AsCurrency;

    /// 2013.01.23 ������
    FieldByName('BusinessVolumeCharge').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency;

    //���� ��
    FieldByName('VolumeCharge').AsCurrency :=
      FieldByName('LandVolumeCharge').AsCurrency
      + FieldByName('BuildVolumeCharge').AsCurrency;

      /// 2013.01.02 �����տ��� ����� ���๰, ������, ������ �κ��� ����
//      + FieldByName('TreeVolumeCharge').AsCurrency
//      + FieldByName('MoveFeeVolumeCharge').AsCurrency
//      + FieldByName('StructureVolumeCharge').AsCurrency
//      + FieldByName('BusinessVolumeCharge').AsCurrency;
    //���� 30%
    FieldByName('VolumeChargePartial').AsCurrency :=
      Trunc((FieldByName('LandVolumeCharge').AsCurrency
      + FieldByName('BuildVolumeCharge').AsCurrency) * 0.3);
    //���� 30% ����
    if FieldByName('VolumeChargePartial').AsCurrency = 0 then
      FieldByName('area12').AsString := '�����ǹ� ����.'
    else
    ///2012.10.17 ���� ����.
      FieldByName('area12').AsString := '(' + FormatCurr('#,##0',
        FieldByName('LandVolumeCharge').AsCurrency)
        + '+' + FormatCurr('#,##0', FieldByName('BuildVolumeCharge').AsCurrency) +
        ')x0.3'
        + #13 + '��' + FormatCurr('#,##', FieldByName('VolumeChargePartial').AsCurrency);

    //���� �����
    FieldByName('ResearchLandVolumeCharge').AsCurrency := 10000 * tbl_gam_info.FieldByName('PHILJI').AsCurrency;


    //���� ����� ����
    if FieldByName('ResearchLandVolumeCharge').AsCurrency > 0 then
      FieldByName('area14').AsString := '10,000 �� ' + FormatCurr('#,##', tbl_gam_info.FieldByName('PHILJI').AsCurrency)
        + ' = ' + FormatCurr('#,##', FieldByName('ResearchLandVolumeCharge').AsCurrency)
    else FieldByName('area14').AsString := '';
    //�ǹ� �����
    FieldByName('ResearchBuildVolumeCharge').AsCurrency := 3000 * tbl_gam_info.FieldByName('MULGUNSU').AsCurrency;
    //�ǹ� ����� ����    //////////////////////
   if FieldByName('ResearchBuildVolumeCharge').AsCurrency > 0 then
      FieldByName('area16').AsString := '3,000 �� ' + FormatCurr('#,##', tbl_gam_info.FieldByName('MULGUNSU').AsCurrency)
        + ' = ' + FormatCurr('#,##', FieldByName('ResearchBuildVolumeCharge').AsCurrency)
    else FieldByName('area16').AsString := '';

    // 2014.03.04 ���� - �Ƿ����ڰ� 2014.03.07 ���� �����̸� ���ο� ������ ��ƾ ����
    if User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-') < '20140307' then
    begin

      /// 2013.01.10 �������� ���� - ������ �߰�
      //������ �� = ����/���� ȥ�� ������ + ������ + �Ǻ� ��
      /// 2013.01.16 ����+���������ᰡ 15������ �ȵɰ�� �⺻������ 15�������� �����ϱ� ���ؼ� MIXCHARGE �κ� �б�
      /// 2013.02.08 15���� ���� �񱳽ÿ��� ������ ������ �����ؼ� ��
      if FieldByName('ChargePartial').AsCurrency + FieldByName('VolumeChargePartial').AsCurrency + FieldByName('ChargeRest').AsCurrency - tbl_gam_info.FieldByName('Price20').AsCurrency > 150000 then
      begin

        FieldByName('MixCharge').AsCurrency :=
          FieldByName('ChargePartial').AsCurrency
          + FieldByName('VolumeChargePartial').AsCurrency
          + FieldByName('ChargeRest').AsCurrency
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 �������� ���� - ������ �߰�
        /// 2013.01.16 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ����
        /// 2013.02.06 �����Ǽ����� �ٽ� �߰�
        /// 2013.02.19 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ���� - �ٽ� ����
        //  + tbl_gam_info.FieldByName('Price20').AsCurrency
        + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end
      else begin

        FieldByName('MixCharge').AsCurrency :=
          150000 // 15���� �⺻������
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 �������� ���� - ������ �߰�
        /// 2013.01.16 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ����
        /// 2013.02.06 �����Ǽ����� �ٽ� �߰�
        + tbl_gam_info.FieldByName('Price20').AsCurrency
          + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end;

    end else
    begin

      /// 2013.01.10 �������� ���� - ������ �߰�
      //������ �� = ����/���� ȥ�� ������ + ������ + �Ǻ� ��
      /// 2014.03.04 ����+���������ᰡ 20������ �ȵɰ�� �⺻������ 20�������� �����ϱ� ���ؼ� MIXCHARGE �κ� �б�
      /// 2014.03.04 20���� ���� �񱳽ÿ��� ������ ������ �����ؼ� ��
      if FieldByName('ChargePartial').AsCurrency + FieldByName('VolumeChargePartial').AsCurrency + FieldByName('ChargeRest').AsCurrency - tbl_gam_info.FieldByName('Price20').AsCurrency > 200000 then
      begin

        FieldByName('MixCharge').AsCurrency :=
          FieldByName('ChargePartial').AsCurrency
          + FieldByName('VolumeChargePartial').AsCurrency
          + FieldByName('ChargeRest').AsCurrency
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 �������� ���� - ������ �߰�
        /// 2013.01.16 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ����
        /// 2013.02.06 �����Ǽ����� �ٽ� �߰�
        /// 2013.02.19 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ���� - �ٽ� ����
        //  + tbl_gam_info.FieldByName('Price20').AsCurrency
        + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end
      else begin

        FieldByName('MixCharge').AsCurrency :=
          200000 // 20���� �⺻������
          + FieldByName('ResearchLandVolumeCharge').AsCurrency
          + FieldByName('ResearchBuildVolumeCharge').AsCurrency
        /// 2013.01.10 �������� ���� - ������ �߰�
        /// 2013.01.16 �����Ǽ������ CHARGEREST�� ���ԵǹǷ� PRICE20�� ����
        /// 2013.02.06 �����Ǽ����� �ٽ� �߰�
        + tbl_gam_info.FieldByName('Price20').AsCurrency
          + tbl_gam_info.FieldByName('YEBI').AsCurrency
          + tbl_gam_info.FieldByName('GONGBU').AsCurrency
          + tbl_gam_info.FieldByName('SILBI').AsCurrency
          + tbl_gam_info.FieldByName('YONGYEUK').AsCurrency

      end;

    end;

    //����//�ΰ���ġ��//�Ѱ�
    FieldByName('MixChargeJELSA').AsCurrency := FieldByName('MixCharge').AsCurrency -
      Trunc(FieldByName('MixCharge').AsCurrency / 1000) * 1000;
    FieldByName('MixCharge').AsCurrency := FieldByName('MixCharge').AsCurrency -
      FieldByName('MixChargeJELSA').AsCurrency;
    FieldByName('MixChargeTAX').AsCurrency := Trunc(FieldByName('MixCharge').AsCurrency * 0.1);
    FieldByName('MixChargeTOTAL').AsCurrency := FieldByName('MixCharge').AsCurrency +
      FieldByName('MixChargeTAX').AsCurrency;
    //����//�ΰ���ġ��//�Ѱ� ����.
    strMemo := FormatCurr('#,##', FieldByName('ChargePartial').AsCurrency);

    if FieldByName('ChargeRest').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', FieldByName('ChargeRest').AsCurrency);

    if FieldByName('VolumeChargePartial').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', FieldByName('VolumeChargePartial').AsCurrency);

    /// 2013.02.06 ������ ���� �߰�
    /// 2013.02.19 ������ chargerest�� ���ԵǹǷ� ����
//    if FieldByName('BusinessVolumeCharge').AsCurrency > 0 then
//      strMemo := strMemo + '+' + FormatCurr('#,##',
//        FieldByName('BusinessVolumeCharge').AsCurrency);

///2012.10.08 ���信�� ���� ������ ó����. ����
    if tbl_gam_info.FieldByName('YEBI').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##', tbl_gam_info.FieldByName('YEBI').AsCurrency);


    if FieldByName('ResearchLandVolumeCharge').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##',
        FieldByName('ResearchLandVolumeCharge').AsCurrency);

    if FieldByName('ResearchBuildVolumeCharge').AsCurrency > 0 then
      strMemo := strMemo + '+' + FormatCurr('#,##',
        FieldByName('ResearchBuildVolumeCharge').AsCurrency);


///2012.10.08 ���信�� ���� ������ ó����. ��.
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
///2012-09-13 ������ ���ν��� ����. ��.


function TXForm1.Discount_VolumeLandCharge(LandVolume: Currency;
  LancCnt: Integer): Currency;
var
  curLandCharge, curDiscountPrice: Currency; //���� �� ������ //���αݾ�
  intLandCount, intRestCount: Integer; //���� ��//���� ������
  strFifth, strFourth, strThird, strSecond, strMemo: string;
begin
  curLandCharge := 0;
  curDiscountPrice := 0;
  intLandCount := LancCnt; //tbl_gam_info.FieldByName('PHILJI').AsInteger;
  intRestCount := intLandCount;
//  tbl0.FieldByName('area10').AsString := FormatCurr('#,##', LandVolume);///2012.10.11 �Ʒ����� ����ȭ ��.�ּ�ó��.
  strFifth := '';
  strFourth := '';
  strThird := '';
  strSecond := '';
  Result := 0;
  ///2012-09-13 ������ ����. �ʱⰪ����.
  tbl0.FieldByName('area10').AsString := '';

  ///2012-09-13 ������ ����.: ���αݾ� ���� ���� ����.
 ///2012.10.11 ���� ����: +ǥ�� �߰�. ���αݾ� ����
  if LandVolume > 0 then
    tbl0.FieldByName('area10').AsString := '100,000+' + FormatCurr('#,##', LandVolume)
      + #13 + '=' + FormatCurr('#,##', 100000 + LandVolume) + '(���αݾ׾���)';

  if intLandCount < 21 then
    exit; //���αݾ� ����.

  curLandCharge := LandVolume; //tbl0.FieldByName('LandVolumeCharge_origin').AsCurrency;

  if intRestCount > 500 then begin // ��.501��������
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 500) / intLandCount) * 0.4);
    strFifth := IntToStr((intRestCount - 500)) + '/' + IntToStr(intLandCount) + '* 0.4';
    intRestCount := 500;
  end;
  if intRestCount > 250 then begin // ��.251��������
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 250) / intLandCount) * 0.3);
    strFourth := IntToStr((intRestCount - 250)) + '/' + IntToStr(intLandCount) + '* 0.3';
    intRestCount := 250;
  end;
  if intRestCount > 150 then begin // ��.151��������
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 150) / intLandCount) * 0.2);
    strThird := IntToStr((intRestCount - 150)) + '/' + IntToStr(intLandCount) + '* 0.2';
    intRestCount := 150;
  end;
  if intRestCount > 20 then begin // ��.21��������
    curDiscountPrice := curDiscountPrice
      + (curLandCharge * ((intRestCount - 20) / intLandCount) * 0.1);
    strSecond := IntToStr((intRestCount - 20)) + '/' + IntToStr(intLandCount) + '* 0.1';
    intRestCount := 20;
  end;

  strMemo := strSecond;
  if strThird <> '' then strMemo := strMemo + '+' + strThird;
  if strFourth <> '' then strMemo := strMemo + '+' + strFourth;
  if strFifth <> '' then strMemo := strMemo + '+' + strFifth;

///2012.10.11. ���� + ��ȣ �ִ��� Ȯ���� ���ּ���.
  if LandVolume > 0 then
    tbl0.FieldByName('area10').AsString := '100,000+' + FormatCurr('#,##', LandVolume)
      + '-' + FormatCurr('#,##', LandVolume) + '*(' + strMemo
      + ')' + #13 + '��' + FormatCurr('#,##', 100000 + curLandCharge - Trunc(curDiscountPrice));

  //����
  Result := Trunc(curDiscountPrice);

end;

function TXForm1.Discount_VolumeTreeCharge(const TreeVolume: Currency;
  const TreeCnt: Integer): Currency;
var
  curTreeCharge, curDiscountPrice: Currency; //���� �� ������ //���αݾ�
  intTreeCount, intRestCount: Integer; //���� ��//���� ������
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
  ///2012-09-13 ������ �ʱ�ȭ �߰�.
  tbl0.FieldByName('area11').AsString := '';


  ///2012-09-13 ������ : ���αݾ� ���� ���� ����.
   if TreeVolume > 0 then
    tbl0.FieldByName('area11').AsString := '1,000+' + FormatCurr('#,##', TreeVolume)
      + #13 + '=' + FormatCurr('#,##', 1000 + TreeVolume) + '(���αݾ׾���)';

  if intTreeCount < 201 then
    exit; //���αݾ� ����.

  curTreeCharge := TreeVolume;

  if intRestCount > 10000 then begin // 10000����
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 10000) / intTreeCount) * 0.4);
    strFourth := IntToStr((intRestCount - 10000)) + '/' + IntToStr(intTreeCount) + '* 0.4';
    intRestCount := 10000;
  end;
  if intRestCount > 5000 then begin // 5000����
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 5000) / intTreeCount) * 0.3);
    strThird := IntToStr((intRestCount - 5000)) + '/' + IntToStr(intTreeCount) + '* 0.3';
    intRestCount := 5000;
  end;
  if intRestCount > 500 then begin // ��.21��������
    curDiscountPrice := curDiscountPrice
      + (curTreeCharge * ((intRestCount - 500) / intTreeCount) * 0.2);
    strSecond := IntToStr((intRestCount - 500)) + '/' + IntToStr(intTreeCount) + '* 0.2';
    intRestCount := 500;
  end;
  if intRestCount > 200 then begin // ��.501��������
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

  ///2012-09-13 ������ : ���� ����.
  tbl0.FieldByName('area11').AsString := '1000+' + FormatCurr('#,##', TreeVolume)
    + '-' + FormatCurr('#,##', TreeVolume) + '*(' + strMemo
    + ')' + #13 + '��' + FormatCurr('#,##', 1000 + curTreeCharge - Trunc(curDiscountPrice));
  //����
  Result := Trunc(curDiscountPrice);

end;

 procedure TXForm1.btnVolumeAutoCalcClick(Sender: TObject);
begin
  if tbl0.FieldByName('ChargeGubun').AsString = 'V' then
  begin
     ///2012.09.27 ����.����.
    Compute_susu;
    //���� ���� �� compute_susu �� �� ���ԵǾ������Ƿ�  �ּ�ó��
    //Sum_VolumeChargeFromObject;
    //Compute_VolumeCharge;
    ///2012.09.27 ����.��.
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
//    if  (copy(tbl_gam_info.FieldByName('custpart').AsString,I,8) = '�ڻ����')  then
//     begin
//       Kind := 1;
//       Break;
//     end;
//     end;
   // ������ �߰� ����϶�
   // �㺸�ε� ������ û���� ��ŷ� ����� ����.
  ///2012.09.27 ��������. gam_info������ ������. ����....

  if (tbl0.Active) and (not (tbl0.state in [dsInsert, dsEdit])) then
    tbl0.Edit;

  if (tbl0.Active) and (tbl0.FindField('ChargeGubun') <> nil) //
    and (tbl_gam_info.Active) and (tbl_gam_info.FindField('ChargeGubun') <> nil) then
  begin
    tbl0.FieldByName('ChargeGubun').AsString := tbl_gam_info.FieldByName('ChargeGubun').AsString;
  end
  else
  begin ///2012-09-13 ������ �������� �������� �������� ���� �߰� ����
    ///���� ��� ������ ������. IsVolumeCharge ������ �����ϰ�. ���� RDB�� �ٲ� ����ϼ���. ���ϴ� KapaTMS�� �����Դϴ�.
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
  ///2012-09-13 ������ �������� �������� �������� ���� �߰� ��.
  end;
  ///2012.09.27 ��������. gam_info������ ������. ��.....

  pnlVolume.Visible := (rdbChargeGubun.ItemIndex = 0);

  ///2012.09.27 ���� component control ����..
  rdbChargeGubun.Enabled := FBolCompensation;


  /// 2013.02.13 �������� ���� - ������ �㺸�� �����ϴ� �κа� �з������Ұ� �κ��� �ּ�ó��
//  if (FBolCompensation) then tbl0.FieldByName('Chk_Dambo').AsInteger := 0; //�����Ǵ㺸�� setting
//  cmb_susuj.Enabled := not FBolCompensation; // �з� �����Ұ�.

  ///2012.10.11 //�����ο� pnlCompensation �߰� �� txtLaw�� �÷��ֽð� �����α��رݾ� edit�߰�. ����.
  ///2012.10.17 �ڵ��϶��� ���̰�.����. txtLaw�� ũ��, ������ �ٲ����, ��¦�Ÿ��� �߽��ϴ�.
  if (FBolCompensation) and (gs_yn.ItemIndex = 0) and (tbl0.FieldByName('Chk_Auto').AsInteger = 0) then
    txtLaw.Visible := true //2012.10.11 ����.//txtLaw.Visible := true
  else txtLaw.Visible := false; // txtLaw.Visible := false;
  ///2012.10.11 //�����ο� pnlCompensation �߰� �� txtLaw�� �÷��ֽð� �����α��رݾ� edit�߰�. ��.

  /////// 2013.02.06 - ������, ����û, ����, ��õ���϶�
  if (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'LAN') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'TEM') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'OTH') or (tbl_gam_info.FieldByName('GUBUN_CODE').AsString = 'CTS') then
  begin

  /// 2013.02.06 // ���������� ī��Ʈ
  /// 2013.02.19 // ������, ���, ����� �߰�
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

  ///2013.01.02 // ���幰 �ǹ��� ī��Ʈ
  /// 2013.02.19 // ������, ���, ����� �߰�
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


    /// 2013.02.13 ������û������ ������ �ڵ������ �ȵȴٰ� �Ͽ� �߰�
  if tbl_gam_info.FieldByName('SUSU').AsCurrency = 0 then
  begin
    Compute_susu;
  end;
  //2013.07.18���Ͽ� �߰�
   if (tbl_gam_info.FieldByName('purpose').AsString = 'ü��ó��') then
    begin
     cmb_susuj.ItemIndex := 0;
    end     //////////////
//    else if (tbl_gam_info.FieldByName('Purposecode').AsString = '9C') or (tbl_gam_info.FieldByName('Purposecode').AsString = '9D') or
//           (tbl_gam_info.FieldByName('Purposecode').AsString = '9E') or (tbl_gam_info.FieldByName('Purposecode').AsString = '9F') or
//           (tbl_gam_info.FieldByName('Purposecode').AsString = '9G')   then
//    begin
//     cmb_susuj.ItemIndex := 0;
//    end
    else if (copy(tbl_gam_info.FieldByName('purpose').AsString,1,4) = '����') then  begin
      cmb_susuj.ItemIndex := 0;
    end

    else if (tbl_gam_info.FieldByName('purpose').AsString = '���') or  (copy(tbl_gam_info.FieldByName('doc_id').AsString,9,1) = '2' ) then  begin
      cmb_susuj.ItemIndex := 1;
    end


   /// 2013.02.13 �������� �ʱ�ȭ ���� �κ�
  else if (Pos('��������', tbl_gam_info.fieldByName('custpart').AsString) > 0) and ((Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = '2') or (Copy(tbl_gam_info.fieldByName('PurposeCode').AsString, 1, 1) = 'A')) then
  begin
    cmb_susuj.ItemIndex := 2;
  end
  else cmb_susuj.ItemIndex := 0;
  if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then Compute_susu;
 // do_SetCombo;
  ///2013.09.06   ���Ͽ� ���� ������ ��������� ��������

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
  if (Pos('�츮����', tbl_gam_info.fieldByName('custpart').AsString) > 0) then
    begin

         Set_WooriBank;


    end;

    ///////////////////////////////////

end;


procedure TXForm1.Sum_VolumeChargeFromObject;
var
//  aLocalQry: TEasyQuery;///2012.10.05 �ּ�ó��. �������FLocalQry: TEasyQuery;�� �ø�
  bolExistsLand, bolExistsBuild: Boolean;
//  strLandTableName, strBuildTableName: string; ///2012-09-13 ������ ���� �߰�.///2012.10.05 �ּ�ó��. ����ߺ��߰� �������� ����.
  DongCnt, LandTreeCnt: Integer;
  LandBuildPrice, TreePrice, StructurePrice, MoveFeePrice, EtcPrice,
    LandBuildVolumeCharge, TreeVolumeCharge, StructureVolumeCharge, BusinessVolumeCharge: Currency;
  ///2012.09.27 ���� �߰�.
  APublic10Price, APublic15Price, A10Price, A15Price: Currency;
begin

///2012.10.05 �ּ�ó��. ����ߺ��߰� �������� ����.�� �ּ�ó��

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
//        strLandTableName := FieldByName('table_name').AsString; ///2012.10.05 �ּ�ó��. ����ߺ��߰� �������� ����.�� �ּ�ó��
      end;

      if Locate('table_name', 'pbs_good', [loPartialKey]) then
      begin
        bolExistsBuild := true;

//        strBuildTableName := FieldByName('table_name').AsString;///2012.10.05 �ּ�ó��. ����ߺ��߰� �������� ����.�� �ּ�ó��
      end

    end;
  finally
//    FreeAndNil(aLocalQry);///2012.10.05 �ּ�ó��. form close �� �̵�.
  end;

  if (not bolExistsLand) and (not bolExistsBuild) then
  begin
    ShowMessage('����,���� ���� ���. �� �� ���� ����� �Ұ����մϴ�.');
    Clear_VolumeCharge;
    Exit;
  end;

  ///2012.10.17. �ڵ��� ���� �ʱ�ȭ . ������ ��� �Էµ� �ݾ׼�����. �״�� ��. ����
  if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then // �ڵ�.
  begin
    tbl_gam_info.FieldByName('price0').AsCurrency := 0;
    tbl_gam_info.FieldByName('price1').AsCurrency := 0;
    tbl_gam_info.FieldByName('price0_1').AsCurrency := 0;
    tbl_gam_info.FieldByName('price1_1').AsCurrency := 0;
    tbl_gam_info.FieldByName('price').AsCurrency := 0;
    tbl_gam_info.FieldByName('price2').AsCurrency := 0;
    ///2012.10.17 ������ ���� ������ ����ȭ ���� �߰�.
    tbl_gam_info.FieldByName('price20').AsCurrency := 0; ///2012.10.22 ������Ͻ� ���� �����ŵ� �մϴ�.Ȯ�����ּ���. ������ �ݾ��� ��� �������ô� �����̿�.
  end;
  ///2012.10.17. �ڵ��� ���� �ʱ�ȭ . ������ ��� �Էµ� �ݾ׼�����. �״�� ��. ��.

  if (not tbl0.Active) or (not tbl_gam_info.Active) then
  begin
    ShowMessage('�����ͼ��� Ȱ��ȭ ���� ���� ����� �Ұ����մϴ�.');
    exit;
  end;

  if not (tbl0.state in [dsInsert, dsEdit]) or not (tbl_gam_info.state in [dsInsert, dsEdit]) then
  begin
    tbl0.edit;
    tbl_gam_info.edit;
  end;

  ///2012.10.11. ���� ������ ���� �÷� �ʱ�ȭ ����
  tbl0.FieldByName('Bill15Price').AsCurrency := 0;
  tbl0.FieldByName('Bill10Price').AsCurrency := 0;
  tbl0.FieldByName('BillPrice').AsCurrency := 0;
  ///2012.10.11. ���� ������ ���� �÷� �ʱ�ȭ ��.

  if bolExistsBuild then
  begin
    LandBuildPrice := 0;
    LandBuildVolumeCharge := 0;
    LandTreeCnt := 0; DongCnt := 0;
    TreePrice := 0; StructurePrice := 0; MoveFeePrice := 0; EtcPrice := 0; TreeVolumeCharge := 0; StructureVolumeCharge := 0;
    BusinessVolumeCharge := 0;
    ///2012.09.27 �߰��� ���� �⺻��
    APublic10Price := 0; APublic15Price := 0; A10Price := 0; A15Price := 0;

    SumVolumeChargeForBuild(LandBuildPrice, LandBuildVolumeCharge, DongCnt, LandTreeCnt, TreePrice, StructurePrice, MoveFeePrice, EtcPrice, TreeVolumeCharge,
      StructureVolumeCharge, ///2012-09-13 ������. ������ MoveFeeVolumeCharge ����.
      BusinessVolumeCharge, //strBuildTableName ,///2012.10.05 �ּ�ó��. ����ߺ��߰� �������� ����.�� �ּ�ó��
      ///2012.09.27 ���� �߰�.
      APublic10Price, A10Price, A15Price);

   /////////////////////���Ͽ� 2013.04.05
    ///2012.10.17. �ڵ��� ����. �ջ�ǵ���.����.
    if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then // �ڵ�.
    begin
      tbl_gam_info.FieldByName('price0').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency + A10Price;
      tbl_gam_info.FieldByName('price1').AsCurrency := tbl_gam_info.FieldByName('price1').AsCurrency + A15Price;
      ///2012.10.22 ///�������� ���رݾ׿� ���� 1.0/1.5 �򰡱ݾ� ���ش޶�� ��û���� ����.����.
      tbl_gam_info.FieldByName('price0_1').AsCurrency := tbl_gam_info.FieldByName('price0_1').AsCurrency + A10Price;
      tbl_gam_info.FieldByName('price1_1').AsCurrency := tbl_gam_info.FieldByName('price1_1').AsCurrency + A15Price;
      ///2012.10.22 ///�������� ���رݾ׿� ���� 1.0/1.5 �򰡱ݾ� ���ش޶�� ��û���� ����.��.
      tbl_gam_info.FieldByName('price2').AsCurrency := APublic10Price; //������ �ջ�ݾ�
    end;

    //�򰡱ݾ� ���.
    tbl0.FieldByName('BuildPrice').AsCurrency := LandBuildPrice;
    tbl_gam_info.FieldByName('MULGUNSU').AsInteger := DongCnt;
    tbl0.fieldByName('TreeCnt').AsInteger := LandTreeCnt;
    tbl0.FieldByName('TreePrice').AsCurrency := TreePrice;
    tbl0.FieldByName('StructurePrice').AsCurrency := StructurePrice;
    tbl0.FieldByName('MoveFeePrice').AsCurrency := MoveFeePrice;
    tbl0.FieldByName('EtcPrice').AsCurrency := EtcPrice;


   //������ ���.
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
    //2012.09.27 �����ʱ�ȭ �߰�.
    APublic10Price := 0; APublic15Price := 0; A10Price := 0; A15Price := 0;

    SumVolumeChargeForLand(LandBuildPrice, LandBuildVolumeCharge, LandTreeCnt, //strLandTableName,///2012.10.05 �ּ�ó��. ����ߺ��߰� �������� ����.�� �ּ�ó��
      APublic10Price, APublic15Price, A10Price, A15Price); //�����߰�.

    ///2012.10.17. �ڵ��� ����. �ջ�ǵ���.����.
    if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then // �ڵ�.
    begin
      /// 2012.09.27 �����򰡱ݾ� ���
      tbl_gam_info.FieldByName('price0').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency + A10Price;
      tbl_gam_info.FieldByName('price1').AsCurrency := tbl_gam_info.FieldByName('price1').AsCurrency + A15Price;
      tbl_gam_info.FieldByName('price0_1').AsCurrency := tbl_gam_info.FieldByName('price0_1').AsCurrency + APublic10Price;
      tbl_gam_info.FieldByName('price1_1').AsCurrency := tbl_gam_info.FieldByName('price1_1').AsCurrency + APublic15Price;
    end;

    //�����򰡱ݾ�
    tbl0.fieldByName('LandPrice').AsCurrency := LandBuildPrice;
    tbl_gam_info.FieldByName('PHILJI').AsInteger := LandTreeCnt;
    //���� ������ ���.
    tbl0.FieldByName('LandVolumeCharge_Origin').AsCurrency := LandBuildVolumeCharge;
  end;

  //������ �򰡱ݾ׿�..��������. Ȥ�� �򰡱ݾ��� 50%�� �־��ֱ� ������. SumVolumeChargeForLand ����.
  ///2012.10.17 ��ȸ ���α׷��� ���� �� �򰡱ݾ׿� �������� ���մϴ�. ���� ����  ���Ͽ� �°� �������ּ���.
  tbl_gam_info.FieldByName('price').AsCurrency := tbl_gam_info.FieldByName('price0').AsCurrency + tbl_gam_info.FieldByName('price1').AsCurrency
    + tbl_gam_info.FieldByName('price2').AsCurrency;
  ///2012.10.11 ���� ������ ���� �ݾ�
  tbl0.FieldByName('BillPrice').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + tbl0.FieldByName('Bill15Price').AsCurrency;
end;
//2012.10.05 ���� ���ν��� ���������� ����.

procedure TXForm1.SumVolumeChargeForBuild(var BuildPrice,BuildVolumeCharge: Currency; var DongCnt, TreeCnt: Integer;
  var TreePrice, StructurePrice, MoveFeePrice, EtcPrice, TreeVolumeCharge,
  StructureVolumeCharge, BusinessVolumeCharge: Currency;
  ///2012.10.05 �ּ�ó�� const ATableName: string;
  var APublic10Price, A10Price, A15Price: Currency);
var aLocalQry: TEasyQuery;
  PriceField_Value, VolumeField_Value: string;
  curTemp, curBiz10Price, curBiz15Price: currency; ///2012.10.22 ������ ������ ����  �߰�.
  intCount: Integer; StrCount: string; ///2012.10.22 ������ ���� ���� �����߰�
begin
  ///2012.10.05 �ټ����� �������� ���� sum �ؿ���.
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
            //���� �򰡱ݾ� ��� : ����edb ���Ͽ��� sum
              if FieldByName('tradeYN').AsString = 'Y' then
              begin
                APublic10Price := APublic10Price + Str2Currency(PriceField_Value);
                //2012.10.22 ���� ���� -> ���ڷ� ��� : ������ �ִ� ���� �����Խ��ϴ�.���θ��� �ٸ� ���� ������̽ø�. ���η��� Ȱ���ϼ���.
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
                //2012.10.22 ���� ���� -> ���ڷ� ��� ��.

                //2012.10.17 ������ ������ ���� �߰�. ������ ������� ������� ������ ������ �¿�°� �´ٰ� �ؼ�.
                if tbl0.FieldByName('Chk_Auto').AsInteger = 0 then
                begin
                  //2012.10.22. ������ ������ 1.5 �� ���� ������ ����.
                  //������ ������ 1���� ������ ���߰��ؼ� ���� �� �帮�� ���� �帳�ϴ�.
                  //�ݾ��� 5õ���� �̸��� ��κ�������, Ȥ�ö� 5õ���� �̻��� ���. ������ 1���� ������ ���߰��� ������ �ۼ����ּ���.
                  curTemp := 0; curBiz10Price := 0; curBiz15Price := 0;
                  if intCount = 1 then
                  begin
                    if FieldByName('RATIO').AsString = 'Y' then
                      curBiz15Price := Str2Currency(PriceField_Value)
                    else curBiz10Price := Str2Currency(PriceField_Value);

                    // 2014.03.04 ���� - �������ڰ� 2014.03.07 ���� �����̸� ���ο� ������ ��ƾ ����
//                    tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency //
//                      + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1');

                      tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency
                        + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1', User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));

                  end
                  else //�������� 2�� �̻� �� ���: 5õ���� �̸����� ����. ������ �ϵ��ڵ��߽��ϴ�.
                  begin
                    // 2013.01.23 ������ ���� (�������� ������ �����ϵ��� ����)
//                    if FieldByName('RATIO').AsString = 'Y' then
//                      curTemp := 225000 * intCount
//                    else curTemp := 150000 * intCount;
//                    tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency //
//                      + curTemp;

                    if FieldByName('RATIO').AsString = 'Y' then
                      curBiz15Price := Str2Currency(PriceField_Value)
                    else curBiz10Price := Str2Currency(PriceField_Value);

                    // 2014.03.04 ���� - �������ڰ� 2014.03.07 ���� �����̸� ���ο� ������ ��ƾ ����
//                    tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency //
//                      + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1');

                      tbl_gam_info.FieldByName('Price20').AsCurrency := tbl_gam_info.FieldByName('Price20').AsCurrency
                        + GetSusu(curBiz10Price, curBiz15Price, curTemp, strtofloat(edit_rate.text), '1', User_Remove_char(Trim(tbl_gam_info.FieldByName('receiptdate').AsString), '-'));

                  end;
                  //2012.10.22. ������ ������ 1.5 �� ���� ������ ����. ��.
                end;
                //2012.10.17 ������ ������ ���� �߰�. ��.
              end
              else begin
                if FieldByName('RATIO').AsString = 'Y' then
                  A15Price := A15Price + Str2Currency(PriceField_Value)
                else A10Price := A10Price + Str2Currency(PriceField_Value);
              end;

              if (fieldByName('objgubun').AsString = '�ǹ�') then
              begin
                BuildPrice := BuildPrice + Str2Currency(PriceField_Value);
              end
              else if (fieldByName('objgubun').AsString = '����') then
              begin
                TreePrice := TreePrice + Str2Currency(PriceField_Value);
              end
              else if (fieldByName('objgubun').AsString = '������') then
              begin
                MoveFeePrice := MoveFeePrice + Str2Currency(PriceField_Value);
              end
              else if (fieldByName('objgubun').AsString = '���๰') then
              begin
                StructurePrice := StructurePrice + Str2Currency(PriceField_Value);
              end
              else //��Ÿ//���幰
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
       //error ��Ȳ.
      ShowMessage(E.Message + ' dataset open �Ұ�. binder���� ������, ������ ���̺��� �����ϴ�.');
      FreeAndNil(aLocalQry);
    end;
  end;

  //2012.10.05 ��ȸ RDB ������ ���� ���� sum �ϱ�.
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
          if (fieldByName('objgubun').AsString = '�ǹ�') and (fieldByName('DongGubun').AsString = '1') then
          begin
            BuildVolumeCharge := BuildVolumeCharge + Str2Currency(VolumeField_Value);
            DongCnt := DongCnt + 1
          end
          else if (fieldByName('objgubun').AsString = '����') then
          begin
            TreeCnt := TreeCnt + fieldByName('Cnt').AsInteger;
            TreeVolumeCharge := TreeVolumeCharge + Str2Currency(VolumeField_Value);
          end
          else if (fieldByName('objgubun').AsString = '���๰') then
          begin
            StructureVolumeCharge := StructureVolumeCharge + Str2Currency(VolumeField_Value);
          end
          else if (fieldByName('objgubun').AsString = '������') then
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
       //error ��Ȳ.
      ShowMessage(E.Message);
    end;
  end;

  //2012.10.11. ���� ������ ���� �÷�
  tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + A10Price;
  tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + A15Price;
  //2012.10.11. ���� ������ ���� �÷���.

end;



///2012.10.05 �Ʒ� ���ν��� ���������� ������.

procedure TXForm1.SumVolumeChargeForLand(var LandPrice,
  LandVolumeCharge: Currency; var LandCnt: Integer;
  ///2012.10.05 �ּ�ó��   const ATableName: string  ;
  var APublic10Price, APublic15Price, A10Price, A15Price: Currency);
var
  aLocalQry: TEasyQuery;
  APublicPriceField_Value, PriceField_Value, VolumeField_Value: string;
begin
  ///2012.10.05 �ټ����� �������� ���� sum �ؿ���.
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
             ///2012.10.10.üũ���� ���� �߰�.///2012.10.11 �ٽ��ѹ� Ȯ��. 'D'�� �Ǹ�. �ջ����.   ///���Ͽ� ����
             if (UpperCase(fieldByName('Gubun').AsString) = 'D') then
            begin
              APublicPriceField_Value := fieldByName('PAmt').AsString; //������������
              PriceField_Value := fieldByName('GAmt').AsString; //�����򰡱ݾ�
              //�򰡱ݾ� ���.
              if (PriceField_Value <> emptyStr) and (IsNumberOnly(PriceField_Value)) then
              begin
                if FieldByName('RATIO').AsString = 'Y' then
                  A15Price := A15Price + Str2Currency(PriceField_Value)
                else A10Price := A10Price + Str2Currency(PriceField_Value);
//                ShowMessage(FieldByName('RATIO').AsString + PriceField_Value);
              end;
              //�������� ���
              if (APublicPriceField_Value <> emptyStr) and (IsNumberOnly(APublicPriceField_Value)) then
              begin
                if FieldByName('RATIO').AsString = 'Y' then
                  APublic15Price := APublic15Price + Str2Currency(APublicPriceField_Value)
                else APublic10Price := APublic10Price + Str2Currency(APublicPriceField_Value);
              end;
            end; ///2012.10.10.üũ���� ���� �߰�.��.
            Next;
          end;
        end;
      end;
      FLocalQry.Next;
    end;
  except on E: Exception do
    begin
      //error ��Ȳ.
      ShowMessage(E.Message + ' dataset open �Ұ�. binder���� ������, ������ ���̺��� �����ϴ�.');
      FreeAndNil(aLocalQry);
    end;
  end;
  ///2012.10.05 ��ȸ RDB ������ ���� ���� sum �ϱ�.
  try
     with FKbmQry do
    begin
      if Active then close;
      Query.Text := 'exec APWORKS_LAND_KAPA_LAND_SEL :Gubun_Code,:id';
      Params.ParamByName('Gubun_Code').AsString := tbl_gam_info.FieldByName('GUBUN_CODE').AsString;
      Params.ParamByName('id').AsInteger := StrToIntDef(tbl_gam_info.FieldByName('SA_NO').asstring, 0);
      Open;
      /// 2013.01.02 ������������ ������ȸ ���蹰�ǿ��� �������� �ʰ� ����� ������ �ʵ带 ������
      //LandCnt := RecordCount;
      LandCnt := tbl_gam_info.FieldByName('PHILJI').AsInteger;

      First;
      while not Eof do
      begin
        VolumeField_Value := fieldByName('VolumeCharge').AsString; //����������.
        LandVolumeCharge := LandVolumeCharge + Str2Currency(VolumeField_Value);

        Next;
      end;

    end;
  except on E: Exception do
    begin
       //error ��Ȳ.
      ShowMessage(E.Message);
    end;
  end;

   //�������������� ���� ������ ������ �Ѿ��� �����򰡾��� 50%�� ����ġ�� ��쿡��
  //�����򰡾��� 50%�� ����ϴ� �ݾ�

    ///2012.10.11. ���� ������ ���� �÷� ���� �ּ�ó���� �ҽ� �̵�����
  /// 2013.03.29 LandPrice := (A10Price + A15Price); ///2012.10.11. �ҽ��̵�

  if (gs_yn.ItemIndex = 0) then  /////////////////////////////////////////////////////2014.04.14 ��������
   //if ((APublic10Price + APublic15Price) < ((A10Price + A15Price) / 2)) and (tbl_gam_info.FieldByName('company_name').asstring = '��������') then
  ///////���Ͽ� ���� ������ ���� ���õǵ��� ����
   begin

     LandPrice := ((A10Price + A15Price) / 2);  /// 2013.03.29 ����
  //    A10Price := (A10Price / 2);                /// 2013.04.03 ����
  //    A15Price := (A15Price / 2);                /// 2013.04.03 ����
     txtLaw.Visible := True;

      ///2012.11.2 ���� A10Price = 0 �� ��� 0������ �����߻�.
      /// 2013.03.29 A10Price, A15Price �� 1/2 ���� �ƴ� ������ �ִ´�.
       if A10Price > 0 then
        tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + (A10Price / 2) /// 2013.04.3 ����
      else tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + 0;
      if A15Price > 0 then
         tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + (A15Price / 2) /// 2013.04.3 ����
      else tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + 0;
      ///2012.11.2 ���� A10Price = 0 �� ��� 0������ �����߻�.��.

  end

  else
  begin //������ ��쿣. ������������ = ���� �򰡱ݾ�

    LandPrice := (APublic10Price + APublic15Price); /// 2013.03.29 ����
   // A10Price := APublic10Price;                    /// 2013.04.3 ����
   // A15Price := APublic15Price;                    /// 2013.04.3 ����
    txtLaw.Visible := False;

    tbl0.FieldByName('Bill10Price').AsCurrency := tbl0.FieldByName('Bill10Price').AsCurrency + APublic10Price;
    tbl0.FieldByName('Bill15Price').AsCurrency := tbl0.FieldByName('Bill15Price').AsCurrency + APublic15Price;
    //������������.
    tbl0.FieldByName('Chk_Amt').AsInteger := 1;
  end;
  if ((APublic10Price + APublic15Price) < ((A10Price + A15Price) / 2)) and (tbl_gam_info.FieldByName('company_name').asstring = '��������') then begin
     ///2012.11.2 ����� Ȯ�� �޼����߰�.
     if tbl0.FieldByName('Chk_Amt').AsInteger = 1 then
       ShowMessage('�������������� ���� ������ ������ �Ѿ��� �����򰡾��� 50%�� ����ġ�� ��쿡��,' + #13
         + '�����򰡾��� 50%�� ����ϴ� �������Ѿױݾ����� ������ ���˴ϴ�.' + #13
         + '�ε����� ���, ���������� ������ �������� ������� �ϽǼ� ������, �������ع��� Ȯ���Ͻʽÿ�.');
     ///2012.11.2 ����� Ȯ�� �޼����߰� ��.

      //�����򰡱ݾ�.
     tbl0.FieldByName('Chk_Amt').AsInteger := 0;
    end;


  ///2012.10.11. ���� ������ ���� �÷� ���� �ּ�ó���� �ҽ� �̵� ��.
end;


///2012.10.22. ���� ���� ���� -> ���� ���� ������ �߰�. ������ �ִ� ���� �״�� ���� �Խ��ϴ�. ����.
///���θ���. ������ ��� ������ �����ø�. �����Ͻô� ���� �״�� �������ø� �˴ϴ�.

function TXForm1.Divide_Token(sContents: string): Integer;
var
  i, iPos: Integer;
  s: string;
begin
  iPos := 0; iTag := 0; s := '';
  sContents := Trim(sContents) + '+';
  // �迭�� ��ĭ�� �ƴ� ���ڸ� ���� 1���ھ� �����Ѵ�.
  for i := 1 to Length(sContents) do
    if Copy(sContents, i, 1) <> ' ' then begin
      iTag := iTag + 1;
      aToken[iTag] := Copy(sContents, i, 1);
    end;
  // ����� ������ ���ڸ� ������.
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
  // �迭�� ��ĭ�� �ƴ� ����Ÿ�� �ٽ� �����Ѵ�.
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
  // ��ȣ�� ���� ��쿡�� ���ν����� �����Ѵ�.
  if iToken = 1 then Exit;
  // ��ȣ�ȿ� ����Ÿ�� 1���� ��� ��ȣ�� �����ϰ� ���ν����� �����Ѵ�.
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
  // ��ȣ�ȿ� ó���� ����Ÿ�� ������ �ش� ����Ÿ�� ó���Ѵ�.
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

///2012.10.22. ���� ���� ���� -> ���� ���� ������ �߰�. ������ �ִ� ���� �״�� ���� �Խ��ϴ�. ��.

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

    // 2013.9.25 �߰�
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

    // 2013.9.25 �߰�
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
//   if cxComboBox1.Text  = '��Ÿ(�󼼳��� �� ����)' then
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
            //ShowMessage('����Ϸ�');
          end;
       end;
end;

{procedure TXForm1.frxReport1GetValue(const VarName: String;
  var Value: Variant);

  var dong_gubun : string;
begin
  if dong_bank = '(����)' then begin
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
//��

