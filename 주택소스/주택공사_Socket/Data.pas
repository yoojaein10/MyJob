unit Data;

interface

uses
  SysUtils, Classes, Inifiles, DB, DBAccess, MSAccess, XMLDoc, XMLIntf, Variants;

type
  TDM = class(TDataModule)
    MSConnection: TMSConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
	doc: IXMLDocument;
	xnChild, xnGrandchild : IXMLNode;
  nR : Integer;
  cFile : string;
begin

  cFile := ExtractFilePath(ParamStr(0)) + ChangeFileExt(ExtractFileName(ParamStr(0)),'.config');

  doc :=  LoadXMLDocument(cFile);

  if doc.ChildNodes.First <> nil then
  begin
    xnChild := doc.DocumentElement;
    For nR := 0 To xnChild.ChildNodes.count - 1 Do
    begin
      xnGrandchild := xnChild.ChildNodes[nR];

      if xnGrandchild.NodeName = 'DbConnection' then begin

        MSConnection.Server   := VarToStrDef(xnGrandchild.Attributes['Host'],'');
        MSConnection.Username := VarToStrDef(xnGrandchild.Attributes['User'],'');
        MSConnection.Password := VarToStrDef(xnGrandchild.Attributes['Pwd'],'');

        if MSConnection.Server <> '' then
          MSConnection.Connect;

      end;

    end;

  end;
end;

end.
