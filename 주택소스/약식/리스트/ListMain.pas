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

unit ListMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, DB, Grids,
  DBGrids, kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, StdCtrls, kbmMWStreamFormat, kbmMWBinaryStreamFormat,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  RbDrawCore, RbPanel, Menus, cxLookAndFeelPainters, cxButtons,
  TFlatPanelUnit, cxContainer, cxTextEdit, cxCurrencyEdit, Mask, RzEdit,
  AdvObj, BaseGrid, AdvGrid, cxDBEdit, cxLabel, RzButton, cxMemo, RzLabel,
  RzRadChk, ADODB, RzPanel, RzRadGrp, cxDBLookupComboBox, RzCmboBx;

type
  TXForm2 = class(TXForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel4: TPanel;
    Label1: TLabel;
    DS_KHF: TDataSource;
    RzRadioGroup1: TRzRadioGroup;
    Edt_Search: TRzEdit;
    RzLabel5: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    FindDate: TRzRadioGroup;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    Edt_Start_ReceiptDate: TRzDateTimeEdit;
    Edt_End_ReceiptDate: TRzDateTimeEdit;
    Btn_NowDate: TRzButton;
    Btn_Week: TRzButton;
    Btn_Fifteen: TRzButton;
    Btn_Month: TRzButton;
    PopupMenu1: TPopupMenu;
    N0: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cx3: TcxStyle;
    cx1: TcxStyle;
    cxErr: TcxStyle;
    cxend: TcxStyle;
    cxendCancel: TcxStyle;
    cxNA1: TcxStyle;
    cxiw: TcxStyle;
    cxiw2: TcxStyle;
    GroupBox1: TGroupBox;
    Cob_Office: TRzComboBox;
    qryOffice: TkbmMWClientQuery;
    Panel5: TPanel;
    qry_HF: TkbmMWClientQuery;
    qry_HFDocid: TStringField;
    qry_HFReceiptdate: TDateTimeField;
    qry_HFCustName: TStringField;
    qry_HFCustPhone: TStringField;
    qry_HFDebtor: TStringField;
    qry_HFOwnerName: TStringField;
    qry_HFTitle: TStringField;
    qry_HFCustDocid: TStringField;
    qry_HFstatus: TStringField;
    qry_HFTS_MasterID: TStringField;
    qry_HFManager: TStringField;
    qry_HFAddress: TStringField;
    qry_HFLCategory: TStringField;
    qry_HFsimsaCHK: TStringField;
    qry_HFwriteman: TStringField;
    cxGrid1DBTableView1Docid: TcxGridDBColumn;
    cxGrid1DBTableView1Receiptdate: TcxGridDBColumn;
    cxGrid1DBTableView1CustName: TcxGridDBColumn;
    cxGrid1DBTableView1CustPhone: TcxGridDBColumn;
    cxGrid1DBTableView1Debtor: TcxGridDBColumn;
    cxGrid1DBTableView1OwnerName: TcxGridDBColumn;
    cxGrid1DBTableView1Title: TcxGridDBColumn;
    cxGrid1DBTableView1CustDocid: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1TS_MasterID: TcxGridDBColumn;
    cxGrid1DBTableView1Manager: TcxGridDBColumn;
    cxGrid1DBTableView1Address: TcxGridDBColumn;
    cxGrid1DBTableView1LCategory: TcxGridDBColumn;
    cxGrid1DBTableView1simsaCHK: TcxGridDBColumn;
    cxGrid1DBTableView1writeman: TcxGridDBColumn;

    procedure XFormShow(Sender: TObject);
    procedure N0Click(Sender: TObject);
    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure Edt_SearchKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);


  private
    procedure ProcessParameters(ALink: TXLink);
  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

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
end;


procedure TXForm2.XFormShow(Sender: TObject);
begin

    Edt_Start_ReceiptDate.Date := Now-7;
    Edt_End_ReceiptDate.Date := Now;
   // RzBitBtn1Click(Sender);

      // 본지사명 콤보에 넣기
  DBM.GetOfficeNames(Cob_Office.Items);
  DBM.GetOfficeCodes(Cob_Office.Values);
  Cob_Office.Value := Userinfo.Office;

  //권한에 따른 상태제어
  Cob_Office.Enabled := UserData.Userinfo.ShowAll; //검색용 본지사

   qry_HF.Query.Text := 'EXEC  SP_IW_S_HF_YACKLIST :Sdate , :Edate , :Search, :Office , :Kind';
   qry_HF.Params.ParamByName('Sdate').AsString :=   Edt_Start_ReceiptDate.Text;
   qry_HF.Params.ParamByName('Edate').AsString :=   Edt_End_ReceiptDate.Text;
   qry_HF.Params.ParamByName('Search').AsString :=  Edt_Search.Text;
   qry_HF.Params.ParamByName('Office').AsString := Cob_Office.Value;
   qry_HF.Params.ParamByName('Kind').Value := RzRadioGroup1.ItemIndex;
   qry_HF.Open;

end;



procedure TXForm2.N0Click(Sender: TObject);
var
  ALink : TXLink;
begin

  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('Docid', qry_HF.FieldByName('Docid').AsString);
    ALink.AddParams('TS_MasterID', qry_HF.FieldByName('TS_MasterID').AsString);
    ALink.AddParams('Manager', qry_HF.FieldByName('Manager').AsString);
    ALink.AddParams('CustName', qry_HF.FieldByName('CustName').AsString);
    ALink.AddParams('CustPhone', qry_HF.FieldByName('CustPhone').AsString);
    ALink.AddParams('Debtor', qry_HF.FieldByName('Debtor').AsString);
    ALink.AddParams('OwnerName', qry_HF.FieldByName('OwnerName').AsString);
    ALink.AddParams('Address', qry_HF.FieldByName('Address').AsString);
    ALink.AddParams('Receiptdate', qry_HF.FieldByName('Receiptdate').AsString);
    ALink.AddParams('Category', qry_HF.FieldByName('LCategory').AsString);
    ALink.AddParams('CustDocid', qry_HF.FieldByName('CustDocid').AsString);
    ALink.AddParams('receiptdate', qry_HF.FieldByName('receiptdate').AsString);
    OpenDLL('Ts_HF_Yaksik.dll', nil, ALink);


  finally
    ALink.Free;
  end;

end;



procedure TXForm2.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TXForm2.RzBitBtn1Click(Sender: TObject);
begin
   if qry_HF.Active then qry_HF.Close;

   qry_HF.Params.ParamByName('Sdate').AsDate :=   Edt_Start_ReceiptDate.Date;
   qry_HF.Params.ParamByName('Edate').AsDate :=   Edt_End_ReceiptDate.Date;
   qry_HF.Params.ParamByName('Search').AsString :=  Edt_Search.Text;
   qry_HF.Params.ParamByName('Office').AsString := Cob_Office.Value;
   qry_HF.Params.ParamByName('Kind').Value := RzRadioGroup1.ItemIndex;
   qry_HF.Open;
end;


procedure TXForm2.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  STATUS: String;

begin
//  STATUS :=  ARecord.Values[cxGrid1DBTableView1status.Index];
//  if Simdae = '작성완료' then
//     AStyle := cxiw
//  else if Simdae = '완료' then AStyle := cxiw2;
end;

procedure TXForm2.Edt_SearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
     RzBitBtn1Click(Sender);
     Key := #0;
  end;
end;


procedure TXForm2.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  ALink : TXLink;
begin

  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('Docid', qry_HF.FieldByName('Docid').AsString);
    ALink.AddParams('TS_MasterID', qry_HF.FieldByName('TS_MasterID').AsString);
    ALink.AddParams('Manager', qry_HF.FieldByName('Manager').AsString);
    ALink.AddParams('CustName', qry_HF.FieldByName('CustName').AsString);
    ALink.AddParams('CustPhone', qry_HF.FieldByName('CustPhone').AsString);
    ALink.AddParams('Debtor', qry_HF.FieldByName('Debtor').AsString);
    ALink.AddParams('OwnerName', qry_HF.FieldByName('OwnerName').AsString);
    ALink.AddParams('Address', qry_HF.FieldByName('Address').AsString);
    ALink.AddParams('Receiptdate', qry_HF.FieldByName('Receiptdate').AsString);
    ALink.AddParams('Category', qry_HF.FieldByName('LCategory').AsString);
    ALink.AddParams('CustDocid', qry_HF.FieldByName('CustDocid').AsString);
    OpenDLL('Ts_HF_Yaksik.dll', nil, ALink);


  finally
    ALink.Free;
  end;
end;

end.


