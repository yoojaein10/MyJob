unit DESKJUNWEB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, SHDocVw,dxLink, shellapi,comobj,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, xmldom,
  XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP ;


type
  TForm6 = class(TForm)
    Panel1: TPanel;
    btn_Print: TButton;
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel2: TPanel;
    pan_gen: TScrollBox;
    edit_daeji: TcxTextEdit;
    cxLabel6: TcxLabel;
    edit_daejiarea: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edit_jibun: TcxTextEdit;
    edit_yunarea: TcxTextEdit;
    cxLabel3: TcxLabel;
    edit_namenum: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edit_gunpe: TcxTextEdit;
    cxLabel7: TcxLabel;
    edit_yong: TcxTextEdit;
    edit_totalHo: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edit_juyong: TcxTextEdit;
    cxLabel10: TcxLabel;
    edit_jogu: TcxTextEdit;
    edit_hudata: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    edit_top: TcxTextEdit;
    cxLabel13: TcxLabel;
    edit_floor: TcxTextEdit;
    edit_usedate: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edit_matingji: TcxTextEdit;
    ScrollBox2: TScrollBox;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    cxLabel16: TcxLabel;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure do_show(ALink: TXLink);
    procedure do_showData(ALink: TXLink);

    procedure do_getTotalgata;
  end;

var
  Form6: TForm6;
  // web : TWebBrowser;

implementation

{$R *.dfm}

{ TForm6 }

procedure TForm6.do_show(ALink: TXLink);
var
  Form : TForm6;
begin
//   if not Assigned(Form) then
//      Form := TForm5.Create(Application);


  try
    Form := TForm6.Create(Application);
    Form.do_showData(ALink);
  // Form.Visible := False;
  //  Form.getMaster(MasterID);
    Form.Show;
  finally
  // FreeAndNil(Form);
  end;
end;

procedure TForm6.do_showData(ALink: TXLink);
var
  webjuso: String;
  IE: Variant;
  WinHanlde: HWnd;
//  web: TWebBrowser;
begin
 // web := TWebBrowser.Create(nil);
 // web := TWebBrowser.Create(Self);
  webjuso := '';
  //WebBrowser1.CleanupInstance;

  webjuso := 'http://m.kapanet.or.kr/rest/kras/';
  webjuso := webjuso +  ALink.ParamByString('REG');
  webjuso := webjuso +  ALink.ParamByString('EUB');
  webjuso := webjuso +  ALink.ParamByString('SAN');
  webjuso := webjuso + ALink.ParamByString('BUN1');
  if (ALink.ParamByString('BUN2') ='') or (ALink.ParamByString('BUN2') = '0') then
    webjuso := webjuso + '0000'
  else webjuso := webjuso +  ALink.ParamByString('BUN2');
 // webjuso := webjuso + '&gblDivName=baseInfo&scale=0&gyujae=0&label_type=false#t03-tab';
  Memo1.Text := webjuso;
  Edit1.Text :=  ALink.ParamByString('REG');
  Edit2.Text :=  ALink.ParamByString('EUB');
  Edit3.Text :=  ALink.ParamByString('Bun1');
  Edit4.Text :=  ALink.ParamByString('BUN2');
  Edit5.Text :=  ALink.ParamByString('SAN');

   //  shellexecute(Application.Handle, 'open', 'iexplore.exe',PChar(webjuso) , nil, SW_SHOWNORMAL) ;
   //  WebBrowser1.Navigate('about:blank');
  // WebBrowser1.Navigate(webjuso);
   if (VarIsEmpty(IE)) then 
  begin 
    IE         := CreateOleObject('InternetExplorer.Application');
    IE.Visible := True;
    IE.Width := 800;
    IE.Height := 1000;
    IE.Navigate(webjuso);
  end
  else 
  begin
    WinHanlde := FindWindow('IEFrame', nil);
    if (0 <> WinHanlde) then
    begin 
      IE.Navigate(webjuso);
      IE.Width := 800;
      IE.Height := 1000;
      SetForegroundWindow(WinHanlde);
    end
    else
      ShowMessage('Can''t open IE !'); 
  end;


end;


procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //web.Free;


  Action := caFree;
end;

procedure TForm6.Button1Click(Sender: TObject);
var
  IE: Variant;
  WinHanlde: HWnd;
begin
  if (VarIsEmpty(IE)) then
  begin 
    IE         := CreateOleObject('InternetExplorer.Application');
    IE.Visible := True;
    IE.Navigate(Memo1.Text);
  end
  else 
  begin 
    WinHanlde := FindWindow('IEFrame', nil); 
    if (0 <> WinHanlde) then
    begin
      IE.Navigate(Memo1.Text);
      SetForegroundWindow(WinHanlde); 
    end 
    else
      ShowMessage('Can''t open IE !'); 
  end;
 // FreeAndNil(IE);
  do_getTotalgata;

 // WebBrowser1.Navigate(Memo1.Text);
end;

procedure TForm6.do_getTotalgata;
var

  Url , code ,searchword , searchoption : AnsiString ;

  Data    : TStringStream;
  DResult : TStringStream;
  Indy    : TIdHTTP;

  OuterRoot,EntryNode:IXmlNode;
  i,j:Integer;
begin
  memo1.clear;
  ShowMessage('test1');
  Data := TStringStream.Create('');
  DResult := TStringStream.Create('');
 // Indy := TIdHttp.Create(nil);
  Try
    ShowMessage('test2');
    // Indy를 이용해서 get
    //Indy.Request.ContentType := 'application/x-www-form-urlencoded'; // post방식
    IdHTTP1.Request.ContentType := 'application/json';

    code :=  'Bgaqu4%2BfaZ%2Bhq8Lq5t69%2BT%2FGO6j1HjKUOdBYGJM6egnkH4GATZ%2Fwx%2FjS6C7NA0YNw%2F5S1HwPPNBpTdI4nP%2BNVw%3D%3D';

    Url:= 'http://apis.data.go.kr/1611000/BldRgstService/getBrRecapTitleInfo?sigunguCd='+Edit1.Text+'&bjdongCd='+Edit2.Text+'&bun='+Edit3.Text+'&ji='+Edit4.Text+'&ServiceKey='+code;
    Memo1.Lines.Add(Url);
    IdHTTP1.Get(Url,DResult);

   XMLDocument1.LoadFromStream(DResult);

   XMLDocument1.Active:=True;

    // stream 된 내용 파일 생성합니다.
    XMLDocument1.SaveToFile('C:\Users\ilwoo\Desktop\1.xml');


  OuterRoot := xmldocument1.DocumentElement;
  for i := 0 to OuterRoot.ChildNodes.Count -1 do
  begin
    Memo1.Lines.Add(OuterRoot.ChildNodes[i].NodeName);

  end;



  finally
    // 메모리에서 해제
    Data.Free;
    DResult.Free;
    //Indy.Free;

  end;

end;


end.
