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
    Panel3: TPanel;
    Grid_list: TAdvStringGrid;
    ADOConnection1: TADOConnection;
    ADOQuery: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Grid_Pyo: TAdvStringGrid;
    Grid_Jun: TAdvStringGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxLabel6: TcxLabel;
    Edit_TotDong: TcxTextEdit;
    Edit_TotHouseCnt: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    Edit_OneDong: TcxTextEdit;
    Edit_UseDate: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    btnOk: TRzBitBtn;
    Edit_GongM: TcxCurrencyEdit;
    Edit_BuildPung: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    Edit_Land: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    Edit_JunM: TcxCurrencyEdit;
    Edit_Floor: TcxTextEdit;
    cxLabel7: TcxLabel;

    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure do_getbuilmain;
    procedure init_ListGrid;
    procedure LoadFieldFromNode(var AField: FieldRecord; ANode: TXmlNode; Count:Integer; Gubun:integer; Cnt:integer);
    procedure DataSetting;
    procedure Do_GetPyo;
    procedure Do_GetJun;
    procedure Edit_Setting;
    procedure btnOkClick(Sender: TObject);
    procedure XFormShow(Sender: TObject);
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
  CommModule,userfunc, DM, DM2, CommFuncU,UserData, Math, dxBaseForm;
       // 나현찬 'userdata' 가 userinfo를 쓸 수 있다.
{$R *.DFM}

  const
  NOT_EXISTS = 0;
   EXISTS     = 1;
   var
   REG,EUB,BUN1,BUN2,SAN, Dong, Ho: String;
   IE_HWND: HWND;
   MasterId : string;
   Gubun : Integer; // 1:보금자리 , 2:연금정식, 3:연금약식

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

          Alink.AddParams('UseDate', Edit_UseDate.Text); // 사용승인일
          Alink.AddParams('OneDong', Edit_OneDong.Text); // 1동의 층수
          Alink.AddParams('Floor', Edit_Floor.Text); // 1동의 층수
          Alink.AddParams('TotDong', Edit_TotDong.Text); // 총동수
          Alink.AddParams('TotHouseCnt', Edit_TotHouseCnt.Text); // 총세대수

          Alink.AddParams('GongM', FloatToStr(Edit_GongM.Value)); // 공용면적
          Alink.AddParams('BuildPung', FloatToStr(Edit_BuildPung.Value)); // 건물면적
          Alink.AddParams('Land', FloatToStr(Edit_Land.Value)); // 건물면적

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
begin

  with ADOQuery do
  begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Select Reg, Eub, Bun1, Bun2, Dong, Ho From Apw_MasterEx Where 1=1 And Docid = :MasterID ';

    Parameters.ParamByName('MasterID').Value := MasterId;

    Open;

    Reg := FieldByName('Reg').AsString;
    Eub := FieldByName('Eub').AsString;
    Bun1 := FieldByName('Bun1').AsString;
    Bun2 := FieldByName('Bun2').AsString;
    Dong := FieldByName('Dong').AsString;
    Ho := FieldByName('Ho').AsString;

  end;

   Edit_UseDate.Text := '';
   Edit_OneDong.Text := '';
   Edit_TotDong.Text := '';
   Edit_TotHouseCnt.Text := '';

   Edit_Land.Value := 0;
   Edit_GongM.Value := 0;
   Edit_BuildPung.Value := 0;
   Edit_Land.Value := 0;

end;

procedure TXForm2.XFormShow(Sender: TObject);
begin

  DataSetting;
  init_ListGrid;
  do_getbuilmain;
  Do_GetPyo;
  Do_GetJun;
  Edit_Setting;

end;

procedure TXForm2.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TXForm2.init_ListGrid;
begin

  Grid_list.ClearAll;
  Grid_Pyo.ClearAll;
  Grid_Jun.ClearAll;

  with Grid_list do
  begin

    ColCount := 6;
    Cells[0, 0] := '대장종류';
    Cells[1, 0] := '대지위치';
    Cells[2, 0] := '건축물명칭';
    Cells[3, 0] := '총동수';
    Cells[4, 0] := '총세대수';
    Cells[5, 0] := '대지면적(㎡)';

    ColWidths[0] := 100;
    ColWidths[1] := 200;
    ColWidths[2] := 120;
    ColWidths[3] := 150;
    ColWidths[4] := 150;
    ColWidths[5] := 150;

  end;

  with Grid_Pyo do
  begin

    ColCount := 5;

    Cells[0, 0] := '주구조';
    Cells[1, 0] := '주용도';
    Cells[2, 0] := '세대수';
    Cells[3, 0] := '1동의 층수';
    Cells[4, 0] := '사용승인일';

    ColWidths[0] := 100;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 150;
    ColWidths[4] := 100;

  end;

  with Grid_Jun do
  begin

    ColCount := 3;

    Cells[0, 0] := '전유공유구분';
    Cells[1, 0] := '용도';
    Cells[2, 0] := '면적(㎡)';

    ColWidths[0] := 100;
    ColWidths[1] := 100;
    ColWidths[2] := 100;

  end;

end;

procedure TXForm2.do_getbuilmain;
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
begin

  Url := '';
  Url := 'http://apis.data.go.kr/1611000/BldRgstService/getBrRecapTitleInfo?sigunguCd='+ Reg +'&bjdongCd='+ Eub +'&bun='+ Bun1 +'&ji='+ Bun2 +'&numOfRows=20&ServiceKey=Bgaqu4%2BfaZ%2Bhq8Lq5t69%2BT%2FGO6j1HjKUOdBYGJM6egnkH4GATZ%2Fwx%2FjS6C7NA0YNw%2F5S1HwPPNBpTdI4nP%2BNVw%3D%3D';

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

      Grid_list.RowCount := AList.Count + 1;

      // Import each element
      for Ai := 0 to AList.Count - 1 do
      begin

        LoadFieldFromNode(Fields[Ai], AList[Ai], Ai, 1, 0);

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

procedure TXForm2.Do_GetPyo;
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

              Cnt := Cnt + 1;
              LoadFieldFromNode(Fields[Ai], AList[Ai], Ai, 3, Cnt);


          end;

        End
        else if (ANode[Ai].NodeByName('HoNm').ValueAsString = Ho) Or (ANode[Ai].NodeByName('HoNm').ValueAsString = Ho + '호') then
        begin


            Cnt := Cnt + 1;
            LoadFieldFromNode(Fields[Ai], AList[Ai], Ai, 3, Cnt);


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

  with AField, ANode do begin
    // Initialize record
    FillChar(AField, SizeOf(AField), 0);

    if (Gubun = 1) then
    Begin

      with Grid_list do
      begin

        // The flat data
        Cells[0, Count+1] := ReadString('regstrGbCdNm');
        Cells[1, Count+1] := ReadString('platPlc');
        Cells[2, Count+1] := ReadString('bldNm');
        Cells[3, Count+1] := ReadString('mainBldCnt');
        Cells[4, Count+1] := ReadString('hhldCnt');
        Cells[5, Count+1] := ReadString('platArea');

      end;

    end
    Else if (Gubun = 2) then
    Begin

      with Grid_Pyo do
      begin

        RowCount := Cnt + 1;

        // The flat data
        Cells[0, Cnt] := ReadString('strctCdNm');
        Cells[1, Cnt] := ReadString('mainPurpsCdNm');
        Cells[2, Cnt] := ReadString('hhldCnt');
        Cells[3, Cnt] := ReadString('ugrndFlrCnt') + ReadString('grndFlrCnt');
        Cells[4, Cnt] := ReadString('useAprDay');

      end;

    end
    Else if (Gubun = 3) then
    Begin

      with Grid_Jun do
      begin

        RowCount := Cnt + 1;

        // The flat data
        Cells[0, Cnt] := ReadString('exposPubuseGbCdNm');
        Cells[1, Cnt] := ReadString('etcPurps');
        Cells[2, Cnt] := ReadString('area');

      end;

    end;

  end;

end;

procedure TXForm2.Edit_Setting;
var
   i : integer;
begin

  Edit_UseDate.Text := Grid_Pyo.Cells[4, 1]; // 사용승인일
  Edit_OneDong.Text := Grid_Pyo.Cells[3, 1]; // 1동의 층수

  if Grid_list.RowCount = 1 then
  Begin

    Edit_TotHouseCnt.Text := Grid_Pyo.Cells[2, 1]; // 총세대수
    Edit_TotDong.Text := Grid_Pyo.Cells[3, 1]; // 1동의 층수
    Edit_Land.Value := 0;

  end
  Else
  Begin

    Edit_TotHouseCnt.Text := Grid_list.Cells[4, 1]; // 총세대수
    Edit_TotDong.Text := Grid_list.Cells[3, 1]; // 총동수
    Edit_Land.Value := StrToFloat(Grid_list.Cells[5, 1]);

  End;

  for i := 1 to Grid_Jun.RowCount do
  Begin

    if (Grid_Jun.Cells[0, i] = '전유') then
    begin

      Edit_JunM.Value := StrToFloat(Grid_Jun.Cells[2, i]);

    end
    else if (Grid_Jun.Cells[0, i] = '공용') then
    begin

      Edit_GongM.Value := StrToFloat(Grid_Jun.Cells[2, i]);

    end;

  end;

  Edit_BuildPung.Value := Edit_JunM.Value + Edit_GongM.Value;

  if Length(Ho) = 4 then
  begin

    Edit_Floor.Text := Copy(Ho, 1, 2);

  end
  else
  begin

    Edit_Floor.Text := Copy(Ho, 1, 1);

  end;

end;

procedure TXForm2.btnOkClick(Sender: TObject);
begin

  ModalResult := mrOk;

end;

end.



