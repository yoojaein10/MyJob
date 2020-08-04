unit inout2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Data.DB, Data.Win.ADODB,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, KingTool, TheKing, RzButton,  System.DateUtils,
  Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    prworkcancel: TRzBitBtn;
    Panel3: TPanel;
    Panel5: TPanel;
    KingCalendar1: TKingCalendar;
    Panel6: TPanel;
    KingNavigator1: TKingNavigator;
    Panel4: TPanel;
    Grid_Detail: TAdvStringGrid;
    Qry_MonList: TADOQuery;
    ADOConnection1: TADOConnection;
    qry_Detail: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure KingNavigator1Click(Sender: TObject; Button: TCalcBtn);
    procedure Grid_DetailGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure KingCalendar1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure do_GetMONData(MON: String);
    procedure do_GetMONDetail(DAY : String);
    procedure INIT_DETAILGRID;
    procedure do_Group;
    procedure do_GETMANDATA(MON, NAME: string);

  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  Grade : string;

implementation

{$R *.dfm}

uses Main;

procedure TForm8.do_GETMANDATA(MON, NAME: string);
var
  Count :  Integer;
begin
   Count := 0;
    KingCalendar1.ClearAllDays;
    KingCalendar1.TextInCell := True;
    KingCalendar1.ColorCellText := True;
    KingCalendar1.ColorCellDay := False;
    KingCalendar1.TextPlacement := ktTopLeft;
    KingCalendar1.TextFont.Size := 8;
    Qry_MonList.SQL.Clear;
    Qry_MonList.Parameters.Clear;
    Qry_MonList.SQL.Text := 'EXEC SP_IW_S_INOUTMonth_MAN  :Month , :Name';

    Qry_MonList.Parameters.ParamByName('Month').Value := MON;
    Qry_MonList.Parameters.ParamByName('Name').Value  := NAME;
    Qry_MonList.Open;
    if Qry_MonList.Eof then Exit;

    for Count := 0 to Qry_MonList.RecordCount -1 do
      begin

         if (Qry_MonList.FieldByName('WEEK').AsInteger  in [2..6] )then
         begin

         if Qry_MonList.FieldByName('OClock').AsString <> '-' then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 1, '��� : '+ Copy( Qry_MonList.FieldByName('OClock').AsString, 1, 2) + ':' + Copy( Qry_MonList.FieldByName('OClock').AsString, 3, 2) );
         end
         else
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 1, '��� :');
         end;

         if Qry_MonList.FieldByName('LClock').AsString <> '-' then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 3,  '���� : '+Copy( Qry_MonList.FieldByName('LClock').AsString, 1, 2) + ':' + Copy( Qry_MonList.FieldByName('LClock').AsString, 3, 2) );
         end
         else
         begin
            KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 3,  '���� :');
         end;

         if Qry_MonList.FieldByName('OUTClock').AsString <> '-' then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 4,  '���� : '+Copy( Qry_MonList.FieldByName('OUTClock').AsString, 1, 2) + ':' + Copy( Qry_MonList.FieldByName('OUTClock').AsString, 3, 2));
         end
         else
         begin
            KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 4,  '���� :');
         end;

         if Qry_MonList.FieldByName('ComClock').AsString <> '-' then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 4,  '���� : '+Copy( Qry_MonList.FieldByName('ComClock').AsString, 1, 2) + ':' + Copy( Qry_MonList.FieldByName('ComClock').AsString, 3, 2)  );
         end
         else
         begin
            KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 4,  '���� :');
         end;
         if Qry_MonList.FieldByName('ENDClock').AsString <> '-' then
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 2,  '��� : '+Copy( Qry_MonList.FieldByName('ENDClock').AsString, 1, 2) + ':' + Copy( Qry_MonList.FieldByName('ENDClock').AsString, 3, 2)  );
         end
         else
         begin
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 2,  '��� : ');
         end;

         end

         else  if  (Qry_MonList.FieldByName('WEEK').AsInteger  in [1,7] ) then
         begin
            //
         end
         else begin
             //
         end;




        Qry_MonList.Next;

      end;





    KingCalendar1.UpdateCalendar;
    Qry_MonList.Close;


end;

procedure TForm8.do_GetMONData(MON: String);
var
  Count :  Integer;
begin
   Count := 0;
    KingCalendar1.ClearAllDays;
    KingCalendar1.TextInCell := True;
    KingCalendar1.ColorCellText := True;
    KingCalendar1.ColorCellDay := False;
    KingCalendar1.TextPlacement := ktTopLeft;
    KingCalendar1.TextFont.Size := 9;
    Qry_MonList.SQL.Clear;
    Qry_MonList.Parameters.Clear;
    Qry_MonList.SQL.Text := 'EXEC SP_IW_S_INOUTMonth :Month , :Name';

    Qry_MonList.Parameters.ParamByName('Month').Value := MON;
    Qry_MonList.Parameters.ParamByName('Name').Value  := 'admin';//Main.MyName;
    Qry_MonList.Open;
    if Qry_MonList.Eof then Exit;

    for Count := 0 to Qry_MonList.RecordCount -1 do
      begin

         if (Qry_MonList.FieldByName('WEEK').AsInteger  in [2..6] )then
         begin

           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 1, '��� : '+Qry_MonList.FieldByName('OClock').asString);
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 3,  '���� : '+Qry_MonList.FieldByName('LClock').asString);
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 2,  '���� : '+Qry_MonList.FieldByName('OUTClock').asString);
           KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 2,  '���� : '+Qry_MonList.FieldByName('ComClock').asString);
         end

         else  if  (Qry_MonList.FieldByName('WEEK').AsInteger  in [1,7] ) then
         begin
             if (Qry_MonList.FieldByName('OClock').AsInteger = 0) and (Qry_MonList.FieldByName('LClock').AsInteger= 0) then
             begin

             end
             else
             begin
              // KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 1, '��� : '+Qry_MonList.FieldByName('OClock').asString);
              //  KingCalendar1.SetDateFlag (Qry_MonList.FieldByName('Day').AsInteger, 3,  '���� : '+Qry_MonList.FieldByName('LClock').asString);
             end;
         end
         else begin
             //
         end;




        Qry_MonList.Next;

      end;





    KingCalendar1.UpdateCalendar;
    Qry_MonList.Close;

 end;


procedure TForm8.do_GetMONDetail(DAY: String);
var
  Count : Integer;
begin
  Count := 0;
  qry_Detail.SQL.Clear;
  qry_Detail.Parameters.Clear;
  qry_Detail.SQL.Text := 'EXEC SP_IW_S_INOUTMonth_Detail :DAY';
  qry_Detail.Parameters.ParamByName('DAY').Value := DAY;
  qry_Detail.Open;
  if qry_Detail.Eof then Exit;
  Grid_Detail.RowCount := qry_Detail.RecordCount +1;
  for Count := 1 to Grid_Detail.RowCount -1 do
    begin
      Grid_Detail.Cells[1, Count] := qry_Detail.FieldByName('Gubun').AsString;
      Grid_Detail.Cells[2, Count] := qry_Detail.FieldByName('e_name').AsString;
      Grid_Detail.Cells[3, Count] := Copy( qry_Detail.FieldByName('e_time').AsString, 1, 2) + ':' + Copy( qry_Detail.FieldByName('e_time').AsString, 3, 2)  + ':' + Copy( qry_Detail.FieldByName('e_time').AsString, 5, 2);

      qry_Detail.Next;
    end;

end;

procedure TForm8.do_Group;
var
  ACol: integer;
begin
 // Grid_Main.GroupColumn := 1;
  ACol := 1;
    with Grid_Detail do

    begin

       ACol := 1;
      if (GroupColumn <> -1) and (ACol >= GroupColumn) then
        Inc(Acol);
      if (GroupColumn <> ACol) then
      begin
        Grouping.Summary := true;
        Grouping.MergeHeader := true;
        Grouping.ShowGroupCount := true;
        Group(ACol);
        //GroupColumn := 1;
       // SubGroup(ACol);

      end;
      ContractAll;
    end;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  Grade := 'Nomal';
   KingCalendar1.Year := YearOf(Now);
  KingCalendar1.Month := MonthOf(Now);
  KingCalendar1.Day := DayOf(Now);
  if  (Main.MyTeam  = 'J1') or (Main.MyTeam  = 'J2')   then
  begin
      Grade := 'admin';
      do_GetMONData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]));
  end
  else
  begin

     do_GETMANDATA(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]) , MyName);
    // ShowMessage(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]));
     Panel4.Visible := False;
  end;

end;

procedure TForm8.Grid_DetailGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if Grid_Detail.IsNode(ARow) then
    begin
      ABrush.Color := clGray;
      AFont.Color := clWhite;
    end;
end;

procedure TForm8.INIT_DETAILGRID;
begin
  Grid_Detail.ClearAll;
  Grid_Detail.UnGroup;
  Grid_Detail.RowCount := 2;
  Grid_Detail.ColCount := 4;
  Grid_Detail.Cells[0, 0] := '';
  Grid_Detail.Cells[1, 0] := '�� ��';
  Grid_Detail.Cells[2, 0] := '�� ��';
  Grid_Detail.Cells[3, 0] := '�� ��';
  Grid_Detail.ColWidths[0] := 70;
  Grid_Detail.ColWidths[1] := 70;
  Grid_Detail.ColWidths[2] := 70;
  Grid_Detail.ColWidths[3] := 70;

end;

procedure TForm8.KingCalendar1DblClick(Sender: TObject);
begin
 if Grade = 'admin' then
 begin
   INIT_DETAILGRID;
   do_GetMONDetail(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month])+ '-' + Format('%.2d', [KingCalendar1.Day]));
   do_Group;
 end
 else
 begin
   //
 end;
end;

procedure TForm8.KingNavigator1Click(Sender: TObject; Button: TCalcBtn);
begin
  if Grade = 'admin' then
  begin
    do_GetMONData(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]));
  end
  else
  begin
      do_GETMANDATA(IntToStr( KingCalendar1.Year) + '-' + Format('%.2d', [KingCalendar1.Month]) , MyName);
      Panel4.Visible := False;
  end;

end;

end.
