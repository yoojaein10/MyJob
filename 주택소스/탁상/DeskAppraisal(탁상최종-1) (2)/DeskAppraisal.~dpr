//------------------------------------------------------------------------------
//
// Project     : DeskAppraisal.dpr
// Author      : 
// Description :
// History
//   V 1.00 : 2006.07.26 贸澜 累己
//  V 1.10 : 2007. 6 货肺 累己 
//------------------------------------------------------------------------------

{$WARN SYMBOL_PLATFORM OFF}

library DeskAppraisal;

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  dxForm,
  Forms,
  dxLink,
  DeskApp in 'DeskApp.pas' {Form1: TXForm},
  DESKJUN in 'DESKJUN.pas' {Form5};

var
  DLLApp: TApplication;
  DLLScreen: TScreen;

{$R *.res}

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
