//------------------------------------------------------------------------------
//
// Unit        : Unit4.pas
// Author      : 장기정
// Description : 
// History
//   V 1.00 : 2006.07.26 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit Desk_Appraisal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager,
  TFlatPanelUnit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMemo, cxDBEdit, cxCurrencyEdit, cxCheckBox,
  cxButtonEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel, cxContainer,
  cxGroupBox, kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Variants,
  cxImageComboBox, frxClass, frxDBSet, cxSplitter, dxmdaset, cxPC,
  RbDrawCore, RbPanel;

type
  TXForm1 = class(TXForm)
    Panel5: TPanel;
    Panel6: TPanel;
    Panel3: TPanel;
    Qry_TS_Master: TkbmMWClientStoredProc;
    DSC_TS_Master: TDataSource;
    Qry_TS_Build: TkbmMWClientStoredProc;
    DSC_TS_Build: TDataSource;
    Qry_TS_Land: TkbmMWClientStoredProc;
    DSC_TS_Land: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    cxSplitter1: TcxSplitter;
    pnl_N: TRbPanel;
    Shape12: TShape;
    Shape7: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Pan_Basic: TPanel;
    Grd_List: TcxGrid;
    Grd_ListDBTableView1: TcxGridDBTableView;
    Grd_ListDBTableView1Office: TcxGridDBColumn;
    Grd_ListDBTableView1Reg_DateTime: TcxGridDBColumn;
    Grd_ListDBTableView1Reg_Charge: TcxGridDBColumn;
    Grd_ListDBTableView1Consult_Charge: TcxGridDBColumn;
    Grd_ListDBTableView1CustName: TcxGridDBColumn;
    Grd_ListDBTableView1CustPhone: TcxGridDBColumn;
    Grd_ListDBTableView1CustFAX: TcxGridDBColumn;
    Grd_ListDBTableView1CustCharge: TcxGridDBColumn;
    Grd_ListDBTableView1Reg: TcxGridDBColumn;
    Grd_ListDBTableView1Eub: TcxGridDBColumn;
    Grd_ListDBTableView1SAN: TcxGridDBColumn;
    Grd_ListDBTableView1Addr: TcxGridDBColumn;
    Grd_ListDBTableView1BUN1: TcxGridDBColumn;
    Grd_ListDBTableView1BUN2: TcxGridDBColumn;
    Grd_ListDBTableView1Building: TcxGridDBColumn;
    Grd_ListDBTableView1DongHo: TcxGridDBColumn;
    Grd_ListDBTableView1Pyoung: TcxGridDBColumn;
    Grd_ListDBTableView1Category: TcxGridDBColumn;
    Grd_ListDBTableView1ToJiBIGO: TcxGridDBColumn;
    Grd_ListDBTableView1Build_Struct: TcxGridDBColumn;
    Grd_ListDBTableView1Remodel_Date: TcxGridDBColumn;
    Grd_ListDBTableView1ToJi_Build_Total: TcxGridDBColumn;
    Grd_ListDBTableView1AdjPrice: TcxGridDBColumn;
    Grd_ListDBTableView1DocID: TcxGridDBColumn;
    Grd_ListDBTableView1Bigo: TcxGridDBColumn;
    Grd_ListDBTableView1Jun_Master: TcxGridDBColumn;
    Grd_ListDBTableView1MinPrice: TcxGridDBColumn;
    Grd_ListDBTableView1MaxPrice: TcxGridDBColumn;
    Grd_ListDBTableView1CustID: TcxGridDBColumn;
    Grd_ListDBTableView1Toji_Total: TcxGridDBColumn;
    Grd_ListDBTableView1Build_Total: TcxGridDBColumn;
    Grd_ListLevel1: TcxGridLevel;
    FlatPanel5: TFlatPanel;
    Pan_SaveCancel: TFlatPanel;
    BTN_Save: TcxButton;
    BTN_Cancel: TcxButton;
    Pan_Find_Etc: TFlatPanel;
    Label1: TLabel;
    Edt_StartDate: TcxDateEdit;
    cxLabel19: TcxLabel;
    cxLabel23: TcxLabel;
    Edt_StartBun: TcxTextEdit;
    cxLabel24: TcxLabel;
    Edt_EndBun: TcxTextEdit;
    Edt_FindWord: TcxTextEdit;
    cxLabel16: TcxLabel;
    Cob_Category: TcxImageComboBox;
    cxLabel22: TcxLabel;
    Edt_EndDate: TcxDateEdit;
    cxLabel12: TcxLabel;
    BTN_Find: TcxButton;
    SPan_Office: TFlatPanel;
    Cob_Office: TcxImageComboBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    RbPanel1: TRbPanel;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Box_EditGroup: TcxGroupBox;
    Grd_Build: TcxGrid;
    Grd_BuildDBTableView1: TcxGridDBTableView;
    Grd_BuildLevel1: TcxGridLevel;
    Grd_Land: TcxGrid;
    Grd_LandDBTableView1: TcxGridDBTableView;
    Grd_LandDBTableView1JiBun: TcxGridDBColumn;
    Grd_LandDBTableView1JiMok: TcxGridDBColumn;
    Grd_LandDBTableView1Area: TcxGridDBColumn;
    Grd_LandDBTableView1UnitCost: TcxGridDBColumn;
    Grd_LandDBTableView1Total: TcxGridDBColumn;
    Grd_LandLevel1: TcxGridLevel;
    Pan_Build_Edit_Group: TFlatPanel;
    Edt_Floors1: TcxTextEdit;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    Edt_Floors2: TcxTextEdit;
    Edt_Floors3: TcxTextEdit;
    Edt_Floors4: TcxTextEdit;
    Edt_Floors5: TcxTextEdit;
    cxLabel35: TcxLabel;
    Edt_BArea1: TcxCurrencyEdit;
    Edt_BArea2: TcxCurrencyEdit;
    Edt_BArea3: TcxCurrencyEdit;
    Edt_BArea4: TcxCurrencyEdit;
    Edt_BArea5: TcxCurrencyEdit;
    Edt_BUnitCost1: TcxCurrencyEdit;
    Edt_BUnitCost2: TcxCurrencyEdit;
    Edt_BUnitCost3: TcxCurrencyEdit;
    Edt_BUnitCost4: TcxCurrencyEdit;
    Edt_BUnitCost5: TcxCurrencyEdit;
    Edt_BTotal1: TcxCurrencyEdit;
    Edt_BTotal2: TcxCurrencyEdit;
    Edt_BTotal3: TcxCurrencyEdit;
    Edt_BTotal4: TcxCurrencyEdit;
    Edt_BTotal5: TcxCurrencyEdit;
    Edt_BSEQ1: TcxCurrencyEdit;
    Edt_BSEQ2: TcxCurrencyEdit;
    Edt_BSEQ3: TcxCurrencyEdit;
    Edt_BSEQ4: TcxCurrencyEdit;
    Edt_BSEQ5: TcxCurrencyEdit;
    cxLabel36: TcxLabel;
    Pan_Land_Edit_Group: TFlatPanel;
    Edt_JiBun1: TcxTextEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    Edt_JiMok1: TcxTextEdit;
    Edt_JiBun2: TcxTextEdit;
    Edt_JiMok2: TcxTextEdit;
    Edt_JiBun3: TcxTextEdit;
    Edt_JiMok3: TcxTextEdit;
    Edt_JiBun4: TcxTextEdit;
    Edt_JiMok4: TcxTextEdit;
    Edt_JiBun5: TcxTextEdit;
    Edt_JiMok5: TcxTextEdit;
    cxLabel26: TcxLabel;
    Edt_Area1: TcxCurrencyEdit;
    Edt_Area2: TcxCurrencyEdit;
    Edt_Area3: TcxCurrencyEdit;
    Edt_Area4: TcxCurrencyEdit;
    Edt_Area5: TcxCurrencyEdit;
    Edt_Cost1: TcxCurrencyEdit;
    Edt_Cost2: TcxCurrencyEdit;
    Edt_Cost3: TcxCurrencyEdit;
    Edt_Cost4: TcxCurrencyEdit;
    Edt_Cost5: TcxCurrencyEdit;
    Edt_Price1: TcxCurrencyEdit;
    Edt_Price2: TcxCurrencyEdit;
    Edt_Price3: TcxCurrencyEdit;
    Edt_Price4: TcxCurrencyEdit;
    Edt_Price5: TcxCurrencyEdit;
    Edt_SEQ1: TcxCurrencyEdit;
    Edt_SEQ2: TcxCurrencyEdit;
    Edt_SEQ3: TcxCurrencyEdit;
    Edt_SEQ4: TcxCurrencyEdit;
    Edt_SEQ5: TcxCurrencyEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    Edt_MasterID: TcxDBTextEdit;
    Edt_Reg_DateTime: TcxDBDateEdit;
    Lup_Consult_Charge: TcxDBLookupComboBox;
    Etc_CustName: TcxDBButtonEdit;
    Edt_CustPhone: TcxDBTextEdit;
    Etc_CustCharge: TcxDBTextEdit;
    Edt_CustFAX: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    Edt_Bun1: TcxDBTextEdit;
    Cob_San: TcxDBComboBox;
    Edt_Bun2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Edt_Building: TcxDBTextEdit;
    Lup_Category: TcxDBLookupComboBox;
    Edt_Category: TcxDBTextEdit;
    Edt_Reg: TcxDBTextEdit;
    Edt_Eub: TcxDBTextEdit;
    Edt_Build_Struct: TcxDBTextEdit;
    Edt_Remodel_Date: TcxDBTextEdit;
    FlatPanel3: TFlatPanel;
    Edt_Toji_Total: TcxDBCurrencyEdit;
    FlatPanel4: TFlatPanel;
    Edt_Build_Total: TcxDBCurrencyEdit;
    Pan_Total: TFlatPanel;
    Edt_ToJi_Build_Total: TcxDBCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel17: TcxLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Edt_Addr: TcxDBButtonEdit;
    cxLabel31: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    Pag_Pages_Menus: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Edt_Bigo_In: TcxDBMemo;
    cxTabSheet9: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    Edt_Bigo: TcxDBMemo;
    cxLabel25: TcxLabel;
    Lup_Manager: TcxDBLookupComboBox;
    EPan_Office_Charge: TFlatPanel;
    Lup_Reg_Charge: TcxDBLookupComboBox;
    Lup_Office: TcxDBLookupComboBox;
    RbPanel2: TRbPanel;
    RbPanel3: TRbPanel;
    RbPanel4: TRbPanel;
    Qry_TS_Build_Delete: TkbmMWClientStoredProc;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    Qry_TS_Land_Delete: TkbmMWClientStoredProc;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    Qry_TS_Master_Delete: TkbmMWClientStoredProc;
    IntegerField3: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
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
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    StringField27: TStringField;
    StringField28: TStringField;
    IntegerField6: TIntegerField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    StringField29: TStringField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    StringField30: TStringField;
    IntegerField7: TIntegerField;
    StringField31: TStringField;
    Btn_New: TcxButton;
    Btn_Edit: TcxButton;
    Btn_Delete: TcxButton;
    BTN_Print: TcxButton;
    Btn_Exit: TcxButton;
    Edt_Re_Price1: TcxTextEdit;
    Edt_Re_Price2: TcxTextEdit;
    Edt_Re_Price3: TcxTextEdit;
    Edt_Re_Price4: TcxTextEdit;
    Edt_Re_Price5: TcxTextEdit;
    Qry_TS_Build_DeleteRe_Price: TStringField;
    Grd_BuildDBTableView1Floors: TcxGridDBColumn;
    Grd_BuildDBTableView1Area: TcxGridDBColumn;
    Grd_BuildDBTableView1UnitCost: TcxGridDBColumn;
    Grd_BuildDBTableView1Total: TcxGridDBColumn;
    Grd_BuildDBTableView1Re_Price: TcxGridDBColumn;
    Qry_TS_MasterTS_SEQ: TIntegerField;
    Qry_TS_MasterMasterID: TStringField;
    Qry_TS_MasterOffice: TStringField;
    Qry_TS_MasterReg_DateTime: TDateTimeField;
    Qry_TS_MasterReg_Charge: TIntegerField;
    Qry_TS_MasterConsult_Charge: TIntegerField;
    Qry_TS_MasterCustName: TStringField;
    Qry_TS_MasterCustPhone: TStringField;
    Qry_TS_MasterCustCharge: TStringField;
    Qry_TS_MasterCustFAX: TStringField;
    Qry_TS_MasterReg: TStringField;
    Qry_TS_MasterEub: TStringField;
    Qry_TS_MasterSAN: TStringField;
    Qry_TS_MasterAddr: TStringField;
    Qry_TS_MasterBUN1: TStringField;
    Qry_TS_MasterBUN2: TStringField;
    Qry_TS_MasterBuilding: TStringField;
    Qry_TS_MasterDongHo: TStringField;
    Qry_TS_MasterPyoung: TStringField;
    Qry_TS_MasterCategory: TStringField;
    Qry_TS_MasterToJiBIGO: TStringField;
    Qry_TS_MasterBuild_Struct: TStringField;
    Qry_TS_MasterRemodel_Date: TStringField;
    Qry_TS_MasterToJi_Build_Total: TCurrencyField;
    Qry_TS_MasterAdjPrice: TCurrencyField;
    Qry_TS_MasterDocID: TStringField;
    Qry_TS_MasterBigo: TStringField;
    Qry_TS_MasterJun_Master: TIntegerField;
    Qry_TS_MasterMinPrice: TCurrencyField;
    Qry_TS_MasterMaxPrice: TCurrencyField;
    Qry_TS_MasterCustID: TStringField;
    Qry_TS_MasterToji_Total: TCurrencyField;
    Qry_TS_MasterBuild_Total: TCurrencyField;
    Qry_TS_MasterBigo_In: TStringField;
    Qry_TS_MasterManager: TIntegerField;
    Qry_TS_MasterAppCode: TStringField;
    Qry_TS_MasterGuid: TStringField;
    Qry_TS_LandSEQ: TIntegerField;
    Qry_TS_LandTS_MasterID: TStringField;
    Qry_TS_LandGubun: TStringField;
    Qry_TS_LandJiBun: TStringField;
    Qry_TS_LandJiMok: TStringField;
    Qry_TS_LandAreaUnit: TStringField;
    Qry_TS_LandArea: TFloatField;
    Qry_TS_LandUnitCost: TCurrencyField;
    Qry_TS_LandTotal: TCurrencyField;
    Qry_TS_BuildSEQ: TIntegerField;
    Qry_TS_BuildTS_MasterID: TStringField;
    Qry_TS_BuildFloors: TStringField;
    Qry_TS_BuildArea: TFloatField;
    Qry_TS_BuildUnitCost: TCurrencyField;
    Qry_TS_BuildTotal: TCurrencyField;
    Qry_TS_BuildRe_Price: TStringField;
    frxReport1: TfrxReport;

    procedure UP_Editing_Mode_Sw(cSw : String);
    procedure UP_Find_List();
    procedure UP_Find_CustName();
    procedure UP_Find_SoJaeGi();
    procedure UP_Land_Data_Reading();
    procedure UP_Build_Data_Reading();
    procedure UP_Land_Data_Save();
    procedure UP_Build_Data_Save();
    procedure UP_Land_Price_Calculation(Sender: TObject);
    procedure UP_Build_Price_Calculation(Sender: TObject);
    procedure UP_Doc_Data_Move();
    Function  UP_MsterID_Reding(cMasterID:String): String;  // 마스터테이블 ID읽어오기

    procedure BTN_FindClick(Sender: TObject);
    procedure BTN_NewClick(Sender: TObject);
    procedure XFormCreate(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_EditClick(Sender: TObject);
    procedure Etc_CustNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edt_AddrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_AddrPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BTN_PrintClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure Qry_TS_MasterSANGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Btn_ExitClick(Sender: TObject);
    procedure Qry_TS_MasterOfficeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Qry_TS_MasterCategoryGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Qry_TS_MasterReg_ChargeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Qry_TS_MasterConsult_ChargeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Qry_TS_MasterManagerGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Qry_TS_MasterResolveError(Sender: TObject;
      ErrorType: Integer; Message: String; RecordID: Integer;
      Current: Boolean; var Retry: Boolean);
    procedure BTN_DeleteClick(Sender: TObject);
    procedure Edt_Bun1Exit(Sender: TObject);
    procedure Edt_Bun2Exit(Sender: TObject);
    procedure Qry_TS_LandResolveError(Sender: TObject; ErrorType: Integer;
      Message: String; RecordID: Integer; Current: Boolean;
      var Retry: Boolean);
    procedure Qry_TS_BuildResolveError(Sender: TObject; ErrorType: Integer;
      Message: String; RecordID: Integer; Current: Boolean;
      var Retry: Boolean);
  private
    procedure ProcessParameters(ALink: TXLink);
  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
                                                             
var
       cMode      : String;
       aOffice    : array [0..99] of String;
       aCategory  : array [0..99] of String;
       cJobMode   : String;
       bJob_Error : Boolean;
       cMasterId  : String;

implementation

uses  CommModule, DM, UserFunc, UserData, apconfig;


{$R *.DFM}

//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TXForm1;
begin
  Form := TXForm1.Create(Application);
  try
    with Form do begin
         AHandle := SetParentControl(AParent);

         if ALink <> nil then begin
            //Edt_FindWord.Text := ALink.ParamByString('cDocId');
            cMode             := ALink.ParamByString('cMode');
         end;

         // 부모가 지정되지 않으면 MDI Child로 속성을 변경한다
         if cMode = 'modal' then ShowModal
         else FormStyle := fsMDIChild;

    end;
  except;
  end
end;

{ TXForm4 }

//
// 초기 파라메터 처리 루틴
//
procedure TXForm1.ProcessParameters(ALink: TXLink);
begin
  // todo your codes !!
end;

procedure TXForm1.BTN_FindClick(Sender: TObject);
begin
          BTN_Find.Enabled := False;
	        UP_Find_List();
          BTN_Find.Enabled := True;
end;

procedure TXForm1.UP_Find_List();
begin
          Application.Hint := 'S';
          With Qry_TS_Master do begin
               Close;
               params.ParamByName('Office').AsString           := Cob_Office.Properties.Items.Items[Cob_Office.ItemIndex].Value;
               params.ParamByName('Reg_DateTime_S').AsString   := Edt_StartDate.Text;
               params.ParamByName('Reg_DateTime_E').AsString   := Edt_EndDate.Text;
               params.ParamByName('sBUN1').AsString            := Edt_StartBun.Text;
               params.ParamByName('sBUN2').AsString            := Edt_EndBun.Text;
               params.ParamByName('Category').AsString         := Cob_Category.Properties.Items.Items[Cob_Category.ItemIndex].Value;
               params.ParamByName('Qry').AsString              := Edt_FindWord.Text;
               Open;
         end;
          Application.Hint := 'C';         
end;

procedure TXForm1.BTN_NewClick(Sender: TObject);
begin
          UP_Editing_Mode_Sw('2');
          cJobMode  := 'APPEND';

          Qry_TS_Master.Append;

          Qry_TS_Master.FieldByName('Reg_DateTime').AsString    := FormatDateTime('yyyy-mm-dd', Date);   // 접수일자
          Qry_TS_Master.FieldByName('Office').AsString          := Userinfo.Office;
          Qry_TS_Master.FieldByName('Reg_Charge').AsInteger     := Userinfo.UID;
          Qry_TS_Master.FieldByName('AppCode').AsString         := copy(Userinfo.OrgID,1,5)+'0';


          // 토지와 건물 리스트 읽어오기
          UP_Land_Data_Reading();
          UP_Build_Data_Reading();

          Edt_Reg_DateTime.SetFocus;          
          //Qry_TS_Build.Append;
          //Qry_TS_Land.Append;
end;

procedure TXForm1.XFormCreate(Sender: TObject);
begin
          Edt_StartDate.Text := FormatDateTime('yyyy-mm-dd', Date -3);
          Edt_EndDate.Text   := FormatDateTime('yyyy-mm-dd', Date);
          Edt_FindWord.Text  := '';
          Edt_StartBun.Text  := '';
          Edt_EndBun.Text    := '';
          Cob_Office.Text    := '';
          Cob_Category.Text  := '';


          UP_Doc_Data_Move();

          UP_Find_List();
          Qry_TS_Build.Open;
          Qry_TS_Land.Open;

  CM.Control_Right(self);

end;

procedure TXForm1.UP_Doc_Data_Move();
begin
          Cob_Office.ItemIndex         := 0;
          Cob_Category.ItemIndex       := 0;
{
          Lup_Reg_Charge.ItemIndex     := 0;
          Lup_Consult_Charge.ItemIndex     := 0;
          Lup_Manager.ItemIndex         := 0;
 }
          // 본지사명 콤보에 넣기
          Update_Office_List(Cob_Office,Userinfo.Office);
          SPan_Office.Enabled := False;
          if Userinfo.ShowAll then SPan_Office.Enabled := True;
          // 권한이 없으면 해당부분은 비 활성화시킨다
{
          Update_User_List(Lup_Reg_Charge, 0,'9', Userinfo.Office );
          Update_User_List(Lup_Consult_Charge, 0,'9', Userinfo.Office );
          Update_User_List(Lup_Manager, 0,'9', Userinfo.Office );
 }
          // 물건종류  콤보박스에 넣기
          Update_Category_List(Cob_Category);
end;

procedure TXForm1.XFormShow(Sender: TObject);
begin
          SetBounds (0, 0, 1012, 640);  // 가로,세로
          UP_Editing_Mode_Sw('1');  // 일반모드로....
end;

procedure TXForm1.UP_Editing_Mode_Sw(cSw : String);
begin
          BTN_Save.Caption := '저장';
          if cJobMode = 'DELETE' then BTN_Save.Caption := '승인';
          BTN_Save.Refresh;

          if cSw = '1' then begin // 일반상태
             Box_EditGroup.Enabled := False;
             Pan_Find_Etc.Visible  := True;
             Pan_SaveCancel.Visible:= False;
             Grd_List.Enabled      := True;

             Grd_Land.Visible            := True;
             Grd_Build.Visible           := True;
             Pan_Land_Edit_Group.Visible := False;
             Pan_Build_Edit_Group.Visible:= False;
          end
          else begin             // 신규입력및수정상태
             Box_EditGroup.Enabled := True;
             Pan_Find_Etc.Visible  := False;
             Pan_SaveCancel.Visible:= True;
             Grd_List.Enabled      := False;

             Grd_Land.Visible            := False;
             Grd_Build.Visible           := False;
             Pan_Land_Edit_Group.Visible := True;
             Pan_Build_Edit_Group.Visible:= True;
             // 소속지사와 입력자는 비활성화시킨다
             EPan_Office_Charge.Enabled := False;
          end
end;

procedure TXForm1.BTN_SaveClick(Sender: TObject);
var
          cGuid     : String;
begin
          cMasterId := '';
          bJob_Error:= True;

          if (cJobMode = 'APPEND') then begin
             cGuid     := Trim(Userinfo.Office)+Trim(JobComputerName())+FormatDateTime('yyyymmddhhnnss', NOW);

             Qry_TS_Master.FieldByName('Guid').AsString       := cGuid;

             Qry_TS_Master.Post;
             Qry_TS_Master.Resolve;

             if bJob_Error then begin
                cMasterId := UP_MsterID_Reding(cGuid);

                // 토지리스트 저장
                UP_Land_Data_Save();
                // 건물리스트 저장
                UP_Build_Data_Save();

                // Qry_TS_Master.RefreshData;
             end
             else begin
                 MessageDlg('저장이 되지 않았습니다.  자료를 확인하신후 다시 시도하여 주시기 바랍니다.', mtWarning, [mbOK], 0);
                 Exit;
             end;


             //  제자리 찾아가기
             Qry_TS_Master.RefreshData;
             Qry_TS_Master.First;  // .Last;

             Qry_TS_Master.Locate( 'MasterID', cMasterId, [loPartialKey])
          end;

          if (cJobMode = 'UPDATE') then begin
             cMasterId := Qry_TS_Master.FieldByName('MasterID').AsString;

             Qry_TS_Master.Post;
             Qry_TS_Master.Resolve;

             if  bJob_Error Then begin
                 // 토지리스트 저장
                 UP_Land_Data_Save();
                 // 건물리스트 저장
                 UP_Build_Data_Save();

                 Qry_TS_Master.RefreshData;
                 Qry_TS_Master.First;  // .Last;

                 Qry_TS_Master.Locate( 'MasterID', cMasterId, [loPartialKey])                 
             end
             else begin
                 MessageDlg('저장이 되지 않았습니다.  자료를 확인하신후 다시 시도하여 주시기 바랍니다.', mtWarning, [mbOK], 0);
                 Exit;
             end;
          end;

          if (cJobMode = 'DELETE') then begin
             // 삭제 프로시저 동작.
             Try
                With Qry_TS_Master_Delete do begin
                     Close;
                     params.ParamByName('Seq').AsInteger := Qry_TS_Master.FieldByName('Seq').AsInteger;
                     ExecProc;
                End;
                Qry_TS_Master.RefreshData;
             Except
                Exit;
             End;
             MessageDlg('자료가 삭제 되었습니다.', mtInformation, [mbOK], 0);
          end;
          // 저장후 일반모드로 전환
          UP_Editing_Mode_Sw('1');



end;

procedure TXForm1.BTN_CancelClick(Sender: TObject);
begin
          Qry_TS_Master.Refresh;
          UP_Editing_Mode_Sw('1');
end;

procedure TXForm1.BTN_EditClick(Sender: TObject);
begin
          UP_Editing_Mode_Sw('2');
          Qry_TS_Master.Edit;
          cJobMode := 'UPDATE';
          // 토지와 건물 리스트 읽어오기
          UP_Land_Data_Reading();
          UP_Build_Data_Reading();
end;

procedure TXForm1.Etc_CustNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_RETURN then begin
       Key := 0;
       UP_Find_CustName();
    end;
end;

procedure TXForm1.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
       UP_Find_CustName();
end;

procedure TXForm1.UP_Find_CustName();
var
  ALink: TXLink;
  ACode, AName, ACharge, APhone, AFax: String;
begin
       ALink := TXLink.Create(nil);
       ALink.AddParams('CustName', Etc_CustName.Text);
       OpenDLL('FINDCUST.DLL', nil, ALink);
       if ALink.Result = 1 then begin
         ACode   := ALink.ParamByString('CODE');
         AName   := ALink.ParamByString('NAME');
         ACharge := ALink.ParamByString('CHARGE');  //  당당자명
         APhone  := ALink.ParamByString('PHONE');   //  전화번호
         AFax    := ALink.ParamByString('FAX');   //  팩스번호
         Qry_TS_Master.FieldByName('CustID').AsString      := ACode;
         Qry_TS_Master.FieldByName('CustName').AsString    := AName;
         Qry_TS_Master.FieldByName('CustCharge').AsString  := ACHARGE;
         Qry_TS_Master.FieldByName('CustPhone').AsString   := APHONE;
         Qry_TS_Master.FieldByName('CustFAX').AsString     := AFax;
       end;
       ALink.Free;

       Edt_CustPhone.SetFocus;
end;


procedure TXForm1.Edt_AddrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if Key = VK_RETURN then begin
             Key := 0;
             UP_Find_SoJaeGi();
             Cob_San.SetFocus;
          end;
end;

procedure TXForm1.Edt_AddrPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
             UP_Find_SoJaeGi();
end;

procedure TXForm1.UP_Find_SoJaeGi();
var
          ALink: TXLink;
          ACode1, ACode2, ACode3: String;
begin
          ALink := TXLink.Create(nil);
          ALink.AddParams('FindDong', Edt_Addr.Text);
          OpenDLL('FindRegEub.DLL', nil, ALink);
          if ALink.Result = 1 then begin
             ACode1   := ALink.ParamByString('Code1');
             ACode2   := ALink.ParamByString('Code2');
             ACode3   := ALink.ParamByString('Code3');
             Qry_TS_Master.FieldByName('Addr').AsString := ACode3;
             Qry_TS_Master.FieldByName('Reg').AsString  := ACode1;
             Qry_TS_Master.FieldByName('Eub').AsString  := ACode2;
          end;
          ALink.Free;
end;


procedure TXForm1.BTN_PrintClick(Sender: TObject);
begin
          // 토지와 건물 리스트 읽어오기
          UP_Land_Data_Reading();
          UP_Build_Data_Reading();

          frxReport1 .LoadFromFile(Appconfig.path.root+'Report\탁상감정결과표1.fr3');
          frxReport1.ShowReport;
end;

procedure TXForm1.UP_Land_Data_Reading();
var
          i     : Integer ;
          nLoop : integer;
begin
          i     := 0;
          nLoop := 0;
          Qry_TS_Land.First;
          While not Qry_TS_Land.Eof do begin
                i := i + 1;
                if i <= 5 then begin
                   TcxCurrencyEdit(FindComponent('Edt_SEQ'  +IntToStr(i))).Value := Qry_TS_Land.FieldByName('SEQ').AsInteger;
                   TcxTextEdit(FindComponent('Edt_JiBun'+IntToStr(i))).Text      := Qry_TS_Land.FieldByName('JiBun').AsString;
                   TcxTextEdit(FindComponent('Edt_JiMok'+IntToStr(i))).Text      := Qry_TS_Land.FieldByName('JiMok').AsString;
                   TcxCurrencyEdit(FindComponent('Edt_Area' +IntToStr(i))).Value := Qry_TS_Land.FieldByName('Area').AsFloat;
                   TcxCurrencyEdit(FindComponent('Edt_Cost' +IntToStr(i))).Value := Qry_TS_Land.FieldByName('UnitCost').AsCurrency;
                   TcxCurrencyEdit(FindComponent('Edt_Price'+IntToStr(i))).Value := Qry_TS_Land.FieldByName('Total').AsCurrency;
                end;
                Qry_TS_Land.Next; // 다음레코드로 이동한다.
          End;

          i := i + 1;
          For i := i To 5 do begin
              TcxTextEdit(FindComponent('Edt_SEQ'  +IntToStr(i))).Text      := '';
              TcxTextEdit(FindComponent('Edt_JiBun'+IntToStr(i))).Text      := '';
              TcxTextEdit(FindComponent('Edt_JiMok'+IntToStr(i))).Text      := '';
              TcxTextEdit(FindComponent('Edt_Area' +IntToStr(i))).Text      := '';
              TcxTextEdit(FindComponent('Edt_Cost' +IntToStr(i))).Text      := '';
              TcxTextEdit(FindComponent('Edt_Price'+IntToStr(i))).Text      := '';
          End;

end;
procedure TXForm1.UP_Build_Data_Reading();
var
          i     : Integer ;
begin
          i     := 0;
          Qry_TS_Build.First;
          While not Qry_TS_Build.Eof do begin
                i := i + 1;
                if i <= 5 then begin
                   TcxCurrencyEdit(FindComponent('Edt_BSEQ'  +IntToStr(i))).Value     := Qry_TS_Build.FieldByName('SEQ').AsInteger;
                   TcxTextEdit(FindComponent('Edt_Floors'+IntToStr(i))).Text          := Qry_TS_Build.FieldByName('Floors').AsString;
                   TcxCurrencyEdit(FindComponent('Edt_BArea' +IntToStr(i))).Value     := Qry_TS_Build.FieldByName('Area').AsFloat;
                   TcxCurrencyEdit(FindComponent('Edt_BUnitCost' +IntToStr(i))).Value := Qry_TS_Build.FieldByName('UnitCost').AsCurrency;
                   TcxCurrencyEdit(FindComponent('Edt_BTotal'+IntToStr(i))).Value     := Qry_TS_Build.FieldByName('Total').AsCurrency;
                   TcxTextEdit(FindComponent('Edt_Re_Price'+IntToStr(i))).Text        := Qry_TS_Build.FieldByName('Re_Price').AsString;
                end;
                Qry_TS_Build.Next; // 다음레코드로 이동한다.
          End;
          
          i := i + 1;
          For i := i To 5 do begin
              TcxTextEdit(FindComponent('Edt_BSEQ'  +IntToStr(i))).Text     := '';
              TcxTextEdit(FindComponent('Edt_Floors'+IntToStr(i))).Text     := '';
              TcxTextEdit(FindComponent('Edt_BArea' +IntToStr(i))).Text     := '';
              TcxTextEdit(FindComponent('Edt_BUnitCost' +IntToStr(i))).Text := '';
              TcxTextEdit(FindComponent('Edt_BTotal'+IntToStr(i))).Text     := '';
              TcxTextEdit(FindComponent('Edt_Re_Price'+IntToStr(i))).Text   := '';
          End;
end;

procedure TXForm1.UP_Land_Price_Calculation(Sender: TObject);
var
          cGubun : String;
begin
          cGubun := Copy(TcxCurrencyEdit(Sender).Name,Length(TcxCurrencyEdit(Sender).Name),1);

          TcxCurrencyEdit(FindComponent('Edt_Price'  +cGubun)).Value := TcxCurrencyEdit(FindComponent('Edt_Area'  +cGubun)).Value * TcxCurrencyEdit(FindComponent('Edt_Cost'  +cGubun)).Value;
          //
          Qry_TS_Master.FieldByName('Toji_Total').AsCurrency       := (Edt_Price1.Value + Edt_Price2.Value + Edt_Price3.Value + Edt_Price4.Value + Edt_Price5.Value);
          Qry_TS_Master.FieldByName('ToJi_Build_Total').AsCurrency :=  Qry_TS_Master.FieldByName('Toji_Total').AsCurrency + Qry_TS_Master.FieldByName('Build_Total').AsCurrency;
end;

procedure TXForm1.UP_Build_Price_Calculation(Sender: TObject);
var
          cGubun : String;
begin
          cGubun := Copy(TcxCurrencyEdit(Sender).Name,Length(TcxCurrencyEdit(Sender).Name),1);

          TcxCurrencyEdit(FindComponent('Edt_BTotal'  +cGubun)).Value := TcxCurrencyEdit(FindComponent('Edt_BArea'  +cGubun)).Value * TcxCurrencyEdit(FindComponent('Edt_BUnitCost'  +cGubun)).Value;
          //
          Qry_TS_Master.FieldByName('Build_Total').AsCurrency      := (Edt_BTotal1.Value + Edt_BTotal2.Value + Edt_BTotal3.Value + Edt_BTotal4.Value + Edt_BTotal5.Value);
          Qry_TS_Master.FieldByName('ToJi_Build_Total').AsCurrency :=  Qry_TS_Master.FieldByName('Toji_Total').AsCurrency + Qry_TS_Master.FieldByName('Build_Total').AsCurrency;
end;

procedure TXForm1.UP_Land_Data_Save();
var
          nLoop : Integer ;
          nTest : double;
begin
         For nLoop := 1 To 5 do begin
             if TcxTextEdit(FindComponent('Edt_JiBun'      +IntToStr(nLoop))).Text <> '' then begin

             if TcxCurrencyEdit(FindComponent('Edt_SEQ'  +IntToStr(nLoop))).Value < 1 then begin
                Qry_TS_Land.Append;
             end
             else begin
                 Qry_TS_Land.Edit;
                 Qry_TS_Land.FieldByName('SEQ').Value   := TcxCurrencyEdit(FindComponent('Edt_SEQ'   +IntToStr(nLoop))).Value;
             end;
                 Qry_TS_Land.FieldByName('TS_MasterID').Value   := cMasterId;
                 Qry_TS_Land.FieldByName('JiBun').AsString      := TcxTextEdit(FindComponent('Edt_JiBun'      +IntToStr(nLoop))).Text;
                 Qry_TS_Land.FieldByName('JiMok').AsString      := TcxTextEdit(FindComponent('Edt_JiMok'      +IntToStr(nLoop))).Text;
                 Qry_TS_Land.FieldByName('Area').AsFloat        := TcxCurrencyEdit(FindComponent('Edt_Area'   +IntToStr(nLoop))).Value;
                 Qry_TS_Land.FieldByName('UnitCost').AsCurrency := TcxCurrencyEdit(FindComponent('Edt_Cost'   +IntToStr(nLoop))).Value;
                 Qry_TS_Land.FieldByName('Total').AsCurrency    := TcxCurrencyEdit(FindComponent('Edt_Price'  +IntToStr(nLoop))).Value;
                 Qry_TS_Land.Post;
                 Qry_TS_Land.Resolve;
             end;
             Qry_TS_Land.Close;
             Qry_TS_Land.Open;
         End;
         // Qry_TS_Land.Resolve;
         Qry_TS_Land.RefreshData;
end;

procedure TXForm1.UP_Build_Data_Save();
var
          nLoop : Integer ;
begin
         For nLoop := 1 To 5 do begin
             if TcxTextEdit(FindComponent('Edt_Floors'        +IntToStr(nLoop))).Text <> '' then begin
             if TcxCurrencyEdit(FindComponent('Edt_BSEQ'  +IntToStr(nLoop))).Value < 1 then begin
                Qry_TS_Build.Append;
             end
             else begin
                  Qry_TS_Build.Edit;
                  Qry_TS_Build.FieldByName('SEQ').Value   := TcxCurrencyEdit(FindComponent('Edt_BSEQ'        +IntToStr(nLoop))).Value;
             end;
                   Qry_TS_Build.FieldByName('TS_MasterID').Value   := cMasterId;
                   Qry_TS_Build.FieldByName('Floors').AsString     := TcxTextEdit(FindComponent('Edt_Floors'        +IntToStr(nLoop))).Text;
                   Qry_TS_Build.FieldByName('Area').AsFloat        := TcxCurrencyEdit(FindComponent('Edt_BArea'     +IntToStr(nLoop))).Value;
                   Qry_TS_Build.FieldByName('UnitCost').AsCurrency := TcxCurrencyEdit(FindComponent('Edt_BUnitCost' +IntToStr(nLoop))).Value;
                   Qry_TS_Build.FieldByName('Total').AsCurrency    := TcxCurrencyEdit(FindComponent('Edt_BTotal'    +IntToStr(nLoop))).Value;
                   Qry_TS_Build.FieldByName('Re_Price').AsString   := TcxTextEdit(FindComponent('Edt_Re_Price'      +IntToStr(nLoop))).Text;
                   Qry_TS_Build.Post;
                   Qry_TS_Build.Resolve;                   
             end;
             Qry_TS_Build.Close;
             Qry_TS_Build.Open;
         End;
         // Qry_TS_Build.Resolve;
         Qry_TS_Build.RefreshData;
end;


procedure TXForm1.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
             if VarName = 'Charge'  then  if Lup_Reg_Charge.Text <> '' then Value := Lup_Reg_Charge.Text else Value := '';
             if VarName = 'Manager'  then  if Lup_Manager.Text <> '' then Value := Lup_Manager.Text else Value := '';

             if VarName = 'Land_Jibun1'  then  if Edt_JiBun1.Text <> '' then Value := Edt_JiBun1.Text else Value := '';
             if VarName = 'Land_Jimok1'  then  if Edt_JiBun1.Text <> '' then Value := Edt_JiMok1.Text else Value := '';
             if VarName = 'Land_Area1'   then  if Edt_JiBun1.Text <> '' then Value := FormatFloat('#,###.###0',Edt_Area1.Value) else Value := '';
             if VarName = 'Land_Cost1'   then  if Edt_JiBun1.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_Cost1.Value) else Value := '';
             if VarName = 'Land_Total1'  then  if Edt_JiBun1.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_Price1.Value) else Value := '';

             if VarName = 'Land_Jibun2'  then  if Edt_JiBun2.Text <> '' then Value := Edt_JiBun2.Text else Value := '';
             if VarName = 'Land_Jimok2'  then  if Edt_JiBun2.Text <> '' then Value := Edt_JiMok2.Text else Value := '';
             if VarName = 'Land_Area2'   then  if Edt_JiBun2.Text <> '' then Value := FormatFloat('##,###,###.###0',Edt_Area1.Value) else Value := '';
             if VarName = 'Land_Cost2'   then  if Edt_JiBun2.Text <> '' then Value := FormatFloat('##,###,###,##0' ,Edt_Cost2.Value) else Value := '';
             if VarName = 'Land_Total2'  then  if Edt_JiBun2.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_Price2.Value) else Value := '';

             if VarName = 'Land_Jibun3'  then  if Edt_JiBun3.Text <> '' then Value := Edt_JiBun3.Text else Value := '';
             if VarName = 'Land_Jimok3'  then  if Edt_JiBun3.Text <> '' then Value := Edt_JiMok3.Text else Value := '';
             if VarName = 'Land_Area3'   then  if Edt_JiBun3.Text <> '' then Value := FormatFloat('##,###,###.###0',Edt_Area1.Value) else Value := '';
             if VarName = 'Land_Cost3'   then  if Edt_JiBun3.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_Cost3.Value) else Value := '';
             if VarName = 'Land_Total3'  then  if Edt_JiBun3.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_Price3.Value) else Value := '';

             if VarName = 'Land_Jibun4'  then  if Edt_JiBun4.Text <> '' then Value := Edt_JiBun4.Text else Value := '';
             if VarName = 'Land_Jimok4'  then  if Edt_JiBun4.Text <> '' then Value := Edt_JiMok4.Text else Value := '';
             if VarName = 'Land_Area4'   then  if Edt_JiBun4.Text <> '' then Value := FormatFloat('##,###,###.###0',Edt_Area1.Value) else Value := '';
             if VarName = 'Land_Cost4'   then  if Edt_JiBun4.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_Cost4.Value) else Value := '';
             if VarName = 'Land_Total4'  then  if Edt_JiBun4.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_Price4.Value) else Value := '';

             if VarName = 'Land_Jibun5'  then  if Edt_JiBun5.Text <> '' then Value := Edt_JiBun5.Text else Value := '';
             if VarName = 'Land_Jimok5'  then  if Edt_JiBun5.Text <> '' then Value := Edt_JiMok5.Text else Value := '';
             if VarName = 'Land_Area5'   then  if Edt_JiBun5.Text <> '' then Value := FormatFloat('##,###,###.###0',Edt_Area1.Value) else Value := '';
             if VarName = 'Land_Cost5'   then  if Edt_JiBun5.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_Cost5.Value) else Value := '';
             if VarName = 'Land_Total5'  then  if Edt_JiBun5.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_Price5.Value) else Value := '';

             if VarName = 'Land_Memo'    then  if cxDBMemo2.Text <> ''  then Value := cxDBMemo2.Text else Value := '';

             if VarName = 'Build_Floors1' then  if Edt_Floors1.Text <> '' then Value := Edt_Floors1.Text else Value := '';
             if VarName = 'Build_Area1'  then  if Edt_Floors1.Text <> '' then Value := FormatFloat('#,###,###.###0',Edt_BArea1.Value) else Value := '';
             if VarName = 'Build_Cost1'  then  if Edt_Floors1.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_BUnitCost1.Value) else Value := '';
             if VarName = 'Build_Total1' then  if Edt_Floors1.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_BTotal1.Value) else Value := '';
             if VarName = 'Build_Re_Price1' then  if Edt_Floors1.Text <> '' then Value := Edt_Re_Price1.Text else Value := '';

             if VarName = 'Build_Floors2' then  if Edt_Floors2.Text <> '' then Value := Edt_Floors2.Text else Value := '';
             if VarName = 'Build_Area2'  then  if Edt_Floors2.Text <> '' then Value := FormatFloat('#,###,###.###0',Edt_BArea2.Value) else Value := '';
             if VarName = 'Build_Cost2'  then  if Edt_Floors2.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_BUnitCost2.Value) else Value := '';
             if VarName = 'Build_Total2' then  if Edt_Floors2.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_BTotal2.Value) else Value := '';
             if VarName = 'Build_Re_Price2' then  if Edt_Floors2.Text <> '' then Value := Edt_Re_Price2.Text else Value := '';

             if VarName = 'Build_Floors3' then  if Edt_Floors3.Text <> '' then Value := Edt_Floors3.Text else Value := '';
             if VarName = 'Build_Area3'  then  if Edt_Floors3.Text <> '' then Value := FormatFloat('#,###,###.###0',Edt_BArea3.Value) else Value := '';
             if VarName = 'Build_Cost3'  then  if Edt_Floors3.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_BUnitCost3.Value) else Value := '';
             if VarName = 'Build_Total3' then  if Edt_Floors3.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_BTotal3.Value) else Value := '';
             if VarName = 'Build_Re_Price3' then  if Edt_Floors3.Text <> '' then Value := Edt_Re_Price3.Text else Value := '';

             if VarName = 'Build_Floors4' then  if Edt_Floors4.Text <> '' then Value := Edt_Floors4.Text else Value := '';
             if VarName = 'Build_Area4'  then  if Edt_Floors4.Text <> '' then Value := FormatFloat('#,###,###.###0',Edt_BArea4.Value) else Value := '';
             if VarName = 'Build_Cost4'  then  if Edt_Floors4.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_BUnitCost4.Value) else Value := '';
             if VarName = 'Build_Total4' then  if Edt_Floors4.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_BTotal4.Value) else Value := '';
             if VarName = 'Build_Re_Price4' then  if Edt_Floors4.Text <> '' then Value := Edt_Re_Price4.Text else Value := '';

             if VarName = 'Build_Floors5' then  if Edt_Floors5.Text <> '' then Value := Edt_Floors5.Text else Value := '';
             if VarName = 'Build_Area5'  then  if Edt_Floors5.Text <> '' then Value := FormatFloat('#,###,###.###0',Edt_BArea5.Value) else Value := '';
             if VarName = 'Build_Cost5'  then  if Edt_Floors5.Text <> '' then Value := FormatFloat('##,###,###,##0',Edt_BUnitCost5.Value) else Value := '';
             if VarName = 'Build_Total5' then  if Edt_Floors5.Text <> '' then Value := FormatFloat('###,###,###,##0',Edt_BTotal5.Value) else Value := '';
             if VarName = 'Build_Re_Price5' then  if Edt_Floors5.Text <> '' then Value := Edt_Re_Price5.Text else Value := '';

             if  VarName = '법인명' then Value:= Userinfo.OfficeName;             
end;

procedure TXForm1.Qry_TS_MasterSANGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
          Case StrTointDef(Qry_TS_Master.FieldByName('SAN').AsString,1) Of
               1 : Text    := '일반';
               2 : Text    := '산';
               3 : Text    := 'BL';
               else
               Text        := '오류';
          End;
end;

procedure TXForm1.Btn_ExitClick(Sender: TObject);
begin
         Close;
end;

procedure TXForm1.Qry_TS_MasterOfficeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
         // Text := aOffice[ StrTointDef(Qry_TS_Master.FieldByName('Office').AsString,0) ];

         if DBM.Qry_View_Office.Locate('OfficeID',Qry_TS_Master.FieldByName('Office').AsString, [loPartialKey]) then begin
            Text := DBM.Qry_View_Office.FieldByName('Name').AsString;
         end;

end;

procedure TXForm1.Qry_TS_MasterCategoryGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
         // Text := aCategory[ StrTointDef(Qry_TS_Master.FieldByName('Category').AsString,0) ];
      	 if DBM.Qry_View_Category.Locate('Code',Qry_TS_Master.FieldByName('Category').AsString, [loPartialKey]) then begin
            Text := DBM.Qry_View_Category.FieldByName('Name').AsString;
         end;

end;

procedure TXForm1.Qry_TS_MasterReg_ChargeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
         if DBM.Qry_View_Usr_Bac_info.Locate('USR_SEQ',Qry_TS_Master.FieldByName('Reg_Charge').AsVariant, [loPartialKey]) then begin
            Text := DBM.Qry_View_Usr_Bac_info.FieldByName('EMP').AsString;
         end;
end;

procedure TXForm1.Qry_TS_MasterConsult_ChargeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
         if DBM.Qry_View_Usr_Bac_info.Locate('USR_SEQ',Qry_TS_Master.FieldByName('Consult_Charge').AsVariant, [loPartialKey]) then begin
            Text := DBM.Qry_View_Usr_Bac_info.FieldByName('EMP').AsString;
         end;
end;

procedure TXForm1.Qry_TS_MasterManagerGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
         if DBM.Qry_View_Usr_Bac_info.Locate('USR_SEQ',Qry_TS_Master.FieldByName('Manager').AsVariant, [loPartialKey]) then begin
            Text := DBM.Qry_View_Usr_Bac_info.FieldByName('EMP').AsString;
         end;
end;

procedure TXForm1.Qry_TS_MasterResolveError(Sender: TObject;
  ErrorType: Integer; Message: String; RecordID: Integer; Current: Boolean;
  var Retry: Boolean);
begin
          bJob_Error:= False;
          MessageDlg('Qry_TS_Master_RE:'+Message, mtWarning, [mbOK], 0);
end;

procedure TXForm1.BTN_DeleteClick(Sender: TObject);
begin
          cJobMode := 'DELETE';
          UP_Editing_Mode_Sw('2');

         // Qry_TS_Master.Delete;
//          Qry_TS_Master.Resolve;

end;

procedure TXForm1.Edt_Bun1Exit(Sender: TObject);
begin
          Qry_TS_Master.FieldByName('BUN1').AsString := Auto_Str_Format(Edt_Bun1.Text,4);
end;

procedure TXForm1.Edt_Bun2Exit(Sender: TObject);
begin
          Qry_TS_Master.FieldByName('BUN2').AsString := Auto_Str_Format(Edt_Bun2.Text,4);
end;

Function  TXForm1.UP_MsterID_Reding(cMasterID:String): String;
begin
         // 현재입력한 마스터아이디값읽어오기
{          With DBM.Qry_TS_Master_GUID do begin
               Close;
               Params.ParamByName('GUID').Value    := cMasterID;
               Open;
          end;
          if DBM.Qry_TS_Master_GUID.Fields[0].AsString <> '' then begin
             Result := DBM.Qry_TS_Master_GUID.FieldByName('MasterID').AsString;
          end;
          }
end;


procedure TXForm1.Qry_TS_LandResolveError(Sender: TObject;
  ErrorType: Integer; Message: String; RecordID: Integer; Current: Boolean;
  var Retry: Boolean);
begin
MessageDlg(Message, mtWarning, [mbOK], 0);
end;

procedure TXForm1.Qry_TS_BuildResolveError(Sender: TObject;
  ErrorType: Integer; Message: String; RecordID: Integer; Current: Boolean;
  var Retry: Boolean);
begin
MessageDlg(Message, mtWarning, [mbOK], 0);
end;

end.
