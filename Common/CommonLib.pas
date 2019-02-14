unit CommonLib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CommonDef, sComboBox, StrUtils, DateUtils, DCPsha1, sPanel, sEdit, sMaskEdit, sMemo;

  function ConvertStr2Date(strDate : string):TDateTime;
  function getCodefromCombobox(Combobox : TsComboBox; ExtractChar : String='-'):String;
  function setCodeFromCombobox(Combobox : TsComboBox; sCode : String; ExtractChar : string; DefaultIndex : Integer = 0):Integer;
  function Bool2StrKIS(value : Boolean;strBool : Boolean = False):string;
  //SHA-1을 이용한 해쉬 암호화 (복호화불가능)
  function GetHashString(Value: String): String;
  procedure ClearPanel(var UserPanel : TsPanel);
  procedure ReadOnlyPanel(var UserPanel : TsPanel; bValue : Boolean = False);  
  function CopyK(S: String; Index, Count: Integer; bSpace: Boolean=False): String;
  
implementation

function getCodefromCombobox(Combobox : TsComboBox;ExtractChar : String):String;
var
  StartIndex, EndIndex : Integer;
begin
  IF ExtractChar = '-' then
    Result := Trim(LeftStr(Combobox.Text, POS(ExtractChar,Combobox.Text)-1))
  else
  IF ExtractChar = '[' then
  begin
    StartIndex := POS(ExtractChar,Combobox.Text)+1;
    EndIndex   := Pos(']',Combobox.Text);
    Result := Trim(MidStr(Combobox.Text, StartIndex, EndIndex-StartIndex));
  end
  else
  IF ExtractChar = ']' then
  begin
    StartIndex := Pos('[',Combobox.Text)+1;
    EndIndex   := POS(ExtractChar,Combobox.Text);
    Result := Trim(MidStr(Combobox.Text, StartIndex, EndIndex-StartIndex));
  end;
end;

function setCodeFromCombobox(Combobox : TsComboBox; sCode : String; ExtractChar : string; DefaultIndex : Integer):Integer;
var
  i : Integer;
  StartIndex, EndIndex : Integer;
  strValue : String;
begin
  Result := DefaultIndex;
  for i := 0 to Combobox.Items.Count - 1 do
  begin
    strValue := Combobox.Items.Strings[i];

    IF ExtractChar = '-' then
      strValue := Trim(LeftStr(strValue, POS(ExtractChar,strValue)-1))
    else
    IF ExtractChar = '[' then
    begin
      StartIndex := POS(ExtractChar,strValue)+1;
      EndIndex   := Pos(']',strValue);
      strValue := Trim(MidStr(strValue, StartIndex, EndIndex-StartIndex));
    end
    else
    IF ExtractChar = ']' then
    begin
      StartIndex := Pos('[',strValue)+1;
      EndIndex   := POS(ExtractChar,strValue);
      strValue := Trim(MidStr(strValue, StartIndex, EndIndex-StartIndex));
    end;

    if strValue = sCode Then
    begin
      Result := i;
      Break;
    end;
  end;
end;

function ConvertStr2Date(strDate : string):TDateTime;
var
  nYear, nMon, nDay, nHour, nMin, nSec : Word;
begin
  strDate := AnsiReplaceText(strDate,'-','');
  strDate := AnsiReplaceText(strDate,':','');
  strDate := AnsiReplaceText(strDate,' ','');

  IF strDate = '' Then
  begin
    Result := Now;
    Exit;
  end;

  Case Length(strDate) of
    8:
    begin
      nYear := StrToInt(LeftStr(strDate,4));
      nMon  := StrToInt(MidStr(strDate,5,2));
      nDay  := StrToInt(MidStr(strDate,7,2));
      nHour := 0;
      nMin  := 0;
      nSec  := 0;
    end;

    14:
    begin
      nYear := StrToInt(LeftStr(strDate,4));
      nMon  := StrToInt(MidStr(strDate,5,2));
      nDay  := StrToInt(MidStr(strDate,7,2));
      nHour := StrToInt(MidStr(strDate,9,2));
      nMin  := StrToInt(MidStr(strDate,11,2));
      nSec  := StrToInt(MidStr(strDate,13,2));
    end;
  end;

  Result := EncodeDateTime(nYear,nMon,nday,nHour,nMin,nSec,0);
end;

function Bool2StrKIS(value : Boolean;strBool : Boolean = False):string;
begin
  IF strBool Then
  begin
    Result := 'False';
    IF value Then Result := 'True';
  end
  else
  begin
    Result := '0';
    IF value Then Result := '1';
  end;
end;

function GetHashString(Value: String): String;
var
  SHA1 : TDCP_sha1;
  Digest: array[0..19] of byte;  //20*8 = 60bit
  i : Integer;
begin
  SHA1 := TDCP_sha1.Create(nil);
  SHA1.Init;
  SHA1.UpdateStr(Value);
  SHA1.Final(Digest);
  for i:= 0 to 19 do
    Result := Result + IntToHex(Digest[i],2);
  SHA1.Free;
end;

procedure ClearPanel(var UserPanel : TsPanel);
var
  i : integer;
begin
  for i := 0 to UserPanel.ControlCount-1 do
  begin
    IF UserPanel.Controls[i] is TsEdit Then (UserPanel.Controls[i] as TsEdit).Clear;
    IF UserPanel.Controls[i] is TsMaskEdit Then (UserPanel.Controls[i] as TsMaskEdit).Clear;
    IF UserPanel.Controls[i] is TsComboBox Then (UserPanel.Controls[i] as TsComboBox).ItemIndex := -1;
    IF UserPanel.Controls[i] is TsMemo Then (UserPanel.Controls[i] as TsMemo).Lines.Clear;
  end;
end;

procedure ReadOnlyPanel(var UserPanel : TsPanel; bValue : Boolean = False);
var
  i : Integer;
begin
  for i := 0 to UserPanel.ControlCount-1 do
  begin
    IF UserPanel.Controls[i] is TsEdit Then
    begin
      IF (UserPanel.Controls[i] as TsEdit).Color = clBtnface Then
        (UserPanel.Controls[i] as TsEdit).ReadOnly := True
      else
        (UserPanel.Controls[i] as TsEdit).ReadOnly := bValue;
    end;
    IF UserPanel.Controls[i] is TsMaskEdit Then (UserPanel.Controls[i] as TsMaskEdit).ReadOnly := bValue;
    IF UserPanel.Controls[i] is TsComboBox Then (UserPanel.Controls[i] as TsComboBox).ReadOnly := bValue;
    IF UserPanel.Controls[i] is TsMemo Then (UserPanel.Controls[i] as TsMemo).ReadOnly := bValue;
  end;
end;

function CopyK(S: String; Index, Count: Integer; bSpace: Boolean=False): String;
//==============================================================================
// PROCEDURE NAME : CopyK 
// DESCRIPTION : 
//      한글(2byte)을 Copy함수로 자를때 한글반바이트(1byte) 때문에 특수문자 또는 
//      한글이 깨지는 문제처리. 
// 
//      시작점(Index)이 한글 끝byte이면 다음 글자부터 자른다. (Index+1) 
//      끝문자가 한글 시작byte이면 이전 글자까지 자른다. (Count-1) 
//      시작과 끝이 한글반바이트면 안쪽에 있는 문자만 자른다.(Index+1, Count-1) 
// 
//      CopyK('안녕하세요', 2, 5, False)  ->  [녕하] 
//      CopyK('안녕하세요', 3, 5, False)  ->  [녕하] 
//      CopyK('안녕하세요', 2, 5, True)  ->  [녕하 ] 
//      CopyK('안녕하세요', 3, 5, True)  ->  [녕하 ] 
//      CopyK('안녕하세요', 2, 6, True)  ->  [녕하  ] 
// RETURN : 
//      자른문자열 
// PARAMETER : 
//      S      - 자를 문자열 
//      Index  - 시작점 
//      Count  - 갯수 
//      bSpace - 한글반바이트(1byte) 처리로 자른공간을 공백으로 채운다 
// HISTORY : 
//==============================================================================
var 
  sp: String; 
  nLen: Integer;
begin 
  Result := ''; 
  sp    := ''; 

  nLen := Length(S);

  // 시작위치가 길이보다 크면 Exit 
  if (nLen < Index) then Exit; 

  // 자를 갯수보다 길이가 작으면 Count를 문자열 길이만큼 계산 
  // S인자 끝이 이미 깨져있을 경우... 
  if (nLen < (Index + Count-1)) then Count := nLen - Index + 1; 

  // 시작문자가 한글 끝byte면 다음 글자부터 시작한다. 
  if ByteType(S, Index) = mbTrailByte then 
  begin 
    inc(Index); 
    dec(Count); 
    
    if bSpace then sp := sp + ' '; // 줄어든 만큼 공백을 채운다. 
  end; 


  // 끝문자가 한글 시작byte면 줄여서 자른다. 
  if ByteType(S, Index+Count-1) = mbLeadByte then 
  begin 
    inc(Count); 

    if bSpace then sp := sp + ' '; // 줄어든 만큼 공백을 채운다. 
  end; 

  Result := copy(S, Index, Count) + sp; 

end;

end.
