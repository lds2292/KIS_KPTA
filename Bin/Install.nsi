!include "MUI.nsh"

## ���α׷� ���� ###################################################################
!define ProductFileName "KPTA_SETUP"
!define ProductDir "KIS_KPTA"
!define ExecFileName "${ProductDir}.exe"
!define ProductName "�Ǽ���EDI"
!define SetupRootDir "C:\IKIS21"
!define ProductVer "1.0.003"
!define DBName "KIS_KPTA.mdf"
### ������Ʈ�� ��� #################################################################
!define APP_INSTREGKEY	"Software\KIS\KPTA"	;��ġ��� ���� REG
## ��ġ���� ########################################################################
RequestExecutionLevel admin

Name $(TXT_ProgramName)
OutFile "${ProductFileName}_${ProductVer}.exe"
InstallDir "${SetupRootDir}\${ProductDir}"
InstallDirRegKey HKLM "${APP_INSTREGKEY}" "Path"

;BrandingText  "$(TXT_ProgramName) ��ġ���α׷�"
BrandingText "V.${ProductVer}"

### ������, �̹���, ��� ���� #######################################################
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\orange-install.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\kis-install.bmp"
!define MUI_HEADERIMAGE
;!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\win-k.bmp"
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\blank4.bmp"

### ��ġ������ ������ ���� #######################################################
!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_RUN "$INSTDIR\${ExecFileName}"

##M UI ������ #######################################################################
!define MUI_PAGE_HEADER_TEXT "���α׷� ���� ����"
!insertmacro MUI_PAGE_WELCOME
#!insertmacro MUI_PAGE_LICENSE "${NSISDIR}\Docs\Modern UI\License.txt"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
#!define MUI_STARTMENUPAGE_REGISTRY_ROOT "HKLM"
#!define MUI_STARTMENUPAGE_REGISTRY_KEY ${APP_INSTREGKEY}
#!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "IKIS21"

#Var StartMenuFolder
#!insertmacro MUI_PAGE_STARTMENU Application $StartMenuFolder
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; ���� Ȯ�� ������; ���� ���� ������ : �����ۼ�Ʈ ǥ�õǴ� ������
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_LANGUAGE "Korean"

## ��ġ ���� #######################################################################
;�ش� ������ ����/���� �� �� ����
Section !$(TXT_BASICSECTION) BasicSection
  ;��ġ ��ο� ������ ���� ���� �� ������
  SetOverWrite on
  SectionIn RO
  SetOutPath "$INSTDIR\"
  File "D:\#4����\#�ű����α׷�\KIS_KPTA\Bin\KIS_KPTA.exe"
  File "D:\#4����\#�ű����α׷�\KIS_KPTA\Bin\KCSAPI4.dll"
  File "D:\#4����\#�ű����α׷�\KIS_KPTA\Bin\CreateSQLDBInstance.bat"
  
  IfFileExists "$INSTDIR\DB\KIS_KPTA.mdf" EXIST_DB NOT_EXIST_DB
  EXIST_DB:
  goto END
  NOT_EXIST_DB:
  SetOutPath "$INSTDIR\DB"
  File "D:\#4����\#�ű����α׷�\KIS_KPTA\EMPTY_DB\KIS_KPTA.mdf"
  File "D:\#4����\#�ű����α׷�\KIS_KPTA\EMPTY_DB\KIS_KPTA_log.ldf"
  END:
  
  ;INI FILE �⺻����
  IfFileExists "$INSTDIR\ldbinfo.ini" EXIST_FILE NOT_EXIST_FILE
  EXIST_FILE:
  goto END2
  NOT_EXIST_FILE:
  WriteINIstr "$INSTDIR\ldbinfo.ini" "CONNECT_OPTION" "uselocaldb" "1"
  WriteINIstr "$INSTDIR\ldbinfo.ini" "CONNECT_OPTION" "addr" "v12.0"
  WriteINIstr "$INSTDIR\ldbinfo.ini" "CONNECT_OPTION" "ldbid" ""
  WriteINIstr "$INSTDIR\ldbinfo.ini" "CONNECT_OPTION" "ldbpass" ""
  WriteINIstr "$INSTDIR\ldbinfo.ini" "CONNECT_OPTION" "ldbfile" "$INSTDIR\DB\${DBName}"
  END2:

SectionEnd

Section $(TXT_SHORTCUTSECTION) ShortCutSection
  CreateShortCut "$DESKTOP\�Ǽ���EDI.lnk" "$INSTDIR\${ExecFileName}"
SectionEnd

Section -FinishSection
  WriteRegStr HKLM "${APP_INSTREGKEY}" "version" "${ProductVer}"
  WriteRegStr HKLM "${APP_INSTREGKEY}" "Path" "$INSTDIR"
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

### ���� ���� #######################################################################
  LangString DESC_BasicSection ${LANG_KOREAN} "�ʼ� ��ġ������ ��ġ�մϴ�"
  LangString DESC_ShortCutSection ${LANG_KOREAN} "����ȭ�鿡 �ٷΰ��⸦ �����մϴ�"
  #LangString DESC_ModuleSection ${LANG_KOREAN} "����û���� ���ڹ����� �����ϴ� ����� ��ġ�մϴ�"
  #LangString DESC_PDFSection ${LANG_KOREAN} "PDF ��ȯ�� �ʿ��� ������ ��ġ�մϴ�"

  ;Assign language strings to sections
  !insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${BasicSection} $(DESC_BasicSection)
  !insertmacro MUI_DESCRIPTION_TEXT ${ShortCutSection} $(DESC_ShortCutSection)
  !insertmacro MUI_DESCRIPTION_TEXT ${ModuleSection} $(DESC_ModuleSection)
  !insertmacro MUI_DESCRIPTION_TEXT ${PDFSection} $(DESC_PDFSection)
  !insertmacro MUI_FUNCTION_DESCRIPTION_END
  
## ���� �̸�_���̵� ###############################################################
LangString TXT_BASICSECTION		${LANG_KOREAN}		"�ʼ���ġ����"
LangString TXT_SHORTCUTSECTION		${LANG_KOREAN}		"�ٷΰ��� �����"
LangString TXT_PDFSECTION		${LANG_KOREAN}		"PDF ���̺귯��"
LangString TXT_MODULESECTION		${LANG_KOREAN}		"����û ���۸��"
LangString TXT_ProgramName              ${LANG_KOREAN}		"${ProductName}"

Section Uninstall
	;��ġ ���� ������Ʈ���� �����Ѵ�
	DeleteRegKey HKLM "${APP_INSTREGKEY}"
	
	;���� ����
	Delete "$INSTDIR\KIS_KPTA.exe"
        Delete "$INSTDIR\KCSAPI4.dll"
        Delete "$INSTDIR\ldbinfo.ini"
        Delete "$INSTDIR\Uninstall.exe"
        Delete "$INSTDIR\CreateSQLDBInstance.bat"
        
	;�ٷ� ���� ����
	Delete "$DESKTOP\�������â��.lnk"

	;�ٷ� ���� �� ��ġ ���丮 ����
	;RMDir "$INSTDIR"
SectionEnd