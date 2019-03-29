unit HTTP;

interface

uses
  Windows,
  SysUtils,
  Classes,
  Registry,
  Dialogs,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP;

procedure GetFileFromHTTP(sURL,sFileName : String);
function getNewVer:String;
function GetCurrentVer:String;
procedure SetCurrentVer(sVer : String);
function CompareVersion(AVer,BVer : String):Boolean;

implementation

procedure GetFileFromHTTP(sURL,sFileName : String);
var
  HTTP : TIdHTTP;
  Stm  : TMemoryStream;
begin
  HTTP := TIdHTTP.Create(nil);
  Stm := TMemoryStream.Create;

  try
    HTTP.Get(sURL,Stm);
    Stm.SaveToFile(sFileName);
  finally
    Stm.Free;
    HTTP.Free;
  end;
end;

function getNewVer:String;
var
  FURL,FFileName : String;
  VerStr : TStringList;
begin
  VerStr := TStringList.Create;

  FURL := 'http://ikis21.com/zboard/data/pds/4G/KPTA/version.txt';
  FFileName := 'Version.txt';
  try
    GetFileFromHTTP(FURL,FFileName);
    VerStr.LoadFromFile(FFileName);
    Result := VerStr.Strings[0];
    DeleteFile(FFileName);
  finally
    VerStr.Free;
  end;
end;

function GetCurrentVer:String;
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;                           //-----------Root
    Reg.OpenKey('SOFTWARE\KIS\KPTA',True);                //--Registry OPEN

    IF Reg.ValueExists('Version') THEN
    begin
      Result := Reg.ReadString('Version');
    end
    else
    begin
      Reg.WriteString('Version','1.0.003');
      Result := '1.0.003';
    end;
  finally
    Reg.Free;
  end;
end;

procedure SetCurrentVer(sVer : String);
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;                           //-----------Root
    Reg.OpenKey('SOFTWARE\KIS\KPTA',True);                //--Registry OPEN
    Reg.WriteString('Version',sVer);
  finally
    Reg.Free;
  end;
end;

function CompareVersion(AVer,BVer : String):Boolean;
var
  nAVer,nBVer : Integer;
begin
  //AVer : 기존버전
  //Bver : 받아온버전

  IF AVer = '' Then AVer := GetCurrentVer;
  IF BVer = '' Then BVer := getNewVer;

  nAVer := StrToIntDef(StringReplace(AVer,'.','',[rfReplaceAll]),0);
  nBVer := StrToIntDef(StringReplace(BVer,'.','',[rfReplaceAll]),0);

  IF nAVer < nBVer Then Result := True
  Else Result := False;
end;

end.

