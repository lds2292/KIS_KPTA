//------------------------------------------------------------------------------
// 4���� ���� ���α׷�
//
// ������Ƽ ����
//    UserID  : �ش� ��ü�� XML ID
//    PostBox : �ش� ��ü�� XML �缭�� ��ȣ
//    SendFileCount : ���� �Ŀ� ���ۼ����� ��������
//    FailFileCount : ���� ������ ��������
//      - �� �������ʹ� ���� ���ϰ� ����
//      - (-1)�� ��쿡�� �������Է� ȭ�鿡�� ������ ��. ���� ��ü�� ����ϸ� ��
//      - (0) �� ��쿡�� ���۽��� �Ǽ��� ����
//      - �̻� �� �̿ܿ��� ���۽����� ������ �����̸�
//        ���۸������(SendDir)�� ���� ���и�� ERRLST.txt������ �����ǹǷ� �̸� Ȱ��
//    RecvFileCount : ���� ������
//    TotalFileCount : ���۴������ ������ ��
//    SendDir : ���۸������(�⺻�� C:\PROJECT\DRAWXMLTRANS\OUTPUT) �̸� ������ �� ����
//    RecvDir : �������� �б�����(���������� ����������)
//    Logdir : �α�����(���� ���� ������ ���۸������ �ؿ� LOG������ ����)
//
//    AprePostBox : ��Ǳ�������� �۽��ϱ� ���� ��Ǳ�� �����Թ�ȣ
//
//  �޼ҵ� ����
//  SendDocument : ������Ƽ�� ������� ������ �۽���
//  RecvDocument : ���� ����
//  2017�� 3�� 31�� �߰�
//  �� �޼ҵ忡 bApreDocument �Ķ���� �߰� - True��쿡�� ��Ǳ�� ����/������ ��
//  ��Ǳ�� �۽��� ��쿡�� AprePostBox�� �ʼ��� ���� ��
//  
//  SendDocument, RecvDocument ���Ŀ� ������Ƽ�� �����Ͽ� ������ ó���ϸ� ��
//------------------------------------------------------------------------------
//  SendList ����
//  ���۵� �����鿡 ���� ����
//  FDocCode : ���۹����ڵ�
//  FSingoNo : ���۹�����ȣ
//  FSendResult : ���ۼ���/���� ����  
// 
//  Ex) for i := 0 to High(SendList) do
//      begin
//         ...Work Area...
//				 ssOK : ����
//         ssFail : ���� 	
//      end;
//------------------------------------------------------------------------------

unit KIS_4GTrasfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,StrUtils,DateUtils, sEdit, sMemo, Grids, sGauge, Gauges,
  ExtCtrls, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TSendResult = (ssOK, ssFail);

  TSendList = record
    FDocCode : String;
    FSingoNo : String;
    FSendResult : TSendResult;
  end;

  TKIS_4GTrasfer_frm = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    Gauge1: TGauge;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lb_SendFileCount: TLabel;
    lb_FailFileCount: TLabel;
    lb_TotalFileCount: TLabel;
    Button3: TButton;
    Button4: TButton;
    XMLDocument1: TXMLDocument;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FGUBUN : String;
    FUserID : String;
    FPostBox : String;
    FAprePostBox : String;
    FSendTempDir : String;
    FLogDir : string;
    FErrorList : TStringList;

    FTotalFileCount : Integer;
    FSendFileCount : Integer;
    FFailFileCount : Integer;
    FRecvFileCount : Integer;

    ResponseData : Pchar;
    ResponseCODE : PChar;
    ResponseMSG : PChar;

    strList : TStringList;
    logFile : string;

    bApre :Boolean;

    procedure InitData;
    procedure InitGrid;
    procedure getSendFileList;
    procedure setFileCounts;
    function getSendListinfo(index: Integer): TSendList;
  public
    { Public declarations }
    SendList : array of TSendList;
    procedure SendDocument(bApreDocument : Boolean = false);
    procedure RecvDocument(bApreDocument : Boolean = false);
    procedure DeleteTempDir;
    property UserID:String  read FUserID write FUserID;
    property PostBox:String  read FPostBox write FPostBox;
    property AprePostBox:String read FAprePostBox write FAprePostBox;
    property SendFileCount:Integer read FSendFileCount;
    property FailFileCount:Integer read FFailFileCount;
    property RecvFileCount:Integer read FRecvFileCount;
    property TotalFileCount:Integer read FTotalFileCount;
    property SendDir : String read FSendTempDir write FSendTempDir;
    property RecvDir : String read FSendTempDir;
    property Logdir: string  read FLogDir write FLogDir;
    property FileSendList[index : Integer] : TSendList read getSendListinfo;
  end;
var
  KIS_4GTrasfer_frm: TKIS_4GTrasfer_frm;
Const
  ERRORLIST_TXT : String = 'ERRLST.txt';

implementation

uses KCSAPI4_KIS;

{$R *.dfm}

{ TKIS_4GTrasfer_frm }

procedure TKIS_4GTrasfer_frm.InitData;
begin
  IF not onLogin then
  begin
    IF Trim(FUserID) = '' Then   
      raise Exception.Create('����� ID�� �Է����ּ���'#13#10'[ȯ�漳��]-[�⺻����]���� UNIPASS ID�� �Է��ϼ���')
    else
    IF Trim(FPostBox) = '' Then
      raise Exception.Create('�缭���� �ԷµǾ����� �ʽ��ϴ�')
    else
    IF (Trim(FAprePostBox) = '') and bApre Then
      raise Exception.Create('��Ǳ�� �缭���� �ԷµǾ����� �ʽ��ϴ�');

    strList.Add('SENDID : '+FUserID);
    strList.Add('POSTBOX : '+FPostBox);

    IF bApre Then
      strList.Add('APRE_POSTBOX : '+FAprePostBox);

    ResponseData := LoginSecuMdle(Pchar(FUserID),PChar(FPostBox));
    ResponseCODE := PChar(LeftStr(ResponseData,4));
    ResponseMSG  := PChar(MidStr(ResponseData,Pos(':',ResponseData)+2,Length(ResponseData)-Pos(':',ResponseData)));

    IF ResponseCODE = 'E302' Then
    begin
      FFailFileCount := -1;
      onLogin := False;
      raise Exception.Create('������ ���');
    end
    else
    IF ResponseCODE <> 'C200' Then
    begin
      FFailFileCount := -1;
      onLogin := False;      
      Raise Exception.Create(Pchar('������ �߻��Ͽ� ������ �����Ͽ����ϴ�'#13#10'�����ڵ�: '+ResponseCODE+#13#10+ResponseMSG));
    end;

    onLogin := True;
  end;
end;

procedure TKIS_4GTrasfer_frm.Button1Click(Sender: TObject);
begin
  FTotalFileCount := 0;
  FSendFileCount := 0;
  FRecvFileCount := 0;
  FFailFileCount := 0;

  getSendFileList;
end;

procedure TKIS_4GTrasfer_frm.FormCreate(Sender: TObject);
begin
  FSendTempDir := 'C:\PROJECT\DRAWXMLTRANS\OUTPUT\';
  //LOG �ʱ�ȭ------------------------------------------------------------------
  strList := TStringList.Create;

  FSendFileCount := 0;
  FRecvFileCount := 0;
  FFailFileCount := 0;
  FTotalFileCount := 0;

  setFileCounts;

  Self.Show;

end;

procedure TKIS_4GTrasfer_frm.RecvDocument(bApreDocument : Boolean);
var
  RecvList : TStringList;
  RecvFileListPath : String;

  RecvDocID,RecvFileName : String;
  i:integer;
  GridIdx : Integer;
begin
  FGUBUN := '����';
//------------------------------------------------------------------------------
// ���Ű��
//------------------------------------------------------------------------------
  FSendTempDir := 'C:\KCSAPI4\'+FormatDateTime('YYYYMMDD',Now)+'\Rcv\';
//------------------------------------------------------------------------------
// ��Ǳ�� ���ſ���
//------------------------------------------------------------------------------
  bApre := bApreDocument;

  Self.Caption := '���ڹ��� ���Ÿ�� by KIS';
  Label4.Caption := '���ϼ��� ���';
  Label5.Caption := '���ϼ��� ����';

  RecvList := TStringList.Create;

  InitGrid;

  try
    InitData;

    //���۸�Ͽ�û------------------------------------------------------------
    if bApre Then
      ResponseData := RcpnDocLstReqApre(Pchar(FUserID),PChar(FPostBox))
    else
      ResponseData := RcpnDocLstCscl(Pchar(FUserID),PChar(FPostBox));

    ResponseCODE := PChar(LeftStr(ResponseData,4));
    ResponseMSG  := PChar(MidStr(ResponseData,Pos(':',ResponseData)+2,Length(ResponseData)-Pos(':',ResponseData)));

    IF ResponseCODE = 'C901' Then
    begin
      ShowMessage('������ ������ �����ϴ�');
      Exit;
    end
    else
    IF ResponseCode = 'C401' Then
    begin
      raise Exception.Create('[C401] �ſ�Ȯ�ο��� : ��ϵ� ������ ���� �ٽ� �ѹ� Ȯ���Ͻð� ����� �Ͻʽÿ�');
    end
    else
    IF ResponseCODE = 'C200' Then
    begin
      //���Ÿ�� �ؽ�Ʈ���� ���
      RecvFileListPath := MidStr(ResponseMSG,Pos('#',ResponseMSG)+1,Length(ResponseMSG)-Pos('#',ResponseMSG));

      //���Ÿ�� ����
      RecvList.LoadFromFile(RecvFileListPath);

      DeleteFile(RecvFileListPath);

      //��ϱ�� ���ϼ���
      InitGrid;
      GridIdx := 1;

      for i:= 0 to RecvList.Count-1 do
      begin
        Application.ProcessMessages;
        StringGrid1.RowCount := GridIdx+1;
        RecvDocID    := RightStr( RecvList.Strings[i] , 9);
        RecvFileName := LeftStr(RecvList.Strings[i],Pos(',',RecvList.Strings[i])-1);

        StringGrid1.Cells[1,GridIdx] := RecvDocID;
        StringGrid1.Cells[2,GridIdx] := RecvFileName;
//          StringGrid1.Cells[4,GridIdx] := RecvList.Strings[i];
        Inc(GridIdx);
        Inc(FTotalFileCount);
      end;

      lb_TotalFileCount.Caption := IntToStr(FTotalFileCount)+' ��';
      Gauge1.MaxValue := FTotalFileCount;

      for i:= 1 to StringGrid1.RowCount -1 do
      begin
        Application.ProcessMessages;
        StringGrid1.Row := i;
        if bApre then
        begin
          //------------------------------------------------------------------------------
          // ��Ǳ�� ����
          //------------------------------------------------------------------------------
          ResponseData := RcpnDocReqApre(Pchar(FUserID)
                                     ,Pchar(PostBox)
                                     ,PChar(StringGrid1.Cells[1,i])
                                     ,PChar(StringGrid1.Cells[2,i]));
        end
        else
        begin
          //------------------------------------------------------------------------------
          // �Ϲ� �����н� ����
          //------------------------------------------------------------------------------
          ResponseData := RcpnDocCscl(Pchar(FUserID)
                                     ,Pchar(PostBox)
                                     ,PChar(StringGrid1.Cells[1,i])
                                     ,PChar(StringGrid1.Cells[2,i]));
        end;
        ResponseCODE := PChar(LeftStr(ResponseData,4));
        ResponseMSG  := PChar(MidStr(ResponseData,Pos(':',ResponseData)+2,Length(ResponseData)-Pos(':',ResponseData)));

        IF ResponseCODE = 'C200' Then
        begin
          StringGrid1.Cells[3,i] := '���ſϷ�';
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+ResponseMSG+' ���ſϷ�');
          Inc(FSendFileCount);
        end
        else
        begin
          StringGrid1.Cells[3,i] := '����';
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+StringGrid1.Cells[2,i]+ResponseMSG);
          Inc(FFailFileCount);
        end;
        Gauge1.Progress := i;
      end;

      lb_SendFileCount.Caption := IntToStr(FSendFileCount)+' ��';
      lb_FailFileCount.Caption := IntToStr(FFailFileCount)+' ��';

      FTotalFileCount := 0;
      FSendFileCount := 0;
      FRecvFileCount := 0;
      FFailFileCount := 0;
    end
    else
    begin
      ShowMessage(ResponseCODE+#13#10+ResponseMSG);
      strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+ResponseMSG);
      Inc(FFailFileCount);
    end;

  except
    on E:Exception do
    begin
      strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+E.Message);
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TKIS_4GTrasfer_frm.SendDocument(bApreDocument : Boolean);
var
//  SearchRec : TSearchRec;
  DOCID : PChar;
  DOCNO : PChar;
  sFileName : String;
  i : integer;
begin
  FGUBUN := '����';

//------------------------------------------------------------------------------
// ��Ǳ�� ���ۿ���
//------------------------------------------------------------------------------
  bApre := bApreDocument;

  Self.Caption := '���ڹ��� ���۸�� by KIS';
  Label4.Caption := '�������� ����';
  Label5.Caption := '�������� ����';

  getSendFileList;

  IF FTotalFileCount = 0 Then
  begin
    ShowMessage('���۹����� �����ϴ�');
    Exit;
  end;

  FErrorList := TStringList.Create;
//  InitGrid;
  try
    try
      InitData;
//------------------------------------------------------------------------------
// ���۸���Ʈ ũ�� ����
//------------------------------------------------------------------------------
      SetLength(SendList,StringGrid1.RowCount-1);

      for i := 1 to StringGrid1.RowCount -1 do
      begin
        Application.ProcessMessages;

        if i > 1 Then
          StringGrid1.Cells[0,i-1] := '';
          
        StringGrid1.Cells[0,i] := '��';
        StringGrid1.Row := i;
        sFileName := StringGrid1.Cells[4,i];

        // �� ���̱�
        // ����(�Ϲ������н�)
        IF bApre Then
        begin
          //����(���Ȯ��)
          ResponseData := TrsmDocReqApre(Pchar(UserID),
                                      PChar(FPostBox),
                                      PChar(FAprePostBox),
                                      Pchar(StringGrid1.Cells[1,i]),
                                      Pchar(StringGrid1.Cells[2,i]),
                                      PChar(sFileName));
        end
        else
        begin
          ResponseData := TrsmDocCscl(Pchar(UserID),
                                      PChar(FPostBox),
                                      Pchar(StringGrid1.Cells[1,i]),
                                      Pchar(StringGrid1.Cells[2,i]),
                                      PChar(sFileName));
        end;

        ResponseCODE := PChar(LeftStr(ResponseData,4));
        ResponseMSG  := PChar(MidStr(ResponseData,Pos(':',ResponseData)+2,Length(ResponseData)-Pos(':',ResponseData)));

//------------------------------------------------------------------------------
// ���۸���Ʈ ������ �Է�
//------------------------------------------------------------------------------
        SendList[i-1].FDocCode := StringGrid1.Cells[1,i];
        SendList[i-1].FSingoNo := StringGrid1.Cells[2,i];
        SendList[i-1].FSendResult := ssOK;

        IF ResponseCODE <> 'C200' Then
        begin
          SendList[i-1].FSendResult := ssFail;
          StringGrid1.Cells[3,i] := '����';
          //������� �����ڵ�(10) �����ȣ(30)
          FErrorList.Add(Format('%-10s%-30s',[StringGrid1.Cells[1,i],StringGrid1.Cells[2,i]]));
//          FErrorList.Add(StringGrid1.Cells[4,i]);
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+Format('%-10s %s %s',[StringGrid1.Cells[1,i],StringGrid1.Cells[2,i],'['+ResponseCODE+']'+ResponseMSG]));
           Inc(FFailFileCount);
        end
        else
        begin
          StringGrid1.Cells[3,i] := '����';
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+Format('%-10s %s %s',[StringGrid1.Cells[1,i],StringGrid1.Cells[2,i],'���ۿϷ�']));
          Inc(FSendFileCount);
          DeleteFile(sFileName);
        end;

        Gauge1.Progress := i;

      end;

      lb_SendFileCount.Caption := IntToStr(FSendFileCount)+' ��';
      lb_FailFileCount.Caption := IntToStr(FFailFileCount)+' ��';

      IF FFailFileCount > 0 then
      begin
        //������� ����
        IF FileExists(FSendTempDir+ERRORLIST_TXT) Then DeleteFile(FSendTempDir+ERRORLIST_TXT);
        FErrorList.SaveToFile(FSendTempDir+ERRORLIST_TXT);
        
        IF MessageBox(0,'���۽����� ������ �ֽ��ϴ�'#13#10'������ Ȯ���Ͻðڽ��ϱ�?','�������� ����',MB_YESNO+MB_ICONQUESTION) = ID_YES Then
        begin
          strList.SaveToFile(logFile);        
          WinExec(PChar('notepad '+logFile),SW_SHOW);
        end;
      end;

//      FTotalFileCount := 0;
//      FSendFileCount := 0;
//      FRecvFileCount := 0;
//      FFailFileCount := 0;
    except
      on E:Exception do
      begin
        strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+E.Message);
        ShowMessage(E.Message);
      end;
    end;
  finally
    FErrorList.Free;
  end;
end;

procedure TKIS_4GTrasfer_frm.InitGrid;
begin
  StringGrid1.RowCount := 2;
  IF FGUBUN = '����' Then
  begin
    Label1.Caption := '���� �غ�� ���� :';
    Label2.Caption := '���ۿϷ� ���� :';
    Label3.Caption := '���۽��� ���� :';

    StringGrid1.Cells[1,0] := '�����ڵ�';
    StringGrid1.Cells[2,0] := '�����ȣ';
    StringGrid1.Cells[3,0] := '���ۿ���';
    StringGrid1.ColWidths[4] := -1;
  end
  else
  begin
    Label1.Caption := '���� �غ�� ���� :';
    Label2.Caption := '���ſϷ� ���� :';
    Label3.Caption := '���Ž��� ���� :';

    StringGrid1.Cells[1,0] := '�����ڵ�';
    StringGrid1.Cells[2,0] := '�����ȣ';
    StringGrid1.Cells[3,0] := '���ſ���';
    StringGrid1.ColWidths[4] := -1;
  end;
  StringGrid1.Cells[1,1] := '';
  StringGrid1.Cells[1,2] := '';
  StringGrid1.Cells[1,3] := '';
end;

procedure TKIS_4GTrasfer_frm.getSendFileList;
var
  sFileName, DOCID, DOCNO : string;
  SearchRec : TSearchRec;
  i : integer;
begin

  InitGrid;

  IF Trim(FSendTempDir) = '' Then
    Raise Exception.Create('�ӽ����������� �������� �ʾҽ��ϴ�');

  ForceDirectories(FSendTempDir); 

  IF RightStr( FSendTempDir , 1 ) <> '\' Then
    FSendTempDir := FSendTempDir+'\'; 

  //----------------------------------------------------------------------------
  // LOG �ʱ�ȭ
  //----------------------------------------------------------------------------
  IF Trim(FLogDir) = '' Then
    FLogDir := FSendTempDir+'LOG\';

  ForceDirectories(FLogDir);
  logFile := LogDir+FormatDateTime('YYMMDD',Now)+'.txt';

  if FileExists(logFile) Then
  begin
    strList.LoadFromFile(logFile);
    strList.Add('----------------------------------------------------------------------------');
  end;
  //----------------------------------------------------------------------------

  IF FindFirst(FSendTempDir+'*.xml',faAnyFile-faDirectory,SearchRec) = 0 Then
  begin
    IF FindFirst(FSendTempDir+'*.xml',faAnyFile-faDirectory,SearchRec) = 0 Then
    begin
      i := 1;
      repeat
        //GOVCBR-830-1234515100001U
        StringGrid1.RowCount := i + 1;
        sFileName := AnsiReplaceText(SearchRec.Name,'-','');
        sFileName := AnsiReplaceText(sFileName,'.xml','');
        IF LeftStr(sFileName,2) = 'VC' Then
        begin
          //�׽�Ʈ ����
          DOCID := 'GOVCBRDTS';
          DOCNO := RightStr(sFileName,7);
        end
        else
        begin
          //�����ڵ�
          DOCID := PChar(LeftStr(sFileName,9));
          //������ȣ
          DOCNO := pchar(MidStr(sFileName,10,Length(sFileName)-9));
        end;

        StringGrid1.Cells[1,i] := DOCID;
        StringGrid1.Cells[2,i] := DOCNO;
        StringGrid1.Cells[3,i] := '���۴��';
        StringGrid1.Cells[4,i] := FSendTempDir+SearchRec.Name;
        Inc(i);
        inc(FTotalFileCount);
      until FindNext(SearchRec) <> 0;
      FindClose(SearchRec);

      IF (StringGrid1.RowCount > 1) AND (Trim(StringGrid1.Cells[1,1]) <> '') Then
      begin
        StringGrid1.Cells[0,1] := '��';
      end;

      setFileCounts;

    end;

  end;
end;

procedure TKIS_4GTrasfer_frm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin    

  IF (ACol > 0) AND (ARow > 0) Then
  begin
    StringGrid1.Canvas.Brush.Color := clWhite;
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[Acol,ARow]);
  end;

  if gdSelected in State then
  begin
//    StringGrid1.Canvas.Brush.Color := $007DBEFF;
    StringGrid1.Canvas.Brush.Color := $00B5FFFF;
    StringGrid1.Canvas.Font.Color := clBlack;
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[Acol,ARow]);
  end
  else
  IF (ACol = 1) Then
  begin
    StringGrid1.Canvas.Brush.Color := clBtnFace;
    StringGrid1.Canvas.FillRect(Rect);
    IF AROW = 0 Then
      StringGrid1.Canvas.TextOut(Rect.Left+16,Rect.Top+2,StringGrid1.Cells[Acol,ARow])
    else
      StringGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[Acol,ARow]);
  end
  else
  IF (ACol = 0) Then
  begin
      StringGrid1.Canvas.TextOut(Rect.Left+5,Rect.Top+2,StringGrid1.Cells[Acol,ARow]);
  end;


end;

procedure TKIS_4GTrasfer_frm.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  i : integer;
begin
  for i := 1 to StringGrid1.RowCount -1 do
  begin
    StringGrid1.Cells[0,i] := '';
  end;

  StringGrid1.Cells[0,ARow] := '��';
end;

procedure TKIS_4GTrasfer_frm.Button2Click(Sender: TObject);
begin
  SendDocument;
end;

procedure TKIS_4GTrasfer_frm.setFileCounts;
begin
  lb_TotalFileCount.Caption := IntToStr(FTotalFileCount)+' ��';
  Gauge1.MaxValue := FTotalFileCount;
  Gauge1.Progress := 0;
  lb_SendFileCount.Caption := IntToStr(FSendFileCount)+' ��';
  lb_FailFileCount.Caption := IntToStr(FFailFileCount)+' ��';
end;

procedure TKIS_4GTrasfer_frm.Button3Click(Sender: TObject);
begin
  RecvDocument;
end;

procedure TKIS_4GTrasfer_frm.FormDestroy(Sender: TObject);
begin
  IF logFile <> '' Then
  begin
    strList.SaveToFile(logFile);
  end;
  strList.Free;  
end;

procedure TKIS_4GTrasfer_frm.DeleteTempDir;
var
  SearchRec : TSearchRec;
begin
  IF Trim(FSendTempDir) = '' Then
    Raise Exception.Create('�ӽ����������� �������� �ʾҽ��ϴ�');
    
  IF RightStr( FSendTempDir , 1 ) <> '\' Then
    FSendTempDir := FSendTempDir+'\';
    
  IF FindFirst(FSendTempDir+'*.xml',faAnyFile-faDirectory,SearchRec) = 0 Then
  begin
    repeat
      DeleteFile(FSendTempDir+SearchRec.Name)
    until FindNext(SearchRec) <> 0;
    FindClose(SearchRec);
  end;
end;

function TKIS_4GTrasfer_frm.getSendListinfo(index: Integer): TSendList;
begin
  If High(SendList) = -1 Then
  begin
    Result.FDocCode := '';
    Result.FSingoNo := '';
    Result.FSendResult := ssOK;
  end
  else
    Result := SendList[index];
end;

end.
