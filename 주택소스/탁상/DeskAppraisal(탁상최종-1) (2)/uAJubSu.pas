unit uAJubSu;

interface

uses
  SysUtils, Classes, DB, kbmMWClientDataset, variants,
  //
  uADataSetBehavior, uInventory, uBooking, dxLink, dxMessages, dxDLLManager;

type
  TJubSu = class(TADataSetBehavior)
  private
    FInventoryDatSet: TkbmMWClientQuery;
    procedure SaveInventory;
  public
    constructor Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery; const ALink: TxLink = nil); override;
    destructor Destroy; override;
    procedure InsertRecord(const Copyfrom: boolean); override;
    procedure EditRecord; override;
    procedure SaveDataSet(const ReFreshed: boolean = False); override;

    function DoCustFind(const ACustName: string):String;
    procedure DoAddrFind(const ADong: string);
    procedure DoInventory;
    procedure DoBooking;
    procedure DoPrint;


  end;

implementation

uses
  UserData, CommFuncU;


 {TJubSu}

procedure TJubSu.InsertRecord(const Copyfrom: boolean);
var
  i: integer;
  aFLD: variant;
begin
  with FdataSet do begin
    if CopyFrom then begin
      //Copy �ο�
      aFLD := VarArrayCreate([0, FieldCount - 1], varVariant);
      for i := 0 to FieldCount - 1 do
        if Fields[i].Tag = 1 then
          aFLD[i] := Fields[i].Value;
      Insert;

      //Past to
     for i := 0 to FieldCount - 1 do
        if Fields[i].Tag = 1 then
          Fields[i].Value := aFLD[i];

          
      FieldByName('DocId').asString := '';
    end else begin
      Insert;
    //  fieldbyName('ReceiptDate').AsDateTime := Date;
    //  fieldbyName('REquestDate').AsDateTime := Date;
    //  FieldByName('LimitDate').AsDateTime := Date + 5; // ó������
    end;
  //  FieldByName('OFFICE').asString := Userinfo.Office;
  //  FieldByName('Priority').AsString := '1'; // �켱����
  //  FieldByName('Status').AsString := '10'; // �����Ϸ�
  //  FieldByName('LOCKED').AsString := 'N'; //��ݻ���
  //  FieldByName('Report').AsString := 'Y'; //��������
  //  FieldByName('ReceiptCharge').AsInteger := Userinfo.UID;
    //���κ� ��������ȣ �ο��� ����...(Sp_I_Apw_Master�� �ش� ���ΰ͸� ����� �ʿ����)
  //  FieldByName('Guid').AsString := copy(UserData.Userinfo.OrgID, 1, 5) + '0' + 'A';


  end;
end;

function TJubSu.DoCustFind(const ACustName: string):String;
var
  ALink: TXLink;
begin
  Result := '';
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('CustName', ACustName);
    ALink.AddParams('Office', UserInfo.Office);
    OpenDLL('FINDCUST.DLL', nil, ALink);
    if ALink.Result = 1 then
      with FdataSet do begin
        if ALink.ParamByString('office') <> UserInfo.Office then begin
          Result := '�ٸ� ������ �ŷ�ó�� ���� �� �� �����ϴ�. �ٽ� �����ϼ���.';
          Exit;
        end;
        FieldByName('CustID').AsString := ALink.ParamByString('CODE');
        FieldByName('CustName').AsString := ALink.ParamByString('NAME');
        FieldByName('Production').AsString := ALink.ParamByString('NAME');
        FieldByName('CustPart').AsString := ALink.ParamByString('PART'); //  ���μ�
        FieldByName('CustCharge').AsString := ALink.ParamByString('CHARGE'); //  ����ڸ�
        FieldByName('CustPhone').AsString := ALink.ParamByString('PHONE'); //  ��ȭ��ȣ
        FieldByName('CustChargeHP').AsString := ALink.ParamByString('HPHONE'); // �ڵ���
        FieldByName('BookingCode').AsString := ALink.ParamByString('Manager'); // ��ġ��
        FieldByName('Ratio').AsString := ALink.ParamByString('Ratio'); // ��ġ�ڼ������
      end;
  finally
    FreeAndNil(ALink);
  end;
end;

procedure TJubSu.DoAddrFind(const ADong: string);
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('FindDong', ADong);
    OpenDLL('FindRegEub.DLL', nil, ALink);
    if ALink.Result = 1 then
      with FdataSet do begin
        fieldByName('REG').asString := ALink.ParamByString('Code1');
        fieldByName('EUB').asString := ALink.ParamByString('Code2');
        fieldByName('Addr').asString := ALink.ParamByString('Code3');
        fieldByName('Address').asString := ALink.ParamByString('Code3');
      end;
  finally
    FreeAndNil(ALink);
  end;
end;

procedure TJubSu.DoPrint;
begin
//
end;

procedure TJubSu.DoInventory;
var
  ALink: TXLink;
  ttt: TkbmMWClientQuery;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('Masterid', FDataSet.fieldbyName('MasterID').AsInteger);
    ALink.AddParams('DocID', FDataSet.fieldbyName('DocID').AsString);
    ShowForm_InvenTory(ALink);
//    if ALink.Result = 1 then
//      FInventoryDatSet := TkbmMWClientQuery(ALink.ParamByObject('DataSet'))
//    else
//      FreeAndNil(FInventoryDatSet);
  finally
    FreeAndNil(ALink);
  end;
end;


procedure TJubSu.DoBooking;
var
  ALink: TXLink;
begin
  ALink := TXLink.Create(nil);
  try
    ALink.AddParams('Masterid', FDataSet.fieldbyName('MasterID').AsInteger);
    ALink.AddParams('Seq', FDataSet.fieldbyName('BookingSeq').AsString);
    ShowForm_Booking(ALink);
  finally
    FreeAndNil(ALink);
  end;
end;

constructor TJubSu.Create(AOwner: TComponent; const ADataSet: TkbmMWClientQuery; const ALink: TxLink = nil);
begin
  inherited Create(AOwner, ADataSet, ALink);
  FInventoryDatSet := TkbmMWClientQuery.Create(nil);
end;

destructor TJubSu.Destroy;
begin
  if Assigned(FInventoryDatSet) then
    FreeAndNil(FInventoryDatSet);
  inherited Destroy;
end;

procedure TJubSu.SaveInventory;
begin
  if Assigned(FInventoryDatSet) then begin
    with FInventoryDatSet do begin
      if not Active then Open;
      first;
      while not Eof do begin
        if not (State in [dsEdit]) then Edit;
        FieldByName('MasteId').AsInteger := FDataSet.Params.ParamValues['MasteId'];
        FieldByName('DocId').AsInteger := FDataSet.Params.ParamValues['DocId'];
        if State in [dsEdit] then Post;
      end;
      Resolve();
    end;
  end;
end;

procedure TJubSu.SaveDataSet(const ReFreshed: boolean);
begin
  inherited;
end;

procedure TJubSu.EditRecord;
begin
  with FDataset do begin
    if not (State in [dsEdit, dsInsert]) then Edit;
    if FdataSet.FieldByName('ReceiptCharge').AsString = '' then
      FdataSet.FieldByName('ReceiptCharge').AsInteger := Userinfo.UID;
    //���κ� ��������ȣ �ο��� ����...(Sp_I_Apw_Master�� �ش� ���ΰ͸� ����� �ʿ����)
    if FdataSet.FieldByName('Guid').AsString = '' then
      FdataSet.FieldByName('Guid').AsString := copy(UserData.Userinfo.OrgID, 1, 5) + '0' + 'A';
  end;
end;

end.


end.

