//------------------------------------------------------------------------------
//
// Unit        : Unit2.pas
// Author      : 
// Description : 
// History
//   V 1.00 : 2007.09.11 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, DB, Grids,
  DBGrids, kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, StdCtrls, kbmMWStreamFormat, kbmMWBinaryStreamFormat,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  RbDrawCore, RbPanel, Menus, cxLookAndFeelPainters, cxButtons,Variants,
  TFlatPanelUnit, cxContainer, cxTextEdit, cxCurrencyEdit, Mask, RzEdit,
  cxGroupBox, cxRadioGroup, RzLabel, RzCmboBx, RzGroupBar, cxDBEdit,excelxp,
  RzButton, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxMemo, ADODB,
  AdvUtil, AdvObj, BaseGrid, AdvGrid, tmsAdvGridExcel, cxCheckBox;

type
  TXForm2 = class(TXForm)
    Panel4: TPanel;
    Shape25: TShape;
    Shape28: TShape;
    Shape27: TShape;
    data_Master: TDataSource;
    RadioGroup1: TRadioGroup;
    Edt_Values: TRzEdit;
    Btn_Find: TRzButton;
    ADOConnection1: TADOConnection;
    Qry_Master: TADOQuery;
    Qry: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cx3: TcxStyle;
    cx1: TcxStyle;
    cxErr: TcxStyle;
    cxend: TcxStyle;
    cxendCancel: TcxStyle;
    cxcom: TcxStyle;
    cxbaefail: TcxStyle;
    Qry_MasterAccount: TStringField;
    Qry_MasterDebtor: TStringField;
    Qry_MasterDocid: TStringField;
    Qry_MasterCustDocid: TStringField;
    Qry_MasterUse_YN: TStringField;
    Grd_Main: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    cxGridDBTableView7Column2: TcxGridDBColumn;
    cxGridDBTableView7Column3: TcxGridDBColumn;
    cxGridDBTableView7Column4: TcxGridDBColumn;
    cxGridDBTableView7Column5: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    Qry_MasterLOffice: TStringField;
    Qry_Masterclaim_amt: TBCDField;
    cxGridDBTableView7Column6: TcxGridDBColumn;
    cxGridDBTableView7Column7: TcxGridDBColumn;
    cxGridDBTableView7Column8: TcxGridDBColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Shape4: TShape;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    btn_Excel: TRzBitBtn;
    Btn_Save: TRzBitBtn;
    Panel3: TPanel;
    Grid_In: TAdvStringGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    OpenDialog1: TOpenDialog;
    Btn_Export: TRzBitBtn;
    Lab_cnt: TLabel;
    cxGridDBTableView7Column9: TcxGridDBColumn;
    cxGridDBTableView7Column10: TcxGridDBColumn;
    Qry_MasterSendDate: TDateTimeField;
    Qry_MasterLStatus: TStringField;
    cxGridDBTableView7Column11: TcxGridDBColumn;
    Qry_MasterBank_Chk: TStringField;
    cxGridDBTableView7Column12: TcxGridDBColumn;
    Qry_MasterSeq: TAutoIncField;
    cxGridDBTableView7Column13: TcxGridDBColumn;
    Qry_MasterReturn_Chk: TStringField;
    Qry_MasterPay_Date: TDateTimeField;
    cxGridDBTableView7Column14: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Cob_Office: TRzComboBox;
    Qry_Masterindate: TDateTimeField;
    Qry_MasterResult: TStringField;
    Qry_MasterAccountNm: TStringField;
    cxGridDBTableView7Column15: TcxGridDBColumn;
    Panel5: TPanel;
    Label1: TLabel;

    procedure XFormShow(Sender: TObject);
    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CloseClick(Sender: TObject);
    procedure Search;
    procedure Btn_FindClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure Edt_ValuesKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ExportClick(Sender: TObject);
    procedure cxGridDBTableView7Column11PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBTableView7Column13PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBTableView7EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);

  private
    procedure ProcessParameters(ALink: TXLink);
  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
  var
    Kind: integer;
implementation

uses
  CommModule,userfunc, DM, DM2, CommFuncU,UserData;
       // 나현찬 'userdata' 가 userinfo를 쓸 수 있다. 
{$R *.DFM}

//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TXForm2;
begin
   Form := TXForm2.Create(Application);
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
end;

{ TXForm2 }

//
// 초기 파라메터 처리 루틴
//
procedure TXForm2.ProcessParameters(ALink: TXLink);
begin
  // todo your codes !!
  //Edit1.Text := Alink.ParamByString('MasterID');
  

end;      

procedure TXForm2.XFormShow(Sender: TObject);
begin

//  if UserInfo.Office <> '10' then
//  begin
//
//    cxGridDBTableView7.OptionsData.Editing := False;
//    Panel1.Enabled := False;
//
//  end;

  // 본지사명 콤보에 넣기
  DBM.GetOfficeNames(Cob_Office.Items);
  DBM.GetOfficeCodes(Cob_Office.Values);
  Cob_Office.Value := Userinfo.Office;

  Search;

end;                      

procedure TXForm2.XFormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;

end;

procedure TXForm2.Btn_CloseClick(Sender: TObject);
begin

  Close;

end;

procedure TXForm2.Search;
begin

  with Qry do
  begin

    
    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Exec SP_IW_HF_ImgAccount_iu :flag, :Office, :Account, :Docid, :Debtor, :CustDocid ';

    Parameters.ParamByName('flag').Value := 'Chk_up';
    Parameters.ParamByName('Office').Value := Cob_Office.Value;

    ExecSQL;

  end;

  with Qry_Master do
  begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Exec SP_IW_HF_ImgAccount_iu :flag, :Office, :Account, :Docid, :Debtor, :CustDocid ';

    Parameters.ParamByName('flag').Value := 'List';
    Parameters.ParamByName('Office').Value := Cob_Office.Value;

    if RadioGroup1.ItemIndex = 0 then
    Begin

      Parameters.ParamByName('Account').Value := '';
      Parameters.ParamByName('Docid').Value := '';
      Parameters.ParamByName('Debtor').Value := '';
      Parameters.ParamByName('CustDocid').Value := '';

    end
    else if RadioGroup1.ItemIndex = 1 then
    begin

      Parameters.ParamByName('Account').Value := '';
      Parameters.ParamByName('Docid').Value := Edt_Values.Text;
      Parameters.ParamByName('Debtor').Value := '';
      Parameters.ParamByName('CustDocid').Value := '';


    end
    else if RadioGroup1.ItemIndex = 2 then
    begin

      Parameters.ParamByName('Account').Value := Edt_Values.Text;
      Parameters.ParamByName('Docid').Value := '';
      Parameters.ParamByName('Debtor').Value := '';
      Parameters.ParamByName('CustDocid').Value := '';


    end
    else if RadioGroup1.ItemIndex = 3 then
    begin

      Parameters.ParamByName('Account').Value := '';
      Parameters.ParamByName('Docid').Value := '';
      Parameters.ParamByName('Debtor').Value := Edt_Values.Text;
      Parameters.ParamByName('CustDocid').Value := '';


    end
    else if RadioGroup1.ItemIndex = 4 then
    begin

      Parameters.ParamByName('Account').Value := '';
      Parameters.ParamByName('Docid').Value := '';
      Parameters.ParamByName('Debtor').Value := '';
      Parameters.ParamByName('CustDocid').Value := Edt_Values.Text;

    end;

    Open;

  end;        

end;

procedure TXForm2.Btn_FindClick(Sender: TObject);
begin

  Search;

end;

procedure TXForm2.btn_ExcelClick(Sender: TObject);
begin

  MessageBox(Handle, '엑셀 97 - 2003 통합문서로 변환 후 사용해주십시오.', '확인', MB_ICONINFORMATION or
      MB_OK);

  if OpenDialog1.Execute then  AdvGridExcelIO1.XLSImport(OpenDialog1.FileName);

end;

procedure TXForm2.Btn_SaveClick(Sender: TObject);
var
   i : integer;
begin

  if MessageBox(Handle, '저장하시겠습니까?', '확인', MB_ICONQUESTION or
            MB_YESNO) <> IDYES then
            Exit;

  with Qry do
  begin


    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Exec SP_IW_HF_ImgAccount_iu :flag, :Office, :Account, :Docid, :Debtor, :CustDocid, :AccountNm ';

    with Grid_In do
    begin

      for i := 1 to RowCount - 1 do
      begin

        Parameters.ParamByName('flag').Value := 'In';
        Parameters.ParamByName('Office').Value := Cob_Office.Value;
        Parameters.ParamByName('Account').Value := Cells[1, i];
        Parameters.ParamByName('Docid').Value := '';
        Parameters.ParamByName('Debtor').Value := '';
        Parameters.ParamByName('CustDocid').Value := '';
        Parameters.ParamByName('AccountNm').Value := Cells[0, i];

        ExecSQL;

      end;

    end;

  end;

  MessageBox(Handle, '저장되었습니다.', '확인', MB_ICONINFORMATION or
      MB_OK);

  Grid_In.Clear;
  Search;

end;

procedure TXForm2.Edt_ValuesKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
  begin

    Search;

  end;

end;

procedure TXForm2.Btn_ExportClick(Sender: TObject);
var
  arrData: Variant;
  nRow, nCol, i, j, LCID: integer;
  cxGridView: TcxGridDBTableView;
  xlAPP: TExcelApplication;
  xlWS1, Template, NewTemplate, Range: OleVariant;
  sTempletFileName: string;
begin

  sTempletFileName := ExtractFileDir(Application.ExeName) + '\Templet\' + '주택금융가상계좌' + '.xls';

  if not FileExists(sTempletFileName) then begin
    Application.MessageBox(pchar('Templet 파일이 존재하지 않습니다. 프로그램 종료 후 다시 실행해 보세요'), '엑셀내보내기', MB_OK);
    Exit;
  end;

  cxGridView := TcxGridDBTableView(TcxGridLevel(Grd_Main.ActiveLevel).GridView);

  nRow := cxGridView.DataController.RowCount;
  nCol := cxGridView.ColumnCount;

  arrData := VarArrayCreate([1, nRow, 1, nCol], varVariant);

  for j := 1 to nRow do
    for i := 1 to nCol do
      arrData[j, i] := cxGridView.DataController.Values[j - 1, i - 1];

  Template := sTempletFileName;
  xlAPP := TExcelApplication.Create(nil);
  try
    xlApp.Connect;
    xlApp.Workbooks.Add(Template, NewTemplate);
    xlWS1 := xlApp.ActiveSheet;

    Range := xlWS1.Range[xlWS1.Cells[2, 1], xlWS1.Cells[nRow + 1, nCol]];
    Range.Value := arrData;

    xlApp.Visible[LCID] := true;
    xlApp.Disconnect;
  finally
    FreeAndNil(xlAPP);
  end;

end;

procedure TXForm2.cxGridDBTableView7Column11PropertiesEditValueChanged(
  Sender: TObject);
begin

//  cxGridDBTableView7.DataController.DataSet;
//  cxGridDBTableView7.DataController.UpdateData;
//  cxGridDBTableView7.DataController.Post;

end;

procedure TXForm2.cxGridDBTableView7Column13PropertiesEditValueChanged(
  Sender: TObject);
begin

//  cxGridDBTableView7.DataController.DataSet;
//  cxGridDBTableView7.DataController.UpdateData;
//  cxGridDBTableView7.DataController.Post;

end;

procedure TXForm2.cxGridDBTableView7EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin

  cxGridDBTableView7.DataController.DataSet;
  cxGridDBTableView7.DataController.UpdateData;
  cxGridDBTableView7.DataController.Post;

end;

end.
