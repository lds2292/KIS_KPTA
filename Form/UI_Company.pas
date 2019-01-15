unit UI_Company;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, StdCtrls, sButton, sLabel, ExtCtrls,
  sPanel, Grids, DBGrids, acDBGrid, sSplitter, sEdit, DB, ADODB;

type
  TUI_Company_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sSplitter1: TsSplitter;
    sDBGrid1: TsDBGrid;
    sPanel2: TsPanel;
    sButton1: TsButton;
    sButton3: TsButton;
    sButton4: TsButton;
    sButton5: TsButton;
    edt_FindText: TsEdit;
    qryForeignList: TADOQuery;
    dsForeignList: TDataSource;
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sButton5Click(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReadList;
  public
    { Public declarations }
  end;

var
  UI_Company_frm: TUI_Company_frm;

implementation

uses dmConn, Dialog_Company, CommonMSG;

{$R *.dfm}

procedure TUI_Company_frm.ReadList;
begin
  with qryForeignList do
  begin
    Close;
    SQL.Text := 'SELECT [FOREIGN_CODE], [SID], [COMPANY_NAME], [REPRESENTATIVE], [COMPANY_ADDRESS], [NATION_CODE], [SAUP_NO], [CUSTOMS]'#13#10+
                'FROM [FOREIGN_COMPANY]';
    if Trim(edt_FindText.Text) <> '' Then
      SQL.Add('WHERE COMPANY_NAME LIKE '+QuotedStr('%'+edt_FindText.Text+'%'));
//      SQL.Add('AND HS_CODE LIKE '+QuotedStr(sMaskEdit1.Text+'%'));
    SQL.Add('ORDER BY FOREIGN_CODE');
    Open;
  end;
end;

procedure TUI_Company_frm.sButton3Click(Sender: TObject);
var
  KeyValue : String;
begin
  inherited;
  Dialog_Company_frm := TDialog_Company_frm.Create(Self);
  try
    IF Dialog_Company_frm.New = mrOK Then
    begin
      qryForeignList.Close;
      qryForeignList.Open;

      If qryForeignList.RecordCount > 0 Then
      begin
        qryForeignList.Locate('FOREIGN_CODE',KeyValue,[]);
      end;

    end;
  finally
    FreeAndNil(Dialog_Company_frm);
  end;
end;

procedure TUI_Company_frm.sButton4Click(Sender: TObject);
var
  BMK : Pointer;
begin
  inherited;
  Dialog_Company_frm := TDialog_Company_frm.Create(Self);
  try
    IF Dialog_Company_frm.Edit(qryForeignList.Fields) = mrOK Then
    begin
      BMK := qryForeignList.GetBookmark;
      qryForeignList.Close;
      qryForeignList.Open;

      try
        If qryForeignList.RecordCount > 0 Then
        begin
          IF qryForeignList.BookmarkValid(BMK) Then
            qryForeignList.GotoBookmark(BMK);
        end;
      finally
        qryForeignList.FreeBookmark(BMK);
      end;

    end;
  finally
    FreeAndNil(Dialog_Company_frm);
  end;
end;


procedure TUI_Company_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_Company_frm.FormShow(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TUI_Company_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_Company_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_Company_frm := nil;
end;


procedure TUI_Company_frm.sButton5Click(Sender: TObject);
var
  BMK : TBookmarkStr;
begin
  inherited;
  IF MessageBox(Self.Handle,MSG_DELETE_SELECTED_DATA,'거래처 삭제확인',MB_OKCANCEL+MB_ICONQUESTION) = ID_CANCEL Then Exit;

  with TADOQuery.Create(nil) do
  begin
    try
      BMK := qryForeignList.Bookmark;

      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'DELETE FROM FOREIGN_COMPANY WHERE FOREIGN_CODE = '+QuotedStr(qryForeignList.FieldByName('FOREIGN_CODE').AsString);
      ExecSQL;

      qryForeignList.Close;
      qryForeignList.Open;

      qryForeignList.Bookmark := BMK;
//      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
end;

procedure TUI_Company_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  IF (Sender as TsDBGrid).ScreenToClient(Mouse.CursorPos).Y > 17 Then
  begin
    sButton4Click(sButton4);
  end;
end;

end.
