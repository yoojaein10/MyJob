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
  IdTCPClient, IdHTTP, Grids, DBGrids, Provider,
   DB, DBClient, AdvObj, BaseGrid, AdvGrid, ADODB, cxCheckBox,
  ComCtrls,  AdvUtil, RzButton, cxCurrencyEdit, cxDBEdit;

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
    Panel3: TPanel;
    ADOConnection1: TADOConnection;
    ADOQuery: TADOQuery;
    Panel1: TPanel;
    Panel4: TPanel;
    Grid_Jun: TAdvStringGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    btnOk: TRzBitBtn;
    Panel2: TPanel;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    RzBitBtn1: TRzBitBtn;
    ADOConnection2: TADOConnection;
    qry: TADOQuery;
    edit_yunarea: TcxCurrencyEdit;
    edit_saedae: TcxTextEdit;
    edit_Gujo: TcxTextEdit;
    edit_road: TcxTextEdit;
    edit_Floor: TcxTextEdit;
    edit_usedate: TcxTextEdit;
    edit_buildarea: TcxCurrencyEdit;
    edit_yongrate: TcxCurrencyEdit;
    edit_gunrate: TcxCurrencyEdit;
    edit_Bun1: TcxTextEdit;
    edit_bun2: TcxTextEdit;
    edit_dong: TcxTextEdit;
    edit_ho: TcxTextEdit;
    Panel6: TPanel;
    Panel9: TPanel;
    WebBrowser1: TWebBrowser;
    edit_Dae: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edit_YongArea: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    edit_height: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Edit_UpFloor: TcxTextEdit;
    Edit_DownFloor: TcxTextEdit;
    Edit_TotFloor: TcxTextEdit;
    Edit_CurrFloor: TcxTextEdit;

    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure init_ListGrid;
    procedure DataSetting;
    procedure btnOkClick(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure edit_bun1PropertiesChange(Sender: TObject);
    procedure Do_GetBasic;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure do_GetJunArea;
    procedure do_GetLandUse;
    function FillZero(Bun: String): String;
    procedure edit_dongExit(Sender: TObject);
    procedure edit_hoExit(Sender: TObject);
    procedure edit_bun2Exit(Sender: TObject);
    procedure edit_Bun1Exit(Sender: TObject);

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
   REG,EUB,BUN1,BUN2,SAN, Dong, Ho,BuildNM: String;
   IE_HWND: HWND;
   MasterId : string;
   webaddress: string;
   GongM, JunM : Double;
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

          Alink.AddParams('UseDate', edit_usedate.Text); // 사용승인일
          Alink.AddParams('TotFloor', Edit_UpFloor.Text); // 층층수
          Alink.AddParams('Floor', Edit_CurrFloor.Text); // 해당층
          Alink.AddParams('TotHouseCnt', edit_saedae.Text); // 총세대수
          Alink.AddParams('GongM', FloatToStr(GongM)); // 공용면적
          Alink.AddParams('JunM', FloatToStr(JunM)); // 건물면적


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
begin

   MasterId:= ALink.ParamByString('MasterId');

end;


procedure TXForm2.DataSetting;
var
   tmp: TStringList;
   I :  Integer;
begin
  tmp := TStringList.Create;
  tmp.Delimiter := ' ';


  with qry do
  begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Select REG, EUB, BUN1, BUN2, Building, SAN, Dong, Ho from APW_MasterEx where 1=1 And Docid =:MasterID ';

    Parameters.ParamByName('MasterID').Value := MasterId;

    Open;

    Reg := FieldByName('Reg').AsString;
    Eub := FieldByName('Eub').AsString;
    Bun1 := FieldByName('Bun1').AsString;
    Bun2 := FieldByName('Bun2').AsString;
    SAN := FieldByName('SAN').AsString;
    webaddress := REG+EUB+SAN+BUN1+BUN2;
    edit_bun1.Text :=  Bun1;
    edit_bun2.Text :=  Bun2;

    Dong :=FieldByName('Dong').AsString;
    Ho :=FieldByName('Ho').AsString;
    BuildNM := FieldByName('Building').AsString;

    edit_dong.Text :=  Dong;
    edit_ho.Text :=  Ho;

  end;

end;

procedure TXForm2.XFormShow(Sender: TObject);
begin
 
  init_ListGrid;
  DataSetting;
  Do_GetBasic;
  do_GetJunArea;
  do_GetLandUse;      

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

    Cells[0, 0] :='C';
    Cells[1, 0] := '전유공유구분';
    Cells[2, 0] := '용도';
    Cells[3, 0] := '면적(㎡)';
    Cells[4, 0] := '동';
    Cells[5, 0] := '호';

    ColWidths[0] := 15;
    ColWidths[1] := 80;
    ColWidths[2] := 100;
    ColWidths[3] := 60;
    ColWidths[4] := 0;
    ColWidths[5] := 80;

  end;

end;


procedure TXForm2.btnOkClick(Sender: TObject);
var
   i : integer;
   ChkStatus : Boolean;
begin

  JunM := 0;
  GongM := 0;

  for i := 1 to Grid_Jun.RowCount - 1 do
  begin

    if Grid_Jun.GetCheckBoxState(0, i, ChkStatus) then
    begin

      if ChkStatus then
      Begin

        if Grid_Jun.Cells[1, i] = '전유' then
        begin

          JunM := JunM + StrToFloat(Grid_Jun.Cells[3, i]);

        end
        else if Grid_Jun.Cells[1, i] = '공용' then
        begin

          GongM := GongM + StrToFloat(Grid_Jun.Cells[3, i]);

        end;

      End;

    end;

  end;

  ModalResult := mrOk;

end;

procedure TXForm2.edit_bun1PropertiesChange(Sender: TObject);
begin

  BUN1:= edit_bun1.Text;
  BUN2:= edit_bun2.Text;
  Dong:= edit_dong.Text;
  Ho:=  edit_ho.Text;   

end;

procedure TXForm2.Do_GetBasic;
begin
//
  ADOQuery.SQL.Text := '';
  ADOQuery.Parameters.Clear;
  ADOQuery.SQL.Text  := 'EXEC SP_S_BuildList :REG, :EUB, :BUN1, :BUN2, :DONG';
  ADOQuery.Parameters.ParamByName('REG').Value := REG;
  ADOQuery.Parameters.ParamByName('EUB').Value := EUB;
  ADOQuery.Parameters.ParamByName('BUN1').Value := BUN1;
  ADOQuery.Parameters.ParamByName('BUN2').Value := BUN2;
  ADOQuery.Parameters.ParamByName('DONG').Value := Dong;
  ADOQuery.Open;

  if ADOQuery.Eof then Exit;

  edit_saedae.Text := ADOQuery.FieldByname('SeaDae').AsString;
  edit_road.Text := ADOQuery.FieldByname('Road_Location').AsString;
  edit_Gujo.Text := ADOQuery.FieldByname('Gujo_CDNm').AsString;
  edit_Floor.Text := '지하'+ADOQuery.FieldByname('Down_Floors').AsString+'지상'+ADOQuery.FieldByname('Up_Floors').AsString;
//  edit_usedate.Text := Copy(ADOQuery.FieldByname('UseDate').AsString,1,4) + '.' + Copy(ADOQuery.FieldByname('UseDate').AsString,5,2) + '.' +Copy(ADOQuery.FieldByname('UseDate').AsString,7,2) ;
  edit_usedate.Text := ADOQuery.FieldByname('UseDate').AsString;
  edit_buildarea.Text := ADOQuery.FieldByname('Build_M').AsString;
  edit_yunarea.Text := ADOQuery.FieldByname('Yeon_M').AsString;
  edit_yongrate.Text := ADOQuery.FieldByname('Yong_rate').AsString;
  edit_gunrate.Text := ADOQuery.FieldByname('Gunpeg_rate').AsString;
  BuildNM := ADOQuery.FieldByname('build_Nm').AsString;
  SAN := ADOQuery.FieldByname('SAN').AsString;
  edit_YongArea.Text := ADOQuery.FieldByname('Yong_M').AsString;
  edit_Dae.Text := ADOQuery.FieldByname('daeArea').AsString;
  edit_height.Text :=ADOQuery.FieldByname('Height').AsString;

  Edit_UpFloor.Text := ADOQuery.FieldByname('Up_Floors').AsString;
  Edit_DownFloor.Text := ADOQuery.FieldByname('Down_Floors').AsString;
  Edit_TotFloor.Text := IntToStr(StrToInt(ADOQuery.FieldByname('Up_Floors').AsString) + StrToInt(ADOQuery.FieldByname('Down_Floors').AsString));

  ADOQuery.Close;

end;

procedure TXForm2.RzBitBtn1Click(Sender: TObject);
begin
  init_ListGrid;
  Do_GetBasic;
  do_GetJunArea;
end;

procedure TXForm2.do_GetJunArea;
var
   Count : Integer;
begin
  ADOQuery.SQL.Text := '';
  ADOQuery.Parameters.Clear;
  ADOQuery.SQL.Text  := 'EXEC SP_S_BuildArea :REG, :EUB, :BUN1, :BUN2, :DONG, :Ho, :Build, :SAN';
  ADOQuery.Parameters.ParamByName('REG').Value := REG;
  ADOQuery.Parameters.ParamByName('EUB').Value := EUB;
  ADOQuery.Parameters.ParamByName('BUN1').Value := FillZero(BUN1);
  ADOQuery.Parameters.ParamByName('BUN2').Value := FillZero(BUN2);
  ADOQuery.Parameters.ParamByName('DONG').Value := Dong;
  ADOQuery.Parameters.ParamByName('Ho').Value := Ho;
  ADOQuery.Parameters.ParamByName('Build').Value := BuildNM;
  ADOQuery.Parameters.ParamByName('SAN').Value := SAN;
  ADOQuery.Open;

  if ADOQuery.Eof then Exit;
  Grid_Jun.RowCount := ADOQuery.RecordCount +1;

  for Count := 1 to Grid_Jun.RowCount-1  do
  begin
     // The flat data
     if ADOQuery.FieldByName('jungubunNm').AsString = '전유' then
     begin
       Grid_Jun.AddCheckBox(0, Count, True, True);
     end
     else
     begin
       Grid_Jun.AddCheckBox(0, Count, False, True);
     end;

     Grid_Jun.Cells[1 , Count] := ADOQuery.FieldByName('jungubunNm').AsString;
     Grid_Jun.Cells[2 , Count] := ADOQuery.FieldByName('etcyong').AsString;
     Grid_Jun.Cells[3 , Count] := ADOQuery.FieldByName('Area').AsString;
     Grid_Jun.Cells[4 , Count] := ADOQuery.FieldByName('Dong').AsString;
     Grid_Jun.Cells[5 , Count] := ADOQuery.FieldByName('Ho').AsString;

     Edit_CurrFloor.Text := ADOQuery.FieldByName('FloorNo').AsString;

     ADOQuery.Next;
  end;
  ADOQuery.Close;
end;

procedure TXForm2.do_GetLandUse;
begin
  // ShowMessage(webaddress);
    WebBrowser1.Navigate('http://m.kapanet.or.kr/rest/kras/' + webaddress);
//'http://m.kapanet.or.kr/rest/kras/11230-10600-1-0392-0005'
end;

function TXForm2.FillZero(Bun: String): String;
var
  tmpStr: String;
  StrFormat: String;
begin
  Result:=Bun;

 

  // 빈칸 제거
  tmpStr:=Trim(Bun);

 

  // 자릿수 체크
  if Length(tmpStr)>=4 then Exit;



  // 채울위치에 따라 자릿수만큼 빈칸으로 채움
   StrFormat:='%*s';



  tmpStr:=Format(StrFormat, [4, tmpStr]);


  Result:=StringReplace(tmpStr, ' ', '0', [rfReplaceAll]);
end;

procedure TXForm2.edit_dongExit(Sender: TObject);
begin
  Dong := edit_dong.Text;

end;

procedure TXForm2.edit_hoExit(Sender: TObject);
begin
  Ho := edit_ho.Text;
end;

procedure TXForm2.edit_bun2Exit(Sender: TObject);
begin
  BUN2 := edit_bun2.Text;
end;

procedure TXForm2.edit_Bun1Exit(Sender: TObject);
begin
  BUN1 := edit_Bun1.Text;
end;

end.



