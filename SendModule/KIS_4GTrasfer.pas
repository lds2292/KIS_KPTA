//------------------------------------------------------------------------------
// 4세대 전송 프로그램
//
// 프로퍼티 설명
//    UserID  : 해당 업체의 XML ID
//    PostBox : 해당 업체의 XML 사서함 번호
//    SendFileCount : 전송 후에 전송성공한 문서갯수
//    FailFileCount : 전송 실패한 문서갯수
//      - 이 프로피터는 다음 리턴값 설명
//      - (-1)일 경우에는 인증서입력 화면에서 오류가 남. 문서 전체를 취소하면 됨
//      - (0) 일 경우에는 전송실패 건수가 없음
//      - 이상 값 이외에는 전송실패한 문서의 갯수이며
//        전송목록폴더(SendDir)에 전송 실패목록 ERRLST.txt파일이 생성되므로 이를 활용
//    RecvFileCount : 수신 문서수
//    TotalFileCount : 전송대기중인 파일의 수
//    SendDir : 전송목록폴더(기본값 C:\PROJECT\DRAWXMLTRANS\OUTPUT) 이며 수정할 수 있음
//    RecvDir : 수신폴더 읽기전용(수신폴더는 정해져있음)
//    Logdir : 로그폴더(값을 넣지 않으면 전송목록폴더 밑에 LOG폴더가 생김)
//
//    AprePostBox : 요건기관쪽으로 송신하기 위한 요건기관 문서함번호
//
//  메소드 설명
//  SendDocument : 프로퍼티의 설정대로 문서를 송신함
//  RecvDocument : 문서 수신
//  2017년 3월 31일 추가
//  각 메소드에 bApreDocument 파라미터 추가 - True경우에는 요건기관 전송/수신을 함
//  요건기관 송신일 경우에는 AprePostBox가 필수로 들어가야 함
//  
//  SendDocument, RecvDocument 이후에 프로퍼티를 참조하여 문서를 처리하면 됨
//------------------------------------------------------------------------------
//  SendList 설명
//  전송된 문서들에 대한 집합
//  FDocCode : 전송문서코드
//  FSingoNo : 전송문서번호
//  FSendResult : 전송성공/실패 여부  
// 
//  Ex) for i := 0 to High(SendList) do
//      begin
//         ...Work Area...
//				 ssOK : 성공
//         ssFail : 실패 	
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
      raise Exception.Create('사용자 ID를 입력해주세요'#13#10'[환경설정]-[기본설정]에서 UNIPASS ID를 입력하세요')
    else
    IF Trim(FPostBox) = '' Then
      raise Exception.Create('사서함이 입력되어있지 않습니다')
    else
    IF (Trim(FAprePostBox) = '') and bApre Then
      raise Exception.Create('요건기관 사서함이 입력되어있지 않습니다');

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
      raise Exception.Create('인증서 취소');
    end
    else
    IF ResponseCODE <> 'C200' Then
    begin
      FFailFileCount := -1;
      onLogin := False;      
      Raise Exception.Create(Pchar('에러가 발생하여 전송이 실패하였습니다'#13#10'에러코드: '+ResponseCODE+#13#10+ResponseMSG));
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
  //LOG 초기화------------------------------------------------------------------
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
  FGUBUN := '수신';
//------------------------------------------------------------------------------
// 수신경로
//------------------------------------------------------------------------------
  FSendTempDir := 'C:\KCSAPI4\'+FormatDateTime('YYYYMMDD',Now)+'\Rcv\';
//------------------------------------------------------------------------------
// 요건기관 수신여부
//------------------------------------------------------------------------------
  bApre := bApreDocument;

  Self.Caption := '전자문서 수신모듈 by KIS';
  Label4.Caption := '파일수신 목록';
  Label5.Caption := '파일수신 내역';

  RecvList := TStringList.Create;

  InitGrid;

  try
    InitData;

    //전송목록요청------------------------------------------------------------
    if bApre Then
      ResponseData := RcpnDocLstReqApre(Pchar(FUserID),PChar(FPostBox))
    else
      ResponseData := RcpnDocLstCscl(Pchar(FUserID),PChar(FPostBox));

    ResponseCODE := PChar(LeftStr(ResponseData,4));
    ResponseMSG  := PChar(MidStr(ResponseData,Pos(':',ResponseData)+2,Length(ResponseData)-Pos(':',ResponseData)));

    IF ResponseCODE = 'C901' Then
    begin
      ShowMessage('수신할 문서가 없습니다');
      Exit;
    end
    else
    IF ResponseCode = 'C401' Then
    begin
      raise Exception.Create('[C401] 신원확인오류 : 등록된 인증서 인지 다시 한번 확인하시고 재수신 하십시요');
    end
    else
    IF ResponseCODE = 'C200' Then
    begin
      //수신목록 텍스트파일 경로
      RecvFileListPath := MidStr(ResponseMSG,Pos('#',ResponseMSG)+1,Length(ResponseMSG)-Pos('#',ResponseMSG));

      //수신목록 저장
      RecvList.LoadFromFile(RecvFileListPath);

      DeleteFile(RecvFileListPath);

      //목록기반 파일수신
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

      lb_TotalFileCount.Caption := IntToStr(FTotalFileCount)+' 건';
      Gauge1.MaxValue := FTotalFileCount;

      for i:= 1 to StringGrid1.RowCount -1 do
      begin
        Application.ProcessMessages;
        StringGrid1.Row := i;
        if bApre then
        begin
          //------------------------------------------------------------------------------
          // 요건기관 수신
          //------------------------------------------------------------------------------
          ResponseData := RcpnDocReqApre(Pchar(FUserID)
                                     ,Pchar(PostBox)
                                     ,PChar(StringGrid1.Cells[1,i])
                                     ,PChar(StringGrid1.Cells[2,i]));
        end
        else
        begin
          //------------------------------------------------------------------------------
          // 일반 유니패스 수신
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
          StringGrid1.Cells[3,i] := '수신완료';
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+ResponseMSG+' 수신완료');
          Inc(FSendFileCount);
        end
        else
        begin
          StringGrid1.Cells[3,i] := '오류';
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+StringGrid1.Cells[2,i]+ResponseMSG);
          Inc(FFailFileCount);
        end;
        Gauge1.Progress := i;
      end;

      lb_SendFileCount.Caption := IntToStr(FSendFileCount)+' 건';
      lb_FailFileCount.Caption := IntToStr(FFailFileCount)+' 건';

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
  FGUBUN := '전송';

//------------------------------------------------------------------------------
// 요건기관 전송여부
//------------------------------------------------------------------------------
  bApre := bApreDocument;

  Self.Caption := '전자문서 전송모듈 by KIS';
  Label4.Caption := '파일전송 상태';
  Label5.Caption := '파일전송 내역';

  getSendFileList;

  IF FTotalFileCount = 0 Then
  begin
    ShowMessage('전송문서가 없습니다');
    Exit;
  end;

  FErrorList := TStringList.Create;
//  InitGrid;
  try
    try
      InitData;
//------------------------------------------------------------------------------
// 전송리스트 크기 설정
//------------------------------------------------------------------------------
      SetLength(SendList,StringGrid1.RowCount-1);

      for i := 1 to StringGrid1.RowCount -1 do
      begin
        Application.ProcessMessages;

        if i > 1 Then
          StringGrid1.Cells[0,i-1] := '';
          
        StringGrid1.Cells[0,i] := '▶';
        StringGrid1.Row := i;
        sFileName := StringGrid1.Cells[4,i];

        // 폼 보이기
        // 전송(일반유니패스)
        IF bApre Then
        begin
          //전송(요건확인)
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
// 전송리스트 데이터 입력
//------------------------------------------------------------------------------
        SendList[i-1].FDocCode := StringGrid1.Cells[1,i];
        SendList[i-1].FSingoNo := StringGrid1.Cells[2,i];
        SendList[i-1].FSendResult := ssOK;

        IF ResponseCODE <> 'C200' Then
        begin
          SendList[i-1].FSendResult := ssFail;
          StringGrid1.Cells[3,i] := '오류';
          //에러목록 문서코드(10) 제출번호(30)
          FErrorList.Add(Format('%-10s%-30s',[StringGrid1.Cells[1,i],StringGrid1.Cells[2,i]]));
//          FErrorList.Add(StringGrid1.Cells[4,i]);
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+Format('%-10s %s %s',[StringGrid1.Cells[1,i],StringGrid1.Cells[2,i],'['+ResponseCODE+']'+ResponseMSG]));
           Inc(FFailFileCount);
        end
        else
        begin
          StringGrid1.Cells[3,i] := '전송';
          strList.Add('['+FormatDateTime('YY-MM-DD HH:NN:SS',Now)+'] '+Format('%-10s %s %s',[StringGrid1.Cells[1,i],StringGrid1.Cells[2,i],'전송완료']));
          Inc(FSendFileCount);
          DeleteFile(sFileName);
        end;

        Gauge1.Progress := i;

      end;

      lb_SendFileCount.Caption := IntToStr(FSendFileCount)+' 건';
      lb_FailFileCount.Caption := IntToStr(FFailFileCount)+' 건';

      IF FFailFileCount > 0 then
      begin
        //에러목록 저장
        IF FileExists(FSendTempDir+ERRORLIST_TXT) Then DeleteFile(FSendTempDir+ERRORLIST_TXT);
        FErrorList.SaveToFile(FSendTempDir+ERRORLIST_TXT);
        
        IF MessageBox(0,'전송실패한 문서가 있습니다'#13#10'오류를 확인하시겠습니까?','문서전송 오류',MB_YESNO+MB_ICONQUESTION) = ID_YES Then
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
  IF FGUBUN = '전송' Then
  begin
    Label1.Caption := '전송 준비된 문서 :';
    Label2.Caption := '전송완료 문서 :';
    Label3.Caption := '전송실패 문서 :';

    StringGrid1.Cells[1,0] := '문서코드';
    StringGrid1.Cells[2,0] := '제출번호';
    StringGrid1.Cells[3,0] := '전송여부';
    StringGrid1.ColWidths[4] := -1;
  end
  else
  begin
    Label1.Caption := '수신 준비된 문서 :';
    Label2.Caption := '수신완료 문서 :';
    Label3.Caption := '수신실패 문서 :';

    StringGrid1.Cells[1,0] := '문서코드';
    StringGrid1.Cells[2,0] := '제출번호';
    StringGrid1.Cells[3,0] := '수신여부';
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
    Raise Exception.Create('임시저장폴더가 지정되지 않았습니다');

  ForceDirectories(FSendTempDir); 

  IF RightStr( FSendTempDir , 1 ) <> '\' Then
    FSendTempDir := FSendTempDir+'\'; 

  //----------------------------------------------------------------------------
  // LOG 초기화
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
          //테스트 문서
          DOCID := 'GOVCBRDTS';
          DOCNO := RightStr(sFileName,7);
        end
        else
        begin
          //문서코드
          DOCID := PChar(LeftStr(sFileName,9));
          //문서번호
          DOCNO := pchar(MidStr(sFileName,10,Length(sFileName)-9));
        end;

        StringGrid1.Cells[1,i] := DOCID;
        StringGrid1.Cells[2,i] := DOCNO;
        StringGrid1.Cells[3,i] := '전송대기';
        StringGrid1.Cells[4,i] := FSendTempDir+SearchRec.Name;
        Inc(i);
        inc(FTotalFileCount);
      until FindNext(SearchRec) <> 0;
      FindClose(SearchRec);

      IF (StringGrid1.RowCount > 1) AND (Trim(StringGrid1.Cells[1,1]) <> '') Then
      begin
        StringGrid1.Cells[0,1] := '▶';
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

  StringGrid1.Cells[0,ARow] := '▶';
end;

procedure TKIS_4GTrasfer_frm.Button2Click(Sender: TObject);
begin
  SendDocument;
end;

procedure TKIS_4GTrasfer_frm.setFileCounts;
begin
  lb_TotalFileCount.Caption := IntToStr(FTotalFileCount)+' 건';
  Gauge1.MaxValue := FTotalFileCount;
  Gauge1.Progress := 0;
  lb_SendFileCount.Caption := IntToStr(FSendFileCount)+' 건';
  lb_FailFileCount.Caption := IntToStr(FFailFileCount)+' 건';
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
    Raise Exception.Create('임시저장폴더가 지정되지 않았습니다');
    
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
