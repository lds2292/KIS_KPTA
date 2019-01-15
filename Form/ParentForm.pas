unit ParentForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, sPanel, sSkinProvider, Grids, DBGrids, acDBGrid, DB;

type
  TParentForm_frm = class(TForm)
    sSkinProvider1: TsSkinProvider;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure KISDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure KISGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParentForm_frm: TParentForm_frm;

implementation

uses CommonVar;

{$R *.dfm}

procedure TParentForm_frm.FormActivate(Sender: TObject);
begin
  IF Self.FormStyle = fsMDIChild Then
    sSkinProvider1.SkinData.SkinManager.RepaintForms;
end;

procedure TParentForm_frm.FormDeactivate(Sender: TObject);
begin
  LastActiveFormName := Self.Name;
end;


procedure TParentForm_frm.KISDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  with Sender as TsDBGrid do
  begin
    if (gdSelected in State) or (SelectedRows.CurrentRowSelected) then
    begin
      Canvas.Brush.Color := $0054CEFC;
      Canvas.Font.Color := clBlack;
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TParentForm_frm.KISGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

end.
