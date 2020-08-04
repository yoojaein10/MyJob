unit Workmagam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, RzButton,
  Data.DB, Data.Win.ADODB, Main, cxCurrencyEdit, cxLabel, cxMemo;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cb_year: TcxComboBox;
    cb_month: TcxComboBox;
    btn_STong: TRzBitBtn;
    Grid_List: TAdvStringGrid;
    Qry: TADOQuery;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    edit_Snam: TcxCurrencyEdit;
    cb_YN: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    memo_Bigo: TcxMemo;
    edit_gun: TcxCurrencyEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    prworksave: TRzBitBtn;
    prworkcancel: TRzBitBtn;
    Grid_LOG: TAdvStringGrid;
    procedure FormShow(Sender: TObject);
    procedure Init_List;
    procedure get_List;
    procedure btn_STongClick(Sender: TObject);
    procedure Get_SUMprice;
    procedure do_SAVE;
    procedure prworksaveClick(Sender: TObject);
    procedure Grid_ListGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid_ListDblClickCell(Sender: TObject; ARow, ACol: Integer);

  private
    { Private declarations }
    procedure Init_LOG;
    procedure do_GetLog;

  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn_STongClick(Sender: TObject);
begin
  Init_List;
  get_List;
  Get_SUMprice;
end;


procedure TForm6.do_SAVE;
var
  MagamYN: string;
begin
  Qry.SQL.Text := '';
  Qry.Parameters.Clear;
  MagamYN := '';
  if cb_YN.Text = '����' then MagamYN := 'Y'
  else MagamYN := 'N';

 Qry.SQL.Text := 'EXEC SP_IW_I_LOCKDAYWORK :LockYN, :LockMan, :Bigo, :Price, :Total, :LockYear, :LockMonth';
 Qry.Parameters.ParamByName('LockYN').Value := MagamYN;
 Qry.Parameters.ParamByName('LockMan').Value := MyName;
 Qry.Parameters.ParamByName('Bigo').Value := memo_Bigo.Text;
 Qry.Parameters.ParamByName('Price').Value := edit_Snam.Value;
 Qry.Parameters.ParamByName('Total').Value := edit_gun.Value;
 Qry.Parameters.ParamByName('LockYear').Value := cb_year.Text;
 Qry.Parameters.ParamByName('LockMonth').Value := cb_month.Text;
 Qry.ExecSQL;

end;

procedure TForm6.FormShow(Sender: TObject);
begin
  Qry.Connection :=  Main.Form1.AdoCon;

end;

procedure TForm6.get_List;
var
  Count: Integer;
begin
  Qry.SQL.Text := '';
  Qry.Parameters.Clear;

  Qry.SQL.Text := 'EXEC SP_IW_S_MANWORK_MAGAMLIST :YEAR, :MONTH';
  Qry.Parameters.ParamByName('YEAR').Value := cb_year.Text;
  Qry.Parameters.ParamByName('MONTH').Value := cb_month.Text;
  Qry.Open;

  if Qry.Eof then Exit;
  Grid_List.RowCount := Qry.RecordCount + 1;

  for Count := 1 to Grid_List.RowCount -1 do
    begin
      Grid_List.Cells[0, Count] := Qry.FieldByName('LOCKYN').AsString;
      Grid_List.Cells[1, Count] := Qry.FieldByName('LockDate').AsString;
      Grid_List.Cells[2, Count] := FormatFloat('###,##0',Qry.FieldByName('Total').AsFloat);
      Grid_List.Cells[3, Count] := FormatFloat('###,##0',Qry.FieldByName('Price').AsFloat);
      Grid_List.Cells[4, Count] := Qry.FieldByName('LockMan').AsString;
      Grid_List.Cells[5, Count] := DateTimeToStr(Qry.FieldByName('LOCKEDDATE').AsDateTime);
      Grid_List.Cells[6, Count] := Qry.FieldByName('Bigo').AsString;
      Grid_List.Cells[7, Count] := Qry.FieldByName('SEQ').AsString;
      Qry.Next;

    end;


end;



procedure TForm6.Get_SUMprice;
begin
Qry.SQL.Text := '';
  Qry.Parameters.Clear;

  Qry.SQL.Text := 'EXEC SP_IW_S_ManWorkDetail_TotAmt :SDATE';
  Qry.Parameters.ParamByName('SDATE').Value := cb_year.Text+'-'+cb_month.Text;
  Qry.Open;

  if Qry.Eof then Exit;

  edit_gun.Text := FormatFloat('###,###', Qry.FieldByName('Tot_Cnt').AsFloat);
  edit_Snam.Text := FormatFloat('###,###', Qry.FieldByName('Tot_Price').AsFloat);
  if  Qry.FieldByName('Locked').AsString = 'Y' then
  begin
    cb_YN.ItemIndex := 1;
  end
  else
  begin
    cb_YN.ItemIndex := 0;
  end;
end;

procedure TForm6.Grid_ListDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
 if Grid_List.RowCount  <= 3 then
 begin
   Init_LOG;
   Exit;
 end;
 if (Grid_List.Cells[0, ARow] = 'Y') and( Grid_List.Cells[0, ARow -1] = 'N') then
 begin
     Init_LOG;
     do_GetLog;
 end
 else Init_LOG;

end;

procedure TForm6.Grid_ListGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
//
   HAlign := taCenter;
   VAlign := vtaCenter;
end;

procedure TForm6.Init_List;
begin
  Grid_List.Clear;
  Grid_List.RowCount := 2;
  Grid_List.ColCount := 8;
  Grid_List.Cells[0, 0] := '����';
  Grid_List.Cells[1, 0] := '������';
  Grid_List.Cells[2, 0] := '�Ǽ�';
  Grid_List.Cells[3, 0] := '�ݾ�';
  Grid_List.Cells[4, 0] := '�۾���';
  Grid_List.Cells[5, 0] := '�۾���';
  Grid_List.Cells[6, 0] := '�� ��';
  Grid_List.Cells[7, 0] := 'seq';

  Grid_List.ColWidths[0] := 50;
  Grid_List.ColWidths[1] := 100;
  Grid_List.ColWidths[2] := 80;
  Grid_List.ColWidths[3] := 100;
  Grid_List.ColWidths[4] := 80;
  Grid_List.ColWidths[5] := 180;
  Grid_List.ColWidths[6] := 250;
  Grid_List.ColWidths[7] := 20;

end;


procedure TForm6.Init_LOG;
begin
 Grid_LOG.Clear;
 Grid_LOG.ColCount := 7;
 Grid_LOG.RowCount := 2;
 Grid_LOG.Cells[0, 0] := '��������ȣ';
 Grid_LOG.Cells[1, 0] := '��������';
 Grid_LOG.Cells[2, 0] := '��ġ��';
 Grid_LOG.Cells[3, 0] := '�ۼ���';
 Grid_LOG.Cells[4, 0] := '�ð�';
 Grid_LOG.Cells[5, 0] := '����';
 Grid_LOG.Cells[6, 0] := '�ۼ�����';

 Grid_LOG.ColWidths[0] := 100;
 Grid_LOG.ColWidths[1] := 100;
 Grid_LOG.ColWidths[2] := 80;
 Grid_LOG.ColWidths[3] := 80;
 Grid_LOG.ColWidths[4] := 60;
 Grid_LOG.ColWidths[5] := 80;
 Grid_LOG.ColWidths[6] := 100;


end;


procedure TForm6.do_GetLog;
var
  Count : Integer;
begin
  Qry.SQL.Text := '';
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'EXEC SP_IW_S_MAGAM_DETAIL :BSEQ, :ASEQ';
  Qry.Parameters.ParamByName('BSEQ').Value := StrToInt(Grid_List.Cells[7, Grid_List.Row-1]);
  Qry.Parameters.ParamByName('ASEQ').Value := StrToInt(Grid_List.Cells[7, Grid_List.Row]);
  Qry.Open;

  if Qry.Eof then Exit;
  Grid_LOG.RowCount := Qry.RecordCount + 1;

  for Count := 1 to Grid_LOG.RowCount -1 do
    begin
       Grid_LOG.Cells[0, Count] := Qry.FieldByName('Docid').AsString;
       Grid_LOG.Cells[1, Count] := Qry.FieldByName('workdate').AsString;
       Grid_LOG.Cells[2, Count] := Qry.FieldByName('Manager').AsString;
       Grid_LOG.Cells[3, Count] := Qry.FieldByName('writeman').AsString;
       Grid_LOG.Cells[4, Count] := Qry.FieldByName('showhour').AsString;
       Grid_LOG.Cells[5, Count] := Qry.FieldByName('Gubun').AsString;
       Grid_LOG.Cells[6, Count] := Qry.FieldByName('writedate').AsString;
       Qry.Next;
    end;

end;


procedure TForm6.prworksaveClick(Sender: TObject);
begin
    do_SAVE;
    Init_List;
    get_List;
    ShowMessage('����Ǿ����ϴ�');
end;

end.