unit Dialog_Company;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, StdCtrls, sEdit, sButton, ExtCtrls, sPanel,
  sSkinProvider, DB, ADODB;

type
  TDialog_Company_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sButton3: TsButton;
    sButton4: TsButton;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    edt_SANGHO: TsEdit;
    sPanel4: TsPanel;
    edt_Addr: TsEdit;
    edt_CODE: TsEdit;
    sPanel5: TsPanel;
    edt_NATION: TsEdit;
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function New:TModalResult;
    function Edit(Fields : TFields):TModalResult;
  end;

var
  Dialog_Company_frm: TDialog_Company_frm;

implementation

uses dmConn;

{$R *.dfm}

{ TParentForm_frm1 }

function TDialog_Company_frm.Edit(Fields: TFields): TModalResult;
begin
  Result := mrCancel;
  edt_CODE.Text   := Fields.FieldByName('FOREIGN_CODE').AsString;
  edt_CODE.Enabled := False;
  edt_SANGHO.Text := Fields.FieldByName('COMPANY_NAME').AsString;
  edt_Addr.Text   := Fields.FieldByName('COMPANY_ADDRESS').AsString;
  edt_NATION.Text := Fields.FieldByName('NATION_CODE').AsString;

  IF Self.ShowModal = mrOK Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'UPDATE FOREIGN_COMPANY SET COMPANY_NAME = '+QuotedStr(edt_SANGHO.Text)+
                    ',COMPANY_ADDRESS = '+QuotedStr(edt_Addr.Text)+
                    ',NATION_CODE = '+QuotedStr(edt_NATION.Text)+
                    'WHERE FOREIGN_CODE = '+QuotedStr(edt_CODE.Text);
        ExecSQL;
      finally
        Close;
        Free;
      end;
    end;
    Result := mrOk;
  end;
end;

function TDialog_Company_frm.New: TModalResult;
begin
  Result := mrCancel;

  edt_CODE.Enabled := True;

  IF Self.ShowModal = mrOK Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'INSERT INTO FOREIGN_COMPANY(FOREIGN_CODE, COMPANY_NAME, SID, COMPANY_ADDRESS, NATION_CODE)'#13#10+
                    'VALUES('+QuotedStr(edt_CODE.Text)+','+
                    QuotedStr(edt_SANGHO.Text)+','+
                    QuotedStr(FormatDateTime('YYYYMMDDHHNNSS',Now)+'G')+','+
                    QuotedStr(edt_Addr.Text)+','+
                    QuotedStr(edt_NATION.Text)+')';
        ExecSQL;
      finally
        Close;
        Free;
      end;
    end;
    Result := mrOk;
  end;
end;

procedure TDialog_Company_frm.sButton3Click(Sender: TObject);
begin
  IF edt_CODE.Enabled Then
  begin
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Text := 'SELECT FOREIGN_CODE, COMPANY_NAME FROM FOREIGN_COMPANY WHERE FOREIGN_CODE = '+QuotedStr(edt_CODE.Text);
        Open;

        if RecordCount > 0 Then
        begin
          edt_CODE.SetFocus;
          MessageBox(Self.Handle,PChar('거래처부호['+edt_CODE.Text+']는 이미 존재하는 거래처부호입니다'#13#10+FieldByName('COMPANY_NAME').AsString),'거래처생성 오류',MB_OK+MB_ICONERROR);
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

procedure TDialog_Company_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
