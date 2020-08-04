unit Tong_Worker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, KingTool, Vcl.Grids, TheKing,  System.DateUtils,
  System.Math,
  Vcl.ExtCtrls, AdvUtil, AdvObj, BaseGrid, AdvGrid, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, RzButton;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    KingCalendar1: TKingCalendar;
    KingNavigator1: TKingNavigator;
    Grid_work: TAdvStringGrid;
    Qry_MonList: TADOQuery;
    prworkcancel: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure KingNavigator1Click(Sender: TObject; Button: TCalcBtn);
    procedure KingCalendar1MonthChange(Sender: TObject; Month: Integer);
    procedure KingCalendar1Click(Sender: TObject);
    procedure Grid_workGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure prworkcancelClick(Sender: TObject);
  private
    { Private declarations }
    procedure Do_getCalendarData(Month : String);
    function CalcTime(WorkHour: integer): string;
    procedure Do_getDayData(DAY: String);
    procedure Init_DayGrid;

  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

{ TForm7 }
uses
 Main;

procedure TForm7.Do_getCalendarData(Month : String);
var
  Count :  Integer;
begin
   Count := 0;
    KingCalendar1.ClearAllDays;
    KingCalendar1.TextInCell := True;
    KingCalendar1.ColorCellText := True;
    KingCalendar1.ColorCellDay := False;
    KingCalendar1.TextPlacement := ktTopLeft;

    Qry_MonList.SQL.Clear;
    Qry_MonList.Parameters.Clear;
    Qry_MonList.SQL.Text := 'EXEC SP_IW_S_WorkListMonth :Month , :Name';

    Qry_MonList.Parameters.ParamByName('Month').Value := Month;
    Qry_MonList.Parameters.ParamByName('Name').Value  := Main.MyName;
    Qry_MonList.Open;
    if Qry_MonList.Eof then Exit;

    for Count := 0 to Qry_MonList.RecordCount -1 do
      begin
         if (Qry_MonList.FieldByName('Sum_WorkHour').AsInteger >= 480) and (Qry_MonList.FieldByName('WEEK').AsInteger  in [2..6] )then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 1, CalcTime(Qry_MonList.FieldByName('Sum_WorkHour').AsInteger));
         end
         else if (Qry_MonList.FieldByName('Sum_WorkHour').AsInteger = 0) and (Qry_MonList.FieldByName('WEEK').AsInteger  in [2..6] )then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 2, CalcTime(Qry_MonList.FieldByName('Sum_WorkHour').AsInteger));
         end
         else  if   (Qry_MonList.FieldByName('Sum_WorkHour').AsInteger < 480)and (Qry_MonList.FieldByName('WEEK').AsInteger  in [2..6] ) then
         begin
            KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 3, CalcTime(Qry_MonList.FieldByName('Sum_WorkHour').AsInteger));
         end
         else if (Qry_MonList.FieldByName('Sum_WorkHour').AsInteger >= 480) and (Qry_MonList.FieldByName('WEEK').AsInteger  in [1,7] )then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 1, CalcTime(Qry_MonList.FieldByName('Sum_WorkHour').AsInteger));
         end
         else  if (Qry_MonList.FieldByName('Sum_WorkHour').AsInteger < 480) and (Qry_MonList.FieldByName('Sum_WorkHour').AsInteger > 0)and (Qry_MonList.FieldByName('WEEK').AsInteger  in [1,7] ) then
         begin
            KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 3, CalcTime(Qry_MonList.FieldByName('Sum_WorkHour').AsInteger));
         end
         else begin
             //
         end;




        Qry_MonList.Next;

      end;





    KingCalendar1.UpdateCalendar;

 end;

procedure TForm7.Do_getDayData(DAY: String);
var
 Count: Integer;
begin
  Init_DayGrid;
   Count := 0;
   Qry_MonList.SQL.Clear;
   Qry_MonList.Parameters.Clear;
   Qry_MonList.SQL.Text := 'EXEC SP_IW_S_WorkListDAY :DAY , :NAME';
   Qry_MonList.Parameters.ParamByName('DAY').Value := DAY;
   Qry_MonList.Parameters.ParamByName('NAME').Value :=   Main.MyName;
   Qry_MonList.Open;
   if Qry_MonList.Eof then Exit;
   Grid_work.RowCount := Qry_MonList.RecordCount + 1;
   for Count := 1 to Grid_work.RowCount -1 do
     begin
       Grid_work.Cells[0, Count] := Qry_MonList.FieldByName('Docid').AsString;
       Grid_work.Cells[1, Count] := Qry_MonList.FieldByName('WORKGUBUN').AsString;
       Grid_work.Cells[2, Count] := Qry_MonList.FieldByName('showhour').AsString;
       Grid_work.Cells[3, Count] := Qry_MonList.FieldByName('Manager').AsString;
       Grid_work.Cells[4, Count] := Qry_MonList.FieldByName('WorkBigo').AsString;
       Qry_MonList.Next;
     end;

end;

procedure TForm7.FormShow(Sender: TObject);
begin
  KingCalendar1.Year := YearOf(Now);
  KingCalendar1.Month := MonthOf(Now);
  KingCalendar1.Day := DayOf(Now);
  //KingCalendar1.Year := 2019;
  //KingCalendar1.Month := 12;
  //KingCalendar1.Day := 12;
  Qry_MonList.Connection :=  Main.Form1.AdoCon;
 // ShowMessage(Format('%.2d', [KingCalendar1.Month]));

  Do_getCalendarData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]));
  Do_getDayData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month])+'-'+Format('%.2d', [KingCalendar1.Day]));
end;

procedure TForm7.Grid_workGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign := taCenter;
  VAlign := vtaCenter;
end;

procedure TForm7.Init_DayGrid;
begin
  Grid_work.Clear;
  Grid_work.ColCount := 5;
  Grid_work.RowCount := 2;
  Grid_work.Cells[0, 0] := '감정서번호';
  Grid_work.Cells[1, 0] := '업무구분';
  Grid_work.Cells[2, 0] := '업무시간';
  Grid_work.Cells[3, 0] := '유치자';
  Grid_work.Cells[4, 0] := '업무비고';

  Grid_work.ColWidths[0] := 150;
  Grid_work.ColWidths[1] := 150;
  Grid_work.ColWidths[2] := 100;
  Grid_work.ColWidths[3] := 120;
  Grid_work.ColWidths[4] := 200;

end;

procedure TForm7.KingCalendar1Click(Sender: TObject);
begin
  Do_getDayData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month])+'-'+Format('%.2d', [KingCalendar1.Day]));
end;

procedure TForm7.KingCalendar1MonthChange(Sender: TObject; Month: Integer);
begin
  //  Do_getCalendarData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]));
end;

procedure TForm7.KingNavigator1Click(Sender: TObject; Button: TCalcBtn);
begin
 Do_getCalendarData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]));
end;
procedure TForm7.prworkcancelClick(Sender: TObject);
begin
  Close;
end;

function TForm7.CalcTime(WorkHour: integer): string;
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

end.
