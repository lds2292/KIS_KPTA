unit Dlg_SaveDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvAnimatedImage, JvGIFCtrl, StdCtrls, sLabel;

type
  TDlg_SaveDocument_frm = class(TForm)
    JvGIFAnimator1: TJvGIFAnimator;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
  private
    { Private declarations }
    FFileName : String;
    procedure SetFileName(sFileName : String);
  public
    { Public declarations }
    Property FileName:String  read FFileName write SetFileName;
  end;

var
  Dlg_SaveDocument_frm: TDlg_SaveDocument_frm;

implementation

{$R *.dfm}

{ TDlg_SaveDocument_frm }

procedure TDlg_SaveDocument_frm.SetFileName(sFileName: String);
begin
  FFileName := sFileName;
  sLabel3.Caption := FFileName;
end;

end.
