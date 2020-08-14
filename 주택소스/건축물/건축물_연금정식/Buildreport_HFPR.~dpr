//------------------------------------------------------------------------------
//
// Project     : test.dpr
// Author      : 
// Description : 
// History
//   V 1.00 : 2007.09.11 처음 작성
//
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

library Buildreport_HFPR;

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  dxForm,
  Forms,
  dxLink,
  buildMain in 'buildMain.pas' {XForm2: TXForm},
  NativeXml in 'NativeXml.pas',
  uJSON in 'uJSON.pas';

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
