unit Dialog_Check;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, StdCtrls, sButton, sLabel, sEdit,
  ExtCtrls, sPanel, ADODB, DB, StrUtils;

type
  TDialog_Check_frm = class(TParentForm_frm)
    sPanel40: TsPanel;
    edt_ResultNo2: TsEdit;
    edt_ResultNo3: TsEdit;
    edt_ResultNo4: TsEdit;
    edt_ResultNo5: TsEdit;
    edt_ResultNo6: TsEdit;
    edt_ResultNo7: TsEdit;
    edt_ResultNo8: TsEdit;
    edt_ResultNo9: TsEdit;
    edt_ResultNo10: TsEdit;
    sPanel12: TsPanel;
    edt_ResultNo1: TsEdit;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sPanel6: TsPanel;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sPanel9: TsPanel;
    sPanel10: TsPanel;
    sPanel11: TsPanel;
    sPanel13: TsPanel;
    sPanel14: TsPanel;
    sPanel15: TsPanel;
    sPanel16: TsPanel;
    sPanel17: TsPanel;
    sPanel18: TsPanel;
    sPanel19: TsPanel;
    sPanel20: TsPanel;
    sPanel21: TsPanel;
    sPanel22: TsPanel;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sButton2: TsButton;
    edt_Qty2: TsEdit;
    edt_Qty3: TsEdit;
    edt_Qty4: TsEdit;
    edt_Qty5: TsEdit;
    edt_Qty6: TsEdit;
    edt_Qty7: TsEdit;
    edt_Qty8: TsEdit;
    edt_Qty9: TsEdit;
    edt_Qty10: TsEdit;
    edt_Qty1: TsEdit;
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDocNo : String;
    FSerialNo : String;
    procedure ReadList;
    procedure DeleteList;
    procedure WriteList;
    function ComapreDate:Boolean;    
  public
    { Public declarations }
    procedure OpenDialog(DocNo,SerialNo : String);    
  end;

var
  Dialog_Check_frm: TDialog_Check_frm;

implementation

uses dmConn;

{$R *.dfm}

{ TDialog_Check_frm }

function TDialog_Check_frm.ComapreDate: Boolean;
var
  i : Integer;
  DataSet_strResultNo, DataSet_strQty : string;
  strResultNo, strQty : string;
begin
  Result := false;
  with DataModule_Conn.qryCheck do
  begin
    First;
    for i := 1 to 10 do
    begin
      strResultNo := Trim((Self.FindComponent('edt_ResultNo'+IntToStr(i)) as TsEdit).Text);
      strQty := AnsiReplaceText(Trim((Self.FindComponent('edt_Qty'+IntToStr(i)) as TsEdit).Text),',','');

      DataSet_strResultNo   := Trim(FieldByName('CHECK_B_NO').AsString);
      DataSet_strQty := AnsiReplaceText(Trim(FieldByName('CHECK_QTY').AsString),',','');

      DataModule_Conn.qryCheck.Next;

      IF (strResultNo+strQty) <> (DataSet_strResultNo+DataSet_strQty) Then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

procedure TDialog_Check_frm.DeleteList;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM [CHECK] WHERE DOC_NO = '+QuotedStr(FDocNo)+' AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(FSerialNo);
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TDialog_Check_frm.OpenDialog(DocNo, SerialNo: String);
var
  nindex : integer;
begin
  FDocNo := DocNo;
  FSerialNo := SerialNo;

  ReadList;

  DataModule_Conn.qryCheck.First;
  nindex := 1;
  while not DataModule_Conn.qryCheck.Eof do
  begin
    (Self.FindComponent('edt_ResultNo'+IntToStr(nindex)) as TsEdit).Text := DataModule_Conn.qryCheck.FieldByName('CHECK_B_NO').AsString;
    (Self.FindComponent('edt_Qty'+IntToStr(nindex)) as TsEdit).Text := DataModule_Conn.qryCheck.FieldByName('CHECK_QTY').AsString;
    Inc(nIndex);
    DataModule_Conn.qryCheck.Next;
  end;

  Self.ShowModal;
end;

procedure TDialog_Check_frm.ReadList;
begin
  with DataModule_Conn.qryCheck do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDocNo;
    Parameters.ParamByName('SERIAL_NO').Value := FSerialNo;
    Open;
  end;
end;

procedure TDialog_Check_frm.WriteList;
var
  i : Integer;
  strResultNo, strQty : string;
begin
  with DataModule_Conn.qryCheck do
  begin
    for i := 1 to 10 do
    begin
      strResultNo := (Self.FindComponent('edt_ResultNo'+IntToStr(i)) as TsEdit).Text;
      strQty := AnsiReplaceText( (Self.FindComponent('edt_Qty'+IntToStr(i)) as TsEdit).Text , ',', '');

      IF (Trim(strResultNo) = '') or (Trim(strQty) = '') Then Continue;

      Append;
      FieldByName('DOC_NO').AsString := FDocNo;
      FieldByName('SERIAL_CODE').AsString := 'FR2';
      FieldByName('SERIAL_NO').AsString := FSerialNo;
      FieldByName('CHECK_SERIAL_NO').AsString := FormatFloat('00',i);
      FieldByName('CHECK_B_NO').AsString := strResultNo;
      FieldByName('CHECK_QTY' ).AsString := strQty;
      Post;
    end;
  end;
end;
procedure TDialog_Check_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  IF ComapreDate Then
  begin
    DeleteList;
    WriteList;
  end;

  ModalResult := mrOk;
end;

procedure TDialog_Check_frm.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  with DataModule_Conn.qryStandard2 do
  begin
    if not (State in [dsInsert, dsEdit]) Then
    begin
      for i := 0 to Self.ControlCount-1 do
      begin
        IF Self.Controls[i] is TsEdit Then
        begin
          (Self.Controls[i] as TsEdit).ReadOnly := True;
          (Self.Controls[i] as TsEdit).Color := clBtnFace;
        end;
      end;
    end
    else
    begin
      for i := 0 to Self.ControlCount-1 do
      begin
        IF Self.Controls[i] is TsEdit Then
        begin
          (Self.Controls[i] as TsEdit).ReadOnly := False;
          (Self.Controls[i] as TsEdit).Color := clWhite;
        end;
      end;
    end;
  end;
end;

end.
