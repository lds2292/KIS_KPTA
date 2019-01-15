unit dlg_MtlrsList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sComboBox, DB, ADODB, Grids, DBGrids, acDBGrid,
  ExtCtrls, sPanel;

type
  Tdlg_MtlrsList_frm = class(TForm)
    sPanel2: TsPanel;
    sDBGrid1: TsDBGrid;
    qryList: TADOQuery;
    dsList: TDataSource;
    sPanel1: TsPanel;
    sComboBox1: TsComboBox;
    sEdit1: TsEdit;
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function getField(index: integer): TField;
    procedure ReadList;
    { Private declarations }
  public
    { Public declarations }
    function RunDialog(sKeyValue : String=''):TModalResult;
    property Field[index : integer]: TField read getField;
    function FieldNM(sFieldName : string):TField;
  end;

var
  dlg_MtlrsList_frm: Tdlg_MtlrsList_frm;

implementation

uses
  dmConn, dmIcon;

{$R *.dfm}

function Tdlg_MtlrsList_frm.FieldNM(sFieldName: string): TField;
begin
  Result := qrylist.FieldByName(sFieldName);
end;

function Tdlg_MtlrsList_frm.getField(index: integer): TField;
begin
  Result := qryList.Fields[index];
end;

procedure Tdlg_MtlrsList_frm.ReadList;
begin
  with qryList do
  begin
    SQL.Text := 'SELECT * FROM [COMCD_D] WHERE CD_DEF = ''MTRLS''';
    IF Trim(sEdit1.Text) <> '' Then
    begin
      Case sComboBox1.ItemIndex of
        0: SQL.Add('AND USE_CD LIKE '+QuotedStr('%'+Trim(sEdit1.Text)+'%'));
        1: SQL.Add('AND USE_CD_NM LIKE '+QuotedStr('%'+Trim(sEdit1.Text)+'%'));
      end;
    end;
    SQL.Add('ORDER BY USE_CD DESC');
    Open;
  end;
end;

procedure Tdlg_MtlrsList_frm.sDBGrid1DblClick(Sender: TObject);
begin
  IF (Sender as TsDBGrid).ScreenToClient(Mouse.CursorPos).Y > 19 Then ModalResult := mrOk;
end;

procedure Tdlg_MtlrsList_frm.sEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_RETURN Then Readlist;
end;

function Tdlg_MtlrsList_frm.RunDialog(sKeyValue: String): TModalResult;
begin
  ReadList;
  
  IF Trim(sKeyValue) <> '' Then
  begin
    qryList.Locate('USE_CD', sKeyValue, []);
  end;

  Result := Self.ShowModal;
end;

end.
