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
    { TODO : 의뢰번호 검색 기능 추가. }



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
  cxDBLookupComboBox, RzCmboBx, cxMemo, RzRadGrp, cxCalendar;

type
  TfrmMain = class(TXForm)
    RzPanel1: TRzPanel;
    cxSplitter1: TcxSplitter;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryMain: TkbmMWClientQuery;
    dsMain: TDataSource;
    btnClose: TRzBitBtn;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    aEdit: TAction;
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
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    chkcbOffice: TcxCheckComboBox;
    qryOffice: TkbmMWClientQuery;
    qrywaiting: TkbmMWClientQuery;
    lbOffice: TcxLabel;
    PopupMenuAlloc: TPopupMenu;
    aAllocJisa: TAction;
    aAllocJisa1: TMenuItem;
    cxGrid1DBTableView1Docid: TcxGridDBColumn;
    cxGrid1DBTableView1LOffice: TcxGridDBColumn;
    cxGrid1DBTableView1org_nm: TcxGridDBColumn;
    cxGrid1DBTableView1duty_brcd_nm: TcxGridDBColumn;
    cxGrid1DBTableView1mort_addr_kind_dvcd: TcxGridDBColumn;
    cxGrid1DBTableView1mort_zipaddr: TcxGridDBColumn;
    cxGrid1DBTableView1mort_dtladdr: TcxGridDBColumn;
    cxGrid1DBTableView1mort_st_dtladdr: TcxGridDBColumn;
    cxGrid1DBTableView1duty_emp_nm: TcxGridDBColumn;
    cxSplitter6: TcxSplitter;
    cxSplitter2: TcxSplitter;
    RzPanel4: TRzPanel;
    aSendmsg: TAction;
    aSendmsg1: TMenuItem;
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
    cxGrid2DBTableView1org_nm: TcxGridDBColumn;
    cxGrid2DBTableView1duty_brcd_nm: TcxGridDBColumn;
    cxGrid2DBTableView1mort_addr_kind_dvcd: TcxGridDBColumn;
    cxGrid2DBTableView1mort_zipaddr: TcxGridDBColumn;
    cxGrid2DBTableView1mort_dtladdr: TcxGridDBColumn;
    cxGrid2DBTableView1mort_st_dtladdr: TcxGridDBColumn;
    cxGrid2DBTableView1duty_emp_nm: TcxGridDBColumn;
    aHFask: TAction;
    aHFask1: TMenuItem;
    aHFask2: TMenuItem;
    cxGrid2DBTableView1indate: TcxGridDBColumn;
    cxGrid1DBTableView1indate: TcxGridDBColumn;
    cxGrid1DBTableView1mort_rsrch_kind_cd: TcxGridDBColumn;
    cxGrid2DBTableView1co_prev_insp_no: TcxGridDBColumn;
    cxGrid2DBTableView1mort_rsrch_kind_cd: TcxGridDBColumn;
    cxGrid1DBTableView1co_prev_insp_no: TcxGridDBColumn;
    cxGrid1DBTableView1Cancel_YN: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cx3: TcxStyle;
    cx1: TcxStyle;
    cxErr: TcxStyle;
    cxend: TcxStyle;
    cxMain: TcxStyle;
    btnApplyOffice: TRzBitBtn;
    cxGrid2DBTableView1Office: TcxGridDBColumn;
    qryStatusLog: TkbmMWClientQuery;
    qryAllocJisa: TkbmMWClientQuery;
    cxGrid1DBTableView1Masterid: TcxGridDBColumn;
    cxGrid1DBTableView1seq: TcxGridDBColumn;
    cxGrid1DBTableView1WorkStatus: TcxGridDBColumn;
    cxGrid1DBTableView1WorkMsg: TcxGridDBColumn;
    qryMainMasterid: TLargeintField;
    qryMainco_prev_insp_no: TStringField;
    qryMainseq: TStringField;
    qryMainjudge_assess_sht_no: TStringField;
    qryMainorg_nm: TStringField;
    qryMainduty_brcd_nm: TStringField;
    qryMainmort_addr_kind_dvcd: TStringField;
    qryMainmort_zipaddr: TStringField;
    qryMainmort_dtladdr: TStringField;
    qryMainmort_st_stnm_addr_cd: TStringField;
    qryMainmort_st_dtladdr: TStringField;
    qryMainduty_emp_nm: TStringField;
    qryMainindate: TStringField;
    qryMainmort_rsrch_kind_cd: TStringField;
    qryMainAllocOffice: TStringField;
    qryMainWorkStatus: TStringField;
    qryMainWorkMsg: TStringField;
    qryMainBigo: TStringField;
    qryMainCancel_YN: TStringField;
    cxGrid1DBTableView1Bigo: TcxGridDBColumn;
    qrywaitingMasterid: TLargeintField;
    qrywaitingco_prev_insp_no: TStringField;
    qrywaitingseq: TStringField;
    qrywaitingjudge_assess_sht_no: TStringField;
    qrywaitingorg_nm: TStringField;
    qrywaitingduty_brcd_nm: TStringField;
    qrywaitingmort_addr_kind_dvcd: TStringField;
    qrywaitingmort_zipaddr: TStringField;
    qrywaitingmort_dtladdr: TStringField;
    qrywaitingmort_st_stnm_addr_cd: TStringField;
    qrywaitingmort_st_dtladdr: TStringField;
    qrywaitingduty_emp_nm: TStringField;
    qrywaitingindate: TStringField;
    qrywaitingmort_rsrch_kind_cd: TStringField;
    qrywaitingAllocOffice: TStringField;
    qrywaitingWorkStatus: TStringField;
    qrywaitingWorkMsg: TStringField;
    qrywaitingBigo: TStringField;
    qrywaitingCancel_YN: TStringField;
    aCancelAllow: TAction;
    aCancelAllow1: TMenuItem;
    qryMainassess_seq: TStringField;
    cxGrid1DBTableView1assess_seq: TcxGridDBColumn;
    N1: TMenuItem;
    N3: TMenuItem;
    qryMainFstatusUsr: TStringField;
    cxGrid1DBTableView1FstatusUsr: TcxGridDBColumn;
    qryMainlock: TStringField;
    cxGrid1DBTableView1lock: TcxGridDBColumn;
    qryMainapplcant_nm: TStringField;
    cxGrid1DBTableView1applcant_nm: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    FindKind: TRzRadioGroup;
    cxLabel6: TcxLabel;
    Edt_Search: TRzEdit;
    GroupBox2: TGroupBox;
    Edt_Start_ReceiptDate: TcxDateEdit;
    Edt_End_ReceiptDate: TcxDateEdit;
    Btn_Find: TRzBitBtn;
    RzButton3: TRzButton;
    RzButton4: TRzButton;
    RzButton2: TRzButton;
    RzButton1: TRzButton;
    GroupBox3: TGroupBox;
    cbStatus: TcxImageComboBox;
    Cob_Office: TRzComboBox;
    btn_Allohand: TRzBitBtn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    qryautoallocate: TkbmMWClientQuery;
    qrywaitingOfficeName: TStringField;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    qryMainTs_Docid: TStringField;
    cxGrid1DBTableView1Ts_Docid: TcxGridDBColumn;
    cxNots: TcxStyle;
    RzLabel57: TRzLabel;
    procedure XFormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Btn_Find1Click(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure btnExcelClick(Sender: TObject);
    procedure aAllocJisaExecute(Sender: TObject);
    procedure aSendmsgExecute(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure aHFaskExecute(Sender: TObject);
    procedure aHFask2Click(Sender: TObject);
    procedure btnApplyOfficeClick(Sender: TObject);
    procedure aCancelAllowExecute(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure Btn_FindClick(Sender: TObject);
    procedure btn_AllohandClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
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

{
  try
    with Form do
    begin
      AHandle := SetParentControl(AParent);

      // 부모가 지정되지 않으면 MDI Child로 속성을 변경한다
      if AParent = nil then
        FormStyle := fsMDIChild;

      if Assigned(ALink) then
        ProcessParameters(ALink);

      Show;
    end;
  except;
  end
}
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

    if qrymain.Active then qryMain.Close;
    with qrymain do
    begin
      params.ParamByName('docid').AsString :=  Trim(Edt_Search.text);
      params.ParamByName('SDate').AsString := Edt_Start_ReceiptDate.Text;
      params.ParamByName('EDate').AsString := Edt_End_ReceiptDate.Text;
      params.ParamByName('Office').AsString := Cob_Office.Value;   //chkcbOffice.Text; //VarToStr(cbGubun.Properties.items.Items[cbGubun.itemindex].Value);
      params.ParamByName('Status').AsString :=  vartostr(cbStatus.Properties.Items.Items[cbStatus.itemindex].Value);
      params.ParamByName('co_prev_insp_no').AsString := '';
      Params.ParamByName('Gubun').AsInteger :=  FindKind.ItemIndex;
    end;

    qrymain.Open;

    with qrywaiting do begin
      if Active then close;
      params.ParamByName('Office').AsString := 'ZZ';          ///ZZ는 어디서
      //나온겨?
      open;
    end;

    if qrymain.RecordCount > 0 then
    begin
      //lbCnt.Visible := True;
     // lbCnt.Caption := format('%d 건', [qrymain.RecordCount]);

      ViewLog;
    end else
    begin
      lbCnt.Visible := False;
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

{
  if userinfo.UID = 1119 then
  begin
    cxGrid1DBTableView1WorkStatus.Visible := True;
  end
  else
  begin
    cxGrid1DBTableView1WorkStatus.Visible := False;
  end;
}
   if UserInfo.Office = '10' then
   begin
      btnApplyOffice.Visible := True;
     // btn_Allohand.Visible := True;
   end;

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
    Aitem.ShortDescription := '10';

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

  qrywaiting.Query.Text := 'Exec SP_S_APW_HFEx null, null, null, :Office';
  qrymain.Query.Text := 'Exec SP_S_APW_HFEx :Docid, :Sdate, :EDate, :Office, :Status, :co_prev_insp_no, :Gubun';

  Edt_Start_ReceiptDate.Date := now - 30;
  Edt_End_Receiptdate.Date := now;

  if userinfo.Office = '10' then
    chkcbOffice.Enabled := True
  else
    chkcbOffice.Enabled := False;

  Btn_FindClick(nil);

end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.Btn_Find1Click(Sender: TObject);
begin
  Datafind;
end;

procedure TfrmMain.aEditExecute(Sender: TObject);
var
  Alink : TXLink;
  pos : integer;
begin

  pos := qrymain.fieldByName('Masterid').AsInteger;
  Alink := TxLink.Create(Nil);

  try
    ALink.AddParams('sMasterid', qrymain.FieldByName('Masterid').AsInteger );
    OpenDLL('HFEdit.dll', nil, Alink);

    if Alink.Result = 1 then
    begin
      qryMain.RefreshData;
      qrymain.Locate('masterid', pos, []);
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
   end else
   begin
    aAllocJisa.Enabled := True;
   end;


   if qryMain.RecordCount < 1 then
   begin
    aEdit.Enabled := False;
    aSendmsg.Enabled := False;
   end else
   begin
    aEdit.Enabled := True;
    aSendmsg.Enabled := true;
   end;

   //if qrymain.FieldByName('mort_rsrch_kind_cd').AsString =  '1' then
   // aSendmsg.Enabled := false;

  if userinfo.Office <> '10' then // 배정권한 갖을 사람 지정....
  begin
    aAllocJisa.Enabled := False;
    aCancelAllow.Enabled := False;
    aCancelAllow.Visible := False;
  end else
  begin
    if qryMain.FieldByName('judge_assess_sht_no').AsString = '' then
      aCancelAllow.Enabled := True
    else
      aCancelAllow.Enabled := False;
  end;
  
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
begin

  if cxGrid1DBTableView1.DataController.RecordCount < 1 then
  Begin
    ShowMessage('출력할 자료가 없습니다.');
    exit;
  end;

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
      ExportGrid4ToExcel(SD_excel.FileName,cxGrid1);
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

procedure TfrmMain.aSendmsgExecute(Sender: TObject);
begin
  if Not Assigned(frmSendmsg) then
    frmSendMsg := TfrmSendmsg.Create(Self);


  if frmSendMsg.ShowModal = mrok Then
    ShowMessage('상태 Message 전송후 처리');


end;

procedure TfrmMain.ViewLog;
begin

  with qryLog do
  begin
    if Active then Close;
    Query.Text := 'Exec SP_S_HF_StatusLog :Masterid';
    params.ParamByName('Masterid').AsInteger := qryMain.fieldbyName('Masterid').AsInteger;
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

procedure TfrmMain.aHFaskExecute(Sender: TObject);
var
  Alink : TXLink;
begin
  Alink := TXLink.Create(nil);

  try
    ALink.AddParams('sMasterid', qrymain.FieldByName('Masterid').AsInteger );
    OpenDLL('HFAsk.dll', nil, Alink);
  finally
    Alink.Free;
  end;

end;

procedure TfrmMain.aHFask2Click(Sender: TObject);
var
  Alink : TXLink;
begin
  Alink := TXLink.Create(nil);

  try
    ALink.AddParams('sMasterid', qrywaiting.FieldByName('Masterid').AsInteger );
    OpenDLL('HFAsk.dll', nil, Alink);
  finally
    Alink.Free;
  end;

end;

procedure TfrmMain.btnApplyOfficeClick(Sender: TObject);
var
  OfficeName : string;
begin
 {
//  ShowMessage(qrywaiting.FieldByName('Office').AsString);


  //DBM.DSC_View_Office

  With qrywaiting do
  begin
    if FieldByName('Office').AsString = '10' Then OfficeName := '본사';
  end;


  try
    with qryAllocJisa do
    begin
      query.Text := 'Exec SP_U_APW_Master_Office :Masterid, :Office';
      params.ParamByName('Masterid').AsInteger := qrywaiting.fieldByName('Masterid').AsInteger;
      params.ParamByName('office').AsString := qrywaiting.FieldByName('Office').AsString;

      qryAllocJisa.Execute;

    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;

  try
    with qryStatusLog do
    begin
      query.Text := 'Exec SP_I_HF_StatusLog :Masterid, :wUser, :Msg';
      params.ParamByName('Masterid').AsInteger := qrywaiting.fieldByName('Masterid').AsInteger;
      params.ParamByName('wUser').AsInteger := userinfo.UID;
      params.ParamByName('Msg').AsString  :=  userinfo.UserName +' '+ qrywaiting.FieldbyName('Office').AsString +' 에 배정작업 실행';

      qryStatusLog.Execute;
    end;
  except on E:Exception do
    ShowMessage('지사배정log error' + E.Message );
  end;

  qrywaiting.RefreshData;
  qryMain.RefreshData;
  자동배정 수정}
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
              Params.ParamByName('Gubun').AsString := 'Bo';
              Execute;
            end;
         InsertLog;
     end;
       qrywaiting.Next;
         end;
         ShowMessage('배정완료');
         //QRwait.Post;
         qrywaiting.Resolve(nil);
         qrywaiting.RefreshData;
        // CancelAfterScroll;
         qryMain.RefreshData;

end;

procedure TfrmMain.aCancelAllowExecute(Sender: TObject);
begin

  if Application.MessageBox('배정을 취소 하겠습니까?', '확인', MB_ICONEXCLAMATION + MB_YESNO) = ID_YES Then
  begin
    try
      with qryAllocJisa do
      begin
        query.Text := 'Exec SP_U_APW_DH_HF_LINK_AllocOffice :Masterid, :Office';
        params.ParamByName('Masterid').AsInteger := qryMain.fieldByName('Masterid').AsInteger;
        params.ParamByName('office').AsString := '';

        qryAllocJisa.Execute;

      end;
    except on E: Exception do
      ShowMessage(E.Message);
    end;


    try
      with qryStatusLog do
      begin
        query.Text := 'Exec SP_I_HF_StatusLog :Masterid, :wUser, :Msg';
        params.ParamByName('Masterid').AsInteger := qryMain.fieldByName('Masterid').AsInteger;
        params.ParamByName('wUser').AsInteger := userinfo.UID;
        params.ParamByName('Msg').AsString  :=  userinfo.UserName +' 배정취소작업 실행';

        qryStatusLog.Execute;
      end;
    except on E:Exception do
      ShowMessage('지사배정log error' + E.Message );
    end;
  end;

  qrywaiting.RefreshData;
  qryMain.RefreshData;

end;

procedure TfrmMain.RzButton1Click(Sender: TObject);
begin

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
    Btn_FindClick(Btn_Find);
  end;

end;

procedure TfrmMain.Btn_FindClick(Sender: TObject);
begin
  Datafind;
end;

procedure TfrmMain.btn_AllohandClick(Sender: TObject);
begin
//         qrywaiting.First;
//
//         while not qrywaiting.Eof do begin
//           if qrywaiting.FieldByName('AllocOffice').AsString <> '' then begin
//              with qryautoallocate do
//            begin
//              if Active then Close;
//
//              Query.Text := '';
//              Params.Clear;
//              query.Text := 'Exec SP_U_APW_DH_HF_LINK_AllocOffice :Masterid, :Office';
//              params.ParamByName('Masterid').AsInteger := qrywaiting.fieldByName('Masterid').AsInteger;
//              params.ParamByName('office').AsString := qrywaiting.FieldByName('AllocOffice').AsString;
//
//              Execute;
//
//              InsertLog;
//           end;
//           qrywaiting.Next;
//         end;
//
//         //qrywaiting.Resolve(nil);
//         qrywaiting.RefreshData;
//        // CancelAfterScroll;
//         qryMain.RefreshData;
//         //ApplyAfterScroll(False);
//
//  end;

end;

procedure TfrmMain.InsertLog;
begin

  try
    with qryStatusLog do
    begin
      query.Text := 'Exec SP_I_HF_StatusLog :Masterid, :wUser, :Msg';
      params.ParamByName('Masterid').AsInteger := qrywaiting.fieldByName('Masterid').AsInteger;
      params.ParamByName('wUser').AsInteger := userinfo.UID;
      params.ParamByName('Msg').AsString  :=  userinfo.UserName +' '+ qrywaiting.FieldbyName('OfficeName').AsString +' 에 배정작업 실행';

      qryStatusLog.Execute;
    end;
  except on E:Exception do
    ShowMessage('지사배정log error' + E.Message );
  end;

end;

procedure TfrmMain.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin

   if  (ARecord.Values[1]= '') and (ARecord.Values[5] = '의뢰')then  AStyle := cxNots;

end;

end.
