//------------------------------------------------------------------------------
//                                       
// Unit        : Unit1.pas
// Author      : 
// Description : 
// History
//   V 1.00 : 2006.04.25 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit Unit1;                                       
                                                                                                 
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
  cxCurrencyEdit, cxGroupBox, cxRadioGroup;

type
  TXForm1 = class(TXForm)
    tbl_gam_info: TEasyTable;
    DS_gam_info: TDataSource;
    fd_gam_info: TfrxDBDataset;
    fd_tbl0: TfrxDBDataset;                               
    DS_tbl0: TDataSource;
    tbl0: TEasyTable;
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
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    f_price0: TcxDBCurrencyEdit;
    f_price1: TcxDBCurrencyEdit;
    f_price: TcxDBCurrencyEdit;
    f_Price10: TcxDBCurrencyEdit;
    cxDBMemo7: TcxDBMemo;
    f_Price15: TcxDBCurrencyEdit;
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
    f_Account: TcxDBTextEdit;
    radio_Mode: TcxRadioGroup;
    btn_total: TcxButton;
    btn_susu_compute: TcxButton;
    sbtn_other_compute: TcxButton;
    btn_backward: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton1: TcxButton;
    frxReport1: TfrxReport;
    cxLabel25: TcxLabel;
    f_price2: TcxDBCurrencyEdit;
    radio_Mode2: TcxRadioGroup;
    cxDBMemo1: TcxDBMemo;
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
  private
    Detail_Price : Currency;
    AppInfo : Pointer;
    ChildDataBase: TEasyDataBase;
    procedure ProcessParameters(ALink: TXLink);
    procedure Compute_susu;
    function Chk_TobyToPrice: Boolean;
    procedure OpenTrips;
    procedure chk_Mode;
    procedure DomakeParam;
    procedure Compute_susu_Sub;
    procedure Compute_Sum_sub;
    procedure Compute_backward;
    procedure memo_10_Price;
    procedure memo_15_Price;
    procedure memo_Total_price;
    procedure OpenAcount;
    function GetBSPrice:Currency;
  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

{$R *.DFM}

uses
  CommFuncU,PFConfig,ApConfig,UserData, Trips, Acount;

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

{ TXForm1 }

//
// 초기 파라메터 처리 루틴
//
procedure TXForm1.ProcessParameters(ALink: TXLink);
begin
  ChildDataBase := TEasyDataBase(ALink.ParamByInteger('DATABASE'));
  AppInfo       := Pointer(ALink.ParamByInteger('AppInfo'));

  with tbl_gam_info do begin
    DatabaseName := ChildDataBase.DatabaseName;
    SessionName  := ChildDataBase.SessionName;
    TableName    := 'gam_info';
    Open;
    Edit;
  end;

  with tbl0 do begin
    DatabaseName := ChildDataBase.DatabaseName;
    SessionName  := ChildDataBase.SessionName;
    TableName    := ALink.ParamByString('TABLENAME');
    Open;
    Edit;
  end;

  with Qryexec do begin
    DatabaseName := ChildDataBase.DatabaseName;
    SessionName  := ChildDataBase.SessionName;
  end;
  DomakeParam;
  if ALink.ParamByString('Command') = 'ALLPRINT' then begin
    Make_PrintSource(TfrxReport(ALink.ParamByInteger('Target_Print')),
                     frxReport1,
                     Qryexec,
                     TItemData(AppInfo^).code
                     );
  end;
end;

procedure TXForm1.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbl0.edit;
  tbl0.Post;
  tbl0.close;
  tbl_gam_info.edit;
  tbl_gam_info.Post;
  tbl_gam_info.close;
  ChildDataBase := nil;
  Action := cafree;
end;

procedure TXForm1.XFormDestroy(Sender: TObject);
begin
  //
end;


procedure TXForm1.XFormLink(Sender: TObject; ALink: TXLink);
begin
  if ALink.Command = 'PRINT' then begin
    Doprint(Qryexec,frxReport1,TItemData(AppInfo^).code);
  end else if ALink.Command = 'SAVE' then begin
    tbl0.edit;
    tbl0.Post;
    tbl0.edit;
    tbl_gam_info.edit;
    tbl_gam_info.Post;
    tbl_gam_info.edit;
  end else if ALink.Command = 'DESIGN' then begin
    Dodesign(Qryexec,frxReport1,TItemData(AppInfo^).code)
  end else if ALink.Command = 'PDF' then begin

    DoPDF(Qryexec,frxReport1,TItemData(AppInfo^).code, TItemData(AppInfo^).sd_title+'.pdf');
  end else if ALink.Command = 'REPARAM' then begin
    DomakeParam;
  end else if ALink.Command = 'RefreshFr3' then begin
    DoRefreshFr3(Qryexec,TItemData(AppInfo^).code,TItemData(AppInfo^).sd_title);
  end;
end;
procedure TXForm1.DomakeParam;
begin
  with (cSParam) do begin
    clear;
    Add('company_name='+PF_Config.OtherInfo.CompanyName);
    Add('company_tel='+PF_Config.OtherInfo.CompanyFax);
    Add('company_fax='+PF_Config.OtherInfo.CompanyTel);
    Add('writer_name='+UserInfo.UserName);
    Add('p_type='+InttoStr(pf_config.OtherInfo.Frecitation));
    Add('Mark='+TItemData(AppInfo^).sd_mark);
    Add('sub_title='+TItemData(AppInfo^).sd_sub_title);
    Add('detail_yn=Y');
  end;
end;

procedure TXForm1.f_price0Exit(Sender: TObject);
begin
  if radio_Mode.ItemIndex = 0 then
    Compute_susu;
    
end;

procedure TXForm1.Compute_susu;
var
  Su_Value,Price_Value, P10,P15 : Currency;
begin
  with (tbl_gam_info) do begin
    Detail_Price := GetTotalPrice(Qryexec,P10,P15,'D');
    FieldByName('price0').AsCurrency  := P10;
    FieldByName('price1').AsCurrency  := P15;
//    FieldByName('price2').AsCurrency  := GetBSPrice;
    Price_Value := P10+ P15;
    if Pos('경매',FieldByName('purpose').AsString) <> 0 then begin
      if (P10 > 0) and (P15 > 0) then begin
        Su_Value    := GetSusu2(Price_Value);
        FieldByName('Price10').AsCurrency   := Su_Value*(P10/Price_Value);
        FieldByName('Price15').AsCurrency   := Su_Value*(P15/Price_Value) * 1.5;
      end else begin
        FieldByName('Price10').AsCurrency   := GetSusu2(FieldByName('price0').AsCurrency);
        FieldByName('Price15').AsCurrency   := GetSusu2(FieldByName('price1').AsCurrency)*1.5;
      end;
    end else begin
      if (P10 > 0) and (P15 > 0) then begin
        Su_Value    := GetSusu(Price_Value);
        FieldByName('Price10').AsCurrency   := Su_Value*(P10/Price_Value);
        FieldByName('Price15').AsCurrency   := Su_Value*(P15/Price_Value) * 1.5;
      end else begin
        FieldByName('Price10').AsCurrency   := GetSusu(FieldByName('price0').AsCurrency);
        FieldByName('Price15').AsCurrency   := GetSusu(FieldByName('price1').AsCurrency)*1.5;
      end;
    end;

    FieldByName('SUSU').AsCurrency  := Trunc(FieldByName('Price10').AsCurrency+ FieldByName('Price15').AsCurrency);

    if (P10 > 0) and (P15 > 0) then begin
      if FieldByName('SUSU').AsCurrency < 225000 then begin
        FieldByName('SUSU').AsCurrency := 225000;
      end;
    end;

    FieldByName('SUSUSUM').AsCurrency   := FieldByName('SUSU').AsCurrency +
                                           FieldByName('YEBI').AsCurrency +
                                           FieldByName('MULJOSABI').AsCurrency +
                                           FieldByName('GONGBU').AsCurrency +
                                           FieldByName('SILBI').AsCurrency +
                                           FieldByName('YONGYEUK').AsCurrency;

    FieldByName('JELSA').AsCurrency     := FieldByName('SUSUSUM').AsCurrency - Trunc(FieldByName('SUSUSUM').AsCurrency / 1000)*1000;

    FieldByName('SUSUSUM').AsCurrency   := FieldByName('SUSUSUM').AsCurrency - FieldByName('JELSA').AsCurrency;

    FieldByName('TAX').AsCurrency       := FieldByName('SUSUSUM').AsCurrency*0.1;

    FieldByName('TOTAL').AsCurrency     := FieldByName('SUSUSUM').AsCurrency+FieldByName('TAX').AsCurrency;
    FieldByName('BILL').AsCurrency      := FieldByName('TOTAL').AsCurrency - FieldByName('DEPOSIT').AsCurrency;

  end;
end;
procedure TXForm1.btn_totalClick(Sender: TObject);
begin
  Compute_susu;
end;
function TXForm1.Chk_TobyToPrice:Boolean;
begin
  if tbl_gam_info.fieldByname('price').asCurrency <> Detail_Price then begin
    result := True;
  end else begin
    result := False;
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
  if radio_Mode.ItemIndex = 0 then begin
    f_Price10.Enabled     := False;
    f_Price15.Enabled     := False;
    f_SUSU.Enabled        := False;
    f_SUSUSUM.Enabled     := False;
    f_TOTAL.Enabled       := False;
    f_BILL.Enabled        := False;
    btn_backward.Enabled  := False;
  end else begin
    f_Price10.Enabled     := True;
    f_Price15.Enabled     := True;
    f_SUSU.Enabled        := True;
    f_SUSUSUM.Enabled     := True;
    f_TOTAL.Enabled       := True;
    f_BILL.Enabled        := True;
    btn_backward.Enabled  := True;
  end;
  if radio_Mode2.ItemIndex = 0 then begin
    cSParam.Values['detail_yn'] := 'Y';
  end else begin
    cSParam.Values['detail_yn'] := 'N';
  end;
end;
procedure TXForm1.radio_ModeClick(Sender: TObject);
begin
  chk_Mode;
end;

procedure TXForm1.Compute_susu_Sub;
var
  Su_Value,Price_Value, P10,P15 : Currency;
begin
  with (tbl_gam_info) do begin
    Detail_Price := GetTotalPrice(Qryexec,P10,P15,'D');
    FieldByName('price0').AsCurrency  := P10;
    FieldByName('price1').AsCurrency  := P15;
//    FieldByName('price2').AsCurrency  := GetBSPrice;
    Price_Value := P10+ P15;
    if Pos('경매',FieldByName('purpose').AsString) <> 0 then begin
      if (P10 > 0) and (P15 > 0) then begin
        Su_Value    := GetSusu2(Price_Value);
        FieldByName('Price10').AsCurrency   := Su_Value*(P10/Price_Value);
        FieldByName('Price15').AsCurrency   := Su_Value*(P15/Price_Value) * 1.5;

      end else begin
        FieldByName('Price10').AsCurrency   := GetSusu2(FieldByName('price0').AsCurrency);
        FieldByName('Price15').AsCurrency   := GetSusu2(FieldByName('price1').AsCurrency)*1.5;
      end;
    end else begin
      if (P10 > 0) and (P15 > 0) then begin
        Su_Value    := GetSusu(Price_Value);
        FieldByName('Price10').AsCurrency   := Su_Value*(P10/Price_Value);
        FieldByName('Price15').AsCurrency   := Su_Value*(P15/Price_Value) * 1.5;
      end else begin
        FieldByName('Price10').AsCurrency   := GetSusu(FieldByName('price0').AsCurrency);
        FieldByName('Price15').AsCurrency   := GetSusu(FieldByName('price1').AsCurrency)*1.5;
      end;
    end;

    FieldByName('SUSU').AsCurrency  := FieldByName('Price10').AsCurrency+ FieldByName('Price15').AsCurrency;

    if (P10 > 0) and (P15 > 0) then begin
      if FieldByName('SUSU').AsCurrency < 225000 then begin
        FieldByName('SUSU').AsCurrency := 225000;
      end;
    end;
  end;
end;

procedure TXform1.Compute_Sum_sub;
var
  Su_Value,Price_Value, P10,P15 : Currency;
begin
  with (tbl_gam_info) do begin
    if FieldByName('JELSA').AsCurrency = 0 then
      FieldByName('JELSA').AsCurrency   := FieldByName('SUSUSUM').AsCurrency - Trunc(FieldByName('SUSUSUM').AsCurrency / 1000)*1000;

    FieldByName('SUSUSUM').AsCurrency   := FieldByName('SUSU').AsCurrency +
                                           FieldByName('YEBI').AsCurrency +
                                           FieldByName('MULJOSABI').AsCurrency +
                                           FieldByName('GONGBU').AsCurrency +
                                           FieldByName('SILBI').AsCurrency +
                                           FieldByName('YONGYEUK').AsCurrency;

    FieldByName('SUSUSUM').AsCurrency   := FieldByName('SUSUSUM').AsCurrency - FieldByName('JELSA').AsCurrency;
    
    if FieldByName('TAX').AsCurrency = 0 then
      FieldByName('TAX').AsCurrency       := FieldByName('SUSUSUM').AsCurrency*0.1;

    FieldByName('TOTAL').AsCurrency     := FieldByName('SUSUSUM').AsCurrency+FieldByName('TAX').AsCurrency;
    FieldByName('BILL').AsCurrency      := FieldByName('TOTAL').AsCurrency - FieldByName('DEPOSIT').AsCurrency;
  end;
end;
procedure TXForm1.btn_susu_computeClick(Sender: TObject);
begin
  Compute_susu_Sub;
end;
procedure TXform1.Compute_backward;
begin
  with (tbl_gam_info) do begin
    FieldByname('TOTAL').AsCurrency   := FieldByName('BILL').AsCurrency + FieldByName('DEPOSIT').AsCurrency;
    FieldByName('TAX').AsCurrency     := FieldByName('TOTAL').AsCurrency * (1/11);
    FieldByName('SUSUSUM').AsCurrency := FieldByName('TOTAL').AsCurrency - FieldByName('TAX').AsCurrency;
    FieldByName('SUSU').AsCurrency    := FieldByName('SUSUSUM').AsCurrency - FieldByName('YEBI').AsCurrency
                                                                           - FieldByName('MULJOSABI').AsCurrency
                                                                           - FieldByName('GONGBU').AsCurrency
                                                                           - FieldByName('SILBI').AsCurrency
                                                                           - FieldByName('YONGYEUK').AsCurrency;
    //FieldByName('JELSA').AsCurrency   := FieldByName('SUSUSUM').AsCurrency - Trunc(FieldByName('SUSUSUM').AsCurrency / 1000)*1000;
    //FieldByName('SUSUSUM').AsCurrency := FieldByName('SUSUSUM').AsCurrency - FieldByName('JELSA').AsCurrency;
    {

    FieldByName('SUSU').AsCurrency    := FieldByName('SUSUSUM').AsCurrency - FieldByName('YONGYEUK').AsCurrency
                                                                           - FieldByName('SILBI').AsCurrency
                                                                           - FieldByName('GONGBU').AsCurrency
                                                                           - FieldByName('SILBI').AsCurrency
                                                                           - FieldByName('GONGBU').AsCurrency
                                                                           - FieldByName('MULJOSABI').AsCurrency
                                                                           - FieldByName('MULJOSABI').AsCurrency
                                                                           - FieldByName('YEBI').AsCurrency;
    }
  end;
end;

procedure TXForm1.sbtn_other_computeClick(Sender: TObject);
begin
  Compute_Sum_sub;
end;

procedure TXForm1.btn_backwardClick(Sender: TObject);
begin
  Compute_backward;
end;

procedure TXForm1.memo_Total_price;
begin
  tbl0.FieldByName('area1').AsString  :=  tbl0.FieldByName('area1').AsString +#13+
                                          GetSusuText(tbl_gam_info.fieldByName('price').AsCurrency,tbl_gam_info.fieldByName('SUSU').AsCurrency);
end;

procedure TXForm1.memo_10_Price;
begin

  tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString+#13+
                                        FormatCurr('#,##',tbl_gam_info.fieldByName('SUSU').AsCurrency)+'x'#13+
                                        '('+FormatCurr('#,##',tbl_gam_info.fieldByName('price0').AsCurrency)+'/'+FormatCurr('#,##',tbl_gam_info.fieldByName('price').AsCurrency)+')'#13+
                                        '≒'+FormatCurr('#,##',tbl_gam_info.fieldByName('price10').AsCurrency);
end;

procedure TXForm1.memo_15_Price;
begin
  tbl0.FieldByName('area1').AsString := tbl0.FieldByName('area1').AsString+#13+
                                        FormatCurr('#,##',tbl_gam_info.fieldByName('SUSU').AsCurrency)+'x'#13+
                                        '('+FormatCurr('#,##',tbl_gam_info.fieldByName('price1').AsCurrency)+'/'+FormatCurr('#,##',tbl_gam_info.fieldByName('price').AsCurrency)+')'#13+
                                        '≒'+FormatCurr('#,##',tbl_gam_info.fieldByName('price15').AsCurrency);

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

procedure TXForm1.f_MULJOSABI_countPropertiesEditValueChanged(
  Sender: TObject);
begin
  if IsNumberOnly(f_MULJOSABI_count.Text) then begin
    tbl_gam_info.FieldByName('MULJOSABI').AsCurrency := 3000 * StrtoInt(f_MULJOSABI_count.Text);
  end;
end;

procedure TXForm1.cxButton1Click(Sender: TObject);
begin
  OpenAcount;
end;

function TXForm1.GetBSPrice: Currency;
var
  p10,p15 : Currency;
begin
  result := GetBSTotalPrice(Qryexec,p10,p15);
end;

end.
//≒
