unit KIS_UPDATE;

interface

uses
  Forms, Classes, Dialogs, XMLIntf, XMLDoc, SysUtils, Variants, StrUtils, Controls, DateUtils, Windows, IdHTTP,
  Registry;

Type
  TKIS_UPDATE = class
    private
      FXML : IXMLDocument;
      FVersionURL : String;
    public
      function getVersion(ProgramID : String):String;
      function currentVersion(ProgramID : String):String;
      constructor Create;
  end;

implementation

uses IdBaseComponent;

{ TKIS_UPDATE }
const
  KPTA_KEY = 'Software\KIS\KPTA';
  KPTA = 'KPTA';
constructor TKIS_UPDATE.Create;
begin
  FVersionURL := 'http://www.ikis21.com/kisversion/getVersion.php';
end;

function TKIS_UPDATE.currentVersion(ProgramID: String): String;
var
  KIS_REG : TRegistry;
begin
  Result := '';
  KIS_REG := TRegistry.Create;
  try
    KIS_REG.RootKey := HKEY_LOCAL_MACHINE;
    IF UpperCase(ProgramID) = UpperCase(KPTA) then
    begin
      IF KIS_REG.KeyExists(KPTA_KEY) Then
      begin
        IF KIS_REG.OpenKeyReadOnly(KPTA_KEY) Then
          Result := KIS_REG.ReadString('version');
      end;
    end;
  finally
    KIS_REG.Free;
  end;
end;

function TKIS_UPDATE.getVersion(ProgramID : String):String;
var
  idHTTP : TIdHTTP;
  XMLStream : TStringStream;
  ROOT_NODE : IXMLNode;
  i : integer;
begin
  ProgramID := UpperCase(ProgramID);
  Result := '';

  IdHTTP := TIdHTTP.Create(nil);
  XMLStream := TStringStream.Create('');
  IdHTTP.Request.UserAgent := 'IE';
  try
    IdHTTP.Get(FVersionURL, XMLStream);
    FXML := LoadXMLData(XMLStream.DataString);

    ROOT_NODE := FXML.ChildNodes[1];

    for i := 0 to ROOT_NODE.ChildNodes.Count-1 do
    begin
      IF UpperCase(ROOT_NODE.ChildNodes[i].NodeName) = ProgramID then
      begin
        Result := ROOT_NODE.ChildNodes[i].Text;
        Break;
      end;
    end;
  finally
    FreeAndNil( IdHTTP );
    FreeAndNil( XMLStream );
  end
end;

end.
