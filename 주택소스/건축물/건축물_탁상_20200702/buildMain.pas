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

unit buildMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, SHDocVw,dxLink, shellapi,comobj,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, xmldom, dxForm,
  XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Grids, DBGrids, uJSON, Provider,
  Xmlxform, DB, DBClient, AdvObj, BaseGrid, AdvGrid, ADODB, cxCheckBox,NativeXml,
  ComCtrls,  AdvUtil, RzButton, cxCurrencyEdit;

type
   // This is the record structure
  FieldRecord= record
    mgmBldrgstPk: UTF8String;
    platPlc: UTF8String;
    dongNm: UTF8String;
    bun: UTF8String;
    ji: UTF8String;
    bldNm: UTF8String;
    platArea: UTF8String;
    bcRat: UTF8String;

    totArea: UTF8String;
    vlRat: UTF8String;
    strctCdNm: UTF8String;
    etcPurps: UTF8String;
    grndFlrCnt: UTF8String;
    ugrndFlrCnt: UTF8String;
    pmsDay: UTF8String;
    useAprDay: UTF8String;

    roofCdNm: UTF8String;
    hhldCnt: UTF8String;
    fmlyCnt: UTF8String;
    regstrGbCdNm: UTF8String;
    vlRatEstmTotArea : UTF8String;

  end;
  FFieldRecord= record
  ///Floor
    rnum       : UTF8String;
    flrGbCdNm  : UTF8String;
    flrNoNm    : UTF8String;
    etcStrct   : UTF8String;
    etcPurps   : UTF8String;
    area       : UTF8String;
    mgmBldrgstPk  : UTF8String;
  end;
   HFieldRecord= record
  ///HO
    dongNm        : UTF8String;
    hoNm          : UTF8String;
    mainPurpsCdNm : UTF8String;
    flrNoNm       : UTF8String;
    exposPubuseGbCdNm   : UTF8String;
    area          : UTF8String;
    mgmBldrgstPk  : UTF8String;
  end;

  ////////////////////////////
  TXForm2 = class(TXForm)
    XMLDocument1: TXMLDocument;
    IdHTTP1: TIdHTTP;
    ADOConnection1: TADOConnection;
    ADOQuery: TADOQuery;
    Panel1: TPanel;
    Panel4: TPanel;
    Grid_Jun: TAdvStringGrid;
    Panel7: TPanel;
    btnOk: TRzBitBtn;
    Edit_UseDate: TcxTextEdit;
    cxLabel4: TcxLabel;
    Memo1: TMemo;

    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure init_ListGrid;
    procedure LoadFieldFromNode(var AField: FieldRecord; ANode: TXmlNode; Count:Integer; Gubun:integer; Cnt:integer);
    procedure DataSetting;
    procedure Do_GetJun;
    procedure btnOkClick(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure do_getUse;

  private
    procedure ProcessParameters(ALink: TXLink);
  public
     Fields: array of FieldRecord; // This is a dynamic array of records
     FFields: array of FFieldRecord; // This is a dynamic array of records
     HFields: array of HFieldRecord; // This is a dynamic array of records
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

uses
  CommModule,userfunc, DM, DM2, CommFuncU,UserData, Math;
       // 나현찬 'userdata' 가 userinfo를 쓸 수 있다.
{$R *.DFM}

  const
  NOT_EXISTS = 0;
   EXISTS     = 1;
   var
   REG,EUB,BUN1,BUN2,SAN, Dong, Ho: String;
   IE_HWND: HWND;
   MasterId : string;
   Area : Double;
   USEDate : String;

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

      ProcessParameters(ALink);

      if ShowModal = mrok then begin

        if Assigned(Alink) then
        begin
        
          Alink.Result := 1;

          Alink.AddParams('Ho', Ho); // 호
          Alink.AddParams('Area', FloatToStr(Area)); // 면적
          ALink.AddParams('UseDate',Edit_UseDate.Text);

        end;
//        Free;
      end
      else
        Alink.Result := 0;;
    end; //with
//  except;
  finally
    FreeAndNil(Form);
  end
end;


{ TXForm2 }

//
// 초기 파라메터 처리 루틴
//
procedure TXForm2.ProcessParameters(ALink: TXLink);
var

  WinHanlde: HWnd;
//  web: TWebBrowser;
begin

  MasterId := ALink.ParamByString('MasterID');

end;


procedure TXForm2.DataSetting;
var
 List1 : TStringList;
 buildtmp: String;
begin
 List1 := TStringList.Create;
  try
  begin
  List1.Delimiter:=('|');



     with ADOQuery do
     begin

       SQL.Clear;
       Parameters.Clear;

       SQL.Text := ' Select Reg, Eub, Bun1, Bun2,Building, Replace(Replace(Left(Building, 5), '' '', ''''), ''동'', '''') Dong, Replace(Replace(Right(Building, 5), '' '' , ''''), ''호'', '''') Ho From Apw_TS_Master Where 1=1 And MasterID = :MasterID ';

       Parameters.ParamByName('MasterID').Value := MasterId;

       Open;

       Reg := FieldByName('Reg').AsString;
       Eub := FieldByName('Eub').AsString;
       Bun1 := FieldByName('Bun1').AsString;
       Bun2 := FieldByName('Bun2').AsString;
       Dong := FieldByName('Dong').AsString;
       Ho := FieldByName('Ho').AsString;
       buildtmp := StringReplace( FieldByName('Building').AsString, '동', '|', [rfReplaceAll]);
       List1.DelimitedText:= buildtmp;
       Dong := List1[0];
       // ShowMessage(dong);
     end;

  end;
  finally
     List1.Free;
  end;

end;



procedure TXForm2.XFormShow(Sender: TObject);
begin

  DataSetting;
  init_ListGrid;
  Do_GetJun;
  do_getUse;

end;

procedure TXForm2.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TXForm2.init_ListGrid;
begin

  Grid_Jun.ClearAll;

  with Grid_Jun do
  begin

    ColCount := 6;

    Cells[0, 0] := 'C';
    Cells[1, 0] := '동';
    Cells[2, 0] := '호';
    Cells[3, 0] := '전유공유구분';
    Cells[4, 0] := '용도';
    Cells[5, 0] := '면적(㎡)';

    ColWidths[0] := 18;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 100;
    ColWidths[4] := 300;
    ColWidths[5] := 100;

  end;

end;


procedure TXForm2.Do_GetJun;
var
  Url , code ,searchword , searchoption ,Sresult: AnsiString ;
  Data    : TStringStream;
  DResult : TStringStream;
  NodeName,Nodevalue: String;
  OuterRoot,EntryNode,childNode,GrandChildNode:IXmlNode;
  i,j,k,z:Integer;
  Ai: integer;
  ADoc: TNativeXml;
  ANode, ANode2: TXmlNode;
  AList: TList;
  Cnt : integer;
begin

  Cnt := 0;

  Url := '';
  Url := 'http://apis.data.go.kr/1611000/BldRgstService/getBrExposPubuseAreaInfo?sigunguCd='+ Reg +'&bjdongCd='+ Eub +'&bun='+ Bun1 +'&ji='+ Bun2 +'&numOfRows=10000&ServiceKey=Bgaqu4%2BfaZ%2Bhq8Lq5t69%2BT%2FGO6j1HjKUOdBYGJM6egnkH4GATZ%2Fwx%2FjS6C7NA0YNw%2F5S1HwPPNBpTdI4nP%2BNVw%3D%3D';

  Memo1.Lines.Add(Url);
  Data := TStringStream.Create('');
  DResult := TStringStream.Create('');
 // Indy := TIdHttp.Create(nil);
   try
    IdHTTP1.Request.ContentType := 'application/xml';

    Sresult := UTF8Decode(IdHTTP1.get(Url));
    //////////////////////////////////////////////////
     ADoc := TNativeXml.Create;
  try

    ADoc.ReadFromString(Sresult);
    // A temporary list to hold references to the record elements
    AList := TList.Create;
    try

      ANode := ADoc.Root.FindNode('items');

      //ANode := ADoc.Root.NodeByName('body');
      if not assigned(ANode) then exit;

      // List of nodes that are named "field"
      ANode.NodesByName('item', AList);

      // Set dynamic array length
      SetLength(Fields, AList.Count);

      // Import each element
      for Ai := 0 to AList.Count - 1 do
      begin

        if (ANode[Ai].NodeByName('dongNm').ValueAsString = Dong + '동') or (ANode[Ai].NodeByName('dongNm').ValueAsString = Dong) Then
        Begin

          if (ANode[Ai].NodeByName('HoNm').ValueAsString = Ho) Or (ANode[Ai].NodeByName('HoNm').ValueAsString = Ho + '호') then
          begin

            if (ANode[Ai].NodeByName('exposPubuseGbCdNm').ValueAsString = '전유') then
            begin

              Cnt := Cnt + 1;
              LoadFieldFromNode(Fields[Ai], AList[Ai], Ai, 3, Cnt);

            end;

          end;

        End
        else if (ANode[Ai].NodeByName('HoNm').ValueAsString = Ho) Or (ANode[Ai].NodeByName('HoNm').ValueAsString = Ho + '호') then
        begin

          if (ANode[Ai].NodeByName('exposPubuseGbCdNm').ValueAsString = '전유') then
          begin

            Cnt := Cnt + 1;
            LoadFieldFromNode(Fields[Ai], AList[Ai], Ai, 3, Cnt);
                                                                                                                             
          end;

        end;

      end;

    finally
      AList.Free;
    end;
  finally
    ADoc.Free;
  end;

  finally
    // 메모리에서 해제
    Data.Free;
    DResult.Free;

  end;

end;

procedure TXForm2.LoadFieldFromNode(var AField: FieldRecord; ANode: TXmlNode;Count:Integer;Gubun:integer; Cnt:integer);
var
  i: integer;
  AMeta: TXmlNode;
  AEnum: TXmlNode;
  AList: TList;
begin

  // Gubun 총괄표제부 1 표제부 2 전유부 3
  if (Gubun = 3) then
  begin
  with AField, ANode do begin
    // Initialize record
    FillChar(AField, SizeOf(AField), 0);

    with Grid_Jun do
    begin

      RowCount := Cnt + 1;

        // The flat data
      AddCheckBox(0, Cnt, False, False);

      Cells[1, Cnt] := ReadString('dongNm');
      Cells[2, Cnt] := ReadString('hoNm');
      Cells[3, Cnt] := ReadString('exposPubuseGbCdNm');
      Cells[4, Cnt] := ReadString('etcPurps');
      Cells[5, Cnt] := ReadString('area');

    end;

  end;
  end
  Else if (Gubun = 2) then
  Begin

    with AField, ANode do begin

        Edit_UseDate.Text := ReadString('useAprDay');

    end;

  end

end;

procedure TXForm2.btnOkClick(Sender: TObject);
var
   i : integer;
   ChkStatus : Boolean;
begin

  Area := 0;

  for i := 1 to Grid_Jun.RowCount - 1 do
  begin

    if (Grid_Jun.Cells[1, i] = '') then
    begin
      
      Break;

    end;

    Grid_Jun.GetCheckBoxState(0, i, ChkStatus);

    if ChkStatus then
    Begin

      Area := Area + StrToFloat(Grid_Jun.Cells[5, i]);

    End;

  end;

  ModalResult := mrOk;

end;

procedure TXForm2.do_getUse;
var
  Url , code ,searchword , searchoption ,Sresult: AnsiString ;
  Data    : TStringStream;
  DResult : TStringStream;
  NodeName,Nodevalue: String;
  OuterRoot,EntryNode,childNode,GrandChildNode:IXmlNode;
  i,j,k,z:Integer;
  Ai: integer;
  ADoc: TNativeXml;
  ANode, ANode2: TXmlNode;
  AList: TList;
  Cnt : integer;
begin

  Cnt := 0;
  Url := '';
  Url := 'http://apis.data.go.kr/1611000/BldRgstService/getBrTitleInfo?sigunguCd='+ Reg +'&bjdongCd='+ Eub +'&bun='+ Bun1 +'&ji='+ Bun2 +'&numOfRows=500&ServiceKey=Bgaqu4%2BfaZ%2Bhq8Lq5t69%2BT%2FGO6j1HjKUOdBYGJM6egnkH4GATZ%2Fwx%2FjS6C7NA0YNw%2F5S1HwPPNBpTdI4nP%2BNVw%3D%3D';

  Data := TStringStream.Create('');
  DResult := TStringStream.Create('');
 // Indy := TIdHttp.Create(nil);
   try
    IdHTTP1.Request.ContentType := 'application/xml';

    Sresult := UTF8Decode(IdHTTP1.get(Url));
    //////////////////////////////////////////////////
     ADoc := TNativeXml.Create;
  try

    ADoc.ReadFromString(Sresult);
    // A temporary list to hold references to the record elements
    AList := TList.Create;
    try

      ANode := ADoc.Root.FindNode('items');

      //ANode := ADoc.Root.NodeByName('body');
      if not assigned(ANode) then exit;

      // List of nodes that are named "field"
      ANode.NodesByName('item', AList);

      // Set dynamic array length
      SetLength(Fields, AList.Count);

      // Import each element
      for Ai := 0 to AList.Count - 1 do
      begin

        if (((ANode[Ai].NodeByName('dongNm').ValueAsString) = Dong + '동') Or ((ANode[Ai].NodeByName('dongNm').ValueAsString) = Dong)) Then
        Begin

          Cnt := Cnt + 1;
          LoadFieldFromNode(Fields[Ai], AList[Ai], Ai, 2, Cnt);
          Break;

        End;

      end;

    finally
      AList.Free;
    end;
  finally
    ADoc.Free;
  end;

  finally
    // 메모리에서 해제
    Data.Free;
    DResult.Free;

  end;

end;

end.



