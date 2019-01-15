unit KISSendModuleV2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, acAlphaImageList, ExtCtrls, sSplitter, ComCtrls,
  sPageControl, Grids, StdCtrls, sLabel, sPanel, KCSAPI4_KIS, sButton, StrUtils;

type
  EEmptyStringException = class(Exception);

  TKISSendModuleV2_frm = class(TForm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    StringGrid1: TStringGrid;
    sPanel2: TsPanel;
    sAlphaImageList1: TsAlphaImageList;
    sPanel3: TsPanel;
    sLabel2: TsLabel;
    sSplitter1: TsSplitter;
    lab_Sign: TsLabel;
    lab_Sendtime: TsLabel;
    lab_PostBox: TsLabel;
    lab_USERID: TsLabel;
    StringGrid2: TStringGrid;
    sButton1: TsButton;
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
    FUSER_ID : String;
    FPOST_BOX : String;
    FSEND_DIR : String;
    FTOTAL_FILECOUNT : Integer;
    procedure DefaultPrint;
    procedure getSendFileList;
    procedure ClearGrid(var StringGrid : TStringGrid);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;

    function SendDocuments:Integer;
    function RecvDocuments:Integer;

    property USER_ID: String  read FUSER_ID write FUSER_ID;
    property POST_BOX: String Read FPOST_BOX write FPOST_BOX;
    property SEND_DIR: String read FSEND_DIR write FSEND_DIR;
    property TOTAL_FILECOUNT : Integer read FTOTAL_FILECOUNT;
  end;

var
  KISSendModuleV2_frm: TKISSendModuleV2_frm;

implementation

uses
  CommonMSG;

{$R *.dfm}

{ TKISSendModuleV2_frm }

constructor TKISSendModuleV2_frm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSEND_DIR := 'C:\PROJECT\XMLTRANS\OUTPUT\';
  {$IFDEF DEBUG}
  FUSER_ID := 'TESTID';
  FPOST_BOX := 'VC220022296001';
  {$ENDIF}
end;

procedure TKISSendModuleV2_frm.DefaultPrint;
begin
  with StringGrid1 do
  begin
    Cells[0,0] := '����';
    Cells[1,0] := '�������ϸ�';
    Cells[2,0] := '����';
    Cells[3,0] := '���';
    ColWidths[4] := -1;
  end;

  with StringGrid2 do
  begin
    Cells[0,0] := '����';
    Cells[1,0] := '�������ϸ�';
    Cells[2,0] := '����';
    Cells[3,0] := '���';
    ColWidths[4] := -1;
  end;
end;

procedure TKISSendModuleV2_frm.FormShow(Sender: TObject);
begin
  DefaultPrint;
  lab_Sendtime.Caption := '���۽ð� : '+FormatDateTime('YYYY-MM-DD HH:NN:SS',Now);
  lab_USERID.Caption := 'USER ID : '+FUSER_ID;
  lab_PostBox.Caption := '�缭�Թ�ȣ : '+FPOST_BOX;
  if onLogin Then
    lab_Sign.Caption := '���������� �����Ϸ�'
  else
    lab_Sign.Caption := '���������� �����ʿ�';
end;

procedure TKISSendModuleV2_frm.getSendFileList;
var
  sFileName, DOCID, DOCNO : string;
  SearchRec : TSearchRec;
  i : integer;
begin
//------------------------------------------------------------------------------
// ��뺯�� üũ
//------------------------------------------------------------------------------
  IF Trim(FSEND_DIR) = '' Then
    raise  EEmptyStringException.Create(MSG_SEND_EMPTY_SEND_DIR);
  IF Trim(FUSER_ID) = '' Then
    raise  EEmptyStringException.Create(MSG_SEND_EMPTY_USER_ID);
  IF Trim(FPOST_BOX) = '' Then
    raise  EEmptyStringException.Create(MSG_SEND_EMPTY_POST_BOX);

//------------------------------------------------------------------------------
// ������ü���� �ʱ�ȭ
//------------------------------------------------------------------------------
  FTOTAL_FILECOUNT := 0;

//------------------------------------------------------------------------------
// �������� üũ
//------------------------------------------------------------------------------
  ForceDirectories(FSEND_DIR);

  IF RightStr( FSEND_DIR , 1 ) <> '\' Then
    FSEND_DIR := FSEND_DIR+'\';

//------------------------------------------------------------------------------
// �׸��� ����
//------------------------------------------------------------------------------
  ClearGrid(StringGrid1);

//------------------------------------------------------------------------------
// ���� ���� ��������
//------------------------------------------------------------------------------
  IF FindFirst(FSEND_DIR+'*.xml',faAnyFile-faDirectory,SearchRec) = 0 Then
  begin
    i := 1;
    repeat
      //GOVCBR-830-1234515100001U
      sFileName := AnsiReplaceText(SearchRec.Name,'-','');
      sFileName := AnsiReplaceText(sFileName,'.xml','');
      //�����ڵ�
      DOCID := PChar(LeftStr(sFileName,9));
      //������ȣ
      DOCNO := pchar(MidStr(sFileName,10,Length(sFileName)-9));

      StringGrid1.Cells[1,i] := DOCNO;
      StringGrid1.Cells[2,i] := '';
      StringGrid1.Cells[3,i] := DOCID;
      StringGrid1.Cells[4,i] := FSEND_DIR+SearchRec.Name;
      Inc(i);
      inc(FTOTAL_FILECOUNT);
    until FindNext(SearchRec) <> 0;

    FindClose(SearchRec);

    StringGrid1.Cells[0,1] := '��';
  end;
end;

procedure TKISSendModuleV2_frm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: string;
  SavedAlign: Word;  
begin
  S := (Sender as TStringGrid).Cells[ACol, ARow]; // cell contents
  if ARow = 0 Then
  begin  // ACol is zero based
    SavedAlign := SetTextAlign((Sender as TStringGrid).Canvas.Handle, TA_CENTER);
    (Sender as TStringGrid).Canvas.TextRect(Rect,
      Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
    SetTextAlign((Sender as TStringGrid).Canvas.Handle, SavedAlign);
  end
  else
  begin
    IF ACol in [0,2,3] Then
    begin
      SavedAlign := SetTextAlign((Sender as TStringGrid).Canvas.Handle, TA_CENTER);
      (Sender as TStringGrid).Canvas.TextRect(Rect,
        Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
      SetTextAlign((Sender as TStringGrid).Canvas.Handle, SavedAlign);
    end;
  end;
end;

procedure TKISSendModuleV2_frm.ClearGrid(var StringGrid : TStringGrid);
var
  i : Integer;
begin
  for i := 1 to 50 do
  begin
    with StringGrid do
    begin
      Cells[0,i] := '';
      Cells[1,i] := '';
      Cells[2,i] := '';
      Cells[3,i] := '';
      Cells[4,i] := '';
    end;
  end;
end;

function TKISSendModuleV2_frm.RecvDocuments: Integer;
begin

end;

function TKISSendModuleV2_frm.SendDocuments: Integer;
var
  i : Integer;
begin
//------------------------------------------------------------------------------
// ���۸���Ʈ�� ���
//------------------------------------------------------------------------------
  getSendFileList;

//------------------------------------------------------------------------------
// ���۸���Ʈ�� ���
//------------------------------------------------------------------------------
  for i := 1 to FTOTAL_FILECOUNT do
  begin
    ShowMessage('������');
    StringGrid1.Row := i;
    If i > 1 then
      StringGrid1.Cells[0,i-1] := '';

    StringGrid1.Cells[0,i] := '��';
    if i = 3 Then
      StringGrid1.Cells[2,i] := '����'
    else
      StringGrid1.Cells[2,i] := '����';
      
  end;
end;

procedure TKISSendModuleV2_frm.sButton1Click(Sender: TObject);
begin
  SendDocuments;
end;

end.
