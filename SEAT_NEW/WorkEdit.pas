unit WorkEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, RzButton, cxTextEdit, cxMemo,
  Vcl.ComCtrls, cxLabel, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    AdvStringGrid1: TAdvStringGrid;
    cxLabel3: TcxLabel;
    dateWork: TDateTimePicker;
    cxLabel1: TcxLabel;
    memo_re: TcxMemo;
    prworksave: TRzBitBtn;
    prworkcancel: TRzBitBtn;
    Qry: TADOQuery;
    Btn_Edit: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure prworkcancelClick(Sender: TObject);
    procedure prworksaveClick(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
  private
    { Private declarations }
    procedure do_InitGrid;
    procedure do_GetGrid;

  public
    { Public declarations }
  end;

var
  Form5: TForm5;


implementation

uses
  Main;

{$R *.dfm}

procedure TForm5.AdvStringGrid1GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow =0 then
  begin
    HAlign := taCenter;
    VAlign := vtaCenter;
  end;
end;

procedure TForm5.AdvStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 0 then Exit;
  if AdvStringGrid1.Cells[0, ARow] = '' then Exit;
  if AdvStringGrid1.Cells[3, ARow] = '' then Exit;




    dateWork.Date := StrToDate(AdvStringGrid1.Cells[0, ARow]);
    memo_re.Text  := AdvStringGrid1.Cells[3, ARow];

end;

procedure TForm5.Btn_EditClick(Sender: TObject);
begin
  dateWork.Date := Now;
  memo_re.Text := '';
end;

procedure TForm5.do_GetGrid;
var
  Count : Integer;
begin
   with Qry do
   begin
     sql.Clear;
     Parameters.Clear;
     SQL.Text := 'SELECT EDITWORKDATE, RequestDATE, AcceptResult , RequestReason  FROM  [dbo].[APW_IW_EDITWORK_REQUEST] where Requestman = :NAME order  by EDITWORKDATE desc';
     Parameters.ParamByName('NAME').Value := MyName;
     Open;

      if Eof then Exit;

   end;
   AdvStringGrid1.RowCount := Qry.RecordCount + 1;
   with AdvStringGrid1 do
   begin
      for Count := 1 to RowCount -1 do
        begin
          Cells[0, Count] := DateToStr(Qry.FieldByName('EDITWORKDATE').AsDateTime);
          Cells[1, Count] := DateToStr(Qry.FieldByName('RequestDATE').AsDateTime);
          Cells[2, Count] := Qry.FieldByName('AcceptResult').AsString ;
          Cells[3, Count] :=  Qry.FieldByName('RequestReason').AsString ;
          Qry.Next;
        end;
   end;
end;

procedure TForm5.do_InitGrid;
begin
  with  AdvStringGrid1 do  begin
     Clear;
    RowCount := 2;
    ColCount := 7;

    Cells[0, 0] := '업무일자';
    Cells[1, 0] := '상신일자';
    Cells[2, 0] := '결제여부';
    Cells[3, 0] := '수정사유';


  end;

end;

procedure TForm5.FormShow(Sender: TObject);
begin
  Qry.Connection := Main.Form1.AdoCon;
  dateWork.Date := Now;
  memo_re.Text := '';
  do_InitGrid;
  do_GetGrid;
end;

procedure TForm5.prworkcancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm5.prworksaveClick(Sender: TObject);
begin
  Qry.SQL.Clear;
  Qry.Parameters.Clear;
  Qry.SQL.Text := 'SP_IW_IU_EDITWORK_REQUEST :NAME, :WORKDATE, :REQUESTREASON, :BIGO';
  Qry.Parameters.ParamByName('NAME').Value:= MyName;
  Qry.Parameters.ParamByName('WORKDATE').Value := dateWork.Date;
  Qry.Parameters.ParamByName('REQUESTREASON').Value := memo_re.Text;
  Qry.Parameters.ParamByName('BIGO').Value := '';
  Qry.ExecSQL;
  ShowMessage('저장되었습니다');
  do_InitGrid;
  do_GetGrid;
end;

end.
