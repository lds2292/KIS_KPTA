unit UI_UserConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, Mask, sMaskEdit, StdCtrls, sEdit,
  ExtCtrls, sSplitter, sButton, sLabel, sPanel, sGroupBox, FileCtrl;

type
  TUI_UserConfig_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sButton1: TsButton;
    sButton3: TsButton;
    sSplitter1: TsSplitter;
    sPanel2: TsPanel;
    edt_SINGO_BUHO: TsEdit;
    sPanel7: TsPanel;
    sPanel3: TsPanel;
    edt_SAUPNO: TsMaskEdit;
    sPanel4: TsPanel;
    edt_SANGHO: TsEdit;
    sPanel5: TsPanel;
    edt_DAEPYO: TsEdit;
    sPanel6: TsPanel;
    edt_POSTNO: TsEdit;
    edt_ADDR1: TsEdit;
    edt_ADDR2: TsEdit;
    sGroupBox1: TsGroupBox;
    sPanel8: TsPanel;
    edt_UnipassID: TsEdit;
    sPanel9: TsPanel;
    edt_UnipassPostBox: TsEdit;
    edt_XMLSendDir: TsEdit;
    sPanel10: TsPanel;
    btnCalc: TsButton;
    sPanel11: TsPanel;
    edt_AprePostBox: TsEdit;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UI_UserConfig_frm: TUI_UserConfig_frm;

implementation

uses dmConn, CommonVar, CommonDef, CommonLib, dmIcon;

{$R *.dfm}

procedure TUI_UserConfig_frm.FormShow(Sender: TObject);
begin
  inherited;
  DataModule_Conn.getConfig;

  edt_SINGO_BUHO.Text := ConfigData.SINGO_BUHO;
  edt_SAUPNO.Text := ConfigData.SAUP_NO;
  edt_SANGHO.Text := ConfigData.SANGHO;
  edt_DAEPYO.Text := ConfigData.DAEPYO;
  edt_POSTNO.Text := ConfigData.POST_NO;
  edt_ADDR1.Text  := ConfigData.ADDR1;
  edt_ADDR2.Text  := ConfigData.ADDR2;
  edt_UnipassID.Text := ConfigData.UNIPASS_ID;
  edt_UnipassPostBox.Text := ConfigData.UNIPASS_POSTBOX;
  edt_AprePostBox.Text := ConfigData.APRE_POSTBOX;
  edt_XMLSendDir.Text := ConfigData.XML_SEND_DIR;
end;

procedure TUI_UserConfig_frm.sButton1Click(Sender: TObject);
var
  f : TForm;
begin
  inherited;
  IF MessageBox(Self.Handle,'입력 항목을 저장 하시겠습니까?','사용자 저장확인',MB_OKCANCEL+MB_ICONQUESTION) = ID_OK Then
  begin
    with ConfigData do
    begin
      SINGO_BUHO := edt_SINGO_BUHO.Text;
      SAUP_NO    := edt_SAUPNO.Text;
      SANGHO     := edt_SANGHO.Text;
      DAEPYO     := edt_DAEPYO.Text;
      POST_NO    := edt_POSTNO.Text;
      ADDR1      := edt_ADDR1.Text;
      ADDR2      := edt_ADDR2.Text;
      UNIPASS_ID := edt_UnipassID.Text;
      UNIPASS_POSTBOX := edt_UnipassPostBox.Text;
      APRE_POSTBOX := edt_AprePostBox.Text;
      XML_SEND_DIR := edt_XMLSendDir.Text;
    end;
    DataModule_Conn.setConfig;
    MessageBox(Self.Handle,'저장이 완료되었습니다','사용자 저장확인',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TUI_UserConfig_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_UserConfig_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_UserConfig_frm := nil;
end;

procedure TUI_UserConfig_frm.btnCalcClick(Sender: TObject);
var
  Dir : String;
begin
  inherited;
  Dir := edt_XMLSendDir.Text;
  if SelectDirectory('전송파일이 저장될 위치를 선택하세요', 'C:\', Dir ) then
    edt_XMLSendDir.Text := Dir;
end;

end.
