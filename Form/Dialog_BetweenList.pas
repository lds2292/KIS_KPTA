unit Dialog_BetweenList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, StdCtrls, sButton, sComboBox, ExtCtrls, sPanel,
  sSkinProvider, Grids, DBGrids, acDBGrid, StrUtils, DateUtils;

type
  TDialog_BetweenList_frm = class(TParentForm_frm)
    sPanel14: TsPanel;
    sComboBox1: TsComboBox;
    sDBGrid1: TsDBGrid;
    sButton5: TsButton;
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sComboBox1Select(Sender: TObject);
  private
    { Private declarations }
    procedure ReadList;
    function getEndDate: String;
    function getStartDate: String;
  public
    { Public declarations }
    property StartDate:String read getStartDate;
    property EndDate:String read getEndDate;
  end;

var
  Dialog_BetweenList_frm: TDialog_BetweenList_frm;

implementation

uses dmConn, ADODB, DB, CommonVar;

{$R *.dfm}

{ TDialog_BetweenList_frm }

procedure TDialog_BetweenList_frm.ReadList;
begin
  with DataModule_Conn.qryCount do
  begin
    Close;
//    Parameters.ParamByName('USER_ID').Value := LoginData.sID;
    Parameters.ParamByName('nYear').Value := LeftStr(sCombobox1.Text,4);
//    Parameters.ParamByName('nMon').Value := AnsiReplaceText(sComboBox2.Text,'��','');
    Open;
  end;
end;

procedure TDialog_BetweenList_frm.FormShow(Sender: TObject);
begin
  inherited;
  sComboBox1.ItemIndex := YearOf(Now)-2016;
//  sComboBox2.ItemIndex := MonthOf(Now)-1;
  ReadList;
end;

procedure TDialog_BetweenList_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TDialog_BetweenList_frm.sComboBox1Select(Sender: TObject);
begin
  inherited;
  ReadList;
end;

function TDialog_BetweenList_frm.getEndDate: String;
begin
  with DataModule_Conn.qryCount do
  begin
    result := FormatDateTime('YYYY-MM-DD', EndOfTheMonth(EncodeDate(FieldByName('DOC_YEAR').AsInteger, FieldByName('DOC_MON').AsInteger, 1)));
  end;
end;

function TDialog_BetweenList_frm.getStartDate: String;
begin
  with DataModule_Conn.qryCount do
  begin
    result := FormatDateTime('YYYY-MM-DD', EncodeDate(FieldByName('DOC_YEAR').AsInteger, FieldByName('DOC_MON').AsInteger, 1));
  end;
end;

end.
