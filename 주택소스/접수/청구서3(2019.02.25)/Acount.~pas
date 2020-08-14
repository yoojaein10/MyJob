unit Acount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, ExtCtrls,
  RbDrawCore, RbPanel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, kbmMemTable, kbmMWCustomConnectionPool,
  kbmMWCustomDataset, kbmMWClientDataset, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox;

type
    TAcountfrm = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DS_APW_Account: TDataSource;
    RbPanel3: TRbPanel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Panel1: TPanel;
    Shape9: TShape;
    Shape10: TShape;
    RbPanel2: TRbPanel;
    Panel3: TPanel;
    USP_S_APW_Account: TkbmMWClientStoredProc;
    cxButton1: TcxButton;
    lbl_Total: TcxLabel;
    lbl_TotalAp: TcxLabel;
    cxButton2: TcxButton;
    cxGridDBTableView1Bank: TcxGridDBColumn;
    cxGridDBTableView1Office: TcxGridDBColumn;
    cxGridDBTableView1Account: TcxGridDBColumn;
    USP_S_APW_AccountSEQ: TIntegerField;
    USP_S_APW_AccountCODE: TStringField;
    USP_S_APW_AccountBank: TStringField;
    USP_S_APW_AccountOffice: TStringField;
    USP_S_APW_AccountAccount: TStringField;
    USP_S_APW_AccountOwnerName: TStringField;
    USP_S_APW_AccountRegDate: TStringField;
    USP_S_APW_AccountDisuseDate: TStringField;
    USP_S_APW_AccountActive: TStringField;
    USP_S_APW_AccountOfficeID: TStringField;
    cxLabel1: TcxLabel;
    SearchText: TcxTextEdit;
    cxButton3: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    USP_S_APW_Accountsugam: TStringField;
    kbmMWClientQuery1: TkbmMWClientQuery;
    kbmMWClientQuery1SEQ: TIntegerField;
    kbmMWClientQuery1CODE: TStringField;
    kbmMWClientQuery1Bank: TStringField;
    kbmMWClientQuery1Office: TStringField;
    kbmMWClientQuery1Account: TStringField;
    kbmMWClientQuery1OwnerName: TStringField;
    kbmMWClientQuery1RegDate: TStringField;
    kbmMWClientQuery1DisuseDate: TStringField;
    kbmMWClientQuery1Active: TStringField;
    kbmMWClientQuery1OfficeID: TStringField;
    kbmMWClientQuery1sugam: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure SearchTextKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Acount_list(OfficeID : String);
  end;

var
  Acountfrm: TAcountfrm;


implementation

uses main, CommModule, UserData;

{$R *.dfm}

{ TForm4 }

procedure TAcountfrm.Acount_list(OfficeID: String);
begin
  if userinfo.Office = '10' then
    begin
     with kbmMWClientQuery1 do begin
       if active then close;
       params.parambyname('officeid').AsString := officeid;
       params.ParamByName('sugam').AsString := 'y';
       open;
      end;
    end
   else
      begin
         with kbmMWClientQuery1 do begin
       if active then close;
       params.parambyname('officeid').AsString := officeid;
       open;
      end;

      end;

 { with (USP_S_APW_Account) do begin
    if Active then Close;

   if userinfo.Office = '10' then
    begin
      StoredProcName:='@USP_S_APW_Account';
      Params.ParamByName('OfficeID').AsString  := OfficeID;
      Params[4].AsString := 'y';
      open;
    end
   else
     begin
      StoredProcName:='@USP_S_APW_Account';
      Params.ParamByName('OfficeID').AsString  := OfficeID;
      open;
     end;
  end; }
end;


procedure TAcountfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TAcountfrm.FormDestroy(Sender: TObject);
begin
  Acountfrm := nil;
end;

procedure TAcountfrm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TAcountfrm.cxButton2Click(Sender: TObject);
begin

  if userinfo.Office = '10' then
    BEGIN
      with (TXForm1(Self.Owner).tbl_gam_info) do begin
    if Active then begin
 fieldByName('Account').AsString := fieldByName('Account').AsString + #13 +'◈ '+ Format('%-24s',[kbmMWClientQuery1.fieldByName('Bank').AsString])+': ' +Format('%-20s',[kbmMWClientQuery1.fieldByName('Account').AsString]);
 fieldByName('Account').AsString :=  fieldByName('Account').AsString +'( 예금주 :'+  kbmMWClientQuery1.fieldByName('ownername').AsString +' )';
    end;
    end;
   end
 else begin

        with (TXForm1(Self.Owner).tbl_gam_info) do begin
    if Active then begin
 fieldByName('Account').AsString := fieldByName('Account').AsString + #13 +'◈ '+ Format('%-15s',[kbmMWClientQuery1.fieldByName('Bank').AsString])+': ' +Format('%-20s',[kbmMWClientQuery1.fieldByName('Account').AsString]);
 fieldByName('Account').AsString :=  fieldByName('Account').AsString +'( 예금주 :'+  kbmMWClientQuery1.fieldByName('ownername').AsString +' )';
    end;


     END;

  {
   with (TXForm1(Self.Owner).tbl_gam_info) do begin
    if Active then begin
 fieldByName('Account').AsString := fieldByName('Account').AsString + #13 +'◈ '+ Format('%-24s',[kbmMWClientQuery1.fieldByName('Bank').AsString])+': ' +Format('%-20s',[kbmMWClientQuery1.fieldByName('Account').AsString]);
 fieldByName('Account').AsString :=  fieldByName('Account').AsString +'( 예금주 :'+  kbmMWClientQuery1.fieldByName('ownername').AsString +' )';
    end;

 }

 { with (TXForm1(Self.Owner).tbl_gam_info) do begin
    if Active then begin
 fieldByName('Account').AsString := fieldByName('Account').AsString + #13 +'◈ '+ Format('%-24s',[USP_S_APW_Account.fieldByName('Bank').AsString])+': ' +Format('%-20s',[USP_S_APW_Account.fieldByName('Account').AsString]);
 fieldByName('Account').AsString :=  fieldByName('Account').AsString +'( 예금주 :'+  USP_S_APW_Account.fieldByName('ownername').AsString +' )';
    end; }

end;
if userinfo.Office = '23' then    //2019-02-11 남연재 추가. '(동부)'로 끝나는 계좌 구분용.
    BEGIN

     if Copy((kbmMWClientQuery1.fieldByName('Bank').AsString),Length(kbmMWClientQuery1.fieldByName('Bank').AsString) +1 -6 ,6) = '(동부)' then begin
     TXForm1(Self.Owner).tbl0.FieldByName('dong_gubun').Asstring  := 'Y'
     end
     else begin
     TXForm1(Self.Owner).tbl0.FieldByName('dong_gubun').Asstring  := 'N'
     end;
     end;

  Close;

end;

procedure TAcountfrm.cxButton3Click(Sender: TObject);
begin


 if userinfo.Office = '10' then
   begin

     with kbmMWClientQuery1 do
    begin

     if active then close;
        Params.ParamByName('Bank').AsString  := SearchText.Text;
        Params.ParamByName('OfficeID').AsString  := IntToStr(10);
        params.ParamByName('sugam').AsString := 'y';
        open;
      end;
    end
  else begin
  with kbmMWClientQuery1 do
    begin
     if active then close;
        Params.ParamByName('Bank').AsString  := SearchText.Text;
        Params.ParamByName('OfficeID').AsString  := UserInfo.Office;
        open;
      end;
     end;


{  with (USP_S_APW_Account) do begin
    if Active then Close;

    StoredProcName:='@USP_S_APW_Account';
    Params.ParamByName('Bank').AsString  := SearchText.Text;
    Params.ParamByName('OfficeID').AsString  := UserInfo.Office;
    open;

  end;
   }
end;

procedure TAcountfrm.SearchTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cxButton3Click(Sender);
end;

procedure TAcountfrm.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ( (ssCtrl in Shift) and ( Key = VK_RETURN) ) then
    cxButton2Click(Sender);
end;

procedure TAcountfrm.FormCreate(Sender: TObject);
begin
//cxButton3.click;
end;



procedure TAcountfrm.FormShow(Sender: TObject);
begin
 if userinfo.Office = '10' then
   begin
     with kbmMWClientQuery1 do
    begin
     if active then close;
        Params.ParamByName('Bank').AsString  := SearchText.Text;
        Params.ParamByName('OfficeID').AsString  := UserInfo.Office;
        params.ParamByName('sugam').AsString := 'y';
        open;
      end;
    end
  else begin
  with kbmMWClientQuery1 do
    begin
     if active then close;
        Params.ParamByName('Bank').AsString  := SearchText.Text;
        Params.ParamByName('OfficeID').AsString  := UserInfo.Office;
        open;
      end;
     end;
end;

end.
