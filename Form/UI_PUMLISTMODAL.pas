unit UI_PUMLISTMODAL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UI_PUMLIST, DB, ADODB, sSkinProvider, Buttons, sSpeedButton,
  Grids, DBGrids, acDBGrid, StdCtrls, sButton, Mask, sMaskEdit, sMemo,
  sEdit, sComboBox, sLabel, ExtCtrls, sPanel, StrUtils, QuickRpt, QRCtrls;

type
  TUI_PUMLISTMODAL_frm = class(TUI_PUMLIST_frm)
    sButton15: TsButton;
    procedure sButton2Click(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton15Click(Sender: TObject);
  private
    { Private declarations }
    FDOCGB : String;
  public
    { Public declarations }
    property DOCGB: String  read FDOCGB write FDOCGB;
    function getField(sFieldName : String):TField;
    procedure ReadList; override;
  end;

var
  UI_PUMLISTMODAL_frm: TUI_PUMLISTMODAL_frm;

implementation

{$R *.dfm}

function TUI_PUMLISTMODAL_frm.getField(sFieldName: String): TField;
begin
  Result := qryList.FieldByName(sFieldName);
end;

procedure TUI_PUMLISTMODAL_frm.sButton2Click(Sender: TObject);
begin
//  inherited;
  ModalResult := mrCancel;
end;

procedure TUI_PUMLISTMODAL_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  IF (Sender as TsDBGrid).ScreenToClient(Mouse.CursorPos).Y > 17 Then
  begin
    sButton15Click(nil);
  end;
end;

procedure TUI_PUMLISTMODAL_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;

end;

procedure TUI_PUMLISTMODAL_frm.sButton15Click(Sender: TObject);
begin
  inherited;
  IF UpperCase( MidStr(edt_GOODS_CODE.Text, 11, 3) ) <> UpperCase(FDOCGB) Then
  begin
    MessageBox(Self.Handle, '제재구분이 다르기 때문에 가져올 수 없습니다', '가져오기 오류', MB_OK+MB_ICONERROR);
    Exit;
  end
  else
    ModalResult := mrOk;
end;

procedure TUI_PUMLISTMODAL_frm.ReadList;
begin
//  inherited;
//  with qryList do
//  begin
//    Close;
//    SQL.Text := 'SELECT * FROM PUMLIST';
//    SQL.Add('WHERE SUBSTRING(GOODS_CODE, 11, 3) = '+QuotedStr(FDOCGB)+' AND  REG_DT between'+QuotedStr(sMaskEdit1.Text)+' AND '+QuotedStr(sMaskEdit2.Text));
//    IF Trim(sEdit1.Text) <> '' Then
//      SQL.Add('AND GOODS_CODE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
//    SQL.Add('ORDER BY REG_DT DESC');
//    Open;
//  end;

  with qryList do
  begin
    Close;
    SQL.Text := 'SELECT * FROM PUMLIST';
//    SQL.Add('WHERE REG_DT between'+QuotedStr(sMaskEdit1.Text)+' AND '+QuotedStr(sMaskEdit2.Text));
    SQL.Add('WHERE SUBSTRING(GOODS_CODE, 11, 3) = '+QuotedStr(FDOCGB)+' AND  REG_DT between'+QuotedStr(sMaskEdit1.Text)+' AND '+QuotedStr(sMaskEdit2.Text));
    IF Trim(sEdit1.Text) <> '' Then
    begin
      Case sComboBox1.ItemIndex of
        0: SQL.Add('AND TRADE_NAME LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        1: SQL.Add('AND MODEL_SIZE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
        2: SQL.Add('AND MODEL_SIZE_INGREDIENT LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
      end;
//      SQL.Add('AND GOODS_CODE LIKE '+QuotedStr('%'+sEdit1.Text+'%'));
    end;
    SQL.Add('ORDER BY REG_DT DESC');
    Open;
  end;

end;

end.
