unit Dialog_ProcessView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, Grids, ExtCtrls, sPanel, sSkinProvider, sScrollBox,
  StdCtrls, sLabel, Buttons, sSpeedButton, sMemo;

type
  TDialog_ProcessView_frm = class(TParentForm_frm)
    sPanel2: TsPanel;
    sScrollBox1: TsScrollBox;
    sPanel5: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sSpeedButton2: TsSpeedButton;
    sLabel4: TsLabel;
    sLabel3: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    procedure sPanel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dialog_ProcessView_frm: TDialog_ProcessView_frm;

implementation

uses
  KisXmlReader;

{$R *.dfm}

Const
  Test1 : String = 'https://unipass.customs.go.kr:38010/ext/rest/apfmPrcsStusQry/retrieveApfmPrcsStus?crkyCn=j270w199s031u088e090l030n0&reqRqstNo=S070718008AAH';
//  Test2 : String = 'https://unipass.customs.go.kr:38010/ext/rest/cargCsclPrgsInfoQry/retrieveCargCsclPrgsInfo?crkyCn=v290t125k162y241n070b060r0&cargMtNo=00ANLU083N59007001';

procedure TDialog_ProcessView_frm.sPanel5Click(Sender: TObject);
var
  XR : xmlReader;
begin
  inherited;
  XR := xmlReader.CreateFromURL(Test1);
  with XR do
  begin
    ShowMessage(getValue(ROOT_NODE, 'tCnt'));

  end;
  XR.Free;
end;

end.
