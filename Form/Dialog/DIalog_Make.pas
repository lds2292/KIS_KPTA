unit DIalog_Make;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, StdCtrls, sEdit, Buttons, sSpeedButton, Mask,
  sMaskEdit, sLabel, sButton, ExtCtrls, sPanel, sSkinProvider, StrUtils;

type
  TDIalog_Make_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sButton2: TsButton;
    sLabel1: TsLabel;
    sPanel40: TsPanel;
    edt_MakeDate1: TsMaskEdit;
    sSpeedButton11: TsSpeedButton;
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
    edt_MakeNo1: TsEdit;
    edt_MakeNo2: TsEdit;
    edt_MakeNo3: TsEdit;
    edt_MakeNo4: TsEdit;
    edt_MakeNo5: TsEdit;
    edt_MakeNo6: TsEdit;
    edt_MakeNo7: TsEdit;
    edt_MakeNo8: TsEdit;
    edt_MakeNo9: TsEdit;
    edt_MakeNo10: TsEdit;
    sPanel12: TsPanel;
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
    edt_MakeDate2: TsMaskEdit;
    edt_MakeDate3: TsMaskEdit;
    edt_MakeDate4: TsMaskEdit;
    edt_MakeDate5: TsMaskEdit;
    edt_MakeDate6: TsMaskEdit;
    edt_MakeDate7: TsMaskEdit;
    edt_MakeDate10: TsMaskEdit;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    edt_MakeDate9: TsMaskEdit;
    edt_MakeDate8: TsMaskEdit;
    procedure sSpeedButton11Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure edt_MakeDate1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_MakeDate1DblClick(Sender: TObject);
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
  DIalog_Make_frm: TDIalog_Make_frm;

implementation

uses CommonLib, KISCalendar, dmConn, CommonVar, ADODB, DB;

{$R *.dfm}

procedure TDIalog_Make_frm.sSpeedButton11Click(Sender: TObject);
var
  POS : TPoint;
begin
  inherited;
  POS.X := sPanel12.Left;
  POS.Y := sPanel12.Top;

  POS := Self.ClientToScreen(POS);

  KISCalendar_frm.Left := POS.X;
  KISCalendar_frm.Top := POS.Y;

  Case (Sender as TsSpeedButton).tag of
    1: edt_MakeDate1.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate1.Text)));
    2: edt_MakeDate2.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate2.Text)));
    3: edt_MakeDate3.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate3.Text)));
    4: edt_MakeDate4.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate4.Text)));
    5: edt_MakeDate5.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate5.Text)));
    6: edt_MakeDate6.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate6.Text)));
    7: edt_MakeDate7.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate7.Text)));
    8: edt_MakeDate8.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate8.Text)));
    9: edt_MakeDate9.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate9.Text)));
    0: edt_MakeDate10.Text := FormatDateTime('YYYYMMDD',KISCalendar_frm.OpenCalendar(ConvertStr2Date(edt_MakeDate10.Text)));
  end;
end;

procedure TDIalog_Make_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  IF ComapreDate Then
  begin
    DeleteList;
    WriteList;
  end;

  ModalResult := mrOk;
end;

procedure TDIalog_Make_frm.OpenDialog(DocNo,SerialNo : String);
var
  nindex : integer;
begin
  FDocNo := DocNo;
  FSerialNo := SerialNo;
  
  ReadList;

  DataModule_Conn.qryMake.First;
  nindex := 1;
  while not DataModule_Conn.qryMake.Eof do
  begin
    (Self.FindComponent('edt_MakeNo'+IntToStr(nindex)) as TsEdit).Text := DataModule_Conn.qryMake.FieldByName('MAKE_NO').AsString;
    (Self.FindComponent('edt_MakeDate'+IntToStr(nindex)) as TsMaskEdit).Text := DataModule_Conn.qryMake.FieldByName('MAKE_DATE').AsString;
    Inc(nIndex);
    DataModule_Conn.qryMake.Next;
  end;

  Self.ShowModal;
end;

procedure TDIalog_Make_frm.edt_MakeDate1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = KIS_HELP_KEY Then
  begin
    edt_MakeDate1DblClick(Sender);
  end;
end;

procedure TDIalog_Make_frm.edt_MakeDate1DblClick(Sender: TObject);
begin
  inherited;
  Case (sender as TsMaskEdit).Tag of
    21: sSpeedButton11Click(sSpeedButton11);
    22: sSpeedButton11Click(sSpeedButton1);
    23: sSpeedButton11Click(sSpeedButton2);
    24: sSpeedButton11Click(sSpeedButton3);
    25: sSpeedButton11Click(sSpeedButton4);
    26: sSpeedButton11Click(sSpeedButton5);
    27: sSpeedButton11Click(sSpeedButton6);
    28: sSpeedButton11Click(sSpeedButton7);
    29: sSpeedButton11Click(sSpeedButton8);
    20: sSpeedButton11Click(sSpeedButton9);
  end;
end;

procedure TDIalog_Make_frm.DeleteList;
begin
  with TADOQuery.Create(nil) do
  begin
    try
      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM [MAKE] WHERE DOC_NO = '+QuotedStr(FDocNo)+' AND SERIAL_CODE = ''FR2'' AND SERIAL_NO = '+QuotedStr(FSerialNo);
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TDIalog_Make_frm.ReadList;
begin
  with DataModule_Conn.qryMake do
  begin
    Close;
    Parameters.ParamByName('DOC_NO').Value := FDocNo;
    Parameters.ParamByName('SERIAL_NO').Value := FSerialNo;
    Open;
  end;
end;

procedure TDIalog_Make_frm.WriteList;
var
  i : Integer;
  strMakeNo, strMakeDate : string;
begin
  with DataModule_Conn.qryMake do
  begin
    for i := 1 to 10 do
    begin
      strMakeNo := (Self.FindComponent('edt_MakeNo'+IntToStr(i)) as TsEdit).Text;
      strMakeDate := (Self.FindComponent('edt_MakeDate'+IntToStr(i)) as TsMaskEdit).Text;

      IF (Trim(strMakeNo) = '') or (Trim(strMakeDate) = '') Then Continue;

      Append;
      FieldByName('DOC_NO').AsString := FDocNo;
      FieldByName('SERIAL_CODE').AsString := 'FR2';
      FieldByName('SERIAL_NO').AsString := FSerialNo;
      FieldByName('MAKE_SERIAL_NO').AsString := FormatFloat('00',i);
      FieldByName('MAKE_NO'  ).AsString := strMakeNo;
      FieldByName('MAKE_DATE').AsString := strMakeDate;
      Post;
    end;
  end;
end;

function TDIalog_Make_frm.ComapreDate: Boolean;
var
  i : Integer;
  DataSet_strMakeNo, DataSet_strMakeDate : string;
  strMakeNo, strMakeDate : string;
begin
  Result := false;
  with DataModule_Conn.qryMake do
  begin
    First;
    for i := 1 to 10 do
    begin
      strMakeNo := Trim((Self.FindComponent('edt_MakeNo'+IntToStr(i)) as TsEdit).Text);
      strMakeDate := Trim((Self.FindComponent('edt_MakeDate'+IntToStr(i)) as TsMaskEdit).Text);

      DataSet_strMakeNo   := Trim(FieldByName('MAKE_NO').AsString);
      DataSet_strMakeDate := Trim(FieldByName('MAKE_DATE').AsString);

      DataModule_Conn.qryMake.Next;

      IF (strMakeNo+strMakeDate) <> (DataSet_strMakeNo+DataSet_strMakeDate) Then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

procedure TDIalog_Make_frm.FormShow(Sender: TObject);
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
        end
        else
        IF Self.Controls[i] is TsMaskEdit Then
        begin
          (Self.Controls[i] as TsMaskEdit).ReadOnly := True;
          (Self.Controls[i] as TsMaskEdit).Color := clBtnFace;
        end
        else
        IF Self.Controls[i] is TsSpeedButton Then
        begin
          (Self.Controls[i] as TsSpeedButton).Enabled := False;
        end;
      end;
    end
    else
    begin
      for i := 0 to Self.ControlCount-1 do
      begin
        IF Self.Controls[i] is TsEdit Then
        begin
          (Self.Controls[i] as TsEdit).ReadOnly := false;
          (Self.Controls[i] as TsEdit).Color := clWhite;
        end
        else
        IF Self.Controls[i] is TsMaskEdit Then
        begin
          (Self.Controls[i] as TsMaskEdit).ReadOnly := false;
          (Self.Controls[i] as TsMaskEdit).Color := clWhite;
        end
        else
        IF Self.Controls[i] is TsSpeedButton Then
        begin
          (Self.Controls[i] as TsSpeedButton).Enabled := true;
        end;
      end;
    end;
  end;
end;

end.
