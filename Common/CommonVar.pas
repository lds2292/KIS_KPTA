unit CommonVar;

interface

uses
  CommonDef, Windows, Forms;
var
  ConfigData : TConfigData;
  LoginData : TLoginData;
  LastActiveFormName : String;
  sConnectionString : String;
  ldbinfoiniPath : string;
  configxmlPath : String;
Const
  USE_DATABASE = 'KIS_KPTA';
  KIS_HELP_KEY : Word = VK_F11;
//------------------------------------------------------------------------------
// INI설정 섹션
//------------------------------------------------------------------------------
  Section_Connect = 'CONNECT_OPTION';
Const
  MB_OKCANCELQUESTION : Cardinal = MB_OKCANCEL+MB_ICONQUESTION;
implementation

end.
