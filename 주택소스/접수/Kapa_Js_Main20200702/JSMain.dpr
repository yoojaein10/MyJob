//------------------------------------------------------------------------------
//
// Unit        : JMain.pas
// Author      : 
// Description :
// History
//   V 1.00 : 2007.05 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

library JSMain;



uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  dxForm,
  Forms,
  dxLink,
  Js_Main in 'Js_Main.pas' {FrmJs_Main: TXForm},
  uADataSetBehavior in 'uADataSetBehavior.pas',
  uABooking in 'uABooking.pas',
  uBooking in 'uBooking.pas' {Frm_Booking},
  uAJubSu in 'uAJubSu.pas',
  uInventory in 'uInventory.pas' {Frm_Inventory},
  uAInvenTory in 'uAInvenTory.pas',
  ts_jun in 'ts_jun.pas' {Form4};

{$R *.res}

var
  DLLApp: TApplication;
  DLLScreen: TScreen;

procedure Open(AOwner: TApplication; AScreen: TScreen; var AHandle: Integer; AParent: TObject = nil; ALink: TXLink = nil); stdcall;
begin
  if Assigned(DLLProc) then
  begin
    DLLApp      := Application;
    DLLScreen   := Screen;
    Application := AOwner;
    Screen      := AScreen;
  end;

  OpenForm(AHandle, AParent, ALink);
end;

procedure DllEntryProc(const Reason: Integer);
begin
  if Reason = DLL_PROCESS_DETACH then
  begin
    if Assigned(DLLApp) then
      Application := DLLApp;
    if Assigned(DLLScreen) then
      Screen := DLLScreen;
  end;
end;

exports
  Open;

begin
  DLLApp    := nil;
  DLLScreen := nil;  
  DLLProc   := @DllEntryProc;
end.
