unit UI_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls, sEdit, sSkinProvider, sSkinManager,
  JvGIF, sLabel, ADODB, sButton, IniFiles, sComboBox;

type
  TUI_Login_frm = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Image1: TImage;
    edt_userid: TsEdit;
    edt_pass: TsEdit;
    sSkinProvider1: TsSkinProvider;
    Image2: TImage;
    sLabel1: TsLabel;
    sButton1: TsButton;
    sButton2: TsButton;
    sComboBox1: TsComboBox;
    procedure Image2Click(Sender: TObject);
    procedure sLabel1Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_useridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_passKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UI_Login_frm: TUI_Login_frm;

implementation

uses dmConn, CommonMSG, CommonLib, DB, CommonVar, UI_RegisterUser,
  UI_ConnectionSetting, CreateTable;

{$R *.dfm}

procedure TUI_Login_frm.Image2Click(Sender: TObject);
begin
//------------------------------------------------------------------------------
// Connection 연결
//------------------------------------------------------------------------------
  if not Assigned(DataModule_Conn) Then DataModule_Conn := TDataModule_Conn.Create(Application);

  UI_ConnectionSetting_frm := TUI_ConnectionSetting_frm.Create(Self);
  try
    UI_ConnectionSetting_frm.getConnectionString(sComboBox1.Text);
  finally
    FreeAndNil(UI_ConnectionSetting_frm);
  end;

//  ShowMessage(sConnectionString);

  DataModule_Conn.getConnectionString;
  DataModule_Conn.KisConn.Open;
  DataModule_Conn.getConfig;

//------------------------------------------------------------------------------
// 아이디 패스워드 확인
//------------------------------------------------------------------------------
  IF Trim(edt_Userid.Text) = '' Then
  begin
    MessageBox(Self.Handle,MSG_LOGIN_NOID,'로그인에러',MB_OK+MB_ICONERROR);
    Exit;
  end
  else
  IF Trim(edt_Pass.Text) = '' Then
  begin
    MessageBox(Self.Handle,MSG_LOGIN_NOPWD,'로그인에러',MB_OK+MB_ICONERROR);
    Exit;
  end
  else
  begin
    with TADOQuery.Create(nil) do
    begin
      Close;
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'SELECT USER_ID, USER_NAME FROM USER_ID WHERE USER_ID ='+QuotedStr(edt_userid.Text)+' AND USER_PASS = '+QuotedStr(GetHashString(edt_pass.Text));
      Open;

      IF RecordCount = 0 Then
      begin
        MessageBox(Self.Handle,MSG_LOGIN_FAIL,'로그인실패',MB_OK+MB_ICONERROR);
        Exit;
      end
      else
      begin
        LoginData.sID := FieldByName('USER_ID').AsString;
        LoginData.sName := FieldByName('USER_NAME').AsString;
      end;
    end;
  end;

  DataModule_Conn.setDocumentNo;

//------------------------------------------------------------------------------
// 테이블 패치
//------------------------------------------------------------------------------
  DMCreateTable := TDMCreateTable.Create(Application);
  try
    DMCreateTable.RunPatch;
  finally
    FreeAndNil( DMCreateTable );
  end;

  ModalResult := mrOk;
end;

procedure TUI_Login_frm.sLabel1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TUI_Login_frm.sButton1Click(Sender: TObject);
begin
  UI_RegisterUser_frm := TUI_RegisterUser_frm.Create(Self);
  try
    IF UI_RegisterUser_frm.ShowModal = mrOk then
    begin
      edt_userid.Text := UI_RegisterUser_frm.UserID;
      edt_pass.SetFocus;
    end;
  finally
    sButton1.Visible := False;
    sButton2.Visible := False;    
    FreeAndNil(UI_RegisterUser_frm);
  end;
end;

procedure TUI_Login_frm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Shift = [ssctrl] Then
  begin
    IF Key = 81 Then
    begin
      sButton1.Visible := not sButton1.Visible;
      sButton2.Visible := not sButton2.Visible;
    end
  end;
end;

procedure TUI_Login_frm.edt_useridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_RETURN then edt_pass.SetFocus;
end;

procedure TUI_Login_frm.edt_passKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_RETURN then Image2Click(image2);
end;

procedure TUI_Login_frm.sButton2Click(Sender: TObject);
var
  MSG : string;
begin
  UI_ConnectionSetting_frm := TUI_ConnectionSetting_frm.Create(Self);
  try
    IF UI_ConnectionSetting_frm.ShowModal = mrOK Then
    begin
      FormShow(Self);
    end;
  finally
    sButton1.Visible := False;
    sButton2.Visible := False;
    FreeAndNil(UI_ConnectionSetting_frm);
  end;
end;

procedure TUI_Login_frm.FormCreate(Sender: TObject);
begin
//------------------------------------------------------------------------------
// 설정 경로
//------------------------------------------------------------------------------
  ldbinfoiniPath := ExtractFilePath(ParamStr(0))+'ldbinfo.ini';
  configxmlPath := ExtractFilePath(ParamStr(0))+'ConnConfig.xml';
end;

procedure TUI_Login_frm.FormShow(Sender: TObject);
var
  Serverlist : TStringList;
begin
  sComboBox1.Visible := FileExists(configxmlPath);

  IF FileExists(configxmlPath) Then
  begin
    UI_ConnectionSetting_frm := TUI_ConnectionSetting_frm.Create(Self);
    try
      Serverlist := TStringList.Create;
      sComboBox1.Visible := UI_ConnectionSetting_frm.getServerList(Serverlist);
      sComboBox1.Items := Serverlist;

      IF sComboBox1.Visible then
        sComboBox1.ItemIndex := 0;

    finally
      Serverlist.Free;
      FreeAndNil(UI_ConnectionSetting_frm);
    end;
//    {$Message Error '서버리스트에 대한 DBConnection 생성'}
  end;
end;

end.
 