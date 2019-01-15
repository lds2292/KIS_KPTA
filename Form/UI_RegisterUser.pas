unit UI_RegisterUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, ExtCtrls, sPanel, sLabel, ADODB;

type
  TUI_RegisterUser_frm = class(TForm)
    sPanel1: TsPanel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sLabel1: TsLabel;
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
    CreateUserID : String;    
  public
    { Public declarations }
    property UserID:String  read CreateUserID;
  end;

var
  UI_RegisterUser_frm: TUI_RegisterUser_frm;

implementation

uses dmIcon, DB, dmConn, CommonLib, UI_Login, UI_ConnectionSetting;

{$R *.dfm}

{ TUI_RegisterUser_frm }

procedure TUI_RegisterUser_frm.sButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TUI_RegisterUser_frm.sButton1Click(Sender: TObject);
var
  sMSG : String;
begin
//------------------------------------------------------------------------------
// Connection 연결
//------------------------------------------------------------------------------
  if not Assigned(DataModule_Conn) Then DataModule_Conn := TDataModule_Conn.Create(Application);

  UI_ConnectionSetting_frm := TUI_ConnectionSetting_frm.Create(Self);
  try
    UI_ConnectionSetting_frm.getConnectionString(UI_Login_frm.sComboBox1.Text);
    DataModule_Conn.getConnectionString;
  finally
    FreeAndNil(UI_ConnectionSetting_frm);
  end;

  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT ISNULL(MAX(USER_ID),0) as MAX_USER_ID FROM [USER_ID]';
      Open;

      CreateUserID := IntToStr( FieldByName('MAX_USER_ID').AsInteger + 1);
      Close;

      SQL.Text := 'INSERT INTO [USER_ID] VALUES('+QuotedStr(CreateUserID)+','+QuotedStr(sEdit1.Text)+','+QuotedStr(GetHashString(sEdit2.Text))+')';
      ExecSQL;

      sMSG := '등록이 완료되었습니다'#13#10+
              '======================'#13#10+
              'ID : '+CreateUserID+#13#10+
              '아이디를 확인해주세요';

      MessageBox(Self.Handle,PChar(sMSG),'등록완료',MB_OK+MB_ICONINFORMATION);
      ModalResult := mrOk;
    finally
      Close;
      Free;
    end;
  end;
end;

end.
