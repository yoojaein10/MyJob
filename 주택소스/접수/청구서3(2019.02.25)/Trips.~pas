unit Trips;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, ExtCtrls,
  RbDrawCore, RbPanel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, kbmMemTable, kbmMWCustomConnectionPool,
  kbmMWCustomDataset, kbmMWClientDataset, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxCurrencyEdit, cxGroupBox;

type
  Ttripsfrm = class(TForm)
    DS_Inventory_Trip_Info1: TDataSource;
    RbPanel3: TRbPanel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Panel1: TPanel;
    Shape9: TShape;
    Shape10: TShape;
    RbPanel2: TRbPanel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1REG: TcxGridDBColumn;
    cxGrid1DBTableView1EUB: TcxGridDBColumn;
    cxGrid1DBTableView1BUN1: TcxGridDBColumn;
    cxGrid1DBTableView1BUN2: TcxGridDBColumn;
    cxGrid1DBTableView1addr: TcxGridDBColumn;
    cxGrid1DBTableView1totalap: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel24: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxLabel11: TcxLabel;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    USP_S_Inventory_Trip_Info1: TkbmMWClientStoredProc;
    USP_S_Inventory_Trip_Info1SEQ: TLargeintField;
    USP_S_Inventory_Trip_Info1MasterID: TLargeintField;
    USP_S_Inventory_Trip_Info1Row_ID: TStringField;
    USP_S_Inventory_Trip_Info1REG: TStringField;
    USP_S_Inventory_Trip_Info1EUB: TStringField;
    USP_S_Inventory_Trip_Info1SAN: TStringField;
    USP_S_Inventory_Trip_Info1ADDR: TStringField;
    USP_S_Inventory_Trip_Info1BUN1: TStringField;
    USP_S_Inventory_Trip_Info1BUN2: TStringField;
    USP_S_Inventory_Trip_Info1REG1: TStringField;
    USP_S_Inventory_Trip_Info1EUB1: TStringField;
    USP_S_Inventory_Trip_Info1Building: TStringField;
    USP_S_Inventory_Trip_Info1Dong: TStringField;
    USP_S_Inventory_Trip_Info1Floor: TStringField;
    USP_S_Inventory_Trip_Info1Ho: TStringField;
    USP_S_Inventory_Trip_Info1DocID: TStringField;
    USP_S_Inventory_Trip_Info1Number: TLargeintField;
    USP_S_Inventory_Trip_Info1OfficeID: TStringField;
    USP_S_Inventory_Trip_Info1ADDR_1: TStringField;
    USP_S_Inventory_Trip_Info1Trans: TCurrencyField;
    USP_S_Inventory_Trip_Info1HyunJiTrans: TCurrencyField;
    USP_S_Inventory_Trip_Info1ILBI: TCurrencyField;
    USP_S_Inventory_Trip_Info1SikBi: TCurrencyField;
    USP_S_Inventory_Trip_Info1SukBakBi: TCurrencyField;
    USP_S_Inventory_Trip_Info1TOTAL: TCurrencyField;
    USP_S_Inventory_Trip_Info1TransAP: TCurrencyField;
    USP_S_Inventory_Trip_Info1HyunJiTransAP: TCurrencyField;
    USP_S_Inventory_Trip_Info1ILBIAP: TCurrencyField;
    USP_S_Inventory_Trip_Info1SikBiAP: TCurrencyField;
    USP_S_Inventory_Trip_Info1SukBakBiAP: TCurrencyField;
    USP_S_Inventory_Trip_Info1TotalAP: TCurrencyField;
    USP_S_Inventory_Trip_Info1BIGO: TStringField;
    cxGroupBox3: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    apnum: TcxComboBox;
    apday: TcxComboBox;
    Shape1: TShape;
    Shape2: TShape;
    cxGroupBox4: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    jiknum: TcxComboBox;
    jikday: TcxComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    Shape3: TShape;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel19: TcxLabel;
    HSU: TcxComboBox;
    cxhsu: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure apnumPropertiesChange(Sender: TObject);
    procedure apdayPropertiesChange(Sender: TObject);
    procedure HSUPropertiesChange(Sender: TObject);
    procedure cxhsuKeyPress(Sender: TObject; var Key: Char);
    procedure cxhsuPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    Total, TotalAp : Currency;
    function Compute_Total:Currency;
    function Compute_TotalAp: Currency;
    procedure Compute;
  public
    { Public declarations }
    procedure trips_list(masterid : integer);
  end;

var
  tripsfrm: Ttripsfrm;

implementation

uses main, CommModule,CommFuncU,UserData ;

{$R *.dfm}

{ TForm4 }

function Ttripsfrm.Compute_Total: Currency;
var
  Trans, HyunJiTrans, ILBI, SikBi, SukBakBi, SumValue : Currency;
  n_Day, n_Number : Integer;
begin
  result := 0;
  with (USP_S_Inventory_Trip_Info1) do begin
      Trans       := Trunc(FieldByName('Trans').AsCurrency);
      HyunJiTrans := Trunc(FieldByName('HyunJiTrans').AsCurrency);
      ILBI        := Trunc(FieldByName('ILBI').AsCurrency);
      SikBi       := Trunc(FieldByName('SikBi').AsCurrency);
      SukBakBi    := Trunc(FieldByName('SukBakBi').AsCurrency);

      n_Day := jikday.ItemIndex + 1;
      n_Number := jiknum.ItemIndex;


      SumValue    := (
                      (Trans) +
                      (HyunJiTrans * n_Day) +
                      (ILBI * n_Day) +
                      (SikBi * n_Day) +
                      (SukBakBi * (n_Day-1))
                     ) * n_Number;
      result := SumValue;
  end;
end;

function Ttripsfrm.Compute_TotalAp: Currency;
var
  Trans, HyunJiTrans, ILBI, SikBi, SukBakBi, SumValue,Total : Currency;
  n_Day, n_Number,n_hsu : Integer;
begin

 if (userinfo.Office = '10') THEN
 BEGIN
  result := 0;
  with (USP_S_Inventory_Trip_Info1) do begin
      Trans       := Trunc(FieldByName('TransAP').AsCurrency);
      HyunJiTrans := Trunc(FieldByName('HyunJiTransAP').AsCurrency);
      ILBI        := Trunc(FieldByName('ILBIAP').AsCurrency);
      SikBi       := Trunc(FieldByName('SikBiAP').AsCurrency);
      SukBakBi    := Trunc(FieldByName('SukBakBiAP').AsCurrency);
      Total       := Trunc(FieldByName('TOTALAP').AsCurrency);
      n_Day := apday.ItemIndex + 1; // 일수
      n_Number := apnum.ItemIndex;  // 인원
   //나현찬
     // n_hsu := hsu.ItemIndex+1 ;
      n_hsu :=  strtoint(trim(cxhsu.text)) ;

      SumValue    := (
                    //  (Trans) +
                    //  (HyunJiTrans * n_Day) +
                    //  (ILBI * n_Day) +
                    //  (SikBi * n_Day) +
                        (Total * n_Day) +
                    //본사 요청 20111223 01-1108-3-2785 숙박비는 무조건   (SukBakBi * (n_Day-1))
                    (SukBakBi * (n_Day-1))         // 본사 추가 오성희 팀장
                     ) * n_Number * n_hsu;
      result := SumValue;
  end;
 END
 ELSE Begin
        // 원래소스 지사는 몰라서 

       result := 0;
  with (USP_S_Inventory_Trip_Info1) do begin
      Trans       := Trunc(FieldByName('TransAP').AsCurrency);
      HyunJiTrans := Trunc(FieldByName('HyunJiTransAP').AsCurrency);
      ILBI        := Trunc(FieldByName('ILBIAP').AsCurrency);
      SikBi       := Trunc(FieldByName('SikBiAP').AsCurrency);
      SukBakBi    := Trunc(FieldByName('SukBakBiAP').AsCurrency);

      n_Day := apday.ItemIndex + 1; // 일수
      n_Number := apnum.ItemIndex;  // 인원
   //나현찬
     // n_hsu := hsu.ItemIndex+1 ;
      n_hsu :=  strtoint(trim(cxhsu.text)) ;

      SumValue    := (
                      (Trans) +
                      (HyunJiTrans * n_Day) +
                      (ILBI * n_Day) +
                      (SikBi * n_Day) +
                     (SukBakBi * (n_Day-1))

                     ) * n_Number * n_hsu;
      result := SumValue;
      END;
    END;
end;

procedure Ttripsfrm.Compute;
begin
  Total       := Compute_Total;
  TotalAP     := Compute_TotalAP;

    cxCurrencyEdit1.Value   := TotalAP;
    cxCurrencyEdit2.Value   := Total;

  cxCurrencyEdit3.Value   := Total + TotalAP;
end;

procedure Ttripsfrm.trips_list(masterid: integer);
begin
  with (USP_S_Inventory_Trip_Info1) do begin
    if Active then Close;
    StoredProcName:='@USP_S_Inventory_Trip_Info';
    Params.ParamByName('MasterID').AsInteger  := masterid;
    open;
  end;
end;


procedure Ttripsfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure Ttripsfrm.FormDestroy(Sender: TObject);
begin
  tripsfrm := nil;
end;

procedure Ttripsfrm.cxButton1Click(Sender: TObject);
begin
  Compute;
end;

procedure Ttripsfrm.cxButton2Click(Sender: TObject);
var
  STemp : String;
begin
  with (TXForm1(Self.Owner).tbl_gam_info) do begin
    if Active then begin
      if Not(State in [dsEdit]) then
        edit;
      fieldByName('YEBI').AsCurrency := cxCurrencyEdit3.Value ;
    end;
  end;

  STemp := '';
  if apnum.ItemIndex > 0 then
    STemp := STemp + '평가사 ' + apnum.Text + ' ' + apday.Text ;

  if jiknum.ItemIndex > 0 then
  begin
    if STemp <> '' then
      STemp := STemp + ', ';
    STemp := STemp + '직원 ' + jiknum.Text + ' ' + jikday.Text ;
  end;

  if STemp <> '' then
    STemp := STemp + ' 출장'
  else
    STemp := STemp + '출장없음';

  with (TXForm1(Self.Owner).tbl0) do begin
    if Active then begin
      if Not(State in [dsEdit]) then
        edit;
      fieldByName('area4').AsString := STemp ;
    end;
  end;
  Close;
end;

procedure Ttripsfrm.cxButton3Click(Sender: TObject);
begin
   Close;
end;

procedure Ttripsfrm.apnumPropertiesChange(Sender: TObject);
begin
Compute;
end;

procedure Ttripsfrm.apdayPropertiesChange(Sender: TObject);
begin
    // 나현찬 수정 본사는 계산 안되고 지사는 모르니까
 // 20111226 일단 모르니까 주석 처리  
 if (userinfo.Office = '10') THEN
 exit
 else
 Compute; 
end;

procedure Ttripsfrm.HSUPropertiesChange(Sender: TObject);
begin
Compute;
end;

procedure Ttripsfrm.cxhsuKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then begin
      Compute;
      cxButton2.SetFocus ;




 if not (key in ['0','1','2','3','4','5','6','7','8','9']) then key := #0;


   end;

end;

procedure Ttripsfrm.cxhsuPropertiesChange(Sender: TObject);
begin
 Compute;
end;

end.
