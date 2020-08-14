//------------------------------------------------------------------------------
//
// Unit        : Unit2.pas
// Author      : 
// Description : 
// History
//   V 1.00 : 2007.09.11 ó�� �ۼ�
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

unit YakMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Dialogs, dxLink, dxForm, dxMessages, dxDLLManager, DB, Grids,
  DBGrids, kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, StdCtrls, kbmMWStreamFormat, kbmMWBinaryStreamFormat,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  RbDrawCore, RbPanel, Menus, cxLookAndFeelPainters, cxButtons,
  TFlatPanelUnit, cxContainer, cxTextEdit, cxCurrencyEdit, Mask, RzEdit,
  AdvObj, BaseGrid, AdvGrid, cxDBEdit, cxLabel, RzButton, cxMemo, RzLabel,
  RzRadChk, ADODB, cxMaskEdit, DBAdvGrid, RzCmboBx, RzDBCmbo, Clipbrd,Jpeg,
  cxDropDownEdit, cxImageComboBox,shellapi, frxClass, frxDBSet,
  frxExportPDF, ImgList, cxCheckBox, AdvUtil;

type
  TXForm2 = class(TXForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    cxLabel7: TcxLabel;
    edit_docid: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    edit_custname: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    edit_tsid: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edit_debt: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edit_addr: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    memo_resend: TcxDBMemo;
    Btn_print: TRzBitBtn;
    Btn_Edit: TRzBitBtn;
    Btn_Save: TRzBitBtn;
    Btn_Cancel: TRzBitBtn;
    Btn_Close: TRzBitBtn;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    edit_Custtel: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    edit_owner: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    btn_Ingong: TRzBitBtn;
    btn_del3: TRzBitBtn;
    btn_del1: TRzBitBtn;
    btn_delgong: TRzBitBtn;
    btn_del2: TRzBitBtn;
    Panel9: TPanel;
    cxLabel20: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    ADOConnection1: TADOConnection;
    Qry_Yak: TADOQuery;
    DataSource1: TDataSource;
    Qry_YakYAKMASTERID: TAutoIncField;
    Qry_YakDOCID: TStringField;
    Qry_YakStatus: TIntegerField;
    Qry_YakWriteman: TStringField;
    Qry_YakWritedate: TDateTimeField;
    Qry_YakManager: TStringField;
    Qry_Yakbigo: TWideStringField;
    Qry_YakCustDocid: TStringField;
    Qry_YakCustName: TStringField;
    Qry_YakCustTel: TStringField;
    Qry_Yakdebtor: TStringField;
    Qry_YakOwner: TStringField;
    Qry_YakKind: TStringField;
    Qry_YakReson: TStringField;
    Qry_YakADDR: TStringField;
    Qry_YakBuilddate: TStringField;
    Qry_YakUseDate: TStringField;
    Qry_YakJunArea: TBCDField;
    Qry_YakGongArea: TBCDField;
    Qry_YakDaeArea: TBCDField;
    Qry_YakFloor: TStringField;
    Qry_YakDange: TStringField;
    Qry_YakSide: TStringField;
    Qry_YakTraffic: TStringField;
    Qry_YakEducation: TStringField;
    Qry_YakPunsisul: TStringField;
    Qry_YakArround: TStringField;
    Qry_YakETC: TStringField;
    Qry_YakPrice: TBCDField;
    Qry_YakPriceDate: TStringField;
    Qry_YakSimsaResult: TStringField;
    Grid_Land: TAdvStringGrid;
    Grid_Build: TAdvStringGrid;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBComboBox2: TcxDBComboBox;
    cxDBComboBox3: TcxDBComboBox;
    cxDBComboBox4: TcxDBComboBox;
    cxDBComboBox5: TcxDBComboBox;
    cxDBMaskEdit2: TcxDBMaskEdit;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    memo_Bigo: TcxMemo;
    cxLabel27: TcxLabel;
    btn_Make3: TRzBitBtn;
    btn_Make2: TRzBitBtn;
    btn_Make1: TRzBitBtn;
    btn_open3: TRzBitBtn;
    btn_open2: TRzBitBtn;
    btn_open1: TRzBitBtn;
    btn_opengong: TRzBitBtn;
    OpenDialog1: TOpenDialog;
    edit_filegong: TcxTextEdit;
    edit_file1: TcxTextEdit;
    edit_file2: TcxTextEdit;
    edit_file3: TcxTextEdit;
    frxMstDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel28: TcxLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxLabel39: TcxLabel;
    cxDBComboBox6: TcxDBComboBox;
    Qry_YakGaro: TStringField;
    Qry_YakTotdong: TStringField;
    Qry_YakTotSeadae: TStringField;
    Qry_YakTotFloor: TStringField;
    Qry_YakGujo: TStringField;
    Qry_YakJunsaePrice: TBCDField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel40: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel41: TcxLabel;
    cxDBComboBox7: TcxDBComboBox;
    cxLabel42: TcxLabel;
    btn_opents1: TRzBitBtn;
    edit_ts2: TcxTextEdit;
    cxLabel44: TcxLabel;
    btn_opents2: TRzBitBtn;
    edit_ts3: TcxTextEdit;
    cxLabel45: TcxLabel;
    btn_opents3: TRzBitBtn;
    edit_ts4: TcxTextEdit;
    cxLabel46: TcxLabel;
    btn_opents4: TRzBitBtn;
    edit_ts5: TcxTextEdit;
    cxLabel47: TcxLabel;
    btn_opents5: TRzBitBtn;
    cxDBComboBox8: TcxDBComboBox;
    cxDBComboBox9: TcxDBComboBox;
    Qry_YakTs_docid: TStringField;
    Panel10: TPanel;
    Panel11: TPanel;
    btn_smsclose: TcxButton;
    Panel12: TPanel;
    Panel13: TPanel;
    btn_smssend: TcxButton;
    memo_MMS: TcxMemo;
    cxLabel33: TcxLabel;
    cxLabel48: TcxLabel;
    edit_sub: TcxTextEdit;
    edit_Manager: TcxTextEdit;
    cxLabel49: TcxLabel;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    cxLabel50: TcxLabel;
    btn_InBuild: TRzBitBtn;
    btn_delbuild: TRzBitBtn;
    btn_openbuild: TRzBitBtn;
    edit_build: TcxTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel51: TcxLabel;
    btn_inetc: TRzBitBtn;
    btn_deletc: TRzBitBtn;
    btn_maetc: TRzBitBtn;
    edit_etc: TcxTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Qry_Yakimdae: TStringField;
    cxLabel43: TcxLabel;
    edit_ts1: TcxTextEdit;
    Label2: TLabel;
    Panel14: TPanel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    btn_build: TButton;
    cxDBTextEdit10: TcxDBTextEdit;
    Qry_YakAccBANK: TStringField;
    Qry_YakAccNo: TStringField;
    Qry_Yakwritemantel: TStringField;
    Qry_Yakreceiptdate: TDateTimeField;
    frxReport1: TfrxReport;

    procedure XFormShow(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
    procedure do_getLandTS(MasterID: String);
    procedure do_getBuildTS(MasterID: String);
    procedure do_getMasterTS(MasterID: String);
    procedure Btn_printClick(Sender: TObject);
    procedure btn_IngongClick(Sender: TObject);
    procedure btn_In1Click(Sender: TObject);
    procedure btn_In2Click(Sender: TObject);
    procedure btn_In3Click(Sender: TObject);
    procedure btn_MakegongClick(Sender: TObject);
    procedure btn_Make1Click(Sender: TObject);
    procedure btn_Make2Click(Sender: TObject);
    procedure btn_Make3Click(Sender: TObject);
    procedure btn_opengongClick(Sender: TObject);
    procedure btn_open1Click(Sender: TObject);
    procedure btn_open2Click(Sender: TObject);
    procedure btn_open3Click(Sender: TObject);
    procedure btn_delgongClick(Sender: TObject);
    procedure btn_del1Click(Sender: TObject);
    procedure btn_del2Click(Sender: TObject);
    procedure btn_del3Click(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure btn_opents1Click(Sender: TObject);
    procedure btn_opents2Click(Sender: TObject);
    procedure btn_opents3Click(Sender: TObject);
    procedure btn_opents4Click(Sender: TObject);
    procedure btn_opents5Click(Sender: TObject);
    procedure cxDBMaskEdit3Exit(Sender: TObject);
    procedure btn_smssendClick(Sender: TObject);
    procedure btn_smscloseClick(Sender: TObject);
    procedure btn_InBuildClick(Sender: TObject);
    procedure btn_openbuildClick(Sender: TObject);
    procedure btn_delbuildClick(Sender: TObject);
    procedure btn_inetcClick(Sender: TObject);
    procedure btn_maetcClick(Sender: TObject);
    procedure btn_deletcClick(Sender: TObject);
    procedure Btn_CloseClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure btn_buildClick(Sender: TObject);

  private
    procedure ProcessParameters(ALink: TXLink);
    procedure do_Make(SEQ: Integer);
    procedure do_In(editboxname :TcxTextEdit; SEQ: Integer);
    procedure do_OPEN(FILENAME: String);
    procedure do_Del(editboxname: TcxTextEdit; num: Integer);
    procedure do_dbin(Filename: String; num: Integer);
    procedure do_getFiledata;
    procedure do_setStatus(State: Integer);
    function CheckPDF: Boolean;
    procedure do_CheckCustomer;
    procedure do_getTaksangFile;
    procedure do_getCustname;
    function CheckSMS: Boolean;
    procedure do_SENDSMS;
    procedure do_getJubsuData;
     function IsWindows64: Boolean;
   procedure do_GetOffice;
    function do_CHKHF:Boolean;
    procedure do_GETImgAcc;
    procedure do_SavaIMGAcc;

  public
  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);
 var
  cMode: string;
   Btm: TBitmap;
   Jpg: TJpegImage;
   receiptdate: String;
   Filename: String;
   Custname: String;

   HFKIND: Boolean;

   Address: string;
   ZipCode: String;
   Phone: String;
   Fax: String;
   President: String;
   PresidentRule: String;
   Corpname : string;
   PHFYN : string;


implementation

uses
  CommModule,userfunc, DM, DM2, CommFuncU,UserData,Apconfig;
       // ������ 'userdata' �� userinfo�� �� �� �ִ�. 
{$R *.DFM}

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

      // �θ� �������� ������ MDI Child�� �Ӽ��� �����Ѵ�
      if AParent = nil then
        FormStyle := fsMDIChild;

      if Assigned(ALink) then
        ProcessParameters(ALink);

      Show;
    end;
  except;
  end
end;

{ TXForm2 }

//
// �ʱ� �Ķ���� ó�� ��ƾ
//
procedure TXForm2.ProcessParameters(ALink: TXLink);
var
 TSMaster: STring;
begin
  TSMaster := '';
  if ALink <> nil then
  begin
    receiptdate := '';
    receiptdate := StringReplace( (ALink.ParamByString('Receiptdate')),'-','',[rfReplaceAll]);
   // ShowMessage(receiptdate);


      with Qry_Yak do
      begin

        SQL.Clear;
        Parameters.Clear;
        SQL.Text := 'EXEC SP_IW_MAKE_YACKMASTER :Docid, :Writeman, :Manager, ' +
          ':CustDocid,:CustName,:CustTel, :Debtor, :ADDR, :Category, :Ts_docid, :receiptdate';

        Parameters.ParamByName('Docid').Value := ALink.ParamByString('Docid');
        Parameters.ParamByName('Writeman').Value := UserInfo.UserName;
        Parameters.ParamByName('Manager').Value := ALink.ParamByString('Manager');
        Parameters.ParamByName('CustDocid').Value := ALink.ParamByString('CustDocid');
        Parameters.ParamByName('CustName').Value := ALink.ParamByString('CustName');
        Parameters.ParamByName('CustTel').Value := ALink.ParamByString('CustPhone');
        Parameters.ParamByName('Debtor').Value := ALink.ParamByString('Debtor');
       // Parameters.ParamByName('Owner').Value := ALink.ParamByString('OwnerName');
        Parameters.ParamByName('ADDR').Value := ALink.ParamByString('Address');
        Parameters.ParamByName('Category').Value := ALink.ParamByString('Category');
        Parameters.ParamByName('Ts_docid').Value := ALink.ParamByString('TS_MasterID');
        Parameters.ParamByName('receiptdate').Value := ALink.ParamByString('Receiptdate');
        ExecSQL;

      end;

   end;

  if Qry_Yak.Active then Qry_Yak.Active := False;
  Qry_Yak.SQL.Clear;
  Qry_Yak.Parameters.Clear;
  Qry_Yak.SQL.Text := 'EXEC SP_IW_S_YACKMASTER :Docid';
  Qry_Yak.Parameters.ParamByName('Docid').Value := ALink.ParamByString('Docid');
  Qry_Yak.Open;

  do_getFiledata;
  TSMaster := ALink.ParamByString('TS_MasterID');
  do_getBuildTS(TSMaster);
  do_getLandTS(TSMaster);
  do_getMasterTS(TSMaster);
  Qry_Yak.Active := True;
  Qry_Yak.Edit;
  do_CheckCustomer;
  do_getCustname;
  if Qry_Yak.FieldByName('Status').AsInteger < 20 then  do_setStatus(20);
  Label2.Caption := Custname;

    HFKIND := do_CHKHF;
   if HFKIND  then
   begin
      PHFYN := 'Y';
       do_GETImgAcc;
       cxLabel54.Visible := True;
     cxLabel55.Visible := True;
     cxDBTextEdit9.Visible := True;
     cxDBTextEdit8.Visible := True;
   end
   else
   begin
      PHFYN := 'N';
      cxLabel54.Visible := False;
     cxLabel55.Visible := False;
     cxDBTextEdit9.Visible := False;
     cxDBTextEdit8.Visible := False;
   end;
end;


procedure TXForm2.XFormShow(Sender: TObject);
begin

  Filename := '';
  //do_CheckCustomer;
 // do_setStatus(20);

 // edt_name.ImeMode := imhanguel ;
 do_GetOffice;
end;



procedure TXForm2.Btn_SaveClick(Sender: TObject);
begin
 // do_setStatus(40);
  Qry_Yak.FieldByName('Writeman').AsString := UserInfo.UserName;
  Qry_Yak.FieldByName('Writedate').AsDateTime := Now;

  Qry_Yak.Post;
  if Qry_Yak.Active then Qry_Yak.Active := False;
   Qry_Yak.Active := True;
  ShowMessage('����Ϸ�');
  do_SENDSMS;

end;

procedure TXForm2.Btn_EditClick(Sender: TObject);
begin
 // do_setStatus(20);
  Qry_Yak.Edit;

end;

procedure TXForm2.do_getBuildTS(MasterID: String);
var
  Count: Integer;
begin


  Grid_Build.RowCount := 2;
  Grid_Build.ColCount := 5;

  Grid_Build.ColWidths[0] := 50;
  Grid_Build.ColWidths[1] := 80;
  Grid_Build.ColWidths[2] := 130;
  Grid_Build.ColWidths[3] := 130;
  Grid_Build.ColWidths[4] := 130;

  Grid_Build.Cells[0,0] := '��';
  Grid_Build.Cells[1,0] := '��      ��';
  Grid_Build.Cells[2,0] := '��      ��';
  Grid_Build.Cells[3,0] := '��      ��';
  Grid_Build.Cells[4,0] := '�����ް���';
 // ShowMessage(MasterID);
  if  MasterID = '' then Exit;
 // ShowMessage( Qry_Yak.FieldByName('CustDocid').AsString);
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'select Floors, Area, UnitCost, Total, Re_Price from  APW_TS_Build where TS_MasterID =  :Docid ';
  ADOQuery1.Parameters.ParamByName('Docid').Value := MasterID;
  ADOQuery1.Open;

  if ADOQuery1.Eof then  Exit;

  Grid_Build.RowCount := ADOQuery1.RecordCount +1;
  for Count := 1 to Grid_Build.RowCount-1 do
     begin
       Grid_Build.Cells[0, Count] := ADOQuery1.FieldByName('Floors').AsString;
       Grid_Build.Cells[1, Count] := ADOQuery1.FieldByName('Area').AsString;
       Grid_Build.Cells[2, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('UnitCost').AsFloat);
       Grid_Build.Cells[3, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('Total').AsFloat);
       Grid_Build.Cells[4, Count] := ADOQuery1.FieldByName('Re_Price').AsString;
       ADOQuery1.Next;
     end;
  ADOQuery1.Close;


end;

procedure TXForm2.do_getLandTS(MasterID: String);
var
  Count: Integer;
begin
  Grid_Land.RowCount := 2;
  Grid_Land.ColCount := 5;

  Grid_Land.ColWidths[0] := 80;
  Grid_Land.ColWidths[1] := 80;
  Grid_Land.ColWidths[2] := 100;
  Grid_Land.ColWidths[3] := 150;
  Grid_Land.ColWidths[4] := 150;

  Grid_Land.Cells[0,0] := '��  ��';
  Grid_Land.Cells[1,0] := '��  ��';
  Grid_Land.Cells[2,0] := '��  ��';
  Grid_Land.Cells[3,0] := '��  ��';
  Grid_Land.Cells[4,0] := '��  ��';
  //ShowMessage(MasterID);
  if MasterID = '' then Exit;
    //ShowMessage('Build'+ Qry_Yak.FieldByName('CustDocid').AsString);
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT Jibun,JiMok, Area, UnitCost, Total FROM  APW_TS_Land WHERE  TS_MasterID  =  :Docid ';
  ADOQuery1.Parameters.ParamByName('Docid').Value := MasterID;
  ADOQuery1.Open;

  if ADOQuery1.Eof then Exit;

     Grid_Land.RowCount := ADOQuery1.RecordCount +1;
     for Count := 1 to Grid_Land.RowCount-1 do
     begin
       Grid_Land.Cells[0, Count] := ADOQuery1.FieldByName('Jibun').AsString;
       Grid_Land.Cells[1, Count] := ADOQuery1.FieldByName('JiMok').AsString;
       Grid_Land.Cells[2, Count] := ADOQuery1.FieldByName('Area').AsString;
       Grid_Land.Cells[3, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('UnitCost').AsFloat);
       Grid_Land.Cells[4, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('Total').AsFloat);
       ADOQuery1.Next;
     end;


end;


procedure TXForm2.Btn_printClick(Sender: TObject);
var
  Folder,year: String;
  PDFName, PDFName2, PDFName3: String;
begin
   PDFName := '';
   PDFName2 := '';

  // ShowMessage(Custname);
   year := '20'+copy(edit_docid.Text,4,2);
   Folder := '';
   Folder := '\\server\data1\���\'+year +'\'+Custname+'\'+ edit_docid.Text;
   PDFName := '\'+edit_docid.Text + 'gong.pdf';
   PDFName2 := '\'+edit_docid.Text + 'build.pdf';
   PDFName3 := '\'+edit_docid.Text + 'etc.pdf';
   Filename := Folder+edit_docid.Text+'pdf';




  if ForceDirectories(Folder) then
  begin
    frxPDFExport1.DefaultPath := Folder;
    frxPDFExport1.FileName := edit_docid.Text;
  end;
  if edit_filegong.Text <> '' then
  begin
    CopyFile(PChar(edit_filegong.Text), PChar(Folder+PDFName), True);

  end;
   if edit_build.Text <> '' then
  begin
    CopyFile(PChar(edit_build.Text), PChar(Folder+PDFName2), True);

  end;
  if edit_etc.Text <> '' then
  begin
    CopyFile(PChar(edit_etc.Text), PChar(Folder+PDFName3), True);

  end;
  //frxPDFExport1.FileName := edit_docid.Text;
  if cxDBCurrencyEdit5.Text <> '' then begin
     if Qry_Yak.FieldByName('Status').AsInteger < 30 then  do_setStatus(30);

  end;


     if  (Custname = '��������')  then
     begin
     // ShowMessage('����');
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\���־��.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
     else if  (Custname = '�������')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\������.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
     else if  (Custname = '����')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\�������.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
     else if  (Custname = '����')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\�������.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
     else if  (Custname = '����')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\�������.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
     else if  (Custname = '����')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\���Ѿ��.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
      else if  (Custname = '������')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\���������.fr3');
      frxReport1.ShowReport;
      EXIT;
     end
     else if  (Custname = '����')  then
     begin
      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\���þ�ĺ���.fr3');
      frxReport1.ShowReport;
      EXIT;
     end;




//ShowMessage(Appconfig.path.root + 'Report\���.fr3');
   //frxReport1.LoadFromFile(Appconfig.path.root + 'Report\���.fr3');

end;

procedure TXForm2.do_getMasterTS(MasterID: String);
begin
  if MasterID = '' then Exit;
     
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT Bigo, Toji_Build_Total FROM APW_TS_Master where MasterID = :Docid ';
  ADOQuery1.Parameters.ParamByName('Docid').Value := MasterID;
  ADOQuery1.Open;
  if ADOQuery1.Eof  then Exit;
  memo_Bigo.Lines.Add(ADOQuery1.FieldByName('Bigo').AsString);

  Label1.Caption := '��   �� :' + FormatFloat('#,#00',  ADOQuery1.FieldByName('Toji_Build_Total').AsFloat );

  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT* FROM APW_IW_DESKFILE where docid = :Docid ';
  ADOQuery1.Parameters.ParamByName('Docid').Value := MasterID;
  ADOQuery1.Open;
  if ADOQuery1.Eof  then Exit;
  edit_ts1.Text := ADOQuery1.FieldByName('file4name').AsString;
  edit_ts2.Text := ADOQuery1.FieldByName('file5name').AsString;
  edit_ts3.Text := ADOQuery1.FieldByName('file6name').AsString;
  edit_ts4.Text := ADOQuery1.FieldByName('file7name').AsString;
  edit_ts5.Text := ADOQuery1.FieldByName('file8name').AsString;
end;





procedure TXForm2.do_In(editboxname :TcxTextEdit; SEQ: Integer);
var
  filename: String;
begin
 if editboxname.Text <> '' then
  begin
    if MessageDlg('���� ������ ���� �Ͻðڽ��ϱ�?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DeleteFile(PChar(editboxname.Text));
    end
    else Exit;
  end;
   if OpenDialog1.Execute then
   begin
     CopyFile(Pchar(OpenDialog1.FileName),Pchar('\\server\data1\YACKSIC\'+IntToStr(SEQ)+
       ExtractFileName(OpenDialog1.FileName)),False);
  //showMessage(ExtractFileName(OpenDialog1.FileName));
     filename := '\\server\data1\YACKSIC\'+ IntToStr(SEQ)+  ExtractFileName(OpenDialog1.FileName);
    // ShowMessage(filename+' ||| '+ IntToStr(SEQ));
     do_dbin(filename, SEQ);
     ShowMessage('���缺��');
   end;
end;


procedure TXForm2.btn_IngongClick(Sender: TObject);
begin
  do_In(edit_filegong,0);

end;

procedure TXForm2.do_dbin(Filename: String; num: Integer);
begin
ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text := 'SELECT * FROM APW_IW_YACKFILE WHere Docid = :Docid';
  ADOQuery1.Parameters.ParamByName('Docid').Value := edit_docid.Text;
  ADOQuery1.Open;
  if ADOQuery1.Eof then
  begin
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.Text := 'EXEC SP_IW_I_YACKFILE :Docid, :filename,:fileupman,:Kind';
     ADOQuery1.Parameters.ParamByName('Docid').Value := edit_docid.Text;
     ADOQuery1.Parameters.ParamByName('filename').Value := Filename;
     ADOQuery1.Parameters.ParamByName('fileupman').Value := UserInfo.UserName;
     ADOQuery1.Parameters.ParamByName('Kind').Value := num;
     ADOQuery1.ExecSQL;
  end
  else
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text := 'EXEC SP_IW_U_YACKFILE :Docid, :filename, :fileupman,:Kind';
    ADOQuery1.Parameters.ParamByName('Docid').Value := edit_docid.Text;
    ADOQuery1.Parameters.ParamByName('filename').Value := Filename;
    ADOQuery1.Parameters.ParamByName('fileupman').Value := UserInfo.UserName;
    ADOQuery1.Parameters.ParamByName('Kind').Value := num;
    ADOQuery1.ExecSQL;

  end;
  do_getFiledata;
end;

procedure TXForm2.do_getFiledata;

begin
  edit_filegong.Text := '';
  edit_build.Text := '';
  edit_etc.Text := '';
  edit_file1.Text := '';
  edit_file2.Text := '';
  edit_file3.Text := '';


  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT * FROM APW_IW_YACKFILE WHERE docid = :Doc';
  ADOQuery1.Parameters.ParamByName('Doc').Value := edit_docid.Text;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;
  ADOQuery1.First;
  edit_filegong.Text := ADOQuery1.FieldByName('filegongname').AsString;
  edit_etc.Text := ADOQuery1.FieldByName('fileetcname').AsString;
  edit_build.Text := ADOQuery1.FieldByName('filebuildname').AsString;
  edit_file1.Text := ADOQuery1.FieldByName('file1name').AsString;
  edit_file2.Text := ADOQuery1.FieldByName('file2name').AsString;
  edit_file3.Text := ADOQuery1.FieldByName('file3name').AsString;

  ADOQuery1.Close;
end;

procedure TXForm2.btn_In1Click(Sender: TObject);
begin
  do_In(edit_file1,1);
end;

procedure TXForm2.btn_In2Click(Sender: TObject);
begin
   do_In(edit_file2,2);
end;

procedure TXForm2.btn_In3Click(Sender: TObject);
begin
  do_In(edit_file3,3);
end;


procedure TXForm2.do_Make(SEQ: Integer);
var
  file1name: String;
begin
  file1name := '';

  file1name := edit_docid.Text+ '-'+IntToStr(SEQ);
 if ClipBoard.HasFormat(CF_BITMAP) then
   begin
      Btm:=TBitmap.Create;
      Jpg:=TJpegImage.Create;
      try
          // 1. Ŭ������ -> ��Ʈ��
          Btm.Assign(ClipBoard);
          // 2. ��Ʈ�� -> JPEG
          Jpg.Assign(Btm);

          // ��������Ƽ ����
          Jpg.CompressionQuality:=50;
          // ���Ϸ� ����
          Jpg.SaveToFile('\\server\data1\YACKSIC\'+file1name+'.jpg');
          do_dbin('\\server\data1\YACKSIC\'+file1name+'.jpg',SEQ);
          ShowMessage('FILEĸó �Ϸ�');
      finally
        FreeAndNil(Jpg);
        FreeAndNil(Btm);
      end;
   end
   else
   begin
     ShowMessage('Ŭ�������ѳ����� �׸��� �ƴմϴ�.');
   end;
end;

procedure TXForm2.btn_MakegongClick(Sender: TObject);
begin
  do_Make(0);
end;

procedure TXForm2.btn_Make1Click(Sender: TObject);
begin
  do_Make(1);
end;

procedure TXForm2.btn_Make2Click(Sender: TObject);
begin
  do_Make(2);
end;

procedure TXForm2.btn_Make3Click(Sender: TObject);
begin
  do_Make(3);
end;


procedure TXForm2.do_OPEN(FILENAME: String);
var
  ext,dir: String;
begin
  ext := ExtractFileExt(FILENAME);
  if FILENAME = '' then begin
     ShowMessage('÷�������� �����ϴ�.');
    Exit;
  end
  else
  begin
    ext := ExtractFileExt(FILENAME);
    if IsWindows64  then dir := 'C:\Program Files (x86)\Adobe\Reader 9.0\Reader\AcroRd32.exe'
    else dir := 'C:\Program Files\Adobe\Reader 9.0\Reader\AcroRd32.exe';
   // ShowMessage(dir);

    if ext = '.pdf' then
    begin

      ShellExecute(Handle,'open',Pchar(dir),Pchar(FILENAME),'',SW_NORMAL);
    end
    else if ext = '.PDF' then
    begin
       ShellExecute(Handle,'open',Pchar(dir),Pchar(FILENAME),'',SW_NORMAL);
    end
    else  ShellExecute(Handle,'open',Pchar(FILENAME),'','',SW_NORMAL);
  end;

end;

procedure TXForm2.btn_opengongClick(Sender: TObject);
begin
  do_OPEN(edit_filegong.Text);
end;

procedure TXForm2.btn_open1Click(Sender: TObject);
begin
  do_OPEN(edit_file1.Text);
end;

procedure TXForm2.btn_open2Click(Sender: TObject);
begin
  do_OPEN(edit_file2.Text);
end;

procedure TXForm2.btn_open3Click(Sender: TObject);
begin
  do_OPEN(edit_file3.Text);
end;


procedure TXForm2.do_Del(editboxname: TcxTextEdit; num: Integer);
begin
if editboxname.Text <> '' then
  begin
    if MessageDlg('���� ������ ���� �Ͻðڽ��ϱ�?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DeleteFile(PChar(editboxname.Text));
      do_dbin('',num);
    end
    else Exit;
  end;
end;


procedure TXForm2.btn_delgongClick(Sender: TObject);
begin
  do_Del(edit_filegong, 0);
end;

procedure TXForm2.btn_del1Click(Sender: TObject);
begin
  do_Del(edit_file1, 1);
end;

procedure TXForm2.btn_del2Click(Sender: TObject);
begin
  do_Del(edit_file2, 2);
end;

procedure TXForm2.btn_del3Click(Sender: TObject);
begin
  do_Del(edit_file3, 3);
end;

procedure TXForm2.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
 //
end;

procedure TXForm2.frxReport1GetValue(const VarName: String;
  var Value: Variant);
  var
   imdae: String;
begin
  if Qry_Yak.FieldByName('imdae').AsString = 'Y' then imdae := 'Y'
  else imdae := 'N';
  if Varname = 'file1' then Value := edit_file1.Text;
  if Varname = 'file2' then Value := edit_file2.Text;
  if Varname = 'file3' then Value := edit_file3.Text;

  if Varname = 'tsfile1' then Value := edit_ts1.Text;
  if Varname = 'tsfile2' then Value := edit_ts2.Text;
  if Varname = 'tsfile3' then Value := edit_ts3.Text;
  if Varname = 'tsfile4' then Value := edit_ts4.Text;
  if Varname = 'tsfile5' then Value := edit_ts5.Text;

  if VarName ='Receiptdate' then  Value := (receiptdate);
   if VarName ='NowDate' then  Value :=  FormatDateTime('yyyy�� mm�� dd��',now);
  if VarName ='NowDate2' then  Value :=  FormatDateTime('yyyy. mm. dd',now);
  if VarName = 'CustSuSu' then Value := Custname;
  if VarName = 'imdae' then  Value :=  imdae;

  if VarName = 'address' then  Value :=  address;
  if VarName = 'ZipCode' then  Value :=  ZipCode;
  if VarName = 'Phone' then  Value :=  Phone;
  if VarName = 'Fax' then  Value :=  Fax;
  if VarName = 'President' then  Value :=  President;
  if VarName = 'PresidentRule' then  Value :=  PresidentRule;
  if VarName = 'Corpname' then  Value :=  Corpname;
  if VarName = 'Corpname2'then  Value := Trim(Corpname);
  if VarName = 'office' then  Value := UserInfo.Office;
  if VarName = 'PHFYN' then  Value := PHFYN;


end;



function TXForm2.CheckPDF: Boolean;
begin
  Result := True;
  if FileExists(Filename) then
  begin
    //pdf������ ������
    Result := False;
  end;
//
end;

procedure TXForm2.do_setStatus(State: Integer);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT Status FROM APW_IW_YACKMASTER where docid = :docid';
  ADOQuery1.Parameters.ParamByName('docid').Value := Qry_YakYAKMASTERID.AsString;
  ADOQuery1.Open;
  if (State < ADOQuery1.FieldByName('Status').AsInteger) then Exit
  else
  begin
     ADOQuery1.SQL.Clear;
     ADOQuery1.Parameters.Clear;
     ADOQuery1.SQL.Text := 'Update dbo.APW_IW_YACKMASTER set Status =:State where docid = :docid ';
     ADOQuery1.Parameters.ParamByName('State').Value := State;
     ADOQuery1.Parameters.ParamByName('docid').Value := edit_docid.Text;
     ADOQuery1.ExecSQL;
  end;
end;

procedure TXForm2.do_CheckCustomer;
Var
  I: Integer;
begin
  I := 0;
 for I := 1 to Length(edit_custname.Text) do begin
     if  (copy(edit_custname.Text,I,8) = '��������')  then
     begin
      //cxDBMaskEdit3.Enabled := False; //����������
      cxLabel8.Caption := '�ذ��⵵';
      cxLabel9.Caption := '�ǹ�����';  ///����/�ǹ� ����
      cxDBCurrencyEdit1.Enabled := False;  ///��������
      cxLabel39.Visible := False;     //���λ���
      cxDBComboBox6.Visible := False; //���λ���
      cxLabel17.Visible :=True;       //����Ư��
      cxDBComboBox4.Visible := True;  //����Ư��

//      frxReport1.LoadFromFile(Appconfig.path.root + 'Report\���־��.fr3');
//      EXIT;
     end
     else if  (copy(edit_custname.Text,I,8) = '�������')  then
     begin
       //cxDBMaskEdit3.Enabled := False; //����������
             cxLabel8.Caption := '����������';
       cxDBCurrencyEdit1.Enabled := False;  ///��������
       cxLabel9.Caption := '�ǹ�����';  ///����/�ǹ� ����
       cxLabel39.Visible := False;     //���λ���
       cxDBComboBox6.Visible := False; //���λ���
       cxLabel17.Visible :=True;       //����Ư��
       cxDBComboBox4.Visible := True;  //����Ư��
       cxLabel36.Visible :=False;        //��Ÿ
       cxDBComboBox5.Visible := False;   //��Ÿ

     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
      cxLabel39.Visible := True;     //���λ���
       cxDBComboBox6.Visible := True; //���λ���
       cxLabel17.Visible :=False;       //����Ư��
       cxDBComboBox4.Visible := False;  //����Ư��
       cxLabel28.Visible := False;        //��������
       cxDBCurrencyEdit3.Visible := False; //��������

     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
     cxLabel39.Visible := True;     //���λ���
       cxDBComboBox6.Visible := True; //���λ���
       cxLabel17.Visible :=False;       //����Ư��
       cxDBComboBox4.Visible := False;  //����Ư��
       cxLabel28.Visible := False;        //��������
       cxDBCurrencyEdit3.Visible := False; //��������
     end
      else if  (copy(edit_custname.Text,I,6) = '������')  then
     begin
     cxLabel39.Visible := True;     //���λ���
       cxDBComboBox6.Visible := True; //���λ���
       cxLabel17.Visible :=False;       //����Ư��
       cxDBComboBox4.Visible := False;  //����Ư��
       cxLabel28.Visible := False;        //��������
       cxDBCurrencyEdit3.Visible := False; //��������
     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
       cxLabel39.Visible := False;     //���λ���
       cxDBComboBox6.Visible := True; //���λ���
       cxLabel17.Visible :=True;       //����Ư��
       cxDBComboBox4.Visible := False;  //����Ư��
       cxLabel28.Visible := True;        //��������
       cxDBCurrencyEdit3.Visible := True; //��������
        cxLabel8.Caption := '����������';
       cxDBComboBox7.Enabled := False;
       cxDBTextEdit26.Enabled := False;
        cxLabel9.Caption := '�ǹ�����';
        cxLabel11.Caption :='��������';
        cxDBComboBox5.Enabled := False;

     end
     else if (copy(edit_custname.Text,I,4) = '����')  then
     begin
            cxLabel8.Caption := '�ذ�����';
       cxDBComboBox7.Visible := True;    //����
       cxLabel42.Visible := True;        //������
      // cxDBMaskEdit3.Visible := False;
       //cxLabel8.Visible := False;
       cxLabel39.Visible := True;     //���λ���
       cxDBComboBox6.Visible := True; //���λ���
       cxLabel17.Visible :=False;       //����Ư��
       cxDBComboBox4.Visible := False;  //����Ư��

       cxDBComboBox4.Properties.Items.Add('�������� �������� ���� ������.');

       cxDBComboBox8.Enabled := True;
       cxDBTextEdit26.Enabled := True;
       cxDBComboBox5.Enabled := True;
       cxDBCurrencyEdit3.Enabled := False;
       cxDBComboBox7.Enabled := True;//����
       cxLabel34.Caption := '�뵵';
       cxLabel28.Enabled := False;
       cxDBCurrencyEdit3.Enabled := False;
     end

  end;
end;

procedure TXForm2.do_getTaksangFile;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text := 'SELECT * FROM APW_IW_DESKFILE WHERE docid = :Doc';
  ADOQuery1.Parameters.ParamByName('Doc').Value := edit_docid.Text;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;
  ADOQuery1.First;

  edit_ts1.Text := ADOQuery1.FieldByName('file4name').AsString;
  edit_ts2.Text := ADOQuery1.FieldByName('file5name').AsString;
  edit_ts3.Text := ADOQuery1.FieldByName('file6name').AsString;
  edit_ts4.Text := ADOQuery1.FieldByName('file7name').AsString;
  edit_ts5.Text := ADOQuery1.FieldByName('file8name').AsString;

  ADOQuery1.Close;
end;

procedure TXForm2.btn_opents1Click(Sender: TObject);
begin
  do_OPEN(edit_ts1.Text);
end;

procedure TXForm2.btn_opents2Click(Sender: TObject);
begin
   do_OPEN(edit_ts2.Text);
end;

procedure TXForm2.btn_opents3Click(Sender: TObject);
begin
  do_OPEN(edit_ts3.Text);
end;

procedure TXForm2.btn_opents4Click(Sender: TObject);
begin
  do_OPEN(edit_ts4.Text);
end;

procedure TXForm2.btn_opents5Click(Sender: TObject);
begin
  do_OPEN(edit_ts5.Text);
end;

procedure TXForm2.cxDBMaskEdit3Exit(Sender: TObject);
begin
  //
end;

procedure TXForm2.do_getCustname;
var
  I : Integer;
begin


    for I := 1 to Length(edit_custname.Text) do begin
     if  (copy(edit_custname.Text,I,8) = '��������')  then
     begin
      Custname := '��������';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,8) = '�������')  then
     begin
     Custname := '�������';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
      Custname := '����';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
      Custname := '����';
      Continue;
     end
      else if  (copy(edit_custname.Text,I,4) = '���')  then
     begin
      Custname := '����';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
      Custname := '����';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
      Custname := '����';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,4) = '����')  then
     begin
      Custname := '����';
      Continue;
     end
     else if  (copy(edit_custname.Text,I,6) = '������')  then
     begin
      Custname := '������';
      Continue;
     end;

  end;
end;

function TXForm2.CheckSMS: Boolean;
var
  Manager: String;
begin

  Result := False;
  Manager :=  Copy(Qry_YakManager.AsString,1,3);
//  ShowMessage(IntToStr(Length('��(')));

  if Manager = '��(' then
  begin
    Result := False;
  end
  else if Qry_Yak.FieldByName('Price').AsFloat  > 0    then
  begin
    Result := True;
  end;
end;

procedure TXForm2.do_SENDSMS;
begin
   if CheckSMS then
   begin
     Panel10.Visible := True;
     ADOQuery1.SQL.Clear;
     ADOQuery1.Parameters.Clear;

     ADOQuery1.SQL.Text := 'SELECT Uptel,Uname FROM seat_userinfo Where Uname = :NAME';
     ADOQuery1.Parameters.ParamByName('NAME').Value := Qry_YakManager.AsString;
     ADOQuery1.Open;
     if ADOQuery1.Eof   then  Exit;
     edit_Manager.Text := ADOQuery1.FieldByname('Uptel').AsString;
     edit_sub.Text :=  Qry_Yak.FieldByName('docid').AsString +'  ����򰡿Ϸ�';
     memo_MMS.Lines.Add(Qry_Yak.FieldByName('docid').AsString +'  ����򰡿Ϸ�');
     memo_MMS.Lines.Add('http://106.251.236.114:8080/DESK/WebContent/Yak.jsp?docid='+Qry_Yak.FieldByName('docid').AsString);
   end
   else Panel10.Visible := False;
end;

procedure TXForm2.btn_smssendClick(Sender: TObject);
begin
   with ADOQuery2 do
   begin
      SQL.Clear;
         Parameters.Clear;
         SQL.Text := 'Exec MMS_SEND :FILE_CNT, :MMS_BODY, :MMS_SUBJECT, :FILE_TYPE1, :FILE_NAME1, :SERVICE_DEP1, :CALL_TO, :CALL_FROM';


         Parameters.ParamByName('FILE_CNT').Value := 0;
         Parameters.ParamByName('MMS_BODY').Value := memo_MMS.Text;
         Parameters.ParamByName('MMS_SUBJECT').Value := edit_sub.Text;
         Parameters.ParamByName('FILE_TYPE1').Value := '';
         Parameters.ParamByName('FILE_NAME1').Value := '';
         Parameters.ParamByName('SERVICE_DEP1').Value := '';
         Parameters.ParamByName('CALL_TO').Value :=  StringReplace(edit_Manager.Text,'-','',[rfReplaceAll]);
         Parameters.ParamByName('CALL_FROM').Value := '01059002734';

         ExecSQL;
   end;
   edit_Manager.Text := '';
   edit_sub.Text := '';
   memo_MMS.Text := '';
   Panel10.Visible := False;
end;

procedure TXForm2.btn_smscloseClick(Sender: TObject);
begin
  Panel10.Visible := False;
end;

procedure TXForm2.btn_InBuildClick(Sender: TObject);
begin
  do_In(edit_build,7);
end;

procedure TXForm2.btn_openbuildClick(Sender: TObject);
begin
  do_OPEN(edit_build.Text);
end;

procedure TXForm2.btn_delbuildClick(Sender: TObject);
begin
  do_Del(edit_build,7);
end;

procedure TXForm2.btn_inetcClick(Sender: TObject);
begin
 do_In(edit_etc,8);
end;

procedure TXForm2.btn_maetcClick(Sender: TObject);
begin
  do_OPEN(edit_etc.Text);
end;

procedure TXForm2.btn_deletcClick(Sender: TObject);
begin
  do_Del(edit_etc,8);
end;

procedure TXForm2.Btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TXForm2.Btn_CancelClick(Sender: TObject);
begin
//ShowMessage(IntToStr(Length('��(')));
  Qry_Yak.Cancel;
end;

procedure TXForm2.do_getJubsuData;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := ''
end;

function TXForm2.IsWindows64: Boolean;
type


  TIsWow64Process = function( // Type of IsWow64Process API fn


    Handle: Windows.THandle; var Res: Windows.BOOL


  ): Windows.BOOL; stdcall;


var


  IsWow64Result: Windows.BOOL; // Result from IsWow64Process


  IsWow64Process: TIsWow64Process; // IsWow64Process fn reference


begin


  // Try to load required function from kernel32


  IsWow64Process := Windows.GetProcAddress(


    Windows.GetModuleHandle('kernel32'), 'IsWow64Process'


  );


  if Assigned(IsWow64Process) then


  begin


    // Function is implemented: call it


    if not IsWow64Process(


      Windows.GetCurrentProcess, IsWow64Result


    ) then


      raise SysUtils.Exception.Create('IsWindows64: bad process handle');


    // Return result of function


    Result := IsWow64Result;


  end


  else


    // Function not implemented: can't be running on Wow64


    Result := False;

end;

procedure TXForm2.do_GetOffice;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'EXEC SP_IW_S_Officeinfo :Office';
  ADOQuery1.Parameters.ParamByName('Office').Value := UserInfo.Office;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;
   Address := ADOQuery1.FieldByName('Address').AsString;
   ZipCode := ADOQuery1.FieldByName('ZipCode').AsString;
   Phone := ADOQuery1.FieldByName('Phone').AsString;
   Fax  := ADOQuery1.FieldByName('Fax').AsString;
   President := ADOQuery1.FieldByName('President').AsString;
   PresidentRule := ADOQuery1.FieldByName('PresidentRule').AsString;
   Corpname :=  ADOQuery1.FieldByName('Corpname').AsString;
   ADOQuery1.Close;

end;

function TXForm2.do_CHKHF: Boolean;
begin
  Result := False;
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT DAMBO_NO FROM HF_P_Receipt Where DAMBO_NO = ' +
    ':CustDocid';
  ADOQuery1.Parameters.ParamByName('CustDocid').Value := Qry_Yak.FieldByName('CustDocid').AsString;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Result:= False
  else Result := True;
  ADOQuery1.Close;
end;

procedure TXForm2.do_GETImgAcc;
begin

  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'EXEC SP_IW_HF_ImgAccount_iu :Flag, :Office,:Account, :Docid ';
  ADOQuery1.Parameters.ParamByName('Flag').Value := 'Search';
  ADOQuery1.Parameters.ParamByName('Office').Value := UserInfo.Office;
  ADOQuery1.Parameters.ParamByName('Account').Value := '';
  ADOQuery1.Parameters.ParamByName('Docid').Value := Qry_Yak.FieldByName('Docid').AsString;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;

  if Qry_Yak.State in [dsbrowse] then Qry_Yak.Edit;
  Qry_Yak.FieldByName('AccNO').AsString := ADOQuery1.FieldByName('Account').AsString;
  Qry_Yak.FieldByName('AccBANK').AsString := ADOQuery1.FieldByName('AccountNm').AsString;
  Qry_Yak.Post;
  ADOQuery1.Close;
end;

procedure TXForm2.do_SavaIMGAcc;
begin
ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'EXEC SP_IW_HF_ImgAccount_iu :Flag, :Office, :Account,:Docid,:Debtor, :CustDocid ';
  ADOQuery1.Parameters.ParamByName('Flag').Value := 'Up';
  ADOQuery1.Parameters.ParamByName('Office').Value := UserInfo.Office;
  ADOQuery1.Parameters.ParamByName('Account').Value := Qry_Yak.FieldByName('AccNo').AsString;;
  ADOQuery1.Parameters.ParamByName('Docid').Value := Qry_Yak.FieldByName('Docid').AsString;
  ADOQuery1.Parameters.ParamByName('Debtor').Value := Qry_Yak.FieldByName('debtor').AsString;
  ADOQuery1.Parameters.ParamByName('CustDocid').Value := Qry_Yak.FieldByName('CustDocid').AsString;
  //ADOQuery1.ExecSQL;
  ADOQuery1.Close;
end;

procedure TXForm2.btn_buildClick(Sender: TObject);
var
  ALink : TXLink;
  Usedate: String;
begin

  ALink := TxLink.Create(nil);

  Try

    ALink.AddParams('MasterID', edit_docid.Text);

    OpenDLL('Buildreport_Yak.dll', nil, Alink);

    if ALink.Result = 1 then
    begin

      with Qry_Yak do
      begin

        if State in [dsbrowse] then Edit;


        if ALink.ParamByString('UseDate') <> '' then
        begin
          Usedate := Copy(ALink.ParamByString('UseDate') , 1, 4) + '-' + Copy(
            ALink.ParamByString('UseDate') , 5, 2) + '-' + Copy(
            ALink.ParamByString('UseDate') , 7, 2);
        end;
        FieldByName('UseDate').AsString := Usedate; ////��������
        FieldByName('Floor').AsString := ALink.ParamByString('Floor'); // ����
        FieldByName('Totdong').AsString := ALink.ParamByString('TotDong'); // �ѵ���
        FieldByName('TotSeadae').AsString := ALink.ParamByString('TotHouseCnt'); // �Ѽ����
        FieldByName('TotFloor').AsString := ALink.ParamByString('OneDong'); // ������
        FieldByName('GongArea').AsString := ALink.ParamByString('GongM'); // �������
        FieldByName('DaeArea').AsString := ALink.ParamByString('Land'); // ��������
        FieldByName('JunArea').AsString := ALink.ParamByString('BuildPung'); // �ǹ�����

      end;

    end;

  Finally

    Alink.Free;

  End;

end;

end.
