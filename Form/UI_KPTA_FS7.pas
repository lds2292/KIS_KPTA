unit UI_KPTA_FS7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, Grids, DBGrids, acDBGrid, Mask, sMaskEdit, StdCtrls,
  sEdit, sComboBox, ComCtrls, sPageControl, ExtCtrls, sSplitter, sButton,
  Buttons, sSpeedButton, sPanel, sSkinProvider, sLabel, DBCtrls, sDBEdit,
  sDBMemo, DB, ADODB, DateUtils, StrUtils;

type
  TUI_KPTA_FS7_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sSpeedButton18: TsSpeedButton;
    sButton3: TsButton;
    sButton12: TsButton;
    sSpeedButton1: TsSpeedButton;
    sPanel13: TsPanel;
    sSplitter1: TsSplitter;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    sPanel14: TsPanel;
    sDBGrid1: TsDBGrid;
    sSplitter2: TsSplitter;
    sButton6: TsButton;
    edt_fromdate: TsMaskEdit;
    sPanel2: TsPanel;
    btnCalc: TsButton;
    sPanel3: TsPanel;
    edt_todate: TsMaskEdit;
    sButton2: TsButton;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sPanel6: TsPanel;
    sDBEdit1: TsDBEdit;
    sPanel7: TsPanel;
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sPanel8: TsPanel;
    sDBEdit4: TsDBEdit;
    sPanel9: TsPanel;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    sPanel10: TsPanel;
    sPanel11: TsPanel;
    sDBEdit7: TsDBEdit;
    sPanel12: TsPanel;
    sDBEdit8: TsDBEdit;
    sPanel15: TsPanel;
    sDBEdit10: TsDBEdit;
    sPanel16: TsPanel;
    sDBEdit11: TsDBEdit;
    sLabel1: TsLabel;
    sPanel17: TsPanel;
    sDBEdit9: TsDBEdit;
    sPanel18: TsPanel;
    sLabel2: TsLabel;
    sPanel19: TsPanel;
    sDBEdit12: TsDBEdit;
    sPanel20: TsPanel;
    sDBEdit13: TsDBEdit;
    sPanel21: TsPanel;
    sDBEdit14: TsDBEdit;
    sPanel23: TsPanel;
    sDBEdit16: TsDBEdit;
    sPanel22: TsPanel;
    sLabel3: TsLabel;
    sPanel25: TsPanel;
    sDBEdit17: TsDBEdit;
    sPanel26: TsPanel;
    sDBEdit18: TsDBEdit;
    sPanel27: TsPanel;
    sDBEdit19: TsDBEdit;
    sDBEdit15: TsDBEdit;
    sPanel24: TsPanel;
    sLabel4: TsLabel;
    sPanel28: TsPanel;
    sDBEdit20: TsDBEdit;
    sDBEdit24: TsDBEdit;
    sPanel31: TsPanel;
    sDBEdit25: TsDBEdit;
    sDBEdit26: TsDBEdit;
    sPanel29: TsPanel;
    sDBEdit21: TsDBEdit;
    sDBEdit22: TsDBEdit;
    sPanel30: TsPanel;
    sDBEdit23: TsDBEdit;
    sPanel33: TsPanel;
    sDBEdit28: TsDBEdit;
    sPanel34: TsPanel;
    sDBEdit29: TsDBEdit;
    sDBEdit30: TsDBEdit;
    sPanel35: TsPanel;
    sDBEdit31: TsDBEdit;
    sDBEdit32: TsDBEdit;
    sPanel36: TsPanel;
    sDBEdit33: TsDBEdit;
    sPanel37: TsPanel;
    sDBEdit34: TsDBEdit;
    sPanel38: TsPanel;
    sDBMemo1: TsDBMemo;
    sDBGrid2: TsDBGrid;
    sSplitter3: TsSplitter;
    sPanel39: TsPanel;
    sPanel40: TsPanel;
    sDBEdit35: TsDBEdit;
    sPanel41: TsPanel;
    sDBEdit36: TsDBEdit;
    sPanel42: TsPanel;
    sDBEdit38: TsDBEdit;
    sPanel43: TsPanel;
    sDBEdit37: TsDBEdit;
    sPanel44: TsPanel;
    sDBEdit39: TsDBEdit;
    sPanel45: TsPanel;
    sDBEdit40: TsDBEdit;
    sDBEdit41: TsDBEdit;
    sPanel46: TsPanel;
    sDBEdit42: TsDBEdit;
    sDBEdit43: TsDBEdit;
    sPanel47: TsPanel;
    sDBEdit44: TsDBEdit;
    sDBEdit45: TsDBEdit;
    sPanel48: TsPanel;
    sDBMemo2: TsDBMemo;
    sPanel49: TsPanel;
    sDBMemo3: TsDBMemo;
    sPanel50: TsPanel;
    sDBMemo4: TsDBMemo;
    sPanel51: TsPanel;
    sDBEdit46: TsDBEdit;
    sPanel52: TsPanel;
    sPanel53: TsPanel;
    sPanel54: TsPanel;
    sDBEdit47: TsDBEdit;
    sDBEdit48: TsDBEdit;
    sDBEdit49: TsDBEdit;
    sPanel55: TsPanel;
    sPanel56: TsPanel;
    sPanel57: TsPanel;
    sDBEdit50: TsDBEdit;
    sDBEdit51: TsDBEdit;
    sDBEdit52: TsDBEdit;
    sPanel58: TsPanel;
    sDBEdit53: TsDBEdit;
    sDBEdit54: TsDBEdit;
    sPanel59: TsPanel;
    sDBEdit55: TsDBEdit;
    sDBEdit56: TsDBEdit;
    sPanel60: TsPanel;
    sDBEdit57: TsDBEdit;
    sPanel61: TsPanel;
    sDBEdit59: TsDBEdit;
    sDBEdit61: TsDBEdit;
    sPanel62: TsPanel;
    sDBEdit62: TsDBEdit;
    sPanel63: TsPanel;
    sDBEdit63: TsDBEdit;
    sPanel64: TsPanel;
    sDBEdit64: TsDBEdit;
    sPanel65: TsPanel;
    sDBEdit65: TsDBEdit;
    sDBEdit66: TsDBEdit;
    sPanel66: TsPanel;
    sDBEdit67: TsDBEdit;
    sPanel67: TsPanel;
    sDBEdit68: TsDBEdit;
    sPanel68: TsPanel;
    sDBEdit69: TsDBEdit;
    sPanel69: TsPanel;
    sDBEdit70: TsDBEdit;
    sDBEdit71: TsDBEdit;
    qryRecvStandard1: TADOQuery;
    dsRecvStandard1: TDataSource;
    qryRecvStandard1DOC_NO: TStringField;
    qryRecvStandard1DOC_TYPE: TStringField;
    qryRecvStandard1PROCESS_STATE: TStringField;
    qryRecvStandard1PUBLISH_NO: TStringField;
    qryRecvStandard1PUBLISH_DATE: TStringField;
    qryRecvStandard1EXPIRY_DATE: TStringField;
    qryRecvStandard1PUBLISH_INSTITUTE: TStringField;
    qryRecvStandard1PUBLISH_PERSON: TStringField;
    qryRecvStandard1PUBLISH_TEL: TStringField;
    qryRecvStandard1PUBLISH_SIGN: TStringField;
    qryRecvStandard1PUBLISH_MEMO: TMemoField;
    qryRecvStandard1DOC_GUBUN: TStringField;
    qryRecvStandard1REQUEST_DATE: TDateTimeField;
    qryRecvStandard1IMPORT_SAUP_NO: TStringField;
    qryRecvStandard1IMPORT_SANGHO: TStringField;
    qryRecvStandard1IMPORT_DAEPYO: TStringField;
    qryRecvStandard1IMPORT_TRADE_NO: TStringField;
    qryRecvStandard1IMPORT_POST_NO: TStringField;
    qryRecvStandard1IMPORT_ADDR1: TStringField;
    qryRecvStandard1IMPORT_ADDR2: TStringField;
    qryRecvStandard1IMPORT_TYPE: TBooleanField;
    qryRecvStandard1HWAJU_SAUP_NO: TStringField;
    qryRecvStandard1HWAJU_SANGHO: TStringField;
    qryRecvStandard1HWAJU_DAEPYO: TStringField;
    qryRecvStandard1HWAJU_POST_NO: TStringField;
    qryRecvStandard1HWAJU_ADDR1: TStringField;
    qryRecvStandard1HWAJU_ADDR2: TStringField;
    qryRecvStandard1EXPORT_SANGHO: TStringField;
    qryRecvStandard1EXPORT_ADDR1: TStringField;
    qryRecvStandard1EXPORT_NATION_CODE: TStringField;
    qryRecvStandard1EXPORT_NATION_NAME: TStringField;
    qryRecvStandard1INDO_TYPE: TStringField;
    qryRecvStandard1PAY_TYPE: TStringField;
    qryRecvStandard1PAY_AMT: TBCDField;
    qryRecvStandard1PAY_UNIT: TStringField;
    qryRecvStandard1PAY_BETWEEN_DATE: TStringField;
    qryRecvStandard1DEST_PORT_CODE: TStringField;
    qryRecvStandard1DEST_PORT_NAME: TStringField;
    qryRecvStandard1QUALITY_AGENCY_CODE: TStringField;
    qryRecvStandard1QUALITY_AGENCY_NAME: TStringField;
    qryRecvStandard1FIRST_CHECK_AGENCY_CODE: TStringField;
    qryRecvStandard1REGION_CODE: TStringField;
    qryRecvStandard1REGION_NAME: TStringField;
    qryRecvStandard1IMPORT_MEMO: TMemoField;
    qryRecvStandard1TOTAL_COUNT: TIntegerField;
    qryRecvStandard1JEJE_GUBUN: TStringField;
    sPanel76: TsPanel;
    sDBEdit78: TsDBEdit;
    sDBEdit79: TsDBEdit;
    sDBEdit80: TsDBEdit;
    sDBEdit81: TsDBEdit;
    sDBEdit82: TsDBEdit;
    sDBEdit83: TsDBEdit;
    qryRecvStandard1PROCESS_STATE_NAME: TStringField;
    sPanel32: TsPanel;
    sDBEdit27: TsDBEdit;
    sDBEdit84: TsDBEdit;
    sDBEdit85: TsDBEdit;
    qryRecvStandard1JEJE_NAME: TStringField;
    qryRecvStandard1REQUEST_DOC_NAME: TStringField;
    qryRecvStandard1INDO_NAME: TStringField;
    qryRecvStandard1PAY_UNIT_NAME: TStringField;
    qryRecvStandard1PAY_TYPE_NAME: TStringField;
    qryRecvStandard1FIRST_CHECK_AGENCY_NAME: TStringField;
    sTabSheet4: TsTabSheet;
    qryRecvStandard2: TADOQuery;
    dsRecvStandard2: TDataSource;
    qryRecvStandard2DOC_NO: TStringField;
    qryRecvStandard2SERIAL_CODE: TStringField;
    qryRecvStandard2SERIAL_NO: TStringField;
    qryRecvStandard2HS: TStringField;
    qryRecvStandard2GOODS_CODE: TStringField;
    qryRecvStandard2OLD_JONG_CODE: TStringField;
    qryRecvStandard2OLD_GOODS_CODE: TStringField;
    qryRecvStandard2COSMETIC_GUBUN: TStringField;
    qryRecvStandard2DMF: TStringField;
    qryRecvStandard2BGMP: TStringField;
    qryRecvStandard2TRADE_NAME: TStringField;
    qryRecvStandard2MODEL_SIZE: TMemoField;
    qryRecvStandard2MODEL_SIZE_INGREDIENT: TMemoField;
    qryRecvStandard2DRUG_STANDARD_CODE: TStringField;
    qryRecvStandard2WITAK_SANGHO1: TStringField;
    qryRecvStandard2WITAK_SANGHO2: TStringField;
    qryRecvStandard2WITAK_SANGHO3: TStringField;
    qryRecvStandard2WITAK_ADDR1: TStringField;
    qryRecvStandard2WITAK_ADDR2: TStringField;
    qryRecvStandard2WITAK_ADDR3: TStringField;
    qryRecvStandard2WITAK_NATION_CODE: TStringField;
    qryRecvStandard2WITAK_NATION_NAME: TStringField;
    qryRecvStandard2MODEL_QTY: TBCDField;
    qryRecvStandard2MODEL_QTY_UNIT: TStringField;
    qryRecvStandard2MODEL_DANGA: TBCDField;
    qryRecvStandard2MODEL_AMT: TBCDField;
    qryRecvStandard2MODEL_AMT_UNIT: TStringField;
    qryRecvStandard2PERMIT_SINGO_NO: TStringField;
    qryRecvStandard2PERMIT_SINGO_DATE: TStringField;
    qryRecvStandard2BSE_CODE: TStringField;
    qryRecvStandard2BSE_ORIGIN_NATION_CODE: TStringField;
    qryRecvStandard2BSE_ORIGIN_NATION_NAME: TStringField;
    qryRecvStandard2ORIGIN_MATTER: TStringField;
    qryRecvStandard2EXTRACTION: TStringField;
    qryRecvStandard2BATCH_NO: TStringField;
    qryRecvStandard2ORIGIN_NATION_CODE: TStringField;
    qryRecvStandard2ORIGIN_NATION_NAME: TStringField;
    sDBEdit86: TsDBEdit;
    sPanel70: TsPanel;
    sLabel6: TsLabel;
    sDBGrid3: TsDBGrid;
    sPanel71: TsPanel;
    sLabel5: TsLabel;
    sDBGrid4: TsDBGrid;
    sPanel72: TsPanel;
    sLabel7: TsLabel;
    sDBGrid5: TsDBGrid;
    qryRecvStandard2COSMETIC_GUBUN_NAME: TStringField;
    qryRecvStandard2DMF_NAME: TStringField;
    qryRecvStandard2BGMP_NAME: TStringField;
    qryRecvStandard2BSE_CODE_NAME: TStringField;
    sDBEdit58: TsDBEdit;
    procedure sButton12Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure qryRecvStandard2MODEL_SIZEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryRecvStandard1AfterOpen(DataSet: TDataSet);
    procedure qryRecvStandard1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ReadList;
    procedure ReadStandard2;
  public
    { Public declarations }
  end;

var
  UI_KPTA_FS7_frm: TUI_KPTA_FS7_frm;

implementation

uses
  dmConn, GOVCBR_FS7, KISXML, CommonLib;

{$R *.dfm}

Const
  XmlFile = 'D:\#4세대\#신규프로그램\KIS_KPTA\Document\KCS_ResponseOfCSW_FS7SchemaModule_1.0_standard.xml';
procedure TUI_KPTA_FS7_frm.ReadList;
begin
  with qryRecvStandard1 do
  begin
    Close;
    Parameters.ParamByName('FromDate').Value := ConvertStr2Date(edt_fromdate.Text);
    Parameters.ParamByName('ToDate').Value := IncSecond(IncMinute(IncHour(ConvertStr2Date(edt_todate.Text),23),59),59);
    Open;
  end;
end;

procedure TUI_KPTA_FS7_frm.ReadStandard2;
begin
  with qryRecvStandard2 do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := qryRecvStandard1DOC_NO.AsString;
    Open;
  end;
end;

procedure TUI_KPTA_FS7_frm.sButton12Click(Sender: TObject);
var
  RecvFile : TKISXMLParsing;
begin
  inherited;
  RecvFile := TKISXMLParsing.Create(XmlFile);
  try
    IF RecvFile.TypeCode = 'GOVCBRFS7' Then  RecvFile := TGOVCBR_FS7.Create(XmlFile);

    RecvFile.ParsingXML;
  finally
    FreeAndNil( RecvFile );
  end;
end;

procedure TUI_KPTA_FS7_frm.sButton6Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_KPTA_FS7_frm.qryRecvStandard2MODEL_SIZEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := LeftStr(Sender.AsString,150);
end;

procedure TUI_KPTA_FS7_frm.qryRecvStandard1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  ReadStandard2;
end;

procedure TUI_KPTA_FS7_frm.qryRecvStandard1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  ReadStandard2;
end;

end.
