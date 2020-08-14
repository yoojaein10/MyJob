unit uADataSetBehavior;

interface
uses
  SysUtils, Classes, dialogs, db, kbmMWClientDataset,
  DxLink;

type
  TADataSetBehavior = class(TComponent)
  private
    procedure DoQRMstResolveError(Sender: TObject; ErrorType: Integer;
      Message: string; RecordID: Integer; Current: Boolean; var Retry: Boolean);
    procedure doResolve(const ReFreshed: boolean = False);
  protected
    FLink: TxLink;
    FErrorMessage: string;
    FErrored: boolean;
    FDataSet: TkbmMWClientQuery;
  public
    constructor Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery;
      const ALink: TXLink = nil); virtual;
    procedure InsertRecord(const Copyfrom: boolean = false); virtual; abstract;
    procedure EditRecord; virtual; abstract;
    procedure SaveDataSet(const ReFreshed: boolean = False); virtual;
    procedure CancelDataSet;
    procedure PostRecord;
    procedure DeleteRecord;
  end;

  TADatSetOpenClose = class(TComponent)
  private
  protected
    FLink: TxLink;
    FDataSet: TkbmMWClientQuery;
    procedure OpenDataSet; virtual; abstract;
    procedure CloseDataSet; virtual;
  public
    constructor Create(AOwner: TComponent;
      const ADataSet: TkbmMWClientQuery; ALink: TxLink = nil); virtual;
    destructor Destroy; override;
  end;


implementation

{TADataSetBehavior}

constructor TADataSetBehavior.Create(AOwner: TComponent;
  const ADataSet: TkbmMWClientQuery; const ALink: TxLink);
begin
  inherited Create(AOwner);
  FLink := ALink;
  FDataSet := ADataSet;
  FDataSet.OnResolveError := DoQRMstResolveError;
  FErrored := False;
end;

procedure TADataSetBehavior.doQRMstResolveError(Sender: TObject;
  ErrorType: Integer; Message: string; RecordID: Integer; Current: Boolean;
  var Retry: Boolean);
begin
  FErrorMessage := Message;
  FErrored := True;
end;


procedure TADataSetBehavior.CancelDataSet;
begin
  with FDataSet do
    if state in [dsEdit, dsInsert] then Cancel;
end;


procedure TADataSetBehavior.DeleteRecord;
begin
  FdataSet.Delete;
  doResolve;
end;


procedure TADataSetBehavior.SaveDataSet(const ReFreshed: boolean);
begin
  PostRecord;
  doResolve(ReFreshed)
end;

procedure TADataSetBehavior.doResolve(const ReFreshed: boolean);
begin
  try
    FDataset.Resolve();
  except
    on E: Exception do begin
      FDataset.Cancel;
      MessageDlg('저장시 에러가 발생하였습니다. [' + E.Message + ']', mtError, [mbOk], 0);
    end;
  end;

  if FErrored then begin
    FDataset.Cancel;
    MessageDlg('저장시 에러가 발생하였습니다. [' + FErrorMessage + ']', mtError, [mbOk], 0);
  end;
  if ReFreshed then FDataset.ReFreshData;
end;

procedure TADataSetBehavior.PostRecord;
begin
  with FDataset do
    if state in [dsEdit, DsInsert] then Post;
end;

{ TADatSetOpenClose }


constructor TADatSetOpenClose.Create(AOwner: TComponent;
  const ADataSet: TkbmMWClientQuery; ALink: TxLink);
begin
  inherited Create(AOwner);
  if Assigned(ADataSet) then
    FDataSet := ADataSet;
  if Assigned(ALink) then
    FLink := ALink;
end;


procedure TADatSetOpenClose.CloseDataSet;
begin
  with FDataSet do if Active then Close;
end;

destructor TADatSetOpenClose.Destroy;
begin
  CloseDataSet;
  inherited destroy;
end;

end.

