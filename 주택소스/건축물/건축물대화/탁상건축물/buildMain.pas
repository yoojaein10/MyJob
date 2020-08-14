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
    RzBitBtn2: TRzBitBtn;
    Panel10: TPanel;
    Panel11: TPanel;
    Grid_Floor: TAdvStringGrid;
    edit_Dae: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edit_YongArea: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    edit_height: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;

    procedure XFormClose(Sender: TObject; var Action: TCloseAction);
    procedure init_ListGrid;
    procedure DataSetting;
    procedure Edit_Setting;
    procedure btnOkClick(Sender: TObject);
    procedure XFormShow(Sender: TObject);
    procedure edit_bun1PropertiesChange(Sender: TObject);
    procedure Do_GetBasic;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure do_GetJunArea;
    procedure do_GetLandUse;
    function FillZero(Bun: String): String;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure do_dbin(Filename: String; num: Integer);
    procedure edit_dongExit(Sender: TObject);
    procedure edit_hoExit(Sender: TObject);
    procedure edit_bun2Exit(Sender: TObject);
    procedure edit_Bun1Exit(Sender: TObject);
    procedure do_GetFloor;

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

          Alink.AddParams('UseDate', copy(edit_usedate.Text,1,4)); // 사용승인일
          ALink.AddParams('Gujo', edit_Gujo.Text);

//          Alink.AddParams('OneDong', Edit_OneDong.Text); // 1동의 층수
//          Alink.AddParams('Floor', Edit_Floor.Text); // 1동의 층수
//          Alink.AddParams('TotDong', Edit_TotDong.Text); // 총동수
//          Alink.AddParams('TotHouseCnt', Edit_TotHouseCnt.Text); // 총세대수
//
//          Alink.AddParams('GongM', FloatToStr(Edit_GongM.Value)); // 공용면적
//          Alink.AddParams('BuildPung', FloatToStr(Edit_BuildPung.Value)); // 건물면적
//          Alink.AddParams('Land', FloatToStr(Edit_Land.Value)); // 건물면적

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

    SQL.Text := ' select REG,EUB,BUN1,BUN2,Building,SAN,Dong,Ho,Building_Nm from APW_TS_Master where MasterID =:MasterID ';

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

//    if FieldByName('Building').AsString <> '' then
//    begin
//       tmp.DelimitedText := FieldByName('Building').AsString;
//
//       if tmp.Count = 2 then
//        begin
//          for I := 0 to tmp.Count - 1 do
//          begin
//            if I = 0 then Dong := StringReplace(tmp.Strings[I],'동','',[
//              rfReplaceAll])
//            else  Ho :=StringReplace(tmp.Strings[I],'호','',[rfReplaceAll]);
//          end;
//       end
//       else if tmp.Count >=3 then
//       begin
//          for I := 0 to tmp.Count - 1 do
//          begin
//            if I = 1 then Dong := StringReplace(tmp.Strings[I],'동','',[
//              rfReplaceAll])
//            else if I = 2 then  Ho :=StringReplace(tmp.Strings[I],'호','',[rfReplaceAll]);
//          end;
//       end
//       else
//       begin
//          Dong := '';
//          Ho := '';
//       end;

     Dong :=FieldByName('Dong').AsString;
     Ho :=FieldByName('Ho').AsString;
     BuildNM := FieldByName('Building_Nm').AsString;



    edit_dong.Text :=  Dong;
    edit_ho.Text :=  Ho;
  end;


end;

procedure TXForm2.XFormShow(Sender: TObject);
begin
 
  init_ListGrid;
  DataSetting;
  Do_GetBasic;
//  Edit_Setting;
  do_GetJunArea;
  do_GetFloor;
   do_GetLandUse;


end;

procedure TXForm2.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TXForm2.init_ListGrid;
begin

  Grid_Jun.ClearAll;
   Grid_Floor.ClearAll;

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

  with Grid_Floor do
  begin

    ColCount := 5;
    Cells[0, 0] :='C';
    Cells[1, 0] :='층';
    Cells[2, 0] := '주용도';
    Cells[3, 0] := '기타용도';
    Cells[4, 0] := '면적(㎡)';
     ColWidths[0] := 15;
    ColWidths[0] := 50;
    ColWidths[1] := 80;
    ColWidths[2] := 80;
    ColWidths[3] := 50;

  end;


end;



procedure TXForm2.Edit_Setting;
var
   i : integer;
begin

//  Edit_UseDate.Text := Grid_Pyo.Cells[4, 1]; // 사용승인일
//  Edit_OneDong.Text := Grid_Pyo.Cells[3, 1]; // 1동의 층수
//
//
//  if Grid_list.RowCount = 1 then
//  Begin
//
//    Edit_TotHouseCnt.Text := Grid_Pyo.Cells[2, 1]; // 총세대수
//    Edit_TotDong.Text := Grid_Pyo.Cells[3, 1]; // 1동의 층수
//
//  end
//  Else
//  Begin
//
//    Edit_TotHouseCnt.Text := Grid_list.Cells[4, 1]; // 총세대수
//    Edit_TotDong.Text := Grid_list.Cells[3, 1]; // 총동수
//
//  End;
//
//  for i := 1 to Grid_Jun.RowCount do
//  Begin
//
//    if (Grid_Jun.Cells[0, i] = '전유') then
//    begin
//
//      Edit_JunM.Value := StrToFloat(Grid_Jun.Cells[2, i]);
//
//    end
//    else if (Grid_Jun.Cells[0, i] = '공용') then
//    begin
//
//      Edit_GongM.Value := StrToFloat(Grid_Jun.Cells[2, i]);
//
//    end;
//
//  end;
//
//  Edit_BuildPung.Value := Edit_JunM.Value + Edit_GongM.Value;
//  Edit_Land.Value := StrToFloat(Grid_list.Cells[5, 1]);
//
//  if Length(Ho) = 4 then
//  begin
//
//    Edit_Floor.Text := Copy(Ho, 1, 2);
//
//  end
//  else
//  begin
//
//    Edit_Floor.Text := Copy(Ho, 1, 1);
//
//  end;



end;

procedure TXForm2.btnOkClick(Sender: TObject);
var
   Count: Integer;
   State: Boolean;
begin
   for Count := 1 to Grid_Jun.RowCount -1 do
   begin
      if Grid_Jun.GetCheckBoxState(0, Count,State) then
       begin
          if State then
           begin
                 qry.SQL.Clear;
                 qry.Parameters.Clear;
                 qry.SQL.Text := 'EXEC SP_I_APW_TS_Build :MasterID, :Floors, :Area';
                 qry.Parameters.ParamByName('MasterID').Value := MasterId;
                 qry.Parameters.ParamByName('Floors').Value := Grid_Jun.Cells[5, Count];
                 qry.Parameters.ParamByName('Area').Value := Grid_Jun.Cells[3, Count];
                 qry.ExecSQL;
           end;
       end;


   end;

    for Count := 1 to Grid_Floor.RowCount -1 do
   begin
      if Grid_Floor.GetCheckBoxState(0, Count,State) then
       begin
          if State then
           begin
                 qry.SQL.Clear;
                 qry.Parameters.Clear;
                 qry.SQL.Text := 'EXEC SP_I_APW_TS_Build :MasterID, :Floors, :Area';
                 qry.Parameters.ParamByName('MasterID').Value := MasterId;
                 qry.Parameters.ParamByName('Floors').Value := Grid_Floor.Cells[1, Count];
                 qry.Parameters.ParamByName('Area').Value := Grid_Floor.Cells[4, Count];
                 qry.ExecSQL;
           end;
       end;


   end;



  ShowMessage('적용완료');
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
  edit_usedate.Text := Copy(ADOQuery.FieldByname('UseDate').AsString,1,4) + '-' + Copy(ADOQuery.FieldByname('UseDate').AsString,5,2) + '-' +Copy(ADOQuery.FieldByname('UseDate').AsString,7,2) ;
  edit_buildarea.Text := ADOQuery.FieldByname('Build_M').AsString;
  edit_yunarea.Text := ADOQuery.FieldByname('Yeon_M').AsString;
  edit_yongrate.Text := ADOQuery.FieldByname('Yong_rate').AsString;
  edit_gunrate.Text := ADOQuery.FieldByname('Gunpeg_rate').AsString;
  BuildNM := ADOQuery.FieldByname('build_Nm').AsString;
  SAN := ADOQuery.FieldByname('SAN').AsString;
  edit_YongArea.Text := ADOQuery.FieldByname('Yong_M').AsString;
  edit_Dae.Text := ADOQuery.FieldByname('daeArea').AsString;
  edit_height.Text :=ADOQuery.FieldByname('Height').AsString;
  ADOQuery.Close;
end;

procedure TXForm2.RzBitBtn1Click(Sender: TObject);
begin
  init_ListGrid;
  Do_GetBasic;
  do_GetJunArea;
 // do_GetLandUse;
  do_GetFloor;
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


procedure TXForm2.RzBitBtn2Click(Sender: TObject);
var  
    Pt  :TPoint;     // 캡쳐할 화면의 Left, Top 좌표  
    DC  :HDC;  
    Bmp :TBitmap;  
begin  
  
  // 폼전체를 하기 위해 (0, 0) 으로 설정하였다.  
  Pt.x := 0;   // x => 폼에서의 Left 값  
  Pt.y := 0;   // y => 폼에서의 Top  값  
  
  // 폼의 좌표를 스크린 좌표로 변환한다.  
  Pt := ClientToScreen(Pt);

  // 캡쳐할 비트맵 생성
  Bmp := TBitMap.Create;  
  
  try  
     // 비트맵 크기 지정 => 폼전체를 하기위해 폼의 크기를 지정하였다.  
     Bmp.Width  := Width;  
     Bmp.Height := Height;  
     DC := GetDC(0);  
     BitBlt(Bmp.Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, DC, Pt.x , Pt.y, SRCCOPY);  
     ReleaseDC(0,DC);  
     if MasterId = '' then Exit;

     Bmp.SaveToFile('\\server\data1\DESK\'+MasterId + '-3.bmp');    // 비트맵 파일로 저장
     // Clipboard.Assign(Bmp);        // 클립보드로 복사
     do_dbin('\\server\data1\DESK\'+MasterId + '-3.bmp',3);
  finally
     Bmp.Free;
  end;
end;

procedure TXForm2.do_dbin(Filename: String; num: Integer);
begin
 qry.SQL.Clear;
  qry.SQL.Text := 'SELECT * FROM APW_IW_DESKFILE WHere Docid = :Docid';
  qry.Parameters.ParamByName('Docid').Value := MasterId;
  qry.Open;
  if qry.Eof then
  begin
     qry.SQL.Clear;
     qry.SQL.Text := 'EXEC SP_IW_I_DESKFILE :Docid, :filename, :fileupdate, :fileupman,:Kind';
     qry.Parameters.ParamByName('Docid').Value := MasterId;
     qry.Parameters.ParamByName('filename').Value := Filename;
     qry.Parameters.ParamByName('fileupdate').Value := Now;
     qry.Parameters.ParamByName('fileupman').Value := UserInfo.UserName;
     qry.Parameters.ParamByName('Kind').Value := 3;
     qry.ExecSQL;
  end
  else
  begin
    qry.SQL.Clear;
    qry.SQL.Text := 'EXEC SP_IW_U_DESKFILE :Docid, :filename, :fileupdate, :fileupman,:Kind';
    qry.Parameters.ParamByName('Docid').Value := MasterId;
    qry.Parameters.ParamByName('filename').Value :=  Filename;
    qry.Parameters.ParamByName('fileupdate').Value := Now;
    qry.Parameters.ParamByName('fileupman').Value := UserInfo.UserName;
    qry.Parameters.ParamByName('Kind').Value := 3;
    qry.ExecSQL;

  end;
  ShowMessage('저장 완료!');
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

procedure TXForm2.do_GetFloor;
var
   Count : Integer;
begin
  ADOQuery.SQL.Text := '';
  ADOQuery.Parameters.Clear;
  ADOQuery.SQL.Text  := 'EXEC SP_S_BuildFloor :REG, :EUB, :BUN1, :BUN2,  :SAN';
  ADOQuery.Parameters.ParamByName('REG').Value := REG;
  ADOQuery.Parameters.ParamByName('EUB').Value := EUB;
  ADOQuery.Parameters.ParamByName('BUN1').Value := FillZero(BUN1);
  ADOQuery.Parameters.ParamByName('BUN2').Value := FillZero(BUN2);
  ADOQuery.Parameters.ParamByName('SAN').Value := SAN;
  ADOQuery.Open;

  if ADOQuery.Eof then Exit;
  Grid_Floor.RowCount := ADOQuery.RecordCount +1;

  for Count := 1 to Grid_Floor.RowCount-1  do
  begin

     Grid_Floor.AddCheckBox(0, Count, False, True);
     Grid_Floor.Cells[1 , Count] := ADOQuery.FieldByName('Floor_NoNm').AsString;
     Grid_Floor.Cells[2 , Count] := ADOQuery.FieldByName('YongDo_CodeNm').AsString;
     Grid_Floor.Cells[3 , Count] := ADOQuery.FieldByName('Etc_YongDo').AsString;
     Grid_Floor.Cells[4 , Count] := ADOQuery.FieldByName('Area_M').AsString;

     ADOQuery.Next;
  end;
  ADOQuery.Close;
end;

end.



