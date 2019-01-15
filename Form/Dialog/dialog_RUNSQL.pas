unit dialog_RUNSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, StdCtrls, sMemo, sSkinProvider, DB, ADODB, sButton,
  ExtCtrls, sPanel;

type
  Tdialog_RUNSQL_frm = class(TParentForm_frm)
    sMemo1: TsMemo;
    sPanel1: TsPanel;
    sButton1: TsButton;
    sButton2: TsButton;
    sMemo2: TsMemo;
    ADOQuery1: TADOQuery;
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dialog_RUNSQL_frm: Tdialog_RUNSQL_frm;

implementation

uses
  dmConn, UI_ShowSQLData;

{$R *.dfm}

procedure Tdialog_RUNSQL_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  smemo2.Lines.Clear;

//  IF not FAuthOK Then
//   smemo2.Lines.Add('ERROR AUTH');

  IF Trim(sMemo1.Text) = '' Then
  begin
    smemo2.Lines.Add(FormatDateTime('YYMMDD HH:NN:SS', now)+': 내용을 입력해주세요');
    sMemo1.SetFocus;
    Exit;
  end;

  with ADOQuery1 do
  begin
    SQL.Text := sMemo1.Text;
    ExecSQL;
    smemo2.Lines.Add(FormatDateTime('YYMMDD HH:NN:SS', now)+': ExecSQL명령이 실행되었습니다');
    try
    except
      on E:Exception do
      begin
        smemo2.Lines.Add(FormatDateTime('YYMMDD HH:NN:SS', now)+': '+E.Message);
      end;
    end;
  end;
end;

procedure Tdialog_RUNSQL_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  sMemo2.Lines.Clear;

//  IF not FAuthOK Then
//    sMemo2.Lines.Add('ERROR AUTH');

  IF Trim(sMemo1.Text) = '' Then
  begin
    sMemo2.Lines.Add(FormatDateTime('YYMMDD HH:NN:SS', now)+': 내용을 입력해주세요');
    sMemo1.SetFocus;
    Exit;
  end;

  UI_ShowSQLData_frm := TUI_ShowSQLData_frm.Create(Self);
  try
    ADOQuery1.Close;
    UI_ShowSQLData_frm.DataSource1.DataSet := ADOQuery1;
    ADOQuery1.SQL.Text := sMemo1.Text;
    ADOQuery1.Open;
    UI_ShowSQLData_frm.ShowModal;
  finally
    ADOQuery1.Close;
    FreeAndNil(UI_ShowSQLData_frm);
  end;
end;

procedure Tdialog_RUNSQL_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  dialog_RUNSQL_frm := nil;
end;

end.
