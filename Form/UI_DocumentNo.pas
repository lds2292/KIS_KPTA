unit UI_DocumentNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, StdCtrls, sButton, ExtCtrls, sPanel,
  Grids, DBGrids, acDBGrid, sComboBox, sLabel, DB, ADODB, Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sCurrencyEdit, StrUtils, DateUtils;

type
  TUI_DocumentNo_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sButton3: TsButton;
    sLabel2: TsLabel;
    sLabel1: TsLabel;
    sComboBox1: TsComboBox;
    sPanel2: TsPanel;
    sButton2: TsButton;
    sDBGrid1: TsDBGrid;
    qryNo: TADOQuery;
    dsNo: TDataSource;
    qryNoUSER_ID: TStringField;
    qryNoDOC_YEAR: TStringField;
    qryNoBASIC_CODE: TStringField;
    qryNoDOC_GUBUN: TStringField;
    qryNoDOC_NO: TIntegerField;
    qryNoDOCUMENT_NAME: TStringField;
    sPanel3: TsPanel;
    sCurrencyEdit1: TsCurrencyEdit;
    sButton4: TsButton;
    sLabel3: TsLabel;
    procedure FormCreate(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sCurrencyEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sComboBox1Select(Sender: TObject);
  private
    { Private declarations }
    procedure ReadList;
  public
    { Public declarations }
  end;

var
  UI_DocumentNo_frm: TUI_DocumentNo_frm;

implementation

uses dmConn, CommonVar;

{$R *.dfm}

procedure TUI_DocumentNo_frm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Left := 0;
  Self.Top := 222;
end;

procedure TUI_DocumentNo_frm.ReadList;
begin
  with qryNo do
  begin  
    Close;
    Parameters.ParamByName('USER_ID').Value := LoginData.sID;
    Parameters.ParamByName('DOC_YEAR').Value := RightStr(sComboBox1.Text,2);
    Open;
  end;
end;

procedure TUI_DocumentNo_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited; 
  sDBGrid1.Enabled := False;
  sCurrencyEdit1.Value := qryNoDOC_NO.AsInteger;
  sCurrencyEdit1.BoundLabel.Caption := '['+qryNoDOCUMENT_NAME.AsString+'] 제출번호';

  sPanel3.Visible := true;
  sCurrencyEdit1.SetFocus;
end;

procedure TUI_DocumentNo_frm.sButton4Click(Sender: TObject);
begin
  inherited;
  with TADOQuery.Create(nil) do
  begin
    try
      Connection := DataModule_Conn.KisConn;
      SQL.Text := 'UPDATE [NO] SET DOC_NO = '+sCurrencyEdit1.Text+' WHERE USER_ID = '+QuotedStr(LoginData.sID)+' AND DOC_GUBUN = '+QuotedStr(qryNoDOC_GUBUN.AsString);
      ExecSQL;
    finally
      Close;
      Free;
    end;
  end;
  sDBGrid1.Enabled := True;  
  sPanel3.Visible := False;
  ReadList;
end;

procedure TUI_DocumentNo_frm.sCurrencyEdit1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Case Key of
    VK_RETURN : sButton4Click(sButton4);
    VK_ESCAPE :
    begin
      sPanel3.Visible := False;
      sDBGrid1.Enabled := True;
      sDBGrid1.SetFocus;
    end;
  end;
end;

procedure TUI_DocumentNo_frm.FormShow(Sender: TObject);
var
  i : integer;
begin
  inherited;

  sComboBox1.Clear;
  for i := -2 to 4 do
  begin
    sComboBox1.Items.Add(IntToStr(YearOf(Now)+i));
  end;
  sComboBox1.ItemIndex := sComboBox1.IndexOf(IntToStr(YearOf(Now)));
  ReadList;
end;

procedure TUI_DocumentNo_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TUI_DocumentNo_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  UI_DocumentNo_frm := nil;
end;

procedure TUI_DocumentNo_frm.sComboBox1Select(Sender: TObject);
begin
  inherited;
  sSkinProvider1.SkinData.SkinManager.RepaintForms;
  Readlist;
end;

end.
