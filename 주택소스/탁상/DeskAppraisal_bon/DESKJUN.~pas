unit DESKJUN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, ExtCtrls, DB, ADODB,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, AdvUtil,
  RzEdit;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grid_Land: TAdvStringGrid;
    cxLabel72: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edit_Addr: TcxTextEdit;
    edit_Cust: TcxTextEdit;
    edit_remodel: TcxTextEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Grid_Build: TAdvStringGrid;
    edit_man: TcxTextEdit;
    cxLabel5: TcxLabel;
    edit_price: TcxTextEdit;
    cxLabel4: TcxLabel;
    edit_jup: TcxTextEdit;
    cxLabel6: TcxLabel;
    memo_bigo: TRzMemo;
    procedure Grid_BuildGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid_LandGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure do_getdata(MasterID: String);
    procedure getMaster(MasterID: String);
    procedure initBuild;
    procedure initLand;
    procedure do_getLand(MasterID: String);
    procedure do_getBuild(MasterID: String);
  end;

var
  Form5: TForm5;

implementation
 uses
  DeskApp;
{$R *.dfm}

{ TForm5 }

procedure TForm5.do_getdata(MasterID: String);

 var
  Form : TForm5;
begin
//   if not Assigned(Form) then
//      Form := TForm5.Create(Application);


  try
    Form := TForm5.Create(Application);
   // Form.ProcessParameters(ALink);
  // Form.Visible := False;
     Form.getMaster(MasterID);
    Form.Show;
   
  finally
  // FreeAndNil(Form);
  end;
end;


procedure TForm5.getMaster(MasterID: String);
begin
  memo_bigo.Clear;
  initBuild;
  initLand;
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SP_IW_S_TSUSA_Master :MasterID  ';
  ADOQuery1.Parameters.ParamByName('MasterID').Value := MasterID;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;
  edit_Addr.Text := ADOQuery1.FieldByName('Address').AsString;
  edit_Cust.Text := ADOQuery1.FieldByName('CustName').AsString;
  edit_man.Text  := ADOQuery1.FieldByName('EMP').AsString;
  edit_remodel.Text := ADOQuery1.FieldByName('Remodel_Date').AsString;
  edit_jup.Text := FormatDateTime('YYYY-MM-DD',ADOQuery1.FieldByName('Reg_DateTime').AsDateTime);
  edit_price.Text := FormatFloat('#,###',ADOQuery1.FieldByName('ToJi_Build_Total').AsFloat);
  memo_bigo.Text := ADOQuery1.FieldByName('ToJiBIGO').AsString;
  do_getBuild(MasterID);
  do_getLand(MasterID);
end;

procedure TForm5.initBuild;
begin
  Grid_Build.RowCount := 2;
  Grid_Build.ColCount := 5;

  Grid_Build.ColWidths[0] := 50;
  Grid_Build.ColWidths[1] := 80;
  Grid_Build.ColWidths[2] := 150;
  Grid_Build.ColWidths[3] := 150;
  Grid_Build.ColWidths[4] := 150;

  Grid_Build.Cells[0,0] := '층';
  Grid_Build.Cells[1,0] := '면      적';
  Grid_Build.Cells[2,0] := '단      가';
  Grid_Build.Cells[3,0] := '금      액';
  Grid_Build.Cells[4,0] := '제조달가격';
end;

procedure TForm5.initLand;
begin
  Grid_Land.RowCount := 2;
  Grid_Land.ColCount := 5;

  Grid_Land.ColWidths[0] := 80;
  Grid_Land.ColWidths[1] := 80;
  Grid_Land.ColWidths[2] := 150;
  Grid_Land.ColWidths[3] := 150;
  Grid_Land.ColWidths[4] := 150;

  Grid_Land.Cells[0,0] := '지  번';
  Grid_Land.Cells[1,0] := '지  목';
  Grid_Land.Cells[2,0] := '면  적';
  Grid_Land.Cells[3,0] := '단  가';
  Grid_Land.Cells[4,0] := '금  액';
end;

procedure TForm5.Grid_BuildGetAlignment(Sender: TObject; ARow,ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign := taCenter;
  VAlign := vtaCenter;
end;

procedure TForm5.Grid_LandGetAlignment(Sender: TObject; ARow,ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign := taCenter;
  VAlign := vtaCenter;
end;

procedure TForm5.do_getBuild(MasterID: String);
var
  Count: Integer;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SP_S_APW_TS_Build :MasterID';
  ADOQuery1.Parameters.ParamByName('MasterId').Value := MasterID;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;
  Grid_Build.RowCount := ADOQuery1.RecordCount +1;
  for Count := 1 to Grid_Build.RowCount-1 do
  begin
    Grid_Build.Cells[0, Count] := ADOQuery1.FieldByName('Floors').AsString;
    Grid_Build.Cells[1, Count] := ADOQuery1.FieldByName('Area').AsString;
    Grid_Build.Cells[2, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('UnitCost').AsFloat);
    Grid_Build.Cells[3, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('Total').AsFloat);
    Grid_Build.Cells[4, Count] :=  ADOQuery1.FieldByName('Re_Price').AsString;
    ADOQuery1.Next;
  end;
end;

procedure TForm5.do_getLand(MasterID: String);
var
  Count: Integer;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Text := 'SP_S_APW_TS_Land :MasterID';
  ADOQuery1.Parameters.ParamByName('MasterId').Value := MasterID;
  ADOQuery1.Open;
  if ADOQuery1.Eof then Exit;
  Grid_Land.RowCount := ADOQuery1.RecordCount +1;
  for Count := 1 to Grid_Land.RowCount-1 do
  begin
    Grid_Land.Cells[0, Count] := ADOQuery1.FieldByName('JiBun').AsString;
    Grid_Land.Cells[1, Count] := ADOQuery1.FieldByName('JiMok').AsString;
    Grid_Land.Cells[2, Count] :=  ADOQuery1.FieldByName('Area').AsString;
    Grid_Land.Cells[3, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('UnitCost').AsFloat);
    Grid_Land.Cells[4, Count] := FormatFloat('#,0;-#,0', ADOQuery1.FieldByName('Total').AsFloat);
    ADOQuery1.Next;
  end;
end;

procedure TForm5.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Form5);
  Form5.Free;

end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
