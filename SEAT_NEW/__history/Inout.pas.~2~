unit Inout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, DateUtils,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Grid: TStringGrid;
    Sdate: TDateTimePicker;
    Edate: TDateTimePicker;
    Label1: TLabel;
    btn_serch: TButton;
    btn_Close: TButton;
    ADOQuery1: TADOQuery;
    ADOConnection2: TADOConnection;
    ADOConnection1: TADOConnection;

    procedure btn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure do_getNUM;
    procedure do_setGrid;
    procedure btn_serchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Main;


procedure TForm11.btn_CloseClick(Sender: TObject);
begin
  Close;
end;


procedure TForm11.btn_serchClick(Sender: TObject);
begin
  do_setGrid;
  do_getNUM;
end;

procedure TForm11.do_getNUM;
var
 I,J : Integer;
begin
  ADOQuery1.SQL.Text := '';
  ADOQuery1.SQL.Text := 'SELECT e_date,e_time,e_name, e_mode FROM tenter WHERE e_name = :NAME and e_mode < :grade and e_date between :Sdate and :Edate order by e_date desc ';
  ADOQuery1.Parameters.ParamByName('NAME').Value := Main.MyName;
  ADOQuery1.Parameters.ParamByName('grade').Value := '3';
  ADOQuery1.Parameters.ParamByName('Sdate').Value :=  StringReplace(DateToStr(Sdate.Date),'-','',[rfReplaceAll]);
  ADOQuery1.Parameters.ParamByName('Edate').Value :=  StringReplace(DateToStr(Edate.Date),'-','',[rfReplaceAll]);
  ADOQuery1.Open;

  if ADOQuery1.Eof then exit;
  Grid.RowCount := ADOQuery1.RecordCount + 1;
  for I := 1 to ADOQuery1.RecordCount + 1 do begin
      Grid.Cells[0, I] :=FormatFloat('####-##-##',StrToInt(ADOQuery1.FieldByName('e_date').AsString));
      Grid.Cells[1, I] := ADOQuery1.FieldByName('e_name').AsString;
      if ADOQuery1.FieldByName('e_mode').AsString = '1' then Grid.Cells[2, I] := FormatFloat('##:##:##',StrToInt(ADOQuery1.FieldByName('e_time').AsString))
      else Grid.Cells[3, I] := FormatFloat('##:##:##',StrToInt(ADOQuery1.FieldByName('e_time').AsString));
      ADOQuery1.Next;
  end;
end;

procedure TForm11.do_setGrid;
begin
  Grid.RowCount := 2;
  Grid.ColCount := 4;
  Grid.FixedCols := 0;
  Grid.Cells[0,0] := '날   짜';
  Grid.Cells[1,0] := '이   름';
  Grid.Cells[2,0] := '출근시간';
  Grid.Cells[3,0] := '퇴근시간';

  Grid.ColWidths[0] := 150;
  Grid.ColWidths[1] := 150;
  Grid.ColWidths[2] := 150;
  Grid.ColWidths[3] := 150;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TForm11.FormShow(Sender: TObject);
begin

  Sdate.Date := Now-7;
  Edate.Date := Now;

  do_setGrid;
  do_getNUM;
end;

end.
