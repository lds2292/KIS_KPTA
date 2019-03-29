unit UPDATE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, sButton, sLabel, ExtCtrls,
  acImage, sPanel, sGauge, sMemo, Registry, HTTP;

type
  TUPDATE_frm = class(TForm)
    sPanel1: TsPanel;
    sImage1: TsImage;
    Shape1: TShape;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sButton1: TsButton;
    Shape2: TShape;
    sGauge1: TsGauge;
    sLabel6: TsLabel;
    sMemo1: TsMemo;
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LastThread(Sender: TObject);
    procedure BtnEnabel(bBool: Boolean=true);
    procedure ProcessVer(bWrite :Boolean=True);
    procedure GetNotice(var Memo: TsMemo);
    { Private declarations }

  public
    function CompareVersion:Boolean;
    { Public declarations }
  end;

var
  UPDATE_frm: TUPDATE_frm;
Const
  Root = 'http://ikis21.com/zboard/data/pds/4G/KPTA/';
  MainFile = 'KPTA_UPDATE.exe';
implementation

uses
  UpdateFile, dmIcon;

{$R *.dfm}

procedure TUPDATE_frm.BtnEnabel(bBool: Boolean);
begin
  sButton1.Enabled := bBool;
end;

procedure TUPDATE_frm.sButton1Click(Sender: TObject);
var
  Trd : TUpdatefile;
begin
  BtnEnabel(False);
  Trd := TUpdatefile.Create(sGauge1, sLabel6, Root+MainFile, ExtractFilePath(Application.ExeName)+MainFile);
  Trd.OnTerminate := LastThread;
end;

procedure TUPDATE_frm.LastThread(Sender: TObject);
begin
  BtnEnabel;
//  ProcessVer;
  WinExec(PChar(ExtractFilePath(Application.ExeName) + MainFile), SW_SHOW);
  Close;
end;

procedure TUPDATE_frm.ProcessVer(bWrite: Boolean);
begin
  IF bWrite Then SetCurrentVer(Pchar(sLabel4.Caption));
//  FormShow(Self);
end;

procedure TUPDATE_frm.GetNotice(var Memo : TsMemo);
var
  FURL,FFileName : PChar;
begin
  FURL := 'http://ikis21.com/zboard/data/pds/4G/KPTA/UPDATE.txt';
  FFileName := 'UPDATE.txt';

  GetFileFromHTTP(FURL,FFileName);

  Memo.Lines.LoadFromFile(FFileName);
  DeleteFile(FFileName);
end;

function TUPDATE_frm.CompareVersion: Boolean;
begin
  Result := False;
  sLabel5.Caption := GetCurrentVer;
  sLabel4.Caption := getNewVer;

  GetNotice(sMemo1);
//  Result := CompareVersion(pchar(sLabel5.Caption),Pchar(sLabel4.Caption));
  Result := AnsiCompareText( sLabel5.Caption , sLabel4.Caption ) < 0;

  sButton1.Enabled := Result;
end;

procedure TUPDATE_frm.FormShow(Sender: TObject);
begin
  sLabel6.Caption := '0 MB /0 MB';
  sGauge1.Progress := 0;
end;

end.
