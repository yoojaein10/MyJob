//------------------------------------------------------------------------------
//
// Unit        : Unit1.pas
// Author      : 이태희
// Description :
//  가접수 메인
// History
//   V 1.00 : 2017.11.16 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, RzPanel,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxSplitter, kbmMemTable,
  kbmMWCustomConnectionPool, kbmMWCustomDataset, kbmMWClientDataset,
  RzButton, StdCtrls, Mask, RzEdit, RzLabel, Menus, ActnList, RzCommon,
  frxClass, frxDBSet, cxExportGrid4Link, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxCheckComboBox, cxLabel, cxCheckbox,
  RzCmboBx, cxDBLookupComboBox, cxCalendar, RzRadGrp;

type
  TfrmMain = class(TXForm)
    RzPanel1: TRzPanel;
    cxSplitter1: TcxSplitter;
    qryMain: TkbmMWClientQuery;
    dsMain: TDataSource;
    btnClose: TRzBitBtn;
    Edt_Docid: TRzEdit;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    aEditR: TAction;
    lbCnt: TRzLabel;
    RzFC: TRzFrameController;
    btnPrint: TRzBitBtn;
    frxDBMainA: TfrxDBDataset;
    frxReport1: TfrxReport;
    btnExcel: TRzButton;
    sd_excel: TSaveDialog;
    pnBase: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    chkcbOffice: TcxCheckComboBox;
    qryOffice: TkbmMWClientQuery;
    qrywaiting: TkbmMWClientQuery;
    lbOffice: TcxLabel;
    PopupMenuAlloc: TPopupMenu;
    aAllocJisa: TAction;
    aAllocJisa1: TMenuItem;
    cxSplitter6: TcxSplitter;
    cxSplitter2: TcxSplitter;
    RzPanel4: TRzPanel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    qryLog: TkbmMWClientQuery;
    dsLog: TDataSource;
    qryLogMasterid: TLargeintField;
    qryLogwUser: TIntegerField;
    qryLogMsg: TStringField;
    qryLogwDate: TDateTimeField;
    cxGrid3DBTableView1wUser: TcxGridDBColumn;
    cxGrid3DBTableView1Msg: TcxGridDBColumn;
    cxGrid3DBTableView1wDate: TcxGridDBColumn;
    dsWaiting: TDataSource;
    btnFindRaddr: TButton;
    aHFPask: TAction;
    aHFask1: TMenuItem;
    RzPanel5: TRzPanel;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    aEditY: TAction;
    aEditY1: TMenuItem;
    PopupTS: TPopupMenu;
    N1: TMenuItem;
    aEditT: TAction;
    qryTS: TkbmMWClientQuery;
    dsTS: TDataSource;
    qryTSMainSeq: TLargeintField;
    qryTSDAMBO_NO: TStringField;
    qryTSCHUJUNGGAAK: TStringField;
    qryTSSOJAE_ADDR: TStringField;
    qryTSSOJAE_JIBUN: TStringField;
    qryTSCHAEMU_NAME: TStringField;
    qryTSGAM_EUI_NM: TStringField;
    qryTSWorkGubun: TStringField;
    cxGrid4DBTableView1DAMBO_NO: TcxGridDBColumn;
    cxGrid4DBTableView1CHUJUNGGAAK: TcxGridDBColumn;
    cxGrid4DBTableView1SOJAE_ADDR: TcxGridDBColumn;
    cxGrid4DBTableView1SOJAE_JIBUN: TcxGridDBColumn;
    cxGrid4DBTableView1GAM_EUI_NM: TcxGridDBColumn;
    N3: TMenuItem;
    N4: TMenuItem;
    qryTSindate: TDateTimeField;
    cxGrid4DBTableView1indate: TcxGridDBColumn;
    qryTSworkstatus: TStringField;
    cxGrid4DBTableView1MainSeq: TcxGridDBColumn;
    cxGrid4DBTableView1CHAEMU_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1WorkGubun: TcxGridDBColumn;
    cxGrid4DBTableView1workstatus: TcxGridDBColumn;
    qryTSLWorkStatus: TStringField;
    qrywaitingMainSeq: TLargeintField;
    qrywaitingMasterid: TLargeintField;
    qrywaitingdocid: TStringField;
    qrywaitingDAMBO_NO: TStringField;
    qrywaitingCHUJUNGGAAK: TStringField;
    qrywaitingSOJAE_ADDR: TStringField;
    qrywaitingSOJAE_JIBUN: TStringField;
    qrywaitingCHAEMU_NAME: TStringField;
    qrywaitingGAM_EUI_NM: TStringField;
    qrywaitingSeq: TLargeintField;
    qrywaitingWorkGubun: TStringField;
    qrywaitingindate: TDateTimeField;
    qrywaitingworkstatus: TStringField;
    qrywaitingLWorkStatus: TStringField;
    qrywaitingBigo: TStringField;
    qrywaitingAllocOffice: TStringField;
    qryMainMainSeq: TLargeintField;
    qryMainMasterid: TLargeintField;
    qryMaindocid: TStringField;
    qryMainDAMBO_NO: TStringField;
    qryMainCHUJUNGGAAK: TStringField;
    qryMainSOJAE_ADDR: TStringField;
    qryMainSOJAE_JIBUN: TStringField;
    qryMainCHAEMU_NAME: TStringField;
    qryMainGAM_EUI_NM: TStringField;
    qryMainSeq: TLargeintField;
    qryMainWorkGubun: TStringField;
    qryMainindate: TDateTimeField;
    qryMainworkstatus: TStringField;
    qryMainLWorkStatus: TStringField;
    qryMainBigo: TStringField;
    qryMainAllocOffice: TStringField;
    aCancelAllow: TAction;
    qryAllocJisa: TkbmMWClientQuery;
    qryStatusLog: TkbmMWClientQuery;
    aCancelAllow1: TMenuItem;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1MainSeq: TcxGridDBColumn;
    cxGrid2DBTableView1Masterid: TcxGridDBColumn;
    cxGrid2DBTableView1docid: TcxGridDBColumn;
    cxGrid2DBTableView1DAMBO_NO: TcxGridDBColumn;
    cxGrid2DBTableView1CHUJUNGGAAK: TcxGridDBColumn;
    cxGrid2DBTableView1SOJAE_ADDR: TcxGridDBColumn;
    cxGrid2DBTableView1SOJAE_JIBUN: TcxGridDBColumn;
    cxGrid2DBTableView1CHAEMU_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1GAM_EUI_NM: TcxGridDBColumn;
    cxGrid2DBTableView1Seq: TcxGridDBColumn;
    cxGrid2DBTableView1WorkGubun: TcxGridDBColumn;
    cxGrid2DBTableView1indate: TcxGridDBColumn;
    cxGrid2DBTableView1workstatus: TcxGridDBColumn;
    cxGrid2DBTableView1LWorkStatus: TcxGridDBColumn;
    cxGrid2DBTableView1AllocOffice: TcxGridDBColumn;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1MainSeq: TcxGridDBColumn;
    cxGrid5DBTableView1Masterid: TcxGridDBColumn;
    cxGrid5DBTableView1docid: TcxGridDBColumn;
    cxGrid5DBTableView1DAMBO_NO: TcxGridDBColumn;
    cxGrid5DBTableView1CHUJUNGGAAK: TcxGridDBColumn;
    cxGrid5DBTableView1SOJAE_ADDR: TcxGridDBColumn;
    cxGrid5DBTableView1SOJAE_JIBUN: TcxGridDBColumn;
    cxGrid5DBTableView1CHAEMU_NAME: TcxGridDBColumn;
    cxGrid5DBTableView1GAM_EUI_NM: TcxGridDBColumn;
    cxGrid5DBTableView1Seq: TcxGridDBColumn;
    cxGrid5DBTableView1WorkGubun: TcxGridDBColumn;
    cxGrid5DBTableView1indate: TcxGridDBColumn;
    cxGrid5DBTableView1workstatus: TcxGridDBColumn;
    cxGrid5DBTableView1LWorkStatus: TcxGridDBColumn;
    cxGrid5DBTableView1Bigo: TcxGridDBColumn;
    cxGrid5DBTableView1AllocOffice: TcxGridDBColumn;
    cxSplitter3: TcxSplitter;
    N5: TMenuItem;
    N6: TMenuItem;
    qryMainCharge: TStringField;
    cxGrid5DBTableView1Charge: TcxGridDBColumn;
    qryTSBigo: TStringField;
    cxGrid4DBTableView1Bigo: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    FindKind: TRzRadioGroup;
    Edt_Search: TRzEdit;
    cxLabel6: TcxLabel;
    GroupBox3: TGroupBox;
    cbStatus: TcxImageComboBox;
    GroupBox2: TGroupBox;
    Edt_Start_ReceiptDate: TcxDateEdit;
    Edt_End_ReceiptDate: TcxDateEdit;
    RzButton3: TRzButton;
    RzButton4: TRzButton;
    RzButton2: TRzButton;
    RzButton1: TRzButton;
    btn_search: TRzBitBtn;
    Cob_Office: TRzComboBox;
    btnApplyOffice: TRzBitBtn;
    qryautoallocate: TkbmMWClientQuery;
    qryMainTs_Docid: TStringField;
    cxGrid5DBTableView1Column1: TcxGridDBColumn;
    procedure XFormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Btn_FindClick(Sender: TObject);
    procedure aEditRExecute(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure btnExcelClick(Sender: TObject);
    procedure aAllocJisaExecute(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnFindRaddrClick(Sender: TObject);
    procedure aHFPaskExecute(Sender: TObject);
    procedure aEditYExecute(Sender: TObject);
    procedure aEditTExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure aCancelAllowExecute(Sender: TObject);
    procedure cxGrid5DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure RzButton1Click(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure btnApplyOfficeClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxGrid5DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    procedure ProcessParameters(ALink: TXLink);
    Procedure Datafind;
    Procedure ViewLog;
    procedure InsertLog;


  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

{$R *.DFM}
uses
  DM, userData, CommModule, Apconfig, Variants, uAllocjisaa, uSendMsg;

var
  AllOffice: string = '';
//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TfrmMain;
begin


  Form := TfrmMain.Create(Application);
  try
    with Form do begin
      AHandle := SetParentControl(AParent);
      FormStyle := fsMDIChild;

    end;
  except;
  end;


end;

{ TXForm1 }

//
// 초기 파라메터 처리 루틴
//
procedure TfrmMain.Datafind;
begin

//chkcbOffice.Text;

  try

    screen.Cursor := crHourGlass;

    with qrywaiting do begin
      if Active then close;
      params.ParamByName('Office').AsString := 'ZZ';
      try
        open;
      except on E:Exception do
        ShowMessage(E.Message);
      end;
    end;

    with qrymain do
    begin
      if qrymain.Active then qryMain.Close;
      params.ParamByName('docid').AsString :=  Trim(Edt_Docid.text);
      params.ParamByName('SDate').AsString := Edt_Start_ReceiptDate.Text;
      params.ParamByName('EDate').AsString := Edt_End_ReceiptDate.Text;
      params.ParamByName('Office').AsString := Cob_Office.Value;   //chkcbOffice.Text; //VarToStr(cbGubun.Properties.items.Items[cbGubun.itemindex].Value);
      Params.ParamByName('Status').AsString := vartostr(cbStatus.Properties.Items.Items[cbStatus.itemindex].Value);
      params.ParamByName('Gubun').AsInteger := FindKind.ItemIndex;
      try
        qrymain.Open;
        lbCnt.Caption := intTostr(qrymain.RecordCount) + '건';
      except on E:Exception do
        ShowMessage(E.Message);
      end;
    end;

    with qryTS do
    begin
      if Active Then close;
      params.ParamByName('SDate').AsString := Edt_Start_ReceiptDate.Text;
      params.ParamByName('EDate').AsString := Edt_End_ReceiptDate.Text;
      params.ParamByName('Office').AsString := Cob_Office.Value;   //chkcbOffice.Text; //VarToStr(cbGubun.Properties.items.Items[cbGubun.itemindex].Value);
      try
        qryTs.Open;
      except on E:Exception do
        ShowMessage(E.message);
      end;
    end;


  finally
   screen.Cursor := crDefault;
  end;

end;

procedure TfrmMain.ProcessParameters(ALink: TXLink);
begin
  // todo your codes !!
end;

procedure TfrmMain.XFormShow(Sender: TObject);
var
  Aitem : TcxCheckComboBoxItem;
  AitemB : TcxCheckComboBoxItem;

  i, fix : integer;
  j, fixj : integer;
  k : integer;
  s : string;
begin

  // 본지사명 콤보에 넣기
  DBM.GetOfficeNames(Cob_Office.Items);
  DBM.GetOfficeCodes(Cob_Office.Values);
  Cob_Office.Value := Userinfo.Office;

  //권한에 따른 상태제어
  Cob_Office.Enabled := UserData.Userinfo.ShowAll; //검색용 본지사

  with qryOffice do
  begin
    if Active then close;
    query.Text := 'Exec SP_S_APW_Office';
    open;
  end;

  if qryOffice.RecordCount > 0 then
  begin
    chkcbOffice.Properties.Items.Clear;

    Aitem := TcxCheckComboBoxItem(chkcbOffice.Properties.Items.Add);
    Aitem.Description := '전체';
    Aitem.ShortDescription := '00';

    qryOffice.First;
    i := 1;
    While not qryOffice.Eof do
    begin
      Aitem := TcxCheckComboBoxItem(chkcbOffice.properties.Items.Add);
      Aitem.Description := qryoffice.fieldbyName('Name').AsString;
      Aitem.ShortDescription := qryOffice.fieldByName('Officeid').AsString;
      AllOffice := AllOffice +',' + qryOffice.fieldbyName('Officeid').AsString;

      if qryOffice.FieldByName('Officeid').AsString = userinfo.Office then
      begin
        fix := i;
        lbOffice.Caption := '선택된 본지사: ' + qryOffice.FieldbyName('Name').AsString;
      end;
      i := i + 1;
      qryOffice.Next;
    end;
    chkcbOffice.States[fix] := cbschecked;
    AllOffice := copy(AllOffice, 2, Length(AllOffice));
  end;

  qrywaiting.Query.Text := 'Exec SP_S_HF_P_ReceiptEX null, null, null, :Office';
  qrymain.Query.Text := 'Exec SP_S_HF_P_ReceiptEXJY :Docid, :Sdate, :EDate, :Office, :Status, :Gubun';
  qryTS.Query.Text := 'Exec SP_S_HF_P_ReceiptEX_TS :Sdate, :EDate, :Office';

  Edt_Start_ReceiptDate.Date := now - 30;
  Edt_End_Receiptdate.Date := now;

  if userinfo.Office = '10' Then
    chkcbOffice.Enabled := True
  else
    chkcbOffice.Enabled := False;

  Btn_FindClick(nil);

end;


procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.Btn_FindClick(Sender: TObject);
begin
  Datafind;
end;

procedure TfrmMain.aEditRExecute(Sender: TObject);
var
  Alink : TXLink;
  pos : integer;
begin
  pos := qrymain.fieldbyName('MainSeq').AsInteger;
  Alink := TxLink.Create(Nil);

  try
    ALink.AddParams('MainSeq', qrymain.FieldByName('MainSeq').AsInteger ); //HF_P_Receipt 의 Seq
    ALink.AddParams('MainDAMBO_NO', qrymain.FieldByName('DAMBO_NO').AsString);

    ALink.AddParams('DetailSeq', qrymain.FieldByName('Seq').AsInteger ); // HF_P_Jung, HF_P_Yak, HF_P_TS 의 Seq
    OpenDLL('HFeditPR.dll', nil, Alink);

    if Alink.Result = 1 then
    begin
      qrymain.RefreshData;
      qrymain.Locate('mainseq', pos, []);
    end;

  finally
    Alink.Free;
  end;

end;

procedure TfrmMain.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin

  if qrywaiting.RecordCount < 1 then
  begin
    aAllocJisa.Enabled := False;
  end
  else
  begin
    aAllocJisa.Enabled := true;
  end;


  if qrymain.RecordCount < 1 Then
  begin
    aEditR.Enabled := False;
    aEditY.Enabled := False;
    //aHFPask.Enabled := False;
  end;
 // ShowMessage(IntToStr(qryTS.RecordCount));
  if qryTs.RecordCount < 1 then
  begin
    aEditT.Enabled := False;

  end;
  
  if userinfo.Office <> '10' then // 배정권한 갖을 사람 지정....
  begin
    aAllocJisa.Enabled := False;
    aCancelAllow.Enabled := false;
    aCancelAllow.Visible := False;
  end else
  begin
    if qryMain.FieldByName('docid').AsString = '' then
      aCancelAllow.Enabled := True
    else
      aCancelAllow.Enabled := False;
  end;

  if qrymain.FieldByName('workGubun').AsString = '100' then
  begin
    aEditR.Enabled := True;
    aEditY.Enabled := False;
  end
  else if qrymain.FieldByName('workGubun').AsString = '200' then
  begin
    aEditR.Enabled := False;
    aEditY.Enabled := True;
  end;



end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
begin
{
  if cxGrid1DBTableView1.DataController.RecordCount < 1 then
  Begin
    ShowMessage('출력할 자료가 없습니다.');
    exit;
  end;
}
  if qrymain.RecordCount < 1 then
  begin
    ShowMessage('출력자료가 없습니다.');
    exit;
  end;

//  frxReport1.LoadFromFile(appconfig.Path.Root + '\Report\가접수대장.fr3');
//  frxReport1.ShowReport;
end;

procedure TfrmMain.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin

  if VarName = 'condi' then
    Value := '접수일 ' + Edt_Start_ReceiptDate.Text + ' ~ ' + Edt_End_ReceiptDate.Text;

end;

procedure TfrmMain.btnExcelClick(Sender: TObject);
Var
  cPath, cfile : string;
begin
  cPath := ExtractFilePath(Application.ExeName) + 'ExcelData\';
  cFile := cPath + '조회'+DateToStr(Date)+'.xls';

  SD_excel.InitialDir := cPath ;
  SD_excel.FileName := cFile;


  try
    if SD_excel.Execute then begin
      ExportGrid4ToExcel(SD_excel.FileName,cxGrid5);
    end;

    if copy (SD_Excel.FileName, length(SD_Excel.FileName)-3,4) <> '.xls' then
      SD_Excel.FileName := SD_Excel.FileName + '.xls';

    //ShellExecute(Application.Handle, 'open', pchar(SD_Excel.FileName), nil, nil, SW_SHOWNORMAL); // 해당 파일 열기.
  except
    ;
  end;

end;

procedure TfrmMain.aAllocJisaExecute(Sender: TObject);
begin
  if not Assigned(frmAllocJisa) then
    frmAllocJisa := TfrmAllocJisa.Create(self);

  if frmAllocJisa.ShowModal = mrok then
  begin
    qrywaiting.RefreshData;
    qryMain.RefreshData;
  end;

end;

procedure TfrmMain.ViewLog;
begin

  with qryLog do
  begin
    if Active then Close;
    Query.Text := 'Exec SP_S_HF_StatusLog  null, :PSeq';
    params.ParamByName('pSeq').AsInteger := qryMain.fieldbyName('MainSeq').AsInteger;
    open;
  end;

end;

procedure TfrmMain.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  ViewLog;
end;

procedure TfrmMain.btnFindRaddrClick(Sender: TObject);
var
  Alink : TXLink;
begin

  Alink := Txlink.Create(nil);
  try
    //ALink.AddParams('sMasterid', qrymain.FieldByName('Masterid').AsInteger );
    openDll('FindRaddr.dll', nil, Alink);
  finally
    Alink.Free
  end;

end;

procedure TfrmMain.aHFPaskExecute(Sender: TObject); /// 의뢰 보기.
var
  Alink : TXLink;
begin
  Alink := TXLink.Create(nil);

  try
    ALink.AddParams('MainSeq', qryMain.FieldByName('MainSeq').AsInteger ); //HF_P_Receipt 의 Seq
    OpenDLL('HFAskP.dll', nil, Alink);
  finally
    Alink.Free;
  end;
end;

procedure TfrmMain.N4Click(Sender: TObject); // 배정
var
  Alink : TXLink;
begin
  Alink := TXLink.Create(nil);

  try
    ALink.AddParams('MainSeq', qrywaiting.FieldByName('MainSeq').AsInteger ); //HF_P_Receipt 의 Seq
    OpenDLL('HFAskP.dll', nil, Alink);
  finally
    Alink.Free;
  end;
end;

procedure TfrmMain.N3Click(Sender: TObject);
var
  Alink : TXLink;
begin

  Alink := TXLink.Create(nil);
  try
    ALink.AddParams('MainSeq', qryTs.FieldByName('MainSeq').AsInteger ); //HF_P_Receipt 의 Seq
    OpenDLL('HFAskP.dll', nil, Alink);
  finally
    Alink.Free;
  end;

end;


procedure TfrmMain.aEditYExecute(Sender: TObject);     //약식
var
  Alink : TXLink;
  pos : integer;
begin
  Alink := TXLink.Create(nil);
  pos := qrymain.fieldbyName('MainSeq').AsInteger;
  try

    ALink.AddParams('MainSeq', qrymain.FieldByName('MainSeq').AsInteger ); //HF_P_Receipt 의 Seq
    ALink.AddParams('MainDAMBO_NO', qrymain.FieldByName('DAMBO_NO').AsString);

    ALink.AddParams('DetailSeq', qrymain.FieldByName('Seq').AsInteger ); // HF_P_Jung, HF_P_Yak, HF_P_TS 의 Seq

    OpenDLL('HFeditPY.dll', nil, Alink);

    if Alink.Result = 1 then
    begin
      qrymain.RefreshData;
      qrymain.Locate('mainseq', pos, []);
    end;

  finally
    Alink.Free;
  end;
end;

procedure TfrmMain.aEditTExecute(Sender: TObject);  //탁상
var
  Alink : TXLink;
begin
  Alink := TXlink.Create(nil);

  try
    ALink.AddParams('MainSeq', qryts.FieldByName('MainSeq').AsInteger ); //HF_P_Receipt 의 Seq
    ALink.AddParams('MainDAMBO_NO', qryts.FieldByName('DAMBO_NO').AsString);

    ALink.AddParams('DetailSeq', qrymain.FieldByName('Seq').AsInteger ); // HF_P_Jung, HF_P_Yak, HF_P_TS 의 Seq
    OpenDLL('HFeditPT.dll', nil, Alink);
  finally
    Alink.Free;
  end;
end;



procedure TfrmMain.aCancelAllowExecute(Sender: TObject);
begin

  if Application.MessageBox('배정을 취소 하겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
  begin
    with qryAllocJisa do
    begin
      if Active Then close;
      qryAllocJisa.FieldDefs.Clear;
      query.Text := 'Exec SP_U_HF_P_Receipt_AllocOffice :MainSeq, :AllowOffice';
      params.ParamByName('MainSeq').AsInteger := qrymain.fieldbyName('MainSeq').AsInteger;
      params.paramByName('AllowOffice').AsString := '';
      Execute;
    end;

    with qryStatusLog do
    begin
      if Active Then close;
      query.Text := 'Exec SP_I_HF_StatusLog null, :wUser, :Msg, :Pseq';
      params.ParamByName('wUser').AsInteger := userinfo.UID;
      params.ParamByName('msg').AsString := userinfo.UserName +' 배정취소작업 실행';
      params.ParamByName('Pseq').AsInteger := qrymain.fieldbyName('MainSeq').AsInteger;

      Execute;
    end;

    qrywaiting.RefreshData;
    qryMain.RefreshData;
  end;
end;

procedure TfrmMain.cxGrid5DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  ViewLog;
end;

procedure TfrmMain.RzButton1Click(Sender: TObject);
begin
  //

  if Sender is TRzButton then
  begin

    Case TRzButton(Sender).Tag of
      1 :
      begin
        Edt_Start_ReceiptDate.Date := now;
        Edt_End_ReceiptDate.Date := now;
      end;
      2 :
      begin
        Edt_Start_ReceiptDate.Date := now-1;
        Edt_End_ReceiptDate.Date := now-1;
      end;
      3 :
      begin
        Edt_Start_ReceiptDate.Date := now-7;
        Edt_End_ReceiptDate.Date := now;
      end;
      4 :
      begin
        Edt_Start_ReceiptDate.Date := now-30;
        Edt_End_ReceiptDate.Date := now;
      end;
    end;  //case
    btn_searchClick(btn_search);
  end;

end;

procedure TfrmMain.btn_searchClick(Sender: TObject);
begin
  Datafind;
end;

procedure TfrmMain.btnApplyOfficeClick(Sender: TObject);
begin
 qrywaiting.First;
  while not qrywaiting.Eof do begin
     if qrywaiting.FieldByName('AllocOffice').AsString <> '00' then
     begin
        if not (qrywaiting.State in [dsEdit]) then qrywaiting.Edit;
            with qryautoallocate do
            begin
              Params.Clear;
              Query.Text := '';
              Query.Text := 'EXEC SP_YJI_HF_AutoBaejung :Masterid , :Gubun';
              Params.ParamByName('Masterid').AsInteger :=
                qrywaiting.FieldByName('Masterid').AsInteger;
              Params.ParamByName('Gubun').AsString := 'Yeon';
              Execute;
            end;
         InsertLog;
     end;
      qrywaiting.Next;
  end;
      //QRwait.Post;
  qrywaiting.Resolve(nil);
  qrywaiting.RefreshData;
        // CancelAfterScroll;
  qryMain.RefreshData;

end;

procedure TfrmMain.InsertLog;
begin
 with qryStatusLog do
    begin
      if Active Then close;
       params.ParamByName('Masterid').AsInteger := qrywaiting.fieldByName('Masterid').AsInteger;
       params.ParamByName('wUser').AsInteger := userinfo.UID;
       params.ParamByName('Msg').AsString  :=  userinfo.UserName +' '+qrywaiting.FieldbyName('office').AsString +' 에 배정작업 실행';

      Execute;
    end;

  //  qrywaiting.RefreshData;
  //  qryMain.RefreshData;
end;

procedure TfrmMain.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
    if not Assigned(frmAllocJisa) then
    frmAllocJisa := TfrmAllocJisa.Create(self);

  if frmAllocJisa.ShowModal = mrok then
  begin
    qrywaiting.RefreshData;
    qryMain.RefreshData;
  end;
end;

procedure TfrmMain.cxGrid5DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
///

end;

end.
