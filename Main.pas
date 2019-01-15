//------------------------------------------------------------------------------
// 변경이력
//------------------------------------------------------------------------------
// 2017-07-13
// 국내도착항코드가 5자리(KRINC) -> 3자리(INC)로 전송이 되어야함
// 전송문서 FR2에서 5자리로 갈경우 뒤에 3자리만 전송되게 변경함
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, sScrollBox, sFrameBar, Menus,
  sDialogs, ADODB, DB, DBTables, ComObj, ExtCtrls, sPanel;

type
  TMain_frm = class(TForm)
    sSkinProvider1: TsSkinProvider;
    MainMenu1: TMainMenu;
    d1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    sOpenDialog1: TsOpenDialog;
    N7: TMenuItem;
    d2: TMenuItem;
    N8: TMenuItem;
    d3: TMenuItem;
    w1: TMenuItem;
    N9: TMenuItem;
    d4: TMenuItem;
    d5: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    procedure C1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuClick(Sender: TObject);
    procedure d3Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function UserCreateForm(nTag : Integer):TForm;    
  end;

var
  Main_frm: TMain_frm;

implementation

uses dmIcon, CommonVar, dmConn, UI_HS, UI_KPTA, UI_ReadyDocument,
  UI_UserConfig, UI_DocumentNo, CommonLib, UI_Login, UI_Company, KIS_UPDATE, UI_RecvDocument, ParentForm, UI_CommonCD, UI_PUMLIST, dlg_IMPORT, dialog_RUNSQL;
{$R *.dfm}

procedure TMain_frm.C1Click(Sender: TObject);
var
  FXLS : Variant;
  i : integer;
begin
  IF not sOpenDialog1.Execute Then Exit;

  Try
    FXLS := CreateOleObject('Excel.Application');
  except
    on E:Exception do
    begin
      MessageBox(Self.Handle,PChar('에러가발생하여 변환에 실패하였습니다'#13#10+E.Message),'변환실패',MB_OK+MB_ICONERROR);
      Abort;
    end;
  end;

  try
    FXLS.Workbooks.Open(sOpenDialog1.FileName);
    i := 1;
    with TADOQuery.Create(nil) do
    begin
      try
        Connection := DataModule_Conn.KisConn;
        SQL.Clear;
        while VarToStr( FXLS.Cells[i,1].value ) <> '' do
        begin
          SQL.Text := 'INSERT INTO CODELIST(CODE_GROUP, CODE_TYPE, CODE_CONTENTS, CODE_ETC) VALUES('+
                      QuotedStr(VarToStr( FXLS.Cells[i,1].value ))+','+
                      QuotedStr(VarToStr( FXLS.Cells[i,2].value ))+','+
                      QuotedStr(VarToStr( FXLS.Cells[i,3].value ))+','+
                      QuotedStr(VarToStr( FXLS.Cells[i,4].value ))+')';
          ExecSQL;
          Inc(i);
        end;
      finally
        Close;
        Free;
      end;
    end;
  finally
    FXLS.Quit;
    FXLS := Unassigned;
  end;
end;

procedure TMain_frm.FormShow(Sender: TObject);
begin
  ShowWindow(Self.Handle,SW_MAXIMIZE);
  Self.Caption := '한국의약품수출입협회 - 유저['+LoginData.sID+'-'+LoginData.sName+']';
end;

function TMain_frm.UserCreateForm(nTag : Integer):TForm;
begin
  Result := nil;
  Case nTag of
      101: begin IF not Assigned(UI_HS_frm) Then UI_HS_frm := TUI_HS_frm.Create(Application); Result := UI_HS_frm end;
      102: begin IF not Assigned(UI_Company_frm) Then UI_Company_frm := TUI_Company_frm.Create(Application); Result := UI_Company_frm end;
      103: begin IF not Assigned(UI_PUMLIST_frm) Then UI_PUMLIST_frm := TUI_PUMLIST_frm.Create(Application); Result := UI_PUMLIST_frm end;
      104: begin IF not Assigned(UI_CommonCD_frm) Then UI_CommonCD_frm := TUI_CommonCD_frm.Create(Application); Result := UI_CommonCD_frm end;
      110: begin IF not Assigned(UI_UserConfig_frm) Then UI_UserConfig_frm := TUI_UserConfig_frm.Create(Application); Result := UI_UserConfig_frm end;
      120: begin IF not Assigned(UI_DocumentNo_frm) Then UI_DocumentNo_frm := TUI_DocumentNo_frm.Create(Application); Result := UI_DocumentNo_frm end;

    200: begin IF not Assigned(UI_KPTA_frm) Then UI_KPTA_frm := TUI_KPTA_frm.Create(Application); Result := UI_KPTA_frm end;
//    210: begin IF not Assigned(UI_HS_frm) Then UI_HS_frm := TUI_HS_frm.Create(Application); Result := end;

    300: begin IF not Assigned(UI_ReadyDocument_frm) Then UI_ReadyDocument_frm := TUI_ReadyDocument_frm.Create(Application); Result := UI_ReadyDocument_frm end;
    310: begin IF not Assigned(UI_RecvDocument_frm) Then UI_RecvDocument_frm := TUI_RecvDocument_frm.Create(Application); Result := UI_RecvDocument_frm end;
  end;
end;

procedure TMain_frm.MenuClick(Sender: TObject);
var
  UserForm : TForm;
begin
  //
  UserForm := UserCreateForm((Sender as TMenuItem).Tag);
  IF Assigned( UserForm ) Then
  begin
    UserForm.show;
    UserForm.BringToFront;
  end;
end;

procedure TMain_frm.d3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TMain_frm.N13Click(Sender: TObject);
begin
  dlg_IMPORT_frm.ShowModal;
end;

procedure TMain_frm.N14Click(Sender: TObject);
begin
  IF not Assigned(dialog_RUNSQL_frm) Then
    dialog_RUNSQL_frm := Tdialog_RUNSQL_frm.Create(Application)
  else
  begin
    dialog_RUNSQL_frm.Show;
    dialog_RUNSQL_frm.BringToFront;
  end;
end;

end.
