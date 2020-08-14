unit ts_jun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, DB, ADODB,
  dxLink, AdvUtil;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grid_Main: TAdvStringGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    edit_docid: TEdit;
    btn_search: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Grid_MainDblClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    { Private declarations }
     MREG,MEUB,MBUN1,MBUN2,MasterId: String;
     procedure ProcessParameters(ALink: TXLink);
  public
    { Public declarations }
    procedure init_Grid;
    procedure get_data(REG,EUB,BUN1,BUN2: String);
    procedure do_Firstgetdata;
    procedure ShowForm(const ALink: TxLink);
    procedure do_setTSMaster(TsMaster: String);


  end;

var
  Form4: TForm4;


implementation
uses
  UserData,Js_Main;

{$R *.dfm}

{ TForm4 }

procedure TForm4.get_data(REG, EUB, BUN1, BUN2: String);
var
  Count: Integer;
  AddrTemp,BUNTemp: String;
begin
   Label2.Visible := False;
  AddrTemp := '';
  Count := 0;
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SELECT M.*, B.EMP FROM APW_TS_Master M, TMWCMN_USR_BAC_INFO B where M.Manager = B.USR_SEQ  and M.reg = :REG and M.eub = :EUB and M.bun1 = :BUN1 and M.bun2 = :BUN2 and M.reg_dateTime > getdate()-60 and M.Office = :Office';
  ADOQuery1.Parameters.ParamByName('REG').Value  := REG;
  ADOQuery1.Parameters.ParamByName('EUB').Value  := EUB;
  ADOQuery1.Parameters.ParamByName('BUN1').Value  := BUN1;
  ADOQuery1.Parameters.ParamByName('BUN2').Value  := BUN2;
  ADOQuery1.Parameters.ParamByName('Office').Value  := UserInfo.Office;
  ADOQuery1.Open;
  if ADOQuery1.Eof then
  begin
    Label2.Visible := True;
   Exit;
  end;
  Grid_Main.RowCount := ADOQuery1.RecordCount +1;
  for Count := 1 to Grid_Main.RowCount -1  do
  begin
    AddrTemp := '';
    BUNTemp := '';
    AddrTemp := ADOQuery1.FieldByName('Addr').AsString + ' ';
    AddrTemp := AddrTemp +  ADOQuery1.FieldByName('Building').AsString + ' ';
    AddrTemp := AddrTemp +  ADOQuery1.FieldByName('Dongho').AsString;

    BUNTemp := ADOQuery1.FieldByName('Bun1').AsString + '-'+ADOQuery1.FieldByName('Bun2').AsString;

    Grid_Main.Cells[0, Count] := ADOQuery1.FieldByName('MasterID').AsString;
    Grid_Main.Cells[1, Count] := AddrTemp;
    Grid_Main.Cells[2, Count] := BUNTemp;
    Grid_Main.Cells[3, Count] := ADOQuery1.FieldByName('CustName').AsString;
    Grid_Main.Cells[4, Count] := ADOQuery1.FieldByName('CustCharge').AsString;
    Grid_Main.Cells[5, Count] := ADOQuery1.FieldByName('Reg_dateTime').AsString;
    Grid_Main.Cells[6, Count] := ADOQuery1.FieldByName('EMP').AsString;
    Grid_Main.Cells[7, Count] := ADOQuery1.FieldByName('REG').AsString;
    Grid_Main.Cells[8, Count] := ADOQuery1.FieldByName('EUB').AsString;

    ADOQuery1.Next;

  end;


end;

procedure TForm4.init_Grid;
begin
  Grid_Main .ClearAll;
  Grid_Main.ColCount := 9;
  Grid_Main.RowCount := 2;

  Grid_Main.ColWidths[0] := 150;   //탁상번호
  Grid_Main.ColWidths[1] := 350; //소재지
  Grid_Main.ColWidths[2] := 80;  //번지
  Grid_Main.ColWidths[3] := 200; //거래처명
  Grid_Main.ColWidths[4] := 80; //의뢰인
  Grid_Main.ColWidths[5] := 100; //접수일자
  Grid_Main.ColWidths[6] := 80; //담당평가사
  Grid_Main.ColWidths[7] := 0; //REG
  Grid_Main.ColWidths[8] := 0; //EUB
 // Grid_Main.ColWidths[9] := 35; //EUB
 // Grid_cul.RowHeights[10] := 35;

  Grid_Main.Cells[0, 0] := '탁상번호';
  Grid_Main.Cells[1, 0] := '소재지';
  Grid_Main.Cells[2, 0] := '번지 ';
  Grid_Main.Cells[3, 0] := '거래처명';
  Grid_Main.Cells[4, 0] := '의뢰인';
  Grid_Main.Cells[5, 0] := '접수일자';
  Grid_Main.Cells[6, 0] := '담당평가사';
  Grid_Main.Cells[7, 0] := 'REG';
  Grid_Main.Cells[8, 0] := 'EUB';
 // Grid_cul.Cells[9, 0] := '16시~17시';
 // Grid_cul.Cells[0, 9] := '17시~18시';
 // Grid_cul.Cells[0, 10] := '18시~19시';



end;



procedure TForm4.FormShow(Sender: TObject);

begin

  init_Grid;

  get_data(MREG, MEUB, MBUN1, MBUN2);
end;

procedure TForm4.do_Firstgetdata;

begin
 //

end;

procedure TForm4.ShowForm(const ALink: TxLink);
var
  Form : TForm4;
begin


  Form := TForm4.Create(nil);
  try
    Form.ProcessParameters(ALink);
    Form.ShowModal;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TForm4.ProcessParameters(ALink: TXLink);
begin

  if ALink <> nil then begin
    MasterId :=  ALink.ParamByString('MasterID');
    MREG := ALink.ParamByString('REG');
    MEUB := Alink.ParamByString('EUB');
    MBUN1 := Alink.ParamByString('BUN1');
    MBUN2 := Alink.ParamByString('BUN2');
  end;
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Form4);
end;

procedure TForm4.Grid_MainDblClickCell(Sender: TObject; ARow,ACol: Integer);

begin
  if ARow = 0 then  Exit;
  if Grid_Main.Cells[0, ARow] = '' then Exit;

    do_setTSMaster(Grid_Main.Cells[0, ARow]);
end;

procedure TForm4.do_setTSMaster(TsMaster: String);
begin
///
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'UPDATE APW_MASTER SET TS_MasterID = :TS_MasterID  WHERE MASTERID = :MASTERID';
  ADOQuery1.Parameters.ParamByName('TS_MasterID').Value := TsMaster;
  ADOQuery1.Parameters.ParamByName('MASTERID').Value := MasterId;
  ADOQuery1.ExecSQL;
 //  ShowMessage(MasterId);
  Close;

end;

end.
