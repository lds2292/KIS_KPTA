program KIS_KPTA;

uses
  Forms,
  Controls,
  SysUtils,
  Main in 'Main.pas' {Main_frm},
  dmIcon in 'Common\dmIcon.pas' {DataModule_ICON: TDataModule},
  ParentForm in 'Form\ParentForm.pas' {ParentForm_frm},
  UI_KPTA_DocNormal in 'Form\UI_KPTA_DocNormal.pas' {UI_KPTA_DocNormal_frm},
  dmConn in 'Common\dmConn.pas' {DataModule_Conn: TDataModule},
  CommonVar in 'Common\CommonVar.pas',
  Dialog_CodeParent in 'Form\Dialog\Dialog_CodeParent.pas' {Dialog_CodeParent_frm},
  UI_UserConfig in 'Form\UI_UserConfig.pas' {UI_UserConfig_frm},
  CommonDef in 'Common\CommonDef.pas',
  CommonLib in 'Common\CommonLib.pas',
  UI_Goods in 'Form\UI_Goods.pas' {UI_Goods_frm},
  KISCalendar in 'Custom\KISCalendar.pas' {KISCalendar_frm},
  UI_KPTA in 'Form\UI_KPTA.pas' {UI_KPTA_frm},
  UI_HS in 'Form\UI_HS.pas' {UI_HS_frm},
  Dialog_HS in 'Form\Dialog\Dialog_HS.pas' {Dialog_HS_frm},
  Dialog_SearchHS in 'Form\Dialog\Dialog_SearchHS.pas' {Dialog_SearchHS_frm},
  CommonMSG in 'Common\CommonMSG.pas',
  DIalog_Make in 'Form\Dialog\DIalog_Make.pas' {DIalog_Make_frm},
  Dialog_Check in 'Form\Dialog\Dialog_Check.pas' {Dialog_Check_frm},
  Dialog_CopyReport in 'Form\Dialog\Dialog_CopyReport.pas' {Dialog_CopyReport_frm},
  UI_ReadyDocument in 'Form\UI_ReadyDocument.pas' {UI_ReadyDocument_frm},
  UI_DocumentNo in 'Form\UI_DocumentNo.pas' {UI_DocumentNo_frm},
  UI_Login in 'Form\UI_Login.pas' {UI_Login_frm},
  UI_RegisterUser in 'Form\UI_RegisterUser.pas' {UI_RegisterUser_frm},
  UI_ConnectionSetting in 'Form\UI_ConnectionSetting.pas' {UI_ConnectionSetting_frm},
  Dialog_BetweenList in 'Form\Dialog_BetweenList.pas' {Dialog_BetweenList_frm},
  KISXML in 'Common\KISXML.pas',
  GOVCBR_FR2 in 'XML\GOVCBR_FR2.pas',
  Dialog_Company in 'Form\Dialog\Dialog_Company.pas' {Dialog_Company_frm},
  UI_Company in 'Form\UI_Company.pas' {UI_Company_frm},
  UI_CompanyModal in 'Form\UI_CompanyModal.pas' {UI_CompanyModal_frm},
  XMLSource in 'Common\XMLSource.pas' {XMLSource_dm: TDataModule},
  KCSAPI4_KIS in 'SendModule\KCSAPI4_KIS.pas',
  KIS_4GTrasfer in 'SendModule\KIS_4GTrasfer.pas' {KIS_4GTrasfer_frm},
  KIS_UPDATE in 'Common\KIS_UPDATE.pas',
  QR_KPTA_NORMAL_PRN in 'Print\QR_KPTA_NORMAL_PRN.pas' {QR_KPTA_NORMAL_PRN_frm: TQuickRep},
  UI_PrintPreview in 'Form\UI_PrintPreview.pas' {UI_PrintPreview_frm},
  UI_KPTA_FS7 in 'Form\UI_KPTA_FS7.pas' {UI_KPTA_FS7_frm},
  GOVCBR_FS7 in 'XML\GOVCBR_FS7.pas',
  UI_RecvDocument in 'Form\UI_RecvDocument.pas' {UI_RecvDocument_frm},
  GOVCBR_RECV in 'XML\GOVCBR_RECV.pas',
  Dlg_SaveDocument in 'Form\Dlg_SaveDocument.pas' {Dlg_SaveDocument_frm},
  QR_KPTA_NORMAL_Complete_PRN in 'Print\QR_KPTA_NORMAL_Complete_PRN.pas' {QR_KPTA_NORMAL_Complete_PRN_frm: TQuickRep},
  UI_ConfirmDocument in 'Document\추가개발\확인명세 관리\UI_ConfirmDocument.pas' {UI_ConfirmDocument_frm},
  KISCalendarV2 in '..\..\..\UseComponent\KISCalendar\KISCalendarV2.pas' {KISCalendarV2_frm},
  UI_CommonCD in 'Form\UI_CommonCD.pas' {UI_COMMONCD_frm},
  dlg_AddCode in 'Form\Dialog\dlg_AddCode.pas' {dlg_AddCode_frm},
  UI_PUMLIST in 'Form\UI_PUMLIST.pas' {UI_PUMLIST_frm},
  dlg_MtlrsList in 'Form\Dialog\dlg_MtlrsList.pas' {dlg_MtlrsList_frm},
  UI_PUMLISTMODAL in 'Form\UI_PUMLISTMODAL.pas' {UI_PUMLISTMODAL_frm},
  UI_QuickMenu in 'Form\UI_QuickMenu.pas' {UI_QuickMenu_frm},
  CreateTable in 'Common\CreateTable.pas' {DMCreateTable: TDataModule},
  dlg_IMPORT in 'Form\Dialog\dlg_IMPORT.pas' {dlg_IMPORT_frm},
  dialog_RUNSQL in 'Form\Dialog\dialog_RUNSQL.pas' {dialog_RUNSQL_frm},
  UI_ShowSQLData in 'Form\Dialog\UI_ShowSQLData.pas' {UI_ShowSQLData_frm},
  base64 in '..\..\..\UseComponent\KISLIB\KISEncryption\base64.pas',
  KISEncryption in '..\..\..\UseComponent\KISLIB\KISEncryption\KISEncryption.pas',
  NewExcelReader in '..\..\..\UseComponent\KISLIB\KISExcelWriter\NewExcelReader.pas',
  NewExcelWriter in '..\..\..\UseComponent\KISLIB\KISExcelWriter\NewExcelWriter.pas',
  SQLCreator in '..\..\..\UseComponent\KISLIB\KISSQLCreator\SQLCreator.pas';

{$R *.res}

begin
  DataModule_ICON := TDataModule_ICON.Create(Application);
  DataModule_Conn := TDataModule_Conn.Create(Application);
  UI_Login_frm := TUI_Login_frm.Create(Application);

  if UI_Login_frm.ShowModal = mrOK then
  begin
    Application.Initialize;
    Application.Title := 'KIS의수협';
    Application.CreateForm(TMain_frm, Main_frm);
  Application.CreateForm(TUI_Login_frm, UI_Login_frm);
  Application.CreateForm(TXMLSource_dm, XMLSource_dm);
  Application.CreateForm(TUI_QuickMenu_frm, UI_QuickMenu_frm);
  Application.CreateForm(Tdlg_IMPORT_frm, dlg_IMPORT_frm);
  Application.Run;
  end
  else
  begin
    FreeAndNil(DataModule_Conn);
    Freeandnil(UI_Login_frm);
  end;
end.
