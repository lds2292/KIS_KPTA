!include "MUI.nsh"

## 프로그램 설명 ###################################################################
!define ProductFileName "KPTA_SETUP"
!define ProductDir "KIS_KPTA"
!define ExecFileName "${ProductDir}.exe"
!define ProductName "의수협EDI"
!define SetupRootDir "C:\IKIS21"
!define ProductVer "1.0.003"
!define DBName "KIS_KPTA.mdf"
### 레지스트리 경로 #################################################################
!define APP_INSTREGKEY	"Software\KIS\KPTA"	;설치경로 저장 REG
## 설치관련 ########################################################################
RequestExecutionLevel admin

Name $(TXT_ProgramName)
OutFile "${ProductFileName}_${ProductVer}.exe"
InstallDir "${SetupRootDir}\${ProductDir}"
InstallDirRegKey HKLM "${APP_INSTREGKEY}" "Path"

;BrandingText  "$(TXT_ProgramName) 설치프로그램"
BrandingText "V.${ProductVer}"

### 아이콘, 이미지, 헤더 설정 #######################################################
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\orange-install.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\kis-install.bmp"
!define MUI_HEADERIMAGE
;!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\win-k.bmp"
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\blank4.bmp"

### 설치종료후 실행할 파일 #######################################################
!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_RUN "$INSTDIR\${ExecFileName}"

##M UI 페이지 #######################################################################
!define MUI_PAGE_HEADER_TEXT "프로그램 사용권 동의"
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

; 삭제 확인 페이지; 삭제 상태 페이지 : 삭제퍼센트 표시되는 페이지
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_LANGUAGE "Korean"

## 설치 섹션 #######################################################################
;해당 섹션은 선택/해제 할 수 없음
Section !$(TXT_BASICSECTION) BasicSection
  ;설치 경로에 동일한 파일 존재 시 덮어씌우기
  SetOverWrite on
  SectionIn RO
  SetOutPath "$INSTDIR\"
  File "D:\#4세대\#신규프로그램\KIS_KPTA\Bin\KIS_KPTA.exe"
  File "D:\#4세대\#신규프로그램\KIS_KPTA\Bin\KCSAPI4.dll"
  File "D:\#4세대\#신규프로그램\KIS_KPTA\Bin\CreateSQLDBInstance.bat"
  
  IfFileExists "$INSTDIR\DB\KIS_KPTA.mdf" EXIST_DB NOT_EXIST_DB
  EXIST_DB:
  goto END
  NOT_EXIST_DB:
  SetOutPath "$INSTDIR\DB"
  File "D:\#4세대\#신규프로그램\KIS_KPTA\EMPTY_DB\KIS_KPTA.mdf"
  File "D:\#4세대\#신규프로그램\KIS_KPTA\EMPTY_DB\KIS_KPTA_log.ldf"
  END:
  
  ;INI FILE 기본생성
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
  CreateShortCut "$DESKTOP\의수협EDI.lnk" "$INSTDIR\${ExecFileName}"
SectionEnd

Section -FinishSection
  WriteRegStr HKLM "${APP_INSTREGKEY}" "version" "${ProductVer}"
  WriteRegStr HKLM "${APP_INSTREGKEY}" "Path" "$INSTDIR"
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

### 섹션 설명 #######################################################################
  LangString DESC_BasicSection ${LANG_KOREAN} "필수 설치파일을 설치합니다"
  LangString DESC_ShortCutSection ${LANG_KOREAN} "바탕화면에 바로가기를 생성합니다"
  #LangString DESC_ModuleSection ${LANG_KOREAN} "관세청으로 전자문서를 전송하는 모듈을 설치합니다"
  #LangString DESC_PDFSection ${LANG_KOREAN} "PDF 변환에 필요한 파일을 설치합니다"

  ;Assign language strings to sections
  !insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${BasicSection} $(DESC_BasicSection)
  !insertmacro MUI_DESCRIPTION_TEXT ${ShortCutSection} $(DESC_ShortCutSection)
  !insertmacro MUI_DESCRIPTION_TEXT ${ModuleSection} $(DESC_ModuleSection)
  !insertmacro MUI_DESCRIPTION_TEXT ${PDFSection} $(DESC_PDFSection)
  !insertmacro MUI_FUNCTION_DESCRIPTION_END
  
## 섹션 이름_아이디 ###############################################################
LangString TXT_BASICSECTION		${LANG_KOREAN}		"필수설치파일"
LangString TXT_SHORTCUTSECTION		${LANG_KOREAN}		"바로가기 만들기"
LangString TXT_PDFSECTION		${LANG_KOREAN}		"PDF 라이브러리"
LangString TXT_MODULESECTION		${LANG_KOREAN}		"관세청 전송모듈"
LangString TXT_ProgramName              ${LANG_KOREAN}		"${ProductName}"

Section Uninstall
	;설치 정보 레지스트리를 삭제한다
	DeleteRegKey HKLM "${APP_INSTREGKEY}"
	
	;파일 삭제
	Delete "$INSTDIR\KIS_KPTA.exe"
        Delete "$INSTDIR\KCSAPI4.dll"
        Delete "$INSTDIR\ldbinfo.ini"
        Delete "$INSTDIR\Uninstall.exe"
        Delete "$INSTDIR\CreateSQLDBInstance.bat"
        
	;바로 가기 삭제
	Delete "$DESKTOP\통관단일창구.lnk"

	;바로 가기 및 설치 디렉토리 삭제
	;RMDir "$INSTDIR"
SectionEnd