unit uAllocjisaa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, RzCmboBx, RzLabel, DB, kbmMemTable,
  kbmMWCustomConnectionPool, kbmMWCustomDataset, kbmMWClientDataset,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, ExtCtrls;

type
  TfrmAllocJisa = class(TForm)
    cxLabel8: TRzLabel;
    qryAllocJisa: TkbmMWClientQuery;
    qryStatusLog: TkbmMWClientQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    RzLabel49: TRzLabel;
    cxImageComboBox1: TcxImageComboBox;
    btnSave: TRzBitBtn;
    btnExit: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAllocJisa: TfrmAllocJisa;

implementation
uses
  DM, uMain, userdata;

{$R *.dfm}

procedure TfrmAllocJisa.FormShow(Sender: TObject);
var
  item : TcxImageComboBoxItem;
begin

  TfrmMain(self.Owner).qryOffice.First;
  while not   TfrmMain(self.Owner).qryOffice.Eof do
  begin
    item := cxImageComboBox1.Properties.Items.Add;
    item.Value := TfrmMain(Self.Owner).qryOffice.fieldbyName('Officeid').AsString;
    item.Description := TfrmMain(Self.Owner).qryOffice.fieldbyName('Name').AsString   ;

    TfrmMain(Self.Owner).qryOffice.Next;
  end;

end;

procedure TfrmAllocJisa.btnExitClick(Sender: TObject);
begin
    close;
end;

procedure TfrmAllocJisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TfrmAllocJisa.FormDestroy(Sender: TObject);
begin
  frmAllocJisa := nil;
end;

procedure TfrmAllocJisa.btnSaveClick(Sender: TObject);
begin

  try
    with qryAllocJisa do
    begin
      query.Text := 'Exec SP_U_APW_DH_HF_LINK_AllocOffice :Masterid, :Office';
      params.ParamByName('Masterid').AsInteger := TfrmMain(Self.Owner).qrywaiting.fieldByName('Masterid').AsInteger;
      params.ParamByName('office').AsString := cxImageComboBox1.Properties.Items[cxImageComboBox1.ItemIndex].Value ;

      qryAllocJisa.Execute;

    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;

  try
    with qryStatusLog do
    begin
      query.Text := 'Exec SP_I_HF_StatusLog :Masterid, :wUser, :Msg';
      params.ParamByName('Masterid').AsInteger := TfrmMain(Self.Owner).qrywaiting.fieldByName('Masterid').AsInteger;
      params.ParamByName('wUser').AsInteger := userinfo.UID;
      params.ParamByName('Msg').AsString  :=  userinfo.UserName +' '+ cxImageComboBox1.Properties.items[cxImageComboBox1.itemindex].Description +' 에 배정작업 실행';

      qryStatusLog.Execute;
    end;
     ShowMessage('배정완료');
    // Close;
  except on E:Exception do
    ShowMessage('지사배정log error' + E.Message );
  end;

end;


end.
