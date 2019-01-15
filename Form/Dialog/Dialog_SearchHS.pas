unit Dialog_SearchHS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, DB, ADODB, Grids, DBGrids, acDBGrid, ExtCtrls,
  sSplitter, StdCtrls, sCheckBox, sButton, Mask, sMaskEdit, sPanel,
  sSkinProvider;

type
  TDialog_SearchHS_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sMaskEdit1: TsMaskEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sSplitter1: TsSplitter;
    sDBGrid1: TsDBGrid;
    qryHS: TADOQuery;
    qryHSHS_CODE: TStringField;
    qryHSHS_NAME: TStringField;
    qryHSHS_NAME_ENG: TStringField;
    qryHSUSED: TBooleanField;
    dsHS: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sMaskEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FSQL : string;
    procedure ReadList;
    function getField(index: integer): TField;
    { Private declarations }
  public
    function RunDialog(HS_CODE : String=''):TModalResult;
    property Field[index : integer]: TField read getField;
    function FieldNM(sFieldName : string):TField;    
    { Public declarations }
  end;

var
  Dialog_SearchHS_frm: TDialog_SearchHS_frm;

implementation

uses dmConn, dmIcon;

{$R *.dfm}

procedure TDialog_SearchHS_frm.ReadList;
begin
  with qryHS do
  begin
    Close;
    SQL.Text := FSQL;
    if Trim(sMaskEdit1.Text) <> '' Then
      SQL.Add('AND HS_CODE LIKE '+QuotedStr(sMaskEdit1.Text+'%'));
    SQL.Add('ORDER BY HS_CODE');
    Open;
  end;
end;

procedure TDialog_SearchHS_frm.FormCreate(Sender: TObject);
begin
  inherited;
  FSQL := qryHS.SQL.Text;
end;

procedure TDialog_SearchHS_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TDialog_SearchHS_frm.sMaskEdit1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CASE Key of
    VK_RETURN : sButton1Click(sButton1);
    VK_DOWN : sDBGrid1.SetFocus;
  end;
end;

procedure TDialog_SearchHS_frm.sDBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN then sDBGrid1DblClick(sDBGrid1);

  IF Key = VK_UP Then
  begin
    IF qryHS.Bof Then sMaskEdit1.SetFocus;
  end;
end;

procedure TDialog_SearchHS_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TDialog_SearchHS_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TDialog_SearchHS_frm.sDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  with Sender as TsDBGrid do
  begin
    if (gdSelected in State) or (SelectedRows.CurrentRowSelected) then begin
      Canvas.Brush.Color := $0054CEFC;
      Canvas.Font.Color := clBlack;
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

function TDialog_SearchHS_frm.RunDialog(HS_CODE: String): TModalResult;
begin
  ReadList;
  IF Trim(HS_CODE) <> '' Then
  begin
    qryHS.Locate('HS_CODE',HS_CODE,[]);
  end;

  Result := Self.ShowModal;
end;

function TDialog_SearchHS_frm.FieldNM(sFieldName: string): TField;
begin
  Result := qryHS.FieldByName(sFieldName);
end;

function TDialog_SearchHS_frm.getField(index: integer): TField;
begin
  Result := qryHS.Fields[index];
end;

end.
