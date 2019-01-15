unit dlg_AddCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sCheckBox, sButton, sEdit, QuickRpt, QRCtrls, sLabel,
  ExtCtrls, acImage, sPanel, DB, ADODB, CommonDef;

type
  TReturn = record
    CD_DEF : String;
    CD_SEQ : integer;
  end;
  Tdlg_AddCode_frm = class(TForm)
    sPanel1: TsPanel;
    sImage1: TsImage;
    sLabel1: TsLabel;
    QRShape1: TQRShape;
    edt_CODE: TsEdit;
    edt_Name: TsEdit;
    QRShape2: TQRShape;
    sButton1: TsButton;
    chk_Used: TsCheckBox;
    sButton2: TsButton;
  private
    { Private declarations }
    FWork : TWorkType;
    FReturn : TReturn;
    function RunDialog(FFields : TFields):TModalResult;
    function getMAXSEQ(CD_DEF : String):integer;
  public
    { Public declarations }
    function WriteCode(FFields: TFields):TModalResult;
    function EditCode(FFields : TFields):TModalResult;
    function DelCode(sCD_DEF : string; nCD_SEQ :integer):Boolean;
    property ReturnValue : TReturn Read FReturn;
  end;

var
  dlg_AddCode_frm: Tdlg_AddCode_frm;

implementation

uses
  dmConn, dmIcon, CommonMSG, CommonVar, SQLCreator;

{$R *.dfm}

{ Tdlg_AddCode_frm }

function Tdlg_AddCode_frm.DelCode(sCD_DEF : string; nCD_SEQ :integer):Boolean;
begin
  Result := False;
  if MessageBox(Self.Handle, MSG_DELETE_SELECTED_DATA, '코드삭제 확인', MB_OKCANCELQUESTION) = ID_CANCEL then Exit;

  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM COMCD_D WHERE CD_DEF = '+QuotedStr(sCD_DEF)+' AND CD_SEQ = '+IntToStr(nCD_SEQ);
      ExecSQL;
      Result := True;
    finally
      Close;
      Free;
    end;
  end;
end;

function Tdlg_AddCode_frm.EditCode(FFields: TFields): TModalResult;
begin
  FWork := wtEdit;
  sLabel1.Caption := '공통코드 수정 - '+FFields.FieldByName('CD_DEF').AsString;
  Result := RunDialog(FFields);
end;

function Tdlg_AddCode_frm.getMAXSEQ(CD_DEF: String): integer;
begin
  Result := 1;
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT ISNULL(MAX(CD_SEQ),1) as NEXTSEQ FROM COMCD_D WHERE CD_DEF = '+QuotedStr(CD_DEF);
      Open;
      Result := FieldByName('NEXTSEQ').AsInteger;
    finally
      Close;
      Free;
    end;
  end;
end;

function Tdlg_AddCode_frm.RunDialog(FFields: TFields): TModalResult;
var
  SC : TSQLCreate;
begin
  IF FWork = wtEdit Then
  begin
    edt_CODE.Text := FFields.FieldByName('USE_CD').AsString;
    edt_Name.Text := FFields.FieldByName('USE_CD_NM').AsString;
    chk_Used.Checked := FFields.FieldByName('USED').AsBoolean;
  end
  else
    chk_Used.Checked := FWork = wtIns;

  IF Self.ShowModal = mrOK Then
  begin
    SC := TSQLCreate.Create;
    try
      if FWork = wtIns Then
        SC.DMLType := dmlInsert
      else
      if FWork = wtEdit Then
        SC.DMLType := dmlUpdate;

      SC.SQLHeader('COMCD_D');
      IF Fwork = wtIns Then
      begin
        SC.ADDValue('CD_DEF', FFields.FieldByName('CD_DEF').AsString);
        SC.ADDValue('CD_SEQ', getMAXSEQ(FFields.FieldByName('CD_DEF').AsString)+1);
      end
      else
      if FWork = wtEdit Then
      begin
        SC.ADDWhere('CD_DEF', FFields.FieldByName('CD_DEF').AsString);
        SC.ADDWhere('CD_SEQ', FFields.FieldByName('CD_SEQ').Asinteger);      
      end;

      SC.ADDValue('USE_CD', edt_CODE.Text);
      SC.ADDValue('USE_CD_NM', edt_Name.Text);
      SC.ADDValue('ETC_TXT', edt_CODE.Text);
      SC.ADDValue('ETC_CUR', 0);

      IF chk_Used.Checked Then
        SC.ADDValue('USED', '1')
      else
        SC.ADDValue('USED', '0');

      with TADOQuery.Create(nil) do
      begin
        try
          Connection := DataModule_Conn.KisConn;
          SQL.Text := SC.CreateSQL;
          ExecSQL;
          FReturn.CD_DEF := FFields.FieldByName('CD_DEF').AsString;
          FReturn.CD_SEQ := FFields.FieldByName('CD_SEQ').AsInteger;
        finally
          Close;
          Free;
        end;
      end;

    finally
      SC.Free;
    end;

    Result := mrOk;
  end
  else
    Result := mrCancel;
end;

function Tdlg_AddCode_frm.WriteCode(FFields: TFields): TModalResult;
begin
  FWork := wtIns;
  sLabel1.Caption := '공통코드 추가 - '+FFields.FieldByName('CD_DEF').AsString;
  Result := RunDialog(FFields);  
end;

end.
