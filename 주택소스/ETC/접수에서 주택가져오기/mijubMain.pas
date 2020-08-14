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

unit mijubMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, SHDocVw,dxLink, shellapi,comobj,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, xmldom, dxForm,
  XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Grids, DBGrids, uJSON, Provider,
  Xmlxform, DB, DBClient, AdvObj, BaseGrid, AdvGrid, ADODB, cxCheckBox,NativeXml,
  ComCtrls, cefvcl, AdvUtil, RzButton, cxCurrencyEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  kbmMemTable, kbmMWCustomConnectionPool, kbmMWCustomDataset,
  kbmMWClientDataset, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type

  TXForm2 = class(TXForm)
    Panel1: TPanel;
    Grid_PHF: TcxGrid;
    Grid_PHFDBTableView1: TcxGridDBTableView;
    Grid_PHFDBTableView1Masterid: TcxGridDBColumn;
    Grid_PHFDBTableView1InDate: TcxGridDBColumn;
    Grid_PHFDBTableView1DAMBO_NO: TcxGridDBColumn;
    Grid_PHFDBTableView1workgubun: TcxGridDBColumn;
    Grid_PHFDBTableView1GAM_EUI_NM: TcxGridDBColumn;
    Grid_PHFDBTableView1GAM_EUI_JA: TcxGridDBColumn;
    Grid_PHFDBTableView1GAM_EUI_TEL: TcxGridDBColumn;
    Grid_PHFDBTableView1CHAEMU_NAME: TcxGridDBColumn;
    Grid_PHFDBTableView1CHAEMU_TELL2: TcxGridDBColumn;
    Grid_PHFDBTableView1GUBUN: TcxGridDBColumn;
    Grid_PHFDBTableView1Address: TcxGridDBColumn;
    Grid_PHFLevel1: TcxGridLevel;
    cxSplitter6: TcxSplitter;
    Grid_KHF: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Masterid: TcxGridDBColumn;
    cxGridDBTableView1indate: TcxGridDBColumn;
    cxGridDBTableView1co_prev_insp_no: TcxGridDBColumn;
    cxGridDBTableView1kindhouse: TcxGridDBColumn;
    cxGridDBTableView1WorkKind: TcxGridDBColumn;
    cxGridDBTableView1proprietary_name: TcxGridDBColumn;
    cxGridDBTableView1Custname: TcxGridDBColumn;
    cxGridDBTableView1seq: TcxGridDBColumn;
    cxGridDBTableView1duty_emp_nm: TcxGridDBColumn;
    cxGridDBTableView1duty_tel_no: TcxGridDBColumn;
    cxGridDBTableView1Address: TcxGridDBColumn;
    cxGridDBTableView1applcant_nm: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1applcant_tel_no: TcxGridDBColumn;
    cxGridDBTableView1applcant_zip_cd: TcxGridDBColumn;
    cxGridDBTableView1own_pers_nm: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Label3: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    DSKHF: TDataSource;
    qry_KHF: TkbmMWClientQuery;
    qry_KHFMasterid: TLargeintField;
    qry_KHFindate: TStringField;
    qry_KHFco_prev_insp_no: TStringField;
    qry_KHFWorkKind: TStringField;
    qry_KHFproprietary_name: TStringField;
    qry_KHFCustname: TStringField;
    qry_KHFseq: TStringField;
    qry_KHFduty_emp_nm: TStringField;
    qry_KHFduty_tel_no: TStringField;
    qry_KHFapplcant_nm: TStringField;
    qry_KHFapplcant_tel_no: TStringField;
    qry_KHFapplcant_zip_cd: TStringField;
    qry_KHFown_pers_nm: TStringField;
    qry_KHFkindhouse: TStringField;
    qry_KHFAddress: TStringField;
    qry_KHFapplcant_mobile: TStringField;
    qry_PHF: TkbmMWClientQuery;
    dsPHF: TDataSource;
    qry_PHFMasterid: TLargeintField;
    qry_PHFInDate: TDateTimeField;
    qry_PHFDAMBO_NO: TStringField;
    qry_PHFworkgubun: TStringField;
    qry_PHFGAM_EUI_NM: TStringField;
    qry_PHFGAM_EUI_JA: TStringField;
    qry_PHFGAM_EUI_TEL: TStringField;
    qry_PHFCHAEMU_NAME: TStringField;
    qry_PHFCHAEMU_TELL1: TStringField;
    qry_PHFCHAEMU_TELL2: TStringField;
    qry_PHFGUBUN: TStringField;
    qry_PHFAddress: TStringField;
    Grid_PHFDBTableView1Column1: TcxGridDBColumn;

    procedure XFormClose(Sender: TObject; var Action: TCloseAction);

    procedure XFormShow(Sender: TObject);
    procedure do_getdata;
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure Grid_PHFDBTableView1DblClick(Sender: TObject);

  private
    procedure ProcessParameters(ALink: TXLink);
  public

  end;

  procedure OpenForm(var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil);

implementation

uses
  CommModule,userfunc, DM, DM2, CommFuncU,UserData, Math;
{$R *.DFM}

 var
   kind: Integer;
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
            if kind = 1 then
            begin
                ALink.AddParams('kind',kind);
                Alink.AddParams('Masterid', qry_KHF.FieldByName('Masterid').asinteger);
                Alink.AddParams('Custname', qry_KHF.FieldByName('Custname').AsString); // 거래처명
                Alink.AddParams('co_prev_insp_no', qry_KHF.FieldByName('co_prev_insp_no').AsString); // 의뢰번호
                Alink.AddParams('duty_emp_nm', qry_KHF.FieldByName('duty_emp_nm').AsString); // 담당자명
                Alink.AddParams('duty_tel_no', qry_KHF.FieldByName('duty_tel_no').AsString);  //담당자전화번호
                Alink.AddParams('applcant_nm', qry_KHF.FieldByName('applcant_nm').AsString);  //신청인 이름
                Alink.AddParams('applcant_mobile', qry_KHF.FieldByName('applcant_mobile').AsString);  //신청인전화번호
                Alink.AddParams('applcant_tel_no', qry_KHF.FieldByName('applcant_tel_no').AsString); // 유형
                Alink.AddParams('Address', qry_KHF.FieldByName('Address').AsString);
                Alink.AddParams('GUBUN', qry_KHF.FieldByName('WorkKind').AsString);
            end
            else  if kind =2 then
            begin
                ALink.AddParams('kind',kind);
                Alink.AddParams('Masterid', qry_PHF.FieldByName('Masterid').asinteger);
                Alink.AddParams('Custname', qry_PHF.FieldByName('GAM_EUI_NM').AsString); // 거래처명
                Alink.AddParams('co_prev_insp_no', qry_PHF.FieldByName('DAMBO_NO').AsString); // 의뢰번호
                Alink.AddParams('duty_emp_nm', qry_PHF.FieldByName('GAM_EUI_JA').AsString); // 담당자명
                Alink.AddParams('duty_tel_no', qry_PHF.FieldByName('GAM_EUI_TEL').AsString);  //담당자전화번호
                Alink.AddParams('applcant_nm', qry_PHF.FieldByName('CHAEMU_NAME').AsString);  //신청인 이름
                Alink.AddParams('applcant_mobile', qry_PHF.FieldByName('CHAEMU_TELL2').AsString);  //신청인전화번호
                Alink.AddParams('applcant_tel_no', qry_PHF.FieldByName('CHAEMU_TELL1').AsString); // 유형
                Alink.AddParams('Address', qry_PHF.FieldByName('Address').AsString);
                Alink.AddParams('GUBUN', qry_PHF.FieldByName('workgubun').AsString);
            end;

        end;
//        Free;
      end
      else
        Alink.Result := 0;
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

do_getdata;

end;



procedure TXForm2.XFormShow(Sender: TObject);
begin
//
end;

procedure TXForm2.XFormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;



procedure TXForm2.do_getdata;
begin

  with qry_KHF do
  begin

    query.Text := 'Exec SP_IW_S_KHF_JSLIST :OFFICE';
    Params.ParamByName('OFFICE').AsString := UserInfo.Office;
    Open;

  end;
  with qry_PHF do
  begin

    query.Text := 'Exec SP_IW_S_PHF_JSLIST :OFFICE';
    Params.ParamByName('OFFICE').AsString := UserInfo.Office;
    Open;

  end;
end;

procedure TXForm2.cxGridDBTableView1DblClick(Sender: TObject);
begin
  kind := 1;
  ModalResult := mrOk;
end;

procedure TXForm2.Grid_PHFDBTableView1DblClick(Sender: TObject);
begin
  kind := 2;
  ModalResult := mrOk;

end;

end.



