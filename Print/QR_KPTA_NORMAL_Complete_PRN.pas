unit QR_KPTA_NORMAL_Complete_PRN;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, Dialogs, StrUtils;

type
  TQR_KPTA_NORMAL_Complete_PRN_frm = class(TQuickRep)
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRLabel2: TQRLabel;
    QRShape10: TQRShape;
    QRLabel3: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel5: TQRLabel;
    QRShape13: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape23: TQRShape;
    QRLabel24: TQRLabel;
    QR_DOCNO: TQRLabel;
    QR_RequestDateTime: TQRLabel;
    QR_IMPORTER_SANGHO: TQRLabel;
    QR_IMPORTER_NAME: TQRLabel;
    QR_IMPORTER_ADDR: TQRLabel;
    QR_TRADE_NO: TQRLabel;
    QR_HWAJU_SANGHO: TQRLabel;
    QR_HWAJU_ADDR: TQRLabel;
    QR_HWAJU_NAME: TQRLabel;
    QR_HWAJU_SAUPNO: TQRLabel;
    QR_EXPORTER_SANGHO: TQRLabel;
    QR_EXPORTER_NATION: TQRLabel;
    QR_EXPORTER_ADDR: TQRLabel;
    QR_SIZER: TQRLabel;
    QR_AMT: TQRLabel;
    QR_DESTPORT: TQRLabel;
    QR_QUALITY_AGENCY: TQRLabel;
    QR_FIRST_CHECK_AGENCY: TQRLabel;
    QR_REGION_NAME: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    DetailBand1: TQRBand;
    QRShape29: TQRShape;
    QRShape34: TQRShape;
    QR_HS: TQRLabel;
    QR_GOODS: TQRLabel;
    QR_TRADE_PUM: TQRLabel;
    QR_MODELSIZE: TQRLabel;
    QR_INGREDIENT: TQRLabel;
    QR_MODEL_QTY: TQRLabel;
    QR_UNIT_PRICE: TQRLabel;
    QR_MODEL_AMT: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QR_MAKE: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape43: TQRShape;
    QR_MAKE_COMPANY1: TQRLabel;
    QR_MAKE_COMPANY_ADDR: TQRMemo;
    QR_BSE: TQRLabel;
    SummaryBand1: TQRBand;
    qryStandard1forPrint: TADOQuery;
    qryStandard2forPrint: TADOQuery;
    qryStandard2forPrintDOC_NO: TStringField;
    qryStandard2forPrintSERIAL_CODE: TStringField;
    qryStandard2forPrintSERIAL_NO: TStringField;
    qryStandard2forPrintHS: TStringField;
    qryStandard2forPrintGOODS_CODE: TStringField;
    qryStandard2forPrintOLD_JONG_CODE: TStringField;
    qryStandard2forPrintOLD_GOODS_CODE: TStringField;
    qryStandard2forPrintCOSMETIC_GUBUN: TStringField;
    qryStandard2forPrintDMF: TStringField;
    qryStandard2forPrintBGMP: TStringField;
    qryStandard2forPrintTRADE_NAME: TStringField;
    qryStandard2forPrintMODEL_SIZE: TMemoField;
    qryStandard2forPrintMODEL_SIZE_INGREDIENT: TMemoField;
    qryStandard2forPrintDRUG_STANDARD_CODE: TStringField;
    qryStandard2forPrintWITAK_SANGHO1: TStringField;
    qryStandard2forPrintWITAK_SANGHO2: TStringField;
    qryStandard2forPrintWITAK_SANGHO3: TStringField;
    qryStandard2forPrintWITAK_ADDR1: TStringField;
    qryStandard2forPrintWITAK_ADDR2: TStringField;
    qryStandard2forPrintWITAK_ADDR3: TStringField;
    qryStandard2forPrintWITAK_NATION_CODE: TStringField;
    qryStandard2forPrintWITAK_NATION_NAME: TStringField;
    qryStandard2forPrintMODEL_QTY: TBCDField;
    qryStandard2forPrintMODEL_QTY_UNIT: TStringField;
    qryStandard2forPrintMODEL_DANGA: TBCDField;
    qryStandard2forPrintMODEL_AMT: TBCDField;
    qryStandard2forPrintMODEL_AMT_UNIT: TStringField;
    qryStandard2forPrintPERMIT_SINGO_NO: TStringField;
    qryStandard2forPrintPERMIT_SINGO_DATE: TStringField;
    qryStandard2forPrintBSE_CODE: TStringField;
    qryStandard2forPrintBSE_ORIGIN_NATION_CODE: TStringField;
    qryStandard2forPrintBSE_ORIGIN_NATION_NAME: TStringField;
    qryStandard2forPrintORIGIN_MATTER: TStringField;
    qryStandard2forPrintEXTRACTION: TStringField;
    qryStandard2forPrintBATCH_NO: TStringField;
    qryStandard2forPrintORIGIN_NATION_CODE: TStringField;
    qryStandard2forPrintORIGIN_NATION_NAME: TStringField;
    qryStandard2forPrintBSE_ORIGIN_NATION_ENG: TStringField;
    qryMakeforPrint: TADOQuery;
    qryMakeforPrintDOC_NO: TStringField;
    qryMakeforPrintSERIAL_CODE: TStringField;
    qryMakeforPrintSERIAL_NO: TStringField;
    qryMakeforPrintMAKE_SERIAL_NO: TStringField;
    qryMakeforPrintMAKE_NO: TStringField;
    qryMakeforPrintMAKE_DATE: TStringField;
    qryStandard1forPrintDOC_NO: TStringField;
    qryStandard1forPrintDOC_TYPE: TStringField;
    qryStandard1forPrintPROCESS_STATE: TStringField;
    qryStandard1forPrintPUBLISH_NO: TStringField;
    qryStandard1forPrintPUBLISH_DATE: TStringField;
    qryStandard1forPrintEXPIRY_DATE: TStringField;
    qryStandard1forPrintPUBLISH_INSTITUTE: TStringField;
    qryStandard1forPrintPUBLISH_PERSON: TStringField;
    qryStandard1forPrintPUBLISH_TEL: TStringField;
    qryStandard1forPrintPUBLISH_SIGN: TStringField;
    qryStandard1forPrintPUBLISH_MEMO: TMemoField;
    qryStandard1forPrintDOC_GUBUN: TStringField;
    qryStandard1forPrintJEJE_GUBUN: TStringField;
    qryStandard1forPrintREQUEST_DATE: TDateTimeField;
    qryStandard1forPrintIMPORT_SAUP_NO: TStringField;
    qryStandard1forPrintIMPORT_SANGHO: TStringField;
    qryStandard1forPrintIMPORT_DAEPYO: TStringField;
    qryStandard1forPrintIMPORT_TRADE_NO: TStringField;
    qryStandard1forPrintIMPORT_POST_NO: TStringField;
    qryStandard1forPrintIMPORT_ADDR1: TStringField;
    qryStandard1forPrintIMPORT_ADDR2: TStringField;
    qryStandard1forPrintIMPORT_TYPE: TBooleanField;
    qryStandard1forPrintHWAJU_SAUP_NO: TStringField;
    qryStandard1forPrintHWAJU_SANGHO: TStringField;
    qryStandard1forPrintHWAJU_DAEPYO: TStringField;
    qryStandard1forPrintHWAJU_POST_NO: TStringField;
    qryStandard1forPrintHWAJU_ADDR1: TStringField;
    qryStandard1forPrintHWAJU_ADDR2: TStringField;
    qryStandard1forPrintEXPORT_SANGHO: TStringField;
    qryStandard1forPrintEXPORT_ADDR1: TStringField;
    qryStandard1forPrintEXPORT_NATION_CODE: TStringField;
    qryStandard1forPrintEXPORT_NATION_NAME: TStringField;
    qryStandard1forPrintINDO_TYPE: TStringField;
    qryStandard1forPrintPAY_TYPE: TStringField;
    qryStandard1forPrintPAY_AMT: TBCDField;
    qryStandard1forPrintPAY_UNIT: TStringField;
    qryStandard1forPrintPAY_BETWEEN_DATE: TStringField;
    qryStandard1forPrintDEST_PORT_CODE: TStringField;
    qryStandard1forPrintDEST_PORT_NAME: TStringField;
    qryStandard1forPrintQUALITY_AGENCY_CODE: TStringField;
    qryStandard1forPrintQUALITY_AGENCY_NAME: TStringField;
    qryStandard1forPrintFIRST_CHECK_AGENCY_CODE: TStringField;
    qryStandard1forPrintREGION_CODE: TStringField;
    qryStandard1forPrintREGION_NAME: TStringField;
    qryStandard1forPrintIMPORT_MEMO: TMemoField;
    qryStandard1forPrintTOTAL_COUNT: TIntegerField;
    qryStandard1forPrintEXPORT_NATION_ENG: TStringField;
    qryStandard1forPrintFIRST_CHECK_AGENCY_NAME: TStringField;
    QRLabel40: TQRLabel;
    QR_MAKE_COMPANY2: TQRLabel;
    QR_MAKE_COMPANY3: TQRLabel;
    QR_NO: TQRLabel;
    ChildBand2: TQRChildBand;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape54: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QR_PublishNo: TQRLabel;
    QR_PublishEffectiveDate: TQRLabel;
    QR_PublishDate: TQRLabel;
    QR_PublishOrgan: TQRLabel;
    QRShape55: TQRShape;
    QR_PublishTerms: TQRMemo;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRSubDetail2: TQRSubDetail;
    qryTakeForPrint: TADOQuery;
    qryTakeForPrintDOC_NO: TStringField;
    qryTakeForPrintSERIAL_CODE: TStringField;
    qryTakeForPrintSERIAL_NO: TStringField;
    qryTakeForPrintNATION_CODE: TStringField;
    qryTakeForPrintNATION_NAME: TStringField;
    qryTakeForPrintTAKE_SANGHO1: TStringField;
    qryTakeForPrintTAKE_SANGHO2: TStringField;
    qryTakeForPrintTAKE_SANGHO3: TStringField;
    qryTakeForPrintTAKE_ADDR1: TStringField;
    qryTakeForPrintTAKE_ADDR2: TStringField;
    qryTakeForPrintTAKE_ADDR3: TStringField;
    ChildBand3: TQRChildBand;
    QRLabel39: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape39: TQRShape;
    QRShape42: TQRShape;
    QRShape44: TQRShape;
    qryTakeForPrintTAKE_NO: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepNeedData(Sender: TObject; var MoreData: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepEndPage(Sender: TCustomQuickRep);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FPUBLISH_TEXT, FPUBLISH_OUT : TStringlist;
    FDOC_NO : String;
    FTOTAL_AMT : Currency;
    FTOTAL_UNIT : String;
    FSUB_IDX : integer;
    FSUB_MAX : Integer;
    FTAKE_IDX : integer;
    FTAKE_MAX : integer;
    FTOTAL_HEIGHT : Integer;
    function ReadStandard1:Boolean;
    procedure Readstandard2;
    procedure ReadMakeTake(SerialNo : String);
    function getOrigianlRequestDate(DOC_NO : String):String;
  public
    function Run(DOC_NO : String):Boolean;
    procedure CloseDataSet;
  end;

Const
  MAX_HEIGHT = 1045;
var
  QR_KPTA_NORMAL_Complete_PRN_frm: TQR_KPTA_NORMAL_Complete_PRN_frm;

implementation

uses
  CommonLib, dmConn;

{$R *.DFM}

{ TQR_KPTA_NORMAL_Complete_PRN_frm }

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.CloseDataSet;
begin
  qryStandard1forPrint.Close;
  qryStandard2forPrint.Close;
  qryMakeforPrint.Close;
  qryTakeForPrint.Close;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.ReadMakeTake(SerialNo: String);
begin
  with qryMakeforPrint do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDOC_NO;
    Parameters.ParamByName('SERIAL_NO').Value := SerialNo;
    Open;

    IF RecordCount = 0 Then
      FSUB_MAX := 1
    else
      FSUB_MAX := qryMakeforPrint.RecordCount;
  end;

  with qryTakeForPrint do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDOC_NO;
    Parameters.ParamByName('SERIAL_NO').Value := SerialNo;
    Open;

    FTAKE_MAX := qryTakeForPrint.RecordCount;
  end;

end;

function TQR_KPTA_NORMAL_Complete_PRN_frm.ReadStandard1: Boolean;
begin
  Result := False;
  with qryStandard1forPrint do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDOC_NO;
    Open;

    Result := qryStandard1forPrint.RecordCount = 0;
  end;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.Readstandard2;
begin
  with qryStandard2forPrint do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDOC_NO;
    Open;
  end;
end;

function TQR_KPTA_NORMAL_Complete_PRN_frm.Run(DOC_NO: String):Boolean;
begin
  Result := True;
  FDOC_NO := DOC_NO;

  try
    IF ReadStandard1 Then
    begin
      ShowMessage('문서번호 : '+DOC_NO+'를 찾을수 없습니다');
      Result := false;
      Exit;
    end;

    ReadStandard2;

  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qryStandard1forPrint.First;
  If qryStandard2forPrint.Active Then
    qryStandard2forPrint.First;
  FTOTAL_AMT := 0;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QuickRepNeedData(
  Sender: TObject; var MoreData: Boolean);
begin
  MoreData := not qryStandard2forPrint.Eof;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  TMP_STR : String;
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;

  QR_NO.Caption := qryStandard2forPrintSERIAL_NO.AsString;
  TMP_STR := LeftStr( qryStandard2forPrintHS.AsString , 4 )+'.'+MidStr(qryStandard2forPrintHS.AsString,5,2)+'-'+RightStr(qryStandard2forPrintHS.AsString,4);
  QR_HS.Caption := '① '+TMP_STR;
  TMP_STR := LeftStr(qryStandard2forPrintGOODS_CODE.AsString, 10)+'-'+
             MidStr(qryStandard2forPrintGOODS_CODE.AsString, 11, 3)+'-'+
             MidStr(qryStandard2forPrintGOODS_CODE.AsString, 14, 4)+'-'+
             MidStr(qryStandard2forPrintGOODS_CODE.AsString, 18, 6)+'-'+
             RightStr(qryStandard2forPrintGOODS_CODE.AsString, 3);
//  QR_GOODS.Caption := '② '+qryStandard2forPrintSERIAL_CODE.AsString+qryStandard2forPrintSERIAL_NO.AsString+' / '+qryStandard2forPrintGOODS_CODE.AsString;
  QR_GOODS.Caption := '② '+qryStandard2forPrintSERIAL_CODE.AsString+qryStandard2forPrintSERIAL_NO.AsString+'/'+TMP_STR;
  QR_TRADE_PUM.Caption := '③ '+qryStandard2forPrintTRADE_NAME.AsString;
  QR_MODELSIZE.Caption := '④ '+qryStandard2forPrintMODEL_SIZE.AsString;
  QR_INGREDIENT.Caption := '⑤ '+qryStandard2forPrintMODEL_SIZE_INGREDIENT.AsString;

  QR_MODEL_QTY.Caption  := '⑥ '+ FormatFloat('#,0.####',qryStandard2forPrintMODEL_QTY.AsCurrency)+'('+qryStandard2forPrintMODEL_QTY_UNIT.AsString+')';
  QR_UNIT_PRICE.Caption := '⑦ '+ FormatFloat('#,0.####',qryStandard2forPrintMODEL_DANGA.AsCurrency);
  QR_MODEL_AMT.Caption  := '⑧ '+ FormatFloat('#,0.####',qryStandard2forPrintMODEL_AMT.AsCurrency)+'('+qryStandard2forPrintMODEL_AMT_UNIT.AsString+')';
  FTOTAL_AMT := FTOTAL_AMT + qryStandard2forPrintMODEL_AMT.AsCurrency;
  FTOTAL_UNIT := qryStandard2forPrintMODEL_AMT_UNIT.AsString;
  FSUB_IDX := 1;
  FTAKE_IDX := 1;
  ReadMakeTake(qryStandard2forPrintSERIAL_NO.AsString);

//  qryStandard2forPrint.Next;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QRSubDetail1NeedData(
  Sender: TObject; var MoreData: Boolean);
begin
  MoreData := FSUB_IDX <= FSUB_MAX;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  TempStr : String;
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;

  TempStr := qryMakeforPrintMAKE_DATE.AsString;
  IF Trim(TempStr) <> '' Then
    TempStr := LeftStr(TempStr,4)+'-'+MidStr(TempStr,5,2)+'-'+MidStr(TempStr,7,2);
  IF (Trim(qryMakeforPrintMAKE_NO.AsString) <> '') AND (Trim(TempStr) <> '') Then
  begin
    IF qryMakeforPrint.RecNo = 1 Then
      QR_MAKE.Caption := '⑨ '+qryMakeforPrintMAKE_NO.AsString+' / '+TempStr
    else
      QR_MAKE.Caption := '   '+qryMakeforPrintMAKE_NO.AsString+' / '+TempStr;
  end
  else
    QR_MAKE.Caption := ' ';
    
  ChildBand1.Enabled := FSUB_IDX = FSUB_MAX;
  IF ChildBand1.Enabled Then
  begin
    QR_MAKE_COMPANY1.Caption := '⑩ '+qryStandard2forPrintWITAK_SANGHO1.AsString;
    QR_MAKE_COMPANY2.Caption := '   '+qryStandard2forPrintWITAK_SANGHO2.AsString;
    QR_MAKE_COMPANY3.Caption := '   '+qryStandard2forPrintWITAK_SANGHO3.AsString;

    TempStr := '';
    IF Trim(qryStandard2forPrintWITAK_NATION_CODE.AsString) <> '' Then
      TempStr := qryStandard2forPrintWITAK_NATION_CODE.AsString+' / ';
    IF Trim(qryStandard2forPrintWITAK_ADDR1.AsString) <> '' Then
      TempStr := TempStr+qryStandard2forPrintWITAK_ADDR1.AsString;
    IF Trim(qryStandard2forPrintWITAK_ADDR2.AsString) <> '' Then
      TempStr := TempStr+#13#10'   '+qryStandard2forPrintWITAK_ADDR2.AsString;
    IF Trim(qryStandard2forPrintWITAK_ADDR3.AsString) <> '' Then
      TempStr := TempStr+#13#10'   '+qryStandard2forPrintWITAK_ADDR3.AsString;

//    QR_MAKE_COMPANY_ADDR.Lines.Text :='⑪ '+qryStandard2forPrintWITAK_ADDR1.AsString;
    QR_MAKE_COMPANY_ADDR.Lines.Text :='⑪ '+TempStr;

    QR_BSE.Caption := '⑫ '+qryStandard2forPrintORIGIN_MATTER.AsString + ' / ' +
                      qryStandard2forPrintEXTRACTION.AsString + ' / ' +
                      qryStandard2forPrintBATCH_NO.AsString + ' / ' +
                      qryStandard2forPrintBSE_ORIGIN_NATION_ENG.AsString;
  end;
//  IF ChildBand1.Enabled Then
//  begin
//    QR_MAKE_COMPANY.Caption := '⑩ '+qryStandard2forPrintWITAK_SANGHO1.AsString;
//    QR_MAKE_COMPANY_ADDR.Lines.Text :='⑪ '+qryStandard2forPrintWITAK_ADDR1.AsString;
//
//    QR_BSE.Caption := '⑫ '+qryStandard2forPrintORIGIN_MATTER.AsString + ' / ' +
//                      qryStandard2forPrintEXTRACTION.AsString + ' / ' +
//                      qryStandard2forPrintBATCH_NO.AsString + ' / ' +
//                      qryStandard2forPrintBSE_ORIGIN_NATION_ENG.AsString;
//  end;

  qryStandard2forPrint.Next;

  inc(FSUB_IDX);
  qryMakeforPrint.Next;

//  If not qryMakeforPrint.Eof Then
//    QR_SUB_LASTLINE.Enabled := FTOTAL_HEIGHT + Sender.Height >= MAX_HEIGHT
//  else
//    QR_SUB_LASTLINE.Enabled := FTOTAL_HEIGHT + ChildBand1.Height >= MAX_HEIGHT;

end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  TempStr : String;
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;

  //신청번호
  TempStr := qryStandard1forPrintDOC_NO.AsString;
  QR_DOCNO.Caption := LeftStr(TempStr,5)+'-'+MidStr(TempStr,6,2)+'-'+MidStr(TempStr,8,6);
  //신청일자
//  QR_RequestDateTime.Caption := FormatDateTime('YYYY-MM-DD',qryStandard1forPrintREQUEST_DATE.AsDateTime);
  QR_RequestDateTime.Caption := getOrigianlRequestDate(TempStr);
  //수입자 상호
  QR_IMPORTER_SANGHO.Caption :=  qryStandard1forPrintIMPORT_SANGHO.AsString;
  //수입자 성명
  QR_IMPORTER_NAME.Caption := qryStandard1forPrintIMPORT_DAEPYO.AsString;
  //수입자 주소
//  QR_IMPORTER_ADDR.Caption := qryStandard1forPrintIMPORT_ADDR1.AsString;
  QR_IMPORTER_ADDR.Caption := Trim(Trim(qryStandard1forPrintIMPORT_ADDR1.AsString)+' '+Trim(qryStandard1forPrintIMPORT_ADDR2.AsString));
  //수입업 신고번호
  QR_TRADE_NO.Caption := qryStandard1forPrintIMPORT_TRADE_NO.AsString;

  //수입화주 상호
  QR_HWAJU_SANGHO.Caption := qryStandard1forPrintHWAJU_SANGHO.AsString;
  //수입화주 이름
  QR_HWAJU_NAME.Caption := qryStandard1forPrintHWAJU_DAEPYO.AsString;
  //수입화주 주소
//  QR_HWAJU_ADDR.Caption := qryStandard1forPrintHWAJU_ADDR1.AsString;
  QR_HWAJU_ADDR.Caption := Trim( Trim(qryStandard1forPrintHWAJU_ADDR1.AsString)+' '+Trim(qryStandard1forPrintHWAJU_ADDR2.AsString) );
  //수입화주 사업자등록번호
  QR_HWAJU_SAUPNO.Caption :=  qryStandard1forPrintHWAJU_SAUP_NO.AsString;

  //수출자 상호
  QR_EXPORTER_SANGHO.Caption := qryStandard1forPrintEXPORT_SANGHO.AsString;
  //수출자 국가
  QR_EXPORTER_NATION.Caption := qryStandard1forPrintEXPORT_NATION_ENG.AsString;
  //수출자 주소(MAX_width : 517)
  QR_SIZER.Caption := qryStandard1forPrintEXPORT_ADDR1.AsString;
  while not (QR_SIZER.Width <= 517) do
  begin
    QR_SIZER.Font.Size := QR_SIZER.Font.Size-1;
  end;
  QR_EXPORTER_ADDR.Font.Size := QR_SIZER.Font.Size;
  QR_EXPORTER_ADDR.Caption := QR_SIZER.Caption;

  //결제금액
  QR_AMT.Caption := qryStandard1forPrintINDO_TYPE.AsString +' - '+
                    qryStandard1forPrintPAY_UNIT.AsString  +' - '+
                    FormatFloat('#,0.####',qryStandard1forPrintPAY_AMT.AsCurrency)+' - '+
                    qryStandard1forPrintPAY_TYPE.AsString;
  //국내도착항
  QR_DESTPORT.Caption := qryStandard1forPrintDEST_PORT_CODE.AsString+' '+qryStandard1forPrintDEST_PORT_NAME.AsString;

  //품질검사기관
  QR_QUALITY_AGENCY.Caption := qryStandard1forPrintQUALITY_AGENCY_NAME.AsString;

  //시도보건환경연구원
  QR_FIRST_CHECK_AGENCY.Caption := qryStandard1forPrintFIRST_CHECK_AGENCY_NAME.AsString;

  //관할지방 식품의약안전청
  QR_REGION_NAME.Caption := qryStandard1forPrintREGION_NAME.AsString;

  //수입자 기재사항
  QRMemo1.Lines.Text := qryStandard1forPrintIMPORT_MEMO.AsString;

  //발급조건 텍스트저장(후에 사용)
  FPUBLISH_TEXT := TStringList.Create;
  FPUBLISH_OUT := TStringList.Create;
  FPUBLISH_TEXT.Text := qryStandard1forPrintPUBLISH_MEMO.AsString;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  i, j, nLoop : integer;
begin
  //발급조건 작성
  try
    FPUBLISH_OUT.Clear;

    for i := 0 to FPUBLISH_TEXT.Count-1 do
    begin
      IF Length( FPUBLISH_TEXT.Strings[i] ) < 100 Then
        FPUBLISH_OUT.Add(FPUBLISH_TEXT.Strings[i])
      else
      begin
        nLoop := Length(FPUBLISH_TEXT.Strings[i]) div 100;
        IF (Length(FPUBLISH_TEXT.Strings[i]) mod 100) > 0 Then Inc(nLoop);
        for j := 0 to nLoop -1 do
        begin
          FPUBLISH_OUT.Add(CopyK(FPUBLISH_TEXT.Strings[i], (j*100)+1,100 ));
        end;
      end;
    end;

    QR_PublishTerms.Lines.Text := FPUBLISH_OUT.Text;
    QR_PublishTerms.Height := (QR_PublishTerms.Lines.Count * 13);

    SummaryBand1.Height := QR_PublishTerms.Height+15;
    QRShape30.Height := SummaryBand1.Height;
    QRShape31.Height := SummaryBand1.Height;
  finally
    FPUBLISH_TEXT.Free;
    FPUBLISH_OUT.Free;
  end;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QuickRepEndPage(
  Sender: TCustomQuickRep);
begin
  FTOTAL_HEIGHT := 0;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;
end;

function TQR_KPTA_NORMAL_Complete_PRN_frm.getOrigianlRequestDate(DOC_NO : String): String;
begin
  Result := ''; 
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT REQUEST_DATE FROM STANDARD1 WHERE DOC_NO = '+QuotedStr(DOC_NO);
      Open;

      Result := FormatDateTime('YYYY-MM-DD', FieldByName('REQUEST_DATE').AsDateTime);
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.ChildBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QR_PublishNo.Caption      := qryStandard1forPrintPUBLISH_NO.AsString;
  QR_PublishDate.Caption    := FormatDateTime('YYYY-MM-DD',ConvertStr2Date(qryStandard1forPrintPUBLISH_DATE.AsString));
  QR_PublishEffectiveDate.Caption := FormatDateTime('YYYY-MM-DD',ConvertStr2Date(qryStandard1forPrintEXPIRY_DATE.AsString));
  QR_PublishOrgan.Caption   := qryStandard1forPrintPUBLISH_INSTITUTE.AsString;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QRSubDetail2NeedData(
  Sender: TObject; var MoreData: Boolean);
begin
  MoreData := FTAKE_IDX <= FTAKE_MAX;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel49.Caption := qryTakeForPrintTAKE_NO.AsString;
  QRLabel52.Caption := qryTakeForPrintNATION_CODE.AsString+'/'+qryTakeForPrintNATION_NAME.AsString;
  QRLabel50.Caption := Trim((qryTakeForPrintTAKE_SANGHO1.AsString)+' '+Trim(qryTakeForPrintTAKE_SANGHO2.AsString)+' '+Trim(qryTakeForPrintTAKE_SANGHO3.AsString));
  QRLabel51.Caption := Trim((qryTakeForPrintTAKE_ADDR1.AsString)+' '+Trim(qryTakeForPrintTAKE_ADDR2.AsString)+' '+Trim(qryTakeForPrintTAKE_ADDR3.AsString));
  inc(FTAKE_IDX);
  qryTakeForPrint.Next;
end;

procedure TQR_KPTA_NORMAL_Complete_PRN_frm.ChildBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := (FTAKE_MAX > 0);
end;

end.
