//  Here coding......
//
//

unit uHFJS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ScktComp, DB, kbmMemTable, kbmMWCustomConnectionPool,
  kbmMWCustomDataset, kbmMWClientDataset, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, StdCtrls, RzLabel, cxLabel, cxCurrencyEdit,dxLink,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Mask, RzEdit,
  RzDBEdit, ExtCtrls, cxMemo, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxDBLookupComboBox, cxImageComboBox,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmHFLIST = class(TForm)
    Panel1: TPanel;
    DSKHF: TDataSource;
    qry_KHF: TkbmMWClientQuery;
    Grid_PHF: TcxGrid;
    Grid_PHFDBTableView1: TcxGridDBTableView;
    Grid_PHFLevel1: TcxGridLevel;
    cxSplitter6: TcxSplitter;
    Grid_KHF: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    qry_PHF: TkbmMWClientQuery;
    dsPHF: TDataSource;
    qry_KHFMasterid: TLargeintField;
    qry_KHFindate: TStringField;
    qry_KHFco_prev_insp_no: TStringField;
    qry_KHFWorkKind: TStringField;
    qry_KHFproprietary_name: TStringField;
    qry_KHFseq: TStringField;
    qry_KHFduty_emp_nm: TStringField;
    qry_KHFduty_tel_no: TStringField;
    qry_KHFapplcant_nm: TStringField;
    qry_KHFapplcant_tel_no: TStringField;
    qry_KHFapplcant_zip_cd: TStringField;
    qry_KHFown_pers_nm: TStringField;
    qry_KHFkindhouse: TStringField;
    qry_KHFAddress: TStringField;
    qry_KHFCustname: TStringField;
    cxGridDBTableView1Masterid: TcxGridDBColumn;
    cxGridDBTableView1indate: TcxGridDBColumn;
    cxGridDBTableView1co_prev_insp_no: TcxGridDBColumn;
    cxGridDBTableView1WorkKind: TcxGridDBColumn;
    cxGridDBTableView1proprietary_name: TcxGridDBColumn;
    cxGridDBTableView1Custname: TcxGridDBColumn;
    cxGridDBTableView1seq: TcxGridDBColumn;
    cxGridDBTableView1duty_emp_nm: TcxGridDBColumn;
    cxGridDBTableView1duty_tel_no: TcxGridDBColumn;
    cxGridDBTableView1applcant_nm: TcxGridDBColumn;
    cxGridDBTableView1applcant_tel_no: TcxGridDBColumn;
    cxGridDBTableView1applcant_zip_cd: TcxGridDBColumn;
    cxGridDBTableView1own_pers_nm: TcxGridDBColumn;
    cxGridDBTableView1kindhouse: TcxGridDBColumn;
    cxGridDBTableView1Address: TcxGridDBColumn;
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
    qry_KHFapplcant_mobile: TStringField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure Grid_PHFDBTableView1DblClick(Sender: TObject);
    procedure ShowForm;
    procedure do_getData;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHFLIST: TfrmHFLIST;

implementation
uses
  Dm, userData,Js_Main;

{$R *.dfm}

procedure TfrmHFLIST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmHFLIST.cxGridDBTableView1DblClick(Sender: TObject);
var
  jsmain: TFrmJs_Main;
begin
  jsmain := TFrmJs_Main.Create(Application);
  try
    with jsmain do
    begin

      AHandle := SetParentControl(AParent);

      ProcessParameters(ALink);

      if ShowModal = mrok then begin

        if Assigned(Alink) then
        begin

          Alink.Result := 1;

          Alink.AddParams('Masterid', qry_KHF.FieldByName('Masterid').asinteger);

          Alink.AddParams('Custname', qry_KHF.FieldByName('Custname').AsString); // 거래처명
          Alink.AddParams('duty_emp_nm', qry_KHF.FieldByName('duty_emp_nm').AsString); // 담당자명
          Alink.AddParams('duty_tel_no', qry_KHF.FieldByName('duty_tel_no').AsString);  //담당자전화번호
          Alink.AddParams('applcant_nm', qry_KHF.FieldByName('applcant_nm').AsString);  //신청인 이름
          Alink.AddParams('applcant_mobile', qry_KHF.FieldByName('applcant_mobile').AsString);  //신청인전화번호
          Alink.AddParams('kindhouse', qry_KHF.FieldByName('kindhouse').AsString); // 유형
          Alink.AddParams('Address', qry_KHF.FieldByName('Address').AsString); // 유형
          //duty_tel_no


        end;
//        Free;
      end
      else
        Alink.Result := 0;;
    end; //with
//  except;
  finally
    FreeAndNil(jsmain);
  end
end;

procedure TfrmHFLIST.Grid_PHFDBTableView1DblClick(Sender: TObject);
begin
//
end;

procedure TfrmHFLIST.ShowForm;
var
  Form : TfrmHFLIST;
begin
  try
     Form := TfrmHFLIST.Create(Application);

     Form.ShowModal;
  finally
    FreeAndNil(Form);
  end;

end;

procedure TfrmHFLIST.do_getData;

begin

  with qry_KHF do
  begin
    if Active Then Close;
    query.Text := 'Exec SP_IW_S_KHF_JSLIST :OFFICE';
    Params.ParamByName('OFFICE').AsString := UserInfo.Office;
    Open;

  end;
  with qry_PHF do
  begin
    if Active Then Close;
    query.Text := 'Exec SP_IW_S_PHF_JSLIST :OFFICE';
    Params.ParamByName('OFFICE').AsString := UserInfo.Office;
    Open;

  end;
end;

procedure TfrmHFLIST.FormShow(Sender: TObject);
begin
    do_getData;
end;

end.
