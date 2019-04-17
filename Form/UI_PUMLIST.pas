unit UI_PUMLIST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, ExtCtrls, sPanel, sSkinProvider, Grids, DBGrids,
  acDBGrid, DB, ADODB, StdCtrls, DBCtrls, sDBMemo, Mask, sDBEdit, sLabel,
  QuickRpt, QRCtrls, sComboBox, sMaskEdit, sCustomComboEdit, acDBComboEdit,
  Buttons, sSpeedButton, sEdit, sButton, StrUtils, DateUtils, sMemo, sComboEdit, CommonDef;

type
  TUI_PUMLIST_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sDBGrid1: TsDBGrid;
    sPanel7: TsPanel;
    qryList: TADOQuery;
    dsList: TDataSource;
    sPanel50: TsPanel;
    sPanel2: TsPanel;
    sPanel6: TsPanel;
    sPanel8: TsPanel;
    sPanel9: TsPanel;
    sPanel10: TsPanel;
    sPanel11: TsPanel;
    sPanel12: TsPanel;
    sPanel13: TsPanel;
    sPanel14: TsPanel;
    sPanel15: TsPanel;
    sPanel16: TsPanel;
    sPanel17: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sPanel18: TsPanel;
    sPanel19: TsPanel;
    com_BSE: TsComboBox;
    sPanel20: TsPanel;
    sPanel21: TsPanel;
    sPanel22: TsPanel;
    sPanel23: TsPanel;
    sPanel24: TsPanel;
    com_cosmetic: TsComboBox;
    sPanel25: TsPanel;
    com_DMF: TsComboBox;
    sPanel26: TsPanel;
    com_BGMP: TsComboBox;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    sPanel28: TsPanel;
    sPanel27: TsPanel;
    sButton3: TsButton;
    sPanel29: TsPanel;
    sMaskEdit1: TsMaskEdit;
    sMaskEdit2: TsMaskEdit;
    sEdit1: TsEdit;
    sButton1: TsButton;
    sSpeedButton1: TsSpeedButton;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton2: TsButton;
    qryListPID: TIntegerField;
    qryListGOODS_CODE: TStringField;
    qryListOLD_GOOD_CODE: TStringField;
    qryListOLD_JONG_CODE: TStringField;
    qryListHSCD: TStringField;
    qryListTRADE_NAME: TStringField;
    qryListMODEL_SIZE: TMemoField;
    qryListMODEL_SIZE_INGREDIENT: TMemoField;
    qryListORIGIN_NATION_CODE: TStringField;
    qryListORIGIN_NATION_NAME: TStringField;
    qryListBSE_CODE: TStringField;
    qryListBSE_ORIGIN_NATION_CODE: TStringField;
    qryListBSE_ORIGIN_NATION_NAME: TStringField;
    qryListORIGIN_MATTER: TStringField;
    qryListEXTRACTION: TStringField;
    qryListBATCH_NO: TStringField;
    qryListCOSMETIC_GUBUN: TStringField;
    qryListDMF: TStringField;
    qryListBGMP: TStringField;
    qryListPERMIT_SINGO_NO: TStringField;
    qryListPERMIT_SINGO_DATE: TStringField;
    qryListDRUG_STANDARD_CODE: TStringField;
    qryListWITAK_SANGHO1: TStringField;
    qryListWITAK_SANGHO2: TStringField;
    qryListWITAK_SANGHO3: TStringField;
    qryListWITAK_ADDR1: TStringField;
    qryListWITAK_ADDR2: TStringField;
    qryListWITAK_ADDR3: TStringField;
    qryListWITAK_NATION_CODE: TStringField;
    qryListWITAK_NATION_NAME: TStringField;
    qryListTAKE_NATION_CODE: TStringField;
    qryListTAKE_NATION_NAME: TStringField;
    qryListTAKE_SANGHO1: TStringField;
    qryListTAKE_SANGHO2: TStringField;
    qryListTAKE_SANGHO3: TStringField;
    qryListTAKE_ADDR1: TStringField;
    qryListTAKE_ADDR2: TStringField;
    qryListTAKE_ADDR3: TStringField;
    qryListREG_ID: TStringField;
    qryListLST_ID: TStringField;
    qryListREG_DT: TStringField;
    qryListLST_DT: TStringField;
    sPanel31: TsPanel;
    edt_GOODS_CODE: TsEdit;
    edt_OLD_GOODS_CODE: TsEdit;
    edt_HSCD: TsEdit;
    memo_TradeName: TsMemo;
    memo_ModelSize: TsMemo;
    memo_Ingredient: TsMemo;
    edt_WITAK_NATCD: TsEdit;
    edt_WITAK_NATNM: TsEdit;
    edt_TAKE_NATCD: TsEdit;
    edt_TAKE_NATNM: TsEdit;
    edt_WITAKSANGHO1: TsEdit;
    edt_WITAKSANGHO2: TsEdit;
    edt_WITAKSANGHO3: TsEdit;
    edt_WITAKADDR1: TsEdit;
    edt_WITAKADDR2: TsEdit;
    edt_WITAKADDR3: TsEdit;
    edt_TAKESANGHO1: TsEdit;
    edt_TAKESANGHO2: TsEdit;
    edt_TAKESANGHO3: TsEdit;
    edt_TAKEADDR1: TsEdit;
    edt_TAKEADDR2: TsEdit;
    edt_TAKEADDR3: TsEdit;
    edt_Origin: TsEdit;
    edt_OriginNM: TsEdit;
    edt_BSEORIGIN: TsEdit;
    edt_BSEORIGIN_NM: TsEdit;
    edt_originmatter: TsEdit;
    edt_BatchNo: TsEdit;
    edt_Extractor: TsEdit;
    msk_REG_DT: TsMaskEdit;
    sSpeedButton2: TsSpeedButton;
    edt_DrugStandardCode: TsEdit;
    sButton6: TsButton;
    sButton7: TsButton;
    sButton8: TsButton;
    sButton9: TsButton;
    sButton10: TsButton;
    sButton11: TsButton;
    sButton12: TsButton;
    sButton13: TsButton;
    sPanel32: TsPanel;
    sLabel3: TsLabel;
    sButton14: TsButton;
    sSpeedButton3: TsSpeedButton;
    QRShape4: TQRShape;
    sPanel33: TsPanel;
    edt_PERMIT_SINGO_NO: TsEdit;
    sPanel34: TsPanel;
    msk_PERMIT_SINGO_DATE: TsMaskEdit;
    sComboBox1: TsComboBox;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure qryListAfterScroll(DataSet: TDataSet);
    procedure qryListAfterOpen(DataSet: TDataSet);
    procedure sButton6Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure edt_GOODS_CODEEnter(Sender: TObject);
    procedure edt_GOODS_CODEExit(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure edt_WITAK_NATCDDblClick(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure com_BSESelect(Sender: TObject);
    procedure sEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton5Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_GOODS_CODEChange(Sender: TObject);
  private
    { Private declarations }
    FWorkType : TWorkType;
    procedure ReadData;
    procedure ButtonEnable;
    function getMAXPID:integer;
  public
    procedure ReadList; virtual;
  public
    { Public declarations }
  end;

var
  UI_PUMLIST_frm: TUI_PUMLIST_frm;

implementation

uses
  dmConn, CommonLib, dlg_MtlrsList, dmIcon, Dialog_SearchHS, Dialog_CodeParent, SQLCreator, CommonVar, CommonMSG;

{$R *.dfm}

procedure TUI_PUMLIST_frm.ReadList;
begin
  IF FWorkType <> wtView Then Exit;
   
  with qryList do
  begin
    Close;
    SQL.Text := 'SELECT * FROM PUMLIST';
    SQL.Add('WHERE REG_DT between'+QuotedStr(sMaskEdit1.Text)+' AND '+QuotedStr(sMaskEdit2.Text));
    IF Trim(sEdit1.Text) <> '' Then
    begin
      Case sComboBox1.ItemIndex of
        0: SQL.Add('AND TRADE_NAME LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        1: SQL.Add('AND GOODS_CODE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        2: SQL.Add('AND MODEL_SIZE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        3: SQL.Add('AND MODEL_SIZE_INGREDIENT LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        4: SQL.Add('AND DRUG_STANDARD_CODE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
      end;
//      SQL.Add('AND GOODS_CODE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
    end;
    SQL.Add('ORDER BY REG_DT DESC');
    Open;
  end;
end;

procedure TUI_PUMLIST_frm.FormShow(Sender: TObject);
begin
  inherited;
  FWorkType := wtView;
//  sMaskEdit1.Text := FormatDateTime('YYYYMMDD',StartOfTheYear(Now));
  // 처음부터 찾을 수 있게
  sMaskEdit1.Text := '20000101';
  sMaskEdit2.Text := FormatDateTime('YYYYMMDD', Now);
  ReadOnlyPanel(sPanel4,True);
  ReadList;
end;

procedure TUI_PUMLIST_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_PUMLIST_frm.ReadData;
var
  TMP_STR : String;
begin
  edt_GOODS_CODE.Text := qryListGOODS_CODE.AsString;
  TMP_STR := UpperCase( MidStr(edt_GOODS_CODE.Text, 11, 3) );
  IF TMP_STR  = '1AB' Then
    sPanel27.Caption := '의약품표준코드'
  else
  IF AnsiMatchText(TMP_STR,['1AG','1BG','1AR']) Then
    sPanel27.Caption := '원료목록코드'
  else
  IF AnsiMatchText(TMP_STR,['1AA','1AN','1AP']) Then
    sPanel27.Caption := '식약청기준코드'
  else
    sPanel27.Caption := '표준코드';

  edt_OLD_GOODS_CODE.Text := qryListOLD_GOOD_CODE.AsString;
  edt_HSCD.Text := qryListHSCD.AsString;
  msk_REG_DT.Text := qryListREG_DT.AsString;
  memo_TradeName.Text := qryListTRADE_NAME.AsString;
  memo_ModelSize.Text := qryListMODEL_SIZE.AsString;
  edt_DrugStandardCode.Text := qryListDRUG_STANDARD_CODE.AsString;
  memo_Ingredient.Text := qryListMODEL_SIZE_INGREDIENT.AsString;

  edt_WITAK_NATCD.Text := qryListWITAK_NATION_CODE.AsString;
  edt_WITAK_NATNM.Text := qryListWITAK_NATION_NAME.AsString;
  edt_WITAKSANGHO1.Text := qryListWITAK_SANGHO1.AsString;
  edt_WITAKSANGHO2.Text := qryListWITAK_SANGHO2.AsString;
  edt_WITAKSANGHO3.Text := qryListWITAK_SANGHO3.AsString;
  edt_WITAKADDR1.Text := qryListWITAK_ADDR1.AsString;
  edt_WITAKADDR2.Text := qryListWITAK_ADDR2.AsString;
  edt_WITAKADDR3.Text := qryListWITAK_ADDR3.AsString;

  edt_TAKE_NATCD.Text := qryListTAKE_NATION_CODE.AsString;
  edt_TAKE_NATNM.Text := qryListTAKE_NATION_NAME.AsString;
  edt_TAKESANGHO1.Text := qryListTAKE_SANGHO1.AsString;
  edt_TAKESANGHO2.Text := qryListTAKE_SANGHO2.AsString;
  edt_TAKESANGHO3.Text := qryListTAKE_SANGHO3.AsString;
  edt_TAKEADDR1.Text := qryListTAKE_ADDR1.AsString;
  edt_TAKEADDR2.Text := qryListTAKE_ADDR2.AsString;
  edt_TAKEADDR3.Text := qryListTAKE_ADDR3.AsString;

  edt_Origin.Text := qryListORIGIN_NATION_CODE.AsString;
  edt_OriginNM.Text := qryListORIGIN_NATION_NAME.AsString;
  edt_BSEORIGIN.Text := qryListBSE_ORIGIN_NATION_CODE.AsString;
  edt_BSEORIGIN_NM.Text := qryListBSE_ORIGIN_NATION_NAME.AsString;
  edt_originmatter.Text := qryListORIGIN_MATTER.AsString;
  edt_BatchNo.Text := qryListBATCH_NO.AsString;
  edt_Extractor.Text := qryListEXTRACTION.AsString;

  //허가신고번호/일자
  edt_PERMIT_SINGO_NO.Text := qryListPERMIT_SINGO_NO.AsString;
  msk_PERMIT_SINGO_DATE.Text := qryListPERMIT_SINGO_DATE.AsString;  

  //BSE대상품목
  com_BSE.ItemIndex := setCodeFromCombobox(com_BSE,qryListBSE_CODE.AsString,'-');
  com_BSESelect(com_BSE);
  //기능성화장품구분
  com_cosmetic.ItemIndex := setCodeFromCombobox(com_cosmetic,qryListCOSMETIC_GUBUN.AsString,'-');
  //DMF대상구분
  com_DMF.ItemIndex := setCodeFromCombobox(com_DMF,qryListDMF.AsString,'-');
  //BGMP대상구분
  com_BGMP.ItemIndex := setCodeFromCombobox(com_BGMP,qryListBGMP.AsString,'-');

end;

procedure TUI_PUMLIST_frm.qryListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ClearPanel(sPanel4);
  ReadData;
end;

procedure TUI_PUMLIST_frm.qryListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  IF DataSet.RecordCount = 0 Then qryListAfterScroll(DataSet);
end;

procedure TUI_PUMLIST_frm.sButton6Click(Sender: TObject);
var
  TMP_STR : String;
begin
  inherited;
  IF FWorkType = wtView Then Exit;

  dlg_MtlrsList_frm := Tdlg_MtlrsList_frm.Create(Self);
  try
    If dlg_MtlrsList_frm.RunDialog(edt_DrugStandardCode.Text) = mrOK Then
    begin
      edt_DrugStandardCode.Text := dlg_MtlrsList_frm.Field[2].AsString;

      TMP_STR := UpperCase( MidStr(edt_GOODS_CODE.Text, 11, 3) );
      IF AnsiMatchText(TMP_STR,['1AG','1BG','1AR']) Then
      begin
        memo_Ingredient.Clear;
        memo_Ingredient.Text := '별지첨부(문서번호 : '+dlg_MtlrsList_frm.Field[2].AsString+')';
      end;
    end;
  finally
    FreeAndNil(dlg_MtlrsList_frm);
  end;
end;

procedure TUI_PUMLIST_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  IF (Sender as TsButton).Tag = 0 Then
  begin
    ClearPanel(sPanel4);
    msk_REG_DT.Text := FormatDateTime('YYYYMMDD', now);
    com_BSE.ItemIndex := 0;
    com_cosmetic.ItemIndex := 0;
    com_DMF.ItemIndex := 0;
    com_BGMP.ItemIndex := 0;

    edt_GOODS_CODE.OnEnter := edt_GOODS_CODEEnter;
    edt_GOODS_CODE.OnExit := edt_GOODS_CODEExit;

    FWorkType := wtIns;
    edt_GOODS_CODE.Enabled := True;
    edt_GOODS_CODE.Text := ConfigData.SAUP_NO;
    edt_GOODS_CODE.SetFocus;
  end
  else
  IF (Sender as TsButton).Tag = 1 Then
  begin
    edt_GOODS_CODE.OnEnter := nil;
    edt_GOODS_CODE.OnExit := nil;

    FWorkType := wtEdit;
    edt_GOODS_CODE.Enabled := False;
    edt_OLD_GOODS_CODE.SetFocus;
  end
  else
  IF (Sender as TsButton).Tag = 2 Then
  begin
    IF MessageBox(Self.Handle, '현재 선택한 데이터를 복사하시겠습니까?', '복사확인', MB_OKCANCEL+MB_ICONQUESTION) = ID_CANCEL Then Exit;
    msk_REG_DT.Text := FormatDateTime('YYYYMMDD', now);

    edt_GOODS_CODE.OnEnter := edt_GOODS_CODEEnter;
    edt_GOODS_CODE.OnExit := edt_GOODS_CODEExit;

    FWorkType := wtIns;
    edt_GOODS_CODE.Clear;
    edt_GOODS_CODE.Enabled := True;
    edt_GOODS_CODE.SetFocus;
  end;

  ReadOnlyPanel(sPanel4);  
  sPanel32.Visible := FWorkType = wtIns; 
  sDBGrid1.Enabled := FWorkType = wtView;
  ButtonEnable;
end;

procedure TUI_PUMLIST_frm.edt_GOODS_CODEEnter(Sender: TObject);
begin
  inherited;
  If FWorkType = wtView Then
  begin
    edt_GOODS_CODEExit(Sender);
  end
  else
  begin
    IF Sender is TsEdit Then (Sender as TsEdit).Color := clYellow;
    IF Sender is TsMaskEdit Then (Sender as TsMaskEdit).Color := clYellow;
  end;
end;

procedure TUI_PUMLIST_frm.edt_GOODS_CODEExit(Sender: TObject);
var
  TMP_STR : String;
begin
  inherited;
  IF Sender is TsEdit Then
  begin
    (Sender as TsEdit).Color := clWhite;
    IF Trim((Sender as TsEdit).Text) = '' Then
    begin
      case (Sender as TsEdit).Tag of
        100: edt_WITAK_NATNM.Clear;
        101: edt_TAKE_NATNM.Clear;
        102: edt_OriginNM.Clear;
        103: edt_BSEORIGIN_NM.Clear;
      end;
    end;

    if (Sender as TsEdit).Tag = 104 then
    begin
      TMP_STR := UpperCase( MidStr(edt_GOODS_CODE.Text, 11, 3) );
      IF AnsiMatchText(TMP_STR,['1AG','1BG','1AR']) Then
      begin
        memo_Ingredient.Clear;
        memo_Ingredient.Text := '별지첨부(문서번호 : '+(Sender as TsEdit).Text+')';
      end;
    end;

  end;
  IF Sender is TsMaskEdit Then (Sender as TsMaskEdit).Color := clWhite;

end;

procedure TUI_PUMLIST_frm.sButton7Click(Sender: TObject);
var
  SC : TSQLCreate;
  KEYY : integer;
begin
  inherited;
//------------------------------------------------------------------------------
// 해당품목이 이미 있다면
//------------------------------------------------------------------------------
  IF (FWorkType = wtIns) AND ((Sender as TsButton).Tag = 1) Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'SELECT PID, [GOODS_CODE] FROM PUMLIST WHERE GOODS_CODE = '+QuotedStr(edt_GOODS_CODE.Text);
        Open;

        IF RecordCount > 0 Then
        begin
          MessageBox(Self.Handle, PChar('중복되는 품목코드가 존재합니다'#13#10+FieldByName('GOODS_CODE').AsString), '저장오류', MB_OK+MB_ICONERROR);
          Exit;
        end;
      finally
        Close;
        Free;
      end;
    end;
  end;

  IF (Sender as TsButton).Tag = 1 Then
  begin
    SC := TSQLCreate.Create;
    try
      try
        Case FWorkType of
          wtIns :
          begin
            KEYY := getMAXPID;
            SC.DMLType := dmlInsert;
            SC.ADDValue('PID', KEYY);
            SC.ADDValue('REG_DT', FormatDateTime('YYYYMMDD', Now));
            SC.ADDValue('REG_ID', LoginData.sID);
            SC.ADDValue('LST_DT', FormatDateTime('YYYYMMDD', Now));
            SC.ADDValue('LST_ID', LoginData.sID);
          end;

          wtEdit:
          begin
            KEYY := qryListPID.asinteger;
            SC.DMLType := dmlUpdate;
            SC.ADDWhere('PID', KEYY);
            SC.ADDValue('LST_DT', FormatDateTime('YYYYMMDD', Now));
            SC.ADDValue('LST_ID', LoginData.sID);
          end;
        end;

        SC.SQLHeader('PUMLIST');
        SC.ADDValue('GOODS_CODE', edt_GOODS_CODE.Text);
        SC.ADDValue('OLD_GOOD_CODE', edt_OLD_GOODS_CODE.Text);
        SC.ADDValue('HSCD', edt_HSCD.Text);
        SC.ADDValue('TRADE_NAME', memo_TradeName.Text);
        SC.ADDValue('MODEL_SIZE', memo_ModelSize.Text);
        SC.ADDValue('MODEL_SIZE_INGREDIENT', memo_Ingredient.Text);
        SC.ADDValue('ORIGIN_NATION_CODE', edt_Origin.Text);
        SC.ADDValue('ORIGIN_NATION_NAME', edt_OriginNM.Text);
        SC.ADDValue('BSE_CODE', getCodefromCombobox(com_BSE));
        SC.ADDValue('BSE_ORIGIN_NATION_CODE', edt_BSEORIGIN.Text);
        SC.ADDValue('BSE_ORIGIN_NATION_NAME', edt_BSEORIGIN_NM.Text);
        SC.ADDValue('ORIGIN_MATTER', edt_originmatter.Text);
        SC.ADDValue('EXTRACTION', edt_Extractor.Text);
        SC.ADDValue('BATCH_NO', edt_BatchNo.Text);
        SC.ADDValue('COSMETIC_GUBUN', getCodefromCombobox(com_cosmetic));
        SC.ADDValue('DMF', getCodefromCombobox(com_DMF));
        SC.ADDValue('BGMP', getCodefromCombobox(com_BGMP));
        SC.ADDValue('PERMIT_SINGO_NO', edt_PERMIT_SINGO_NO.Text);
        SC.ADDValue('PERMIT_SINGO_DATE', msk_PERMIT_SINGO_DATE.Text);
        SC.ADDValue('DRUG_STANDARD_CODE', edt_DrugStandardCode.Text);
        SC.ADDValue('WITAK_SANGHO1', edt_WITAKSANGHO1.Text);
        SC.ADDValue('WITAK_SANGHO2', edt_WITAKSANGHO2.Text);
        SC.ADDValue('WITAK_SANGHO3', edt_WITAKSANGHO3.Text);
        SC.ADDValue('WITAK_ADDR1', edt_WITAKADDR1.Text);
        SC.ADDValue('WITAK_ADDR2', edt_WITAKADDR2.Text);
        SC.ADDValue('WITAK_ADDR3', edt_WITAKADDR3.Text);
        SC.ADDValue('WITAK_NATION_CODE', edt_WITAK_NATCD.Text);
        SC.ADDValue('WITAK_NATION_NAME', edt_WITAK_NATNM.Text);
        SC.ADDValue('TAKE_NATION_CODE', edt_TAKE_NATCD.Text);
        SC.ADDValue('TAKE_NATION_NAME', edt_TAKE_NATNM.Text);
        SC.ADDValue('TAKE_SANGHO1', edt_TAKESANGHO1.Text);
        SC.ADDValue('TAKE_SANGHO2', edt_TAKESANGHO2.Text);
        SC.ADDValue('TAKE_SANGHO3', edt_TAKESANGHO3.Text);
        SC.ADDValue('TAKE_ADDR1', edt_TAKEADDR1.Text);
        SC.ADDValue('TAKE_ADDR2', edt_TAKEADDR2.Text);
        SC.ADDValue('TAKE_ADDR3', edt_TAKEADDR3.Text);

        with TADOQuery.Create(nil) do
        begin
          try
            Connection := DataModule_Conn.KisConn;
            SQL.Text := SC.CreateSQL;
            ExecSQL;
          finally
            Close;
            Free;
          end;
        end;
      except
        on E:Exception do
        begin
          ShowMessage(E.Message);
        end;
      end;
    finally
      SC.Free;
    end;
  end
  else
  IF (Sender as TsButton).Tag = 0 Then
    KEYY := qryListPID.AsInteger;

  FWorkType := wtView;
  sDBGrid1.Enabled := FWorkType = wtView;
  ReadOnlyPanel(sPanel4, True);
  ButtonEnable;

  sPanel32.Visible := False;
  edt_GOODS_CODE.Enabled := True;
  
  qryList.Close;
  qryList.Open;
  qrylist.Locate('PID', KEYY, []);

end;

procedure TUI_PUMLIST_frm.ButtonEnable;
begin
  sButton3.Enabled := FWorkType = wtView;
  sButton4.Enabled := sButton3.Enabled;
  sButton5.Enabled := sButton3.Enabled;
  sButton14.Enabled := sButton3.Enabled;
  sButton8.Enabled := not sButton3.Enabled;
  sButton7.Enabled := not sButton3.Enabled;
end;

procedure TUI_PUMLIST_frm.sButton9Click(Sender: TObject);
begin
  inherited;
  IF FWorkType = wtView Then Exit;

  Dialog_SearchHS_frm := TDialog_SearchHS_frm.Create(Self);
  try
    IF Dialog_SearchHS_frm.RunDialog(edt_HSCD.Text) = mrOK Then
    begin
      edt_HSCD.Text := Dialog_SearchHS_frm.FieldNM('HS_CODE').AsString;
      memo_TradeName.Text := Dialog_SearchHS_frm.FieldNM('HS_NAME_ENG').AsString;
    end;
  finally
    FreeAndNil(Dialog_SearchHS_frm);
  end;
end;

procedure TUI_PUMLIST_frm.edt_WITAK_NATCDDblClick(Sender: TObject);
var
  CodeRecord : TCodeRecord;
begin
  inherited;
  IF FWorkType = wtView Then Exit;

  Dialog_CodeParent_frm := TDialog_CodeParent_frm.Create(Self);
  try
    CodeRecord := Dialog_CodeParent_frm.OpenDialog((Sender as TsEdit).Hint,(Sender as TsEdit).Text);
    if CodeRecord.sChanged Then
    begin
      (Sender as TsEdit).Text := CodeRecord.sCode;
       Case (Sender as TsEdit).Tag of
         100: edt_WITAK_NATNM.Text := CodeRecord.sContents2;
         101: edt_TAKE_NATNM.Text := CodeRecord.sContents2;
         102: edt_OriginNM.Text := CodeRecord.sContents2;
         103: edt_BSEORIGIN_NM.Text := CodeRecord.sContents2;
       end;
    end;
  finally
    FreeAndNil(Dialog_CodeParent_frm);
  end;
end;

procedure TUI_PUMLIST_frm.sButton10Click(Sender: TObject);
begin
  inherited;
  case (Sender as TsButton).Tag of
    100: edt_WITAK_NATCDDblClick(edt_WITAK_NATCD);
    101: edt_WITAK_NATCDDblClick(edt_TAKE_NATCD);
    102: edt_WITAK_NATCDDblClick(edt_Origin);
    103: edt_WITAK_NATCDDblClick(edt_BSEORIGIN);
  end;
end;

procedure TUI_PUMLIST_frm.com_BSESelect(Sender: TObject);
begin
  inherited;
  edt_originmatter.Enabled := com_BSE.ItemIndex > 0;
  edt_BatchNo.Enabled := edt_originmatter.Enabled;
  edt_Extractor.Enabled := edt_originmatter.Enabled;
end;

function TUI_PUMLIST_frm.getMAXPID: integer;
begin
  Result := 1; 
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT ISNULL(MAX(PID),0) as MAXPID FROM PUMLIST';
      Open;

      Result := FieldByName('MAXPID').AsInteger+1;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_PUMLIST_frm.sEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN Then ReadList;
end;

procedure TUI_PUMLIST_frm.sButton5Click(Sender: TObject);
var
  nIDX : integer;
begin
  inherited;
  IF MessageBox(Self.Handle, PChar(MSG_DELETE_SELECTED_DATA+#13#10'['+qryListPID.AsString+'] '+qryListGOODS_CODE.AsString), '데이터 삭제 확인', MB_OK+MB_ICONQUESTION) = ID_CANCEL Then Exit;

  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM PUMLIST WHERE PID = '+IntToStr(qryListPID.AsInteger);
      ExecSQL;

      nIDX := qryList.RecNo;
      qryList.Close;
      qryList.Open;

      IF qryList.RecordCount > 1 Then
        qryList.MoveBy(nIDX-1);

    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_PUMLIST_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_PUMLIST_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_PUMLIST_frm := nil;
end;

procedure TUI_PUMLIST_frm.edt_GOODS_CODEChange(Sender: TObject);
var
  TMP_STR : string;
begin
  inherited;
  TMP_STR := UpperCase( MidStr(edt_GOODS_CODE.Text, 11, 3) );
  IF TMP_STR  = '1AB' Then
    sPanel27.Caption := '의약품표준코드'
  else
  IF AnsiMatchText(TMP_STR,['1AG','1BG','1AR']) Then
    sPanel27.Caption := '원료목록코드'
  else
  IF AnsiMatchText(TMP_STR,['1AA','1AN','1AP']) Then
    sPanel27.Caption := '식약청기준코드'
  else
    sPanel27.Caption := '표준코드';
end;

end.
