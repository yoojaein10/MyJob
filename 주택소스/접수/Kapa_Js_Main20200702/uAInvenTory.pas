unit uAInvenTory;


interface

uses
  SysUtils, Classes, DB, kbmMWClientDataset, variants, dialogs,
  //
  uADataSetBehavior, dxLink, dxDLLManager;


type
  TInVentoryOpenClose = class(TADatSetOpenClose)
  private
    FMasterid: integer;
  protected
    procedure OpenDataSet; override;
  public
    constructor Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery;
      ALink: TxLink = nil); override;
  end;


  TInVentory = class(TADataSetBehavior)
  private
    FInVentoryOpenClose: TInVentoryOpenClose;
    FMasterid: integer;
    FDocId: string;

  public
    constructor Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery;
      const ALink: TXLink = nil); override;
    destructor Destroy;

    procedure InsertRecord(const Copyfrom: boolean); override;
    procedure DoAddrFind(const ADong: string);

    property MasterId: integer read FMasterId write FMasterId;
    property Docid: string read FDocId write FDocId;
  end;



implementation



{ TInVentoryOpenClose }

constructor TInVentoryOpenClose.Create(AOwner: TComponent;
  const ADataSet: TkbmMWClientQuery; ALink: TxLink);
begin
  inherited Create(AOwner, ADataSet, ALink);
  FMasterId := ALink.ParamByInteger('MaSterID');
  OpenDataSet;
end;

procedure TInVentoryOpenClose.OpenDataSet;
begin

  with FDataSet do begin
    if Active then Close;
    Query.Text := 'EXEC SP_S_APW_Inventory_Kapa :MaSterID';
    TableName :=
      'SP_I_APW_Inventory@SEQ=Output_SEQ,' +
      'SP_U_APW_Inventory,' +
      'SP_D_APW_Inventory'; // Delete
    Params.ParamByName('MaSterID').asInteger := FMasterId;
    open;
  end;
end;


{ TInVentory }

constructor TInVentory.Create(AOwner: TComponent;
  const ADataSet: TkbmMWClientQuery; const ALink: TXLink);
begin
  inherited Create(AOwner, ADataSet, ALink);
  FInVentoryOpenClose := TInVentoryOpenClose.Create(AOwner, ADataSet, ALink);
  FMasterId := ALink.ParamByInteger('MaSterID');
  FDocid := ALink.ParamByString('Docid');
end;

destructor TInVentory.Destroy;
begin
  FreeAndNil(FInVentoryOpenClose);
end;

procedure TInVentory.InsertRecord(const Copyfrom: boolean);
var
  iMasterId: integer;
  stDocid: string;
  i: integer;
  aFLD: variant;
begin

  with FDataSet do begin
    if CopyFrom then begin
      //Copy ÀÎ¿ë
      aFLD := VarArrayCreate([0, FieldCount - 1], varVariant);
      for i := 0 to FieldCount - 1 do
        if Fields[i].Tag = 1 then
          aFLD[i] := Fields[i].Value;
      Insert;

      //Past to
      for i := 0 to FieldCount - 1 do
        if Fields[i].Tag = 1 then
          Fields[i].Value := aFLD[i];
    end else
      Insert;
    FieldByName('MasterID').AsInteger := FMasterId;
    fieldbyName('DocID').asString := FDocid;
  end;
end;


procedure TInVentory.DoAddrFind(const ADong: string);
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('FindDong', ADong);
    OpenDLL('FindRegEub.DLL', nil, ALink);
    if ALink.Result = 1 then
      with FDataSet do begin
        fieldByName('REG').asString := ALink.ParamByString('Code1');
        fieldByName('EUB').asString := ALink.ParamByString('Code2');
        fieldByName('Addr').asString := ALink.ParamByString('Code3');
      end;
  finally
    FreeAndNil(ALink);
  end;
end;
end.

