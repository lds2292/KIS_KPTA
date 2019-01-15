unit UI_ShowSQLData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, acDBGrid, DB;

type
  TUI_ShowSQLData_frm = class(TForm)
    sDBGrid1: TsDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UI_ShowSQLData_frm: TUI_ShowSQLData_frm;

implementation

{$R *.dfm}

end.
