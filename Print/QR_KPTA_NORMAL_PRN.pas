unit QR_KPTA_NORMAL_PRN;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, Dialogs, StrUtils;

type
  TQR_KPTA_NORMAL_PRN_frm = class(TQuickRep)
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
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
    QRSubDetail1: TQRSubDetail;
    ChildBand1: TQRChildBand;
    qryStandard1forPrint: TADOQuery;
    QR_DOCNO: TQRLabel;
    qryStandard1forPrintDOC_NO: TStringField;
    qryStandard1forPrintDOC_TYPE: TStringField;
    qryStandard1forPrintSEND_TYPE: TStringField;
    qryStandard1forPrintDOC_GUBUN: TStringField;
    qryStandard1forPrintREQUEST_DATE: TDateTimeField;
    qryStandard1forPrintJEJE_GUBUN: TStringField;
    qryStandard1forPrintCANCEL_REASON: TMemoField;
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
    qryStandard1forPrintFIRST_CHECK_AGENCY_NAME: TStringField;
    qryStandard1forPrintREGION_CODE: TStringField;
    qryStandard1forPrintREGION_NAME: TStringField;
    qryStandard1forPrintIMPORT_MEMO: TMemoField;
    qryStandard1forPrintTOTAL_COUNT: TIntegerField;
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
    qryStandard1forPrintEXPORT_NATION_ENG: TStringField;
    QR_SIZER: TQRLabel;
    QR_AMT: TQRLabel;
    QR_DESTPORT: TQRLabel;
    QR_QUALITY_AGENCY: TQRLabel;
    QR_FIRST_CHECK_AGENCY: TQRLabel;
    QR_REGION_NAME: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape29: TQRShape;
    QRShape34: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QR_HS: TQRLabel;
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
    QR_GOODS: TQRLabel;
    QR_TRADE_PUM: TQRLabel;
    QR_MODELSIZE: TQRLabel;
    QR_INGREDIENT: TQRLabel;
    QR_MODEL_QTY: TQRLabel;
    QR_UNIT_PRICE: TQRLabel;
    QR_MODEL_AMT: TQRLabel;
    qryMakeforPrint: TADOQuery;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QR_MAKE: TQRLabel;
    qryMakeforPrintDOC_NO: TStringField;
    qryMakeforPrintSERIAL_CODE: TStringField;
    qryMakeforPrintSERIAL_NO: TStringField;
    qryMakeforPrintMAKE_SERIAL_NO: TStringField;
    qryMakeforPrintMAKE_NO: TStringField;
    qryMakeforPrintMAKE_DATE: TStringField;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QR_MAKE_COMPANY1: TQRLabel;
    QR_MAKE_COMPANY_ADDR: TQRMemo;
    QRShape39: TQRShape;
    QR_BSE: TQRLabel;
    qryStandard2forPrintBSE_ORIGIN_NATION_ENG: TStringField;
    SummaryBand1: TQRBand;
    QRLabel39: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QR_SUB_LASTLINE: TQRShape;
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
    QR_MAKE_COMPANY2: TQRLabel;
    QR_MAKE_COMPANY3: TQRLabel;
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
  private
    FDOC_NO : String;
    FTOTAL_AMT : Currency;
    FTOTAL_UNIT : String;
    FSUB_IDX : integer;
    FSUB_MAX : Integer;
    FTOTAL_HEIGHT : Integer;
    function ReadStandard1:Boolean;
    procedure Readstandard2;
    procedure ReadMake(SerialNo : String);
  public
    procedure Run(DOC_NO : String);
    procedure CloseDataSet;
  end;

var
  QR_KPTA_NORMAL_PRN_frm: TQR_KPTA_NORMAL_PRN_frm;
Const
  MAX_HEIGHT = 1045;
implementation

uses
  dmConn;

{$R *.DFM}

procedure TQR_KPTA_NORMAL_PRN_frm.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  qryStandard1forPrint.First;
  If qryStandard2forPrint.Active Then
    qryStandard2forPrint.First;
  FTOTAL_AMT := 0;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.QuickRepNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  MoreData := not qryStandard2forPrint.Eof;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;

  QR_HS.Caption := '① '+qryStandard2forPrintHS.AsString;
  QR_GOODS.Caption := '② '+qryStandard2forPrintGOODS_CODE.AsString;
  QR_TRADE_PUM.Caption := '③ '+qryStandard2forPrintTRADE_NAME.AsString;
  QR_MODELSIZE.Caption := '④ '+qryStandard2forPrintMODEL_SIZE.AsString;
  QR_INGREDIENT.Caption := '⑤ '+qryStandard2forPrintMODEL_SIZE_INGREDIENT.AsString;

  QR_MODEL_QTY.Caption  := '⑥ '+ FormatFloat('#,0.####',qryStandard2forPrintMODEL_QTY.AsCurrency)+'('+qryStandard2forPrintMODEL_QTY_UNIT.AsString+')';
  QR_UNIT_PRICE.Caption := '⑦ '+ FormatFloat('#,0.####',qryStandard2forPrintMODEL_DANGA.AsCurrency);
  QR_MODEL_AMT.Caption  := '⑧ '+ FormatFloat('#,0.####',qryStandard2forPrintMODEL_AMT.AsCurrency)+'('+qryStandard2forPrintMODEL_AMT_UNIT.AsString+')';
  FTOTAL_AMT := FTOTAL_AMT + qryStandard2forPrintMODEL_AMT.AsCurrency;
  FTOTAL_UNIT := qryStandard2forPrintMODEL_AMT_UNIT.AsString;
  FSUB_IDX := 1;
  ReadMake(qryStandard2forPrintSERIAL_NO.AsString);

  qryStandard2forPrint.Next;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
//  MoreData := not qryMakeforPrint.Eof;
  MoreData := FSUB_IDX <= FSUB_MAX;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.QRSubDetail1BeforePrint(
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

  inc(FSUB_IDX);
  qryMakeforPrint.Next;

  If not qryMakeforPrint.Eof Then
    QR_SUB_LASTLINE.Enabled := FTOTAL_HEIGHT + Sender.Height >= MAX_HEIGHT
  else
    QR_SUB_LASTLINE.Enabled := FTOTAL_HEIGHT + ChildBand1.Height >= MAX_HEIGHT;

end;

procedure TQR_KPTA_NORMAL_PRN_frm.Run(DOC_NO: String);
begin
  FDOC_NO := DOC_NO;

  try
    IF ReadStandard1 Then
    begin
      ShowMessage('문서번호 : '+DOC_NO+'를 찾을수 없습니다');
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

procedure TQR_KPTA_NORMAL_PRN_frm.ReadMake(SerialNo : String);
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
end;

function TQR_KPTA_NORMAL_PRN_frm.ReadStandard1:Boolean;
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

procedure TQR_KPTA_NORMAL_PRN_frm.Readstandard2;
begin
  with qryStandard2forPrint do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDOC_NO;
    Open;
  end;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.CloseDataSet;
begin
  qryStandard1forPrint.Close;
  qryStandard2forPrint.Close;
  qryMakeforPrint.Close;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  TempStr : String;
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;

  //신청번호
  TempStr := qryStandard1forPrintDOC_NO.AsString;
  QR_DOCNO.Caption := LeftStr(TempStr,5)+'-'+MidStr(TempStr,6,2)+'-'+MidStr(TempStr,8,6);
  //신청일자
  QR_RequestDateTime.Caption := FormatDateTime('YYYY-MM-DD',qryStandard1forPrintREQUEST_DATE.AsDateTime);

  //수입자 상호
  QR_IMPORTER_SANGHO.Caption :=  qryStandard1forPrintIMPORT_SANGHO.AsString;
  //수입자 성명
  QR_IMPORTER_NAME.Caption := qryStandard1forPrintIMPORT_DAEPYO.AsString;
  //수입자 주소
  QR_IMPORTER_ADDR.Caption := qryStandard1forPrintIMPORT_ADDR1.AsString;
  //수입업 신고번호
  QR_TRADE_NO.Caption := qryStandard1forPrintIMPORT_TRADE_NO.AsString;

  //수입화주 상호
  QR_HWAJU_SANGHO.Caption := qryStandard1forPrintHWAJU_SANGHO.AsString;
  //수입화주 이름
  QR_HWAJU_NAME.Caption := qryStandard1forPrintHWAJU_DAEPYO.AsString;
  //수입화주 주소
  QR_HWAJU_ADDR.Caption := qryStandard1forPrintHWAJU_ADDR1.AsString;
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

end;

procedure TQR_KPTA_NORMAL_PRN_frm.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  TempStr : String;
begin
  TempStr := FormatFloat('#,0.####',FTOTAL_AMT)+' ('+FTOTAL_UNIT+')';
  QRLabel39.Caption := Format('%s%35s',['총금액(단위)',TempStr]);
end;

procedure TQR_KPTA_NORMAL_PRN_frm.QuickRepEndPage(Sender: TCustomQuickRep);
begin
//  ShowMessage(IntToStr(FTOTAL_HEIGHT) );
  FTOTAL_HEIGHT := 0;
end;

procedure TQR_KPTA_NORMAL_PRN_frm.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  FTOTAL_HEIGHT := FTOTAL_HEIGHT + Sender.Height;
end;

end.
