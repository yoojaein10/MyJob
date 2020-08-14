USE [Apworks]
GO

/****** Object:  StoredProcedure [dbo].[SP_KAPA_KHF_IU_SYNC]    Script Date: 2020-06-01 오후 3:58:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_KAPA_KHF_IU_SYNC]
(  
	  @GUBUN CHAR(1)					-- 접수구분 (1 : 정식감정, 9 : 약식감정)
	, @GUBUN_CODE CHAR(3)				-- (KHF : 한국주택금융공사 보금자리)
	, @SA_NO VARCHAR(20)				-- 전문관리번호
	, @ADDR VARCHAR(100)
	, @CUSTNAME VARCHAR(60) = NULL
	, @CUSTCHARGE VARCHAR(40) = NULL
	, @CUSTDOCID VARCHAR(60) = NULL
	, @REQUESTDATE SMALLDATETIME = NULL
	, @TITLE VARCHAR(200) = NULL
	, @BIGO VARCHAR(200) = NULL  
	, @GAM_CANCEL VARCHAR(1) 
	, @CustPhone VARCHAR(20) = NULL
	, @OwnerName varchar(50) = null
	, @Debtor  varchar(50) = null
	, @DebtrPhone varchar(12) = null
	, @DebtorHP  varchar(12) = null


	-- 아래는 공사에서 접수시 연계테이블에 넣음
	, @Mgr_Code					char(6) = null			-- 전문관리번호
	, @co_prev_insp_no			varchar(10) = null		-- 사전심사번호	
	, @seq						varchar(5) = null		-- 의뢰순번(공사고유)
	, @cancel_yn				varchar(1) = null		-- 취소여부
	, @cust_no					varchar(9) = null		-- 주택금융공사 고객번호
	, @applcant_nm				varchar(50) = null		-- 신청인명(채무자)
	, @mort_addr_kind_dvcd		varchar(1) = null		-- 물건 주소 구분 코드
	, @mort_zip_cd				varchar(6) = null		-- 소재지우편번호
	, @mort_zipaddr				varchar(100) = null		-- 소재지우편번호주소
	, @mort_dtladdr				varchar(100) = null		-- 소재지상세주소
	, @lawco_dong_cd			varchar(10) = null		-- 법정동코드
	, @mort_st_stnm_addr_cd		varchar(25) = null		-- 물건 도로명주소 고유번호
	, @mort_st_dtladdr			varchar(100) = null		-- 물건 도로명주소 상세주소
	, @own_pers_nm				varchar(50) = null		-- 소유자성명
	, @house_dvcd				varchar(3) = null		-- 주택유형코드
	, @mort_rsrch_kind_cd		varchar(1) = null		-- 담보물조사종류코드
	
	, @org_nm					varchar(30)	= null		-- 기관명(은행명)	
	, @duty_brcd_nm				varchar(40)	= null		-- 의뢰부점명		
	, @duty_emp_nm				varchar(30)	= null		-- 의뢰자명		
	, @duty_tel_no				varchar(20)	= null		-- 의뢰자연락처	
	
	, @applcant_tel_no			varchar(12) = null		-- 신청인(채무자)전화번호
	, @applcant_mobile			varchar(12) = null		-- 신청인(채무자)핸드폰
	, @applcant_zip_cd			varchar(6) = null		-- 신청인우편번호

	, @expect_judge_amt			money = null			-- 예상감정금액(신청인희망금액)
	, @fee_brd_cd				varchar(2) = null		-- 수수료고객부담여부                                 
	, @req_dy					smalldatetime = null	-- 신청일자(등록일자)
	, @repot_dlv_hope_dy		smalldatetime = null	-- 보고서교부희망일자
	, @prod_cd_nm				varchar(10) = null		-- 대출종류명
	, @req_amt					money = null			-- 신청금액
	, @hold_term_cd_nm			varchar(4) = null		-- 거치기간
	, @tot_room_cnt				int = null				-- 총방수
	, @rent_room_cnt			int = null				-- 임대방수
	, @rent_amt					money = null			-- 임대보증금
	, @usub_ord_bond_amt		money = null			-- 선순위채권금액
	
	, @prod_grp_cd				varchar(2) = null		-- 상품그룹구분코드 (코드표6 참조) 추가 Task Area 20140922 (작성자 : 김학인)
)
AS 
BEGIN

--- 일단 임시 table에 다 넣자...
Insert into HF_KHFtmp( GUBUN ,GUBUN_CODE ,SA_NO ,ADDR ,CUSTNAME ,CUSTCHARGE ,CUSTDOCID ,REQUESTDATE ,TITLE ,BIGO ,GAM_CANCEL ,CustPhone ,OwnerName ,Debtor ,DebtrPhone ,DebtorHP ,Mgr_Code ,co_prev_insp_no ,seq ,cancel_yn ,cust_no ,applcant_nm ,mort_addr_kind_dvcd ,mort_zip_cd ,mort_zipaddr ,mort_dtladdr ,lawco_dong_cd ,mort_st_stnm_addr_cd ,mort_st_dtladdr ,own_pers_nm ,house_dvcd ,mort_rsrch_kind_cd ,org_nm ,duty_brcd_nm ,duty_emp_nm ,duty_tel_no ,applcant_tel_no ,applcant_mobile ,applcant_zip_cd ,expect_judge_amt ,fee_brd_cd ,req_dy ,repot_dlv_hope_dy ,prod_cd_nm ,req_amt ,hold_term_cd_nm ,tot_room_cnt ,rent_room_cnt ,rent_amt ,usub_ord_bond_amt ,prod_grp_cd)
values( @GUBUN ,@GUBUN_CODE ,@SA_NO ,@ADDR ,@CUSTNAME ,@CUSTCHARGE ,@CUSTDOCID ,@REQUESTDATE ,@TITLE ,@BIGO ,@GAM_CANCEL ,@CustPhone ,@OwnerName ,@Debtor ,@DebtrPhone ,@DebtorHP ,@Mgr_Code ,@co_prev_insp_no ,@seq ,@cancel_yn ,@cust_no ,@applcant_nm ,@mort_addr_kind_dvcd ,@mort_zip_cd ,@mort_zipaddr ,@mort_dtladdr ,@lawco_dong_cd ,@mort_st_stnm_addr_cd ,@mort_st_dtladdr ,@own_pers_nm ,@house_dvcd ,@mort_rsrch_kind_cd ,@org_nm ,@duty_brcd_nm ,@duty_emp_nm ,@duty_tel_no ,@applcant_tel_no ,@applcant_mobile ,@applcant_zip_cd ,@expect_judge_amt ,@fee_brd_cd ,@req_dy ,@repot_dlv_hope_dy ,@prod_cd_nm ,@req_amt ,@hold_term_cd_nm ,@tot_room_cnt ,@rent_room_cnt ,@rent_amt ,@usub_ord_bond_amt ,@prod_grp_cd
)

		
Declare @LinkCnt integer

Select @LinkCnt = isNull(count(Masterid), 0) From APW_DH_HF_LINK Where co_prev_insp_no = @co_prev_insp_no and seq = @seq

IF @LinkCnt = 0 ----신규접수
Begin
	Declare @Office char(2) = ''
	Select @Office = isNull(Office, '') From HF_AllocRegEub Where Reg = SubString(@lawco_dong_cd, 1, 5) 

	INSERT INTO APW_DH_HF_LINK(
		  IsProcess, Mgr_Code, co_prev_insp_no, seq, cancel_yn, cust_no, applcant_nm, mort_addr_kind_dvcd
		, mort_zip_cd, mort_zipaddr, mort_dtladdr, lawco_dong_cd, mort_st_stnm_addr_cd, mort_st_dtladdr
		, own_pers_nm, house_dvcd, mort_rsrch_kind_cd
		, org_nm				-- 기관명(은행명)	
		, duty_brcd_nm			-- 의뢰부점명		
		, duty_emp_nm			-- 의뢰자명		
		, duty_tel_no			-- 의뢰자연락처									
		, applcant_tel_no		-- 신청인(채무자)전화번호
		, applcant_mobile		-- 신청인(채무자)핸드폰
		, applcant_zip_cd		-- 신청인우편번호
		, expect_judge_amt		-- 예상감정금액(신청인희망금액)
		, fee_brd_cd			-- 수수료고객부담여부                                  
		, req_dy				-- 신청일자(등록일자)
		, repot_dlv_hope_dy		-- 보고서교부희망일자
		, prod_cd_nm			-- 대출종류명
		, req_amt				-- 신청금액
		, hold_term_cd_nm		-- 거치기간
		, tot_room_cnt			-- 총방수
		, rent_room_cnt			-- 임대방수
		, rent_amt				-- 임대보증금
		, usub_ord_bond_amt		-- 선순위채권금액
		, prod_grp_cd           -- 상품그룹구분코드 추가 (코드표6 참조) 20140922 (작성자 : 김학인)
		, AllocOffice           -- 본지사 자동배정.(2019-02-18 add)
		--, acpt_no               -- 2018-12-30 공사 접수번호  
	)
	VALUES( 
			0 , @Mgr_Code, @co_prev_insp_no, @seq, @cancel_yn, @cust_no, @applcant_nm, @mort_addr_kind_dvcd
			, @mort_zip_cd, @mort_zipaddr, @mort_dtladdr, @lawco_dong_cd, @mort_st_stnm_addr_cd, @mort_st_dtladdr
			, @own_pers_nm, @house_dvcd, @mort_rsrch_kind_cd
			, @org_nm				-- 기관명(은행명)	
			, @duty_brcd_nm			-- 의뢰부점명		
			, @duty_emp_nm			-- 의뢰자명		
			, @duty_tel_no			-- 의뢰자연락처									
			, @applcant_tel_no		-- 신청인(채무자)전화번호
			, @applcant_mobile		-- 신청인(채무자)핸드폰
			, @applcant_zip_cd		-- 신청인우편번호
			, @expect_judge_amt		-- 예상감정금액(신청인희망금액)
			, @fee_brd_cd			-- 수수료고객부담여부                                
			, @req_dy				-- 신청일자(등록일자)
			, @repot_dlv_hope_dy	-- 보고서교부희망일자
			, @prod_cd_nm			-- 대출종류명
			, @req_amt				-- 신청금액
			, @hold_term_cd_nm		-- 거치기간
			, @tot_room_cnt			-- 총방수
			, @rent_room_cnt		-- 임대방수
			, @rent_amt				-- 임대보증금
			, @usub_ord_bond_amt	-- 선순위채권금액
			, @prod_grp_cd          -- 상품그룹구분코드 추가 (코드표6 참조) 20140922 (작성자 : 김학인)
			, @Office               -- 본지사 자동배정.(2019-02-18 add)
			--, 0            -- 2018-12-30 공사 접수번호   							
	)

	INSERT INTO APW_DH_HF_LINK_Master(
		  IsProcess, Mgr_Code, co_prev_insp_no, seq, cancel_yn, cust_no, applcant_nm, mort_addr_kind_dvcd
		, mort_zip_cd, mort_zipaddr, mort_dtladdr, lawco_dong_cd, mort_st_stnm_addr_cd, mort_st_dtladdr
		, own_pers_nm, house_dvcd, mort_rsrch_kind_cd
		, org_nm				-- 기관명(은행명)	
		, duty_brcd_nm			-- 의뢰부점명		
		, duty_emp_nm			-- 의뢰자명		
		, duty_tel_no			-- 의뢰자연락처									
		, applcant_tel_no		-- 신청인(채무자)전화번호
		, applcant_mobile		-- 신청인(채무자)핸드폰
		, applcant_zip_cd		-- 신청인우편번호
		, expect_judge_amt		-- 예상감정금액(신청인희망금액)
		, fee_brd_cd			-- 수수료고객부담여부                                  
		, req_dy				-- 신청일자(등록일자)
		, repot_dlv_hope_dy		-- 보고서교부희망일자
		, prod_cd_nm			-- 대출종류명
		, req_amt				-- 신청금액
		, hold_term_cd_nm		-- 거치기간
		, tot_room_cnt			-- 총방수
		, rent_room_cnt			-- 임대방수
		, rent_amt				-- 임대보증금
		, usub_ord_bond_amt		-- 선순위채권금액
		, prod_grp_cd           -- 상품그룹구분코드 추가 (코드표6 참조) 20140922 (작성자 : 김학인)
		, AllocOffice           -- 본지사 자동배정.(2019-02-18 add)
		--, acpt_no               -- 2018-12-30 공사 접수번호  
	)
	VALUES( 
			0 , @Mgr_Code, @co_prev_insp_no, @seq, @cancel_yn, @cust_no, @applcant_nm, @mort_addr_kind_dvcd
			, @mort_zip_cd, @mort_zipaddr, @mort_dtladdr, @lawco_dong_cd, @mort_st_stnm_addr_cd, @mort_st_dtladdr
			, @own_pers_nm, @house_dvcd, @mort_rsrch_kind_cd
			, @org_nm				-- 기관명(은행명)	
			, @duty_brcd_nm			-- 의뢰부점명		
			, @duty_emp_nm			-- 의뢰자명		
			, @duty_tel_no			-- 의뢰자연락처									
			, @applcant_tel_no		-- 신청인(채무자)전화번호
			, @applcant_mobile		-- 신청인(채무자)핸드폰
			, @applcant_zip_cd		-- 신청인우편번호
			, @expect_judge_amt		-- 예상감정금액(신청인희망금액)
			, @fee_brd_cd			-- 수수료고객부담여부                                
			, @req_dy				-- 신청일자(등록일자)
			, @repot_dlv_hope_dy	-- 보고서교부희망일자
			, @prod_cd_nm			-- 대출종류명
			, @req_amt				-- 신청금액
			, @hold_term_cd_nm		-- 거치기간
			, @tot_room_cnt			-- 총방수
			, @rent_room_cnt		-- 임대방수
			, @rent_amt				-- 임대보증금
			, @usub_ord_bond_amt	-- 선순위채권금액
			, @prod_grp_cd          -- 상품그룹구분코드 추가 (코드표6 참조) 20140922 (작성자 : 김학인)
			, @Office               -- 본지사 자동배정.(2019-02-18 add)
			--, 0            -- 2018-12-30 공사 접수번호   							
	)


End
Else ----신규접수 아님..
Begin
	UPDATE APW_DH_HF_LINK
	SET
		  IsProcess = Case When @cancel_yn = 'R' Then 0 Else IsProcess End
		, Mgr_Code = case When ( @Mgr_Code is Null) or (@Mgr_Code = Mgr_Code) Then Mgr_Code Else @Mgr_Code End
		, co_prev_insp_no = Case When (@co_prev_insp_no is null) or (@co_prev_insp_no = co_prev_insp_no) Then co_prev_insp_no Else @co_prev_insp_no End 
		, seq = @seq 
		, cancel_yn = @cancel_yn
		, cust_no = @cust_no
		, applcant_nm = @applcant_nm
		, mort_addr_kind_dvcd = @mort_addr_kind_dvcd
		, mort_zip_cd = @mort_zip_cd
		, mort_zipaddr = @mort_zipaddr
		, mort_dtladdr = @mort_dtladdr
		, lawco_dong_cd = @lawco_dong_cd
		, mort_st_stnm_addr_cd = @mort_st_stnm_addr_cd
		, mort_st_dtladdr = @mort_st_dtladdr
		, own_pers_nm = @own_pers_nm
		, house_dvcd = @house_dvcd
		, mort_rsrch_kind_cd = @mort_rsrch_kind_cd

		, org_nm = @org_nm							-- 기관명(은행명)	
		, duty_brcd_nm = @duty_brcd_nm				-- 의뢰부점명		
		, duty_emp_nm = @duty_emp_nm				-- 의뢰자명		
		, duty_tel_no = @duty_tel_no				-- 의뢰자연락처						
		, applcant_tel_no = @applcant_tel_no		-- 신청인(채무자)전화번호
		, applcant_mobile = @applcant_mobile		-- 신청인(채무자)핸드폰
		, applcant_zip_cd = @applcant_zip_cd		-- 신청인우편번호
		, expect_judge_amt = @expect_judge_amt		-- 예상감정금액(신청인희망금액)
		, fee_brd_cd = @fee_brd_cd					-- 수수료고객부담여부                                
		, req_dy = @req_dy							-- 신청일자(등록일자)
		, repot_dlv_hope_dy = @repot_dlv_hope_dy	-- 보고서교부희망일자
		, prod_cd_nm = @prod_cd_nm					-- 대출종류명
		, req_amt = @req_amt						-- 신청금액
		, hold_term_cd_nm = @hold_term_cd_nm		-- 거치기간
		, tot_room_cnt = @tot_room_cnt				-- 총방수
		, rent_room_cnt = @rent_room_cnt			-- 임대방수
		, rent_amt = @rent_amt						-- 임대보증금
		, usub_ord_bond_amt = @usub_ord_bond_amt	-- 선순위채권금액
		, prod_grp_cd = @prod_grp_cd				-- 상품그룹구분코드 추가 (코드표6 참조) 20140922 (작성자 : 김학인)


		, assess_seq =  Case When @cancel_yn = 'R' then '005' Else assess_seq End --- 재전송 요청에 대한 처리.
		, WorkStatus =  Case When @cancel_yn = 'R' then  null Else WorkStatus End --- 재전송 요청에 대한 처리.
	WHERE co_prev_insp_no = @co_prev_insp_no and seq = @seq

End 
End

GO


