unit juso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxLabel, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, AdvUtil;

type
  TForm13 = class(TForm)
    Panel1: TPanel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Grid_TEAM: TAdvStringGrid;
    Grid_NAME: TAdvStringGrid;
    cxLabel73: TcxLabel;
    edit_NAME: TcxTextEdit;
    cxLabel1: TcxLabel;
    edit_TEL: TcxTextEdit;
    ADOQuery2: TADOQuery;
    cxLabel2: TcxLabel;
    edit_team: TcxTextEdit;
    Button1: TButton;
    btn_save: TButton;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Grid_TEAMSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure Grid_NAMESelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure do_initTEAM;
    procedure do_initNAME;
    procedure do_getTEAM;
    procedure do_getNAME(TEAM: String);
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

{ TForm13 }

procedure TForm13.btn_saveClick(Sender: TObject);
var
  CHK: Boolean;
  Count: Integer;
begin
  Count := 0;
  ADOQuery1.SQL.Text := '';
  ADOQuery1.SQL.Text := 'delete from sms_addr Where name = :delname';
  if edit_NAME.Text = ''  then
  begin
    ShowMessage('이름을 입력하세요');
  end;
  ADOQuery1.Parameters.ParamByName('delname').Value := Trim(edit_NAME.Text);
  ADOQuery1.ExecSQL;
  for Count := 1 to Grid_TEAM.RowCount- 1 do
  begin
    Grid_TEAM.GetCheckBoxState(0,Count,CHK);
    if CHK then
    begin

      ADOQuery1.SQL.Text := '';
      ADOQuery1.SQL.Text := 'INSERT INTO sms_addr (NO, team, name, Phone) VALUES (:NO, :team, :name, :Phone)';
      ADOQuery1.Parameters.ParamByName('No').Value := 0;
      ADOQuery1.Parameters.ParamByName('team').Value  := Grid_TEAM.Cells[1,Count];
      ADOQuery1.Parameters.ParamByName('name').Value  := Trim(edit_NAME.Text);
      ADOQuery1.Parameters.ParamByName('Phone').Value := Trim(edit_TEL.Text);
      ADOQuery1.ExecSQL;
    end;
  end;
   do_initTEAM;
  do_initNAME;
  do_getTEAM;
  ShowMessage('저장 완료');
end;

procedure TForm13.Button1Click(Sender: TObject);
begin
  if edit_team.Text  = '' then
  begin
    ShowMessage('팀명을 넣어주세요');
    Exit;
  end;

  ADOQuery1.SQL.Text := '';
  ADOQuery1.SQL.Text := 'INSERT INTO sms_addr (NO, team, name, Phone) VALUES (:NO, :team, :name, :Phone)';
  ADOQuery1.Parameters.ParamByName('No').Value := 0;
  ADOQuery1.Parameters.ParamByName('team').Value  := edit_team.Text;
  ADOQuery1.Parameters.ParamByName('name').Value  := '';
  ADOQuery1.Parameters.ParamByName('Phone').Value := '';
  ADOQuery1.ExecSQL;
   do_initTEAM;
  do_initNAME;
  do_getTEAM;
  ShowMessage('저장완료');
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
//그룹삭제
  if edit_team.Text = '' then
  begin
    ShowMessage('그룹을 선택하세요');
    Exit;
  end;
  ADOQuery1.SQL.Text := '';
  ADOQuery1.SQL.Text := 'delete from sms_addr where team = :team';
  ADOQuery1.Parameters.ParamByName('team').Value := edit_team.Text;

  ADOQuery1.ExecSQL;
   do_initTEAM;
  do_initNAME;
  do_getTEAM;
  ShowMessage('삭제되었습니다');
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm13.do_getNAME(TEAM: String);
var
  COUNT: Integer;
begin
  ADOQuery2.SQL.Text := '';
  ADOQuery2.SQL.Text  := 'SELECT NAME,PHONE FROM  sms_addr  WHERE TEAM = :TEAM';
  ADOQuery2.Parameters.ParamByName('TEAM').Value := TEAM;
  ADOQuery2.Open;
  if ADOQuery2.Eof  then Exit;
  Grid_NAME.RowCount := ADOQuery2.RecordCount +1;
  for COUNT := 1 to Grid_NAME.RowCount -1 do
    begin

       Grid_NAME.Cells[0, COUNT] := ADOQuery2.FieldByName('NAME').AsString;
       Grid_NAME.Cells[1, COUNT] := ADOQuery2.FieldByName('PHONE').AsString;
       ADOQuery2.Next;

    end;


end;

procedure TForm13.do_getTEAM;
var
  COUNT: Integer;
begin
  ADOQuery1.SQL.Text := '';
  ADOQuery1.SQL.Text  := 'SELECT DISTINCT(team), Count(team) AS COUNT FROM  sms_addr GROUP BY team  ';
  ADOQuery1.Open;
  if ADOQuery1.Eof  then Exit;
  Grid_TEAM.RowCount := ADOQuery1.RecordCount +1;
  for COUNT := 1 to Grid_TEAM.RowCount -1 do
    begin
       Grid_TEAM.AddCheckBox(0,COUNT,False, False);
       Grid_TEAM.Cells[1, COUNT] := ADOQuery1.FieldByName('team').AsString;
       Grid_TEAM.Cells[2, COUNT] := IntToStr(ADOQuery1.FieldByName('COUNT').AsInteger);
       ADOQuery1.Next;

    end;


end;

procedure TForm13.do_initNAME;
begin
  with Grid_NAME do
   begin

     RowCount := 2;
     ColCount := 2;
     FixedCols := 0;
     FixedRows := 1;
     ColWidths[0] := 100;
     ColWidths[1] := 150;

     Cells[0,0] := '이  름';
     Cells[1,0] := '전화번호';

   end;

end;

procedure TForm13.do_initTEAM;
begin
   with Grid_TEAM do
   begin

     RowCount := 2;
     ColCount := 3;
     FixedCols := 0;
     FixedRows := 1;
     ColWidths[0] := 30;
     ColWidths[1] := 150;
     ColWidths[2] := 50;
     Cells[0,0] := '체크';
     Cells[1,0] := '그룹명';
     Cells[2,0] := '인원수';
   end;



end;

procedure TForm13.FormShow(Sender: TObject);
var
  CHK: Boolean;
begin
  do_initTEAM;
  do_initNAME;
  do_getTEAM;

//  Grid_TEAMSelectCell(Sender,1,1,CHK);
end;

procedure TForm13.Grid_NAMESelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  Count: Integer;
begin

  Count := 0;

  if ARow = 0 then Exit;
  for Count := 1 to Grid_TEAM.RowCount -1 do
    begin
      Grid_TEAM.SetCheckBoxState(0,Count,False);
    end;
  ADOQuery1.SQL.Text := '';
  ADOQuery1.SQL.Text := 'SELECT * FROM sms_addr WHERE NAME = :name';
  ADOQuery1.Parameters.ParamByName('name').Value := Grid_NAME.Cells[0, ARow];
  ADOQuery1.Open;
  if ADOQuery1.Eof then  Exit;

  Count := 0;
  for Count := 1 to Grid_TEAM.RowCount -1 do
    begin
      if Grid_TEAM.Cells[1, Count] = ADOQuery1.FieldByName('team').AsString then
      begin
         Grid_TEAM.SetCheckBoxState(0,Count,True);
         ADOQuery1.Next;
      end;


    end;

  edit_NAME.Text := Grid_NAME.Cells[0, ARow];
  edit_TEL.Text  := Grid_NAME.Cells[1, ARow];
end;

procedure TForm13.Grid_TEAMSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 0  then Exit
  else if ACol = 0 then Exit

  else do_getNAME(Grid_TEAM.Cells[1, ARow]);
  edit_team.Text := Grid_TEAM.Cells[1, ARow];
end;

end.
