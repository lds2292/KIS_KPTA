unit UI_CompanyModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UI_Company, DB, ADODB, sSkinProvider, Grids, DBGrids, acDBGrid,
  StdCtrls, sEdit, sButton, ExtCtrls, sPanel, sSplitter;

type
  TUI_CompanyModal_frm = class(TUI_Company_frm)
    sButton6: TsButton;
    sButton2: TsButton;
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sDBGrid1DblClick(Sender: TObject);
  private
    function getCompanyAddr: String;
    function getCompanyName: String;
    function getCompanyNation: String;
    { Private declarations }
  public
    { Public declarations }
    property CompanyName : String read getCompanyName;
    property CompanyAddr : String read getCompanyAddr;
    property CompanyNation : String read getCompanyNation;
  end;

var
  UI_CompanyModal_frm: TUI_CompanyModal_frm;

implementation

{$R *.dfm}

procedure TUI_CompanyModal_frm.sButton2Click(Sender: TObject);
begin
//  inherited;

end;

procedure TUI_CompanyModal_frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;

end;

procedure TUI_CompanyModal_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if sDBGrid1.ScreenToClient(Mouse.CursorPos).Y> 17 Then ModalResult := mrOK;
end;

function TUI_CompanyModal_frm.getCompanyAddr: String;
begin
  Result := qryForeignList.FieldByName('COMPANY_ADDRESS').AsString;
end;

function TUI_CompanyModal_frm.getCompanyName: String;
begin
  Result := qryForeignList.FieldByName('COMPANY_NAME').AsString;
end;

function TUI_CompanyModal_frm.getCompanyNation: String;
begin
  Result := qryForeignList.FieldByName('NATION_CODE').AsString;
end;

end.
