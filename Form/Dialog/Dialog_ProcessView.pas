unit Dialog_ProcessView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, Grids, ExtCtrls, sPanel, sSkinProvider, sScrollBox,
  StdCtrls, sLabel, Buttons, sSpeedButton, sMemo, CommonDef, ComCtrls, KisXmlReader;

type
  TDialog_ProcessView_frm = class(TParentForm_frm)
    sPanel2: TsPanel;
    sScrollBox1: TsScrollBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    XR : xmlReader;
    FixedCnt : Integer;
    FTotalCnt : Integer;
    PanelIndex : Integer;
    PI : TPanelInfo;
    procedure CreatePanel;
  public
    { Public declarations }
    procedure SearchNo(DocNo : String);
  end;

var
  Dialog_ProcessView_frm: TDialog_ProcessView_frm;

implementation

{$R *.dfm}

procedure TDialog_ProcessView_frm.FormCreate(Sender: TObject);
begin
  inherited;
  PanelIndex := 1;

  PI.X := 4; PI.Y := 4; PI.Widht := 726; PI.Height := 65;
end;

procedure TDialog_ProcessView_frm.CreatePanel;
begin
  //패널
  with TsPanel.Create(Self) do
  begin
    Parent := sScrollBox1;
    Name := 'panInfo'+IntToStr(PanelIndex);
    Caption := '';
    Tag := PanelIndex;
    Cursor := crDefault;
    SkinData.SkinSection := 'PANEL';

    Width := PI.Widht;
    Height := PI.Height;
    Left := PI.X;
    Top := ((PanelIndex-1)*65)+(4*PanelIndex);

    IF FTotalCnt = FixedCnt Then
      SkinData.SkinSection := 'MAINMENU'
    else
      SkinData.SkinSection := 'PANEL';

    Visible := True;
  end;

//------------------------------------------------------------------------------
// 경계선
//------------------------------------------------------------------------------
  with TsSpeedButton.Create(Self) do
  begin
    Name := 'L_Divide_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 37;
    Top := 4;
    Width := 11;
    Height := 57;
    Anchors := [akLeft, akTop, akBottom];
    ButtonStyle := tbsDivider;
    SkinData.SkinSection := 'SPEEDBUTTON';
    Visible := True;
  end;

  with TsSpeedButton.Create(Self) do
  begin
    Name := 'L2_Divide_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 176;
    Top := 4;
    Width := 11;
    Height := 57;
    Anchors := [akLeft, akTop, akBottom];
    ButtonStyle := tbsDivider;
    SkinData.SkinSection := 'SPEEDBUTTON';
    Visible := True;
  end;

//------------------------------------------------------------------------------
// 내용
//------------------------------------------------------------------------------
  //순번
  with TsLabel.Create(Self) do
  begin
    Name := 'lblNo_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 4;
    Top := 25;
    Width := 32;
    Height := 15;
    Tag := 100;
    Alignment := taCenter;
    Anchors := [akLeft];
    AutoSize := False;
    Caption := FormatFloat('00',FTotalCnt);
  end;

  //처리문서코드
  with TsLabel.Create(Self) do
  begin
    Name := 'lblProcessCode_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 46;
    Top := 9;
    Width := 130;
    Height := 15;
    Tag := 0;
    Alignment := taCenter;
    Anchors := [akLeft];
    AutoSize := False;
    Caption := XR.getValue(XR.CHILD_NODE, 'reqRelaElctDocCd')+' - '+XR.getValue(XR.CHILD_NODE, 'reqRqstPrcsStcd')
  end;

  //요건신청번호
  with TsLabel.Create(Self) do
  begin
    Name := 'lblReqNo_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 46;
    Top := 25;
    Width := 130;
    Height := 15;
    Tag := 0;
    Alignment := taCenter;
    Anchors := [akLeft];
    AutoSize := False;
    Caption := XR.getValue(XR.CHILD_NODE, 'reqRqstNo');
  end;

  //처리일자
  with TsLabel.Create(Self) do
  begin
    Name := 'lblProcessDT_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 46;
    Top := 41;
    Width := 130;
    Height := 15;
    Tag := 0;
    Alignment := taCenter;
    Anchors := [akLeft];
    AutoSize := False;
    Caption := XR.getValue(XR.CHILD_NODE, 'rcpnDttm');
  end;

  //처리문서명
  with TsLabel.Create(Self) do
  begin
    Name := 'lblProcessContent_'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 188;
    Top := 9;
    Width := 130;
    Height := 15;
    Tag := 0;
    Alignment := taLeftJustify;
    Anchors := [akLeft];
    AutoSize := True;
    IF XR.getValue(XR.CHILD_NODE, 'relaDocNm') = '' Then
      Caption := '['+XR.getValue(XR.CHILD_NODE, 'elctDocNm')+']'
    else
      Caption := '['+XR.getValue(XR.CHILD_NODE, 'relaDocNm')+'] '+XR.getValue(XR.CHILD_NODE, 'elctDocNm');
  end;

  //결과통보번호
  with TsLabel.Create(Self) do
  begin
    Name := 'lblResultNo'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 188;
    Top := 25;
    Width := 250;
    Height := 15;
    Tag := 0;
    Alignment := taLeftJustify;
    Anchors := [akLeft];
    AutoSize := True;
    Caption := '';
    IF XR.getValue(XR.CHILD_NODE, 'reqIttRsltInfmNo') <> '' Then
      Caption := '요건기관결과통보번호: '+XR.getValue(XR.CHILD_NODE, 'reqIttRsltInfmNo')
  end;

  //처리내역
  with TsLabel.Create(Self) do
  begin
    Name := 'lblResultContent'+IntToStr(PanelIndex);
    Parent := (Self.FindComponent('panInfo'+IntToStr(PanelIndex)) as TsPanel);
    Left := 188;
    Top := 41;
    Width := 250;
    Height := 15;
    Tag := 0;
    Alignment := taLeftJustify;
    Anchors := [akLeft];
    AutoSize := True;
    Caption := '';
    IF XR.getValue(XR.CHILD_NODE, 'reqRqstPrcsSttsNm') <> '' Then
      Caption := '['+XR.getValue(XR.CHILD_NODE, 'reqRqstPrcsSttsNm')+']';
  end;

  Dec(FTotalCnt);
  Inc(PanelIndex);
end;

Const
  BasicURL : String = 'https://unipass.customs.go.kr:38010/ext/rest/apfmPrcsStusQry/retrieveApfmPrcsStus?crkyCn=j270w199s031u088e090l030n0&reqRqstNo=';
procedure TDialog_ProcessView_frm.SearchNo(DocNo: String);
begin
  XR := xmlReader.CreateFromURL(BasicURL+DocNo);
  try
    with XR do
    begin
      CHILD_NODE := ROOT_NODE.ChildNodes.First;
      FTotalCnt := getValue(ROOT_NODE, 'tCnt');
      FixedCnt := FTotalCnt;
      IF FTotalCnt = 0 Then
      begin
        ShowMessage('처리현황을 찾을 수 없습니다');
        Exit;
      end;

      while CHILD_NODE <> nil do
      begin
        IF CHILD_NODE.NodeName = 'apfmPrcsStusQryVo' Then
        begin
          CreatePanel;
        end;
        CHILD_NODE := CHILD_NODE.NextSibling;
      end;
    end;
  finally
    XR.Free;
  end;

  Self.ShowModal;
end;

end.
