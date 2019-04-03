unit UI_KPTA_DocNormal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, ExtCtrls, sPanel, sSplitter,
  StdCtrls, sLabel, Buttons, sSpeedButton, sComboBox, Mask, sMaskEdit,
  sEdit, sButton, sCustomComboEdit, sCurrEdit, sCurrencyEdit, sCheckBox,
  sMemo, sScrollBox, ComCtrls, sPageControl, Grids, DBGrids, acDBGrid, StrUtils,
  DB, ADODB, pngimage, sBevel;

type
  TUI_KPTA_DocNormal_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sSplitter1: TsSplitter;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sPanel6: TsPanel;
    sTabSheet2: TsTabSheet;
    sScrollBox1: TsScrollBox;
    sPanel42: TsPanel;
    sDBGrid1: TsDBGrid;
    sPanel44: TsPanel;
    sPanel46: TsPanel;
    edt_Hs: TsMaskEdit;
    sPanel47: TsPanel;
    edt_pumSerialBuho: TsEdit;
    sPanel48: TsPanel;
    edt_pum1: TsEdit;
    edt_pum2: TsEdit;
    edt_pum3: TsEdit;
    edt_pum4: TsEdit;
    edt_pum5: TsEdit;
    sPanel49: TsPanel;
    edt_old_pum1: TsEdit;
    edt_old_pum2: TsEdit;
    edt_old_pum3: TsEdit;
    edt_old_pum4: TsEdit;
    edt_old_pum5: TsEdit;
    sCheckBox2: TsCheckBox;
    sPanel50: TsPanel;
    sEdit51: TsEdit;
    sPanel51: TsPanel;
    sComboBox6: TsComboBox;
    sPanel52: TsPanel;
    sComboBox7: TsComboBox;
    sPanel53: TsPanel;
    sComboBox8: TsComboBox;
    sPanel54: TsPanel;
    sMemo2: TsMemo;
    sPanel55: TsPanel;
    sMemo3: TsMemo;
    sPanel56: TsPanel;
    sMemo4: TsMemo;
    sPanel57: TsPanel;
    sEdit52: TsEdit;
    sPanel37: TsPanel;
    sCurrencyEdit3: TsCurrencyEdit;
    sEdit36: TsEdit;
    sSpeedButton10: TsSpeedButton;
    sPanel38: TsPanel;
    sCurrencyEdit4: TsCurrencyEdit;
    sPanel39: TsPanel;
    sCurrencyEdit5: TsCurrencyEdit;
    sEdit37: TsEdit;
    sEdit38: TsEdit;
    sPanel40: TsPanel;
    sEdit39: TsEdit;
    sPanel41: TsPanel;
    sMaskEdit4: TsMaskEdit;
    sSpeedButton11: TsSpeedButton;
    sPanel66: TsPanel;
    sComboBox4: TsComboBox;
    sPanel67: TsPanel;
    sEdit59: TsEdit;
    sSpeedButton12: TsSpeedButton;
    sEdit60: TsEdit;
    sPanel68: TsPanel;
    sEdit61: TsEdit;
    sPanel69: TsPanel;
    sEdit62: TsEdit;
    sButton9: TsButton;
    sButton10: TsButton;
    sPanel19: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sPanel7: TsPanel;
    edt_jejegubun: TsEdit;
    sEdit5: TsEdit;
    sPanel8: TsPanel;
    sComboBox2: TsComboBox;
    sPanel81: TsPanel;
    sPanel82: TsPanel;
    sMemo5: TsMemo;
    sPanel83: TsPanel;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sPanel10: TsPanel;
    sMaskEdit2: TsMaskEdit;
    sPanel11: TsPanel;
    sEdit6: TsEdit;
    sPanel12: TsPanel;
    sEdit7: TsEdit;
    sPanel13: TsPanel;
    sEdit8: TsEdit;
    sPanel14: TsPanel;
    sEdit9: TsEdit;
    sEdit10: TsEdit;
    sEdit11: TsEdit;
    sPanel15: TsPanel;
    sLabel3: TsLabel;
    sCheckBox1: TsCheckBox;
    sPanel16: TsPanel;
    sMaskEdit3: TsMaskEdit;
    sPanel17: TsPanel;
    sEdit12: TsEdit;
    sPanel18: TsPanel;
    sEdit13: TsEdit;
    sPanel20: TsPanel;
    sEdit15: TsEdit;
    sEdit16: TsEdit;
    sEdit17: TsEdit;
    sPanel9: TsPanel;
    sLabel2: TsLabel;
    sPanel21: TsPanel;
    sLabel4: TsLabel;
    sPanel23: TsPanel;
    sEdit18: TsEdit;
    sPanel26: TsPanel;
    sEdit23: TsEdit;
    sPanel22: TsPanel;
    sEdit19: TsEdit;
    sEdit20: TsEdit;
    sPanel24: TsPanel;
    sLabel5: TsLabel;
    sPanel25: TsPanel;
    sEdit21: TsEdit;
    sEdit22: TsEdit;
    sPanel27: TsPanel;
    sEdit24: TsEdit;
    sEdit25: TsEdit;
    sPanel28: TsPanel;
    sCurrencyEdit1: TsCurrencyEdit;
    sPanel29: TsPanel;
    sEdit26: TsEdit;
    sEdit27: TsEdit;
    sPanel30: TsPanel;
    sEdit28: TsEdit;
    sEdit29: TsEdit;
    sPanel31: TsPanel;
    sEdit30: TsEdit;
    sEdit31: TsEdit;
    sPanel32: TsPanel;
    sCurrencyEdit2: TsCurrencyEdit;
    sPanel33: TsPanel;
    sEdit32: TsEdit;
    sPanel34: TsPanel;
    sEdit33: TsEdit;
    sEdit34: TsEdit;
    sPanel35: TsPanel;
    sComboBox3: TsComboBox;
    sPanel36: TsPanel;
    sMemo1: TsMemo;
    sPanel3: TsPanel;
    edt_DocNo1: TsEdit;
    edt_DocNo2: TsEdit;
    edt_DocNo3: TsEdit;
    sPanel4: TsPanel;
    edt_RequestDate: TsMaskEdit;
    sPanel5: TsPanel;
    sComboBox1: TsComboBox;
    sPanel72: TsPanel;
    sPageControl2: TsPageControl;
    sTabSheet3: TsTabSheet;
    sSpeedButton9: TsSpeedButton;
    sPanel2: TsPanel;
    sEdit14: TsEdit;
    sEdit35: TsEdit;
    sPanel58: TsPanel;
    sEdit40: TsEdit;
    sPanel59: TsPanel;
    sPanel60: TsPanel;
    sEdit41: TsEdit;
    sPanel61: TsPanel;
    sEdit42: TsEdit;
    sPanel62: TsPanel;
    sEdit43: TsEdit;
    sPanel63: TsPanel;
    sPanel64: TsPanel;
    sEdit44: TsEdit;
    sPanel65: TsPanel;
    sEdit45: TsEdit;
    sTabSheet4: TsTabSheet;
    sSplitter2: TsSplitter;
    sPanel73: TsPanel;
    sSpeedButton14: TsSpeedButton;
    sPanel74: TsPanel;
    sEdit46: TsEdit;
    sEdit47: TsEdit;
    sPanel75: TsPanel;
    sEdit48: TsEdit;
    sPanel76: TsPanel;
    sPanel77: TsPanel;
    sEdit49: TsEdit;
    sPanel78: TsPanel;
    sEdit50: TsEdit;
    sPanel79: TsPanel;
    sPanel80: TsPanel;
    sEdit53: TsEdit;
    sEdit54: TsEdit;
    sPanel84: TsPanel;
    sPanel85: TsPanel;
    sEdit55: TsEdit;
    sButton12: TsButton;
    sButton13: TsButton;
    sButton14: TsButton;
    sPanel70: TsPanel;
    sEdit63: TsEdit;
    sPanel71: TsPanel;
    sEdit64: TsEdit;
    sEdit65: TsEdit;
    sSpeedButton13: TsSpeedButton;
    sSpeedButton15: TsSpeedButton;
    sPanel86: TsPanel;
    sCurrencyEdit6: TsCurrencyEdit;
    sDBGrid2: TsDBGrid;
    sSpeedButton16: TsSpeedButton;
    sSpeedButton17: TsSpeedButton;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sPanel87: TsPanel;
    sEdit3: TsEdit;
    sButton15: TsButton;
    sButton16: TsButton;
    sSpeedButton18: TsSpeedButton;
    sLabel7: TsLabel;
    lab_DiffUser: TsLabel;
    sEdit4: TsEdit;
    sSpeedButton19: TsSpeedButton;
    sPanel45: TsPanel;
    sLabel6: TsLabel;
    sPanel43: TsPanel;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton6: TsButton;
    sButton7: TsButton;
    sButton8: TsButton;
    sSpeedButton20: TsSpeedButton;
    procedure edt_jejegubunChange(Sender: TObject);
    procedure edt_jejegubunKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_jejegubunDblClick(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sComboBox1Select(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sComboBox4Select(Sender: TObject);
    procedure edt_pum3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_pum1Enter(Sender: TObject);
    procedure edt_pum1Exit(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sSpeedButton11Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure sButton15Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sSpeedButton15Click(Sender: TObject);
    procedure edt_HsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton5Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure edt_pum1Change(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sPageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure sTabSheet2Show(Sender: TObject);
    procedure sDBGrid2ScrollData(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure sButton14Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sTabSheet1Show(Sender: TObject);
    procedure sSpeedButton16Click(Sender: TObject);
    procedure sDBGrid1ScrollData(Sender: TObject);
    procedure sEdit34Exit(Sender: TObject);
    procedure sSpeedButton17Click(Sender: TObject);
    procedure sSpeedButton19Click(Sender: TObject);
  private
    { Private declarations }
    FAutoCalc : Boolean;
    FDocNo : string;
    FBeforeColor : TColor;
    FCaption : string;
    FCancel : Boolean;
    procedure ChangeControlByTag(nTag : Integer);
    procedure EnabledControl(var uControl : TsEdit; value : Boolean=True); overload;
    procedure EnabledControl(var uControl : TsMaskEdit;value : Boolean=True); overload;
    procedure ClearControl(OwnerPanel : TsPanel); overload;
    procedure ClearControl(OwnerPanel : TsTabSheet); overload;
    procedure ReadOnlyControl(OwnerPanel : TsPanel;Value : Boolean = false); overload;
    procedure ReadOnlyControl(OwnerPanel : TsTabSheet;Value : Boolean = false); overload;
    procedure NewGoods;
    procedure SaveGoods;
    procedure NewTaken;
    function CheckErrorDocument:Boolean;
    procedure ReadStandard2;
    procedure ReadTaken;
    procedure DeleteMake;
    procedure DeleteCheck;
    function  TotalAMT:Currency;
  public
    { Public declarations }
    function NewDocument:TModalResult;
    function EditDocument:TModalResult;
    function CancelDocument:TModalResult;
    function ViewDocument:TModalResult;
    function CopyDocument(BaseDocNo : string):TModalResult;
    property DocNo:String  read FDocNo;
  end;

var
  UI_KPTA_DocNormal_frm: TUI_KPTA_DocNormal_frm;

implementation

uses dmIcon, dmConn, Dialog_CodeParent, DBTables, CommonVar, CommonDef,
  CommonLib, KISCalendar, Dialog_SearchHS, CommonMSG, DIalog_Make,
  Dialog_Check, UI_CompanyModal, UI_Company, UI_PUMLISTMODAL, UI_PUMLIST, dlg_MtlrsList, dialog_PUMLIST;

{$R *.dfm}

procedure TUI_KPTA_DocNormal_frm.edt_jejegubunChange(Sender: TObject);
begin
  inherited;
  IF (not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit])) AND (sPageControl1.ActivePageIndex = 1) Then Exit;

  IF ((Sender as TsEdit).Tag = 208) AND (DataModule_Conn.qryTaken.State = dsBrowse) Then Exit;

  IF (Sender as TsEdit).MaxLength >= Length((Sender as TsEdit).Text)-1 then
  begin
    Dialog_CodeParent_frm := TDialog_CodeParent_frm.Create(Self);
    try
      CodeRecord := DataModule_Conn.getCodeContents((Sender as TsEdit).Hint,(Sender as TsEdit).Text);
      Case (Sender as TsEdit).Tag of
        100 : sEdit5.Text := CodeRecord.sContents;
        101 : sEdit20.Text := CodeRecord.sContents2;
        102 : sEdit22.Text := CodeRecord.sContents;
        103 : begin
                sEdit31.Text := CodeRecord.sContents;
                sEdit37.Text := (Sender as TsEdit).Text;
                sEdit38.Text := CodeRecord.sContents;
              end;
        104 : sEdit25.Text := CodeRecord.sContents;
        105 : sEdit27.Text := CodeRecord.sContents;
        106 : sEdit34.Text := CodeRecord.sContents;
        107 : sEdit29.Text := CodeRecord.sContents;
        201 :;
        202 :;
        203 : sEdit2.Text  := CodeRecord.sContents;
        204 :;
        205 : sEdit60.Text := CodeRecord.sContents2;
        206 : sEdit65.Text := CodeRecord.sContents2;
        207 : sEdit35.Text := CodeRecord.sContents2;
        208 : sEdit47.Text := CodeRecord.sContents2;
      end;

      If sEdit33.Text = '99' Then
      begin
        sEdit4.Visible := true;
        If Trim(sEdit4.Text) = '' Then
          sEdit4.Text := '자사';  
      end
      else
      begin
        sEdit4.Visible := False;
        sEdit4.Clear;
      end;

    finally
      FreeAndNil(Dialog_CodeParent_frm);
    end;
  end;

  ChangeControlByTag((Sender as TsEdit).Tag)

end;

procedure TUI_KPTA_DocNormal_frm.edt_jejegubunKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit])) AND (sPageControl1.ActivePageIndex = 1) Then Exit;

  IF ((Sender as TsEdit).Tag = 208) AND (DataModule_Conn.qryTaken.State = dsBrowse) Then Exit;

  IF Key = KIS_HELP_KEY Then
  begin
    Dialog_CodeParent_frm := TDialog_CodeParent_frm.Create(Self);
    try
      CodeRecord := Dialog_CodeParent_frm.OpenDialog((Sender as TsEdit).Hint,(Sender as TsEdit).Text);
      if CodeRecord.sChanged Then
      begin
        (Sender as TsEdit).Text := CodeRecord.sCode;
         Case (Sender as TsEdit).Tag of
           100 : sEdit5.Text  := CodeRecord.sContents;
           101 : sEdit20.Text := CodeRecord.sContents;
           102 : sEdit22.Text := CodeRecord.sContents;
           103 : sEdit31.Text := CodeRecord.sContents;
           104 : sEdit25.Text := CodeRecord.sContents;
           105 : sEdit27.Text := CodeRecord.sContents;
           106 : sEdit34.Text := CodeRecord.sContents;
           107 : sEdit29.Text := CodeRecord.sContents;
           205 : sEdit60.Text := CodeRecord.sContents;
           206 : sEdit65.Text := CodeRecord.sContents;
           207 : sEdit35.Text := CodeRecord.sContents;
           208 : sEdit47.Text := CodeRecord.sContents;           
         end;
      end;
    finally
      FreeAndNil(Dialog_CodeParent_frm);
    end;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.edt_jejegubunDblClick(Sender: TObject);
begin
  inherited;
  IF (not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit])) AND (sPageControl1.ActivePageIndex = 1) Then Exit;

  IF ((Sender as TsEdit).Tag = 208) AND (DataModule_Conn.qryTaken.State = dsBrowse) Then Exit;
  
//  IF (DataModule_Conn.qryTaken.State = dsBrowse) Then Exit;

  Dialog_CodeParent_frm := TDialog_CodeParent_frm.Create(Self);
  try
    CodeRecord := Dialog_CodeParent_frm.OpenDialog((Sender as TsEdit).Hint,(Sender as TsEdit).Text);
    if CodeRecord.sChanged Then
    begin
      (Sender as TsEdit).Text := CodeRecord.sCode;
       Case (Sender as TsEdit).Tag of
         100 : sEdit5.Text := CodeRecord.sContents;
         101 : sEdit20.Text := CodeRecord.sContents2;
         102 : sEdit22.Text := CodeRecord.sContents;
         103 : sEdit31.Text := CodeRecord.sContents;
         104 : sEdit25.Text := CodeRecord.sContents;
         105 : sEdit27.Text := CodeRecord.sContents;
         106 : sEdit34.Text := CodeRecord.sContents;
         107 : sEdit29.Text := CodeRecord.sContents;
         201 : ;
         202 : ;
         203 : sEdit2.Text  := CodeRecord.sContents;
         204 : ;
         205 : sEdit60.Text := CodeRecord.sContents2;
         206 : sEdit65.Text := CodeRecord.sContents2;
         207 : sEdit35.Text := CodeRecord.sContents2;
         208 : sEdit47.Text := CodeRecord.sContents2;
       end;
    end;
  finally
    FreeAndNil(Dialog_CodeParent_frm);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sSpeedButton1Click(Sender: TObject);
begin
  inherited;
  Case (sender as TsSpeedButton).Tag of
    100 : edt_jejegubunDblClick(edt_jejegubun);
    101 : edt_jejegubunDblClick(sEdit19);
    102 : edt_jejegubunDblClick(sEdit21);
    103 : edt_jejegubunDblClick(sEdit30);
    104 : edt_jejegubunDblClick(sEdit24);
    105 : edt_jejegubunDblClick(sEdit26);
    106 : edt_jejegubunDblClick(sEdit33);
    107 : edt_jejegubunDblClick(sEdit28);
    201 : ;
    202 : ;
    203 : edt_jejegubunDblClick(sEdit36);
    204 : ;
    205 : edt_jejegubunDblClick(sEdit59);
    206 : edt_jejegubunDblClick(sEdit64);
    207 : edt_jejegubunDblClick(sEdit14);
    208 : edt_jejegubunDblClick(sEdit46);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.FormShow(Sender: TObject);
begin
  inherited;
  Self.Caption := FCaption;

  sPageControl2.ActivePageIndex := 0;

  edt_jejegubun.SetFocus;

  sButton7.Enabled := False;
  sButton8.Enabled := False;
  sButton12.Enabled := False;
  sButton13.Enabled := False;
  sButton14.Enabled := False;

  ReadOnlyControl(sPanel44,True);
  ReadOnlyControl(stabSheet3,True);
  ReadOnlyControl(sPanel73,True);


  //다른유저가 들어올시 수정불가
  If DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString = '' Then
    DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString := LoginData.sID;

  sButton1.Visible := DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString = LoginData.sID;
  sButton2.Visible := DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString = LoginData.sID;
  lab_DiffUser.Caption := DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString + MSG_DIFF_USER_NO_EDIT + MSG_NOT_EDIT;
  lab_DiffUser.Visible := DataModule_Conn.qryStandard1.FieldByName('WriteUserID').AsString <> LoginData.sID;

//------------------------------------------------------------------------------
// 접수일경우에도 수정불가
//------------------------------------------------------------------------------
//  sButton1.Visible := sButton1.Visible AND (not AnsiMatchText(DataModule_Conn.qryStandard1.FieldByName('isRECV').AsString ,['접수','승인']));
  IF FCancel Then
    sButton1.Visible := True
  else
    sButton1.Visible := sButton1.Visible AND (not AnsiMatchText(DataModule_Conn.qryStandard1.FieldByName('isRECV').AsString ,['접수','서류제출','승인']));

  sButton2.Visible := sButton1.Visible AND (FCancel = False);

  sPanel43.Visible := sButton1.Visible;
//  sButton4.Visible := sButton1.Visible;
//  sButton5.Visible := sButton1.Visible;
//  sButton6.Visible := sButton1.Visible;
//  sButton7.Visible := sButton1.Visible;
//  sButton8.Visible := sButton1.Visible;

  case sButton1.Visible of
    True : sButton3.Caption := '취소';
    False : sButton3.Caption := '닫기';
  end;

end;

procedure TUI_KPTA_DocNormal_frm.ChangeControlByTag(nTag: Integer);
begin
//------------------------------------------------------------------------------
// 제재구분에 따른 컨트롤 변경
//------------------------------------------------------------------------------
  IF nTag = 100 Then
  begin
    IF Length(edt_jejegubun.Text) = 3 Then
    begin
      //------------------------------------------------------------------------
      //품목코드 2번째 칸
      //------------------------------------------------------------------------
      edt_pum2.Text := edt_jejegubun.Text;

      //------------------------------------------------------------------------------
      // Panel13캡션 변경
      //------------------------------------------------------------------------------
      Case AnsiIndexText(edt_jejegubun.Text,['1AA','1AB','1AS','1AC','1AH','1AN','1AO','1CA','1CB','1AG','1AR','1BG']) of
        0..2 : sPanel13.Caption := '수입업신고번호';
        3..8 : sPanel13.Caption := '허가(등록)번호';
        9..11 : sPanel13.Caption := '수입화주의 제조판매업등록번호';
      end;

      IF edt_jejegubun.Text = '1AB' Then
      begin
//        sPanel13.Caption := '허가(등록)번호';
        //----------------------------------------------------------------------
        // 표준코드
        //----------------------------------------------------------------------
        sPanel57.Caption := '의약품표준코드';
      end
      else
      IF AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']) Then
      begin
        //----------------------------------------------------------------------
        //허가(등록)번호 <-> 수입화주의 제조판매업등록번호
        //----------------------------------------------------------------------
//        sPanel13.Caption := '수입화주의 제조판매업등록번호';

        //----------------------------------------------------------------------
        // 표준코드
        //----------------------------------------------------------------------
        sPanel57.Caption := '원료목록코드';
      end
      else
      IF AnsiMatchText(edt_jejegubun.Text,['1AA','1AN','1AP']) Then
      begin
//        sPanel13.Caption := '허가(등록)번호';
        //----------------------------------------------------------------------
        // 표준코드
        //----------------------------------------------------------------------
        sPanel57.Caption := '식약청기준코드';
      end
      else
      begin
        sPanel57.Caption := '표준코드';
      end;

      sCheckBox2.Enabled := AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']);
      //----------------------------------------------------------------------
      EnabledControl(edt_old_pum1,AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']));
      EnabledControl(edt_old_pum2,AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']));
      EnabledControl(edt_old_pum3,AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']));
      EnabledControl(edt_old_pum4,AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']));
      EnabledControl(edt_old_pum5,AnsiMatchText(edt_jejegubun.Text,['1AG','1BG','1AR']));
      //----------------------------------------------------------------------




    end;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sComboBox1Select(Sender: TObject);
begin
  inherited;
  IF (not DataModule_Conn.qryStandard1.FieldByName('isFirstSend').AsBoolean) AND ((Sender as TsComboBox).ItemIndex = 0) and (Self.Tag = 0) Then
  begin
    MessageBox(Self.Handle,PChar(MSG_NOT_CHANGE_SEND_TYPE_RESEND),'전송구분 변경불가',MB_OK+MB_ICONINFORMATION);
    (Sender as TsComboBox).ItemIndex := 1;
    Exit;
  end;

  If sCombobox1.ItemIndex = 2 Then
  begin
    sPanel81.Visible := True;
    sPanel81.Top := 52;
  end
  else
    sPanel81.Visible := False;
end;

procedure TUI_KPTA_DocNormal_frm.sCheckBox1Click(Sender: TObject);
begin
  inherited;
//------------------------------------------------------------------------------
// 수입자와 동일할 경우 데이터 복사
//------------------------------------------------------------------------------
  IF sCheckBox1.Checked Then
  begin
    sMaskEdit3.Text := sMaskEdit2.Text;
    sEdit12.Text := sEdit6.Text;
    sEdit13.Text := sEdit7.Text;
    sEdit15.Text := sEdit9.Text;
    sEdit16.Text := sEdit10.Text;
    sEdit17.Text := sEdit11.Text;

    edt_pum1.Text := sMaskEdit2.Text;
    edt_pum1.Color := clBtnFace;
    edt_pum1.ReadOnly := true;

  end
  else
  begin
    sMaskEdit3.Clear;
    sEdit12.Clear;
    sEdit13.Clear;
    sEdit15.Clear;
    sEdit16.Clear;
    sEdit17.Clear;

    edt_pum1.Clear;
    edt_pum1.Color := clWhite;
    edt_pum1.ReadOnly := false;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.EnabledControl(var uControl: TsEdit;
  value: Boolean);
begin
  uControl.ReadOnly := not value;
  If value Then
  begin
    uControl.Color := clWhite;
    uControl.Cursor := crIBeam;
  end
  else
  begin
    uControl.Color := clBtnFace;
    uControl.Cursor := crNo;
    uControl.Clear;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.EnabledControl(var uControl: TsMaskEdit;
  value: Boolean);
begin
  uControl.ReadOnly := not value;
  If value Then
    uControl.Color := clWhite
  else
  begin
    uControl.Color := clBtnFace;
    uControl.Cursor := crNo;    
    uControl.Clear;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sComboBox4Select(Sender: TObject);
var
  KIS_FontStyle : TFontStyles;
begin
  inherited;
//  EnabledControl(sEdit60,sCombobox4.itemindex = 1);
  EnabledControl(sEdit61,sCombobox4.itemindex = 1);
  EnabledControl(sEdit62,sCombobox4.itemindex = 1);
  EnabledControl(sEdit63,sCombobox4.itemindex = 1);

  IF sComboBox4.ItemIndex = 1 Then
    KIS_FontStyle := [fsbold,fsunderline]
  else
    KIS_FontStyle := [];

  sPanel68.Font.Style := KIS_FontStyle;
  sPanel69.Font.Style := KIS_FontStyle;
  sPanel70.Font.Style := KIS_FontStyle;

end;

Function TUI_KPTA_DocNormal_frm.NewDocument:TModalResult;
begin
//------------------------------------------------------------------------------
// 복사 버튼 안보이게
//------------------------------------------------------------------------------
//  sButton11.Visible := True;
//------------------------------------------------------------------------------
// 트랜잭션시작
//------------------------------------------------------------------------------
  IF not DataModule_Conn.KisConn.InTransaction Then DataModule_Conn.KisConn.BeginTrans;
//------------------------------------------------------------------------------
// 채번
//------------------------------------------------------------------------------
  edt_DocNo1.Text := ConfigData.SINGO_BUHO;
  edt_DocNo2.Text := FormatDateTime('yy',Now);
  edt_DocNo3.Text := LoginData.sID+FormatFloat('000',DataModule_Conn.getDocNo('FR2'))+'AH';
  FDocNo := edt_DocNo1.Text + edt_DocNo2.Text + edt_DocNo3.Text;

  with DataModule_Conn do
  begin
    qryStandard1.Append;

    qryStandard1.FieldByName('DOC_NO').AsString := FDocNo;
  end;

//------------------------------------------------------------------------------
// 신청일자
//------------------------------------------------------------------------------
  edt_RequestDate.Text := FormatDateTime('YYYYMMDD',Now);
//------------------------------------------------------------------------------
// 전송구분
//------------------------------------------------------------------------------
  sCombobox1.ItemIndex := 0;
  sCombobox1.ReadOnly := True;
//------------------------------------------------------------------------------
// 수입자 사용자 환경설정 데이터로 채우기
//------------------------------------------------------------------------------
  sMaskEdit2.Text := ConfigData.SAUP_NO;
  sEdit6.Text := ConfigData.SANGHO;
  sEdit7.Text := ConfigData.DAEPYO;
  sEdit9.Text := ConfigData.POST_NO;
  sEdit10.Text := ConfigData.ADDR1;
  sEdit11.Text := ConfigData.ADDR2;

//------------------------------------------------------------------------------
// 캡션변경
//------------------------------------------------------------------------------
  FCaption := '표준통관예정보고서 - 신규';

//------------------------------------------------------------------------------
// 창 띄우기
//------------------------------------------------------------------------------
  Result := Self.ShowModal;

end;

procedure TUI_KPTA_DocNormal_frm.edt_pum3KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Sender as TsEdit).ReadOnly Then Exit;
  
  IF (Sender as TsEdit).MaxLength > 0 Then
  begin
    If (Sender as TsEdit).MaxLength = Length(Trim((Sender as TsEdit).Text)) then
    begin
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.edt_pum1Enter(Sender: TObject);
begin
  inherited;
  IF Sender is TsEdit Then
  begin
    IF (Sender as TsEdit).ReadOnly Then Exit;
    
    FBeforeColor := (Sender as TsEdit).Color;
    (Sender as TsEdit).Color := clYellow;
  end
  else
  IF Sender is TsComboBox Then
  begin
    IF (Sender as TsComboBox).ReadOnly Then Exit;

    FBeforeColor := (Sender as TsComboBox).Color;
    (Sender as TsComboBox).Color := clYellow;
  end
  else
  IF Sender is TsCurrencyEdit Then
  begin
    IF (Sender as TsCurrencyEdit).ReadOnly Then Exit;

    FBeforeColor := (Sender as TsCurrencyEdit).Color;
    (Sender as TsCurrencyEdit).Color := clYellow;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.edt_pum1Exit(Sender : TObject);
begin
  inherited;
  IF Sender is TsEdit Then
  begin
    IF (Sender as TsEdit).ReadOnly Then Exit;
    (Sender as TsEdit).Color := FBeforeColor;
  end
  else
  IF Sender is TsComboBox Then
  begin
    IF (Sender as TsComboBox).ReadOnly Then Exit;
    (Sender as TsComboBox).Color := FBeforeColor;
  end
  else
  IF Sender is TsCurrencyEdit Then
  begin
    IF (Sender as TsCurrencyEdit).ReadOnly Then Exit;
    (Sender as TsCurrencyEdit).Color := FBeforeColor;

    Case (Sender as TsCurrencyEdit).Tag of
      301,302 : sCurrencyEdit5.Value := sCurrencyEdit3.Value * sCurrencyEdit4.Value;
    end;

  end;

  IF (Sender is TsEdit) Then
    edt_jejegubunChange(Sender);
end;

procedure TUI_KPTA_DocNormal_frm.NewGoods;
var
  DocumentNo : String;
begin
//------------------------------------------------------------------------------
// 신청번호가 없다면 오류
//------------------------------------------------------------------------------
  IF Trim(FDocNo) = '' Then
  begin
    MessageBox(Self.Handle,'신청번호가 없습니다','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;
//------------------------------------------------------------------------------
// 제재구분 미선택시 오류
//------------------------------------------------------------------------------
  IF Trim(edt_jejegubun.Text) = '' Then
  begin
    sPageControl1.ActivePageIndex := 0;
    edt_jejegubun.SetFocus;
    MessageBox(Self.Handle,'[공통사항] - [제재구분]을 선택해주세요','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;

//------------------------------------------------------------------------------
// 통화단위 미선택시
//------------------------------------------------------------------------------
  IF Trim(sEdit30.Text) = '' Then
  begin
    sPageControl1.ActivePageIndex := 0;
    sEdit30.SetFocus;
    MessageBox(Self.Handle,'[공통사항] - [통화종류]를 선택해주세요','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;

//------------------------------------------------------------------------------
// 패널 초기화
//------------------------------------------------------------------------------
  ClearControl(sPanel44);
  ClearControl(sTabSheet3);
  ClearControl(sPanel73); 
//------------------------------------------------------------------------------
// 패널 읽기전용 확인
//------------------------------------------------------------------------------
  ReadOnlyControl(sPanel44);
  ReadOnlyControl(sTabSheet3);
//------------------------------------------------------------------------------
// 품목생성
//------------------------------------------------------------------------------
   DataModule_Conn.dsStandard2.DataSet.Append;
//------------------------------------------------------------------------------
// 그리드 잠금
//------------------------------------------------------------------------------
  sDBGrid1.Enabled := False;
//------------------------------------------------------------------------------
// 버튼 활성화
//------------------------------------------------------------------------------
  sButton4.Enabled := False;
  sButton5.Enabled := False;
  sButton6.Enabled := False;

  sButton7.Enabled := True;
  sButton8.Enabled := True;

  sButton12.Enabled := True;
  sButton13.Enabled := True;
  sButton14.Enabled := True;
//------------------------------------------------------------------------------
// 제재구분
//------------------------------------------------------------------------------
  edt_pum2.Text := edt_jejegubun.Text;
//------------------------------------------------------------------------------
// 일련번호생성
//------------------------------------------------------------------------------
   with TADOQuery.Create(nil) do
   begin
     try
       Connection := DataModule_Conn.KisConn;
       SQL.Text := 'SELECT MAX(SERIAL_NO) as MAX_SERIAL_NO FROM STANDARD2 WHERE Doc_No = '+QuotedStr(edt_DocNo1.Text+edt_DocNo2.Text+edt_DocNo3.Text);
       Open;
       IF RecordCount = 0 Then
         DocumentNo := '001'
       else
       begin
         IF FieldByName('MAX_SERIAL_NO').IsNull Then
          DocumentNo := '001'
         else
         DocumentNo := FormatFloat('000',FieldByName('MAX_SERIAL_NO').AsInteger+1);
       end;
     finally
       Close;
       Free;
     end;
   end;

   with DataModule_Conn.dsStandard2.DataSet do
   begin
     FieldByName('DOC_NO').AsString := edt_DocNo1.Text+edt_DocNo2.Text+edt_DocNo3.Text;
     FieldByName('SERIAL_NO').AsString := DocumentNo;
     edt_pumSerialBuho.Text := DocumentNo;

     FieldByName('SERIAL_CODE').AsString := 'FR2';
     sEdit1.Text := 'FR2';
   end;

//------------------------------------------------------------------------------
// 공통사항 - 수입자와 동일 체크가 되어있다면 품목코드 첫째칸은 사업자등록번호 입력되게
//------------------------------------------------------------------------------
  IF (sCheckBox1.Checked) and (edt_pum1.Color = clBtnface) Then
  begin
    edt_pum1.Text := sMaskEdit2.Text;
  end;
//------------------------------------------------------------------------------
// 통화단위 넘겨받기
//------------------------------------------------------------------------------
  IF Trim(sEdit30.Text) <> '' Then
  begin
    //통화단위
    sEdit37.Text := sEdit30.Text;
    //통화단위명
    sEdit38.Text := sEdit31.Text;
  end;

end;

procedure TUI_KPTA_DocNormal_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  NewGoods;
end;

procedure TUI_KPTA_DocNormal_frm.ClearControl(OwnerPanel: TsPanel);
var
  i : Integer;
begin
  for i := 0 to OwnerPanel.ControlCount - 1 do
  begin
    IF OwnerPanel.Controls[i] is TsEdit then
    begin
      IF (OwnerPanel.Controls[i] as TsEdit).Name = 'edt_pum1' Then
      begin
        IF sCheckBox1.Enabled Then Continue;
      end
      else
      IF AnsiMatchText( (OwnerPanel.Controls[i] as TsEdit).Name , ['sEdit37','sEdit38'] ) Then
      begin
        IF Trim(sEdit30.Text) <> '' Then Continue;
      end;

      (OwnerPanel.Controls[i] as TsEdit).Clear;
    end;
    IF OwnerPanel.Controls[i] is TsMaskEdit then (OwnerPanel.Controls[i] as TsMaskEdit).Clear;
    IF OwnerPanel.Controls[i] is TsMemo then (OwnerPanel.Controls[i] as TsMemo).Clear;
    IF OwnerPanel.Controls[i] is TsCurrencyEdit then (OwnerPanel.Controls[i] as TsCurrencyEdit).Value := 0;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.ClearControl(OwnerPanel: TsTabSheet);
var
  i : Integer;
begin
  for i := 0 to OwnerPanel.ControlCount - 1 do
  begin
    IF OwnerPanel.Controls[i] is TsEdit then
    begin
      IF (OwnerPanel.Controls[i] as TsEdit).Name = 'edt_pum1' Then
      begin
        IF sCheckBox1.Enabled Then Continue;
      end
      else
      IF AnsiMatchText( (OwnerPanel.Controls[i] as TsEdit).Name , ['sEdit37','sEdit38'] ) Then
      begin
        IF Trim(sEdit30.Text) <> '' Then Continue;
      end;

      (OwnerPanel.Controls[i] as TsEdit).Clear;
    end;
    IF OwnerPanel.Controls[i] is TsMaskEdit then (OwnerPanel.Controls[i] as TsMaskEdit).Clear;
    IF OwnerPanel.Controls[i] is TsMemo then (OwnerPanel.Controls[i] as TsMemo).Clear;
    IF OwnerPanel.Controls[i] is TsCurrencyEdit then (OwnerPanel.Controls[i] as TsCurrencyEdit).Value := 0;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.SaveGoods;
begin
  if DataModule_Conn.dsStandard2.DataSet.State in [dsInsert, dsEdit] Then
  begin
    with DataModule_Conn.dsStandard2.DataSet do
    begin
      FieldByName('HS').AsString := edt_Hs.Text;
      FieldByName('GOODS_CODE').AsString := edt_pum1.Text + edt_pum2.Text + edt_pum3.Text + edt_pum4.Text + edt_pum5.Text;
      FieldByName('OLD_JONG_CODE').AsString := sEdit51.Text;
      FieldByName('OLD_GOODS_CODE').AsString := edt_old_pum1.Text + edt_old_pum2.Text + edt_old_pum3.Text + edt_old_pum4.Text + edt_old_pum5.Text;
      FieldByName('COSMETIC_GUBUN').AsString := getCodefromCombobox(sComboBox6);
      FieldByName('DMF').AsString := getCodefromCombobox(sComboBox7);
      FieldByName('BGMP').AsString := getCodefromCombobox(sComboBox8);
      FieldByName('TRADE_NAME').AsString := sMemo2.Text;
      FieldByName('MODEL_SIZE').AsString := sMemo3.Text;
      FieldByName('MODEL_SIZE_INGREDIENT').AsString := sMemo4.Text;
      FieldByName('DRUG_STANDARD_CODE').AsString := sEdit52.Text;
      FieldByName('WITAK_SANGHO1').AsString := sEdit40.Text;
      FieldByName('WITAK_SANGHO2').AsString := sEdit41.Text;
      FieldByName('WITAK_SANGHO3').AsString := sEdit42.Text;
      FieldByName('WITAK_ADDR1').AsString := sEdit43.Text;
      FieldByName('WITAK_ADDR2').AsString := sEdit44.Text;
      FieldByName('WITAK_ADDR3').AsString := sEdit45.Text;
      FieldByName('WITAK_NATION_CODE').AsString := sEdit14.Text;
      FieldByName('WITAK_NATION_NAME').AsString := sEdit35.Text;
      FieldByName('MODEL_QTY').AsCurrency := sCurrencyEdit3.Value;
      FieldByName('MODEL_QTY_UNIT').AsString := sEdit36.Text;
      FieldByName('MODEL_DANGA').AsCurrency := sCurrencyEdit4.Value;
      FieldByName('MODEL_AMT').AsCurrency := sCurrencyEdit5.Value;
      FieldByName('MODEL_AMT_UNIT').AsString := sEdit37.Text;
      FieldByName('PERMIT_SINGO_NO').AsString := sEdit39.Text;
      FieldByName('PERMIT_SINGO_DATE').AsString := sMaskEdit4.Text;
      FieldByName('BSE_CODE').AsString := getCodefromCombobox(sComboBox4);
      FieldByName('BSE_ORIGIN_NATION_CODE').AsString := sEdit59.Text;
      FieldByName('BSE_ORIGIN_NATION_NAME').AsString := sEdit60.Text;
      FieldByName('ORIGIN_MATTER').AsString := sEdit61.Text;
      FieldByName('EXTRACTION').AsString := sEdit62.Text;
      FieldByName('BATCH_NO').AsString := sEdit63.Text;
      FieldByName('ORIGIN_NATION_CODE').AsString := sEdit64.Text;
      FieldByName('ORIGIN_NATION_NAME').AsString := sEdit65.Text;
    end;
    DataModule_Conn.dsStandard2.DataSet.Post;

    //------------------------------------------------------------------------------
    // 그리드 잠금해제
    //------------------------------------------------------------------------------
    sDBGrid1.Enabled := True;

    //------------------------------------------------------------------------------
    // 버튼활성화
    //------------------------------------------------------------------------------
    sButton4.Enabled := True;
    sButton5.Enabled := True;
    sButton6.Enabled := True;

    sButton7.Enabled := False;
    sButton8.Enabled := False;

  end;
end;

procedure TUI_KPTA_DocNormal_frm.sButton7Click(Sender: TObject);
var
  nID : integer;
begin
  inherited;
  IF DataModule_Conn.qryTaken.State in [dsInsert, dsEdit] Then
  begin
    nID := MessageBox(Self.Handle,MSG_INSERT_TAKEN,'취소확인',MB_YESNOCANCEL+MB_ICONQUESTION);
    Case nID of
      ID_YES : DataModule_Conn.qryTaken.Post;
      ID_NO : DataModule_Conn.qryTaken.Cancel;
      ID_CANCEL : Exit;
    end;
    Case nID of
      ID_YES ,ID_NO :
      begin
      //------------------------------------------------------------------------------
      // 버튼활성화
      //------------------------------------------------------------------------------
          sButton12.Enabled := False;
          sButton13.Enabled := False;
          sButton14.Enabled := False;

          sButton15.Enabled := False;
          sButton16.Enabled := False;
      end;
    end;

  end;
//------------------------------------------------------------------------------
// 세번부호 미입력 및 존재하는 HS인지확인
//------------------------------------------------------------------------------
  IF Trim(edt_Hs.Text) = '' then
  begin
    MessageBox(Self.Handle,'HS부호를 입력하세요','품목정보 저장 오류',MB_OK+MB_ICONERROR);
    Exit;
  end
  else
  begin
    //------------------------------------------------------------------------------
    // 20190403
    // 세번입력만 확인
    //------------------------------------------------------------------------------

//    with TADOQuery.Create(nil) do
//    begin
//      try
//        Connection := DataModule_Conn.KisConn;
//        SQL.Text := 'SELECT 1 FROM HS WHERE HS_CODE = '+QuotedStr(edt_Hs.Text);
//        Open;
//
//        IF RecordCount = 0 Then
//        begin
//          MessageBox(Self.Handle,Pchar('입력하신 세번['+edt_Hs.Text+']은 유효하지 않은 세번입니다'),'품목정보 저장 오류',MB_OK+MB_ICONERROR);
//          Exit;
//        end;
//      finally
//        Close;
//        Free;
//      end;
//    end;
  end;
//------------------------------------------------------------------------------
// 품목코드 입력확인
//------------------------------------------------------------------------------
  IF (Trim(edt_pum1.Text) = '') OR (Trim(edt_pum3.Text) = '') or (Trim(edt_pum4.Text) = '') or (Trim(edt_pum5.Text) = '') then
  begin
    MessageBox(Self.Handle,'품목코드를 입력하세요','품목정보 저장 오류',MB_OK+MB_ICONERROR);
    Exit;
  end;
//  else
//  if AnsiMatchText( edt_jejegubun.Text , ['1AG','1BG','1AR'] ) Then
//  begin
//    IF (Trim(edt_old_pum1.Text) = '') OR (Trim(edt_old_pum3.Text) = '') or (Trim(edt_old_pum4.Text) = '') or (Trim(edt_old_pum5.Text) = '') then
//    begin
//      MessageBox(Self.Handle,'구 품목코드를 입력하세요','품목정보 저장 오류',MB_OK+MB_ICONERROR);
//      Exit;
//    end
//    else
//    if Trim(edt_pum2.Text) <> Trim(edt_old_pum2.Text) Then
//    begin
//      MessageBox(Self.Handle,Pchar('제재구분코드가 1AG, 1BG, 1AR 일 경우 품목코드의 제재구분코드와 구품목코드의 제재구분코드는 동일해야 합니다'),'품목정보 저장 오류',MB_OK+MB_ICONERROR);
//      Exit;
//    end;
//  end;
//------------------------------------------------------------------------------
// 거래품명 확인
//------------------------------------------------------------------------------
  IF Trim(AnsiReplaceText(sMemo2.Text,#13#10,'')) = '' Then
  begin
    MessageBox(Self.Handle,MSG_EMPTY_TRADE_NAME,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
    sMemo2.SetFocus;
    Exit;
  end;
//------------------------------------------------------------------------------
// 모델규격 확인
//------------------------------------------------------------------------------
  IF Trim(AnsiReplaceText(sMemo3.Text,#13#10,'')) = '' Then
  begin
    MessageBox(Self.Handle,MSG_EMPTY_MODEL_SIZE,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
    sMemo3.SetFocus;
    Exit;
  end;
//------------------------------------------------------------------------------
// 수량확인
//------------------------------------------------------------------------------
  IF sCurrencyEdit3.Value = 0 Then
  begin
    IF MessageBox(Self.Handle,MSG_QTY_ZERO,'품목사항 저장 오류',MB_OKCANCEL+MB_ICONQUESTION) <> ID_OK Then
      Exit;
  end;

  if Trim(sEdit36.Text) = '' then
  begin
    MessageBox(Self.Handle,MSG_EMPTY_UNIT,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
    sEdit36.SetFocus;
    Exit;
  end;
//------------------------------------------------------------------------------
// 단가
//------------------------------------------------------------------------------
  IF sCurrencyEdit4.Value = 0 Then
  begin
    IF MessageBox(Self.Handle,MSG_DANGA_ZERO,'품목사항 저장 오류',MB_OKCANCEL+MB_ICONQUESTION) <> ID_OK Then
      Exit;
  end;
//------------------------------------------------------------------------------
// 원산지
//------------------------------------------------------------------------------
  IF Trim(sEdit64.Text) = '' Then
  begin
    MessageBox(Self.Handle,MSG_EMPTY_ORIGIN_NATION,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
    sEdit64.SetFocus;
    Exit;
  end;
//------------------------------------------------------------------------------
// BSE가 대상일경우
//------------------------------------------------------------------------------
  IF sCombobox4.ItemIndex = 1 Then
  begin
    IF Trim(sEdit61.Text) = '' Then
    begin
      MessageBox(Self.Handle,MSG_EMPTY_ORIGIN_MATTER,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
      sEdit61.SetFocus;
      Exit;
    end;
    IF Trim(sEdit62.Text) = '' Then
    begin
      MessageBox(Self.Handle,MSG_EMPTY_EXTRACTION,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
      sEdit62.SetFocus;
      Exit;
    end;
    IF Trim(sEdit63.Text) = '' Then
    begin
      MessageBox(Self.Handle,MSG_EMPTY_BATCHNO,'품목사항 저장 오류',MB_OK+MB_ICONERROR);
      sEdit63.SetFocus;
      Exit;
    end;
  end;

  SaveGoods;
end;

procedure TUI_KPTA_DocNormal_frm.sButton8Click(Sender: TObject);
begin
  inherited;
  if DataModule_Conn.dsStandard2.DataSet.State in [dsInsert, dsEdit] Then
  begin
    IF DataModule_Conn.qryTaken.State in [dsInsert, dsEdit] Then
    begin
      IF MessageBox(Self.Handle,MSG_INSERT_TAKEN,'취소확인',MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
        DataModule_Conn.qryTaken.Cancel
      else
        Exit;
    end;
    DataModule_Conn.dsStandard2.DataSet.Cancel;
    //------------------------------------------------------------------------------
    // 그리드 잠금해제
    //------------------------------------------------------------------------------
      sDBGrid1.Enabled := True;
    //------------------------------------------------------------------------------
    // 버튼활성화
    //------------------------------------------------------------------------------
    sButton4.Enabled := True;
    sButton5.Enabled := True;
    sButton6.Enabled := True;

    sButton7.Enabled := False;
    sButton8.Enabled := False;

    sButton12.Enabled := False;
    sButton13.Enabled := False;
    sButton14.Enabled := False;
    sButton15.Enabled := False;
    sButton16.Enabled := False;

    ReadStandard2;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sSpeedButton11Click(Sender: TObject);
var
  POS : TPoint;
begin
  inherited;
  IF DataModule_Conn.qryStandard2.State = dsBrowse Then Exit;
  
  POS.X := sMaskEdit4.Left;
  POS.Y := sMaskEdit4.Top+sMaskEdit4.Height;

  POS := sPanel44.ClientToScreen(POS);

  KISCalendar_frm.Left := POS.X;
  KISCalendar_frm.Top := POS.Y;

  sMaskEdit4.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(sMaskEdit4.Text)));
end;

procedure TUI_KPTA_DocNormal_frm.NewTaken;
var
  DocumentNo : String;
  TakenCount : Integer;
begin
//------------------------------------------------------------------------------
// 신청번호가 없다면 오류
//------------------------------------------------------------------------------
  IF Trim(FDocNo) = '' Then
  begin
    MessageBox(Self.Handle,'신청번호가 없습니다','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;
//------------------------------------------------------------------------------
// 품목식별부호가 없다면 오류
//------------------------------------------------------------------------------
  IF Trim(edt_pumSerialBuho.Text) = '' Then
  begin
    MessageBox(Self.Handle,'품목식별부호가 없습니다','수탁제조 입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;
//------------------------------------------------------------------------------
// 제재구분 미선택시 오류
//------------------------------------------------------------------------------
  IF Trim(edt_jejegubun.Text) = '' Then
  begin
    MessageBox(Self.Handle,'[공통사항] - [제재구분]을 선택해주세요','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;

//------------------------------------------------------------------------------
// 제재구분 1AB(완제의약품)일 경우 수탁제조를 10회까지 입력할 수 있음
//------------------------------------------------------------------------------
  //수탁제조 카운트
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT COUNT(*) as TakeCount FROM TAKEN with(nolock) WHERE DOC_NO = '+QuotedStr(FDocNo)+' AND SERIAL_NO = '+QuotedStr(DataModule_Conn.qryStandard2SERIAL_NO.AsString);
      Open;

      TakenCount := FieldByName('TakeCount').AsInteger;
    finally
      Close;
      Free;
    end;
  end;

  IF edt_jejegubun.Text = '1AB' Then
  begin
    IF TakenCount >= 10 Then
    begin
      MessageBox(Self.Handle,MSG_1AB_TAKEN_10,'수탁제조 입력오류',MB_OK+MB_ICONERROR);
      Exit;
    end;
  end
  else
  begin
    IF TakenCount >= 1 Then
    begin
      MessageBox(Self.Handle,MSG_1AB_ELSE_TAKEN_1,'수탁제조 입력오류',MB_OK+MB_ICONERROR);
      Exit;
    end;
  end;

  with DataModule_Conn.qryTaken do
  begin
    Append;
//------------------------------------------------------------------------------
// 그리드 잠금
//------------------------------------------------------------------------------
    sDBGrid2.Enabled := False;
//------------------------------------------------------------------------------
// 패널 초기화
//------------------------------------------------------------------------------
    ClearControl(sPanel73);
    ReadOnlyControl(sPanel73);    
//------------------------------------------------------------------------------
// 버튼활성화
//------------------------------------------------------------------------------
    sButton12.Enabled := False;
    sButton13.Enabled := False;
    sButton14.Enabled := False;

    sButton15.Enabled := True;
    sButton16.Enabled := True;
//------------------------------------------------------------------------------
// 일련번호생성
//------------------------------------------------------------------------------
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'SELECT MAX(TAKE_NO) as MAX_TAKE_NO FROM TAKEN WHERE Doc_No = '+QuotedStr(FDocNo)+' AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(edt_pumSerialBuho.Text);
        Open;
        IF RecordCount = 0 Then
          DocumentNo := '001'
        else
        begin
          IF FieldByName('MAX_TAKE_NO').IsNull Then
           DocumentNo := '001'
          else
           DocumentNo := FormatFloat('000',FieldByName('MAX_TAKE_NO').AsInteger+1);
        end;
      finally
        Close;
        Free;
      end;
    end;

    FieldByName('DOC_NO'     ).AsString := FDocNo;
    FieldByName('SERIAL_CODE').AsString := 'FR2';
    FieldByName('SERIAL_NO'  ).AsString := edt_pumSerialBuho.Text;
    sEdit3.Text := DocumentNo;
    FieldByName('TAKE_NO'    ).AsString := DocumentNo;

  end;

end;

procedure TUI_KPTA_DocNormal_frm.sButton12Click(Sender: TObject);
begin
  inherited;
  NewTaken;
end;

procedure TUI_KPTA_DocNormal_frm.sButton15Click(Sender: TObject);
begin
  inherited;
  with DataModule_Conn.qryTaken do
  begin
    IF State in [dsInsert, dsEdit] Then
    begin
      Case (Sender as TsButton).Tag of
        0: begin
             FieldByName('NATION_CODE' ).AsString := sEdit46.Text;
             FieldByName('NATION_NAME' ).AsString := sEdit47.Text;
             FieldByName('TAKE_SANGHO1').AsString := sEdit48.Text;
             FieldByName('TAKE_SANGHO2').AsString := sEdit49.Text;
             FieldByName('TAKE_SANGHO3').AsString := sEdit50.Text;
             FieldByName('TAKE_ADDR1'   ).AsString := sEdit53.Text;
             FieldByName('TAKE_ADDR2'   ).AsString := sEdit54.Text;
             FieldByName('TAKE_ADDR3'   ).AsString := sEdit55.Text;
             Post;
           end;
        1: Cancel;
      end;
    end;
//------------------------------------------------------------------------------
// 그리드 잠금해제
//------------------------------------------------------------------------------
    sDBGrid2.Enabled := True;
//------------------------------------------------------------------------------
// 버튼활성화
//------------------------------------------------------------------------------
    sButton12.Enabled := True;
    sButton13.Enabled := True;
    sButton14.Enabled := True;

    sButton15.Enabled := False;
    sButton16.Enabled := False;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sButton1Click(Sender: TObject);
begin
  inherited;
//------------------------------------------------------------------------------
// 신청번호가 없다면 오류
//------------------------------------------------------------------------------
  IF Trim(FDocNo) = '' Then
  begin
    MessageBox(Self.Handle,'신청번호가 없습니다','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;

  IF sDBGrid1.DataSource.DataSet.State in [dsInsert, dsEdit] Then
  begin
    MessageBox(Self.Handle,'품목사항이 입력중입니다. [품목정보]의 [저장]버튼을 클릭하여 입력을 완료 후 계속하세요','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end
  else
  IF sDBGrid2.DataSource.DataSet.State in [dsInsert, dsEdit] Then
  begin
    MessageBox(Self.Handle,'수탁제조가 입력중입니다. [수탁제조] 탭의 디스켓 버튼을 클릭하여 입력을 완료 후 계속하세요','신규입력 오류',MB_OK+MB_ICONERROR);
    Abort;
  end;

  IF (Sender as TsButton).Tag > -1 then
  begin
    IF CheckErrorDocument Then Abort;
  end;

  with DataModule_Conn.qryStandard1 do
  begin
    FieldByName('DOC_GUBUN').AsString    := getCodefromCombobox(sComboBox2);
    FieldByName('SEND_TYPE').AsString    := getCodefromCombobox(sComboBox1,'[');
    FieldByName('REQUEST_DATE').AsDateTime := ConvertStr2Date(edt_RequestDate.Text);
    FieldByName('JEJE_GUBUN').AsString   := edt_jejegubun.Text;
    FieldByName('CANCEL_REASON').AsString := sMemo5.Text;

    FieldByName('IMPORT_SAUP_NO').AsString := sMaskEdit2.Text;
    FieldByName('IMPORT_SANGHO').AsString  := sEdit6.Text;
    FieldByName('IMPORT_DAEPYO').AsString  := sEdit7.Text;
    FieldByName('IMPORT_TRADE_NO').AsString := sEdit8.Text;
    FieldByName('IMPORT_POST_NO').AsString  := sEdit9.Text;
    FieldByName('IMPORT_ADDR1').AsString  := sEdit10.Text;
    FieldByName('IMPORT_ADDR2').AsString  := sEdit11.Text;
    FieldByName('IMPORT_TYPE').AsBoolean  := sCheckBox1.Checked;

    FieldByName('HWAJU_SAUP_NO').AsString := sMaskEdit3.Text;
    FieldByName('HWAJU_SANGHO').AsString  := sEdit12.Text;
    FieldByName('HWAJU_DAEPYO').AsString  := sEdit13.Text;
    FieldByName('HWAJU_POST_NO').AsString := sEdit15.Text;
    FieldByName('HWAJU_ADDR1').AsString   := sEdit16.Text;
    FieldByName('HWAJU_ADDR2').AsString   := sEdit17.Text;

    FieldByName('EXPORT_SANGHO').AsString      := sEdit18.Text;
    FieldByName('EXPORT_ADDR1').AsString       := sEdit23.Text;
    FieldByName('EXPORT_NATION_CODE').AsString := sEdit19.Text;
    FieldByName('EXPORT_NATION_NAME').AsString := sEdit20.Text;

    FieldByName('INDO_TYPE').AsString := sEdit21.Text;
    FieldByName('PAY_TYPE').AsString := sEdit24.Text;
    FieldByName('PAY_AMT').AsString := FormatFloat('0.0000',sCurrencyEdit2.Value);
    FieldByName('PAY_UNIT').AsString := sEdit30.Text;
    FieldByName('PAY_BETWEEN_DATE').AsString := sEdit32.Text;
    FieldByName('DEST_PORT_CODE').AsString := sEdit26.Text;
    FieldByName('DEST_PORT_NAME').AsString := sEdit27.Text;
    FieldByName('QUALITY_AGENCY_CODE').AsString := sEdit33.Text;
    IF sEdit33.Text = '99' Then
      FieldByName('QUALITY_AGENCY_NAME').AsString := sEdit4.Text    
    else
      FieldByName('QUALITY_AGENCY_NAME').AsString := sEdit34.Text;

    FieldByName('FIRST_CHECK_AGENCY_CODE').AsString := sEdit28.Text;
    FieldByName('FIRST_CHECK_AGENCY_NAME').AsString := sEdit29.Text;
    FieldByName('REGION_CODE').AsString := getCodefromCombobox(sComboBox3,'[');
    FieldByName('REGION_NAME').AsString := LeftStr( sComboBox3.Text , Pos('[',sComboBox3.Text) -1 );
    FieldByName('IMPORT_MEMO').AsString := sMemo1.Text;

    FieldByName('TOTAL_COUNT').AsInteger := sDBGrid1.DataSource.DataSet.RecordCount;

    IF (Sender as TsButton).Tag > -1 then
      FieldByName('isSEND').AsString := '저장'
    else
      FieldByName('isSEND').AsString := '임시';


    Post;

    //일련번호 재정렬
    DataModule_Conn.qrySortSerialNo.Close;
    DataModule_Conn.qrySortSerialNo.Parameters[0].Value := edt_DocNo1.Text+edt_DocNo2.Text+edt_DocNo3.Text;
    DataModule_Conn.qrySortSerialNo.ExecSQL;
    
    DataModule_Conn.KisConn.CommitTrans;

    ModalResult := mrOk;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  DataModule_Conn.qryStandard1.Cancel;
  IF DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit] Then DataModule_Conn.qryStandard2.Cancel;
  IF DataModule_Conn.qryTaken.State in [dsInsert, dsEdit] Then DataModule_Conn.qryTaken.Cancel;
//------------------------------------------------------------------------------
// 트랜잭션 롤백
//------------------------------------------------------------------------------
  IF DataModule_Conn.KisConn.InTransaction Then DataModule_Conn.KisConn.RollbackTrans;
end;

procedure TUI_KPTA_DocNormal_frm.sSpeedButton15Click(Sender: TObject);
begin
  inherited;
  IF not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit]) Then Exit;
  
  Dialog_SearchHS_frm := TDialog_SearchHS_frm.Create(Self);
  try
    IF Dialog_SearchHS_frm.RunDialog(edt_Hs.Text) = mrOK Then
    begin
      edt_Hs.Text := Dialog_SearchHS_frm.FieldNM('HS_CODE').AsString;
      DataModule_Conn.qryStandard2.FieldByName('HS').AsString := edt_Hs.Text;
    end;
  finally
    FreeAndNil(Dialog_SearchHS_frm);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.edt_HsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = KIS_HELP_KEY Then sSpeedButton15Click(sSpeedButton15);
end;

function TUI_KPTA_DocNormal_frm.CheckErrorDocument:Boolean;
begin
  Result := False;
//------------------------------------------------------------------------------
// 제재구분 미입력
//------------------------------------------------------------------------------
  IF Trim(edt_jejegubun.Text) = '' Then
  begin
    MessageBox(Self.Handle,'제재구분을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    edt_jejegubun.SetFocus;
    Result := True;
    Exit;
  end
  else
  IF DataModule_Conn.isValidCode(edt_jejegubun) Then
  begin
    MessageBox(Self.Handle,PChar('입력하신 제재구분['+edt_jejegubun.Text+']은 유효한 코드가 아닙니다'),'저장오류',MB_OK+MB_ICONERROR);
    edt_jejegubun.SetFocus;
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 수입자 상호, 성명, 주소 미입력
//------------------------------------------------------------------------------
  IF Trim(sEdit6.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입자 - 상호를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
  IF Trim(sEdit7.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입자 - 성명을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//  IF Trim(sEdit9.Text) = '' Then
//  begin
//    MessageBox(Self.Handle,'수입자 - 우편번호를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
//    Result := True;
//    Exit;
//  end;
  IF Trim(sEdit10.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입자 - 주소를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 수입화주 상호, 성명, 주소 미입력
//------------------------------------------------------------------------------
  IF Trim(sMaskEdit3.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입화주 - 사업자등록번호를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
  IF Trim(sEdit12.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입화주 - 상호을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
  IF Trim(sEdit13.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입화주 - 성명을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//  IF Trim(sEdit15.Text) = '' Then
//  begin
//    MessageBox(Self.Handle,'수입화주 - 우편번호를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
//    Result := True;
//    Exit;
//  end;
  IF Trim(sEdit16.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수입화주 - 주소를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 수출자 상호, 성명, 주소 미입력
//------------------------------------------------------------------------------
  IF Trim(sEdit18.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수출자 - 상호를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
  IF Trim(sEdit19.Text) = '' Then
  begin
    MessageBox(Self.Handle,'수출자 - 국가를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end
  else
  IF DataModule_Conn.isValidCode(sEdit19) Then
  begin
    MessageBox(Self.Handle,PChar('입력하신 수출자-국가['+sEdit19.Text+']은 유효한 코드가 아닙니다'),'저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;

//------------------------------------------------------------------------------
// 인도조건 미입력
//------------------------------------------------------------------------------
  IF Trim(sEdit21.Text) = '' Then
  begin
    MessageBox(Self.Handle,'인도조건을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end
  else
  IF DataModule_Conn.isValidCode(sEdit21) Then
  begin
    MessageBox(Self.Handle,PChar('입력하신 인도조건['+sEdit21.Text+']은 유효한 코드가 아닙니다'),'저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 통화종류 미입력
//------------------------------------------------------------------------------
  IF Trim(sEdit30.Text) = '' Then
  begin
    MessageBox(Self.Handle,'통화종류를 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end
  else
  IF DataModule_Conn.isValidCode(sEdit30) Then
  begin
    MessageBox(Self.Handle,PChar('입력하신 통화종류['+sEdit30.Text+']는 유효한 코드가 아닙니다'),'저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 결제방법 미입력
//------------------------------------------------------------------------------
  IF Trim(sEdit24.Text) = '' Then
  begin
    MessageBox(Self.Handle,'결제방법을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end
  else
  IF DataModule_Conn.isValidCode(sEdit24) Then
  begin
    MessageBox(Self.Handle,PChar('입력하신 결제방법['+sEdit24.Text+']은 유효한 코드가 아닙니다'),'저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 결제금액 미입력
//------------------------------------------------------------------------------
  IF Trim(sCurrencyEdit2.Text) = '' Then
  begin
    MessageBox(Self.Handle,'결제금액을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
//------------------------------------------------------------------------------
// 국내도착항 미입력
//------------------------------------------------------------------------------
  IF Trim(sEdit26.Text) = '' Then
  begin
    MessageBox(Self.Handle,'국내도착항을 입력하세요','저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end
  else
  IF DataModule_Conn.isValidCode(sEdit26) Then
  begin
    MessageBox(Self.Handle,PChar('입력하신 국내도착항['+sEdit26.Text+']은 유효한 코드가 아닙니다'),'저장오류',MB_OK+MB_ICONERROR);
    Result := True;
    Exit;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sButton5Click(Sender: TObject);
begin
  inherited;
  IF sDBGrid1.DataSource.DataSet.RecordCount = 0 Then
  begin
    MessageBox(Self.Handle,PChar('수정할 자료가 없습니다'),'수정오류',MB_OK+MB_ICONERROR);
    Exit;
  end;
//------------------------------------------------------------------------------
// 그리드 잠금
//------------------------------------------------------------------------------
  sDBGrid1.Enabled := False;
//------------------------------------------------------------------------------
// 패널 읽기전용 확인
//------------------------------------------------------------------------------
  ReadOnlyControl(sPanel44);
  ReadOnlyControl(sTabSheet3);
//------------------------------------------------------------------------------
// 품목생성
//------------------------------------------------------------------------------
   DataModule_Conn.dsStandard2.DataSet.Edit;
//------------------------------------------------------------------------------
// 버튼 활성화
//------------------------------------------------------------------------------
  sButton4.Enabled := False;
  sButton5.Enabled := False;
  sButton6.Enabled := False;

  sButton7.Enabled := True;
  sButton8.Enabled := True;

  sButton12.Enabled := True;
  sButton13.Enabled := True;
  sButton14.Enabled := True;
  
end;

procedure TUI_KPTA_DocNormal_frm.sButton9Click(Sender: TObject);
begin
  inherited;
  DIalog_Make_frm := TDIalog_Make_frm.Create(Self);
  try
    DIalog_Make_frm.OpenDialog(FDocNo,DataModule_Conn.qryStandard2SERIAL_NO.AsString);
  finally
    FreeAndNil(DIalog_Make_frm);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sCheckBox2Click(Sender: TObject);
begin
  inherited;
  IF sCheckBox2.Checked Then
  begin
    edt_old_pum1.Text := edt_pum1.Text;
    edt_old_pum2.Text := edt_pum2.Text;
    edt_old_pum3.Text := edt_pum3.Text;
    edt_old_pum4.Text := edt_pum4.Text;
    edt_old_pum5.Text := edt_pum5.Text;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.edt_pum1Change(Sender: TObject);
begin
  inherited;
  IF sCheckBox2.Checked Then
  begin
    Case (sender as TsEdit).Tag of
      501: edt_old_pum1.Text := edt_pum1.Text;
      502: edt_old_pum2.Text := edt_pum2.Text;
      503: edt_old_pum3.Text := edt_pum3.Text;
      504: edt_old_pum4.Text := edt_pum4.Text;
      505: edt_old_pum5.Text := edt_pum5.Text;
    end;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sButton10Click(Sender: TObject);
begin
  inherited;
  Dialog_Check_frm := TDialog_Check_frm.Create(Self);
  try
    Dialog_Check_frm.OpenDialog(FDocNo,DataModule_Conn.qryStandard2SERIAL_NO.AsString);
  finally
    FreeAndNil(Dialog_Check_frm);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sPageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  IF not (DataModule_Conn.qryStandard2.State = dsBrowse) Then
  begin
    MessageBox(Self.Handle,'품목사항 작성중에는 공통사항탭으로 이동이 불가합니다','오류',MB_OK+MB_ICONERROR);
  end;
  AllowChange := DataModule_Conn.qryStandard2.State = dsBrowse;
end;

procedure TUI_KPTA_DocNormal_frm.ReadOnlyControl(OwnerPanel: TsPanel;
  Value: Boolean);
var
  i : Integer;
begin
  for i := 0 to OwnerPanel.ControlCount - 1 do
  begin
    IF OwnerPanel.Controls[i] is TsEdit then
    begin
      IF (OwnerPanel.Controls[i] as TsEdit).Color = clBtnFace Then
        (OwnerPanel.Controls[i] as TsEdit).ReadOnly := True
      else
        (OwnerPanel.Controls[i] as TsEdit).ReadOnly := Value;
    end;

    IF OwnerPanel.Controls[i] is TsMaskEdit then (OwnerPanel.Controls[i] as TsMaskEdit).ReadOnly := Value;
    IF OwnerPanel.Controls[i] is TsMemo then (OwnerPanel.Controls[i] as TsMemo).ReadOnly := Value;
    IF OwnerPanel.Controls[i] is TsCurrencyEdit then (OwnerPanel.Controls[i] as TsCurrencyEdit).ReadOnly := Value;
    IF OwnerPanel.Controls[i] is TsComboBox Then (OwnerPanel.Controls[i] as TsComboBox).ReadOnly := Value;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.ReadOnlyControl(OwnerPanel: TsTabSheet;
  Value: Boolean);
var
  i : Integer;
begin
  for i := 0 to OwnerPanel.ControlCount - 1 do
  begin
    IF OwnerPanel.Controls[i] is TsEdit then
    begin
      IF (OwnerPanel.Controls[i] as TsEdit).Color = clBtnFace Then
        (OwnerPanel.Controls[i] as TsEdit).ReadOnly := True
      else
        (OwnerPanel.Controls[i] as TsEdit).ReadOnly := Value;
    end;

    IF OwnerPanel.Controls[i] is TsMaskEdit then (OwnerPanel.Controls[i] as TsMaskEdit).ReadOnly := Value;
    IF OwnerPanel.Controls[i] is TsMemo then (OwnerPanel.Controls[i] as TsMemo).ReadOnly := Value;
    IF OwnerPanel.Controls[i] is TsCurrencyEdit then (OwnerPanel.Controls[i] as TsCurrencyEdit).ReadOnly := Value;
    IF OwnerPanel.Controls[i] is TsComboBox Then (OwnerPanel.Controls[i] as TsComboBox).ReadOnly := Value;
  end;
end;

function TUI_KPTA_DocNormal_frm.EditDocument: TModalResult;
begin
//------------------------------------------------------------------------------
// 복사 버튼 안보이게
//------------------------------------------------------------------------------
//  sButton11.Visible := False;
//------------------------------------------------------------------------------
// 트랜잭션시작
//------------------------------------------------------------------------------
  IF not DataModule_Conn.KisConn.InTransaction Then DataModule_Conn.KisConn.BeginTrans;
//------------------------------------------------------------------------------
// Standard1 수정 시작
//------------------------------------------------------------------------------
  DataModule_Conn.qryStandard1.Edit;
//------------------------------------------------------------------------------
// Standard1 자료 가져오기
//------------------------------------------------------------------------------
  with DataModule_Conn.qryStandard1 do
  begin
    //신청번호
    FDocNo := DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString;

    //------------------------------------------------------------------------------
    // 이미 한번전송된 건이면 전송구분을 강제로 재전송으로 변경
    //------------------------------------------------------------------------------
    //------------------------------------------------------------------------------
    // 취소요청처리도 같이 함
    //------------------------------------------------------------------------------
    sLabel1.Caption := '표준통관 예정보고서(한국의약품수출입협회)';    
    IF FCancel Then
    begin
      sCombobox1.ItemIndex := 2;
      sComboBox1Select(sCombobox1);
      sLabel1.Caption := '표준통관 예정보고서(한국의약품수출입협회) - 취소요청서'
    end
    else
    IF not DataModule_Conn.qryStandard1.FieldByName('isFirstSend').AsBoolean Then
      sComboBox1.ItemIndex := 1

    else
      sComboBox1.ItemIndex := setCodeFromCombobox(sComboBox1,DataModule_Conn.qryStandard1.FieldByName('SEND_TYPE').AsString,'[');

    edt_DocNo1.Text := LeftStr(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString,5);
    edt_DocNo2.Text := MidStr(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString,6,2);
    edt_DocNo3.Text := MidStr(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString,8,6);
    //신청일자
    edt_RequestDate.Text := FormatDateTime('YYYYMMDD',DataModule_Conn.qryStandard1.FieldByName('REQUEST_DATE').AsDateTime);
    //제재구분
    edt_jejegubun.Text := FieldByName('JEJE_GUBUN').AsString;
    //신청문서구분
    IF FieldByName('DOC_GUBUN').AsString = '1CC' Then
      sCombobox2.ItemIndex := 0
    else
    IF FieldByName('DOC_GUBUN').AsString = '1CB' Then
      sCombobox2.ItemIndex := 1;
    //총 항목수
    sCurrencyEdit6.Value := FieldByName('TOTAL_COUNT').AsInteger;
    //취소사유
    IF FieldByName('SEND_TYPE').AsString = '1' Then
      sMemo5.Lines.Text := FieldByName('CANCEL_REASON').AsString;

    //--------------------------------------------------------------------------
    // 수입자
    //--------------------------------------------------------------------------
    //사업자등록번호
    sMaskEdit2.Text := FieldByName('IMPORT_SAUP_NO').AsString;
    //상호
    sEdit6.Text := FieldByName('IMPORT_SANGHO').AsString;
    //성명
    sEdit7.Text := FieldByName('IMPORT_DAEPYO').AsString;
    //허가(등록)번호
    sEdit8.Text := FieldByName('IMPORT_TRADE_NO').AsString;
    //우편번호
    sEdit9.Text := FieldByName('IMPORT_POST_NO').AsString;
    sEdit10.Text := FieldByName('IMPORT_ADDR1').AsString;
    sEdit11.Text := FieldByName('IMPORT_ADDR2').AsString;

    //--------------------------------------------------------------------------
    // 수입화주
    //--------------------------------------------------------------------------
    //수입자와 동일
    sCheckBox1.Checked := FieldByName('IMPORT_TYPE').AsBoolean;
    //사업자등록번호
    sMaskEdit3.Text := FieldByName('HWAJU_SAUP_NO').AsString;
    //상호
    sEdit12.Text := FieldByName('HWAJU_SANGHO').AsString;
    //성명
    sEdit13.Text := FieldByName('HWAJU_DAEPYO').AsString;
    //주소
    sEdit15.Text := FieldByName('HWAJU_POST_NO').AsString;
    sEdit16.Text := FieldByName('HWAJU_ADDR1').AsString;
    sEdit17.Text := FieldByName('HWAJU_ADDR2').AsString;

    //--------------------------------------------------------------------------
    // 수출자
    //--------------------------------------------------------------------------
    //상호
    sEdit18.Text := FieldByName('EXPORT_SANGHO').AsString;
    //주소
    sEdit23.Text := FieldByName('EXPORT_ADDR1').AsString;
    //국가
    sEdit19.Text := FieldByName('EXPORT_NATION_CODE').AsString;

    //--------------------------------------------------------------------------
    // 신고일반
    //--------------------------------------------------------------------------
    //인도조건
    sEdit21.Text := FieldByName('INDO_TYPE').AsString;
    //통화종류
    sEdit30.Text := FieldByName('PAY_UNIT').AsString;
    //결제방법
    sEdit24.Text := FieldByName('PAY_TYPE').AsString;
    //결제금액
    sCurrencyEdit2.Value := FieldByName('PAY_AMT').AsCurrency;
    //결제기간
    sEdit32.Text := FieldByName('PAY_BETWEEN_DATE').AsString;
    //국내도착항
    sEdit26.Text := FieldByName('DEST_PORT_CODE').AsString;
    //품질검사기관
    sEdit33.Text := FieldByName('QUALITY_AGENCY_CODE').AsString;
    sEdit4.Visible := sEdit33.Text = '99';
    If sEdit4.Visible Then
      sEdit4.Text := DataModule_Conn.qryStandard1.FieldByName('QUALITY_AGENCY_NAME').AsString;

    //최초검정기관
    sEdit28.Text := FieldByName('FIRST_CHECK_AGENCY_CODE').AsString;
    //관할지방 식품의약품 안전청
    sComboBox3.ItemIndex := setCodeFromCombobox(sComboBox3,FieldByName('REGION_CODE').AsString,'[');
    //수입자기재사항
    sMemo1.Text := FieldByName('IMPORT_MEMO').AsString;
  end;

//------------------------------------------------------------------------------
// 캡션변경
//------------------------------------------------------------------------------
  FCaption := '표준통관예정보고서 - 수정['+FDocNo+']';
//------------------------------------------------------------------------------
// 창 띄우기
//------------------------------------------------------------------------------
  Self.ShowModal;
end;

procedure TUI_KPTA_DocNormal_frm.ReadStandard2;
begin
  with DataModule_Conn do
  begin
    //--------------------------------------------------------------------------
    // 품목정보
    //--------------------------------------------------------------------------
    //HS부호
    edt_Hs.Text := qryStandard2HS.AsString;
    //품목식별부호
    sEdit1.Text := qryStandard2SERIAL_CODE.AsString;
    edt_pumSerialBuho.Text := qryStandard2SERIAL_NO.AsString;
    //품목코드
    edt_pum1.Text := LeftStr(qryStandard2GOODS_CODE.AsString,10);
    edt_pum2.Text := MidStr(qryStandard2GOODS_CODE.AsString,11,3);
    edt_pum3.Text := MidStr(qryStandard2GOODS_CODE.AsString,14,4);
    edt_pum4.Text := MidStr(qryStandard2GOODS_CODE.AsString,18,6);
    edt_pum5.Text := MidStr(qryStandard2GOODS_CODE.AsString,24,3);
    //구 품목코드
    edt_old_pum1.Text := LeftStr(qryStandard2OLD_GOODS_CODE.AsString,10);
    edt_old_pum2.Text := MidStr(qryStandard2OLD_GOODS_CODE.AsString,11,3);
    edt_old_pum3.Text := MidStr(qryStandard2OLD_GOODS_CODE.AsString,14,4);
    edt_old_pum4.Text := MidStr(qryStandard2OLD_GOODS_CODE.AsString,18,6);
    edt_old_pum5.Text := MidStr(qryStandard2OLD_GOODS_CODE.AsString,24,3);
    //구 종별코드
    sEdit51.Text := qryStandard2OLD_JONG_CODE.AsString;
    //기능성화장품구분
    sComboBox6.ItemIndex := setCodeFromCombobox(sComboBox6,qryStandard2COSMETIC_GUBUN.AsString,'-');
    //DMF 대상구분
    sComboBox7.ItemIndex := setCodeFromCombobox(sComboBox7,qryStandard2DMF.AsString,'-');
    //BGMP 대상구분
    sComboBox8.ItemIndex := setCodeFromCombobox(sComboBox8,qryStandard2BGMP.AsString,'-');
    //거래품명
    sMemo2.Lines.Text := qryStandard2TRADE_NAME.AsString;
    //모델규격
    sMemo3.Lines.Text := qryStandard2MODEL_SIZE.AsString;
    //성분
    sMemo4.Lines.Text := qryStandard2MODEL_SIZE_INGREDIENT.AsString;
    //식약청 기준코드
    sEdit52.Text := qryStandard2DRUG_STANDARD_CODE.AsString;
    //수량
    sCurrencyEdit3.Value := qryStandard2MODEL_QTY.AsCurrency;
    //수량단위
    sEdit36.Text := qryStandard2MODEL_QTY_UNIT.AsString;
    //단가
    sCurrencyEdit4.Value := qryStandard2MODEL_DANGA.AsCurrency;
    //금액
    sCurrencyEdit5.Value := qryStandard2MODEL_AMT.AsCurrency;
    //금액단위
//    sEdit37.Text := qryStandard2MODEL_AMT_UNIT.AsString;
    sEdit37.Text := sEdit30.Text;
    //허가번호
    sEdit39.Text := qryStandard2PERMIT_SINGO_NO.AsString;
    //허가일자
    sMaskEdit4.Text := qryStandard2PERMIT_SINGO_DATE.AsString;
    //BSE대상품목
    sComboBox4.ItemIndex := setCodeFromCombobox(sComboBox4,qryStandard2BSE_CODE.AsString,'-');
    sComboBox4Select(sComboBox4);

    //BSE원산지코드
    sEdit59.Text := qryStandard2BSE_ORIGIN_NATION_CODE.Text;
    //BSE원산지명
    sEdit60.Text := qryStandard2BSE_ORIGIN_NATION_NAME.Text;
    //기원물질
    sEdit61.Text := qryStandard2ORIGIN_MATTER.AsString;
    //추출부위
    sEdit62.Text := qryStandard2EXTRACTION.AsString;
    //BATCH NO
    sEdit63.Text := qryStandard2BATCH_NO.AsString;
    //원산지
    sEdit64.Text := qryStandard2ORIGIN_NATION_CODE.AsString;
    //원산지명
    sEdit65.Text := qryStandard2ORIGIN_NATION_NAME.AsString;
    //--------------------------------------------------------------------------
    // 위탁제조
    //--------------------------------------------------------------------------
    //국가코드
    sEdit14.Text := qryStandard2WITAK_NATION_CODE.AsString;
    //국가명
    sEdit35.Text := qryStandard2WITAK_NATION_NAME.AsString;
    //상호1 주소1
    sEdit40.Text := qryStandard2WITAK_SANGHO1.AsString;
    sEdit43.Text := qryStandard2WITAK_ADDR1.AsString;
    //상호2 주소2
    sEdit41.Text := qryStandard2WITAK_SANGHO2.AsString;
    sEdit44.Text := qryStandard2WITAK_ADDR2.AsString;
    //상호3 주소3
    sEdit42.Text := qryStandard2WITAK_SANGHO3.AsString;
    sEdit45.Text := qryStandard2WITAK_ADDR3.AsString;
    
  end;
end;

procedure TUI_KPTA_DocNormal_frm.FormCreate(Sender: TObject);
begin
  inherited;
  FCancel := False;
  FAutoCalc := True;
  sPageControl1.ActivePageIndex := 0;
end;

procedure TUI_KPTA_DocNormal_frm.sTabSheet2Show(Sender: TObject);
begin
  inherited;
  ReadStandard2;
  ReadTaken;
end;

procedure TUI_KPTA_DocNormal_frm.ReadTaken;
begin
  with DataModule_Conn.qryTaken do
  begin
    //--------------------------------------------------------------------------
    // 수탁제조
    //--------------------------------------------------------------------------
    //번호
    sEdit3.Text  := FieldByName('TAKE_NO').AsString;
    //국가코드
    sEdit46.Text := FieldByName('NATION_CODE').AsString;
    //국가명
    sEdit47.Text := FieldByName('NATION_NAME').AsString;
    //상호1 주소1
    sEdit48.Text := FieldByName('TAKE_SANGHO1').AsString;
    sEdit53.Text := FieldByName('TAKE_ADDR1').AsString;
    //상호2 주소2
    sEdit49.Text := FieldByName('TAKE_SANGHO2').AsString;
    sEdit54.Text := FieldByName('TAKE_ADDR2').AsString;
    //상호3 주소3
    sEdit50.Text := FieldByName('TAKE_SANGHO3').AsString;
    sEdit55.Text := FieldByName('TAKE_ADDR3').AsString;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sDBGrid2ScrollData(Sender: TObject);
begin
  inherited;
  ReadTaken;
end;

procedure TUI_KPTA_DocNormal_frm.sButton13Click(Sender: TObject);
begin
  inherited;
//------------------------------------------------------------------------------
// 읽기전용 해제
//------------------------------------------------------------------------------
   ReadOnlyControl(sPanel73);
//------------------------------------------------------------------------------
// 그리드 잠금
//------------------------------------------------------------------------------
    sDBGrid2.Enabled := False;   
//------------------------------------------------------------------------------
// 버튼활성화
//------------------------------------------------------------------------------
    sButton12.Enabled := False;
    sButton13.Enabled := False;
    sButton14.Enabled := False;

    sButton15.Enabled := True;
    sButton16.Enabled := True;   
//------------------------------------------------------------------------------
// 수정모드
//------------------------------------------------------------------------------
  DataModule_Conn.qryTaken.Edit;

end;

procedure TUI_KPTA_DocNormal_frm.sButton14Click(Sender: TObject);
begin
  inherited;
  IF DataModule_Conn.qryTaken.RecordCount = 0 Then Exit;

  IF MessageBox(Self.Handle,MSG_DEL_TAKEN,'삭제확인',MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
  begin
    DataModule_Conn.qryTaken.Delete;
    ClearControl(sPanel73);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sButton6Click(Sender: TObject);
begin
  inherited;
  IF DataModule_Conn.qryStandard2.RecordCount = 0 Then Exit;

  IF MessageBox(Self.Handle,MSG_DEL_STANDARD2,'삭제확인',MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
  begin
    DeleteMake;
    DeleteCheck;

    DataModule_Conn.qryTaken.First;
    while not DataModule_Conn.qryTaken.Eof do
    begin
      DataModule_Conn.qryTaken.Delete;
    end;
    ClearControl(sPanel73);

    DataModule_Conn.qryStandard2.Delete;
    ClearControl(sPanel44);
    ReadStandard2;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.DeleteCheck;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM [CHECK] WHERE DOC_NO = '+QuotedStr(DataModule_Conn.qryStandard2DOC_NO.AsString)+' AND SERIAL_NO = '+QuotedStr(DataModule_Conn.qryStandard2SERIAL_NO.AsString)+' AND SERIAL_CODE = ''FR2''';
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.DeleteMake;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM [MAKE] WHERE DOC_NO = '+QuotedStr(DataModule_Conn.qryStandard2DOC_NO.AsString)+' AND SERIAL_NO = '+QuotedStr(DataModule_Conn.qryStandard2SERIAL_NO.AsString)+' AND SERIAL_CODE = ''FR2''';
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

function TUI_KPTA_DocNormal_frm.CopyDocument(BaseDocNo : string):TModalResult;
begin

end;

procedure TUI_KPTA_DocNormal_frm.sTabSheet1Show(Sender: TObject);
begin
  inherited;
  IF sDBGrid1.DataSource.DataSet.Active Then
  begin
    sCurrencyEdit6.Value := sDBGrid1.DataSource.DataSet.RecordCount;
    sCurrencyEdit1.Value := TotalAMT;
    If (sCurrencyEdit2.Value <> sCurrencyEdit1.Value) AND FAutoCalc AND (Self.Tag = 0) Then
    begin
      IF MessageBox(SElf.Handle, Pchar('품목사항이 변경되어 결제금액이 변경되었습니다. 계산된 금액으로 적용하시겠습니까?'#13#10'변경전 결제금액:'+sCurrencyEdit2.Text+#13#10'변경후 결제금액:'+sCurrencyEdit1.Text+#13#10'한번 취소후에는 물어보지 않습니다'), '결제금액 변경안내', MB_OKCANCELQUESTION) = ID_OK Then
      begin
        sCurrencyEdit2.Value := sCurrencyEdit1.Value;
      end
      else
        FAutoCalc := False;
    end;
  end;
end;

function TUI_KPTA_DocNormal_frm.TotalAMT: Currency;
begin
  Result := 0;
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT ISNULL(SUM(MODEL_AMT),0) as TOTAL_AMT FROM [STANDARD2] WHERE DOC_NO = '+QuotedStr(FDocNo);
      Open;
      Result := FieldByName('TOTAL_AMT').AsCurrency;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sSpeedButton16Click(Sender: TObject);
begin
  inherited;

  IF (not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit])) AND (sPageControl1.ActivePageIndex = 1) Then Exit;

  if Assigned( UI_Company_frm ) Then UI_Company_frm.Close; 


  UI_CompanyModal_frm := TUI_CompanyModal_frm.Create(Self);
  try
    UI_CompanyModal_frm.Caption := '수출자 선택';
    IF UI_CompanyModal_frm.ShowModal = mrOk Then
    begin
      sEdit18.Text := UI_CompanyModal_frm.CompanyName;
      sEdit23.Text := UI_CompanyModal_frm.CompanyAddr;
      sEdit19.Text := UI_CompanyModal_frm.CompanyNation;
      edt_jejegubunChange(sEdit19);
    end;

  finally
    FreeAndNil(UI_CompanyModal_frm);
  end;

end;

procedure TUI_KPTA_DocNormal_frm.sDBGrid1ScrollData(Sender: TObject);
begin
  inherited;
  ReadStandard2;
  ReadTaken;
end;

procedure TUI_KPTA_DocNormal_frm.sEdit34Exit(Sender: TObject);
begin
  inherited;
  If DataModule_Conn.qryStandard1.FieldByName('QUALITY_AGENCY_NAME').AsString = sEdit34.Text Then
    sEdit34.Text := DataModule_Conn.qryStandard1.FieldByName('QUALITY_AGENCY_NAME').AsString;
end;

function TUI_KPTA_DocNormal_frm.ViewDocument: TModalResult;
begin
//------------------------------------------------------------------------------
// Standard1 자료 가져오기
//------------------------------------------------------------------------------
  with DataModule_Conn.qryStandard1 do
  begin
    //신청번호
    FDocNo := DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString;

    //------------------------------------------------------------------------------
    // 이미 한번전송된 건이면 전송구분을 강제로 재전송으로 변경
    //------------------------------------------------------------------------------
//    IF not DataModule_Conn.qryStandard1.FieldByName('isFirstSend').AsBoolean Then
//      sComboBox1.ItemIndex := 1
//    else
    sComboBox1.ItemIndex := setCodeFromCombobox(sComboBox1,DataModule_Conn.qryStandard1.FieldByName('SEND_TYPE').AsString,'[');
    sComboBox1Select(sComboBox1);

    IF sComboBox1.ItemIndex = 2 Then
      sLabel1.Caption := '표준통관 예정보고서(한국의약품수출입협회) - 취소요청서'
    else
      sLabel1.Caption := '표준통관 예정보고서(한국의약품수출입협회)';

    edt_DocNo1.Text := LeftStr(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString,5);
    edt_DocNo2.Text := MidStr(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString,6,2);
    edt_DocNo3.Text := MidStr(DataModule_Conn.qryStandard1.FieldByName('DOC_NO').AsString,8,6);
    //신청일자
    edt_RequestDate.Text := FormatDateTime('YYYYMMDD',DataModule_Conn.qryStandard1.FieldByName('REQUEST_DATE').AsDateTime);
    //제재구분
    edt_jejegubun.Text := FieldByName('JEJE_GUBUN').AsString;
    //신청문서구분
    IF FieldByName('DOC_GUBUN').AsString = '1CC' Then
      sCombobox2.ItemIndex := 0
    else
    IF FieldByName('DOC_GUBUN').AsString = '1CB' Then
      sCombobox2.ItemIndex := 1;
    //총 항목수
    sCurrencyEdit6.Value := FieldByName('TOTAL_COUNT').AsInteger;
    //취소사유
    IF FieldByName('SEND_TYPE').AsString = '1' Then
      sMemo5.Lines.Text := FieldByName('CANCEL_REASON').AsString;

    //--------------------------------------------------------------------------
    // 수입자
    //--------------------------------------------------------------------------
    //사업자등록번호
    sMaskEdit2.Text := FieldByName('IMPORT_SAUP_NO').AsString;
    //상호
    sEdit6.Text := FieldByName('IMPORT_SANGHO').AsString;
    //성명
    sEdit7.Text := FieldByName('IMPORT_DAEPYO').AsString;
    //허가(등록)번호
    sEdit8.Text := FieldByName('IMPORT_TRADE_NO').AsString;
    //우편번호
    sEdit9.Text := FieldByName('IMPORT_POST_NO').AsString;
    sEdit10.Text := FieldByName('IMPORT_ADDR1').AsString;
    sEdit11.Text := FieldByName('IMPORT_ADDR2').AsString;

    //--------------------------------------------------------------------------
    // 수입화주
    //--------------------------------------------------------------------------
    //수입자와 동일
    sCheckBox1.Checked := FieldByName('IMPORT_TYPE').AsBoolean;
    //사업자등록번호
    sMaskEdit3.Text := FieldByName('HWAJU_SAUP_NO').AsString;
    //상호
    sEdit12.Text := FieldByName('HWAJU_SANGHO').AsString;
    //성명
    sEdit13.Text := FieldByName('HWAJU_DAEPYO').AsString;
    //주소
    sEdit15.Text := FieldByName('HWAJU_POST_NO').AsString;
    sEdit16.Text := FieldByName('HWAJU_ADDR1').AsString;
    sEdit17.Text := FieldByName('HWAJU_ADDR2').AsString;

    //--------------------------------------------------------------------------
    // 수출자
    //--------------------------------------------------------------------------
    //상호
    sEdit18.Text := FieldByName('EXPORT_SANGHO').AsString;
    //주소
    sEdit23.Text := FieldByName('EXPORT_ADDR1').AsString;
    //국가
    sEdit19.Text := FieldByName('EXPORT_NATION_CODE').AsString;

    //--------------------------------------------------------------------------
    // 신고일반
    //--------------------------------------------------------------------------
    //인도조건
    sEdit21.Text := FieldByName('INDO_TYPE').AsString;
    //통화종류
    sEdit30.Text := FieldByName('PAY_UNIT').AsString;
    //결제방법
    sEdit24.Text := FieldByName('PAY_TYPE').AsString;
    //결제금액
    sCurrencyEdit2.Value := FieldByName('PAY_AMT').AsCurrency;
    //결제기간
    sEdit32.Text := FieldByName('PAY_BETWEEN_DATE').AsString;
    //국내도착항
    sEdit26.Text := FieldByName('DEST_PORT_CODE').AsString;
    //품질검사기관
    sEdit33.Text := FieldByName('QUALITY_AGENCY_CODE').AsString;
    sEdit4.Visible := sEdit33.Text = '99';
    If sEdit4.Visible Then
      sEdit4.Text := DataModule_Conn.qryStandard1.FieldByName('QUALITY_AGENCY_NAME').AsString;

    //최초검정기관
    sEdit28.Text := FieldByName('FIRST_CHECK_AGENCY_CODE').AsString;
    //관할지방 식품의약품 안전청
    sComboBox3.ItemIndex := setCodeFromCombobox(sComboBox3,FieldByName('REGION_CODE').AsString,'[');
    //수입자기재사항
    sMemo1.Text := FieldByName('IMPORT_MEMO').AsString;
  end;

//------------------------------------------------------------------------------
// 캡션변경
//------------------------------------------------------------------------------
  FCaption := '표준통관예정보고서 - ['+FDocNo+']';
//------------------------------------------------------------------------------
// 창 띄우기
//------------------------------------------------------------------------------
  Self.ShowModal;
end;

function TUI_KPTA_DocNormal_frm.CancelDocument: TModalResult;
begin
  FCancel := True;
  Result := EditDocument;
end;

procedure TUI_KPTA_DocNormal_frm.sSpeedButton17Click(Sender: TObject);
var
  TMP_STR : String;
begin
  inherited;
  IF not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit]) Then Exit;

  dialog_PUMLIST_frm := Tdialog_PUMLIST_frm.Create(Self);
  try
    with dialog_PUMLIST_frm do
    begin
      DOCGB := edt_jejegubun.Text;
      IF ShowModal = mrOK Then
      begin
        //품목코드
        TMP_STR := getField('GOODS_CODE').AsString;
        edt_pum1.Text := LeftStr( TMP_STR , 10 );
        edt_pum2.Text := MidStr( TMP_STR, 11, 3);
        edt_pum3.Text := MidStr( TMP_STR, 14, 4);
        edt_pum4.Text := MidStr( TMP_STR, 18, 6);
        edt_pum5.Text := MidStr( TMP_STR, 24, 3);
        //세번부호
        edt_Hs.Text := getField('HSCD').AsString;
        DataModule_Conn.qryStandard2.FieldByName('HS').AsString := edt_Hs.Text;
        //거래품명
        sMemo2.Text := getField('TRADE_NAME').AsString;
        //모델규격
        sMemo3.Text := getField('MODEL_SIZE').AsString;
        //성분
        sMemo4.Text := getField('MODEL_SIZE_INGREDIENT').AsString;
        //식약청기준코드
        sEdit52.Text := getField('DRUG_STANDARD_CODE').AsString;

        //기능성화장품
        sComboBox6.ItemIndex := setCodeFromCombobox(sComboBox6, getField('COSMETIC_GUBUN').AsString,'-');
        //DMF대상구분
        sComboBox7.ItemIndex := setCodeFromCombobox(sComboBox7, getField('DMF').AsString,'-');
        //BGMP대상구분
        sComboBox8.ItemIndex := setCodeFromCombobox(sComboBox8, getField('BGMP').AsString,'-');

        //허가번호
        sEdit39.Text := getField('PERMIT_SINGO_NO').AsString;
        //허가일자
        sMaskEdit4.Text := getField('PERMIT_SINGO_DATE').AsString;

        //BSE대상품목
        sComboBox4.ItemIndex := setCodeFromCombobox(sComboBox6, getField('BSE_CODE').AsString,'-');
        sComboBox4Select(sCombobox4);
        //BSE원산지
        sEdit59.Text := getField('BSE_ORIGIN_NATION_CODE').asString;
        sEdit60.Text := getField('BSE_ORIGIN_NATION_NAME').asString;
        //기원물질
        sEdit61.Text := getField('ORIGIN_MATTER').asString;
        //추출부위
        sEdit62.Text := getField('EXTRACTION').asString;
        //Batch No
        sEdit63.Text := getField('BATCH_NO').asString;

        //원산지
        sEdit64.Text := getField('ORIGIN_NATION_CODE').asString;
        sEdit65.Text := getField('ORIGIN_NATION_NAME').asString;

        //위탁제조
        sEdit14.Text := getField('WITAK_NATION_CODE').AsString;
        sEdit35.Text := getField('WITAK_NATION_NAME').AsString;
        sEdit40.Text := getField('WITAK_SANGHO1').AsString;
        sEdit41.Text := getField('WITAK_SANGHO2').AsString;
        sEdit42.Text := getField('WITAK_SANGHO3').AsString;
        sEdit43.Text := getField('WITAK_ADDR1').AsString;
        sEdit44.Text := getField('WITAK_ADDR2').AsString;
        sEdit45.Text := getField('WITAK_ADDR3').AsString;

        //수탁제조
        //기존 수탁제조 모두 삭제
        IF DataModule_Conn.qryTaken.RecordCount > 0 Then
        begin
          with TADOQuery.Create(nil) do
          begin
            try
              Connection := DataModule_Conn.KisConn;
              SQL.Text := 'DELETE FROM TAKEN WHERE DOC_NO = '+QuotedStr(FDocNo)+' AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(edt_pumSerialBuho.Text);
              ExecSQL;
            finally
              Close;
              Free;
            end;
          end;
        end;
        DataModule_Conn.qryTaken.Close;
        DataModule_Conn.qryTaken.Open;
        ReadTaken;

        IF Trim(getField('TAKE_NATION_CODE').AsString) <> '' Then
        begin

          NewTaken;
          sEdit46.Text := getField('TAKE_NATION_CODE').AsString;
          sEdit47.Text := getField('TAKE_NATION_NAME').AsString;
          sEdit48.Text := getField('TAKE_SANGHO1').AsString;
          sEdit49.Text := getField('TAKE_SANGHO2').AsString;
          sEdit50.Text := getField('TAKE_SANGHO3').AsString;
          sEdit53.Text := getField('TAKE_ADDR1').AsString;
          sEdit54.Text := getField('TAKE_ADDR2').AsString;
          sEdit55.Text := getField('TAKE_ADDR3').AsString;
          Self.sButton15Click(sButton15);
        end;
      end;
    end;
  finally
    FreeAndNil(dialog_PUMLIST_frm);
  end;
end;

procedure TUI_KPTA_DocNormal_frm.sSpeedButton19Click(Sender: TObject);
begin
  inherited;
  IF not (DataModule_Conn.qryStandard2.State in [dsInsert, dsEdit]) Then Exit;

  dlg_MtlrsList_frm := Tdlg_MtlrsList_frm.Create(Self);
  try
    If dlg_MtlrsList_frm.RunDialog(sEdit52.Text) = mrOK Then
    begin
      sEdit52.Text := dlg_MtlrsList_frm.Field[2].AsString;

      IF AnsiMatchText(edt_jejegubun.Text, ['1AG','1BG','1AR']) Then
      begin
        sMemo4.Clear;
        sMemo4.Text := '별지첨부(문서번호 : '+dlg_MtlrsList_frm.Field[2].AsString+')';
      end;
    end;
  finally
    FreeAndNil(dlg_MtlrsList_frm);
  end;
end;
end.
