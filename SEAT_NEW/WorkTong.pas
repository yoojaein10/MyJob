unit WorkTong;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, AdvUtil, Data.DB,
  Data.Win.ADODB, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, RzButton,
  cxLabel, cxSplitter, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.WinXCtrls,
  frxClass, frxDBSet, tmsAdvGridExcel, cxCurrencyEdit,Math;

type
  TForm4 = class(TForm)
    qry1: TADOQuery;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    pnl1: TPanel;
    Sheet_Pung_Main: TAdvStringGrid;
    pnl2: TPanel;
    Sheet_Pung_Detail: TAdvStringGrid;
    pnl3: TPanel;
    grp1: TGroupBox;
    f_Date: TcxDateEdit;
    Cbo_Gbn: TComboBox;
    Cbo_Manager: TComboBox;
    cxLabel2: TcxLabel;
    btn_S: TRzBitBtn;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Sheet_Emp_Main: TAdvStringGrid;
    Panel5: TPanel;
    Sheet_Emp_Detail: TAdvStringGrid;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Emp_Date: TcxDateEdit;
    Cbo_Emp_Gubun: TComboBox;
    Cbo_Emp: TComboBox;
    cxLabel4: TcxLabel;
    Btn_EmpS: TRzBitBtn;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    RelativePanel1: TRelativePanel;
    lb_filter1: TLabel;
    lb_gun: TLabel;
    Label2: TLabel;
    lb_time: TLabel;
    lb_timecal: TLabel;
    lb_gun1: TLabel;
    RelativePanel2: TRelativePanel;
    lb_filterp: TLabel;
    lb_gunp: TLabel;
    Label4: TLabel;
    lb_timep: TLabel;
    lb_timecalp: TLabel;
    Label7: TLabel;
    cxTabSheet3: TcxTabSheet;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    StartDATE: TcxDateEdit;
    cxLabel7: TcxLabel;
    btn_STong: TRzBitBtn;
    EndDATE: TcxDateEdit;
    Panel8: TPanel;
    Grid_Tong: TAdvStringGrid;
    Qry_tong: TADOQuery;
    Panel9: TPanel;
    Panel10: TPanel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    SaveDialog1: TSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    btn_Excel: TRzBitBtn;
    btn_print: TRzBitBtn;
    AdvGridExcelIO2: TAdvGridExcelIO;
    Button1: TButton;
    cxTabSheet4: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    grid_pung: TAdvStringGrid;
    grid_etc: TAdvStringGrid;
    qry_dtong: TADOQuery;
    Panel11: TPanel;
    cxLabel9: TcxLabel;
    Button2: TButton;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    edit_date: TcxTextEdit;
    edit_nam: TcxCurrencyEdit;
    edit_Snam: TcxCurrencyEdit;
    edit_SJiwon: TcxCurrencyEdit;
    edit_jiwon: TcxCurrencyEdit;
    edit_Spung: TcxCurrencyEdit;
    edit_pung: TcxCurrencyEdit;
    edit_Total: TcxCurrencyEdit;
    edit_Desk: TcxCurrencyEdit;
    edit_gun: TcxTextEdit;
    Panel12: TPanel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    lb_DESKcount: TcxLabel;
    lb_DESKCOST: TcxLabel;
    cxLabel20: TcxLabel;
    lb_JUBCount: TcxLabel;
    lb_JUBCost: TcxLabel;
    cxLabel23: TcxLabel;
    lb_SendCount: TcxLabel;
    lb_SendCost: TcxLabel;
    cxLabel26: TcxLabel;
    lb_SimCount: TcxLabel;
    lb_SimCost: TcxLabel;
    cxLabel29: TcxLabel;
    lb_SijoCount: TcxLabel;
    lb_SijoCost: TcxLabel;
    cxLabel32: TcxLabel;
    lb_YackCount: TcxLabel;
    lb_YackCost: TcxLabel;
    cxLabel35: TcxLabel;
    lb_TotCost: TcxLabel;
    lb_date: TcxLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Btn_Edit: TRzBitBtn;
    cxTabSheet7: TcxTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    GroupBox3: TGroupBox;
    DocSdate: TcxDateEdit;
    cxLabel21: TcxLabel;
    btn_DocSerch: TRzBitBtn;
    DocEdate: TcxDateEdit;
    edit_docid: TEdit;
    DocGrid_Main: TAdvStringGrid;
    DocGrid_Detail: TAdvStringGrid;
    cxLabel22: TcxLabel;
    Panel17: TPanel;
    btn_docExcel: TRzBitBtn;
    AdvGridExcelIO3: TAdvGridExcelIO;
    Qry_tongManager: TStringField;
    Qry_tongWork1: TFloatField;
    Qry_tongWork2: TFloatField;
    Qry_tongWork3: TFloatField;
    Qry_tongWork4: TFloatField;
    Qry_tongWork5: TFloatField;
    Qry_tongWork6: TFloatField;
    Qry_tongWork7: TFloatField;
    Qry_tongTs_Cnt: TIntegerField;
    Qry_tongJs_Cnt: TIntegerField;
    Qry_tongSend_Cnt: TIntegerField;
    Qry_tongSim_Cnt: TIntegerField;
    Qry_tongSim2_Cnt: TIntegerField;
    Qry_tongYS_Cnt: TIntegerField;
    Qry_tongWork1_Price: TFloatField;
    Qry_tongWork2_Price: TFloatField;
    Qry_tongWork3_Price: TFloatField;
    Qry_tongWork4_Price: TFloatField;
    Qry_tongWork5_Price: TFloatField;
    Qry_tongWork6_Price: TFloatField;
    Qry_tongWork7_Price: TFloatField;
    Qry_tongTs_Cnt_Price: TBCDField;
    Qry_tongJs_Cnt_Price: TBCDField;
    Qry_tongSend_Cnt_Price: TBCDField;
    Qry_tongSim_Cnt_Price: TBCDField;
    Qry_tongSim2_Cnt_Price: TBCDField;
    Qry_tongYS_Cnt_Price: TBCDField;
    Qry_tongFix_Price: TBCDField;
    AdvGridExcelIO4: TAdvGridExcelIO;
    btn_ExcelDetail: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Sheet_Pung_MainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Cbo_GbnChange(Sender: TObject);
    procedure Sheet_Pung_MainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Sheet_Pung_DetailGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure f_datePropertiesChange(Sender: TObject);
    procedure btn_SClick(Sender: TObject);
    procedure Btn_EmpSClick(Sender: TObject);
    procedure Sheet_Emp_MainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Sheet_Emp_MainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Sheet_Emp_DetailGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Cbo_Emp_GubunChange(Sender: TObject);
    procedure Emp_DatePropertiesChange(Sender: TObject);
    procedure Sheet_Pung_DetailFilterSelect(Sender: TObject; Column,
      ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
    procedure Sheet_Pung_DetailGetColumnFilter(Sender: TObject; Column: Integer;
      Filter: TStrings);
    procedure Sheet_Emp_DetailGetColumnFilter(Sender: TObject; Column: Integer;
      Filter: TStrings);
    procedure Sheet_Emp_DetailFilterSelect(Sender: TObject; Column,
      ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
    procedure btn_STongClick(Sender: TObject);
    procedure Grid_TongGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure grid_pungGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid_etcGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Btn_EditClick(Sender: TObject);
    procedure btn_DocSerchClick(Sender: TObject);
    procedure DocGrid_MainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btn_docExcelClick(Sender: TObject);
    procedure edit_docidKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ExcelDetailClick(Sender: TObject);
  private
    { Private declarations }
    procedure Do_init();
    procedure Manager();
    procedure Emp();
    procedure Sheet_Set(Gubun : integer);
    procedure Sheet_Set_Emp(Gubun : Integer);
    procedure Sheet(Gubun : integer);
    procedure Sheet_Emp(Gubun : integer);
    procedure Detail(R, C, Gubun : Integer);
    procedure Emp_Detail(R, C, Gubun : Integer);
    function CalcTime(WorkHour : integer) : string;
    function CalculTime(showtime: String): Integer;
    procedure do_CalculFilter;
    procedure do_EMP_CalculFilter;
    procedure do_initTongGrid;
    procedure do_GETWORKTONG;
    procedure INIT_PUNGGRID;
    procedure do_GetPUNG;

    procedure INIT_ETCGRID;
    procedure do_GetETC;
    procedure do_CalETC;

    procedure Init_doc;
    procedure do_getDocMST;
    procedure do_getDocDet(Docid : String);

  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses
 Main, Workmagam;

{$R *.dfm}



procedure TForm4.FormActivate(Sender: TObject);
begin
 // INIT_PUNGGRID;
 // do_GetPUNG;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
   if (MyName = '이수영') or (MyName = '임정미') or (MyName = '이일우') then
   begin
     Button1.Visible := True;
   end;
   qry1.Connection := Main.Form1.AdoCon;

   Do_init;


   if (MyTeam = 'J1') or  (MyTeam = 'J2') then
   begin
     RelativePanel1.Visible := True;
     RelativePanel2.Visible := True;
     Btn_Edit.Visible := True;
   end;
   StartDATE.Date := Now;
//   EndDATE.Date := Now;
end;

procedure TForm4.Do_init;
begin

  f_date.Date := Now - 1;
  Emp_Date.Date := Now - 1;
  DocSdate.Date := Now -30;
  DocEdate.Date := Now;

  with Sheet_Pung_Main do
  begin

    ColCount := 4;

    Cells[0 ,0] := '평가사';
    Cells[1 ,0] := '년총합';
    Cells[2 ,0] := '월총합';
    Cells[3 ,0] := '일총합';

    ColWidths[0] := 80;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 100;

  end;

  with Sheet_Emp_Main do
  begin

    ColCount := 5;

    Cells[0 ,0] := '구분';
    Cells[1 ,0] := '평가담당자';
    Cells[2 ,0] := '년총합';
    Cells[3 ,0] := '월총합';
    Cells[4 ,0] := '일총합';

    ColWidths[0] := 80;
    ColWidths[1] := 80;
    ColWidths[2] := 100;
    ColWidths[3] := 100;
    ColWidths[4] := 100;

  end;

  Manager;
  Emp;

  Cbo_Gbn.ItemIndex := 0;
  Cbo_Emp_Gubun.ItemIndex := 0;

end;

procedure TForm4.do_initTongGrid;
begin
 //
 Grid_Tong.Clear;
 with Grid_Tong do
 begin
   ColCount := 29;
   Cells[0, 0] := '유치자';
   Cells[1, 0] := '남직원시간';
   Cells[2, 0] := '남직원금액';
   Cells[3, 0] := '수습남시간';
   Cells[4, 0] := '수습남금액';
   Cells[5, 0] := '탁상시간';
   Cells[6, 0] := '탁상금액';

   Cells[8, 0] := '지원금액';

   Cells[9, 0] := '수습지원시간';
   Cells[10, 0] := '수습지원금액';


   Cells[11, 0] := '소속시간';
   Cells[12, 0] := '소속금액';
   Cells[13, 0] := '수습시간';
   Cells[14, 0] := '수습금액';
   Cells[15, 0] := '탁상접수건수';
   Cells[16, 0] := '탁상접수금액';
   Cells[17, 0] := '접수건수';
   Cells[18, 0] := '접수금액';
   Cells[19, 0] := '발송건수';
   Cells[20, 0] := '발송금액';
   Cells[21, 0] := '심사건수';
   Cells[22, 0] := '심사금액';
   Cells[23, 0] := '시조위건수';
   Cells[24, 0] := '시조위금액';
   Cells[25, 0] := '약식건수';
   Cells[26, 0] := '약식금액';
   Cells[27, 0] := '월부담금';
   Cells[28, 0] := '합계';

   ColWidths[0] := 120;

   if (StartDATE.Text >= '2020-07-01') then
   begin

    Cells[7, 0] := '지원건수';
    Cells[5, 0] := '탁상건수';

    ColWidths[9] := 0;
    ColWidths[10] := 0;

   end
   else
   begin

    Cells[7, 0] := '지원시간';
    Cells[5, 0] := '탁상건수';

    ColWidths[9] := 80;
    ColWidths[10] := 80;

   end;

 end;
end;

procedure TForm4.edit_docidKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin

    Init_doc;
    do_getDocMST;

  end;

end;

procedure TForm4.Sheet_Set(Gubun: integer);
begin

  Sheet_Pung_Detail.Clear;

  with Sheet_Pung_Detail do
  Begin

    ColCount := 13;

    Cells[0 ,0] := '감정서번호';
    Cells[1 ,0] := '구분';
    Cells[2 ,0] := '담당자';
    Cells[3 ,0] := '처리자구분';
    Cells[4 ,0] := '유치자';
    Cells[5 ,0] := '업무날짜';
    Cells[6 ,0] := '진행상태';
    Cells[7 ,0] := '시간';
    Cells[8 ,0] := '거래처명';
    Cells[9 ,0] := '주소';
    Cells[10 ,0] := 'time';
    Cells[11 ,0] := 'timecal';

    Cells[12 ,0] := '입사일';

    ColWidths[0] := 140;
    ColWidths[1] := 90;
    ColWidths[2] := 60;
    ColWidths[3] := 80;
    ColWidths[4] := 60;
    ColWidths[5] := 80;

    if Gubun = 2 then
    Begin

      ColWidths[6] := 0;

    End
    Else
    begin

      ColWidths[6] := 120;

    End;

    ColWidths[7] := 60;
    ColWidths[8] := 200;
    ColWidths[9] := 200;
    ColWidths[10] := 50;
    ColWidths[11] := 100;
    ColWidths[12] := 100;

  End;

end;

procedure TForm4.Sheet_Set_Emp(Gubun: Integer);
begin

   Sheet_Emp_Detail.Clear;

  with Sheet_Emp_Detail do
  Begin

    ColCount := 12;

    Cells[0 ,0] := '감정서번호';
    Cells[1 ,0] := '구분';
    Cells[2 ,0] := '담당자';
    Cells[3 ,0] := '유치자';
    Cells[4 ,0] := '업무날짜';
    Cells[5 ,0] := '진행상태';
    Cells[6 ,0] := '시간';
    Cells[7 ,0] := '거래처명';
    Cells[8 ,0] := '주소';
    Cells[9 ,0] := 'time';
    Cells[10 ,0] := 'timecal';
    Cells[11 ,0] := '업무내용';

    ColWidths[0] := 140;
    ColWidths[1] := 90;
    ColWidths[2] := 60;
    ColWidths[3] := 60;
    ColWidths[4] := 80;

    if Gubun = 2 then
    Begin

      ColWidths[5] := 0;

    End
    Else
    begin

      ColWidths[5] := 120;

    End;

    ColWidths[6] := 60;
    ColWidths[7] := 200;
    ColWidths[8] := 200;
    ColWidths[9] := 80;
    ColWidths[10] := 80;
    ColWidths[11] := 200;

  End;

end;

procedure TForm4.btn_printClick(Sender: TObject);
begin
   frxReport1.LoadFromFile('\\server\data1\전산\SEAT\WorkTong.fr3');
//   frxReport1.LoadFromFile('D:\Delphi10\SEAT\WorkTong.fr3');
   frxReport1.ShowReport(True);
end;

procedure TForm4.btn_ExcelClick(Sender: TObject);
begin
 if SaveDialog1.Execute then
    begin
      AdvGridExcelIO1.XLSExport(SaveDialog1.FileName,'업무일지통계');
    end;
end;

procedure TForm4.btn_SClick(Sender: TObject);
var
  Gubun : integer;
begin

  if Cbo_Gbn.Text = '평가업무' then
  begin

    Gubun := 1;

  end
  Else if Cbo_Gbn.Text = '탁상' then
  begin

    Gubun := 2;

  end
  else if Cbo_Gbn.Text = '업무지원팀' then
  Begin

    Gubun := 3;

  end
  else
  Begin

    Gubun := 4;

  end;

  Sheet(Gubun);
  Sheet_Pung_Detail.Clear;

end;

procedure TForm4.btn_STongClick(Sender: TObject);
begin
  do_initTongGrid;
  do_GETWORKTONG;
  //이일우 주석 돈주면 풀어줌
   INIT_PUNGGRID;
   do_GetPUNG;

   INIT_ETCGRID;
   do_GetETC;
   do_CalETC;

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
    begin
      AdvGridExcelIO2.XLSExport(SaveDialog1.FileName,'업무통계자세히');
    end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  INIT_PUNGGRID;
  do_GetPUNG;
end;

procedure TForm4.btn_docExcelClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    AdvGridExcelIO3.XLSExport(SaveDialog1.FileName,'감정서별통계 ');
  end;
end;

procedure TForm4.btn_DocSerchClick(Sender: TObject);
begin
 Init_doc;
 do_getDocMST;
end;

procedure TForm4.Btn_EditClick(Sender: TObject);
begin
   //
  Workmagam.Form6.Show;
end;

procedure TForm4.Btn_EmpSClick(Sender: TObject);
var
  Gubun : integer;
begin

  if Cbo_Emp_Gubun.Text = '평가업무' then
  begin

    Gubun := 1;

  end
  Else if Cbo_Emp_Gubun.Text = '탁상' then
  begin

    Gubun := 2;

  end
  else if Cbo_Emp_Gubun.Text = '업무지원팀' then
  Begin

    Gubun := 3;

  end
  else
  Begin

    Gubun := 4;

  end;

  Sheet_Emp(Gubun);
  Sheet_Emp_Detail.Clear;

end;


procedure TForm4.Sheet(Gubun: integer);
var
    i : Integer;
begin

  with qry1 do
  begin

    SQL.Clear;
    Parameters.Clear;
    SQL.Text := 'Exec SP_YJI_ManDayWork_stats :Flag, :S_Date, :Manager, :Gubun ';

    Parameters.ParamByName('flag').Value := 'Search';
    Parameters.ParamByName('S_Date').Value := f_date.Text;

    if Cbo_Manager.Text = '전체' then
    begin

      Parameters.ParamByName('Manager').Value := '';

    end
    else
    begin

      Parameters.ParamByName('Manager').Value := Cbo_Manager.Text;

    end;

    Parameters.ParamByName('Gubun').Value := Gubun;

    Open;

    with Sheet_Pung_Main do
    Begin

      RowCount := RecordCount + 1;

      Cells[3, 0] := f_date.Text;

      for i := 1 to RecordCount do
      begin

        Cells[0, i] := FieldByName('Manager').AsString;
        Cells[1, i] := CalcTime(FieldByName('Y_WorkHour').AsInteger) + ' / ('+IntToStr(FieldByName('Y_Counts').AsInteger)+')';
        Cells[2, i] := CalcTime(FieldByName('M_WorkHour').AsInteger)+ ' / ('+IntToStr(FieldByName('M_Counts').AsInteger)+')';
        Cells[3, i] := CalcTime(FieldByName('D_WorkHour').AsInteger)+ ' / ('+IntToStr(FieldByName('D_Counts').AsInteger)+')';

        Next;

      end;

    End;

  end;

  qry1.Close;

end;

procedure TForm4.Sheet_Emp(Gubun: integer);
var
    i, E_Max, P_Max : Integer;
begin

  with qry1 do
  begin

    SQL.Clear;
    Parameters.Clear;
    SQL.Text := 'Exec SP_YJI_ManDayWork2_stats :Flag, :S_Date, :Emp, :Gubun ';

    Parameters.ParamByName('flag').Value := 'Search';
    Parameters.ParamByName('S_Date').Value := Emp_Date.Text;

    if Cbo_Emp.Text = '전체' then
    begin

      Parameters.ParamByName('Emp').Value := '';

    end
    else
    begin

      Parameters.ParamByName('Emp').Value := Cbo_Emp.Text;

    end;

    Parameters.ParamByName('Gubun').Value := Gubun;

    Open;

    with Sheet_Emp_Main do
    Begin

      RowCount := RecordCount + 1;

      Cells[4, 0] := Emp_Date.Text;

      for i := 1 to RecordCount do
      begin

        if (FieldByName('Ugrade').AsString = '직원') then
        begin

          MergeCells(0, 1, 1, i);

          E_Max := i;

        end
        else if (FieldByName('Ugrade').AsString = '수습평가사') then
        begin

          MergeCells(0, E_Max + 1, 1, i - E_Max);

          P_Max := i;

        end
        else if (FieldByName('Ugrade').AsString = '소속평가사') then
        begin

          MergeCells(0, P_Max + 1, 1, i - P_Max);

        end;

        Cells[0, i] := FieldByName('Ugrade').AsString;
        Cells[1, i] := FieldByName('writeman').AsString;
        Cells[2, i] := CalcTime(FieldByName('Y_WorkHour').AsInteger);
        Cells[3, i] := CalcTime(FieldByName('M_WorkHour').AsInteger);
        Cells[4, i] := CalcTime(FieldByName('D_WorkHour').AsInteger);

        Next;

      end;

    End;

  end;

  qry1.Close;

end;

procedure TForm4.Detail(R, C, Gubun: Integer);
Var
    i : Integer;
begin
  /////////////여기에 추가할꺼야
  with qry1 do
  begin

    SQL.Clear;
    Parameters.Clear;
    SQL.Text := 'Exec SP_YJI_ManDayWork_stats :Flag, :S_Date, :Manager, :Gubun ';

    if Gubun = 2 then
    begin

      Parameters.ParamByName('flag').Value := 'Detail_Tk';

    end
    else
    Begin

      Parameters.ParamByName('flag').Value := 'Detail';

    end;

    if C = 1 then
    Begin

      // 년총합을 클릭 했을 때
      Parameters.ParamByName('S_Date').Value := Copy(f_date.Text, 1, 4);

    End
    else if C = 2 then
    begin

      // 월총합을 클릭 했을 때
      Parameters.ParamByName('S_Date').Value := Copy(f_date.Text, 1, 7);

    end
    else
    begin

      // 일총합을 클릭 했을 때
      Parameters.ParamByName('S_Date').Value := f_date.Text;

    end;

    Parameters.ParamByName('Manager').Value := Sheet_Pung_Main.Cells[0, R];
    Parameters.ParamByName('Gubun').Value := Gubun;

    Open;

    with Sheet_Pung_Detail do
    Begin

      RowCount := RecordCount + 1;

      for i := 1 to RecordCount do
      begin

        Cells[0, i] := FieldByName('Docid').AsString;
        Cells[1, i] := FieldByName('Gubun').AsString;
        Cells[2, i] := FieldByName('writeman').AsString;
        Cells[3, i] := FieldByName('Ugrade').AsString;
        Cells[4, i] := FieldByName('Manager').AsString;
        Cells[5, i] := FieldByName('WorkDate').AsString;

        if Gubun <> 2 then
        begin

          Cells[6, i] := FieldByName('Lstatus').AsString;

        end;

        Cells[7, i] := CalcTime(FieldByName('WorkHour').AsInteger);
        Cells[8, i] := FieldByName('CustName').AsString;
        Cells[9, i] := FieldByName('addr').AsString;
        Cells[10, i] := IntToStr(FieldByName('WorkHour').AsInteger);
        Cells[11, i] := IntToStr(FieldByName('WorkHour').AsInteger*13000);
        Cells[12, i] := FieldByName('insertdate').AsString;
        Next;

      end;

    End;

    qry1.Close;
    do_CalculFilter;
  end;

end;

procedure TForm4.DocGrid_MainDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  //
  if (ARow > 0) and (DocGrid_Main.Cells[0, ARow] <> '') then
  begin
    do_getDocDet(DocGrid_Main.Cells[0, ARow]);
  end;
end;

procedure TForm4.do_CalculFilter;
var
  Count, Workhour,workcal, gun: Integer;
begin
  Count := 0;
  Workhour := 0;
  gun := 0;
  workcal := 0;
  if Sheet_Pung_Detail.Cells[0, 1] = '' then Exit;
  if lb_filter1.Caption = '' then
  begin
    for Count := 1 to Sheet_Pung_Detail.RowCount -1 do
    begin
       Workhour := Workhour + StrToInt(Sheet_Pung_Detail.Cells[10, Count]);
       gun := gun+ 1;
       workcal := workcal +  StrToInt(Sheet_Pung_Detail.Cells[11, Count]);
    end;
  end
  else
  begin
    for Count := 1 to Sheet_Pung_Detail.RowCount -1 do
    begin
      if Sheet_Pung_Detail.Cells[3, Count]  = lb_filter1.Caption then
      begin
       Workhour := Workhour + StrToInt(Sheet_Pung_Detail.Cells[10, Count]);
       gun := gun+ 1;
       workcal := workcal +  StrToInt(Sheet_Pung_Detail.Cells[11, Count]);
      end;
    end;
  end;
  lb_gun.Caption := IntToStr(gun) + '건';
  lb_time.Caption := CalcTime(Workhour);
  lb_timecal.Caption := FormatFloat('###,###',workcal);

end;

procedure TForm4.do_CalETC;
var
  DESKCost, JEBCost, SENDCost, SIMCost, SIJOCost, YACKCost, Total : Integer;
begin
   if lb_DESKcount.Caption = '' then Exit;

   with qry_dtong do
   begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := ' Select Distinct b.Price Ts_Price, c.Price Js_Price, d.Price Send_Price, e.Price Sim_Price, f.Price Sijo_Price, g.Price YS_Price From APW_YJI_StandardPrice a '
                + ' Inner join APW_YJI_StandardPrice b On a.Stand_Year = b.Stand_Year And b.Gubun = 8 '
                + ' Inner join APW_YJI_StandardPrice c On a.Stand_Year = c.Stand_Year And c.Gubun = 9 '
                + ' Inner join APW_YJI_StandardPrice d On a.Stand_Year = d.Stand_Year And d.Gubun = 10 '
                + ' Inner join APW_YJI_StandardPrice e On a.Stand_Year = e.Stand_Year And e.Gubun = 11 '
                + ' Inner join APW_YJI_StandardPrice f On a.Stand_Year = f.Stand_Year And f.Gubun = 12 '
                + ' Inner join APW_YJI_StandardPrice g On a.Stand_Year = g.Stand_Year And g.Gubun = 13 '
                + 'Where 1=1 And a.Stand_Year = :Stand_Year ';

    Parameters.ParamByName('Stand_Year').Value := Copy(StartDATE.Text, 1, 4);

    Open;

   end;

   DESKCost :=   StrToInt(lb_DESKcount.Caption) * qry_dtong.FieldByName('Ts_Price').AsInteger;
   JEBCost  := StrToInt(lb_JUBCount.Caption) * qry_dtong.FieldByName('Js_Price').AsInteger;
   SENDCost := StrToInt(lb_SendCount.Caption) * qry_dtong.FieldByName('Send_Price').AsInteger;
   SIMCost := StrToInt(lb_SimCount.Caption) * qry_dtong.FieldByName('Sim_Price').AsInteger;
   SIJOCost :=  StrToInt(lb_SijoCount.Caption) * qry_dtong.FieldByName('Sijo_Price').AsInteger;
   YACKCost :=  StrToInt(lb_YackCount.Caption) * qry_dtong.FieldByName('YS_Price').AsInteger;
   Total :=  DESKCost + JEBCost + SENDCost + SIMCost + SIJOCost + YACKCost;

//   DESKCost :=   StrToInt(lb_DESKcount.Caption) * 1000;
//   JEBCost  := StrToInt(lb_JUBCount.Caption) * 4000;
//   SENDCost := StrToInt(lb_SendCount.Caption) * 4000;
//   SIMCost := StrToInt(lb_SimCount.Caption) * 6000;
//   SIJOCost :=  StrToInt(lb_SijoCount.Caption) * 4000;
//   YACKCost :=  StrToInt(lb_YackCount.Caption) * 4000;

  lb_DESKCOST.Caption := '\'+  FormatFloat('###,###',DESKCost);

  lb_JUBCost.Caption := '\'+ FormatFloat('###,###',JEBCost);

  lb_SendCost.Caption := '\'+  FormatFloat('###,###',SENDCost);

  lb_SimCost.Caption := '\'+ FormatFloat('###,###', SIMCost);

  lb_SijoCost.Caption := '\'+ FormatFloat('###,###',SIJOCost);

  lb_YackCost.Caption :=  '\' + FormatFloat('###,###',YACKCost);

  lb_TotCost.Caption := '\' +  FormatFloat('###,###',Total);
end;

procedure TForm4.do_EMP_CalculFilter;
var
  Count, Workhour,workcal, gun: Integer;
begin
  Count := 0;
  Workhour := 0;
  gun := 0;
  workcal := 0;
  if Sheet_Emp_Detail.Cells[0, 1] = '' then Exit;
  if lb_filterp.Caption = '' then
  begin
    for Count := 1 to Sheet_Emp_Detail.RowCount -1 do
    begin
       Workhour := Workhour + StrToInt(Sheet_Emp_Detail.Cells[9, Count]);
       gun := gun+ 1;
       workcal := workcal +  StrToInt(Sheet_Emp_Detail.Cells[10, Count]);
    end;
  end
  else
  begin
    for Count := 1 to Sheet_Emp_Detail.RowCount -1 do
    begin
      if Sheet_Emp_Detail.Cells[1, Count]  = lb_filterp.Caption then
      begin
       Workhour := Workhour + StrToInt(Sheet_Emp_Detail.Cells[9, Count]);
       gun := gun+ 1;
       workcal := workcal +  StrToInt(Sheet_Emp_Detail.Cells[10, Count]);
      end;
    end;
  end;
  lb_gunp.Caption := IntToStr(gun) + '건';
  lb_timep.Caption := CalcTime(Workhour);
  lb_timecalp.Caption := FormatFloat('###,###',workcal);
end;




procedure TForm4.do_GETWORKTONG;
var
  Count: Integer;
  HAP: Integer;
  ss : string;
begin
  Count := 0;
  Qry_tong.SQL.Clear;
  Qry_tong.Parameters.Clear;
  Qry_tong.SQL.Text := ' EXEC SP_IW_S_TaskStats :SDATE, :Manager';

  Qry_tong.Parameters.ParamByName('SDATE').Value := StartDATE.Text;
//  Qry_tong.Parameters.ParamByName('EDATE').Value := EndDATE.Text;

  if (MyName  = '서완석') or (MyName  = '전영배')  or (MyName  = '이동진')  or (MyName  = '정우종') or (MyName  = '남연재') or (MyName  = '유재인') or (MyName  = '이일우') or (MyName  = '김경희') or (MyName  = '임정미') or (MyName  = '이수영') then
  begin
    Qry_tong.Parameters.ParamByName('Manager').Value := '';
  end
  else
  begin
    Qry_tong.Parameters.ParamByName('Manager').Value := MyName;
  end;

  Qry_tong.Open;
  if Qry_tong.Eof then Exit;
  Grid_Tong.RowCount := Qry_tong.RecordCount + 1;

  for Count := 1 to Qry_tong.RecordCount do
  begin

     HAP := 0;
     Grid_Tong.Cells[0, Count] := Qry_tong.FieldByName('Manager').AsString;
     Grid_Tong.Cells[1, Count] := CalcTime(Qry_tong.FieldByName('Work1').AsInteger);
     Grid_Tong.Cells[2, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Work1_Price').AsInteger);
     HAP := HAP + Qry_tong.FieldByName('Work1_Price').AsInteger;

     Grid_Tong.Cells[3, Count] := CalcTime(Qry_tong.FieldByName('Work2').AsInteger);
     Grid_Tong.Cells[4, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Work2_Price').AsInteger);
     HAP := HAP +  Qry_tong.FieldByName('Work2_Price').AsInteger;

     
     Grid_Tong.Cells[6, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Work3_Price').AsInteger);
     HAP := HAP +  Qry_tong.FieldByName('Work3_Price').AsInteger;

     if (StartDATE.Text >= '2020-07-01') then
     begin

      Grid_Tong.Cells[5, Count] := IntToStr(Qry_tong.FieldByName('Work3').AsInteger);
      Grid_Tong.Cells[7, Count] := IntToStr(Qry_tong.FieldByName('Work4').AsInteger);
     
     end
     else
     begin

      Grid_Tong.Cells[5, Count] := CalcTime(Qry_tong.FieldByName('Work3').AsInteger);
      Grid_Tong.Cells[7, Count] := CalcTime(Qry_tong.FieldByName('Work4').AsInteger);
     
     end;
     
     Grid_Tong.Cells[8, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work4_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('Work4_Price').AsInteger;

      Grid_Tong.Cells[9, Count] := CalcTime(Qry_tong.FieldByName('Work7').AsInteger);
     Grid_Tong.Cells[10, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work7_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('Work7_Price').AsInteger;



     Grid_Tong.Cells[11, Count] := CalcTime(Qry_tong.FieldByName('Work5').AsInteger);
     Grid_Tong.Cells[12, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work5_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('Work5_Price').AsInteger;

     Grid_Tong.Cells[13, Count] := CalcTime(Qry_tong.FieldByName('Work6').AsInteger);
     Grid_Tong.Cells[14, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work6_Price').AsInteger);
      HAP := HAP +  Qry_tong.FieldByName('Work6_Price').AsInteger;

     Grid_Tong.Cells[15, Count] := IntToStr(Qry_tong.FieldByName('Ts_Cnt').AsInteger);
     Grid_Tong.Cells[16, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Ts_Cnt_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('Ts_Cnt_Price').AsInteger;

     Grid_Tong.Cells[17, Count] := IntToStr(Qry_tong.FieldByName('Js_Cnt').AsInteger);
     Grid_Tong.Cells[18, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Js_Cnt_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('Js_Cnt_Price').AsInteger;

     Grid_Tong.Cells[19, Count] := IntToStr(Qry_tong.FieldByName('Send_Cnt').AsInteger);
     Grid_Tong.Cells[20, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Send_Cnt_Price').AsInteger);
       HAP := HAP +  Qry_tong.FieldByName('Send_Cnt_Price').AsInteger;

     Grid_Tong.Cells[21, Count] := IntToStr(Qry_tong.FieldByName('Sim_Cnt').AsInteger);
     Grid_Tong.Cells[22, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Sim_Cnt_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('Sim_Cnt_Price').AsInteger;

     Grid_Tong.Cells[23, Count] := IntToStr(Qry_tong.FieldByName('Sim2_Cnt').AsInteger);
     Grid_Tong.Cells[24, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Sim2_Cnt_Price').AsInteger);
      HAP := HAP +  Qry_tong.FieldByName('Sim2_Cnt_Price').AsInteger;

     Grid_Tong.Cells[25, Count] := IntToStr(Qry_tong.FieldByName('YS_Cnt').AsInteger);
     Grid_Tong.Cells[26, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('YS_Cnt_Price').AsInteger);
      HAP := HAP + Qry_tong.FieldByName('YS_Cnt_Price').AsInteger;
      HAP := HAP + Qry_tong.FieldByName('Fix_Price').AsInteger;
     Grid_Tong.Cells[27, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Fix_Price').AsInteger);
     Grid_Tong.Cells[28, Count] :=  FormatFloat('#,##0', HAP);
     Qry_tong.Next;
       /////////////////
  end;

//  for Count := 1 to Grid_Tong.RowCount -1 do
//    begin
//       HAP := 0;
//       Grid_Tong.Cells[0, Count] := Qry_tong.FieldByName('Manager').AsString;
//       Grid_Tong.Cells[1, Count] := CalcTime(Qry_tong.FieldByName('Work1').AsInteger);
//       Grid_Tong.Cells[2, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Work1').AsInteger*260);
//       HAP := HAP + Qry_tong.FieldByName('Work1').AsInteger*260;
//
//       Grid_Tong.Cells[3, Count] := CalcTime(Qry_tong.FieldByName('Work2').AsInteger);
//       Grid_Tong.Cells[4, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Work2').AsInteger*130);
//       HAP := HAP +  Qry_tong.FieldByName('Work2').AsInteger*130;
//
//       Grid_Tong.Cells[5, Count] := CalcTime(Qry_tong.FieldByName('Work3').AsInteger);
//       Grid_Tong.Cells[6, Count] := FormatFloat('#,##0', Qry_tong.FieldByName('Work3').AsInteger*260);
//       HAP := HAP +  Qry_tong.FieldByName('Work3').AsInteger*260;
//
//       Grid_Tong.Cells[7, Count] := CalcTime(Qry_tong.FieldByName('Work4').AsInteger);
//       Grid_Tong.Cells[8, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work4').AsInteger*258);
//        HAP := HAP + Qry_tong.FieldByName('Work4').AsInteger*258;
//
//        Grid_Tong.Cells[9, Count] := CalcTime(Qry_tong.FieldByName('Work7').AsInteger);
//       Grid_Tong.Cells[10, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work7').AsInteger*129);
//        HAP := HAP + Qry_tong.FieldByName('Work7').AsInteger*129;
//
//
//
//       Grid_Tong.Cells[11, Count] := CalcTime(Qry_tong.FieldByName('Work5').AsInteger);
//       Grid_Tong.Cells[12, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work5').AsInteger*338);
//        HAP := HAP + Qry_tong.FieldByName('Work5').AsInteger*338;
//
//       Grid_Tong.Cells[13, Count] := CalcTime(Qry_tong.FieldByName('Work6').AsInteger);
//       Grid_Tong.Cells[14, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Work6').AsInteger*169);
//        HAP := HAP +  Qry_tong.FieldByName('Work6').AsInteger*169;
//
//       Grid_Tong.Cells[15, Count] := IntToStr(Qry_tong.FieldByName('Ts_Cnt').AsInteger);
//       Grid_Tong.Cells[16, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Ts_Cnt').AsInteger*1000);
//        HAP := HAP + Qry_tong.FieldByName('Ts_Cnt').AsInteger*1000;
//
//       Grid_Tong.Cells[17, Count] := IntToStr(Qry_tong.FieldByName('Js_Cnt').AsInteger);
//       Grid_Tong.Cells[18, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Js_Cnt').AsInteger*4000);
//        HAP := HAP + Qry_tong.FieldByName('Js_Cnt').AsInteger*4000;
//
//       Grid_Tong.Cells[19, Count] := IntToStr(Qry_tong.FieldByName('Send_Cnt').AsInteger);
//       Grid_Tong.Cells[20, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Send_Cnt').AsInteger*4000);
//         HAP := HAP +  Qry_tong.FieldByName('Send_Cnt').AsInteger*4000;
//
//       Grid_Tong.Cells[21, Count] := IntToStr(Qry_tong.FieldByName('Sim_Cnt').AsInteger);
//       Grid_Tong.Cells[22, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Sim_Cnt').AsInteger*6000);
//        HAP := HAP + Qry_tong.FieldByName('Sim_Cnt').AsInteger*6000;
//
//       Grid_Tong.Cells[23, Count] := IntToStr(Qry_tong.FieldByName('Sim2_Cnt').AsInteger);
//       Grid_Tong.Cells[24, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('Sim2_Cnt').AsInteger*4000);
//        HAP := HAP +  Qry_tong.FieldByName('Sim2_Cnt').AsInteger*4000;
//
//       Grid_Tong.Cells[25, Count] := IntToStr(Qry_tong.FieldByName('YS_Cnt').AsInteger);
//       Grid_Tong.Cells[26, Count] :=  FormatFloat('#,##0', Qry_tong.FieldByName('YS_Cnt').AsInteger*4000);
//        HAP := HAP + Qry_tong.FieldByName('YS_Cnt').AsInteger*4000;
//        HAP := HAP + 3000000;
//       Grid_Tong.Cells[27, Count] := '3,000,000';
//       Grid_Tong.Cells[28, Count] :=  FormatFloat('#,##0', HAP);
//       Qry_tong.Next;
//       /////////////////
//    end;

end;

procedure TForm4.Emp_Detail(R, C, Gubun: Integer);
Var
    i : Integer;
begin

  with qry1 do
  begin

    SQL.Clear;
    Parameters.Clear;
    SQL.Text := 'Exec SP_YJI_ManDayWork2_stats :Flag, :S_Date, :Emp, :Gubun ';

    if Gubun = 2 then
    begin

      Parameters.ParamByName('flag').Value := 'Detail_Tk';

    end
    else
    Begin

      Parameters.ParamByName('flag').Value := 'Detail';

    end;

    if C = 2 then
    Begin

      // 년총합을 클릭 했을 때
      Parameters.ParamByName('S_Date').Value := Copy(Emp_Date.Text, 1, 4);

    End
    else if C = 3 then
    begin

      // 월총합을 클릭 했을 때
      Parameters.ParamByName('S_Date').Value := Copy(Emp_Date.Text, 1, 7);

    end
    else
    begin

      // 일총합을 클릭 했을 때
      Parameters.ParamByName('S_Date').Value := Emp_Date.Text;

    end;

    Parameters.ParamByName('Emp').Value := Sheet_Emp_Main.Cells[1, R];
    Parameters.ParamByName('Gubun').Value := Gubun;

    Open;

    with Sheet_Emp_Detail do
    Begin

      RowCount := RecordCount + 1;

      for i := 1 to RecordCount do
      begin

        Cells[0, i] := FieldByName('Docid').AsString;
        Cells[1, i] := FieldByName('Gubun').AsString;
        Cells[2, i] := FieldByName('writeman').AsString;
        Cells[3, i] := FieldByName('Manager').AsString;
        Cells[4, i] := FieldByName('WorkDate').AsString;

        if Gubun <> 2 then
        begin

          Cells[5, i] := FieldByName('Lstatus').AsString;

        end;

        Cells[6, i] := CalcTime(FieldByName('WorkHour').AsInteger);
        Cells[7, i] := FieldByName('CustName').AsString;
        Cells[8, i] := FieldByName('addr').AsString;
        Cells[9, i] := IntToStr(FieldByName('WorkHour').AsInteger);
        Cells[10, i] := IntToStr(FieldByName('WorkHour').AsInteger*13000);
        Cells[11, i] := FieldByName('WorkBigo').AsString;

        Next;

      end;

    End;

    qry1.Close;
    do_EMP_CalculFilter;
  end;

end;

procedure TForm4.Manager;
begin

  Cbo_Manager.Clear;
  Cbo_Manager.Items.Add('전체');
  Cbo_Manager.ItemIndex := 0;

  with qry1 do
  Begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := 'Exec SP_YJI_ManDayWork_stats :Flag, :S_Date, :Manager, :Gubun';

    Parameters.ParamByName('flag').Value := 'Manager';
    Parameters.ParamByName('S_Date').Value := f_date.Text;
    Parameters.ParamByName('Manager').Value := '';

    if Cbo_Gbn.Text = '평가업무' then
    begin

      Parameters.ParamByName('Gubun').Value := 1;

    end
    Else if Cbo_Gbn.Text = '탁상' then
    begin

      Parameters.ParamByName('Gubun').Value := 2;

    end
    else if Cbo_Gbn.Text = '업무지원팀' then
    Begin

      Parameters.ParamByName('Gubun').Value := 3;

    end
    else
    begin

      Parameters.ParamByName('Gubun').Value := 4;

    end;

    Open;

    while not Eof do
    begin

      Cbo_Manager.Items.Add(FieldByName('Manager').AsString);
      Next;

    end;
    qry1.Close;
  End;

end;

procedure TForm4.Emp;
begin

  Cbo_Emp.Clear;
  Cbo_Emp.Items.Add('전체');
  Cbo_Emp.ItemIndex := 0;

  with qry1 do
  Begin

    SQL.Clear;
    Parameters.Clear;

    SQL.Text := 'Exec SP_YJI_ManDayWork2_stats :Flag, :S_Date, :Emp, :Gubun';

    Parameters.ParamByName('flag').Value := 'Emp';
    Parameters.ParamByName('S_Date').Value := Emp_Date.Text;
    Parameters.ParamByName('Emp').Value := '';

    if Cbo_Emp_Gubun.Text = '평가업무' then
    begin

      Parameters.ParamByName('Gubun').Value := 1;

    end
    Else if Cbo_Emp_Gubun.Text = '탁상' then
    begin

      Parameters.ParamByName('Gubun').Value := 2;

    end
    else if Cbo_Emp_Gubun.Text = '업무지원팀' then
    Begin

      Parameters.ParamByName('Gubun').Value := 3;

    end
    else
    begin

      Parameters.ParamByName('Gubun').Value := 4;

    end;

    Open;

    while not Eof do
    begin

      Cbo_Emp.Items.Add(FieldByName('writeman').AsString);
      Next;

    end;

    qry1.Close;

  End;

end;


procedure TForm4.Cbo_GbnChange(Sender: TObject);
begin

  Manager();

end;

procedure TForm4.Cbo_Emp_GubunChange(Sender: TObject);
begin

  Emp();

end;

procedure TForm4.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  SELROW : Integer;

begin
  SELROW := Grid_Tong.Row;
  if SELROW > 0 then
  begin


//    if VarName  = 'Manager' then Value := '0';
//
//    if VarName = 'W1Time' then  Value := '0';
//    if VarName = 'W1Money' then  Value := '0';
//    if VarName = 'W2Time' then  Value := '0';
//    if VarName = 'W2Money' then  Value := '0';
//    if VarName = 'W3Time' then  Value := '0';
//    if VarName = 'W3Money' then  Value := '0';
//    if VarName = 'W4Time' then  Value := '0';
//    if VarName = 'W4Money' then  Value := '0';
//
//     if VarName = 'W7Time' then  Value := '0';
//    if VarName = 'W7Money' then  Value := '0';
//
//
//    if VarName = 'W5Time' then  Value := '0';
//    if VarName = 'W5Money' then  Value := '0';
//    if VarName = 'W6Time' then  Value := '0';
//    if VarName = 'W6Money' then  Value := '0';
//    if VarName = 'TsCnt' then  Value := '0';
//    if VarName = 'TSMoney' then  Value := '0';
//    if VarName = 'JsCnt' then  Value := '0';
//    if VarName = 'JSMoney' then  Value := '0';
//
//    if VarName = 'SendCnt' then  Value := '0';
//    if VarName = 'SendMoney' then  Value := '0';
//    if VarName = 'SimCnt' then  Value := '0';
//    if VarName = 'SimMoney' then  Value := '0';
//    if VarName = 'Sim2Cnt' then  Value := '0';
//    if VarName = 'Sim2Money' then  Value := '0';
//    if VarName = 'YsCnt' then  Value := '0';
//    if VarName = 'YsMoney' then  Value := '0';
//    if VarName = 'Fix_Price' then  Value := '0';
//    if VarName = 'Total' then  Value := '0';
//
//    if VarName = 'Sdate' then  Value := '0';
//    if VarName = 'Edate' then  Value := EndDATE.Text;




    if VarName = 'W1Time' then  Value := Grid_Tong.Cells[1, SELROW];
    if VarName = 'W1Money' then  Value := Grid_Tong.Cells[2, SELROW];
    if VarName = 'W2Time' then  Value := Grid_Tong.Cells[3, SELROW];
    if VarName = 'W2Money' then  Value := Grid_Tong.Cells[4, SELROW];
    if VarName = 'W3Time' then  Value := Grid_Tong.Cells[5, SELROW];
    if VarName = 'W3Money' then  Value := Grid_Tong.Cells[6, SELROW];
    if VarName = 'W4Time' then  Value := Grid_Tong.Cells[7, SELROW];
    if VarName = 'W4Money' then  Value := Grid_Tong.Cells[8, SELROW];

     if VarName = 'W7Time' then  Value := Grid_Tong.Cells[9, SELROW];
    if VarName = 'W7Money' then  Value := Grid_Tong.Cells[10, SELROW];


    if VarName = 'W5Time' then  Value := Grid_Tong.Cells[11, SELROW];
    if VarName = 'W5Money' then  Value := Grid_Tong.Cells[12, SELROW];
    if VarName = 'W6Time' then  Value := Grid_Tong.Cells[13, SELROW];
    if VarName = 'W6Money' then  Value := Grid_Tong.Cells[14, SELROW];
    if VarName = 'TsCnt' then  Value := Grid_Tong.Cells[15, SELROW];
    if VarName = 'TSMoney' then  Value := Grid_Tong.Cells[16, SELROW];
    if VarName = 'JsCnt' then  Value := Grid_Tong.Cells[17, SELROW];
    if VarName = 'JSMoney' then  Value := Grid_Tong.Cells[18, SELROW];

    if VarName = 'SendCnt' then  Value := Grid_Tong.Cells[19, SELROW];
    if VarName = 'SendMoney' then  Value := Grid_Tong.Cells[20, SELROW];
    if VarName = 'SimCnt' then  Value := Grid_Tong.Cells[21, SELROW];
    if VarName = 'SimMoney' then  Value := Grid_Tong.Cells[22, SELROW];
    if VarName = 'Sim2Cnt' then  Value := Grid_Tong.Cells[23, SELROW];
    if VarName = 'Sim2Money' then  Value := Grid_Tong.Cells[24, SELROW];
    if VarName = 'YsCnt' then  Value := Grid_Tong.Cells[25, SELROW];
    if VarName = 'YsMoney' then  Value := Grid_Tong.Cells[26, SELROW];
    if VarName = 'Fix_Price' then  Value := Grid_Tong.Cells[27, SELROW];
    if VarName = 'Total' then  Value := Grid_Tong.Cells[28, SELROW];

    if VarName = 'Sdate' then  Value := Copy(StartDATE.Text, 1, 7);
//    if VarName = 'Edate' then  Value := EndDATE.Text;
    if VarName = 'Manager' then  Value := Grid_Tong.Cells[0, SELROW];
  end;



end;

procedure TForm4.f_datePropertiesChange(Sender: TObject);
begin

  Manager();

end;


procedure TForm4.grid_etcGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow = 0 then HAlign := taCenter;

  if (ARow > 0) And (ACol in [0,1,2,3]) then HAlign := taCenter
  else  HAlign := taRightJustify;


end;

procedure TForm4.grid_pungGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  VAlign := vtaCenter;
  if ARow = 0 then
  begin
    HAlign := taCenter;

  end
  else if (ARow >0) AND (ACol in [7,8,11]) then  HAlign := taRightJustify
  else HAlign := taCenter;


end;

procedure TForm4.Grid_TongGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  VAlign := vtaCenter;
 if ARow > 0 then
 begin
   if ACol in [0,1,3,5,7,9,11,13,15,17,19,21,23]  then HAlign := taCenter
   else HAlign := taRightJustify;

 end;
end;



procedure TForm4.INIT_ETCGRID;
begin
  with grid_etc  do
  begin
    Clear;
    RowCount := 2;
    ColCount := 6;

    Cells[0 ,0] := '구 분';
    Cells[1 ,0] := '감정서번호';
    Cells[2 ,0] := '일자';
    Cells[3 ,0] := '처리자';
    Cells[4 ,0] := '거래처명';
    Cells[5 ,0] := '소 제 지';


    ColWidths[0] := 100;
    ColWidths[1] := 120;
    ColWidths[2] := 100;
    ColWidths[3] := 100;
    ColWidths[4] := 200;
    ColWidths[5] := 200;

  end;
end;

procedure TForm4.INIT_PUNGGRID;
begin

  with grid_pung  do
  begin
    Clear;
    ColCount := 12;

    Cells[0 ,0] := '감정서번호';
    Cells[1 ,0] := '구분';
    Cells[2 ,0] := '담당자';
    Cells[3 ,0] := '유치자';
    Cells[4 ,0] := '업무날짜';
    Cells[5 ,0] := '진행상태';
    Cells[6 ,0] := '시간';
    Cells[7 ,0] := '거래처명';
    Cells[8 ,0] := '주소';
    Cells[9 ,0] := 'time';
    Cells[10 ,0] := '직급';
    Cells[11 ,0] := '금액';

    ColWidths[0] := 120;
    ColWidths[1] := 90;
    ColWidths[2] := 60;
    ColWidths[3] := 60;
    ColWidths[4] := 80;
    ColWidths[5] := 100;
    ColWidths[6] := 60;
    ColWidths[7] := 210;
    ColWidths[8] := 200;
    ColWidths[9] := 0;
    ColWidths[10] := 90;
    ColWidths[11] := 90;
  end;
end;

procedure TForm4.do_GetETC;
var
  Count : Integer;
  TS, JS, SEND, SIMSA, SIJO, YACK : Integer;
begin
  TS := 0; JS:=0; SEND:=0; SIMSA:=0; SIJO:=0; YACK:=0;
 qry_dtong.SQL.Clear;
 qry_dtong.Parameters.Clear;
 qry_dtong.SQL.Text := 'Exec SP_IW_S_ManWorkDetail_stats2 :Sdate, :Manager';
 qry_dtong.Parameters.ParamByName('Sdate').Value := StartDATE.Text;
 qry_dtong.Parameters.ParamByName('Manager').Value := MyName;
 qry_dtong.Open;

 if qry_dtong.Eof then Exit;
 grid_etc.RowCount := qry_dtong.RecordCount + 1;
 for Count := 1 to grid_etc.RowCount - 1 do
   begin
      grid_etc.Cells[0, Count] := qry_dtong.FieldByName('Gbn').AsString;
      grid_etc.Cells[1, Count] := qry_dtong.FieldByName('Docid').AsString;
      grid_etc.Cells[2, Count] := qry_dtong.FieldByName('Date').AsString;
      grid_etc.Cells[3, Count] := qry_dtong.FieldByName('Emp').AsString;
      grid_etc.Cells[4, Count] := qry_dtong.FieldByName('CustName').AsString;
      grid_etc.Cells[5, Count] := qry_dtong.FieldByName('Addr').AsString;
      if qry_dtong.FieldByName('Gbn').AsString = '탁상' then TS := TS + 1
      else if qry_dtong.FieldByName('Gbn').AsString = '접수' then  JS := JS + 1
      else if qry_dtong.FieldByName('Gbn').AsString = '발송' then  SEND := SEND + 1
      else if qry_dtong.FieldByName('Gbn').AsString = '심사' then  SIMSA := SIMSA + 1
      else if qry_dtong.FieldByName('Gbn').AsString = '시조위' then  SIJO := SIJO + 1
      else if qry_dtong.FieldByName('Gbn').AsString = '약식' then  YACK := YACK + 1;

      qry_dtong.Next;
   end;
   lb_date.Caption := Copy(StartDATE.Text, 1, 7);
   lb_DESKcount.Caption := IntToStr(TS);
   lb_JUBCount.Caption := IntToStr(JS);
   lb_SendCount.Caption := IntToStr(SEND);
   lb_SimCount.Caption := IntToStr(SIMSA);
   lb_SijoCount.Caption := IntToStr(SIJO);
   lb_YackCount.Caption := IntToStr(YACK);


end;

procedure TForm4.do_GetPUNG;
var
  Count: Integer;
  Namhap, SNamHap, JiwonHAP ,SJiwonHap, PungHap, SPungHap,  Total,DESKCost: Currency;
  DeskHap : Double;
  DESKTIME : Integer;
begin
   Namhap:=0; SNamHap:=0; JiwonHAP:=0;SJiwonHap:=0; PungHap:=0; SPungHap:=0; DeskHap:=0; Total:=0;
   DESKCost := 0;   DESKTIME :=0;
  qry_dtong.SQL.Clear;
  qry_dtong.Parameters.Clear;

  qry_dtong.SQL.Text := 'EXEC SP_IW_S_ManWorkDetail_stats1 :Manager, :Sdate';
  qry_dtong.Parameters.ParamByName('Manager').Value := MyName;
  qry_dtong.Parameters.ParamByName('Sdate').Value := StartDATE.Text;
//  qry_dtong.Parameters.ParamByName('Edate').Value := EndDATE.Text;
  qry_dtong.Open;
  if qry_dtong.Eof then  Exit;
  grid_pung.RowCount := qry_dtong.RecordCount + 1;
  for Count := 1 to grid_pung.RowCount -1 do
    begin
      grid_pung.Cells[0, Count] := qry_dtong.FieldByName('Docid').AsString;
      grid_pung.Cells[1, Count] := qry_dtong.FieldByName('Gubun').AsString;
      grid_pung.Cells[2, Count] := qry_dtong.FieldByName('writeman').AsString;
      grid_pung.Cells[3, Count] := qry_dtong.FieldByName('Manager').AsString;
      grid_pung.Cells[4, Count] := qry_dtong.FieldByName('WorkDate').AsString;
      grid_pung.Cells[5, Count] := qry_dtong.FieldByName('Lstatus').AsString;
      grid_pung.Cells[6, Count] := CalcTime( qry_dtong.FieldByName('WorkHour').Asinteger);
      grid_pung.Cells[7, Count] := qry_dtong.FieldByName('CustName').AsString;
      grid_pung.Cells[8, Count] := qry_dtong.FieldByName('addr').AsString;
      grid_pung.Cells[9, Count] := qry_dtong.FieldByName('WorkHour').AsString;
      grid_pung.Cells[10, Count] := qry_dtong.FieldByName('Ugrade').AsString;
      grid_pung.Cells[11, Count] :=  FormatFloat('###,###',qry_dtong.FieldByName('Price').AsFloat);

       if qry_dtong.FieldByName('Gubun').AsString = '평가업무' then
        begin
        if qry_dtong.FieldByName('Ugrade').AsString = '남직원' then  Namhap := Namhap  + qry_dtong.FieldByName('Price').AsFloat
        else if qry_dtong.FieldByName('Ugrade').AsString = '수습남직원' then  SNamHap := SNamHap + qry_dtong.FieldByName('Price').AsFloat
        else if qry_dtong.FieldByName('Ugrade').AsString = '소속평가사' then  PungHap := PungHap + qry_dtong.FieldByName('Price').AsFloat
        else if qry_dtong.FieldByName('Ugrade').AsString = '수습평가사' then  SPungHap := SPungHap + qry_dtong.FieldByName('Price').AsFloat;
        end
       else if qry_dtong.FieldByName('Gubun').AsString = '업무지원팀' then
        begin
          if qry_dtong.FieldByName('Ugrade').AsString = '지원팀' then  JiwonHAP := JiwonHAP + qry_dtong.FieldByName('Price').AsFloat
          else if qry_dtong.FieldByName('Ugrade').AsString = '수습지원' then  SJiwonHap := SJiwonHap + qry_dtong.FieldByName('Price').AsFloat;
        end
       else if qry_dtong.FieldByName('Gubun').AsString = '탁상평가' then
       begin
         DeskHap := DeskHap +  qry_dtong.FieldByName('Price').AsFloat;
       end;
      if qry_dtong.FieldByName('Gubun').AsString <> '탁상평가' then Total := Total + qry_dtong.FieldByName('Price').AsFloat;
      qry_dtong.Next;
    end;

    DESKTIME := Floor(DeskHap);
//    DESKCost := DESKTIME * 260;
    //Edit2.Text :=   CalcTime(DESKTIME) +'/'+ IntToStr(DESKTIME);
    Total := Total + DeskHap;
    edit_nam.Value := Namhap;
    edit_Snam.Value := SNamHap;
    edit_pung.Value := PungHap;
    edit_Spung.Value  := SPungHap;
    edit_jiwon.Value := JiwonHAP;
    edit_SJiwon.Value := SJiwonHap;
    edit_Desk.Value := DeskHap;
    edit_Total.Value := Total;
//    edit_date.Text :=  StartDATE.Text + ' ~ ' +EndDATE.Text;
    edit_date.Text := Copy(StartDATE.Text, 1, 7);
    edit_gun.Text := IntToStr(qry_dtong.RecordCount);

end;

procedure TForm4.Emp_DatePropertiesChange(Sender: TObject);
begin

  Emp();

end;

procedure TForm4.Sheet_Pung_MainClickCell(Sender: TObject; ARow, ACol: Integer);
var
  Gubun : integer;
begin
  lb_filter1.Caption := '';
  Sheet_Set(Gubun);

  if Sheet_Pung_Main.Cells[ACol, ARow] ='00:00' then Exit;

  if Cbo_Gbn.Text = '평가업무' then
  begin

    Gubun := 1;

  end
  Else if Cbo_Gbn.Text = '탁상' then
  begin

    Gubun := 2;

  end
  else if Cbo_Gbn.Text = '업무지원팀' then
  Begin

    Gubun := 3;

  end
  else
  begin

    Gubun := 4;

  end;

  Detail(ARow, ACol, Gubun);

end;

procedure TForm4.Sheet_Emp_MainClickCell(Sender: TObject; ARow, ACol: Integer);
var
  Gubun : integer;
begin

  Sheet_Set_Emp(Gubun);

  if ARow = 0 then Exit;

  if Sheet_Emp_Main.Cells[ACol, ARow] ='00:00' then Exit;

  if Cbo_Emp_Gubun.Text = '평가업무' then
  begin

    Gubun := 1;

  end
  Else if Cbo_Emp_Gubun.Text = '탁상' then
  begin

    Gubun := 2;

  end
  else if Cbo_Emp_Gubun.Text = '업무지원팀' then
  Begin

    Gubun := 3;

  end
  else
  begin

    Gubun := 4;

  end;

  Emp_Detail(ARow, ACol, Gubun);

end;

procedure TForm4.Sheet_Pung_MainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

  VAlign := vtaCenter;
  HAlign := taCenter;

end;

procedure TForm4.Sheet_Emp_MainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

  VAlign := vtaCenter;
  HAlign := taCenter;

end;

procedure TForm4.Sheet_Pung_DetailFilterSelect(Sender: TObject; Column,
  ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
begin
  lb_filter1.Caption := FilterCondition;
  do_CalculFilter;
end;

procedure TForm4.Sheet_Pung_DetailGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

  HAlign := taCenter;
  VAlign := vtaCenter;

  if (ARow > 0) And ((ACol = 7) or (ACol = 8)) then
  begin

    HAlign := taLeftJustify;

  end;

end;

procedure TForm4.Sheet_Pung_DetailGetColumnFilter(Sender: TObject;
  Column: Integer; Filter: TStrings);
begin
  if Column <> 3 then  Filter.Clear;

end;

procedure TForm4.Sheet_Emp_DetailFilterSelect(Sender: TObject; Column,
  ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
begin
  lb_filterp.Caption := FilterCondition;
  do_EMP_CalculFilter;
end;

procedure TForm4.Sheet_Emp_DetailGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin

  HAlign := taCenter;
  VAlign := vtaCenter;

  if (ARow > 0) And ((ACol = 7) or (ACol = 8) or (ACol = 11)) then
  begin

    HAlign := taLeftJustify;

  end;

end;

procedure TForm4.Sheet_Emp_DetailGetColumnFilter(Sender: TObject;
  Column: Integer; Filter: TStrings);
begin
 if Column <> 1 then  Filter.Clear;
end;

function TForm4.CalcTime(WorkHour: integer): string;
var
  HH, MM : Integer;
  Result_HH, Result_MM : string;
begin

  HH := (WorkHour div 60);
  MM := (WorkHour mod 60);

  if (Length(IntToStr(HH)) < 2) then
  Begin

    Result_HH := Format('%.2d', [HH]);

  End
  else
  Begin

    Result_HH := IntToStr(HH);

  End;

  if (Length(IntToStr(MM)) < 2) then
  Begin

    Result_MM := Format('%.2d', [MM]);

  End
  else
  begin

    Result_MM := IntToStr(MM)

  end;

  Result := Result_HH + ':' + Result_MM;

end;
function TForm4.CalculTime(showtime: String): Integer;
var
  tmp: TStringList;
  HH, MM: Integer;

begin
  HH := 0;
  MM := 0;
  Result := 0;
  tmp := TStringList.Create;
  tmp.Delimiter := ':';
  tmp.DelimitedText := showtime;

  HH := StrToInt(tmp[0])* 60;
  MM := StrToInt(tmp[1]);

  tmp.Free;

  Result := HH+MM;
end;

procedure TForm4.Init_doc;
begin
  with DocGrid_Main do
  begin
    ClearAll;
    ColCount := 4;
    RowCount := 2;

    Cells[0 ,0] := '감정서번호';
    Cells[1 ,0] := '시간';
    Cells[2 ,0] := '입금일';
    Cells[3 ,0] := '총금액';


    ColWidths[0] := 120;
    ColWidths[1] := 80;
    ColWidths[2] := 100;
    ColWidths[3] := 80;

  end;
  with DocGrid_Detail do
  begin
    ClearAll;
    ColCount := 6;
    RowCount := 2;

    Cells[0 ,0] := '구분';
    Cells[1 ,0] := '담당자';
    Cells[2 ,0] := '유치자';
    Cells[3 ,0] := '작업일';
    Cells[4 ,0] := '시간';
    Cells[5 ,0] := '금액';


    ColWidths[0] := 100;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 120;
    ColWidths[4] := 80;
    ColWidths[5] := 80;

  end;
end;



procedure TForm4.do_getDocMST;
var
  Count: Integer;
begin
 with DocGrid_Detail do
  begin
    ClearAll;
    ColCount := 6;
    RowCount := 2;

    Cells[0 ,0] := '구분';
    Cells[1 ,0] := '담당자';
    Cells[2 ,0] := '유치자';
    Cells[3 ,0] := '작업일';
    Cells[4 ,0] := '시간';
    Cells[5 ,0] := '금액';


    ColWidths[0] := 100;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 120;
    ColWidths[4] := 80;
    ColWidths[5] := 80;

  end;
  qry1.SQL.Clear;
  qry1.Parameters.Clear;
  qry1.SQL.Text := 'Exec SP_YJI_ManDayWork3_stats :Flag, :Sdate, :Edate, :Docid, :Manager';
  qry1.Parameters.ParamByName('Flag').Value := 'Main';
  qry1.Parameters.ParamByName('Sdate').Value := DocSdate.Text;
  qry1.Parameters.ParamByName('Edate').Value := DocEdate.Text;
  qry1.Parameters.ParamByName('Docid').Value := edit_docid.Text;

  if (MyName  = '서완석') or (MyName  = '전영배')  or (MyName  = '이동진')  or (MyName  = '정우종') or (MyName  = '남연재') or (MyName  = '유재인') or (MyName  = '이일우') or (MyName  = '김경희') or (MyName  = '임정미') or (MyName  = '이수영') then
  begin

    qry1.Parameters.ParamByName('Manager').Value := '';

  end
  Else
  begin

    qry1.Parameters.ParamByName('Manager').Value := MyName;

  end;

  qry1.Open;
  if qry1.Eof then Exit;
  DocGrid_Main.RowCount := qry1.RecordCount + 1;

  for Count := 1 to DocGrid_Main.RowCount -1 do
  begin
    with DocGrid_Main do
    begin
      Cells[0, Count] := qry1.FieldByName('Docid').AsString;
      Cells[1, Count] := CalcTime(qry1.FieldByName('D_WorkHour').AsInteger); //+ ' / ' + qry1.FieldByName('D_Count').AsString;
      Cells[2, Count] := DateTimeToStr(qry1.FieldByName('Indate').AsDateTime);
      Cells[3, Count] := FormatFloat('#,##0',qry1.FieldByName('Sum_Price').AsInteger);
      qry1.Next;
    end;
  end;


end;

procedure TForm4.do_getDocDet(Docid: String);
var
  Count: Integer;
begin
  qry1.SQL.Clear;
  qry1.Parameters.Clear;
  qry1.SQL.Text := 'Exec SP_YJI_ManDayWork3_stats :Flag, :Sdate, :Edate, :Docid';
  qry1.Parameters.ParamByName('Flag').Value := 'Detail';
  qry1.Parameters.ParamByName('Sdate').Value := '';
  qry1.Parameters.ParamByName('Edate').Value := '';
  qry1.Parameters.ParamByName('Docid').Value := Docid;
  qry1.Open;
  if qry1.Eof then Exit;
  DocGrid_Detail.RowCount := qry1.RecordCount + 1;

  for Count := 1 to DocGrid_Detail.RowCount -1 do
  begin
    with DocGrid_Detail do
    begin
      Cells[0, Count] := qry1.FieldByName('Gubun').AsString;
      Cells[1, Count] := qry1.FieldByName('writeman').AsString;
      Cells[2, Count] := qry1.FieldByName('Manager').AsString;
      Cells[3, Count] := qry1.FieldByName('Workdate').AsString;
      Cells[4, Count] := CalcTime(qry1.FieldByName('WorkHour').AsInteger);      
      Cells[5, Count] := FormatFloat('#,##0',qry1.FieldByName('Price').AsInteger);

      if Cells[0, Count] = '합 계' then
      begin

        Cells[3, Count] := '';

      end;

      qry1.Next;

    end;
  end;

end;

procedure TForm4.btn_ExcelDetailClick(Sender: TObject);
begin

  if SaveDialog1.Execute then
  begin

    AdvGridExcelIO4.AdvStringGrid := grid_pung;
    AdvGridExcelIO4.XLSExport(SaveDialog1.FileName,'평가업무', 1);

    AdvGridExcelIO4.AdvStringGrid := grid_etc;
    AdvGridExcelIO4.XLSExport(SaveDialog1.FileName,'기타', 2);

  end;

end;

end.
