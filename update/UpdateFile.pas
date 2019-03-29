unit UpdateFile;

interface

uses
  Classes, Windows, Messages, SysUtils, Variants, Graphics, Controls, Dialogs, sGauge,
  ComCtrls, acProgressBar, sLabel, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, sButton;

type
  TUpdatefile = class(TThread)
  private
    { Private declarations }
    FPB : TsProgressBar;
    FGauge: TsGauge;
    FLabel : TsLabel;
    FURL : String;
    FFilename : String;
    FWORK : Integer;
    FMax  : Integer;
    idHttp1 : TIdHTTP;
    FVersion : integer;
    FUpdateList : TStringList;
//    procedure IdHTTP1Work(Sender: TObject; AWorkMode: TWorkMode; const AWorkCount: Integer);
    procedure IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
//    procedure IdHTTP1WorkBegin(Sender: TObject; AWorkMode: TWorkMode; const AWorkCountMax: Integer);
    procedure IdHTTP1WorkBegin(ASender: TObject;AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure Setdata;
    procedure SetLast;
    procedure GetVersion;
  protected
    procedure Execute; override;
  public
    constructor Create(PB : TsProgressBar; ULabel : TsLabel; sURL,sFileName : string); overload;
    constructor Create(GE : TsGauge; ULabel : TsLabel; sURL,sFileName : string); overload;
  end;

implementation
{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Updatefile.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Updatefile }

constructor TUpdatefile.Create(PB : TsProgressBar; ULabel : TsLabel; sURL,sFileName : string);
begin
  inherited Create(False);
  FPB := PB;
  FPB.Position := 0;
  FLabel := ULabel;
  FURL := sURL;
  FFilename := sFileName;

  if FURL = '' then FURL := 'http://ikis21.com/zboard/data/pds/Amkor/KISExport.exe';
  if FFilename = '' then FFileName := 'KISExport.exe';

  idHttp1 := TIdHTTP.Create(nil);
  idHttp1.OnWork  := IdHTTP1Work;
  idHttp1.OnWorkBegin := IdHTTP1WorkBegin;
  FreeOnTerminate := False;
end;

constructor TUpdatefile.Create(GE: TsGauge; ULabel: TsLabel; sURL,
  sFileName: string);
begin
  inherited Create(False);
  FGauge  := GE;
  FGauge.Progress := 0;
  FLabel := ULabel;
//  FURL := 'http://ikis21.com/zboard/data/pds/Amkor/KISExport.exe';
//  FFileName := 'KISExport.exe';
  FURL := sURL;
  FFilename := sFileName;

  if FURL = '' then FURL := 'http://ikis21.com/zboard/data/pds/Amkor/KISExport.exe';
  if FFilename = '' then FFileName := 'KISExport.exe';  

  idHttp1 := TIdHTTP.Create(nil);
  idHttp1.OnWork  := IdHTTP1Work;
  idHttp1.OnWorkBegin := IdHTTP1WorkBegin;

  FreeOnTerminate := True;
end;

procedure TUpdatefile.Execute;
var
  Stream : TMemoryStream;
begin
  { Place thread code here }
  Stream := TMemoryStream.Create;
  try
    IdHTTP1.Get(FURL,Stream);
    Stream.SaveToFile(FFileName);
    Synchronize(SetLast);    
  finally
    Stream.Free;
    IdHTTP1.Free;
  end;
end;

procedure TUpdatefile.GetVersion;
begin

end;

procedure TUpdatefile.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  FWORK := AWorkCount;
  Synchronize(Setdata);
end;

procedure TUpdatefile.IdHTTP1WorkBegin(ASender: TObject;AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  FMax := AWorkCountMax;
  if FPB <> nil then FPB.Max := FMax
  Else if FGauge <> nil then FGauge.MaxValue := FMax;
end;

procedure TUpdatefile.Setdata;
begin
  FLabel.Caption := FormatFloat('0.0',FWORK / 1048576)+'MB / '+FormatFloat('0.0',FMax / 1048576)+'MB ('+FFilename+')';
  if FPB <> nil then FPB.Position  := FWORK
  Else if FGauge <> nil then FGauge.Progress := FWORK;
end;

procedure TUpdatefile.SetLast;
begin
  FLabel.Caption := FormatFloat('0.0',FWORK / 1048576)+'MB / '+FormatFloat('0.0',FMax / 1048576)+'MB ('+FFilename+')';
  if FPB <> nil then FPB.Position  := FMax
  Else if FGauge <> nil then FGauge.Progress := FMax;
end;

end.
