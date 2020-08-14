//------------------------------------------------------------------------------
//
// Unit        : Unit1.pas
// Author      : 이태희
// Description :
//  도로명 주소 가져오기
// History
//   V 1.00 : 2018.12.16 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit uRaddr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxLabel, RzButton, cxContainer, cxTextEdit, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzPanel, xmldom, XMLIntf,
  msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, dxmdaset, HTTPApp, cxMemo, kbmMemTable,
  kbmMWCustomConnectionPool, kbmMWCustomDataset, kbmMWClientDataset;

type
  TfrmFindRaddr = class(TXForm)
    pnTop: TRzPanel;
    RzPanel1: TRzPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    edt_SearchWord: TcxTextEdit;
    btnFind: TRzBitBtn;
    cxLabel1: TcxLabel;
    btnOk: TRzBitBtn;
    btnclose: TRzBitBtn;
    dxMemData1: TdxMemData;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    dxMemData1bdMgtSn: TStringField;
    dxMemData1rnMgtSn: TStringField;
    dxMemData1roadAddr: TStringField;
    dxMemData1jibunAddr: TStringField;
    dxMemData1engAddr: TStringField;
    dxMemData1zipNo: TStringField;
    dxMemData1admCd: TStringField;
    dxMemData1detBdNmList: TStringField;
    dxMemData1bdNm: TStringField;
    dxMemData1bdKdcd: TStringField;
    dxMemData1siNm: TStringField;
    dxMemData1sggNm: TStringField;
    dxMemData1emdNm: TStringField;
    dxMemData1liNm: TStringField;
    dxMemData1rn: TStringField;
    dxMemData1udrtyn: TStringField;
    dxMemData1buldMnnm: TStringField;
    dxMemData1buldSlno: TStringField;
    dxMemData1mtyn: TStringField;
    dxMemData1lnbrMnnm: TStringField;
    dxMemData1lnbrSlno: TStringField;
    DataSource1: TDataSource;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1bdMgtSn: TcxGridDBColumn;
    cxGrid1DBTableView1rnMgtSn: TcxGridDBColumn;
    cxGrid1DBTableView1roadAddr: TcxGridDBColumn;
    cxGrid1DBTableView1jibunAddr: TcxGridDBColumn;
    cxGrid1DBTableView1zipNo: TcxGridDBColumn;
    cxGrid1DBTableView1admCd: TcxGridDBColumn;
    cxGrid1DBTableView1detBdNmList: TcxGridDBColumn;
    cxGrid1DBTableView1bdNm: TcxGridDBColumn;
    cxGrid1DBTableView1siNm: TcxGridDBColumn;
    cxGrid1DBTableView1sggNm: TcxGridDBColumn;
    cxGrid1DBTableView1emdNm: TcxGridDBColumn;
    cxGrid1DBTableView1liNm: TcxGridDBColumn;
    cxGrid1DBTableView1rn: TcxGridDBColumn;
    cxGrid1DBTableView1mtyn: TcxGridDBColumn;
    cxGrid1DBTableView1lnbrMnnm: TcxGridDBColumn;
    cxGrid1DBTableView1lnbrSlno: TcxGridDBColumn;
    kbmMWClientQuery1: TkbmMWClientQuery;
    cxGrid1DBTableView1buldMnnm: TcxGridDBColumn;
    cxGrid1DBTableView1buldSlno: TcxGridDBColumn;
    procedure btnFindClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    procedure ProcessParameters(ALink: TXLink);

    procedure FindAddr( Curpage, CountPerPage: integer);

  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation
Uses
  DM, CommModule;

{$R *.DFM}

//
// DLL Export function
//
procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
var
  Form: TfrmFindRaddr;
begin
  Form := TfrmFindRaddr.Create(Application);

  try
    AHandle := Form.SetParentControl(AParent);
    Form.ProcessParameters(ALink);

  // Form.ShowModal;

    if Form.ShowModal = mrOk Then
    begin
      if Assigned(Alink) then
      begin
        Alink.Result := 1;

        // 여기 넘겨 줄 값들..
        ALink.AddParams('RCode', Form.dxMemData1.fieldByName('rnMgtSn').asstring); //도로명코드
        ALink.AddParams('RJuso', Form.dxMemData1.fieldByName('roadAddr').asstring);  //도로명주소
        ALink.AddParams('JiJuso', Form.dxMemData1.fieldByName('jibunAddr').asstring); //도로지번주소
        ALink.AddParams('ZipNo', Form.dxMemData1.fieldByName('zipNo').asstring); //우편번호

        ALink.AddParams('RegEub', Form.dxMemData1.fieldByName('admCd').asstring); //법정동코드

        ALink.AddParams('siNm', Form.dxMemData1.fieldByName('siNm').asstring); //   시도명
        ALink.AddParams('sggNm', Form.dxMemData1.fieldByName('sggNm').asstring); // 시군구명
        ALink.AddParams('emdNm', Form.dxMemData1.fieldByName('emdNm').asstring); //  읍면동명
        ALink.AddParams('liNm', Form.dxMemData1.fieldByName('liNm').asstring); //   리명

        ALink.AddParams('san', Form.dxMemData1.fieldByName('mtyn').asstring); //  산여부
        ALink.AddParams('bun1', Form.dxMemData1.fieldByName('lnbrMnnm').asstring); //   지번본번
        ALink.AddParams('bun2', Form.dxMemData1.fieldByName('lnbrSlno').asstring); //   지번부번

        ALink.AddParams('RName', Form.dxMemData1.fieldByName('rn').asstring); //도로명
        ALink.AddParams('build1', Form.dxMemData1.fieldByName('buldMnnm').asstring); // 건물본번
        ALink.AddParams('build2', Form.dxMemData1.fieldByName('buldSlno').asstring); //건물부번

      end
      else
        Alink.Result := 0;
    end;
  finally
    FreeAndNil(Form);
  end;
           { TODO :
코딩 필요 (넘겨줄 값들)
화면 보이는 것 정리 필요 }

end;

{ TXForm1 }

//
// 초기 파라메터 처리 루틴
//
procedure TfrmFindRaddr.FindAddr(Curpage, CountPerPage: integer);
var
    sUrl: Widestring;
    Code, searchword : AnsiString;

    Data, DResult : TStringStream;

    OuterRoot, EntryNode:iXmlNode;
    i,j, nTotCnt, k: integer;
    sData: TStringList;

    key : string;

begin
  Data := TStringStream.Create('');
  sData := TStringList.Create;
  DResult := TStringStream.Create('');


  try
    key := 'U01TX0FVVEgyMDE4MTIwODE0NDcwOTEwODM1NDU=';
    Code :=  HttpEncode(UTF8Encode(key));

    searchword := HttpEncode(Utf8Encode(edt_SearchWord.text));

    sUrl := 'http://www.juso.go.kr/addrlink/addrLinkApi.do';
    idhttp1.Request.Referer := 'http://www.juso.go.kr/addrlink/addrLinkApi.do';

    sUrl := sUrl + '?currentPage=' +  inttostr(CurPage) + '&countPerPage=' + inttostr(CountPerPage) + '&keyword=' + searchWord + '&confmKey=' + Code;
    //memo1.Lines.add('1nd : '+ sUrl);
    idhttp1.Request.ContentType := 'application/json';
    idhttp1.HTTPOptions := [hoForceEncodeParams];
    idhttp1.get(sUrl, DResult);

    XMLDocument1.LoadFromStream(DResult);

    XMLDocument1.Active := True;
    OuterRoot := XMLDocument1.DocumentElement;
    nTotCnt := 0;

    for i:=0 to OuterRoot.ChildNodes.Count-1 do
    begin
      if OuterRoot.ChildNodes[i].NodeName = 'common' then
      begin
        EntryNode := OuterRoot.ChildNodes[i];
        for j:=0 to EntryNode.ChildNodes.Count-1 do
          if EntryNode.ChildNodes[j].NodeName = 'totalCount' then
          begin
            nTotCnt := strtoint(EntryNode.ChildNodes[j].Text);
            Break;
          end;

        for j:=0 to EntryNode.ChildNodes.Count-1 do
          if EntryNode.ChildNodes[j].NodeName = 'currentPage' then
          begin
            CurPage := strtoint(EntryNode.ChildNodes[j].Text);
            Break;
          end;

        for j:=0 to EntryNode.ChildNodes.Count-1 do
          if EntryNode.ChildNodes[j].NodeName = 'countPerPage' then
          begin
            CountPerPage := strtoint(EntryNode.ChildNodes[j].Text);
            Break;
          end;
      end;
    end;

    if nTotCnt > 0 then
    begin
      if dxMemData1.Active then dxMemdata1.Active := False;
      dxMemData1.Active := True;

      for i:=0 to OuterRoot.ChildNodes.Count-1 do
      begin
        dxMemData1.Insert;
        if OuterRoot.ChildNodes[i].NodeName = 'juso' then
        begin
          EntryNode := OuterRoot.ChildNodes[i];
          for j:=0 to EntryNode.ChildNodes.Count-1 do
          begin

            if EntryNode.ChildNodes[j].NodeName = 'bdMgtSn' then
              dxMemData1.FieldByName('bdMgtSn').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'rnMgtSn'     then
              dxMemData1.FieldByName('rnMgtSn').AsString := EntryNode.ChildNodes[j].Text;


            if EntryNode.ChildNodes[j].NodeName = 'roadAddr' then
              dxMemData1.FieldByName('roadAddr').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'jibunAddr'   then
              dxMemData1.FieldByName('jibunAddr').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'zipNo'       then
              dxMemData1.FieldByName('zipNo').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'admCd'       then
              dxMemData1.FieldByName('admCd').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'siNm'       then
              dxMemData1.FieldByName('siNm').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'sggNm'       then
              dxMemData1.FieldByName('sggNm').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'emdNm'       then
              dxMemData1.FieldByName('emdNm').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'liNm'       then
              dxMemData1.FieldByName('liNm').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'mtyn'       then
            begin
              dxMemData1.FieldByName('mtyn').AsString := EntryNode.ChildNodes[j].Text;
            end;
            if EntryNode.ChildNodes[j].NodeName = 'lnbrMnnm'       then
              dxMemData1.FieldByName('lnbrMnnm').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'lnbrSlno'       then
              dxMemData1.FieldByName('lnbrSlno').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'rn'       then
              dxMemData1.FieldByName('rn').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'buldMnnm'       then
              dxMemData1.FieldByName('buldMnnm').AsString := EntryNode.ChildNodes[j].Text;

            if EntryNode.ChildNodes[j].NodeName = 'buldSlno'       then
              dxMemData1.FieldByName('buldSlno').AsString := EntryNode.ChildNodes[j].Text;

          end; // j loop
          dxMemData1.Post;
        end; // if juso
      end; // for OuterRoot.ChildNodes.Count-1
    end; //if nTotCnt > 0 then

 finally
    XMLDocument1.Active := False;
    Data.Free;
    sData.Free;
    DResult.Free;
  end;

end;

procedure TfrmFindRaddr.ProcessParameters(ALink: TXLink);
begin
  // todo your codes !!
   edt_SearchWord.Text :=Alink.ParamByString('FindDong');

end;

procedure TfrmFindRaddr.btnFindClick(Sender: TObject);
begin
  FindAddr(1, 100);
end;

procedure TfrmFindRaddr.btncloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFindRaddr.btnOkClick(Sender: TObject);

begin
  if not dxMemData1.IsEmpty then
  begin
    ModalResult := mrOk;
  end;
end;

end.
