unit KRasScraper;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, IdCookieManager, IdBaseComponent, IdComponent, inifiles,
  IdTCPConnection, IdTCPClient, IdHTTP, IdURI, StdCtrls, clHtmlParser
  {$IFDEF SHOW_PROGRESS}, uComProgressState{$ENDIF};

type

  TKrasScr = class(TObject)

  private
    IdHTTP1: TIdHTTP;
    clHtmlParser1: TclHtmlParser;
    IdCookieManager1: TIdCookieManager;

    FDomain, xhtml: TStringList;
    inifile, landcode, domain : string;
    strHtml, dv1, dv2, dv3, dv4, dv5: string;
    fCharSet : string;//  ( euc-kr , utf-8 )

    procedure IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);

    function ParserHtml : string;
    function GetInnerHtml(AOwner, ATag: TclHtmlTag): string;
    function GetTagSource(ATag: TclHtmlTag): string;
    Function charset : string;

  protected

  public
    constructor Create;
    destructor Destroy; override;

    function Execute( RegCode : string ) : string;

  published
  end;

implementation

{ KlasScrap }

function TKrasScr.charset: string;
begin
 case strToInt(Copy(landcode,1,2)) of
  11 : result := 'EUC-KR';
  26 : result := 'EUC-KR';
  27 : result := 'EUC-KR';
  28 : result := 'EUC-KR';
  29 : result := 'EUC-KR';
  30 : result := 'EUC-KR';
  31 : result := 'EUC-KR';
  36 : result := 'UTF-8';
  41 : result := 'EUC-KR';
  42 : result := 'EUC-KR';
  43 : result := 'UTF-8';
  44 : result := 'UTF-8';
  45 : result := 'UTF-8';
  46 : result := 'EUC-KR';
  47 : result := 'EUC-KR';
  48 : result := 'UTF-8';
  50 : result := 'EUC-KR';
 end;

end;

constructor TKrasScr.Create;
begin

  IdHTTP1 := TIdHTTP.Create(nil);
  with IdHTTP1 do begin
    Name := 'IdHTTP1';
    OnWork := IdHTTP1Work;
    OnWorkBegin := IdHTTP1WorkBegin;
    OnWorkEnd := IdHTTP1WorkEnd;
    AllowCookies := True;
    HTTPOptions := [hoForceEncodeParams];
    Request.ContentType := 'application/x-www-form-urlencoded';
    Request.Accept := 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    Request.BasicAuthentication := False;
    Request.UserAgent := 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)';
    CookieManager := IdCookieManager1;
  end;

  IdCookieManager1 := TIdCookieManager.Create(nil);
  IdCookieManager1.Name := 'IdCookieManager1';
  clHtmlParser1 := TclHtmlParser.Create(nil);

  FDomain := TStringList.Create;
  FDomain.add('11=kras.seoul.go.kr');
  FDomain.add('26=kras.busan.go.kr');
  FDomain.add('27=kras.daegu.go.kr');
  FDomain.add('28=kras.incheon.go.kr');
  FDomain.add('29=kras.gwangju.go.kr');
  FDomain.add('30=kras.daejeon.go.kr');
  FDomain.add('31=kras.ulsan.go.kr');
  FDomain.add('36=kras.sejong.go.kr');
  FDomain.add('41=kras.gg.go.kr');
  FDomain.add('42=kras.gwd.go.kr');
  FDomain.add('43=kras.cb21.net');
  FDomain.add('44=kras.chungnam.go.kr');
  FDomain.add('45=kras.jeonbuk.go.kr');
  FDomain.add('46=kras.jeonnam.go.kr');
  FDomain.add('47=kras.gb.go.kr');
  FDomain.add('48=kras.gsnd.net');
  FDomain.add('50=kras.jeju.go.kr');

end;


destructor TKrasScr.Destroy;
begin
  FDomain.Free;
  IdHTTP1.Free;
  clHtmlParser1.Free;
  IdCookieManager1.Free;
end;

function TKrasScr.Execute(RegCode: string) : string;
var
  URI: TIdURI;
  baseURL: string;
  postURL: string;
  Request: TStringList;
  fs: TStringStream;
begin
  landcode := RegCode;
  domain   := FDomain.ValueFromIndex[ FDomain.IndexOfName(Copy(landcode,1,2)) ];
  baseURL := Format('http://%s/land_info/',[domain]);
  postURL := Format('%sinfo/baseInfo/baseInfo.do?service=baseInfo&landcode=%s&gblDivName=baseInfo&scale=0&gyujae=0&label_type=false',[baseUrl, landcode]);

  // first call (get)
  URI := TIdURI.Create(baseURL);
  idhttp1.get(baseURL + 'info/baseInfo/baseInfo.do');

  fs := TStringStream.Create;
  Request := TStringList.Create;
  try
    IdHTTP1.CookieManager.AddServerCookie('landuse=landuse', URI);
    try
      IdHTTP1.Request.CharSet := charset;
      IdHTTP1.Post( postURL , Request, fs);
    except
      on E: Exception do begin
        showMessage(e.Message);
        TComProgressState.CloseProgress;
      end;
    end;
    strHtml := StringReplace(fs.datastring,'/land_info/maps/','http://' + domain + '/land_info/maps/',[rfReplaceAll,rfIgnoreCase]);

    {$IFDEF SHOW_PROGRESS}
    TComProgressState.ShowProgress('KRAS의 자료를 분석중입니다.', 15);
    {$ENDIF}

    Result := ParserHtml;
    // image save....
    idhttp1.get('http://m.kapanet.or.kr/rest/kras/use/' + RegCode);

  finally
    URI.Free;
    fs.Free;
    Request.Free;
    {$IFDEF SHOW_PROGRESS}
    TComProgressState.CloseProgress;
    {$ENDIF}
  end;

end;

procedure TKrasScr.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
{$IFDEF SHOW_PROGRESS}
  TComProgressState.ShowProgress('KRAS의 자료를 분석중입니다.', AWorkCount);
{$ENDIF}
end;

procedure TKrasScr.IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
{$IFDEF SHOW_PROGRESS}
  TComProgressState.ShowProgress('KRAS의 자료를 분석중입니다.', 15);
{$ENDIF}
end;

procedure TKrasScr.IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
//
end;

function TKrasScr.ParserHtml : string;
var
  i: Integer;
  tag: TclHtmlTag;
begin

  clHtmlParser1.IncludeClosingTags := True;
  clHtmlParser1.ParseMethod := pmAll;
  clHtmlParser1.Parse(strHtml);

  for i := 0 to clHtmlParser1.Tags.Count - 1 do begin
    tag := clHtmlParser1.Tags[i];
    if (tag.Name = 'div') then begin
      if (tag.AttributeValue('id') = 't01') then
        dv1 := GetInnerHtml(tag.Owner, tag);
      if (tag.AttributeValue('id') = 't02') then
        dv2 := GetInnerHtml(tag.Owner, tag);
      if (tag.AttributeValue('id') = 't03') then
        dv3 := GetInnerHtml(tag.Owner, tag);
      if (tag.AttributeValue('id') = 't04') then
        dv4 := GetInnerHtml(tag.Owner, tag);
      if (tag.AttributeValue('id') = 't05') then
        dv5 := GetInnerHtml(tag.Owner, tag);
    end;
  end;

  result := 'c:\temp\kras_' + landcode + '.html';
  ForceDirectories('c:\temp');

  xhtml := TStringList.Create;
  try
    xhtml.Add('<html>');
    xhtml.Add('<head>');
    xhtml.Add('<title>	부동산정보 통합 열람 | KAPA </title>');
    xhtml.Add('<link rel="stylesheet" type="text/css" href="http://m.kapanet.or.kr/rest/kras/default.css"/>');
    xhtml.Add('</head>');
    xhtml.Add('<body>');
    xhtml.Add('<div id="wrap">');
    xhtml.Add('<div class="tit"> 부동산정보 통합 열람 </div>');
    xhtml.Add('<H2>▣ 기 본 정 보</H2>');
    xhtml.Add(dv1);
    xhtml.Add('<H2>▣ 토 지 대 장</H2>');
    xhtml.Add(dv2);
    xhtml.Add('<H2>▣ 건 축 물 대 장</H2>');
    xhtml.Add(dv3);
    xhtml.Add('<H2>▣ 토 지 이 용 계 획</H2>');
    xhtml.Add(dv4);
    xhtml.Add('<H2>▣ 개 별 공 시 지 가</H2>');
    xhtml.Add(dv5);
    xhtml.Add('<br><br><b>본 자료는 http://' + domain + '에서 실시간으로 자료를 수집, 재배열하여 제공하고 있습니다. (' + DateTimeToStr(now)  + ')</b><br><br>' );

    xhtml.Add('</div>');
    xhtml.Add('</body>');
    xhtml.Add('</html>');
    try
      xhtml.SaveToFile(result);
    except

    end;
  finally
    xhtml.free;
  end;

end;


function TKrasScr.GetInnerHtml(AOwner, ATag: TclHtmlTag): string;
begin
  if (ATag.NextTag <> nil) and (ATag.NextTag.Owner <> AOwner) then begin
    if (AOwner <> ATag.Owner) then begin
      Result := GetTagSource(ATag);
    end
    else begin
      Result := '';
    end;

    Result := Result + GetInnerHtml(AOwner, ATag.NextTag);
  end
  else begin
    Result := GetTagSource(ATag);
  end;

end;


function TKrasScr.GetTagSource(ATag: TclHtmlTag): string;
begin
  if ATag.IsClosingTag then begin
    Result := '</' + ATag.Name + '>';
  end
  else if ATag.IsText then begin
    Result := ATag.TagSource;
  end
  else begin
    Result := '<' + ATag.TagSource + '>';
  end;

end;

end.

