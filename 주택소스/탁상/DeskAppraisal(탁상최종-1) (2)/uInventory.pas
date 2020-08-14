unit uInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RzButton, RzStatus, RzDBStat, Mask, RzEdit,
  RzDBEdit, RzCmboBx, RzDBCmbo, RzLabel, DBActns, ActnList, Grids, DBGrids,
  RzDBGrid, DB, RzDBLbl, DBCtrls, RzDBNav,
  kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset, kbmMWClientDataset,
  //
  dxLink, dxForm, dxMessages, dxDLLManager,
  //
  uAInvenTory, uADataSetBehavior, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, RzCommon,
  cxGridBandedTableView, TB2Item, TBX, TB2Dock, TB2Toolbar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzPanel;
type
  TFrm_Inventory = class(TForm)
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    aNew: TAction;
    aCopy: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aSave: TAction;
    aCancel: TAction;
    aAddr: TAction;
    Qry_inventory: TkbmMWClientQuery;
    Qry_inventorySEQ: TLargeintField;
    Qry_inventoryMasterID: TLargeintField;
    Qry_inventoryRow_ID: TStringField;
    Qry_inventoryREG: TStringField;
    Qry_inventoryEUB: TStringField;
    Qry_inventorySAN: TStringField;
    Qry_inventoryADDR: TStringField;
    Qry_inventoryBUN1: TStringField;
    Qry_inventoryBUN2: TStringField;
    Qry_inventoryREG1: TStringField;
    Qry_inventoryEUB1: TStringField;
    Qry_inventoryBuilding: TStringField;
    Qry_inventoryDong: TStringField;
    Qry_inventoryFloor: TStringField;
    Qry_inventoryHo: TStringField;
    Qry_inventoryDocID: TStringField;
    Qry_inventoryNumber: TLargeintField;
    dsInventory: TDataSource;
    RzPanel: TRzPanel;
    cxLabel17: TRzLabel;
    cxLabel16: TRzLabel;
    cxLabel15: TRzLabel;
    RzLabel4: TRzLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzDBStatusPane1: TRzDBStatusPane;
    cxLabel112: TRzLabel;
    pReceptBtns: TRzPanel;
    Btn_Save: TRzButton;
    Btn_Cancel: TRzButton;
    Btn_Delete: TRzButton;
    Btn_Edit: TRzButton;
    Btn_Copy: TRzButton;
    Btn_New: TRzButton;
    Panel2: TPanel;
    TBToolbar1: TTBToolbar;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    cxStyleRepository1: TcxStyleRepository;
    cxEven: TcxStyle;
    cxOdd: TcxStyle;
    cxFooter: TcxStyle;
    cxHeader: TcxStyle;
    cxBold: TcxStyle;
    cxInactive: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    RzFC: TRzFrameController;
    cxGrid1: TcxGrid;
    V: TcxGridDBTableView;
    VColumn1: TcxGridDBColumn;
    VColumn2: TcxGridDBColumn;
    VColumn16: TcxGridDBColumn;
    VColumn3: TcxGridDBColumn;
    VColumn4: TcxGridDBColumn;
    VColumn5: TcxGridDBColumn;
    VColumn6: TcxGridDBColumn;
    VColumn8: TcxGridDBColumn;
    VColumn9: TcxGridDBColumn;
    VColumn7: TcxGridDBColumn;
    VColumn10: TcxGridDBColumn;
    VColumn11: TcxGridDBColumn;
    VColumn12: TcxGridDBColumn;
    VColumn13: TcxGridDBColumn;
    VColumn14: TcxGridDBColumn;
    VColumn15: TcxGridDBColumn;
    VColumn17: TcxGridDBColumn;
    L: TcxGridLevel;
    Edt_Addr: TRzEdit;
    BtnAddr: TRzButton;
    edtBun1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    cxAptName: TRzDBEdit;
    cxDONG: TRzDBEdit;
    cxCHUNG: TRzDBEdit;
    cxHO: TRzDBEdit;
    Qry_inventoryAddress: TStringField;
    cbSan: TRzDBComboBox;
    cxSan: TRzDBEdit;
    procedure dsInventoryStateChange(Sender: TObject);
    procedure Edt_AddrKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //
    //
    procedure ActionCommand(Sender: TObject);
    procedure Qry_inventoryCalcFields(DataSet: TDataSet);
    procedure edtBun1Exit(Sender: TObject);
    procedure cxSanKeyPress(Sender: TObject; var Key: Char);


  private
    FInVentory: TADataSetBehavior;
    function DoDataChecked: Boolean;
  public
  end;

procedure ShowForm_InvenTory(const ALink: TxLink); overload;


implementation

uses
  CommModule, Gscode06, dm;

var
  FLink: TXLink;



{$R *.dfm}

{ TFrm_Inventory }

procedure ShowForm_InvenTory(const ALink: TxLink);
var
  Frm_Inventory: TFrm_Inventory;
begin
  FLink := ALink;
  Frm_Inventory := TFrm_Inventory.Create(Application);
  try
    Frm_Inventory.ShowModal;
  finally
    FreeAndNil(Frm_Inventory);
  end;
end;


procedure TFrm_Inventory.FormCreate(Sender: TObject);
begin
  FInVentory := TInVentory.Create(self, Qry_inventory, FLink);
  dsInventory.DataSet := Qry_inventory;
end;

procedure TFrm_Inventory.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FInVentory);
end;


procedure TFrm_Inventory.dsInventoryStateChange(Sender: TObject);
begin
  aEdit.Enabled := (Qry_inventory.State in [dsBrowse]) and (Qry_Inventory.RecordCount > 0);
  aNew.Enabled := Qry_inventory.State in [dsBrowse];
  aCopy.Enabled := aEdit.Enabled;
  aSave.Enabled := (not aEdit.Enabled) and (not aNew.Enabled);
  aCancel.Enabled := aSave.Enabled;
  aDelete.Enabled := aEdit.Enabled;
  aAddr.Enabled := not aEdit.Enabled;
  RzPanel.Enabled :=  aSave.Enabled;
  cxGrid1.Enabled := aEdit.Enabled;
end;

procedure TFrm_Inventory.Edt_AddrKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(Edt_Addr.Text) > 0) and (key = #13) then begin
    key := #0;
    aAddr.Execute();
  end;
end;


procedure TFrm_Inventory.ActionCommand(Sender: TObject);
begin
  case Tcontrol(Sender).Tag of
    1: begin
        FInVentory.InsertRecord(False);
        Edt_Addr.SetFocus;
      end;
    2: begin
        FInVentory.InsertRecord(True);
        cxSan.SetFocus; //cbSan.SetFocus;
      end;
    3: FInVentory.EditRecord;
    4: FInVentory.DeleteRecord;
    5: begin
        if DoDataChecked then
          FInVentory.SaveDataSet(False) //FInVentory.PostRecord;
        else
          Abort;
      end;
    6: FInVentory.CancelDataSet;
    7: begin
        TInVentory(FInVentory).DoAddrFind(Edt_Addr.Text);
        cxSan.SetFocus; // cbSan.SetFocus;
      end;
  end;
end;

function TFrm_Inventory.DoDataChecked: Boolean;
var i: integer;
  ARzDbEdit: TRzDBEdit;
begin
  Result := False;
  for i := 0 to RzPanel.ControlCount - 1 do begin
    if (RzPanel.Controls[i] is TRzDBEdit) and
      (RzPanel.Controls[i].Tag = 1)
      then begin
      ARzDbEdit := TRzDBEdit(RzPanel.Controls[i]);
      if ARzDbEdit.Text = EmptyStr then begin
        MessageDlg(ARzDbEdit.HelpKeyword, mtWarning, [mbOK], 0);
        ARzDbEdit.SetFocus;
        Exit;
      end;
    end;
  end;
  Result := True;
end;

procedure TFrm_Inventory.Qry_inventoryCalcFields(DataSet: TDataSet);
  function iif(AExpression: Boolean; Value1, Value2: string): string;
  begin
    if AExpression then
      Result := Value1
    else
      Result := Value2;
  end;
begin
  with Qry_inventory do begin

    fieldbyname('Address').asString :=
      fieldbyname('addr').asString + ' ' +
      cBun2Str(fieldbyname('san').asString,
      fieldbyname('bun1').asString,
      fieldbyname('bun2').asString) + ' ' +
      iif(fieldbyname('Building').asString = EmptyStr, '',
      fieldbyname('Building').asString + ' ') +
      iif(fieldbyname('Dong').asString = EmptyStr, '',
      fieldbyname('Dong').asString + '동 ') +
      iif(fieldbyname('Floor').asString = EmptyStr, '',
      fieldbyname('Floor').asString
      + '층 ') +
      iif(fieldbyname('Ho').asString = EmptyStr, '', fieldbyname('Ho').asString
      + '호 ');
  end;
end;

procedure TFrm_Inventory.edtBun1Exit(Sender: TObject);
var
  cTmp: string[12];
begin
  // 지번을 0으로 채움
  with TRzDBEdit(Sender) do begin
    try
      cTmp := '0000' + TrimLeft(Text);
      Text := copy(cTmp, length(cTmp) - 3, 4);
    except
    end;
  end;
end;

procedure TFrm_Inventory.cxSanKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', chr(8), chr(9)]) then
    key := #0;
end;

end.

4815100082171

