USE [Apworks]
GO

/****** Object:  StoredProcedure [dbo].[SP_KAPA_KHF_IU_SYNC]    Script Date: 2020-06-01 ���� 3:58:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_KAPA_KHF_IU_SYNC]
(  
	  @GUBUN CHAR(1)					-- �������� (1 : ���İ���, 9 : ��İ���)
	, @GUBUN_CODE CHAR(3)				-- (KHF : �ѱ����ñ������� �����ڸ�)
	, @SA_NO VARCHAR(20)				-- ����������ȣ
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


	-- �Ʒ��� ���翡�� ������ �������̺� ����
	, @Mgr_Code					char(6) = null			-- ����������ȣ
	, @co_prev_insp_no			varchar(10) = null		-- �����ɻ��ȣ	
	, @seq						varchar(5) = null		-- �Ƿڼ���(�������)
	, @cancel_yn				varchar(1) = null		-- ��ҿ���
	, @cust_no					varchar(9) = null		-- ���ñ������� ����ȣ
	, @applcant_nm				varchar(50) = null		-- ��û�θ�(ä����)
	, @mort_addr_kind_dvcd		varchar(1) = null		-- ���� �ּ� ���� �ڵ�
	, @mort_zip_cd				varchar(6) = null		-- �����������ȣ
	, @mort_zipaddr				varchar(100) = null		-- �����������ȣ�ּ�
	, @mort_dtladdr				varchar(100) = null		-- ���������ּ�
	, @lawco_dong_cd			varchar(10) = null		-- �������ڵ�
	, @mort_st_stnm_addr_cd		varchar(25) = null		-- ���� ���θ��ּ� ������ȣ
	, @mort_st_dtladdr			varchar(100) = null		-- ���� ���θ��ּ� ���ּ�
	, @own_pers_nm				varchar(50) = null		-- �����ڼ���
	, @house_dvcd				varchar(3) = null		-- ���������ڵ�
	, @mort_rsrch_kind_cd		varchar(1) = null		-- �㺸�����������ڵ�
	
	, @org_nm					varchar(30)	= null		-- �����(�����)	
	, @duty_brcd_nm				varchar(40)	= null		-- �Ƿں�����		
	, @duty_emp_nm				varchar(30)	= null		-- �Ƿ��ڸ�		
	, @duty_tel_no				varchar(20)	= null		-- �Ƿ��ڿ���ó	
	
	, @applcant_tel_no			varchar(12) = null		-- ��û��(ä����)��ȭ��ȣ
	, @applcant_mobile			varchar(12) = null		-- ��û��(ä����)�ڵ���
	, @applcant_zip_cd			varchar(6) = null		-- ��û�ο����ȣ

	, @expect_judge_amt			money = null			-- �������ݾ�(��û������ݾ�)
	, @fee_brd_cd				varchar(2) = null		-- ��������δ㿩��                                 
	, @req_dy					smalldatetime = null	-- ��û����(�������)
	, @repot_dlv_hope_dy		smalldatetime = null	-- ���������������
	, @prod_cd_nm				varchar(10) = null		-- ����������
	, @req_amt					money = null			-- ��û�ݾ�
	, @hold_term_cd_nm			varchar(4) = null		-- ��ġ�Ⱓ
	, @tot_room_cnt				int = null				-- �ѹ��
	, @rent_room_cnt			int = null				-- �Ӵ���
	, @rent_amt					money = null			-- �Ӵ뺸����
	, @usub_ord_bond_amt		money = null			-- ������ä�Ǳݾ�
	
	, @prod_grp_cd				varchar(2) = null		-- ��ǰ�׷챸���ڵ� (�ڵ�ǥ6 ����) �߰� Task Area 20140922 (�ۼ��� : ������)
)
AS 
BEGIN

--- �ϴ� �ӽ� table�� �� ����...
Insert into HF_KHFtmp( GUBUN ,GUBUN_CODE ,SA_NO ,ADDR ,CUSTNAME ,CUSTCHARGE ,CUSTDOCID ,REQUESTDATE ,TITLE ,BIGO ,GAM_CANCEL ,CustPhone ,OwnerName ,Debtor ,DebtrPhone ,DebtorHP ,Mgr_Code ,co_prev_insp_no ,seq ,cancel_yn ,cust_no ,applcant_nm ,mort_addr_kind_dvcd ,mort_zip_cd ,mort_zipaddr ,mort_dtladdr ,lawco_dong_cd ,mort_st_stnm_addr_cd ,mort_st_dtladdr ,own_pers_nm ,house_dvcd ,mort_rsrch_kind_cd ,org_nm ,duty_brcd_nm ,duty_emp_nm ,duty_tel_no ,applcant_tel_no ,applcant_mobile ,applcant_zip_cd ,expect_judge_amt ,fee_brd_cd ,req_dy ,repot_dlv_hope_dy ,prod_cd_nm ,req_amt ,hold_term_cd_nm ,tot_room_cnt ,rent_room_cnt ,rent_amt ,usub_ord_bond_amt ,prod_grp_cd)
values( @GUBUN ,@GUBUN_CODE ,@SA_NO ,@ADDR ,@CUSTNAME ,@CUSTCHARGE ,@CUSTDOCID ,@REQUESTDATE ,@TITLE ,@BIGO ,@GAM_CANCEL ,@CustPhone ,@OwnerName ,@Debtor ,@DebtrPhone ,@DebtorHP ,@Mgr_Code ,@co_prev_insp_no ,@seq ,@cancel_yn ,@cust_no ,@applcant_nm ,@mort_addr_kind_dvcd ,@mort_zip_cd ,@mort_zipaddr ,@mort_dtladdr ,@lawco_dong_cd ,@mort_st_stnm_addr_cd ,@mort_st_dtladdr ,@own_pers_nm ,@house_dvcd ,@mort_rsrch_kind_cd ,@org_nm ,@duty_brcd_nm ,@duty_emp_nm ,@duty_tel_no ,@applcant_tel_no ,@applcant_mobile ,@applcant_zip_cd ,@expect_judge_amt ,@fee_brd_cd ,@req_dy ,@repot_dlv_hope_dy ,@prod_cd_nm ,@req_amt ,@hold_term_cd_nm ,@tot_room_cnt ,@rent_room_cnt ,@rent_amt ,@usub_ord_bond_amt ,@prod_grp_cd
)

		
Declare @LinkCnt integer

Select @LinkCnt = isNull(count(Masterid), 0) From APW_DH_HF_LINK Where co_prev_insp_no = @co_prev_insp_no and seq = @seq

IF @LinkCnt = 0 ----�ű�����
Begin
	Declare @Office char(2) = ''
	Select @Office = isNull(Office, '') From HF_AllocRegEub Where Reg = SubString(@lawco_dong_cd, 1, 5) 

	INSERT INTO APW_DH_HF_LINK(
		  IsProcess, Mgr_Code, co_prev_insp_no, seq, cancel_yn, cust_no, applcant_nm, mort_addr_kind_dvcd
		, mort_zip_cd, mort_zipaddr, mort_dtladdr, lawco_dong_cd, mort_st_stnm_addr_cd, mort_st_dtladdr
		, own_pers_nm, house_dvcd, mort_rsrch_kind_cd
		, org_nm				-- �����(�����)	
		, duty_brcd_nm			-- �Ƿں�����		
		, duty_emp_nm			-- �Ƿ��ڸ�		
		, duty_tel_no			-- �Ƿ��ڿ���ó									
		, applcant_tel_no		-- ��û��(ä����)��ȭ��ȣ
		, applcant_mobile		-- ��û��(ä����)�ڵ���
		, applcant_zip_cd		-- ��û�ο����ȣ
		, expect_judge_amt		-- �������ݾ�(��û������ݾ�)
		, fee_brd_cd			-- ��������δ㿩��                                  
		, req_dy				-- ��û����(�������)
		, repot_dlv_hope_dy		-- ���������������
		, prod_cd_nm			-- ����������
		, req_amt				-- ��û�ݾ�
		, hold_term_cd_nm		-- ��ġ�Ⱓ
		, tot_room_cnt			-- �ѹ��
		, rent_room_cnt			-- �Ӵ���
		, rent_amt				-- �Ӵ뺸����
		, usub_ord_bond_amt		-- ������ä�Ǳݾ�
		, prod_grp_cd           -- ��ǰ�׷챸���ڵ� �߰� (�ڵ�ǥ6 ����) 20140922 (�ۼ��� : ������)
		, AllocOffice           -- ������ �ڵ�����.(2019-02-18 add)
		--, acpt_no               -- 2018-12-30 ���� ������ȣ  
	)
	VALUES( 
			0 , @Mgr_Code, @co_prev_insp_no, @seq, @cancel_yn, @cust_no, @applcant_nm, @mort_addr_kind_dvcd
			, @mort_zip_cd, @mort_zipaddr, @mort_dtladdr, @lawco_dong_cd, @mort_st_stnm_addr_cd, @mort_st_dtladdr
			, @own_pers_nm, @house_dvcd, @mort_rsrch_kind_cd
			, @org_nm				-- �����(�����)	
			, @duty_brcd_nm			-- �Ƿں�����		
			, @duty_emp_nm			-- �Ƿ��ڸ�		
			, @duty_tel_no			-- �Ƿ��ڿ���ó									
			, @applcant_tel_no		-- ��û��(ä����)��ȭ��ȣ
			, @applcant_mobile		-- ��û��(ä����)�ڵ���
			, @applcant_zip_cd		-- ��û�ο����ȣ
			, @expect_judge_amt		-- �������ݾ�(��û������ݾ�)
			, @fee_brd_cd			-- ��������δ㿩��                                
			, @req_dy				-- ��û����(�������)
			, @repot_dlv_hope_dy	-- ���������������
			, @prod_cd_nm			-- ����������
			, @req_amt				-- ��û�ݾ�
			, @hold_term_cd_nm		-- ��ġ�Ⱓ
			, @tot_room_cnt			-- �ѹ��
			, @rent_room_cnt		-- �Ӵ���
			, @rent_amt				-- �Ӵ뺸����
			, @usub_ord_bond_amt	-- ������ä�Ǳݾ�
			, @prod_grp_cd          -- ��ǰ�׷챸���ڵ� �߰� (�ڵ�ǥ6 ����) 20140922 (�ۼ��� : ������)
			, @Office               -- ������ �ڵ�����.(2019-02-18 add)
			--, 0            -- 2018-12-30 ���� ������ȣ   							
	)

	INSERT INTO APW_DH_HF_LINK_Master(
		  IsProcess, Mgr_Code, co_prev_insp_no, seq, cancel_yn, cust_no, applcant_nm, mort_addr_kind_dvcd
		, mort_zip_cd, mort_zipaddr, mort_dtladdr, lawco_dong_cd, mort_st_stnm_addr_cd, mort_st_dtladdr
		, own_pers_nm, house_dvcd, mort_rsrch_kind_cd
		, org_nm				-- �����(�����)	
		, duty_brcd_nm			-- �Ƿں�����		
		, duty_emp_nm			-- �Ƿ��ڸ�		
		, duty_tel_no			-- �Ƿ��ڿ���ó									
		, applcant_tel_no		-- ��û��(ä����)��ȭ��ȣ
		, applcant_mobile		-- ��û��(ä����)�ڵ���
		, applcant_zip_cd		-- ��û�ο����ȣ
		, expect_judge_amt		-- �������ݾ�(��û������ݾ�)
		, fee_brd_cd			-- ��������δ㿩��                                  
		, req_dy				-- ��û����(�������)
		, repot_dlv_hope_dy		-- ���������������
		, prod_cd_nm			-- ����������
		, req_amt				-- ��û�ݾ�
		, hold_term_cd_nm		-- ��ġ�Ⱓ
		, tot_room_cnt			-- �ѹ��
		, rent_room_cnt			-- �Ӵ���
		, rent_amt				-- �Ӵ뺸����
		, usub_ord_bond_amt		-- ������ä�Ǳݾ�
		, prod_grp_cd           -- ��ǰ�׷챸���ڵ� �߰� (�ڵ�ǥ6 ����) 20140922 (�ۼ��� : ������)
		, AllocOffice           -- ������ �ڵ�����.(2019-02-18 add)
		--, acpt_no               -- 2018-12-30 ���� ������ȣ  
	)
	VALUES( 
			0 , @Mgr_Code, @co_prev_insp_no, @seq, @cancel_yn, @cust_no, @applcant_nm, @mort_addr_kind_dvcd
			, @mort_zip_cd, @mort_zipaddr, @mort_dtladdr, @lawco_dong_cd, @mort_st_stnm_addr_cd, @mort_st_dtladdr
			, @own_pers_nm, @house_dvcd, @mort_rsrch_kind_cd
			, @org_nm				-- �����(�����)	
			, @duty_brcd_nm			-- �Ƿں�����		
			, @duty_emp_nm			-- �Ƿ��ڸ�		
			, @duty_tel_no			-- �Ƿ��ڿ���ó									
			, @applcant_tel_no		-- ��û��(ä����)��ȭ��ȣ
			, @applcant_mobile		-- ��û��(ä����)�ڵ���
			, @applcant_zip_cd		-- ��û�ο����ȣ
			, @expect_judge_amt		-- �������ݾ�(��û������ݾ�)
			, @fee_brd_cd			-- ��������δ㿩��                                
			, @req_dy				-- ��û����(�������)
			, @repot_dlv_hope_dy	-- ���������������
			, @prod_cd_nm			-- ����������
			, @req_amt				-- ��û�ݾ�
			, @hold_term_cd_nm		-- ��ġ�Ⱓ
			, @tot_room_cnt			-- �ѹ��
			, @rent_room_cnt		-- �Ӵ���
			, @rent_amt				-- �Ӵ뺸����
			, @usub_ord_bond_amt	-- ������ä�Ǳݾ�
			, @prod_grp_cd          -- ��ǰ�׷챸���ڵ� �߰� (�ڵ�ǥ6 ����) 20140922 (�ۼ��� : ������)
			, @Office               -- ������ �ڵ�����.(2019-02-18 add)
			--, 0            -- 2018-12-30 ���� ������ȣ   							
	)


End
Else ----�ű����� �ƴ�..
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

		, org_nm = @org_nm							-- �����(�����)	
		, duty_brcd_nm = @duty_brcd_nm				-- �Ƿں�����		
		, duty_emp_nm = @duty_emp_nm				-- �Ƿ��ڸ�		
		, duty_tel_no = @duty_tel_no				-- �Ƿ��ڿ���ó						
		, applcant_tel_no = @applcant_tel_no		-- ��û��(ä����)��ȭ��ȣ
		, applcant_mobile = @applcant_mobile		-- ��û��(ä����)�ڵ���
		, applcant_zip_cd = @applcant_zip_cd		-- ��û�ο����ȣ
		, expect_judge_amt = @expect_judge_amt		-- �������ݾ�(��û������ݾ�)
		, fee_brd_cd = @fee_brd_cd					-- ��������δ㿩��                                
		, req_dy = @req_dy							-- ��û����(�������)
		, repot_dlv_hope_dy = @repot_dlv_hope_dy	-- ���������������
		, prod_cd_nm = @prod_cd_nm					-- ����������
		, req_amt = @req_amt						-- ��û�ݾ�
		, hold_term_cd_nm = @hold_term_cd_nm		-- ��ġ�Ⱓ
		, tot_room_cnt = @tot_room_cnt				-- �ѹ��
		, rent_room_cnt = @rent_room_cnt			-- �Ӵ���
		, rent_amt = @rent_amt						-- �Ӵ뺸����
		, usub_ord_bond_amt = @usub_ord_bond_amt	-- ������ä�Ǳݾ�
		, prod_grp_cd = @prod_grp_cd				-- ��ǰ�׷챸���ڵ� �߰� (�ڵ�ǥ6 ����) 20140922 (�ۼ��� : ������)


		, assess_seq =  Case When @cancel_yn = 'R' then '005' Else assess_seq End --- ������ ��û�� ���� ó��.
		, WorkStatus =  Case When @cancel_yn = 'R' then  null Else WorkStatus End --- ������ ��û�� ���� ó��.
	WHERE co_prev_insp_no = @co_prev_insp_no and seq = @seq

End 
End

GO


