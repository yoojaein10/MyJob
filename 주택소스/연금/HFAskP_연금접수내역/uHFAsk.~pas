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
  cxDBEdit, Buttons, frxClass, frxDBSet, cxMemo;

type
  TfrmHFAsk = class(TXForm)
    pnTop: TRzPanel;
    qryMain: TkbmMWClientQuery;
    dsMain: TDataSource;
    RZFC: TRzFrameController;
    btnClose: TRzBitBtn;
    btnPrint: TRzBitBtn;
    frxDBDataset1: TfrxDBDataset;
    qryMainseq: TLargeintField;
    qryMainworkGubun: TStringField;
    qryMainMasterid: TLargeintField;
    qryMainDAMBO_NO: TStringField;
    qryMainCHUJUNGGAAK: TStringField;
    qryMainGAM_MOK: TStringField;
    qryMainMUL_JONG: TStringField;
    qryMainSOJAE_ZIP_CODE: TStringField;
    qryMainSOJAE_ADDR: TStringField;
    qryMainSOJAE_JIBUN: TStringField;
    qryMainCHAEMU_NAME: TStringField;
    qryMainCHAEMU_TELL1: TStringField;
    qryMainCHAEMU_TELL2: TStringField;
    qryMainCHAEMU_ADDR: TStringField;
    qryMainCHAEMU_BUNJI: TStringField;
    qryMainGAM_EUI_JUM: TStringField;
    qryMainGAM_EUI_NM: TStringField;
    qryMainGAM_EUI_ADDR: TStringField;
    qryMainGAM_EUI_JA: TStringField;
    qryMainGAM_EUI_TEL: TStringField;
    qryMainTAX_REGISNO1: TStringField;
    qryMainTAX_PRESIDENT: TStringField;
    qryMainTAX_ADDNAME: TStringField;
    qryMainGAM_KOR: TStringField;
    qryMainGAM_GONGBU: TStringField;
    qryMainDTL_BIGO: TStringField;
    qryMainLAWCO_DONG_CD: TStringField;
    qryMainTAX_EMAIL: TStringField;
    qryMainTAX_TELL: TStringField;
    qryMainDUMMY: TStringField;
    qryMainSOJAE_GUNMULNM: TStringField;
    qryMainSOJAE_DONGNO: TStringField;
    qryMainSOJAE_HONO: TStringField;
    qryMainDUMMY2: TStringField;
    qryMainInUserSeq: TIntegerField;
    qryMainInUser: TStringField;
    qryMainInUserOffice: TStringField;
    qryMainInUserHostName: TStringField;
    qryMainInUserIP: TStringField;
    qryMainInDate: TDateTimeField;
    qryMainSendtime: TStringField;
    qryMainWorkStatus: TStringField;
    qryMainHeader8: TStringField;
    qryMainHeader12: TStringField;
    qryMainHeader13: TStringField;
    qryTmp: TkbmMWClientQuery;
    qryMainAllocOffice: TStringField;
    qryMainBigo: TStringField;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    RzLabel44: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    edtCHUJUNGGAAK: TcxDBCurrencyEdit;
    edtDAMBO_NO: TRzDBEdit;
    edtGAM_MOK: TRzDBEdit;
    edtCHAEMU_TELL1: TRzDBEdit;
    edtSOJAE_ZIP_CODE: TRzDBEdit;
    edtSOJAE_ADDR: TRzDBEdit;
    edtSOJAE_JIBUN: TRzDBEdit;
    edtCHAEMU_NAME: TRzDBEdit;
    edtCHAEMU_ADDR: TRzDBEdit;
    edtCHAEMU_TELL2: TRzDBEdit;
    edtCHAEMU: TRzDBEdit;
    edtGAM_EUI_JUM: TRzDBEdit;
    edtGAM_EUI_NM: TRzDBEdit;
    edtGAM_EUI_ADDR: TRzDBEdit;
    edtGAM_EUI_JA: TRzDBEdit;
    edtGAM_EUI_TEL: TRzDBEdit;
    edtTAX_REGISNO1: TRzDBEdit;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    RzLabel25: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel27: TRzLabel;
    RzLabel28: TRzLabel;
    RzLabel29: TRzLabel;
    edtTAX_PRESIDENT: TRzDBEdit;
    edtTAX_ADDNAME: TRzDBEdit;
    edtGAM_KOR: TRzDBEdit;
    edtGAM_GONGBU: TRzDBEdit;
    edtDTL_BIGO: TRzDBEdit;
    edtLAWCO_DONG_CD: TRzDBEdit;
    edtTAX_EMAIL: TRzDBEdit;
    edtTAX_TELL: TRzDBEdit;
    edtSOJAE_GUNMULNM: TRzDBEdit;
    edtSOJAE_DONGNO: TRzDBEdit;
    edtSOJAE_HONO: TRzDBEdit;
    cxDBMemo1: TcxDBMemo;
    RzLabel3: TRzLabel;
    procedure XFormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    FMainSeq : integer;
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


procedure TfrmHFAsk.ProcessParameters(ALink: TXLink);
begin
  if Alink <> nil then
  Begin
    FMainSeq := Alink.ParamByInteger('MainSeq');

    FMasterid := Alink.ParamByInteger('sMasterid');

  End;
end;

procedure TfrmHFAsk.XFormShow(Sender: TObject);
begin

  with qryMain do
  begin
    query.Text := 'Exec SP_S_HF_P_Receipt :seq';
  end;


  if FMasterid <> 0 then
  begin
    with qryTmp do
    begin
      query.Text := 'Exec SP_S_HF_P_ReceiptSeq :Masterid';
      params.ParamByName('Masterid').AsInteger := FMasterid;
      open;
    end;

    FMainSeq := qryTmp.FieldByName('P_Receipt_Seq').AsInteger;
  end;


  DataFind;

end;

procedure TfrmHFAsk.Datafind;
begin

  with qryMain do
  Begin
    if Active then Close;
    params.ParamByName('Seq').AsInteger := FMainSeq;
    open;
  End;

end;

procedure TfrmHFAsk.btnCloseClick(Sender: TObject);
begin
  close;
end;



procedure TfrmHFAsk.btnPrintClick(Sender: TObject);
begin
  frxReport1.LoadFromFile(Appconfig.path.root + 'Report\PHF_Receipt.fr3');
  frxReport1.ShowReport;
end;

end.
