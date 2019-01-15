unit UI_Goods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, Grids, DBGrids, acDBGrid, ExtCtrls,
  sPanel;

type
  TUI_Goods_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sDBGrid1: TsDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UI_Goods_frm: TUI_Goods_frm;

implementation

{$R *.dfm}

end.
