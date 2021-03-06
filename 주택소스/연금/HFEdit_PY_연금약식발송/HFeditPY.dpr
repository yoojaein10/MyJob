//------------------------------------------------------------------------------
//
// Project     : ReceiptTmpinput.dpr
// Author      : 
// Description : 
// History
//   V 1.00 : 2017.11.16 ó�� �ۼ�
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

library HFeditPY;

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  dxForm,
  Forms,
  dxLink,
  uinput in 'uinput.pas' {XForm1: TXForm};

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
