unit UI_ConnectionSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sCheckBox, sEdit, ExtCtrls, sPanel, IniFiles,
  sDialogs, Grids, sLabel, sSpinEdit, KISXML, KISEncryption;

type
  TUI_ConnectionSetting_frm = class(TForm)
    sPanel1: TsPanel;
    edt_Address: TsEdit;
    sCheckBox1: TsCheckBox;
    edt_ID: TsEdit;
    edt_Pass: TsEdit;
    edt_Port: TsEdit;
    edt_File: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sOpenDialog1: TsOpenDialog;
    sLabel1: TsLabel;
    StringGrid1: TStringGrid;
    sSpinEdit1: TsSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sSpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
    INIFILE : TIniFile;
    sKey : String;
    procedure ReadSetting;
    procedure WriteSetting;
    procedure InitSetting;
    procedure INIT_Grid;
  public
    { Public declarations }
    function getServerList(var List : TStringList):Boolean;
    function getConnectionString(ViewName : string):String;
  end;

  TConfigXMLCreate = class(TKISXMLCreate)
  protected
    procedure Save; override;
  end;

var
  UI_ConnectionSetting_frm: TUI_ConnectionSetting_frm;
Const
  NM_LOCAL : String = 'LOCAL';
  NM_KEY : String = 'ikis21.com';
implementation

uses dmIcon, CommonVar, XMLIntf;

{$R *.dfm}

{ TUI_ConnectionSetting_frm }

procedure TUI_ConnectionSetting_frm.ReadSetting;
var
  ConfigXml : TKISXMLParsing;
  DataListNode : IXMLNode;
  KISEN : TKISEncryption;
begin
  IF FileExists(configxmlPath) Then
  begin
    ConfigXml := TKISXMLParsing.CreateNormal(configxmlPath);
    KISEN := TKISEncryption.Create;
    KISEN.Key := NM_KEY;
    try
      with ConfigXml do
      begin
        ROOT_NODE := KISXML.ChildNodes.First;
        ROOT_NODE := ROOT_NODE.NextSibling;

        //공통설정
        CHILD_NODE := ROOT_NODE.ChildNodes.First;
        while CHILD_NODE <> nil do
        begin
          IF CHILD_NODE.NodeName = 'common' Then
          begin
            sCheckBox1.Checked := getValueFromXPath(CHILD_NODE,'DBFile/islocal') = '1';
            edt_Address.Text := KISEN.AES( getValue(CHILD_NODE,'Address') ,Decrypt );
            edt_Port.Text := KISEN.AES( getValue(CHILD_NODE,'Port') ,Decrypt );
            edt_ID.Text := KISEN.AES( getValueFromXPath(CHILD_NODE,'UserData/ID') ,Decrypt);
            edt_Pass.Text := KISEN.AES( getValueFromXPath(CHILD_NODE,'UserData/PWD') ,Decrypt);
            edt_File.Text := getValueFromXPath(CHILD_NODE,'DBFile/path');
          end
          else
          IF CHILD_NODE.NodeName = 'DataServerList' Then
          begin
            sSpinEdit1.Value := getValue(CHILD_NODE,'ListCount');
            StringGrid1.RowCount := sSpinEdit1.Value+1;

            DataListNode := CHILD_NODE.ChildNodes.First;
            while DataListNode <> nil do
            begin
              IF LowerCase(DataListNode.NodeName) = 'dataserver' Then
              begin
                StringGrid1.Cells[0,getValue(DataListNode,'index')+1] := getValue(DataListNode,'ViewName');
                StringGrid1.Cells[1,getValue(DataListNode,'index')+1] := getValue(DataListNode,'DBName');
              end;
              DataListNode := DataListNode.NextSibling;
            end;

          end;
          doNextNode;
        end;

      end;
    finally
      KISEN.Free;
    end;
  end;

//  INIFILE := TIniFile.Create(ldbinfoiniPath);
//  try
//    IF INIFILE.SectionExists(Section_Connect) Then
//    begin
//      sCheckBox1.Checked := INIFILE.ReadBool(Section_Connect,'uselocaldb',true);
//      edt_Address.Text := INIFILE.ReadString(Section_Connect,'addr','');
//      edt_ID.Text := INIFILE.ReadString(Section_Connect,'ldbid','');
//      edt_Pass.Text := INIFILE.ReadString(Section_Connect,'ldbpass','');
//      edt_File.Text := INIFILE.ReadString(Section_Connect,'ldbfile','');            
//    end
//    else
//      InitSetting;
//  finally
//    INIFILE.Free;
//  end;
end;

procedure TUI_ConnectionSetting_frm.WriteSetting;
var
  ConfigXmlCreate : TConfigXMLCreate;
  KISEN : TKISEncryption;
  i : integer;
begin
  ConfigXmlCreate := TConfigXMLCreate.CreateNormal;
  KISEN := TKISEncryption.Create;
  KISEN.Key := NM_KEY;
  try
    with ConfigXmlCreate do
    begin
      CreateXMLHeaderNormal;
      ROOT_NODE := KISXML.AddChild('Connection');
      CHILD_NODE := ROOT_NODE.AddChild('common');

      CHILD_NODE.AddChild('Address').Text := KISEN.AES(edt_Address.Text);
      CHILD_NODE.AddChild('Port').Text := KISEN.AES(edt_Port.Text);
      CHILD_NODE := CHILD_NODE.AddChild('UserData');
      CHILD_NODE.AddChild('ID').Text := KISEN.AES(edt_ID.Text);
      CHILD_NODE.AddChild('PWD').Text := KISEN.AES(edt_Pass.Text);
      doChildNodeParent;
      CHILD_NODE := CHILD_NODE.AddChild('DBFile');
      IF sCheckBox1.Checked Then
        CHILD_NODE.AddChild('islocal').Text := '1'
      else
        CHILD_NODE.AddChild('islocal').Text := '0';
      CHILD_NODE.AddChild('path').Text := edt_File.Text;

      CHILD_NODE := ROOT_NODE.AddChild('DataServerList');
      IF sCheckBox1.Checked Then
        CHILD_NODE.AddChild('ListCount').Text := '1'      
      else
        CHILD_NODE.AddChild('ListCount').Text := sSpinEdit1.Text;

      IF not sCheckBox1.Checked Then
      begin
        for i := 1 to StringGrid1.RowCount-1 do
        begin
          CHILD_NODE := CHILD_NODE.AddChild('DataServer');
          CHILD_NODE.AddChild('index').Text := IntToStr(i-1);
          CHILD_NODE.AddChild('ViewName').Text := StringGrid1.Cells[0,i];
          CHILD_NODE.AddChild('DBName').Text := StringGrid1.Cells[1,i];
          doChildNodeParent;
        end;
      end;
      Save;
    end;
  finally
    KISEN.Free;
  end;

//  INIFILE := TIniFile.Create(ldbinfoiniPath);
//  try
//    INIFILE.WriteBool(Section_Connect,'uselocaldb',sCheckBox1.Checked);
//    INIFILE.WriteString(Section_Connect,'addr',edt_Address.Text);
//    INIFILE.WriteString(Section_Connect,'ldbid',edt_ID.Text);
//    INIFILE.WriteString(Section_Connect,'ldbpass',edt_Pass.Text);
//    INIFILE.WriteString(Section_Connect,'ldbfile',edt_File.Text);
//  finally
//    INIFILE.Free;
//  end;
end;

procedure TUI_ConnectionSetting_frm.FormShow(Sender: TObject);
begin
  INIT_Grid;
  ReadSetting;  
end;

procedure TUI_ConnectionSetting_frm.sCheckBox1Click(Sender: TObject);
begin
  IF (Sender as TsCheckBox).Focused AND (Sender as TsCheckBox).Checked Then
  begin
    IF Trim(edt_Address.Text) <> 'v12.0' Then
      edt_Address.Text := 'v12.0';
  end;

  edt_Port.Clear;
  edt_Port.Enabled := not sCheckBox1.Checked;
  edt_ID.Clear;
  edt_ID.Enabled := not sCheckBox1.Checked;
  edt_Pass.Clear;
  edt_Pass.Enabled := not sCheckBox1.Checked;
  edt_File.Clear;
  edt_File.Enabled := sCheckBox1.Checked;
end;

procedure TUI_ConnectionSetting_frm.InitSetting;
begin
  sCheckBox1.Checked := True;
  edt_Address.Text := 'v12.0';
  edt_File.Text := ExtractFilePath( ldbinfoiniPath )+'DB\KIS_KPTA.mdf';
end;

procedure TUI_ConnectionSetting_frm.sButton1Click(Sender: TObject);
begin
  WriteSetting;
end;

procedure TUI_ConnectionSetting_frm.sButton3Click(Sender: TObject);
begin
  sOpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  IF not sOpenDialog1.Execute Then Exit;
  
  edt_File.Text := sOpenDialog1.Files[0];
end;

procedure TUI_ConnectionSetting_frm.INIT_Grid;
begin
  StringGrid1.Cells[0,0] := '서버이름';
  StringGrid1.Cells[1,0] := 'DB NAME';
  StringGrid1.RowCount := 2;
  sSpinEdit1.Value := 1;
  
end;

procedure TUI_ConnectionSetting_frm.sSpinEdit1Change(Sender: TObject);
begin
  StringGrid1.RowCount := sSpinEdit1.Value+1;
end;

function TUI_ConnectionSetting_frm.getServerList(var List: TStringList):Boolean;
var
  ConfigXml : TKISXMLParsing;
  DataListNode : IXMLNode;
  KISEN : TKISEncryption;
begin
  Result := False;

  IF FileExists(configxmlPath) Then
  begin
    Result := True;
    
    ConfigXml := TKISXMLParsing.CreateNormal(configxmlPath);
    KISEN := TKISEncryption.Create;
    KISEN.Key := NM_KEY;    
    try
      with ConfigXml do
      begin
        ROOT_NODE := KISXML.ChildNodes.First;
        ROOT_NODE := ROOT_NODE.NextSibling;

        IF getValueFromXPath(ROOT_NODE,'common/DBFile/islocal') = '1' Then
        begin
          List.Add(NM_LOCAL);
        end
        else
        begin
          //공통설정
          CHILD_NODE := ROOT_NODE.ChildNodes.First;
          while CHILD_NODE <> nil do
          begin
            IF CHILD_NODE.NodeName = 'DataServerList' Then
            begin
              sSpinEdit1.Value := getValue(CHILD_NODE,'ListCount');
              StringGrid1.RowCount := sSpinEdit1.Value+1;

              DataListNode := CHILD_NODE.ChildNodes.First;
              while DataListNode <> nil do
              begin
                IF LowerCase(DataListNode.NodeName) = 'dataserver' Then
                begin
                  List.Add(getValue(DataListNode,'ViewName'));
                end;
                DataListNode := DataListNode.NextSibling;
              end;

            end;
            doNextNode;
          end;
        end;
      end;

      Result := (List.Count > 0);
    finally
      KISEN.Free;
    end;
  end;
end;

function TUI_ConnectionSetting_frm.getConnectionString(ViewName: string): String;
var
  ConfigXml : TKISXMLParsing;
  DataListNode : IXMLNode;
  KISEN : TKISEncryption;
  Address, Port, sID, sPWD, Path, DBName : String;
  isLocal : Boolean;
begin
  Result := '';

  IF FileExists(configxmlPath) Then
  begin
    ConfigXml := TKISXMLParsing.CreateNormal(configxmlPath);
    KISEN := TKISEncryption.Create;
    KISEN.Key := NM_KEY;
    try
      with ConfigXml do
      begin
        ROOT_NODE := KISXML.ChildNodes.First;
        ROOT_NODE := ROOT_NODE.NextSibling;

        Address := KISEN.AES(getValueFromXPath(ROOT_NODE,'common/Address'),Decrypt);
        Port    := KISEN.AES(getValueFromXPath(ROOT_NODE,'common/Port'),Decrypt);
        sID     := KISEN.AES(getValueFromXPath(ROOT_NODE,'common/UserData/ID'),Decrypt);
        sPWD    := KISEN.AES(getValueFromXPath(ROOT_NODE,'common/UserData/PWD'),Decrypt);
        Path    := getValueFromXPath(ROOT_NODE,'common/DBFile/path');

        isLocal := getValueFromXPath(ROOT_NODE,'common/DBFile/islocal') = '1';

        IF isLocal Then
        begin
          sConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=KIS_KPTA;Data Source=(LOCALDB)\'+Address+';Initial File Name='+Path;
        end
        else
        begin
          //공통설정
          CHILD_NODE := ROOT_NODE.ChildNodes.First;
          while CHILD_NODE <> nil do
          begin
            IF CHILD_NODE.NodeName = 'DataServerList' Then
            begin
              sSpinEdit1.Value := getValue(CHILD_NODE,'ListCount');
              StringGrid1.RowCount := sSpinEdit1.Value+1;

              DataListNode := CHILD_NODE.ChildNodes.First;
              while DataListNode <> nil do
              begin
                IF LowerCase(DataListNode.NodeName) = 'dataserver' Then
                begin
                  if AnsiCompareText(ViewName,getValue(DataListNode,'ViewName')) = 0 Then
                  begin
                    DBName := getValue(DataListNode,'DBName');
                    Break;
                  end;
                end;
                DataListNode := DataListNode.NextSibling;
              end;
            end;
            doNextNode;
          end;
          sConnectionString := 'Provider=SQLOLEDB.1;Password='+sPWD+
                    ';Persist Security Info=True;User ID='+sID+
                    ';Initial Catalog='+DBNAME+
                    ';Data Source='+Address+','+Port;
        end;
      end;

      Result := sConnectionString;
    finally
      KISEN.Free;
    end;
  end;
end;

{ TConfigXMLCreate }

procedure TConfigXMLCreate.Save;
begin
//  inherited;
  KISXML.SaveToFile(configxmlPath);
end;

end.
