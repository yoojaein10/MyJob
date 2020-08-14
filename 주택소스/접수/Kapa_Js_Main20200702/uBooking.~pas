unit uBooking;

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
  uABooking, uADataSetBehavior, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, RzCommon,
  cxGridBandedTableView, TB2Item, TBX, TB2Dock, TB2Toolbar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzPanel, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;
type
  TFrm_Booking = class(TForm)
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aSave: TAction;
    aCancel: TAction;
    Qry_Booking: TkbmMWClientQuery;
    dsBooking: TDataSource;
    RzPanel: TRzPanel;
    pReceptBtns: TRzPanel;
    Btn_Save: TRzButton;
    Btn_Cancel: TRzButton;
    Btn_Delete: TRzButton;
    Btn_Edit: TRzButton;
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
    VColumn3: TcxGridDBColumn;
    VColumn4: TcxGridDBColumn;
    VColumn5: TcxGridDBColumn;
    VColumn6: TcxGridDBColumn;
    VColumn8: TcxGridDBColumn;
    L: TcxGridLevel;
    Lup_ChargeName: TcxDBLookupComboBox;
    RzDBEdit6: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzLabel2: TRzLabel;
    Qry_BookingSEQ: TLargeintField;
    Qry_BookingMasterID: TLargeintField;
    Qry_BookingManager: TIntegerField;
    Qry_BookingRatio: TWordField;
    Qry_BookingBillRatio: TWordField;
    Qry_BookingBill: TStringField;
    Qry_BookingBillDate: TDateTimeField;
    Qry_Bookingemp: TStringField;
    VColumn7: TcxGridDBColumn;
    procedure dsBookingStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //
    //
    procedure ActionCommand(Sender: TObject);


  private
    FBooking: TBooking;
    function DoDataChecked: Boolean;
  public
  end;

procedure ShowForm_Booking(const ALink: TxLink); overload;


implementation

uses
  CommModule, dm;

var
  FLink: TXLink;



{$R *.dfm}

{ TFrm_Booking }

procedure ShowForm_Booking(const ALink: TxLink);
var
  Frm_Booking: TFrm_Booking;
begin
  FLink := ALink;
  Frm_Booking := TFrm_Booking.Create(Application);
  try
    Frm_Booking.ShowModal;
  finally
    FreeAndNil(Frm_Booking);
  end;
end;


procedure TFrm_Booking.FormCreate(Sender: TObject);
begin
  FBooking := TBooking.Create(Self, Qry_Booking, FLink);
  dsBooking.DataSet := Qry_Booking;
end;

procedure TFrm_Booking.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FBooking);
end;

procedure TFrm_Booking.dsBookingStateChange(Sender: TObject);
begin
  aEdit.Enabled := (Qry_Booking.State in [dsBrowse]) and (Qry_Booking.RecordCount > 0);
  aNew.Enabled := Qry_Booking.State in [dsBrowse];
  aSave.Enabled := (not aEdit.Enabled) and (not aNew.Enabled);
  aCancel.Enabled := aSave.Enabled;
  aDelete.Enabled := aEdit.Enabled;
  RzPanel.Enabled :=  aSave.Enabled;
  cxGrid1.Enabled := aEdit.Enabled;  
end;

procedure TFrm_Booking.ActionCommand(Sender: TObject);
begin
  case Tcontrol(Sender).Tag of
    1: begin
        FBooking.InsertRecord(False);
        Lup_ChargeName.SetFocus;
      end;
    3: begin
        FBooking.EditRecord;
        Lup_ChargeName.SetFocus;
      end;
    4: FBooking.DeleteRecord;
    5: begin
       if DoDataChecked then begin
          if Qry_Booking.fieldbyname('Ratio').AsString < '1' then
            Qry_Booking.fieldbyname('Ratio').AsString := '100';
          Qry_Booking.fieldbyname('emp').AsString := Lup_ChargeName.Text;
          FBooking.SaveDataSet(False);
          FormCreate(nil);
        end
        else
          Abort;
      end;
    6: FBooking.CancelDataSet;
  end;
end;

function TFrm_Booking.DoDataChecked: Boolean;
var
  i: integer;
  ARzDbEdit: TRzDBEdit;
  ACxCombobox: TcxDBLookupComboBox;
begin
  Result := True;
  for i := 0 to self.ComponentCount - 1 do begin
    if ((self.Components[i].Tag = 1) or (self.Components[i].Tag = 2)) then begin
      if (self.Components[i] is TRzDBEdit) then begin
        ARzDbEdit := TRzDBEdit(self.Components[i]);
        if ARzDbEdit.Text = EmptyStr then begin
          MessageDlg(ARzDbEdit.HelpKeyword, mtWarning, [mbOK], 0);
          if (self.Components[i].Tag = 1) then
            ARzDbEdit.SetFocus;
          Result := False;
          Exit;
        end;
      end;
      if (self.Components[i] is TcxDBLookupComboBox) then begin
        ACxCombobox := TcxDBLookupComboBox(self.Components[i]);
        if ACxCombobox.Text = EmptyStr then begin
          MessageDlg(ACxCombobox.HelpKeyword, mtWarning, [mbOK], 0);
          ACxCombobox.SetFocus;
          Result := False;
          Exit;
        end;
      end;
    end;
  end;
end;


end.

