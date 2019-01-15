unit dialog_PUMLIST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, DB, ExtCtrls, sPanel, ADODB, Grids, DBGrids,
  acDBGrid, sSkinProvider, StdCtrls, sEdit, sButton, sComboBox;

type
  Tdialog_PUMLIST_frm = class(TParentForm_frm)
    sDBGrid1: TsDBGrid;
    qryList: TADOQuery;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    dsList: TDataSource;
    sButton1: TsButton;
    sButton2: TsButton;
    qryListGOODS_CODE: TStringField;
    qryListHSCD: TStringField;
    qryListTRADE_NAME: TStringField;
    qryListMODEL_SIZE: TMemoField;
    qryListMODEL_SIZE_INGREDIENT: TMemoField;
    qryListWITAK_NATION_CODE: TStringField;
    qryListWITAK_NATION_NAME: TStringField;
    qryListORIGIN_NATION_CODE: TStringField;
    qryListORIGIN_NATION_NAME: TStringField;
    edt_findtext: TsEdit;
    sComboBox1: TsComboBox;
    sButton3: TsButton;
    qryListPID: TIntegerField;
    qryListOLD_GOOD_CODE: TStringField;
    qryListOLD_JONG_CODE: TStringField;
    qryListBSE_CODE: TStringField;
    qryListBSE_ORIGIN_NATION_CODE: TStringField;
    qryListBSE_ORIGIN_NATION_NAME: TStringField;
    qryListORIGIN_MATTER: TStringField;
    qryListEXTRACTION: TStringField;
    qryListBATCH_NO: TStringField;
    qryListCOSMETIC_GUBUN: TStringField;
    qryListDMF: TStringField;
    qryListBGMP: TStringField;
    qryListPERMIT_SINGO_NO: TStringField;
    qryListPERMIT_SINGO_DATE: TStringField;
    qryListDRUG_STANDARD_CODE: TStringField;
    qryListWITAK_SANGHO1: TStringField;
    qryListWITAK_SANGHO2: TStringField;
    qryListWITAK_SANGHO3: TStringField;
    qryListWITAK_ADDR1: TStringField;
    qryListWITAK_ADDR2: TStringField;
    qryListWITAK_ADDR3: TStringField;
    qryListTAKE_NATION_CODE: TStringField;
    qryListTAKE_NATION_NAME: TStringField;
    qryListTAKE_SANGHO1: TStringField;
    qryListTAKE_SANGHO2: TStringField;
    qryListTAKE_SANGHO3: TStringField;
    qryListTAKE_ADDR1: TStringField;
    qryListTAKE_ADDR2: TStringField;
    qryListTAKE_ADDR3: TStringField;
    qryListREG_DT: TStringField;
    qryListREG_ID: TStringField;
    qryListLST_DT: TStringField;
    qryListLST_ID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure edt_findtextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure qryListAfterOpen(DataSet: TDataSet);
    procedure sButton3Click(Sender: TObject);
  private
    { Private declarations }
    FDOCGB : String;
    procedure ReadList;
  public
    property DOCGB: String read FDOCGB write FDOCGB;
    function getField(sFieldName: String): TField;
    { Public declarations }
  end;

var
  dialog_PUMLIST_frm: Tdialog_PUMLIST_frm;

implementation

uses
  dmConn, dmIcon;

{$R *.dfm}

procedure Tdialog_PUMLIST_frm.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  qryList.Close;
  qryList.Open;

  //검색조건 콤보박스 셋팅
  sComboBox1.Clear;
  for i := 0 to sDBGrid1.Columns.Count-1 do
  begin
    sComboBox1.Items.Add(sDBGrid1.Columns[i].Title.Caption);
  end;

  //거래품명 기본값
  sComboBox1.ItemIndex := 1;

  //검색창 클리어
  edt_findtext.Clear;

end;

procedure Tdialog_PUMLIST_frm.edt_findtextKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN Then sButton3Click(nil);
end;

procedure Tdialog_PUMLIST_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  IF qryList.RecordCount = 0 Then Exit;
  IF (Sender as TsDBGrid).ScreenToClient(Mouse.CursorPos).Y > 17 Then
  begin
    ModalResult := mrOk;
  end;
end;

procedure Tdialog_PUMLIST_frm.qryListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  sButton2.Enabled := DataSet.RecordCount > 0;
end;

function Tdialog_PUMLIST_frm.getField(sFieldName: String): TField;
begin
  Result := qryList.FieldByName(sFieldName);
end;

procedure Tdialog_PUMLIST_frm.ReadList;
begin
  with qryList do
  begin
    Close;
    SQL.Text := 'SELECT * FROM PUMLIST';
    SQL.Add('WHERE SUBSTRING(GOODS_CODE, 11, 3) = '+QuotedStr(FDOCGB));
    IF Trim(edt_findtext.Text) <> '' Then
    begin
      SQL.Add('AND '+sDBGrid1.Columns[sComboBox1.ItemIndex].FieldName+' LIKE '+QuotedStr('%'+edt_findtext.Text+'%'));
    end;
    SQL.Add('ORDER BY TRADE_NAME');
    Open;
  end;
end;

procedure Tdialog_PUMLIST_frm.sButton3Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

end.
