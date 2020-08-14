unit uABooking;


interface

uses
  SysUtils, Classes, DB, kbmMWClientDataset, variants,
  //
  uADataSetBehavior, dxLink, dxDLLManager;


type
  TBookingOpenClose = class(TADatSetOpenClose)
  private
    FMasterid: integer;
  protected
    procedure OpenDataSet; override;
  public
    constructor Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery;
      ALink: TxLink = nil); override;
  end;


  TBooking = class(TADataSetBehavior)
  private
    FBookingOpenClose: TBookingOpenClose;
    FMasterid: integer;
  public
    constructor Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery;
      const ALink: TXLink = nil); override;
    destructor Destroy;
    procedure InsertRecord(const Copyfrom: boolean = False); override;


    property Masterid: integer read FMasterId write FMasterid;
  end;


implementation

{ TBookingOpenClose }


constructor TBookingOpenClose.Create(AOwner: TComponent;
  const ADataSet: TkbmMWClientQuery; ALink: TxLink);
begin
  inherited Create(AOwner, ADataSet, ALink);
  FMasterId := ALink.ParamByInteger('MaSterID');
  OpenDataSet;
end;

procedure TBookingOpenClose.OpenDataSet;
var
  iMasterId: integer;
  iSeq: integer;
begin
  iMasterId := FLink.ParamByInteger('MaSterID');
  iSeq := FLink.ParamByInteger('Seq');

  with FDataSet do begin
    if Active then Close;
    Query.Text := 'EXEC SP_S_APW_Booking_Kapa :MaSterID, :Seq ';
    TableName := 'SP_I_APW_Booking@SEQ=Output_SEQ,' +
      'SP_U_APW_Booking,' +
      'SP_D_APW_Booking'; // Delete
    Params.ParamByName('MaSterID').asInteger := iMasterId;
    Params.ParamByName('Seq').asInteger := iSeq;
    open;
  end;
end;


{ TBooking }

constructor TBooking.Create(AOwner: TComponent;
  const ADataSet: TkbmMWClientQuery; const ALink: TXLink);
begin
  inherited Create(AOwner, ADataSet, ALink);
  FBookingOpenClose := TBookingOpenClose.Create(AOwner, ADataSet, ALink);
  FMasterid := ALink.ParamByInteger('MaSterID');  
end;

destructor TBooking.Destroy;
begin
  FreeAndNil(FBookingOpenClose);
end;

procedure TBooking.InsertRecord(const Copyfrom: boolean);
begin
  with FDataSet do begin
    Insert;
    FieldByName('MasterID').AsInteger := FMasterid;
    FieldByName('Bill').AsString := '';
    FieldByName('BillRatio').AsInteger := 0;
  end;
end;

end.

