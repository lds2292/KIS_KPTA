unit UI_QuickMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, sSkinProvider, ComCtrls, sTreeView, Menus;

type
  TUI_QuickMenu_frm = class(TParentForm_frm)
    sTreeView1: TsTreeView;
    procedure FormCreate(Sender: TObject);
    procedure sTreeView1DblClick(Sender: TObject);
  private
    { Private declarations }
    Node : TTreeNode;
    SubNode : TTreeNode;
    procedure InitQuickMenu;
  public
    { Public declarations }
  end;

var
  UI_QuickMenu_frm: TUI_QuickMenu_frm;

implementation

uses
  dmIcon, Main;

{$R *.dfm}

procedure TUI_QuickMenu_frm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Top  := 0;
  Self.Left := 0;

  InitQuickMenu;
end;

procedure TUI_QuickMenu_frm.InitQuickMenu;
var
  i, j, x : Integer;
  sCaption : String;
  TopMenuItem : TMenuItem;
  SubMenuItem : TMenuItem;
begin
  sTreeView1.Items.Clear;
  for i := 0 to Application.MainForm.Menu.Items.Count-1 do
  begin
    IF Application.MainForm.Menu.Items.Items[i].Visible Then
    begin
      //최상위 메뉴
      sCaption := Application.MainForm.Menu.Items.Items[i].Caption;
      TopMenuItem := Application.MainForm.Menu.Items.Items[i];
      Node := sTreeView1.Items.Add(Node, sCaption);
      for j := 0 to TopMenuItem.Count -1 do
      begin
        sCaption := TopMenuItem.Items[j].Caption;
        IF sCaption = '-' Then Continue;
        IF TopMenuItem.Items[j].Tag = -1 Then Continue;
        IF not TopMenuItem.Items[j].Visible Then Continue;
        SubNode := sTreeView1.Items.AddChild(Node, sCaption);
        SubNode.ImageIndex := TopMenuItem.Items[j].Tag;
        SubMenuItem := TopMenuItem.Items[j];
        for x := 0 to SubMenuItem.Count -1 do
        begin
          sCaption := SubMenuItem.Items[x].Caption;
          IF sCaption = '-' Then Continue;
          IF SubMenuItem.Items[x].Tag = -1 Then Continue;
          IF not SubMenuItem.Items[x].Visible Then Continue;
          sTreeView1.Items.AddChild(SubNode, sCaption).ImageIndex := SubMenuItem.Items[x].Tag;
        end;
      end;
    end;
  end;

  sTreeView1.FullExpand;
end;

procedure TUI_QuickMenu_frm.sTreeView1DblClick(Sender: TObject);
var
  UserForm : TForm;
  Node : TTreeNode;
begin
  with sTreeView1.ScreenToClient(Mouse.CursorPos) do Node := sTreeView1.GetNodeAt(X, Y);

  IF Node = nil Then Exit;
  
  UserForm := Main_frm.UserCreateForm(sTreeView1.Selected.ImageIndex);
  IF Assigned( UserForm ) Then
  begin
    UserForm.show;
    UserForm.BringToFront;
  end;
end;


end.
