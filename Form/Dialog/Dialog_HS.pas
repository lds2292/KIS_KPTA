unit Dialog_HS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBTables, ParentForm, StdCtrls, sCheckBox, sEdit,
  Mask, sMaskEdit, sButton, ExtCtrls, sPanel, sSkinProvider;

type
  TDialog_HS_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sButton3: TsButton;
    sButton4: TsButton;
    sPanel2: TsPanel;
    sMaskEdit1: TsMaskEdit;
    sPanel3: TsPanel;
    sEdit1: TsEdit;
    sPanel4: TsPanel;
    sEdit2: TsEdit;
    sCheckBox1: TsCheckBox;
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function NewHs:TModalResult;
    function EditHs(Fields : TFields):TModalResult;
  end;

var
  Dialog_HS_frm: TDialog_HS_frm;

implementation

uses dmConn, CommonLib;

{$R *.dfm}

{ TDialog_HS_frm }

function TDialog_HS_frm.EditHs(Fields: TFields): TModalResult;
begin
  Result := mrCancel;
  sMaskEdit1.Text := Fields.FieldByName('HS_CODE').AsString;
  sMaskEdit1.Enabled := false;
  sCheckBox1.Checked := Fields.FieldByName('USED').AsBoolean;
  sEdit1.Text := Fields.FieldByName('HS_NAME').AsString;
  sEdit2.Text := Fields.FieldByName('HS_NAME_ENG').AsString;

  IF Self.ShowModal = mrOK Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'UPDATE HS SET HS_NAME = '+QuotedStr(sEdit1.Text)+
                    ',HS_NAME_ENG = '+QuotedStr(sEdit2.Text)+
                    ',USED = '+Bool2StrKIS(sCheckBox1.Checked)+
                    'WHERE HS_CODE = '+QuotedStr(sMaskEdit1.Text);
        ExecSQL;
      finally
        Close;
        Free;
      end;
    end;
    Result := mrOk;
  end;
end;

function TDialog_HS_frm.NewHs: TModalResult;
begin
  Result := mrCancel;
  sMaskEdit1.Enabled := True;  
  IF Self.ShowModal = mrOK Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'INSERT INTO HS(HS_CODE,HS_NAME,HS_NAME_ENG,USED) VALUES('+QuotedStr(sMaskEdit1.Text)+','+
                    QuotedStr(sEdit1.Text)+','+
                    QuotedStr(sEdit2.Text)+','+
                    BoolToStr(sCheckBox1.Checked)+')';
        ExecSQL;
      finally
        Close;
        Free;
      end;
    end;
    Result := mrOk;
  end;
end;

procedure TDialog_HS_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  IF sMaskEdit1.Enabled Then
  begin
  //------------------------------------------------------------------------------
  // 세번부호 존재하는지 확인
  //------------------------------------------------------------------------------
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'SELECT HS_NAME, HS_NAME_ENG FROM HS WHERE HS_CODE = '+QuotedStr(sMaskEdit1.Text);
        Open;

        if RecordCount > 0 Then
        begin
          sMaskEdit1.SetFocus;
          MessageBox(Self.Handle,PChar('HS부호['+sMaskEdit1.Text+']는 이미 존재하는 HS부호입니다'#13#10+FieldByName('HS_NAME').AsString+#13#10+FieldByName('HS_NAME_ENG').AsString),'HS생성 오류',MB_OK+MB_ICONERROR);
          Exit;
        end;
      finally
        Close;
        Free;
      end;
    end;
  end;
  ModalResult := mrOk;
end;

procedure TDialog_HS_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
