unit KHFC_Protocol;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, StdCtrls, DB, MemDS, math,
  DBAccess, Forms, MSAccess, dialogs, ScktComp, StrUtils;

type
  TErrorGubun = (egNone         // 정상(0000)
               , egReceipt      // 기접수(0001)
               , egDbSave       // 저장오류(0002)
               , egReciveData   // 받은데이타오류(0003)
               , egNotExist     // 해당건존재치않음(0004)
               , egSendFinish   // 발송완료(0005)
               , egNotSend);    // 미발송건(0006)
// 연금
  TPHFHead = packed record // 헤더사이즈 200byte
    TRXCD         : array[0..6] of Char;    // HFSAMCH - 삼창
    job_type      : array[0..1] of Char;    // 업무구분 코드 "DB"
    send_type     : array[0..1] of Char;    // 00 - 주택공사, 01 - 삼창
    req_type      : array[0..3] of Char;    // 전문종별 코드
    job_code      : array[0..2] of Char;    // 업무구분 코드 100 - 정식, 200 - 약식, 300 - 탁상
    response_code : array[0..2] of Char;    // 응답코드 (수행결과이며 정상인 경우 '0000' 기타 오류인 경우 오류 코드)
    error_msg     : array[0..49] of Char;   // ERROR-메시지

    app_req_no    : array[0..9] of Char;    // 감정의뢰번호
    app_req_time  : array[0..13] of Char;   // 감정의뢰관리시간
    mgr_code      : array[0..9] of Char;    // 감정기관전문관리번호
    mgr_send_time : array[0..13] of Char;   // 감정기관전문관리시간
    mgr_memo      : array[0..9] of Char;    // 감정기관정의용
    bank_code     : array[0..9] of Char;    // 은행정의용
    fulltext_len  : array[0..4] of Char;    // 전문 전체길이 (전체공통부를 포함한 전체 전문 길이)
  end;

  TPHFBody = packed record // 사이즈 1000byte
    DAMBO_NO        : array[0..9] of Char;    // 의뢰번호
    CHUJUNGGAAK     : array[0..14] of Char;   // 요청가액(추정가액)
    GAM_MOK         : array[0..0] of Char;    // 1:담보 9:기타
    MUL_JONG        : array[0..0] of Char;    // 물건종류- 1:아파트, 2:연립, 3:다세대 4:단독주택,5:노인복지주택(실버주택) 9:기타
    SOJAE_ZIP_CODE  : array[0..5] of Char;    // 의뢰 소재지우편코드(X)
    SOJAE_ADDR      : array[0..49] of Char;   // 의뢰 소재지
    SOJAE_JIBUN     : array[0..99] of Char;   // 의뢰 소재지 지번이하 주소
    CHAEMU_NAME     : array[0..29] of Char;   // 채무자성명
    CHAEMU_TELL1    : array[0..14] of Char;   // 채무자 전화번호1
    CHAEMU_TELL2    : array[0..14] of Char;   // 채무자 전화번호2
    CHAEMU_ADDR     : array[0..49] of Char;   // 채무자 소재지
    CHAEMU_BUNJI    : array[0..99] of Char;   // 채무자 소재지 지번이하 주소
    GAM_EUI_JUM     : array[0..2] of Char;    // 영업점코드
    GAM_EUI_NM      : array[0..29] of Char;   // 영업점명
    GAM_EUI_ADDR    : array[0..99] of Char;   // 영업점주소
    GAM_EUI_JA      : array[0..11] of Char;   // 영업점 담당자명
    GAM_EUI_TEL     : array[0..14] of Char;   // 영업점 전화번호
    TAX_REGISNO1    : array[0..12] of Char;   // 세금계산서주민등록번호
    TAX_PRESIDENT   : array[0..29] of Char;   // 세금계산서 대표자 성명
    TAX_ADDNAME     : array[0..99] of Char;   // 세금계산서 사업장 소재지
    GAM_KOR         : array[0..0] of Char;    // 1: 국문, 2: 영문
    GAM_GONGBU      : array[0..0] of Char;    // 1: 공부요청, 2: 공부미요청
    DTL_BIGO        : array[0..99] of Char;   // 감정기관전달사항(비고)
    LAWCO_DONG_CD   : array[0..9] of Char;    // 법정동코드
    TAX_EMAIL       : array[0..49] of Char;   // 세금계산서 E-MAIL
    TAX_TELL        : array[0..14] of Char;   // 세금계산서 휴대전화
    SOJAE_GUNMULNM  : array[0..39] of Char;   // 건물명
    SOJAE_DONGNO    : array[0..19] of Char;   // 동
    SOJAE_HONO      : array[0..19] of Char;   // 호
  end;
  
// 보금자리
  TCom = packed record // 헤더사이즈 680byte --이부분은 공사에서 정해주는 전물 폼으로 맞추면됩니다.
    header        : array[0..8] of Char;    // HEADER ("HFTOPAPPR")
    org_code      : array[0..3] of Char;    // 기관코드 (기관종류(1)+기관코드(3), (코드표1)참조)
    jiro_code     : array[0..6] of Char;    // 지로코드 (기관의 지로코드 7자리, 한국주택금융공사 지로코드 : 2710149)
    mgr_code      : array[0..5] of Char;    // 전문관리번호 (기관별 거래일자별 일련번호, 응답[0101]시 요청전문[0100]과 동일일련번호 셋팅)
    bub_info      : array[0..19] of Char;   // 감정기관 정보
    send_time     : array[0..13] of Char;   // 전문전송시각 (일자8(YYYYMMDD)+시각6(hhmmss))
    fulltext_code : array[0..3] of Char;    // 전문코드 (주택금융공사 접수용 요청:0100, 응답:0101) (우리 발송용 요청:0110, 응답:0111)
    trade_code    : array[0..3] of Char;    // 거래코드 ('0000' 고정값)
    response_code : array[0..3] of Char;    // 응답코드 (수행결과이며 정상인 경우 '0000' 기타 오류인 경우 오류 코드)
    error_line    : array[0..3] of Char;    // ERROR-LINE
    error_msg1    : array[0..299] of Char;  // ERROR-메시지1 (에러시 전산개발용 메시지 (에러발생 프로그램, 시스템 오류 등을 포함))
    error_msg2    : array[0..299] of Char;  // ERROR-메시지2 (에러시 고객/지사담당자용 메시지 (에러발생시 필수))
    fulltext_len  : array[0..3] of Char;    // 전문 전체길이 (전체공통부를 포함한 전체 전문 길이)
  end;

  TComD = packed record // 디테일사이즈 1320byte - 공사에서 보내는 접수 전문 Detail 부분
    co_prev_insp_no       : array[0..9] of Char;    // 의뢰번호 (사전심사번호) -- 공사키
    seq                   : array[0..4] of Char;    // 의뢰순번 (공사고유)     -- 공사키
    cancel_yn             : array[0..0] of Char;    // 취소여부 (Y:의뢰취소요청, N:의뢰요청)
    org_nm                : array[0..29] of Char;   // 기관명(은행명) ('한국주택금융공사')  -- 한글
    duty_brcd_nm          : array[0..39] of Char;   // 의뢰부점명 -- 한글
    duty_emp_nm           : array[0..29] of Char;   // 의뢰자명   -- 한글
    duty_tel_no           : array[0..19] of Char;   // 의뢰자연락처 (감정평가의뢰 전문 발송을 실행한 컨텍센터 또는 지사 담당자 연락처)
    cust_no               : array[0..8] of Char;    // 주택금융공사 고객번호
    applcant_nm           : array[0..49] of Char;   // 신청인성명 -- 한글
    applcant_tel_no       : array[0..11] of Char;   // 신청인전화번호
    applcant_mobile       : array[0..11] of Char;   // 신청인핸드폰
    applcant_zip_cd       : array[0..5] of Char;    // 신청인우편번호
    mort_addr_kind_dvcd   : array[0..0] of Char;    // 물건 주소 구분 코드 (1:지번, 2:도로명)
    mort_zip_cd           : array[0..5] of Char;    // 물건우편번호
    mort_zipaddr          : array[0..99] of Char;   // 물건우편번호주소 (물건구분코드가 1인 경우 셋팅)  -- 한글
    mort_dtladdr          : array[0..99] of Char;   // 물건상세주소 (물건구분코드가 1인 경우 셋팅)      -- 한글
    lawco_dong_cd         : array[0..9] of Char;    // 법정동코드
    mort_st_stnm_addr_cd  : array[0..24] of Char;   // 물건 도로명주소 고유번호 (물건구분코드가 2인 경우 셋팅 (추후 물건주소에 도로명주소 도입시 사용 예정))
    mort_st_dtladdr       : array[0..99] of Char;   // 물건 도로명주소 상세주소 (물건구분코드가 2인 경우 셋팅 (추후 물건주소에 도로명주소 도입시 사용 예정))  -- 한글
    own_pers_nm           : array[0..49] of Char;   // 소유자성명 -- 한글
    house_dvcd            : array[0..2] of Char;    // 주택유형코드 (코드표2) 참조
    mort_rsrch_kind_cd    : array[0..0] of Char;    // 담보물조사종류코드 (코드표4) 참조
    expect_judge_amt      : array[0..10] of Char;   // 예상감정금액(신청인희망금액)
    fee_brd_cd            : array[0..1] of Char;    // 수수료고객부담여부 (코드표3) 참조
    req_dy                : array[0..7] of Char;    // 신청일자(등록일자) (의뢰전 기본항목 등록일자 (컨텍센터 의뢰시는 상담시작일, 지사의뢰시는 심사시작일))
    repot_dlv_hope_dy     : array[0..7] of Char;    // 보고서교부희망일자 (빈값)
    prod_cd_nm            : array[0..9] of Char;    // 대출종류명 (상품코드 변환값) -- 한글
    req_amt               : array[0..10] of Char;   // 심ㄴ청금액
    hold_term_cd_nm       : array[0..3] of Char;    // 거치기간 (거치기간 코드 변환값)  -- 한글
    tot_room_cnt          : array[0..1] of Char;    // 총방수
    rent_room_cnt         : array[0..1] of Char;    // 임대방수
    rent_amt              : array[0..10] of Char;   // 임대보증금
    usub_ord_bond_amt     : array[0..10] of Char;   // 선순위채권금액
    prod_grp_cd           : array[0..1] of Char;    // 상품그룹구분코드
    req_dummy             : array[0..616] of Char;  // 의뢰전문더미
  end;

  TAppmain = packed record //보금자리 송신마스터 -공사측에 보내줘야하는 마스터 자료입니다(공사에서정의해줍니다).
    co_prev_insp_no       : array[0..9] of Char;    // 의뢰번호 (사전심사번호) -- 공사키
    seq                   : array[0..4] of Char;    // 의뢰순번 (공사고유)     -- 공사키
    cancel_yn             : array[0..0] of Char;    // 취소여부 (Y:의뢰취소요청, N:의뢰요청)
    acpt_no               : array[0..19] of Char;   // 접수번호
    acpt_dy               : array[0..7] of Char;    // 접수일자
    judge_assess_sht_no   : array[0..49] of Char;   // 감정평가서번호
    judge_assess_dy       : array[0..7] of Char;    // 감정평가일자
    judge_assess_co_nm    : array[0..49] of Char;   // 감정평가사명 -- 한글
    cust_no               : array[0..8] of Char;    // 주택금융공사 고객번호
    applcant_nm           : array[0..49] of Char;   // 신청인성명 -- 한글
    mort_addr_kind_dvcd   : array[0..0] of Char;    // 물건 주소 구분 코드 (1:지번, 2:도로명)
    mort_zip_cd           : array[0..5] of Char;    // 물건우편번호
    mort_zipaddr          : array[0..99] of Char;   // 물건우편번호주소 (물건구분코드가 1인 경우 셋팅)  -- 한글
    mort_dtladdr          : array[0..99] of Char;   // 물건상세주소 (물건구분코드가 1인 경우 셋팅)      -- 한글
    lawco_dong_cd         : array[0..9] of Char;    // 법정동코드
    mort_st_stnm_addr_cd  : array[0..24] of Char;   // 물건 도로명주소 고유번호 (물건구분코드가 2인 경우 셋팅 (추후 물건주소에 도로명주소 도입시 사용 예정))
    mort_st_dtladdr       : array[0..99] of Char;   // 물건 도로명주소 상세주소 (물건구분코드가 2인 경우 셋팅 (추후 물건주소에 도로명주소 도입시 사용 예정))  -- 한글
    own_pers_nm           : array[0..49] of Char;   // 소유자성명 -- 한글
    house_dvcd            : array[0..2] of Char;    // 주택유형코드 (코드표2) 참조
    mort_rsrch_kind_cd    : array[0..0] of Char;    // 담보물조사종류코드 (코드표4) 참조
    mort_pry_amt          : array[0..10] of Char;   // 담보기초가액
    judge_assess_amt      : array[0..10] of Char;   // 감정평가금액(총담보평가액)
    house_mort_assess_amt : array[0..10] of Char;   // 주택담보평가금액
    store_mort_assess_amt : array[0..10] of Char;   // 상가담보평가금액 (복합용도(150)일 경우 필수)
    lnd_judge_amt         : array[0..10] of Char;   // 토지감정가 (다세대(130)일경우 필수
    divs_area             : array[0..6] of Char;    // 전용면적 ((단위:㎡) Numer(5,2)*100의 정수부)
    etc_apply_area        : array[0..6] of Char;    // 기타전용면적(주택부분 외) ((단위:㎡) Numer(5,2)*100의 정수부, 복합용도(150)일 경우 필수)
    sell_area             : array[0..6] of Char;    // 분양면적 ((단위:㎡) Numer(5,2)*100의 정수부)
    sell_ph               : array[0..6] of Char;    // 분양평형 ((단위:㎡) Numer(5,2)*100의 정수부)
    sell_room_cnt         : array[0..2] of Char;    // 분양당시방수
    use_apprv_yr          : array[0..3] of Char;    // 사용승인년도
    lrgt_poss             : array[0..6] of Char;    // 대지권지분 ((단위:㎡) Numer(5,2)*100의 정수부)
    main_struct           : array[0..199] of Char;  // 주요구조 -- 한글
    bldng_tot_layer       : array[0..2] of Char;    // 1동의총층수
    heat_type             : array[0..49] of Char;   // 난방방식 -- 한글
    tot_dong_cnt          : array[0..2] of Char;    // 단지내총동수
    tot_house_cnt         : array[0..4] of Char;    // 총세대수
    sale_upper_amt        : array[0..10] of Char;   // 매매상한가
    sale_lower_amt        : array[0..10] of Char;   // 매매하한가
    cmplt_test_dy         : array[0..7] of Char;    // 준공검사일
    sell_contrct_dy       : array[0..7] of Char;    // 분양계약일
    judge_assess_opn      : array[0..499] of Char;  // 감정평가의견 -- 한글
    inqry_rslt_exist_yn   : array[0..0] of Char;    // 조회결과존재유무
    bsrch_pnttm           : array[0..7] of Char;    // 조사시점
    make_dy               : array[0..7] of Char;    // 작성일자
    base_fee_amt          : array[0..10] of char;   // 기초수수료
    travel_fee_amt        : array[0..10] of char;   // 출장여비
    special_servc_amt     : array[0..10] of char;   // 특별용역비
    sale_amt              : array[0..10] of char;   // 매출금액
    addvalue_fee          : array[0..10] of char;   // 부가가치세
    tot_sale_amt          : array[0..10] of char;   // 매출총액
    rslt_dummy            : array[0..733] of Char;  // 결과수신전문더미
  end;
 // 보금자리 감정평가 진행상태
 TStatus = packed record
    co_prev_insp_no        : array[0..9] of Char;    //사전심사번호
    assess_seq             : array[0..2] of Char;    //감정진행상태
    assess_seq_dt          : array[0..13] of Char;   //감정진행상태 업데이트 일시
    duty_brcd_nm           : array[0..39] of Char;   //지사
    duty_emp_nm            : array[0..29] of Char;   //사원명
    duty_tel_no            : array[0..19] of Char;   //사원전화번호
    assess_nm              : array[0..29] of char;   //감정평가기관 담당자명
    assess_tel             : array[0..29] of char;   //감정평가기관 담당 전화번호
    progress_note          : array[0..299] of char;  //감정평가 특이사항
    re_org_code            : array[0..3] of char;    //배정감정평가코드
    rslt_dummy             : array[0..898] of Char;  //결과수신전문더미
  end;

  TKHFC_Parser = class(TObject)
  private
    FPrimaryKey : string;
    FAppmain    : Tappmain;

    function MakeTotalLength(rTotalLength : integer): string;

    function StrZero(Value: string; nSize: Integer): string;
    function PadR(Value: string; ALength: Integer): string;

    //function ToDoubleByte(str : String) : String; // 전각문자로 변환
    //function ToSingleByte(str : String) : String;
    function GetData100(oQry: TMSQuery): string; // 정식감정
    function GetData200(oQry: TMSQuery): string; // 약식
    function GetData300(oQry: TMSQuery): string; // 탁상
  protected

  public
    FType     : String;
    FCom      : TCom;     // 보금자리
    FComD     : TComD;
    FPHFHead  : TPHFHead; // 연금
    FPHFBody  : TPHFBody;
    FMasterID : String;   // 통플 발송에서 전송받은 MasterID
    CancelStr : String;   // 통플 반려/반송에서 보낸거면 Y, 발송에서 보낸거면 N
    FSEQ      : String;   // 통플 발송에서 전송받은 Seq
    FDAMBO_NO : String;   // 연금에서 사용하는 담보번호

    FHead     : String;
    FBody     : String;

    FStatus   : TStatus;
    FStatusCd : String;
    FStatusDt : String;
    FStatusUsr: String;
    FStatusNo : String;

    constructor Create(const AFullText: string; AFromAPWorks : Boolean = False);
    destructor Destroy; override;

    procedure RunKHFParser(const AFullText: string; AFromAPWorks : Boolean); // 보금자리
    procedure RunPHFParser(const AFullText: string; AFromAPWorks: Boolean); // 연금
    function InsertAppmain(oQry : TMSQuery) : TErrorGubun;  // 공사에서 수신한 정보로 접수
    function InsertPHFmain(oQry: TMSQuery): TErrorGubun;
    function updatePHFmain(oQry: TMSQuery): TErrorGubun;

    function Cancel(oQry : TMSQuery): TErrorGubun;  // 취소
    function GetErrorMessage(const AErrorGubun: TErrorGubun): string;
    function MakesResponseHeader(const AErrorGubun: TErrorGubun; AResponse: string): string;  // 공사에서 수신한 전문에 대한 응답 전문 헤더 작성

    procedure ErrorLog(const ADambo_no, Afunction_Nm, APacket, AErrorMsg: string);
    procedure SendDataStatus(var strHeader : string; var strDetail : string);                                   // 공사로 전문 발송
    procedure SendData(var strHeader : string; var strDetail : string);                                   // 공사로 전문 발송
    procedure SendPHFData(var strHeader, strDetail: string);
  end;

implementation

uses Main, Data,userData;

function DecimalToStr(src : string; nLen :integer):string;overload;
var
  s : string;
begin
  s := Format('%f', [StrToFloat(src)]);
  s := StringReplace(s, '.', '', [rfReplaceAll]);
  Result := RightStr(StringOfChar('0',nLen)+s, nLen);
end;

function DecimalToStr(src : Double; nLen :integer):string;overload;
var
  s : string;
begin
  s := Format('%f', [src]);
  s := StringReplace(s, '.', '', [rfReplaceAll]);
  Result := RightStr(StringOfChar('0',nLen)+s, nLen);
end;

function CurrencyToStr(src : string; nLen :integer):string;
begin
  Result := RightStr(StringOfChar('0',nLen)+src, nLen);
end;

function Chr1310Check(RPacket : string) : string; //Chr(13) + chr(10) 이 들어있는 경우가 있음.
var
  n13, n10 : integer;
begin
  n13 := 0; n10 := 0;

  repeat
    n13 := pos(chr(13),RPacket);
    if n13 <> 0 then begin
      delete(RPacket,n13,1);
    end;

    n10 := pos(chr(10),RPacket);
    if n10 <> 0 then begin
      delete(RPacket,n10,1);
    end;
  until (n13 = 0) and (n10 = 0);

  result := RPacket;
end;


{ TKHFC_Parser }

constructor TKHFC_Parser.Create(const AFullText: string; AFromAPWorks : Boolean = False);
begin
  if G_Type = 'KHF' then
    RunKHFParser(AFullText, AFromAPWorks)
  else
   begin
    RunPHFParser(AFullText, AFromAPWorks);

   end;
end;

destructor TKHFC_Parser.Destroy;
begin
  inherited;
end;

// 공사에서 수신한 보금자리 정보로 접수
function TKHFC_Parser.InsertAppmain(oQry : TMSQuery) : TErrorGubun;
var
  Office, GUID : String;
  msid : String;

begin
  Result := egDbSave; // 저장오류
  FillChar(FAppmain, sizeof(TAppmain), #0);

  // 기존 접수건 있는지 체크
  with oQry do
  begin
    Close;
    SQL.Text := 'select * from APW_DH_HF_LINK where co_prev_insp_no = :co_prev_insp_no and seq = :seq ';
    ParamByName('co_prev_insp_no').AsString   := FComD.co_prev_insp_no;
    ParamByName('seq').AsString               := FComD.seq;
    try
      Open;
      if RecordCount > 0 then
      begin
        Result := egReceipt;  // 기접수건
        Exit;
      end;
    except
      on E:Exception do
      begin
        ErrorLog('마스터 데이타 검색중 에러가 발생하였습니다!', 'TKHFC_Parser.InsertAppmain', '', E.Message);
        Exit;
      end;
    end;
  end;

  with oQry do
  begin
    Close;
    SQL.Text := 'EXEC SP_KAPA_KHF_IU_SYNC :GUBUN, :GUBUN_CODE, :SA_NO, :ADDR';
    SQL.Text := SQL.Text + ', :CUSTNAME, :CUSTCHARGE, :CUSTDOCID, :REQUESTDATE';
    SQL.Text := SQL.Text + ', :TITLE, :BIGO, :GAM_CANCEL';
    SQL.Text := SQL.Text + ', :CustPhone, :OwnerName, :Debtor, :DebtrPhone, :DebtorHP';
    SQL.Text := SQL.Text + ', :Mgr_Code, :co_prev_insp_no, :seq';
    SQL.Text := SQL.Text + ', :cancel_yn, :cust_no, :applcant_nm, :mort_addr_kind_dvcd';
    SQL.Text := SQL.Text + ', :mort_zip_cd, :mort_zipaddr, :mort_dtladdr, :lawco_dong_cd';
    SQL.Text := SQL.Text + ', :mort_st_stnm_addr_cd, :mort_st_dtladdr, :own_pers_nm, :house_dvcd';
    SQL.Text := SQL.Text + ', :mort_rsrch_kind_cd, :org_nm, :duty_brcd_nm, :duty_emp_nm';
    SQL.Text := SQL.Text + ', :duty_tel_no, :applcant_tel_no, :applcant_mobile';
    SQL.Text := SQL.Text + ', :applcant_zip_cd, :expect_judge_amt, :fee_brd_cd';
    SQL.Text := SQL.Text + ', :req_dy, :repot_dlv_hope_dy, :prod_cd_nm';
    SQL.Text := SQL.Text + ', :req_amt, :hold_term_cd_nm, :tot_room_cnt';
    SQL.Text := SQL.Text + ', :rent_room_cnt, :rent_amt, :usub_ord_bond_amt, :prod_grp_cd';
    try
      if FComD.mort_rsrch_kind_cd = '1' then      // 약식감정
        ParamByName('GUBUN').AsString := '9'
      else if FComD.mort_rsrch_kind_cd = '2' then // 정식감정
        ParamByName('GUBUN').AsString := '1'
      else
        Exit; // 에러

      ParamByName('GUBUN_CODE').AsString  := 'KHF'; // 한국주택금융공사 보금자리
      ParamByName('SA_NO').AsString       := Trim(FCom.mgr_code);
      ParamByName('ADDR').AsString        := Trim(FComD.mort_zipaddr) + ' ' + Trim(FComD.mort_dtladdr);

      ParamByName('CUSTNAME').AsString      := Trim(FComD.org_nm) + ' ' + Trim(FComD.duty_brcd_nm);
      ParamByName('CUSTCHARGE').AsString    := Trim(FComD.duty_emp_nm);
      ParamByName('CUSTDOCID').AsString     := Trim(FComD.co_prev_insp_no) + Trim(FComD.seq);
      ParamByName('REQUESTDATE').AsDateTime := Now;
      ParamByName('TITLE').AsString         := Trim(FComD.mort_zipaddr) + ' ' + Trim(FComD.mort_dtladdr);
      ParamByName('BIGO').AsString          := Trim(FComD.mort_zipaddr) + ' ' + Trim(FComD.mort_dtladdr);
      ParamByName('GAM_CANCEL').AsString    := 'N'; // Y: 의뢰취소요청, N: 의뢰요청, R:결과재요청

      ParamByName('CustPhone').AsString     := Trim(FComD.duty_tel_no);
      ParamByName('OwnerName').AsString     := Trim(FComD.own_pers_nm);
      ParamByName('Debtor').AsString        := Trim(FComD.applcant_nm);
      ParamByName('DebtrPhone').AsString    := Trim(FComD.applcant_tel_no);
      ParamByName('DebtorHP').AsString      := Trim(FComD.applcant_mobile);

      ParamByName('Mgr_Code').AsString              := Trim(FCom.mgr_code);                   // 전문관리번호
      ParamByName('co_prev_insp_no').AsString       := Trim(FComD.co_prev_insp_no);           // 사전심사번호
      ParamByName('seq').AsString                   := Trim(FComD.seq);                       // 의뢰순번(공사고유)
      ParamByName('cancel_yn').AsString             := Trim(FComD.cancel_yn);                 // 취소여부
      ParamByName('cust_no').AsString               := Trim(FComD.cust_no);                   // 주택금융공사 고객번호
      ParamByName('applcant_nm').AsString           := Trim(FComD.applcant_nm);               // 신청인명 (채무자)
      ParamByName('mort_addr_kind_dvcd').AsString   := Trim(FComD.mort_addr_kind_dvcd);       // 물건 주소 구분 코드
      ParamByName('mort_zip_cd').AsString           := Trim(FComD.mort_zip_cd);               // 소재지우편번호
      ParamByName('mort_zipaddr').AsString          := Trim(FComD.mort_zipaddr);              // 소재지우편번호주소
      ParamByName('mort_dtladdr').AsString          := Trim(FComD.mort_dtladdr);              // 소재지상세주소
      ParamByName('lawco_dong_cd').AsString         := Trim(FComD.lawco_dong_cd);             // 법정동코드
      ParamByName('mort_st_stnm_addr_cd').AsString  := Trim(FComD.mort_st_stnm_addr_cd);      // 물건 도로명주소 고유번호
      ParamByName('mort_st_dtladdr').AsString       := Trim(FComD.mort_st_dtladdr);           // 물건 도로명주소 상세주소
      ParamByName('own_pers_nm').AsString           := Trim(FComD.own_pers_nm);               // 소유자성명
      ParamByName('house_dvcd').AsString            := Trim(FComD.house_dvcd);                // 주택유형코드
      ParamByName('mort_rsrch_kind_cd').AsString    := Trim(FComD.mort_rsrch_kind_cd);        // 담보물조사종류코드
      ParamByName('org_nm').AsString                := Trim(FComD.org_nm);                    // 기관명(은행명)
      ParamByName('duty_brcd_nm').AsString          := Trim(FComD.duty_brcd_nm);              // 의뢰부점명
      ParamByName('duty_emp_nm').AsString           := Trim(FComD.duty_emp_nm);               // 의뢰자명
      ParamByName('duty_tel_no').AsString           := Trim(FComD.duty_tel_no);               // 의뢰자연락처
      ParamByName('applcant_tel_no').AsString       := Trim(FComD.applcant_tel_no);           // 신청인(채무자)전화번호
      ParamByName('applcant_mobile').AsString       := Trim(FComD.applcant_mobile);           // 신청인(채무자)핸드폰
      ParamByName('applcant_zip_cd').AsString       := Trim(FComD.applcant_zip_cd);           // 신청인우편번호
      ParamByName('expect_judge_amt').AsString      := Trim(FComD.expect_judge_amt);          // 예상감정금액(신청인희망금액)
      ParamByName('fee_brd_cd').AsString            := Trim(FComD.fee_brd_cd);                // 수수료고객부담여부
      ParamByName('req_dy').AsString                := Trim(FComD.req_dy);                    // 신청일자(등록일자)
      ParamByName('repot_dlv_hope_dy').AsString     := Trim(FComD.repot_dlv_hope_dy);         // 보고서교부희망일자
      ParamByName('prod_cd_nm').AsString            := Trim(FComD.prod_cd_nm);                // 대출종류명
      ParamByName('req_amt').AsString               := Trim(FComD.req_amt);                   // 신청금액
      ParamByName('hold_term_cd_nm').AsString       := Trim(FComD.hold_term_cd_nm);           // 거치기간
      ParamByName('tot_room_cnt').AsString          := Trim(FComD.tot_room_cnt);              // 총방수
      ParamByName('rent_room_cnt').AsString         := Trim(FComD.rent_room_cnt);             // 임대방수
      ParamByName('rent_amt').AsString              := Trim(FComD.rent_amt);                  // 임대보증금
      ParamByName('usub_ord_bond_amt').AsString     := Trim(FComD.usub_ord_bond_amt);         // 선순위채권금액
      ParamByName('prod_grp_cd').AsString           := Trim(FComD.prod_grp_cd);               // 상품그룹구분코드

      Execute;
    except
      on E:Exception do
      begin
        ErrorLog('접수중 에러가 발생하였습니다!', 'TKHFC_Parser.InsertAppmain', '', E.Message);
        Exit;
      end;
    end;
  end;

  Result := egNone;
end;

// 취소
function TKHFC_Parser.Cancel(oQry : TMSQuery): TErrorGubun;
var
  strAppcode: string;
  strUpmuGubun: string;
  nGAMEVAL_CD : integer;
begin
  Result := egDbSave;

  with oQry do
  begin
    Close;
    SQL.Text := 'EXEC SP_KAPA_KHF_IU_SYNC :GUBUN, :GUBUN_CODE, :SA_NO, :ADDR';
    SQL.Text := SQL.Text + ', :CUSTNAME, :CUSTCHARGE, :CUSTDOCID, :REQUESTDATE';
    SQL.Text := SQL.Text + ', :TITLE, :BIGO, :GAM_CANCEL';
    SQL.Text := SQL.Text + ', :CustPhone, :OwnerName, :Debtor, :DebtrPhone, :DebtorHP';
    SQL.Text := SQL.Text + ', :Mgr_Code, :co_prev_insp_no, :seq';
    SQL.Text := SQL.Text + ', :cancel_yn, :cust_no, :applcant_nm, :mort_addr_kind_dvcd';
    SQL.Text := SQL.Text + ', :mort_zip_cd, :mort_zipaddr, :mort_dtladdr, :lawco_dong_cd';
    SQL.Text := SQL.Text + ', :mort_st_stnm_addr_cd, :mort_st_dtladdr, :own_pers_nm, :house_dvcd';
    SQL.Text := SQL.Text + ', :mort_rsrch_kind_cd, :org_nm, :duty_brcd_nm, :duty_emp_nm';
    SQL.Text := SQL.Text + ', :duty_tel_no, :applcant_tel_no, :applcant_mobile';
    SQL.Text := SQL.Text + ', :applcant_zip_cd, :expect_judge_amt, :fee_brd_cd';
    SQL.Text := SQL.Text + ', :req_dy, :repot_dlv_hope_dy, :prod_cd_nm';
    SQL.Text := SQL.Text + ', :req_amt, :hold_term_cd_nm, :tot_room_cnt';
    SQL.Text := SQL.Text + ', :rent_room_cnt, :rent_amt, :usub_ord_bond_amt, :prod_grp_cd';

    try
      if FComD.mort_rsrch_kind_cd = '1' then      // 약식감정
        ParamByName('GUBUN').AsString := '9'
      else if FComD.mort_rsrch_kind_cd = '2' then // 정식감정
        ParamByName('GUBUN').AsString := '1'
      else
        Exit; // 에러

      ParamByName('GUBUN_CODE').AsString  := 'KHF';
      ParamByName('SA_NO').AsString       := Trim(FCom.mgr_code);
      ParamByName('ADDR').AsString        := Trim(FComD.mort_zipaddr);

      ParamByName('CUSTNAME').AsString      := Trim(FComD.org_nm) + ' ' + Trim(FComD.duty_brcd_nm);
      ParamByName('CUSTCHARGE').AsString    := Trim(FComD.duty_emp_nm);
      ParamByName('CUSTDOCID').AsString     := Trim(FComD.co_prev_insp_no) + Trim(FComD.seq);
      ParamByName('REQUESTDATE').AsDateTime := Now;
      ParamByName('TITLE').AsString         := Trim(FComD.mort_zipaddr) + ' ' + Trim(FComD.mort_dtladdr);
      ParamByName('BIGO').AsString          := Trim(FComD.mort_zipaddr) + ' ' + Trim(FComD.mort_dtladdr);

      // 받은 값으로 처리하기로 변경 2019-01-11
      ParamByName('GAM_CANCEL').AsString    := FComD.cancel_yn;

      ParamByName('CustPhone').AsString     := Trim(FComD.duty_tel_no);
      ParamByName('OwnerName').AsString     := Trim(FComD.own_pers_nm);
      ParamByName('Debtor').AsString        := Trim(FComD.applcant_nm);
      ParamByName('DebtrPhone').AsString    := Trim(FComD.applcant_tel_no);
      ParamByName('DebtorHP').AsString      := Trim(FComD.applcant_mobile);

      ParamByName('Mgr_Code').AsString              := Trim(FCom.mgr_code);                   // 전문관리번호
      ParamByName('co_prev_insp_no').AsString       := Trim(FComD.co_prev_insp_no);           // 사전심사번호
      ParamByName('seq').AsString                   := Trim(FComD.seq);                       // 의뢰순번(공사고유)
      ParamByName('cancel_yn').AsString             := Trim(FComD.cancel_yn);                 // 취소여부
      ParamByName('cust_no').AsString               := Trim(FComD.cust_no);                   // 주택금융공사 고객번호
      ParamByName('applcant_nm').AsString           := Trim(FComD.applcant_nm);               // 신청인명 (채무자)
      ParamByName('mort_addr_kind_dvcd').AsString   := Trim(FComD.mort_addr_kind_dvcd);       // 물건 주소 구분 코드
      ParamByName('mort_zip_cd').AsString           := Trim(FComD.mort_zip_cd);               // 소재지우편번호
      ParamByName('mort_zipaddr').AsString          := Trim(FComD.mort_zipaddr);              // 소재지우편번호주소
      ParamByName('mort_dtladdr').AsString          := Trim(FComD.mort_dtladdr);              // 소재지상세주소
      ParamByName('lawco_dong_cd').AsString         := Trim(FComD.lawco_dong_cd);             // 법정동코드
      ParamByName('mort_st_stnm_addr_cd').AsString  := Trim(FComD.mort_st_stnm_addr_cd);      // 물건 도로명주소 고유번호
      ParamByName('mort_st_dtladdr').AsString       := Trim(FComD.mort_st_dtladdr);           // 물건 도로명주소 상세주소
      ParamByName('own_pers_nm').AsString           := Trim(FComD.own_pers_nm);               // 소유자성명
      ParamByName('house_dvcd').AsString            := Trim(FComD.house_dvcd);                // 주택유형코드
      ParamByName('mort_rsrch_kind_cd').AsString    := Trim(FComD.mort_rsrch_kind_cd);        // 담보물조사종류코드
      ParamByName('org_nm').AsString                := Trim(FComD.org_nm);                    // 기관명(은행명)
      ParamByName('duty_brcd_nm').AsString          := Trim(FComD.duty_brcd_nm);              // 의뢰부점명
      ParamByName('duty_emp_nm').AsString           := Trim(FComD.duty_emp_nm);               // 의뢰자명
      ParamByName('duty_tel_no').AsString           := Trim(FComD.duty_tel_no);               // 의뢰자연락처
      ParamByName('applcant_tel_no').AsString       := Trim(FComD.applcant_tel_no);           // 신청인(채무자)전화번호
      ParamByName('applcant_mobile').AsString       := Trim(FComD.applcant_mobile);           // 신청인(채무자)핸드폰
      ParamByName('applcant_zip_cd').AsString       := Trim(FComD.applcant_zip_cd);           // 신청인우편번호
      ParamByName('expect_judge_amt').AsString      := Trim(FComD.expect_judge_amt);          // 예상감정금액(신청인희망금액)
      ParamByName('fee_brd_cd').AsString            := Trim(FComD.fee_brd_cd);                // 수수료고객부담여부
      ParamByName('req_dy').AsString                := Trim(FComD.req_dy);                    // 신청일자(등록일자)
      ParamByName('repot_dlv_hope_dy').AsString     := Trim(FComD.repot_dlv_hope_dy);         // 보고서교부희망일자
      ParamByName('prod_cd_nm').AsString            := Trim(FComD.prod_cd_nm);                // 대출종류명
      ParamByName('req_amt').AsString               := Trim(FComD.req_amt);                   // 신청금액
      ParamByName('hold_term_cd_nm').AsString       := Trim(FComD.hold_term_cd_nm);           // 거치기간
      ParamByName('tot_room_cnt').AsString          := Trim(FComD.tot_room_cnt);              // 총방수
      ParamByName('rent_room_cnt').AsString         := Trim(FComD.rent_room_cnt);             // 임대방수
      ParamByName('rent_amt').AsString              := Trim(FComD.rent_amt);                  // 임대보증금
      ParamByName('usub_ord_bond_amt').AsString     := Trim(FComD.usub_ord_bond_amt);         // 선순위채권금액
      ParamByName('prod_grp_cd').AsString           := Trim(FComD.prod_grp_cd);               // 상품그룹구분코드

      Execute;
    except
      on E:Exception do
      begin
        ErrorLog('취소 접수중 에러가 발생하였습니다!', 'TKHFC_Parser.Cancel', '', E.Message);
        Exit;
      end;
    end;
  end;

  Result := egNone;

end;

// 공사로 보금자리 전문 발송
procedure TKHFC_Parser.SendData(var strHeader : string; var strDetail : string);
var
  oQry : TMSQuery;
  strAppraisal, strUpmu_gubun : string;
  Is_OK : String;
  Loop, Count1 : Integer;
  T : TDateTime;

  // Numeric(7,2)를 * 100 해서 정수부로 변환
  function NumericToStr(Num : Double) : String;
  begin
    Result := RightStr('0000000'+FloatToStr(Num*100),7);
  end;

begin
  Count1 := 0;

  oQry := TMSQuery.Create(nil);
  oQry.Connection := DM.MSConnection;

  try
    with oQry do
    begin
      Close;
      SQL.Text := 'EXEC SP_S_APW_DH_HF_LINK :masterid';
      ParamByName('masterid').AsString  := IntToStr(StrToIntDef(FMasterID,-1)); // 000000으로 6자리 맞춰서 들어오는거를 앞 0 없애기 위해
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'TKHFC_Parser.SendData', '', E.Message);
          Exit;
        end;
      end;

      strHeader := Format('HFTOPAPPR'
                         +'A014'
                         +'2710149'
                         +'%s%-20s%s'
                         +'0110'
                         +'0000'
                         +'%s%s%-300s%-300s%s',
                          [RightStr('000000'+FMasterID,6),                        // 전문관리번호(MasterID)
                          '',                                                     // 감정기관정보
                          FormatDateTime('yyyymmddhhnnss',Now),                   // 전문전송시각
                          '0000',                                                 // 응답코드 (정상이면 '0000')
                          '0000',                                                 // ERROR-LINE
                          '',                                                     // ERROR-메시지1
                          '',                                                     // ERROR-메시지2
                          '3000']);

      //strHeader := '3000' + strHeader;

      strDetail := Format('%-10s%s%-1s%-20s%-8s%-50s'
                         +'%-8s%-50s%-9s%-50s%-1s'
                         +'%-6s%-100s%-100s'
                         +'%-10s%-25s%-100s%-50s%-3s'
                         +'%-1s%-11s%-11s%-11s%-11s%-11s%-7s%-7s%-7s%-7s'
                         +'%-3s%-4s%7s%-200s%-3s%-50s%-3s%-5s%-11s%-11s%-8s%-8s%-500s%-1s%-8s%-8s'
                         +'%-11s%-11s%-11s%-11s%-11s%-11s%-3s%-20s%-30s%-8s%-8s%-3s%-10s%-652s',
                         [FieldByName('co_prev_insp_no').AsString,                               // 사전심사번호
                          CurrencyToStr(FieldByName('seq').AsString,5),                          // 의뢰순번(공사고유)
                          FieldByName('cancel_yn').AsString,                                     // 취소여부 CancelStr(반려반송에서 보낸거면 Y, 발송에서 보낸거면 N
                          FieldByName('acpt_no').AsString,                                       // 접수번호
                          StringReplace(FieldByName('acpt_dy').AsString,'-','', [rfReplaceAll]), // 접수일자
                          FieldByName('judge_assess_sht_no').AsString,                           // 감정평가서번호

                          StringReplace(FieldByName('judge_assess_dy').AsString,'-','', [rfReplaceAll]), // 감정평가일자
                          Copy(FieldByName('judge_assess_co_nm').AsString,1,50),                 // 감정평가사명
                          FieldByName('cust_no').AsString,                                       // 주택금융공사 고객번호
                          Copy(FieldByName('applcant_nm').AsString,1,50),                        // 신청인명
                          FieldByName('mort_addr_kind_dvcd').AsString,                           // 물건 주소 구분 코드

                          FieldByName('mort_zip_cd').AsString,                                   // 소재지우편번호
                          Copy(FieldByName('mort_zipaddr').AsString,1,100),                      // 소재지우편번호주소
                          Copy(FieldByName('mort_dtladdr').AsString,1,100),                      // 소재지상세주소

                          FieldByName('lawco_dong_cd').AsString,                                 // 법정동코드
                          Copy(FieldByName('mort_st_stnm_addr_cd').AsString,1,25),               // 물건 도로명주소 고유번호
                          Copy(FieldByName('mort_st_dtladdr').AsString,1,100),                   // 물건 도로명주소 상세주소
                          Copy(FieldByName('own_pers_nm').AsString,1,50),                        // 소유자성명
                          FieldByName('house_dvcd').AsString,                                    // 주택유형코드

                          FieldByName('mort_rsrch_kind_cd').AsString,                            // 담보물조사종류코드
                          CurrencyToStr(FieldByName('mort_pry_amt').AsString,11),                // 담보기초가액
                          CurrencyToStr(FieldByName('judge_assess_amt').AsString,11),            // 감정평가금액(총담보평가액)
                          CurrencyToStr(FieldByName('house_mort_assess_amt').AsString,11),       // 주택담보평가금액
                          CurrencyToStr(FieldByName('store_mort_assess_amt').AsString,11),       // 상가담보평가금액
                          CurrencyToStr(FieldByName('lnd_judge_amt').AsString,11),               // 토지감정가
                          NumericToStr(FieldByName('divs_area').AsFloat),                        // 전용면적
                          NumericToStr(FieldByName('etc_apply_area').AsFloat),                   // 기타전용면적
                          NumericToStr(FieldByName('sell_area').AsFloat),                        // 분양면적
                          NumericToStr(FieldByName('sell_ph').AsFloat),                          // 분양평형
                          CurrencyToStr(FieldByName('sell_room_cnt').AsString,3),                // 분양당시방수
                          FieldByName('use_apprv_yr').AsString,                                  // 사용승인년도
                          NumericToStr(FieldByName('lrgt_poss').AsFloat),                        // 대지권지분
                          Copy(FieldByName('main_struct').AsString,1,200),                       // 주요구조
                          CurrencyToStr(FieldByName('bldng_tot_layer').AsString,3),              // 1동의총층수
                          Copy(FieldByName('heat_type').AsString,1,50),                          // 난방방식
                          CurrencyToStr(FieldByName('tot_dong_cnt').AsString,3),                 // 단지내총동수
                          CurrencyToStr(FieldByName('tot_house_cnt').AsString,5),                // 총세대수
                          CurrencyToStr(FieldByName('sale_upper_amt').AsString,11),              // 매매상한가
                          CurrencyToStr(FieldByName('sale_lower_amt').AsString,11),              // 매매하한가
                          StringReplace(FieldByName('cmplt_test_dy').AsString,'-','', [rfReplaceAll]),  // 준공검사일
                          StringReplace(FieldByName('sell_contrct_dy').AsString,'-','', [rfReplaceAll]),// 분양계약일
                          Copy(Chr1310Check(FieldByName('judge_assess_opn').AsString),1,500),    // 감정평가의견
                          FieldByName('inqry_rslt_exist_yn').AsString,                           // 조회결과존재유무
                          StringReplace(Copy(FieldByName('bsrch_pnttm').AsString,1,10),'-','', [rfReplaceAll]), // 조사시점
                          StringReplace(FieldByName('make_dy').AsString,'-','', [rfReplaceAll]),     // 작성일자
                          CurrencyToStr(FieldByName('base_fee_amt').AsString,11),                // 기초수수료
                          CurrencyToStr(FieldByName('travel_fee_amt').AsString,11),              // 출장여비
                          CurrencyToStr(FieldByName('special_servc_amt').AsString,11),           // 특별용역비
                          CurrencyToStr(FieldByName('sale_amt').AsString,11),                    // 매출금액
                          CurrencyToStr(FieldByName('addvalue_fee').AsString,11),                // 부가가치세
                          CurrencyToStr(FieldByName('tot_sale_amt').AsString,11),                // 매출총액

                          CurrencyToStr(FieldByName('vrtl_acc_seq').AsString,3),                 // 가상계좌발급순번
                          FieldByName('vrtl_acc_no').AsString,                                   // 가상계좌번호
                          FieldByName('vrtl_acc_dposit_nm').AsString,                            // 예금주
                          StringReplace(FieldByName('vrtl_acc_new_dy').AsString,'-','', [rfReplaceAll]),    // 발급일자
                          StringReplace(FieldByName('vrtl_acc_expire_dy').AsString,'-','', [rfReplaceAll]), // 만료일자
                          FieldByName('vrtl_acc_org_cd').AsString,                               // 금융기관코드
                          CurrencyToStr(FieldByName('vrtl_acc_fee_amt').AsString,10),            // 금액
                          '']);                                                                  // 결과수신전문더미

      SendMsgtoKHFC('3000' + strHeader + strDetail);
      Sleep(3000);

      if Active then Close;
    end;
  finally
    oQry.Free;
  end;
end;

// 공사로 연금 전문 발송
procedure TKHFC_Parser.SendPHFData(var strHeader : string; var strDetail : string);
var
  oQry : TMSQuery;
  s_All, c_job_code : String;
  cLen : string;
begin

  oQry := TMSQuery.Create(nil);
  oQry.Connection := DM.MSConnection;

  try
    with oQry do
    begin
      Close;
      SQL.Text := 'EXEC SP_S_HF_P_Receipt :seq';
     // ShowMessage(FSEQ);
      ParamByName('seq').AsString  := FSEQ;
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'SendPHFData', '', E.Message);
          Exit;
        end;
      end;

      FDAMBO_NO := FieldByName('DAMBO_NO').AsString;
      c_job_code := FieldByName('workGubun').AsString;

      if c_job_code = '100' then begin            // 정식감정
        cLen := 'XXXX'; // 0100
      end else if c_job_code = '200' then begin   // 약식감정
        cLen := '2801';
      end else if c_job_code = '300' then begin   // 탁상감정
        cLen := '0300';
      end;

      strHeader :=Format('%-7s%2s%2s%4s%3s%3s%-50s%-10s%-14s%-10s%-14s%-10s%-10s%-5s%-56s',
                  ['HFDAEHW',
                   'DB',
                   '01',                                  //주택공사 발신 00 을 감정기관 발송 01 로 변경
                   '0500',                                // 전문종별 코드 - 결과송신전문
                   c_job_code,                            // 전문구분
                   '001',                                 // 응답코드 데이타송신 041 -> 수신 OK 001
                   '',                                    // error_msg 50
                   FieldByName('Header8').AsString,       // 감정의뢰번호
                   FieldByName('Sendtime').AsString,      // Header9 헤더 전문의 감정의뢰관리시간
                   '',                                    // 헤더 10번 감정기관전문관리번호
                   FormatDateTime('yyyymmddhhnnss', Now),
                   FieldByName('Header12').AsString,      // 감정기관관리용(응답시 그대로 Return)
                   FieldByName('Header13').AsString,      // 은행관리용 (응답시 그대로 Return)
                   '0'+cLen,
                   '']) // 56
                  ;
      //strHeader := '0200'+strHeader;

      if c_job_code = '100' then begin            // 정식감정
        strDetail := GetData100(oQry);
        cLen := CurrencyToStr(IntToStr(Length(strHeader + strDetail)),4); // cLen := '0100';
        strHeader := StringReplace(strHeader, 'XXXX', cLen, [rfReplaceAll]);
      end else if c_job_code = '200' then begin   // 약식감정
        strDetail := GetData200(oQry);
      end else if c_job_code = '300' then begin   // 탁상감정
        strDetail := GetData300(oQry);
      end;

      if strDetail <> 'ERROR' then begin
        s_All := cLen + strHeader + strDetail;
      //  ShowMessage(s_All);
        SendMsgtoKHFC(s_All);
        Sleep(3000);
      end;

      if Active then Close;
    end;
  finally
    oQry.Free;
  end;
end;

// 정식감정자료 가져오기
var
  a100 : array [0..8, 0..2] of string =
    ( ('DAMBO_NO'     ,'의뢰번호'       , 'T')
     ,('GAMJUNG_NO'   ,'감정서번호'     , 'T')
     ,('GAMJUNG_RYO'  ,'감정평가료'     , 'N')
     ,('PYUNG_SUSURYO','감정평가수수료' , 'N')
     ,('PYUNG_SILBI'  ,'실비(교통비등)' , 'N')
     ,('PYUNG_EXIT'   ,'특별용역비'     , 'N')
     ,('PYUNG_BUGA'   ,'부가세'         , 'N')
     ,('GONGSI_AMT'   ,'표준지 공시지가', 'N')
     ,('DETAIL_CNT'   ,'세부내역 건수'  , 'N')
    );
  a100s : array [0..11, 0..2] of string =
    ( ('DAMBO_NO'     ,'의뢰번호'       , 'T')
     ,('MUL_SEQ'      ,'물건일련번호'   , 'T')
     ,('DETAIL_SEQ'   ,'세부일련번호'   , 'T')
     ,('DETAIL_JONG'  ,'세부물건종류'   , 'T')
     ,('TOJI_TOT_AREA','감정가액'       , 'N')
     ,('GONGBU_AREA'  ,'공부면적(수량)' , 'N')
     ,('SAJUNG_AREA'  ,'사정면적(수량)' , 'N')
     ,('APP_DANGA'    ,'평가단가'       , 'N')
     ,('NAEYONG_YEAR' ,'내용년수'       , 'N')
     ,('JANJON_YEAR'  ,'잔존년수'       , 'N')
     ,('CHONG_FOOR'   ,'총층수'         , 'N')
     ,('JUST_FOOR'    ,'해당층수'       , 'N')
    );
function TKHFC_Parser.GetData100(oQry : TMSQuery):string;
var
  cValue, cType, cErrorMsg, cMaster, cDetail : string;
  nLoop : Integer;
begin
  try
    with oQry do
    begin
      Close;
      SQL.Text := 'EXEC SP_S_HF_P_Jung :seq, :DAMBO_NO';
      ParamByName('seq').AsString       := FSEQ;
      ParamByName('DAMBO_NO').AsString  := FDAMBO_NO;
      //ErrorLog('EXEC SP_S_HF_P_Jung '+FSEQ+', '+FDAMBO_NO, 'GetData100', '', '');
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'GetData100', '', E.Message);
          Result := 'ERROR';
          Exit;
        end;
      end;

      // 필수값 확인
      cErrorMsg := '';
      for nLoop := 0 to Length(a100)-1 do begin
        cValue := Trim(FieldByName(a100[nLoop, 0]).AsString);
        cType  := a100[nLoop, 2];
        if ((cType <> 'N') and (cValue = '')) then begin
          if cErrorMsg <> '' then cErrorMsg := cErrorMsg + ',';
          cErrorMsg := cErrorMsg + a100[nLoop, 1];
        end;
      end;

      if cErrorMsg <> '' then begin
        ErrorLog('정식감정 전문 확인 중 DB에러가 발생하였습니다!', 'GetData100', '', cErrorMsg);
        Result := 'ERROR';
        Exit;
      end;

      // 400 byte
      cMaster := Format('%-10s%-20s%-1s%-8s%-30s%-10s%-10s%-10s%-10s'
                      +'%-10s%-2s%-8s%-100s%-15s%-4s%-1s%-50s'
                      +'%-3s%-30s%-40s%-8s%-8s%-12s',

              [ FieldByName('DAMBO_NO').AsString,                                             // 의뢰번호
                FieldByName('GAMJUNG_NO').AsString,                                           // 감정서번호
                FieldByName('GAM_GUBUN').AsString,                                            // 1: 임대차포함 2: 임대차미포함
                StringReplace(FieldByName('PRICE_DATE').AsString,'-','', [rfReplaceAll]),     // 가격평가시점
                FieldByName('PNG_NAME').AsString,                                             // 평가자성명
                CurrencyToStr(FieldByName('GAMJUNG_RYO').AsString,10),                        // 감정평가료
                CurrencyToStr(FieldByName('PYUNG_SUSURYO').AsString,10),                      // 감정평가수수료
                CurrencyToStr(FieldByName('PYUNG_SILBI').AsString,10),                        // 실비(교통비등)
                CurrencyToStr(FieldByName('PYUNG_EXIT').AsString,10),                         // 특별용역비
                CurrencyToStr(FieldByName('PYUNG_BUGA').AsString,10),                         // 부가세
                CurrencyToStr(FieldByName('MUL_JONG').AsString,2),                            // 물건용도
                StringReplace(FieldByName('GONGSI_DATE').AsString,'-','', [rfReplaceAll]),    // 표준지 공시기준일
                FieldByName('GONGSI_ADDR').AsString,                                          // 표준지 소재지(동, 지번)
                CurrencyToStr(FieldByName('GONGSI_AMT').AsString,15),                         // 표준지 공시지가
                CurrencyToStr(FieldByName('DETAIL_CNT').AsString,4),                          // 세부내역 건수
                FieldByName('CANCEL_YN').AsString,                                            // 취소여부
                FieldByName('CANCEL_REASON').AsString,                                        // 취소내역
                FieldByName('VRTL_ACC_ORG_CD').AsString,                                      // 가상계좌은행코드
                FieldByName('VRTL_ACC_NO').AsString,                                          // 가상계좌번호
                FieldByName('VRTL_ACC_CUST_NM').AsString,                                     // 가상계좌고객명
                StringReplace(FieldByName('VALID_STRT_DY').AsString,'-','', [rfReplaceAll]),  // (가상계좌)유효시작일자
                StringReplace(FieldByName('VALID_END_DY').AsString,'-','', [rfReplaceAll]),   // (가상계좌)유효종료일자
                CurrencyToStr(FieldByName('TRNSFER_AMT').AsString,12)]);                      // 이체금액

      Close;
      SQL.Text := 'Exec SP_S_HF_P_JungDetailEx :seq';
      ParamByName('seq').AsString       := FSEQ;
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'GetData100s', FSEQ, E.Message);
          Result := 'ERROR';
          Exit;
        end;
      end;
      cDetail := '';
      while not Eof do begin
        // 필수값 확인
        cErrorMsg := '';
        for nLoop := 0 to Length(a100s)-1 do begin
          cValue := Trim(FieldByName(a100s[nLoop, 0]).AsString);
          cType  := a100s[nLoop, 2];
          if ((cType <> 'N') and (cValue = '')) then begin
            if cErrorMsg <> '' then cErrorMsg := cErrorMsg + ',';
            cErrorMsg := cErrorMsg + a100s[nLoop, 1];
          end;
        end;

        if cErrorMsg <> '' then begin
          ErrorLog('정식감정 전문 확인 중 DB에러가 발생하였습니다!', 'GetData100', '', cErrorMsg);
          Result := 'ERROR';
          Exit;
        end;

        cDetail := cDetail
                + Format('%-10s%-3s%-3s%-3s%-10s%-3s%-15s%-2s%-3s%-3s%-2s%-2s%-4s%-4s%-40s%-20s'
                        +'%-20s%-2s%-15s%-15s%-15s%-30s%-2s%-3s%-3s%-8s%-100s%-3s%-3s%-54s',

              [ FieldByName('DAMBO_NO').AsString,                                             // 의뢰번호
                CurrencyToStr(Trim(FieldByName('MUL_SEQ').AsString),3),                       // 물건일련번호
                CurrencyToStr(Trim(FieldByName('DETAIL_SEQ').AsString),3),                    // 세부일련번호
                FieldByName('DETAIL_JONG').AsString,                                          // 세부물건종류
                FieldByName('RESULT_SEQNO').AsString,                                         // 평가명세 일련번호
                FieldByName('RESULT_SEQSEQNO').AsString,                                      // 평가명세 세부일련번호
                CurrencyToStr(FieldByName('TOJI_TOT_AREA').AsString,15),                      // 감정가액
                FieldByName('SOJAE_SIDO').AsString,                                           // 소재지_시도
                FieldByName('SOJAE_GUSIGUN').AsString,                                        // 소재지_구시군
                FieldByName('SOJAE_YUBMYEN').AsString,                                        // 소재지_읍면
                FieldByName('SOJAE_DONGRI').AsString,                                         // 소재지_동리
                CurrencyToStr(FieldByName('SOJAE_BUNJIGB').AsString, 2),                      // 소재지_번지구분
                CurrencyToStr(FieldByName('SOJAE_ADDR_BONBUN').AsString,4),                   // 소재지 세부주소 본번
                CurrencyToStr(FieldByName('SOJAE_ADDR_BUBUN').AsString,4),                    // 소재지 세부주소 부번
                FieldByName('SOJAE_GUNMULNM').AsString,                                       // 건물명
                FieldByName('SOJAE_DONGNO').AsString,                                         // 동수
                FieldByName('SOJAE_HONO').AsString,                                           // 호수
                FieldByName('JIMOK').AsString,                                                // 실제지목
                DecimalToStr(FieldByName('GONGBU_AREA').AsFloat,15),                          // 공부면적(수량)
                DecimalToStr(FieldByName('SAJUNG_AREA').AsFloat,15),                          // 사정면적(수량)
                CurrencyToStr(FieldByName('APP_DANGA').AsString,15),                          // 평가단가
                FieldByName('GUJO').AsString,                                                 // 건물구조
                FieldByName('YONGDO').AsString,                                               // 토지용도지역코드
                CurrencyToStr(FieldByName('NAEYONG_YEAR').AsString,3),                        // 내용년수
                CurrencyToStr(FieldByName('JANJON_YEAR').AsString,3),                         // 잔존년수
                StringReplace(FieldByName('YMD_JAEJAK').AsString,'-','', [rfReplaceAll]),     // 준공일자/제작일자
                FieldByName('DETAIL_BIGO').AsString,                                          // 비고
                CurrencyToStr(FieldByName('CHONG_FOOR').AsString,3),                          // 총층수
                CurrencyToStr(FieldByName('JUST_FOOR').AsString,3),                           // 해당층수
                '']);                                                                         // 결과수신전문더미 54
        Next;
      end;                                                                                
      Result := cMaster + cDetail;
    end;
  finally

  end;
end;

// 약식감정자료 가져오기
var
  a200 : array [0..11, 0..2] of string =
    ( ('DAMBO_NO'       ,'의뢰번호'         , 'T')
     ,('CTRL_NO_YEAR'   ,'접수년도+관리번호', 'T')
     ,('GAMJUNG_RYO'    ,'약식평가 수수료'  , 'N')
     ,('PYUNG_SUSURYO'  ,'평가수수료'       , 'N')
     ,('PYUNG_SILBI'    ,'실비(교통비등)'   , 'N')
     ,('PYUNG_BUGA'     ,'부가세'           , 'N')
     ,('BUILDING_AREA'  ,'건물면적(평형)액' , 'N')
     ,('EXCLUSIVE_M2'   ,'전유면적(M2)'     , 'N')
     ,('EXCLUSIVE_AREA' ,'전유면적(평형)'   , 'N')
     ,('COMMON_M2'      ,'공유면적(M2)'     , 'N')
     ,('COMMON_AREA'    ,'공유면적(평형)'   , 'N')
     ,('LAND_AREA'      ,'대지권면적(M2)'   , 'N')
    );
function TKHFC_Parser.GetData200(oQry : TMSQuery):string;
var
  cValue, cType, cErrorMsg : string;
  nLoop : Integer;
begin
  try
    with oQry do
    begin
      Close;
      SQL.Text := 'EXEC SP_S_HF_P_Yak :seq, :DAMBO_NO';
      ParamByName('seq').AsString       := FSEQ;
      ParamByName('DAMBO_NO').AsString  := FDAMBO_NO;
      //ErrorLog('EXEC SP_S_HF_P_Yak '+FSEQ+', '+FDAMBO_NO, 'GetData200', '', '');
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'GetData200', '', E.Message);
          Result := 'ERROR';
          Exit;
        end;
      end;

      // 필수값 확인
      cErrorMsg := '';
      for nLoop := 0 to Length(a200)-1 do begin
        cValue := Trim(FieldByName(a200[nLoop, 0]).AsString);
        cType  := a200[nLoop, 2];
        if ((cType <> 'N') and (cValue = '')) then begin
          if cErrorMsg <> '' then cErrorMsg := cErrorMsg + ',';
          cErrorMsg := cErrorMsg + a200[nLoop, 1];
        end;
      end;

      if cErrorMsg <> '' then begin
        ErrorLog('약식감정 전문 확인 중 DB에러가 발생하였습니다!', 'GetData200', '', cErrorMsg);
        Result := 'ERROR';
        Exit;
      end;

      // 2702 byte
      Result := Format('%-10s%-15s%1s%8s%s'
                      +'%-10s%-10s%-10s%-10s%1s'
                      +'%-50s%-30s%-15s%-2s%-3s%-3s%-2s%-2s%-4s%-4s%-40s%-20s%-20s'
                      +'%-12s%-16s%-13s%-16s%-13s%-30s%-8s'
                      +'%-10s%-30s%-10s%-10s%-8s%-8s%-30s'
                      +'%-80s%-80s%-80s%-10s%-10s%-10s'
                      +'%-1s%-10s%-10s%-80s%-80s%-80s%-80s'
                      +'%-10s%-20s%-20s%-20s%-20s%-8s%-8s%-8s%-8s%-8s%-8s%-15s%-15s%-15s'
                      +'%-15s%-15s%-15s%-40s%-40s%-40s%-20s%-20s%-20s%-20s%-20s%-20s'
                      +'%-8s%-600s%-15s%-15s%-15s%-15s%-25s%-30s%-1s%-1s%-1s%-160s'
                      +'%-3s%-30s%-40s%-8s%-8s%-12s%-49s'
                      ,

              [ FieldByName('DAMBO_NO').AsString,                                            // 의뢰번호
                FieldByName('CTRL_NO_YEAR').AsString,                                        // 접수년도+관리번호 (ex]2011-1234)
                FieldByName('GAM_GUBUN').AsString,                                           // 1: 임대차포함 2: 임대차미포함
                StringReplace(FieldByName('DOC_DATE').AsString,'-','', [rfReplaceAll]),      // 가격시점(작성일자)
                CurrencyToStr(FieldByName('MUL_JONG').AsString,2),                           // 물건용도

                CurrencyToStr(FieldByName('GAMJUNG_RYO').AsString,10),                       // 약식평가 수수료
                CurrencyToStr(FieldByName('PYUNG_SUSURYO').AsString,10),                     // 평가수수료
                CurrencyToStr(FieldByName('PYUNG_SILBI').AsString,10),                       // 실비(교통비등)
                CurrencyToStr(FieldByName('PYUNG_BUGA').AsString,10),                        // 부가세
                FieldByName('CANCEL_YN').AsString,                                           // 취소여부

                FieldByName('CANCEL_REASON').AsString,                                       // 취소내역
                FieldByName('DAMBO_BAS_VLU_KOR').AsString,                                   // 담보기준가액(한글)
                CurrencyToStr(FieldByName('DAMBO_BAS_VLU_NUM').AsString,15),                 // 담보기준가액(숫자)
                FieldByName('SOJAE_SIDO').AsString,                                          // 소재지_시도
                FieldByName('SOJAE_GUSIGUN').AsString,                                       // 소재지_구시군
                FieldByName('SOJAE_YUBMYEN').AsString,                                       // 소재지_읍면
                FieldByName('SOJAE_DONGRI').AsString,                                        // 소재지_동리
                CurrencyToStr(FieldByName('SOJAE_BUNJIGB').AsString, 2),                     // 소재지_번지구분
                CurrencyToStr(FieldByName('SOJAE_ADDR_BONBUN').AsString,4),                  // 소재지 세부주소 본번
                CurrencyToStr(FieldByName('SOJAE_ADDR_BUBUN').AsString,4),                   // 소재지 세부주소 부번
                FieldByName('SOJAE_GUNMULNM').AsString,                                      // 건물명
                FieldByName('SOJAE_DONGNO').AsString,                                        // 동수
                FieldByName('SOJAE_HONO').AsString,                                          // 호수

                DecimalToStr(FieldByName('BUILDING_AREA').AsString,12),                      // 건물면적(평형)
                DecimalToStr(FieldByName('EXCLUSIVE_M2').AsString,16),                       // 전유면적(M2)
                DecimalToStr(FieldByName('EXCLUSIVE_AREA').AsString,13),                     // 전유면적(평형)
                DecimalToStr(FieldByName('COMMON_M2').AsString,16),                          // 공유면적(M2)
                DecimalToStr(FieldByName('COMMON_AREA').AsString,13),                        // 공유면적(평형)
                DecimalToStr(FieldByName('LAND_AREA').AsString,30),                          // 대지권면적(M2)
                CurrencyToStr(FieldByName('FLOOR_CNT').AsString,8),                          // 층수

                FieldByName('INNER_STRUCTIURE').AsString,                                    // 내부구조
                FieldByName('HEAT_TYPE').AsString,                                           // 난방방식
                CurrencyToStr(FieldByName('TOT_HOUSE_CNT').AsString,10),                     // 총세대수
                CurrencyToStr(FieldByName('TOT_DONG_CNT').AsString,10),                      // 총동수
                StringReplace(FieldByName('COMPLETE_DATE').AsString,'-','', [rfReplaceAll]), // 준공일자
                CurrencyToStr(FieldByName('TOT_FLOOR').AsString,8),                          // 총층수
                FieldByName('STRUCTURE').AsString,                                           // 구조


                FieldByName('SP_HOUSE_CNT1').AsString,                                       // 해당평형세대수1
                FieldByName('SP_HOUSE_CNT2').AsString,                                       // 해당평형세대수2
                FieldByName('SP_HOUSE_CNT3').AsString,                                       // 해당평형세대수3
                FieldByName('STAIR_TYPE').AsString,                                          // 계단타입
                FieldByName('DIRECTION').AsString,                                           // 향
                FieldByName('PYN_TYPE').AsString,                                            // 평형


                FieldByName('DOUBLE_FLAG').AsString,                                         // 1:복층,2:단층
                CurrencyToStr(FieldByName('TOT_ROOM_CNT').AsString,10),                      // 방수
                CurrencyToStr(FieldByName('PARK_PER_HOUSE').AsString,10),                    // 세대당주차대수
                FieldByName('APT_BUS_BUBWAY').AsString,                                      // 교통시설
                FieldByName('APT_SCHOOL').AsString,                                          // 교육시설
                FieldByName('APT_NEAR').AsString,                                            // 편익시설
                FieldByName('APT_SURROUND').AsString,                                        // 주위환경


                CurrencyToStr(FieldByName('RNT_HOUSE_CNT').AsString,10),                     // 전입세대수
                FieldByName('DONG_OFFICE').AsString,                                         // 관할동사무소명
                FieldByName('HOST_NAME1').AsString,                                          // 세대주성명1
                FieldByName('HOST_NAME2').AsString,                                          // 세대주성명2
                FieldByName('HOST_NAME3').AsString,                                          // 세대주성명3
                StringReplace(FieldByName('ENTER_DATE1').AsString,'-','', [rfReplaceAll]),   // 전입일자1
                StringReplace(FieldByName('ENTER_DATE2').AsString,'-','', [rfReplaceAll]),   // 전입일자2
                StringReplace(FieldByName('ENTER_DATE3').AsString,'-','', [rfReplaceAll]),   // 전입일자3
                StringReplace(FieldByName('CONFIRM_DATE1').AsString,'-','', [rfReplaceAll]), // 확정일자1
                StringReplace(FieldByName('CONFIRM_DATE2').AsString,'-','', [rfReplaceAll]), // 확정일자2
                StringReplace(FieldByName('CONFIRM_DATE3').AsString,'-','', [rfReplaceAll]), // 확정일자3
                CurrencyToStr(FieldByName('IM_BOAMT1').AsString,15),                         // 임대보증금1
                CurrencyToStr(FieldByName('IM_BOAMT2').AsString,15),                         // 임대보증금2
                CurrencyToStr(FieldByName('IM_BOAMT3').AsString,15),                         // 임대보증금3

                CurrencyToStr(FieldByName('WOLSE1').AsString,15),                            // 월세1
                CurrencyToStr(FieldByName('WOLSE2').AsString,15),                            // 월세2
                CurrencyToStr(FieldByName('WOLSE3').AsString,15),                            // 월세3
                FieldByName('IMCHA1').AsString,                                              // 임차내용1
                FieldByName('IMCHA2').AsString,                                              // 임차내용2
                FieldByName('IMCHA3').AsString,                                              // 임차내용3
                FieldByName('BIGO1').AsString,                                               // 비고1
                FieldByName('BIGO2').AsString,                                               // 비고2
                FieldByName('BIGO3').AsString,                                               // 비고3
                FieldByName('LEASE_CMNT1').AsString,                                         // 임차특기사항1
                FieldByName('LEASE_CMNT2').AsString,                                         // 임차특기사항2
                FieldByName('LEASE_CMNT3').AsString,                                         // 임차특기사항3

                StringReplace(FieldByName('VLU_BAS_DATE').AsString,'-','', [rfReplaceAll]),  // 가격기준일자
                FieldByName('VLU_INVST_REM').AsString,                                       // 담보조사서특기사항
                CurrencyToStr(FieldByName('SELL_UPPER').AsString,15),                        // 매매상한가
                CurrencyToStr(FieldByName('SELL_LOWER').AsString,15),                        // 매매하한가
                CurrencyToStr(FieldByName('RENT_UPPER').AsString,15),                        // 임대상한가
                CurrencyToStr(FieldByName('RENT_LOWER').AsString,15),                        // 임대하한가
                FieldByName('GUJO').AsString,                                                // 건물구조
                FieldByName('YONGDO').AsString,                                              // 건물용도
                FieldByName('ELEV_YN').AsString,                                             // 승강기 유무
                FieldByName('BLD_STAT').AsString,                                            // 건물상태
                FieldByName('MULGUN_GUBUN').AsString,                                        // 1:연립/다세대, 2:아파트,  3: 주상복합, 4:오피스텔
                FieldByName('DSC').AsString,                                                 // 가격결정의견 및 기타

                FieldByName('VRTL_ACC_ORG_CD').AsString,                                      // 가상계좌은행코드
                FieldByName('VRTL_ACC_NO').AsString,                                          // 가상계좌번호
                FieldByName('VRTL_ACC_CUST_NM').AsString,                                     // 가상계좌고객명
                StringReplace(FieldByName('VALID_STRT_DY').AsString,'-','', [rfReplaceAll]),  // (가상계좌)유효시작일자
                StringReplace(FieldByName('VALID_END_DY').AsString,'-','', [rfReplaceAll]),   // (가상계좌)유효종료일자
                CurrencyToStr(FieldByName('TRNSFER_AMT').AsString,12),                        // 이체금액
                '']);                                                                         // 결과수신전문더미
    end;
  finally

  end;
end;

// 연금 탁상감정 결과 전문 송신
var
  a300 : array [0..1, 0..2] of string =
    ( ('DAMBO_NO'       ,'의뢰번호'         , 'T')
     ,('GAMJUMG_NO'     ,'약식탁상감정번호' , 'T')
    );
function TKHFC_Parser.GetData300(oQry : TMSQuery):string;
var
  cValue, cType, cErrorMsg : string;
  nLoop : Integer;
begin
  try
    with oQry do
    begin
      Close;
      SQL.Text := 'EXEC SP_S_HF_P_TS :seq, :DAMBO_NO';
      ParamByName('seq').AsString       := FSEQ;
      ParamByName('DAMBO_NO').AsString  := FDAMBO_NO;
      //ErrorLog('EXEC SP_S_HF_P_TS '+FSEQ+', '+FDAMBO_NO, 'GetData300', '', '');
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'GetData300', '', E.Message);
          Result := 'ERROR';
          Exit;
        end;
      end;

      // 필수값 확인
      cErrorMsg := '';
      for nLoop := 0 to Length(a300)-1 do begin
        cValue := Trim(FieldByName(a300[nLoop, 0]).AsString);
        cType  := a300[nLoop, 2];
        if ((cType <> 'N') and (cValue = '')) then begin
          if cErrorMsg <> '' then cErrorMsg := cErrorMsg + ',';
          cErrorMsg := cErrorMsg + a300[nLoop, 1];
        end;
      end;

      if cErrorMsg <> '' then begin
        ErrorLog('탁상감정 전문 확인 중 DB에러가 발생하였습니다!', 'GetData300', '', cErrorMsg);
        Result := 'ERROR';
        Exit;
      end;

      // 201 byte
      Result := Format('%-10s%-15s%-15s%-50s%-10s',

              [ FieldByName('DAMBO_NO').AsString,              // 의뢰번호
                FieldByName('GAMJUMG_NO').AsString,            // 감정서번호
                FieldByName('GAMJUMG_GA').AsString,            // 약식탁상결과결정가액
                FieldByName('BIGO').AsString,                  // 기타사항
                '']);                                          // 결과송신전문더미
    end;
  finally

  end;
end;

function TKHFC_Parser.GetErrorMessage(const AErrorGubun: TErrorGubun): string;
begin
  case AErrorGubun of
    egNone: Result := '정상';
    egReceipt: Result := '이미 법인에서 접수된 건';
    egDbSave: Result := '저장오류';
    egReciveData: Result := '의뢰 데이터 오류';
    egNotExist: Result := '해당 의뢰번호 없음';
    egSendFinish: Result := '발송완료건';
    egNotSend: Result := '미발송건';
  end;
end;

// 공사에서 수신한 전문에 대한 응답 전문 헤더 작성
function TKHFC_Parser.MakesResponseHeader(const AErrorGubun: TErrorGubun; AResponse: string):
  string;
var
  ResultCode: string[3];
begin
  AResponse := StuffString(AResponse, 61, 4, '0101');

  case AErrorGubun of
  egNone        : // 정상(0000)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0000'); // 에러코드
                  end;
  egReceipt     : // 기접수(0001)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0001'); // 에러코드
                    AResponse := StuffString(AResponse, 77, Length('기접수'), '기접수');  // 에러시 전산개발용 메시지
                    AResponse := StuffString(AResponse, 377, Length('기접수된 건입니다.'), '기접수된 건입니다.'); // 에러시 고객/지사담당자용 메시지
                  end;
  egDbSave      : // 저장오류(0002)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0002'); // 에러코드
                    AResponse := StuffString(AResponse, 77, Length('저장오류'), '저장오류');  // 에러시 전산개발용 메시지
                    AResponse := StuffString(AResponse, 377, Length('저장오류입니다.'), '저장오류입니다.'); // 에러시 고객/지사담당자용 메시지
                  end;
  egReciveData  : // 받은데이타오류(0003)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0003'); // 에러코드
                    AResponse := StuffString(AResponse, 77, Length('받은데이타오류'), '받은데이타오류');  // 에러시 전산개발용 메시지
                    AResponse := StuffString(AResponse, 377, Length('받은 데이타에 오류가 있습니다.'), '받은 데이타에 오류가 있습니다.'); // 에러시 고객/지사담당자용 메시지
                  end;
  egNotExist    : // 해당건존재치않음(0004)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0004'); // 에러코드
                    AResponse := StuffString(AResponse, 77, Length('해당건존재치않음'), '해당건존재치않음');  // 에러시 전산개발용 메시지
                    AResponse := StuffString(AResponse, 377, Length('해당건이 존재하지 않습니다.'), '해당건이 존재하지 않습니다.'); // 에러시 고객/지사담당자용 메시지
                  end;
  egSendFinish  : // 발송완료(0005)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0005'); // 에러코드
                    AResponse := StuffString(AResponse, 77, Length('발송완료'), '발송완료');  // 에러시 전산개발용 메시지
                    AResponse := StuffString(AResponse, 377, Length('발송완료된 건입니다.'), '발송완료된 건입니다.'); // 에러시 고객/지사담당자용 메시지
                  end;
  egNotSend     : // 미발송건(0006)
                  begin
                    AResponse := StuffString(AResponse, 69, 4, '0006'); // 에러코드
                    AResponse := StuffString(AResponse, 77, Length('미발송건'), '미발송건');  // 에러시 전산개발용 메시지
                    AResponse := StuffString(AResponse, 377, Length('미발송건입니다.'), '미발송건입니다.'); // 에러시 고객/지사담당자용 메시지
                  end;
  end;

  AResponse := StuffString(AResponse, 677, 4, '0680'); // 전체전문길이 0680
  
  Result := AResponse;

end;

function TKHFC_Parser.MakeTotalLength(rTotalLength : integer): string;
begin
  Result := RightStr('000000'+inttostr(rTotalLength+194),6);
end;

function TKHFC_Parser.StrZero(Value: string; nSize: Integer): string;
var
  nIndex: Integer;
  cRet: string;
begin
  cRet := '';
  for nIndex := 1 to (nSize - Length(Value)) do
    cRet := '0' + cRet;
  Result := cRet + Value;
end;

function TKHFC_Parser.PadR(Value: string; ALength: Integer): string;
var
  i: Integer;
begin
  Result := Value;
  for i := 1 to ALength - Length(Value) do
    Result := Result + ' ';
end;

procedure TKHFC_Parser.ErrorLog(const ADambo_no, Afunction_Nm, APacket, AErrorMsg: string);
var
  log: TStringList;
  sFileName : string;
begin
  log := TStringList.Create;
  sFileName := ExtractFilePath(Application.ExeName)+'log\KHFCError_'+FormatDateTime('YYYYMMDD',now)+'.LOG';

  try
    if FileExists(sFileName) then log.LoadFromFile(sFileName);
    log.Add('');
    log.Add(FormatDateTime('YYYY-MM-DD HH:MM:SS:zzz', now));
    log.Add('의뢰번호  : ' + ADambo_no);
    log.Add('Function  : ' + Afunction_Nm);
    log.Add('packet    : [' + APacket + ']');
    log.Add('Error Msg : ' + AErrorMsg);
    log.SaveToFile(sFileName);
  finally
    Log.Free;
  end;
end;

// 전각문자로 변환
//function TKHFC_Parser.ToDoubleByte(str: String): String;
//var
//  strData, strdata1: String;
//  ix: Integer;
//begin
//  strData := str; // 검사할 문자열
//  for ix := 1 to length(strData) do
//  begin
//    // Ascii 32 이하는 공백으로 변환
//    if Ord(strData[ix]) <= 32 then
//    begin
//      strdata1 := strdata1 + Char(161) + Char(161);
//      Continue;
//    end;
//      
//    case ByteType(strData, ix) of
//      {반각문자}
//       mbSingleByte: Strdata1 := Strdata1 + Char(StrToInt('$a3'))+Char(StrToInt('$' + IntToHex(128+Ord(strdata[ix]), 2)));
//      {전각의 1 바이트}
//       mbLeadByte: Strdata1 := Strdata1 + Char(StrToInt('$' + IntToHex(Ord(strdata[ix]), 2)));
//      {전각의 2 바이트}
//       mbtrailByte: Strdata1 := Strdata1 + Char(StrToInt('$' + IntToHex(Ord(strdata[ix]), 2)));
//    end;
//  end;
//
//  Result := Strdata1;
//end;

// 반각문자로 변환
//function TKHFC_Parser.ToSingleByte(str: String): String;
//var
//  S : String;
//  SS : String;
//  SAsc : String;
//  Asc1 : integer;
//  Asc2 : integer;
//  i : Integer;
//begin
//  Result := '';
//  SS := '';
//  SAsc := '';
//  Asc1 := 0;
//  S := str;
//
//  for i := 1 to Length(S) do
//  begin
//    // 반각문자는 변환하지 않는다.
//    if ByteType(S, i) = mbSingleByte then
//    begin
//      Result := Result + S[i];
//    end
//    else
//    // 전각문자 시작 바이트의 ASCII 코드를 얻는 루틴
//    if ByteType(S, i) = mbLeadByte then
//    begin
//      SAsc := IntToStr(Ord(S[i]));
//      Asc1 := Ord(S[i]);
//    end
//    else
//    // 전각문자 마지막 바이트의 ASCII 코드를 얻는 루틴
//    if ByteType(S, i) = mbTrailByte then
//    begin
//      SAsc := SAsc + IntToStr(Ord(S[i]));
//      Asc2 := Ord(S[i]);
//
//      // 전각 영숫자, 특수문자 처리 루틴
//      if (StrToInt(SAsc) >= 163161) and
//      (StrToInt(SAsc) <= 163253) then
//      begin
//        SS := Chr(StrToInt(SAsc) - 163128);
//        Result := Result + SS;
//      end
//      else
//      // 전각 한글 처리 루틴
//      begin
//        Result := Result + Chr(Asc1) + Chr(Asc2);
//      end;
//      SAsc := '';
//    end;
//  end;
//end;


// 공사로 감정평가 발급상태 전문 발송
procedure TKHFC_Parser.SendDataStatus(var strHeader : string; var strDetail : string);
var
  oQry : TMSQuery;
  strAppraisal, strUpmu_gubun : string;
  Is_OK : String;
  Loop, Count1 : Integer;
  T : TDateTime;
  Officename : string;

  acpt_dy         : String; // 날짜형 문자형으로 변환
  judge_assess_dy : String;
  cmplt_test_dy   : String;
  sell_contrct_dy : String;
  bsrch_pnttm     : String;
  make_dy         : String;
  chk             : Boolean;
  progress_note   : string;

begin
  Count1 := 0;

  oQry := TMSQuery.Create(nil);
  oQry.Connection := DM.MSConnection;
  try
    with oQry do
    begin
      Close;
      SQL.Text := 'EXEC SP_S_APW_DH_HF_LINK :masterid ';

      ParamByName('MASTERID').AsString    := IntToStr(StrToIntDef(FMasterID,-1)); // 000000으로 6자리 맞춰서 들어오는거를 앞 0 없애기 위해
      try
        Open;
      except
        on E:Exception do
        begin
          ErrorLog('공사로 전문 전송중 에러가 발생하였습니다!', 'TKHFC_Parser.SendDataStatus', '', E.Message);
          Exit;
        end;
      end;
      strHeader := Format('HFTOPAPPR'
                         +'A014'
                         +'2710149'
                         +'%s%-20s%s%s%s%s%s%-300s%-300s%s',                      
                         [RightStr('000000'+FMasterID,6),                         // 전문관리번호(MasterID)
                          '',                                                     // 감정기관정보
                          FormatDateTime('yyyymmddhhnnss',Now),                   // 전문전송시각
                          '0120',                                                 // 전문코드 (요청이면 '0120')
                          '0000',                                                 // 거래코드 ('0000' 고정)
                          '0000',                                                 // 응답코드 (정상이면 '0000')
                          '0000',                                                 // ERROR-LINE
                          '',                                                     // ERROR-메시지1
                          '',                                                     // ERROR-메시지2
                          '2060']);

      // 001~005 이면 그냥 넣기
      if (FStatusCd = '001') or
         (FStatusCd = '002') or
         (FStatusCd = '003') or
         (FStatusCd = '004') or
         (FStatusCd = '005') or
         (FStatusCd = '999')then
      begin
        chk := true;
      end
      else
      begin
        chk := false;
      end;
      if  FieldByName('InUserOffice').AsString = '10' then  Officename := '본사'
      else if FieldByName('InUserOffice').AsString = '11' then  Officename :=
        '경기지사'
      else if FieldByName('InUserOffice').AsString = '12' then  Officename :=
        '경인지사'
      else if FieldByName('InUserOffice').AsString = '13' then  Officename :=
        '북부지사'
      else if FieldByName('InUserOffice').AsString = '14' then  Officename :=
        '강원지사'
      else if FieldByName('InUserOffice').AsString = '15' then  Officename :=
        '충청지사'
      else if FieldByName('InUserOffice').AsString = '16' then  Officename :=
        '충남지사'
        else if FieldByName('InUserOffice').AsString = '17' then  Officename :=
        '대구지사'
      else if FieldByName('InUserOffice').AsString = '18' then  Officename :=
        '부산지사'
      else if FieldByName('InUserOffice').AsString = '19' then  Officename :=
        '호남지사'
      else if FieldByName('InUserOffice').AsString = '21' then  Officename :=
        '경남지사'
      else if FieldByName('InUserOffice').AsString = '22' then  Officename :=
        '제주지사'
      else if FieldByName('InUserOffice').AsString = '23' then  Officename :=
        '동부지사'
      else if FieldByName('InUserOffice').AsString = '24' then  Officename :=
        '전북지사';


      if (FStatusCd = '999') then progress_note :=  '대화감정' + Officename + '/' + FieldByName('progress_note').AsString
       else progress_note :=  FieldByName('progress_note').AsString;


      FStatusUsr := FieldByName('FStatusUsr').AsString;
      FStatusNo  := FieldByName('FStatusNo').AsString;

      strDetail := Format('%-10s%-3s%14s%-40s%-30s%-20s%-30s%-30s%-300s%-4s%-899s',
                          [FieldByName('co_prev_insp_no').AsString,
                           FStatusCd,
                           FormatDateTime('yyyymmddhhnnss',Now),
                           '',
                           '',
                           '',
                           FStatusUsr,
                           FStatusNo,
                           progress_note,
                           '',
                           '']);

      if chk = true then
        begin
          SendMsgtoKHFC('2060' + strHeader + strDetail);
          //ShowMessage(strHeader + strDetail);
          with oQry do
          begin
            Close;
            SQL.Text := 'EXEC SP_U_APW_DH_HF_LINK_STATUS :MASTERID, :assess_seq, :assess_seq_dt, :FstatusUsr, :FstatusNo';
            ParamByName('MASTERID').AsString      := IntToStr(StrToIntDef(FMasterID,-1)); // 000000으로 6자리 맞춰서 들어오는거를 앞 0 없애기 위해
            ParamByName('assess_seq').AsString    := FStatusCd;
            ParamByName('assess_seq_dt').AsString := FormatDateTime('yyyymmddhhnnss',Now);
            ParamByName('FstatusUsr').AsString    := FStatusUsr;
            ParamByName('FstatusNo').AsString     := FStatusNo;

            Execute;
          end;

          if Active then Close;

        end;

    end;

  finally
    oQry.Free;
  end;

end;

{
SET @header = "HFTOPAPPRA0142710149584762                    201901100834330111000000000000                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        0680";

SELECT
    SUBSTRING(@header, 1, 9) AS `1`
,   SUBSTRING(@header, 10, 4) AS `기관코드`
,   SUBSTRING(@Header, 14, 7) AS `지로코드`
,   SUBSTRING(@Header, 21, 6) AS `전문관리번호`
,   SUBSTRING(@Header, 27, 20) AS `감정기관 정보`
,   SUBSTRING(@Header, 47, 14) AS `전문전송시각` 
,   SUBSTRING(@Header, 61, 4) AS `전문코드` 
,   SUBSTRING(@Header, 65, 4) AS `거래코드` 
,   SUBSTRING(@Header, 69, 4) AS `응답코드` 
,   SUBSTRING(@Header, 73, 4) AS `ERROR-LINE` 
,   SUBSTRING(@Header, 77, 300) AS `ERROR-메시지1` 
,   SUBSTRING(@Header, 377, 300) AS `ERROR-메시지2` 
;
}
procedure TKHFC_Parser.RunKHFParser(const AFullText: string; AFromAPWorks: Boolean);
begin
  if Not AFromAPWorks then  // 공사에서 온 전문 초기화
  begin
    FillChar(FCom, SizeOf(TCom), #0);
    FillChar(FComD, SizeOf(TComD), #0);

    // 헤더
    StrPCopy(FCom.header,         Copy(AFullText,   1, 9));     // HEADER ("HFTOPAPPR")
    StrPCopy(FCom.org_code,       Copy(AFullText,  10, 4));     // 기관코드 (기관종류(1)+기관코드(3), (코드표1)참조)
    StrPCopy(FCom.jiro_code,      Copy(AFullText,  14, 7));     // 지로코드 (기관의 지로코드 7자리, 한국주택금융공사 지로코드 : 2710149)
    StrPCopy(FCom.mgr_code,       Copy(AFullText,  21, 6));     // 전문관리번호 (기관별 거래일자별 일련번호, 응답[0101]시 요청전문[0100]과 동일일련번호 셋팅)
    StrPCopy(FCom.bub_info,       Copy(AFullText,  27, 20));    // 감정기관 정보
    StrPCopy(FCom.send_time,      Copy(AFullText,  47, 14));    // 전문전송시각 (일자8(YYYYMMDD)+시각6(hhmmss))
    StrPCopy(FCom.fulltext_code,  Copy(AFullText,  61, 4));     // 전문코드 (요청:0100, 응답:0101)
    StrPCopy(FCom.trade_code,     Copy(AFullText,  65, 4));     // 거래코드 ('0000' 고정값)
    StrPCopy(FCom.response_code,  Copy(AFullText,  69, 4));     // 응답코드 (수행결과이며 정상인 경우 '0000' 기타 오류인 경우 오류 코드)
    StrPCopy(FCom.error_line,     Copy(AFullText,  73, 4));     // ERROR-LINE
    StrPCopy(FCom.error_msg1,     Copy(AFullText,  77, 300));   // ERROR-메시지1 (에러시 전산개발용 메시지 (에러발생 프로그램, 시스템 오류 등을 포함))
    StrPCopy(FCom.error_msg2,     Copy(AFullText, 377, 300));   // ERROR-메시지2 (에러시 고객/지사담당자용 메시지 (에러발생시 필수))
    StrPCopy(FCom.fulltext_len,   Copy(AFullText, 677, 4));     // 전문 전체길이 (전체공통부를 포함한 전체 전문 길이)

    FHead := Copy(AFullText,   1, 680);
    FBody := Copy(AFullText,   681, Length(AFullText));

    // 디테일
    if FCom.fulltext_code = '0100' then
    begin
      StrPCopy(FComD.co_prev_insp_no,       Copy(AFullText, 681, 10));   // 의뢰번호 (사전심사번호) -- 공사키
      StrPCopy(FComD.seq,                   Copy(AFullText, 691, 5));    // 의뢰순번 (공사고유)     -- 공사키
      StrPCopy(FComD.cancel_yn,             Copy(AFullText, 696, 1));    // 취소여부 (Y:의뢰취소요청, N:의뢰요청)
      StrPCopy(FComD.org_nm,                Copy(AFullText, 697, 30));   // 기관명(은행명) ('한국주택금융공사')  -- 한글
      StrPCopy(FComD.duty_brcd_nm,          Copy(AFullText, 727, 40));   // 의뢰부점명 -- 한글
      StrPCopy(FComD.duty_emp_nm,           Copy(AFullText, 767, 30));   // 의뢰자명   -- 한글
      StrPCopy(FComD.duty_tel_no,           Copy(AFullText, 797, 20));   // 의뢰자연락처 (감정평가의뢰 전문 발송을 실행한 컨텍센터 또는 지사 담당자 연락처)
      StrPCopy(FComD.cust_no,               Copy(AFullText, 817, 9));    // 주택금융공사 고객번호
      StrPCopy(FComD.applcant_nm,           Copy(AFullText, 826, 50));   // 신청인성명 -- 한글
      StrPCopy(FComD.applcant_tel_no,       Copy(AFullText, 876, 12));   // 신청인전화번호
      StrPCopy(FComD.applcant_mobile,       Copy(AFullText, 888, 12));   // 신청인핸드폰
      StrPCopy(FComD.applcant_zip_cd,       Copy(AFullText, 900, 6));    // 신청인우편번호
      StrPCopy(FComD.mort_addr_kind_dvcd,   Copy(AFullText, 906, 1));    // 물건 주소 구분 코드 (1:지번, 2:도로명)
      StrPCopy(FComD.mort_zip_cd,           Copy(AFullText, 907, 6));    // 물건우편번호
      StrPCopy(FComD.mort_zipaddr,          Copy(AFullText, 913, 100));  // 물건우편번호주소 (물건구분코드가 1인 경우 셋팅)  -- 한글
      StrPCopy(FComD.mort_dtladdr,          Copy(AFullText, 1013, 100)); // 물건상세주소 (물건구분코드가 1인 경우 셋팅)      -- 한글
      StrPCopy(FComD.lawco_dong_cd,         Copy(AFullText, 1113, 10));  // 법정동코드
      StrPCopy(FComD.mort_st_stnm_addr_cd,  Copy(AFullText, 1123, 25));  // 물건 도로명주소 고유번호 (물건구분코드가 2인 경우 셋팅 (추후 물건주소에 도로명주소 도입시 사용 예정))
      StrPCopy(FComD.mort_st_dtladdr,       Copy(AFullText, 1148, 100)); // 물건 도로명주소 상세주소 (물건구분코드가 2인 경우 셋팅 (추후 물건주소에 도로명주소 도입시 사용 예정))  -- 한글
      StrPCopy(FComD.own_pers_nm,           Copy(AFullText, 1248, 50));  // 소유자성명 -- 한글
      StrPCopy(FComD.house_dvcd,            Copy(AFullText, 1298, 3));   // 주택유형코드 (코드표2) 참조
      StrPCopy(FComD.mort_rsrch_kind_cd,    Copy(AFullText, 1301, 1));   // 담보물조사종류코드 (코드표4) 참조
      StrPCopy(FComD.expect_judge_amt,      Copy(AFullText, 1302, 11));  // 예상감정금액(신청인희망금액)
      StrPCopy(FComD.fee_brd_cd,            Copy(AFullText, 1313, 2));   // 수수료고객부담여부 (코드표3) 참조
      StrPCopy(FComD.req_dy,                Copy(AFullText, 1315, 8));   // 신청일자(등록일자) (의뢰전 기본항목 등록일자 (컨텍센터 의뢰시는 상담시작일, 지사의뢰시는 심사시작일))
      StrPCopy(FComD.repot_dlv_hope_dy,     Copy(AFullText, 1323, 8));   // 보고서교부희망일자 (빈값)
      StrPCopy(FComD.prod_cd_nm,            Copy(AFullText, 1331, 10));  // 대출종류명 (상품코드 변환값) -- 한글
      StrPCopy(FComD.req_amt,               Copy(AFullText, 1341, 11));  // 신청금액
      StrPCopy(FComD.hold_term_cd_nm,       Copy(AFullText, 1352, 4));   // 거치기간 (거치기간 코드 변환값)  -- 한글
      StrPCopy(FComD.tot_room_cnt,          Copy(AFullText, 1356, 2));   // 총방수
      StrPCopy(FComD.rent_room_cnt,         Copy(AFullText, 1358, 2));   // 임대방수
      StrPCopy(FComD.rent_amt,              Copy(AFullText, 1360, 11));  // 임대보증금
      StrPCopy(FComD.usub_ord_bond_amt,     Copy(AFullText, 1371, 11));  // 선순위채권금액
      StrPCopy(FComD.prod_grp_cd,           Copy(AFullText, 1382, 2));   // 상품그룹구분코드
      StrPCopy(FComD.req_dummy,             Copy(AFullText, 1384, 616)); // 의뢰전문더미
    end;

  end
  else    // 통플 발송에서 보낸 전문 초기화
  begin
    FMasterID := Copy(AFullText,1,6);   // 앞 6자리는 MasterID
    if Copy(AFullText,7,1) = 'Y' then   // 7번째 자리가 Y면 반려반송에서 보낸거로 취소 전문 보내야함
      CancelStr := 'Y'
    else
      CancelStr := 'N';

    FStatusCd := Copy(AFullText,8,3);
  end;
end;

procedure TKHFC_Parser.RunPHFParser(const AFullText: string; AFromAPWorks: Boolean);
begin
  if Not AFromAPWorks then  // 공사에서 온 전문 초기화
  begin
    FillChar(FPHFHead, SizeOf(TPHFHead), #0);
    FillChar(FPHFBody, SizeOf(TPHFBody), #0);

    // 헤더
    StrPCopy(FPHFHead.TRXCD         , Copy(AFullText,   1,  7  ));    // 대화코
    StrPCopy(FPHFHead.job_type      , Copy(AFullText,   8,  2  ));    // 업무구분 코드 "DB"
    StrPCopy(FPHFHead.send_type     , Copy(AFullText,  10,  2  ));    // 01 대화
    StrPCopy(FPHFHead.req_type      , Copy(AFullText,  12,  4  ));    // 전문종별 코드
    StrPCopy(FPHFHead.job_code      , Copy(AFullText,  16,  3  ));    // 업무구분 코드 100 - 정식, 200 - 약식, 300 - 탁상
    StrPCopy(FPHFHead.response_code , Copy(AFullText,  19,  3  ));    // 응답코드 (수행결과이며 정상인 경우 '0000' 기타 오류인 경우 오류 코드)
    StrPCopy(FPHFHead.error_msg     , Copy(AFullText,  22, 50  ));    // ERROR-메시지

    StrPCopy(FPHFHead.app_req_no    , Copy(AFullText,  72, 10  ));    // 감정의뢰번호
    StrPCopy(FPHFHead.app_req_time  , Copy(AFullText,  82, 14  ));    // 감정의뢰관리시간
    StrPCopy(FPHFHead.mgr_code      , Copy(AFullText,  96, 10  ));    // 감정기관전문관리번호
    StrPCopy(FPHFHead.mgr_send_time , Copy(AFullText, 106, 14  ));    // 감정기관전문관리시간
    StrPCopy(FPHFHead.mgr_memo      , Copy(AFullText, 120, 10  ));    // 감정기관정의용
    StrPCopy(FPHFHead.bank_code     , Copy(AFullText, 130, 10  ));    // 은행정의용
    StrPCopy(FPHFHead.fulltext_len  , Copy(AFullText, 140,  5  ));    // 전문 전체길이 (전체공통부를 포함한 전체 전문 길이)

    FHead := Copy(AFullText,   1, 200);
    FBody := Copy(AFullText,   201, Length(AFullText));

    // 디테일
    if Pos(FPHFHead.req_type, '0100, 0200, 0600, 0650, 0700') > 0 then
    begin
      StrPCopy(FPHFBody.DAMBO_NO        , Copy(AFullText, 201,  10  ));  // 의뢰번호
      StrPCopy(FPHFBody.CHUJUNGGAAK     , Copy(AFullText, 211,  15  ));  // 요청가액(추정가액)
      StrPCopy(FPHFBody.GAM_MOK         , Copy(AFullText, 226,   1  ));  // 1:담보 9:기타
      StrPCopy(FPHFBody.MUL_JONG        , Copy(AFullText, 227,   1  ));  // 물건종류- 1:아파트, 2:연립, 3:다세대 4:단독주택,5:노인복지주택(실버주택) 9:기타
      StrPCopy(FPHFBody.SOJAE_ZIP_CODE  , Copy(AFullText, 228,   6  ));  // 의뢰 소재지우편코드(X)
      StrPCopy(FPHFBody.SOJAE_ADDR      , Copy(AFullText, 234,  50 ));   // 의뢰 소재지
      StrPCopy(FPHFBody.SOJAE_JIBUN     , Copy(AFullText, 284, 100 ));   // 의뢰 소재지 지번이하 주소
      StrPCopy(FPHFBody.CHAEMU_NAME     , Copy(AFullText, 384,  30 ));   // 채무자성명
      StrPCopy(FPHFBody.CHAEMU_TELL1    , Copy(AFullText, 414,  15 ));   // 채무자 전화번호1
      StrPCopy(FPHFBody.CHAEMU_TELL2    , Copy(AFullText, 429,  15 ));   // 채무자 전화번호2
      StrPCopy(FPHFBody.CHAEMU_ADDR     , Copy(AFullText, 444,  50 ));   // 채무자 소재지
      StrPCopy(FPHFBody.CHAEMU_BUNJI    , Copy(AFullText, 494, 100 ));   // 채무자 소재지 지번이하 주소
      StrPCopy(FPHFBody.GAM_EUI_JUM     , Copy(AFullText, 594,   3  ));  // 영업점코드
      StrPCopy(FPHFBody.GAM_EUI_NM      , Copy(AFullText, 597,  30 ));   // 영업점명
      StrPCopy(FPHFBody.GAM_EUI_ADDR    , Copy(AFullText, 627, 100 ));   // 영업점주소
      StrPCopy(FPHFBody.GAM_EUI_JA      , Copy(AFullText, 727,  12 ));   // 영업점 담당자명
      StrPCopy(FPHFBody.GAM_EUI_TEL     , Copy(AFullText, 739,  15 ));   // 영업점 전화번호
      StrPCopy(FPHFBody.TAX_REGISNO1    , Copy(AFullText, 754,  13 ));   // 세금계산서주민등록번호
      StrPCopy(FPHFBody.TAX_PRESIDENT   , Copy(AFullText, 767,  30 ));   // 세금계산서 대표자 성명
      StrPCopy(FPHFBody.TAX_ADDNAME     , Copy(AFullText, 797, 100 ));   // 세금계산서 사업장 소재지
      StrPCopy(FPHFBody.GAM_KOR         , Copy(AFullText, 897,   1  ));  // 1: 국문, 2: 영문
      StrPCopy(FPHFBody.GAM_GONGBU      , Copy(AFullText, 898,   1  ));  // 1: 공부요청, 2: 공부미요청
      StrPCopy(FPHFBody.DTL_BIGO        , Copy(AFullText, 899, 100 ));   // 감정기관전달사항(비고)
      StrPCopy(FPHFBody.LAWCO_DONG_CD   , Copy(AFullText, 999,  10  ));  // 법정동코드
      StrPCopy(FPHFBody.TAX_EMAIL       , Copy(AFullText, 1009, 50 ));   // 세금계산서 E-MAIL
      StrPCopy(FPHFBody.TAX_TELL        , Copy(AFullText, 1059, 15 ));   // 세금계산서 휴대전화
      //                                                  127 dummy
      StrPCopy(FPHFBody.SOJAE_GUNMULNM  , Copy(AFullText, 1201, 40 ));   // 건물명
      StrPCopy(FPHFBody.SOJAE_DONGNO    , Copy(AFullText, 1241, 20 ));   // 동
      StrPCopy(FPHFBody.SOJAE_HONO      , Copy(AFullText, 1261, 20 ));   // 호
    end;

  end
  else    // 통플 발송에서 보낸 전문 초기화
  begin
    FSEQ := Copy(AFullText,1,6);   // 앞 6자리는 seq
    if Copy(AFullText,7,1) = 'Y' then
      CancelStr := 'Y'
    else
      CancelStr := 'N';
  end;
end;

// 공사에서 수신한 연금 정보로 접수
function TKHFC_Parser.InsertPHFmain(oQry : TMSQuery) : TErrorGubun;
var
  Office, GUID : String;
  msid : String;

begin
  Result := egDbSave; // 저장오류
  FillChar(FAppmain, sizeof(TAppmain), #0);

  // 기존 접수건 있는지 체크
  with oQry do
  begin
    Close;
    SQL.Text := 'select * from HF_P_Receipt where DAMBO_NO = :DAMBO_NO ';
    ParamByName('DAMBO_NO').AsString   := FPHFBody.DAMBO_NO;
    try
      Open;
      // 접수건이 있는지 확인
      if ((FPHFHead.req_type = '0200') and (RecordCount = 0))
      or ((FPHFHead.req_type = '0600') and (RecordCount = 0))
      or ((FPHFHead.req_type = '0650') and (RecordCount = 0))
      or ((FPHFHead.req_type = '0700') and (RecordCount = 0))
      then
      begin
        Result := egReceipt;  // 기접수건
        Exit;
      end;
    except
      on E:Exception do
      begin
        ErrorLog('마스터 데이타 검색중 에러가 발생하였습니다!', 'TKHFC_Parser.InsertPHFmain', '', E.Message);
        Exit;
      end;
    end;
  end;

  with oQry do
  begin
    Close;
    SQL.Text := 'EXEC SP_KAPA_PHF_IU_Sync :GUBUN, :GUBUN_CODE, :SA_NO, :ADDR';
    SQL.Text := SQL.Text + ', :CUSTNAME, :CUSTCHARGE, :CUSTDOCID, :REQUESTDATE';
    SQL.Text := SQL.Text + ', :TITLE, :BIGO, :GAM_CANCEL';
    SQL.Text := SQL.Text + ', :CustPhone, :Debtor, :DebtrPhone, :DebtorHP';

    SQL.Text := SQL.Text + ', :DAMBO_NO, :CHUJUNGGAAK, :GAM_MOK';
    SQL.Text := SQL.Text + ', :MUL_JONG, :SOJAE_ZIP_CODE, :SOJAE_ADDR, :SOJAE_JIBUN';
    SQL.Text := SQL.Text + ', :CHAEMU_NAME, :CHAEMU_TELL1, :CHAEMU_TELL2, :CHAEMU_ADDR';
    SQL.Text := SQL.Text + ', :CHAEMU_BUNJI, :GAM_EUI_JUM, :GAM_EUI_NM, :GAM_EUI_ADDR';
    SQL.Text := SQL.Text + ', :GAM_EUI_JA, :GAM_EUI_TEL, :TAX_REGISNO1, :TAX_PRESIDENT';
    SQL.Text := SQL.Text + ', :TAX_ADDNAME, :GAM_KOR, :GAM_GONGBU';
    SQL.Text := SQL.Text + ', :DTL_BIGO, :LAWCO_DONG_CD, :TAX_EMAIL';
    SQL.Text := SQL.Text + ', :TAX_TELL, :DUMMY, :SOJAE_GUNMULNM';
    SQL.Text := SQL.Text + ', :SOJAE_DONGNO, :SOJAE_HONO, :Sendtime, :Header8, :Header12, :Header13';
    try
      ParamByName('GUBUN').AsString := FPHFHead.job_code;                     // 헤더 5번 업무구분코드
      ParamByName('GUBUN_CODE').AsString  := 'PHF';                           // 한국주택금융공사 연금
      ParamByName('SA_NO').AsString       := Trim(FPHFHead.app_req_no);       // 헤더8번 감정의뢰번호
      ParamByName('ADDR').AsString        := Trim(FPHFBody.CHAEMU_ADDR) + ' ' + Trim(FPHFBody.CHAEMU_BUNJI);

      ParamByName('CUSTNAME').AsString      := Trim(FPHFBody.GAM_EUI_NM);
      ParamByName('CUSTCHARGE').AsString    := Trim(FPHFBody.GAM_EUI_JA);
      ParamByName('CUSTDOCID').AsString     := Trim(FPHFBody.DAMBO_NO);
      ParamByName('REQUESTDATE').AsDateTime := Now;
      ParamByName('TITLE').AsString         := Trim(FPHFBody.CHAEMU_ADDR) + ' ' + Trim(FPHFBody.CHAEMU_BUNJI);
      ParamByName('BIGO').AsString          := Trim(FPHFBody.CHAEMU_ADDR) + ' ' + Trim(FPHFBody.CHAEMU_BUNJI);
      ParamByName('GAM_CANCEL').AsString    := FPHFHead.req_type;             // 헤더 4번 전문종별 코드

      ParamByName('CustPhone').AsString     := Trim(FPHFBody.GAM_EUI_TEL);
      ParamByName('Debtor').AsString        := Trim(FPHFBody.CHAEMU_NAME);
      ParamByName('DebtrPhone').AsString    := Trim(FPHFBody.CHAEMU_TELL1);
      ParamByName('DebtorHP').AsString      := Trim(FPHFBody.CHAEMU_TELL2);

      ParamByName('DAMBO_NO').AsString      := Trim(FPHFBody.DAMBO_NO);       // 의뢰번호
      ParamByName('CHUJUNGGAAK').AsString   := Trim(FPHFBody.CHUJUNGGAAK);    // 요청가액
      ParamByName('GAM_MOK').AsString       := Trim(FPHFBody.GAM_MOK);        // 1:담보 9:기타
      ParamByName('MUL_JONG').AsString      := Trim(FPHFBody.MUL_JONG);       // 물건종류
      ParamByName('SOJAE_ZIP_CODE').AsString:= Trim(FPHFBody.SOJAE_ZIP_CODE); // 의뢰 소재지우편코드(X)
      ParamByName('SOJAE_ADDR').AsString    := Trim(FPHFBody.SOJAE_ADDR);     // 의뢰 소재지
      ParamByName('SOJAE_JIBUN').AsString   := Trim(FPHFBody.SOJAE_JIBUN);    // 의뢰 소재지 지번이하 주소
      ParamByName('CHAEMU_NAME').AsString   := Trim(FPHFBody.CHAEMU_NAME);    // 채무자성명
      ParamByName('CHAEMU_TELL1').AsString  := Trim(FPHFBody.CHAEMU_TELL1);   // 채무자 전화번호1
      ParamByName('CHAEMU_TELL2').AsString  := Trim(FPHFBody.CHAEMU_TELL2);   // 채무자 전화번호2
      ParamByName('CHAEMU_ADDR').AsString   := Trim(FPHFBody.CHAEMU_ADDR);    // 채무자 소재지
      ParamByName('CHAEMU_BUNJI').AsString  := Trim(FPHFBody.CHAEMU_BUNJI);   // 채무자 소재지 지번이하 주소
      ParamByName('GAM_EUI_JUM').AsString   := Trim(FPHFBody.GAM_EUI_JUM);    // 영업점코드
      ParamByName('GAM_EUI_NM').AsString    := Trim(FPHFBody.GAM_EUI_NM);     // 영업점명
      ParamByName('GAM_EUI_ADDR').AsString  := Trim(FPHFBody.GAM_EUI_ADDR);   // 영업점주소
      ParamByName('GAM_EUI_JA').AsString    := Trim(FPHFBody.GAM_EUI_JA);     // 영업점 담당자명
      ParamByName('GAM_EUI_TEL').AsString   := Trim(FPHFBody.GAM_EUI_TEL);    // 영업점 전화번호
      ParamByName('TAX_REGISNO1').AsString  := Trim(FPHFBody.TAX_REGISNO1);   // 세금계산서주민등록번호
      ParamByName('TAX_PRESIDENT').AsString := Trim(FPHFBody.TAX_PRESIDENT);  // 세금계산서 대표자 성명
      ParamByName('TAX_ADDNAME').AsString   := Trim(FPHFBody.TAX_ADDNAME);    // 세금계산서 사업장 소재지
      ParamByName('GAM_KOR').AsString       := Trim(FPHFBody.GAM_KOR);        // 1: 국문, 2: 영문
      ParamByName('GAM_GONGBU').AsString    := Trim(FPHFBody.GAM_GONGBU);     // 1: 공부요청, 2: 공부미요청
      ParamByName('DTL_BIGO').AsString      := Trim(FPHFBody.DTL_BIGO);       // 감정기관전달사항(비고)
      ParamByName('LAWCO_DONG_CD').AsString := Trim(FPHFBody.LAWCO_DONG_CD);  // 법정동코드
      ParamByName('TAX_EMAIL').AsString     := Trim(FPHFBody.TAX_EMAIL);      // 세금계산서 E-MAIL
      ParamByName('TAX_TELL').AsString      := Trim(FPHFBody.TAX_TELL);       // 세금계산서 휴대전화
      ParamByName('SOJAE_GUNMULNM').AsString:= Trim(FPHFBody.SOJAE_GUNMULNM); // 건물명
      ParamByName('SOJAE_DONGNO').AsString  := Trim(FPHFBody.SOJAE_DONGNO);   // 동
      ParamByName('SOJAE_HONO').AsString    := Trim(FPHFBody.SOJAE_HONO);     // 호
      ParamByName('Sendtime').AsString      := Trim(FPHFHead.app_req_time);   // Header9 헤더 전문의 감정의뢰관리시간
      ParamByName('Header8').AsString       := Trim(FPHFHead.app_req_no);     // 감정의뢰번호
      ParamByName('Header12').AsString      := Trim(FPHFHead.mgr_memo);       // 감정기관관리용(응답시 그대로 Return)
      ParamByName('Header13').AsString      := Trim(FPHFHead.bank_code);      // 은행관리용 (응답시 그대로 Return)

      Execute;

    except
      on E:Exception do
      begin
        ErrorLog('접수중 에러가 발생하였습니다!', 'TKHFC_Parser.InsertPHFmain', '', E.Message);
        Exit;
      end;
    end;
  end;

  Result := egNone;
end;

// 공사에서 수신한 연금 수신정보 저장
function TKHFC_Parser.updatePHFmain(oQry : TMSQuery) : TErrorGubun;
var
  Office, GUID : String;
  msid : String;

begin
  Result := egDbSave; // 저장오류
  FillChar(FAppmain, sizeof(TAppmain), #0);

  // 기존 접수건 있는지 체크
  with oQry do
  begin
    Close;
    SQL.Text := 'select * from HF_P_Receipt where DAMBO_NO = :DAMBO_NO ';
    ParamByName('DAMBO_NO').AsString   := FPHFHead.app_req_no;
    try
      Open;
      // 취소전문일때는 접수건이 없는지 확인
      // 취소전문이 아닐때는 접수건이 있는지 확인
      if ((FPHFHead.req_type  = '0510') and (RecordCount = 0)) then
      begin
        Result := egNotExist;  // 해당건 존재하지 않음
        Exit;
      end;
    except
      on E:Exception do
      begin
        ErrorLog('마스터 데이타 검색중 에러가 발생하였습니다!', 'TKHFC_Parser.updatePHFmain', '', E.Message);
        Exit;
      end;
    end;
  end;

  with oQry do
  begin
    Close;
    SQL.Text := 'UPDATE HF_P_Receipt set WorkStatus = :WorkStatus where DAMBO_NO = :DAMBO_NO';
    try
      ParamByName('DAMBO_NO').AsString     := Trim(FPHFHead.app_req_no);       // 의뢰번호
      ParamByName('WorkStatus').AsString   := FPHFHead.req_type;             // 상태

      Execute;

    except
      on E:Exception do
      begin
        ErrorLog('상태 업데이트중 에러가 발생하였습니다!', 'TKHFC_Parser.updatePHFmain', '', E.Message);
        Exit;
      end;
    end;
  end;

  Result := egNone;
end;

end.

