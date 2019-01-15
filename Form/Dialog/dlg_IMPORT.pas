unit dlg_IMPORT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, sButton, ComCtrls, acProgressBar, sDialogs;

type
  Tdlg_IMPORT_frm = class(TForm)
    sButton1: TsButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    sProgressBar1: TsProgressBar;
    sButton2: TsButton;
    sButton3: TsButton;
    sOpenDialog1: TsOpenDialog;
    qryUpload: TADOQuery;
    ADOQuery2: TADOQuery;
    sButton5: TsButton;
    sButton4: TsButton;
    sButton7: TsButton;
    qryStandard1: TADOQuery;
    sButton6: TsButton;
    sButton8: TsButton;
    sButton9: TsButton;
    qryStandard2: TADOQuery;
    qryTaken: TADOQuery;
    qryMake: TADOQuery;
    sButton10: TsButton;
    qryPermitR01: TADOQuery;
    sButton11: TsButton;
    qryRecvStandard1: TADOQuery;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlg_IMPORT_frm: Tdlg_IMPORT_frm;

implementation

uses
  NewExcelWriter, SQLCreator, NewExcelReader, dmConn;

{$R *.dfm}

procedure Tdlg_IMPORT_frm.sButton1Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  ADOQuery1.Close;
  ADOQuery1.Open;

  IF ADOQuery1.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := ADOQuery1.RecordCount;

  try
    with ADOQuery1 do
    begin
      EW.Cells(1, i, 'DELETE FROM PUMLIST');
      Inc(i);

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('PUMLIST');

        SC.ADDValue('PID',                    i-1 );
        SC.ADDValue('GOODS_CODE',             Fields[1].AsString );
        SC.ADDValue('OLD_GOOD_CODE',          Fields[2].AsString );
        SC.ADDValue('OLD_JONG_CODE',          Fields[3].AsString );
        SC.ADDValue('HSCD',                   Fields[4].AsString );
        SC.ADDValue('TRADE_NAME',             Fields[5].AsString );
        SC.ADDValue('MODEL_SIZE',             Fields[6].AsString );
        SC.ADDValue('MODEL_SIZE_INGREDIENT',  Fields[7].AsString );
        SC.ADDValue('ORIGIN_NATION_CODE',     Fields[8].AsString );
        SC.ADDValue('ORIGIN_NATION_NAME',     Fields[9].AsString );
        SC.ADDValue('BSE_CODE',               Fields[10].AsString);
        SC.ADDValue('BSE_ORIGIN_NATION_CODE', Fields[11].AsString);
        SC.ADDValue('BSE_ORIGIN_NATION_NAME', Fields[12].AsString);
        SC.ADDValue('ORIGIN_MATTER',          Fields[13].AsString);
        SC.ADDValue('EXTRACTION',             Fields[14].AsString);
        SC.ADDValue('BATCH_NO',               Fields[15].AsString);
        SC.ADDValue('COSMETIC_GUBUN',         Fields[16].AsString);
        SC.ADDValue('DMF',                    Fields[17].AsString);
        SC.ADDValue('BGMP',                   Fields[18].AsString);
        SC.ADDValue('PERMIT_SINGO_NO',        Fields[19].AsString);
        SC.ADDValue('PERMIT_SINGO_DATE',      Fields[20].AsString);
        SC.ADDValue('DRUG_STANDARD_CODE',     Fields[21].AsString);
        SC.ADDValue('WITAK_SANGHO1',          Fields[22].AsString);
        SC.ADDValue('WITAK_SANGHO2',          Fields[23].AsString);
        SC.ADDValue('WITAK_SANGHO3',          Fields[24].AsString);
        SC.ADDValue('WITAK_ADDR1',            Fields[25].AsString);
        SC.ADDValue('WITAK_ADDR2',            Fields[26].AsString);
        SC.ADDValue('WITAK_ADDR3',            Fields[27].AsString);
        SC.ADDValue('WITAK_NATION_CODE',      Fields[28].AsString);
        SC.ADDValue('WITAK_NATION_NAME',      Fields[29].AsString);
        SC.ADDValue('TAKE_NATION_CODE',       Fields[30].AsString);
        SC.ADDValue('TAKE_NATION_NAME',       Fields[31].AsString);
        SC.ADDValue('TAKE_SANGHO1',           Fields[32].AsString);
        SC.ADDValue('TAKE_SANGHO2',           Fields[33].AsString);
        SC.ADDValue('TAKE_SANGHO3',           Fields[34].AsString);
        SC.ADDValue('TAKE_ADDR1',             Fields[35].AsString);
        SC.ADDValue('TAKE_ADDR2',             Fields[36].AsString);
        SC.ADDValue('TAKE_ADDR3',             Fields[37].AsString);
        SC.ADDValue('REG_DT',                 Fields[38].AsString);
        SC.ADDValue('REG_ID',                 Fields[39].AsString);
        SC.ADDValue('LST_DT',                 Fields[40].AsString);
        SC.ADDValue('LST_ID',                 Fields[41].AsString);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        ADOQuery1.Next;
      end;
    end;
  finally
    ADOQuery1.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

procedure Tdlg_IMPORT_frm.sButton2Click(Sender: TObject);
var
  ER : TExcelReader;
  i, nMax : Integer;
begin
  IF not sOpenDialog1.Execute Then Exit;

  IF MessageBox(Self.Handle, '해당작업을 진행하면 기존에 저장된 데이터는 삭제됩니다. 계속 진행하시겠습니까?', '데이터 초기화 확인', MB_OKCANCEL+MB_ICONQUESTION) = ID_CANCEL Then Exit;

  ER := TExcelReader.Create(sOpenDialog1.Files.Strings[0]);
  nMax := ER.MaxRow('A');
  sProgressBar1.Position := 0;
  sProgressBar1.Max := nMax;

  DataModule_Conn.KisConn.BeginTrans;
  try
    try
      with qryUpload do
      begin
        for i := 1 to nMax do
        begin
          Application.ProcessMessages;
          sProgressBar1.Position := i;

            Close;
            SQL.Text := ER.asString(i, 1);
            ExecSQL;
        end;

        Case (Sender as TsButton).Tag of
          0:
          begin
            //품목 줄바꿈 처리
            SQL.Text := 'UPDATE PUMLIST'#13#10+
                                  'SET MODEL_SIZE = REPLACE(convert(varchar(MAX), MODEL_SIZE),''|'',CHAR(13)+CHAR(10)),'#13#10+
                                  'MODEL_SIZE_INGREDIENT = REPLACE(Convert(varchar(MAX),MODEL_SIZE_INGREDIENT),''|'',CHAR(13)+CHAR(10))';
            ExecSQL;
          end;
        end;
      end;
      DataModule_Conn.KisConn.CommitTrans;
      ShowMessage('전환완료');
    except
      on E:Exception do
      begin
        DataModule_Conn.KisConn.RollbackTrans;
        ShowMessage(IntToStr(i)+'/'#13#10+E.Message);
      end;
    end;
  finally
    sProgressBar1.Position := 0;
    qryUpload.Close;
    ER.Free;
  end;
end;

procedure Tdlg_IMPORT_frm.sButton3Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  ADOQuery2.Close;
  Case (Sender as TsButton).Tag of
    1: ADOQuery2.SQL.Text := 'SELECT ''COSM'' as CD_DEF, ROW_NUMBER() OVER(ORDER BY COM_COMMON_D1_UID), C_CODE, N_CODE, T_BUF, Q_BUF, [STATUS] FROM COM_COMMON_D1 WHERE COM_COMMON_H_UID = ''30''';
    2: ADOQuery2.SQL.Text := 'SELECT ''MTRLS'' as CD_DEF, ROW_NUMBER() OVER(ORDER BY COM_COMMON_D1_UID), C_CODE, N_CODE, T_BUF, Q_BUF, [STATUS] FROM COM_COMMON_D1 WHERE COM_COMMON_H_UID = ''40''';
  end;
  ADOQuery2.Open;

  IF ADOQuery2.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := ADOQuery2.RecordCount;

  try
    with ADOQuery2 do
    begin
      Case (Sender as TsButton).Tag of
        1:
        begin
          EW.Cells(1, i, 'DELETE FROM COMCD WHERE CD_DEF = ''COSM''');
          Inc(i);
          EW.Cells(1, i, 'DELETE FROM COMCD_D WHERE CD_DEF = ''COSM''');
          Inc(i);
          EW.Cells(1, i, 'INSERT INTO COMCD(CD_DEF, CD_DEF_NM) VALUES(''COSM'',''화장품 종별코드'')');
          Inc(i);
        end;

        2:
        begin
          EW.Cells(1, i, 'DELETE FROM COMCD WHERE CD_DEF = ''MTRLS''');
          Inc(i);
          EW.Cells(1, i, 'DELETE FROM COMCD_D WHERE CD_DEF = ''MTRLS''');
          Inc(i);
          EW.Cells(1, i, 'INSERT INTO COMCD(CD_DEF, CD_DEF_NM) VALUES(''MTRLS'',''원료코드'')');
          Inc(i);
        end;
      end;

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('COMCD_D');

        SC.ADDValue('CD_DEF', Fields[0].AsString);
        SC.ADDValue('CD_SEQ', Fields[1].AsString, vtinteger);
        SC.ADDValue('USE_CD', Fields[2].AsString);
        SC.ADDValue('USE_CD_NM', Fields[3].AsString);
        SC.ADDValue('ETC_TXT', Fields[4].AsString);
        SC.ADDValue('ETC_CUR', Fields[5].asInteger);
        SC.ADDValue('USED', Fields[6].AsString);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        ADOQuery2.Next;
      end;
    end;
  finally
    ADOQuery2.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

procedure Tdlg_IMPORT_frm.sButton7Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  qryStandard1.Close;
  qryStandard1.Open;

  IF qryStandard1.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := qryStandard1.RecordCount;

  try
    with qryStandard1 do
    begin
      EW.Cells(1, i, 'DELETE FROM STANDARD1');
      Inc(i);

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('STANDARD1');

        SC.ADDValue('DOC_NO',                  Fields[0].AsString);
        SC.ADDValue('DOC_TYPE',                Fields[1].AsString);
        SC.ADDValue('SEND_TYPE',               Fields[2].AsString);
        SC.ADDValue('DOC_GUBUN',               Fields[3].AsString);
        SC.ADDValue('REQUEST_DATE',            Fields[4].AsString);
        SC.ADDValue('JEJE_GUBUN',              Fields[5].AsString);
        SC.ADDValue('CANCEL_REASON',           Fields[6].AsString);
        SC.ADDValue('IMPORT_SAUP_NO',          Fields[7].AsString);
        SC.ADDValue('IMPORT_SANGHO',           Fields[8].AsString);
        SC.ADDValue('IMPORT_DAEPYO',           Fields[9].AsString);
        SC.ADDValue('IMPORT_TRADE_NO',         Fields[10].AsString);
        SC.ADDValue('IMPORT_POST_NO',          Fields[11].AsString);
        SC.ADDValue('IMPORT_ADDR1',            Fields[12].AsString);
        SC.ADDValue('IMPORT_ADDR2',            Fields[13].AsString);
        SC.ADDValue('IMPORT_TYPE',             Fields[14].asinteger);
        SC.ADDValue('HWAJU_SAUP_NO',           Fields[15].AsString);
        SC.ADDValue('HWAJU_SANGHO',            Fields[16].AsString);
        SC.ADDValue('HWAJU_DAEPYO',            Fields[17].AsString);
        SC.ADDValue('HWAJU_POST_NO',           Fields[18].AsString);
        SC.ADDValue('HWAJU_ADDR1',             Fields[19].AsString);
        SC.ADDValue('HWAJU_ADDR2',             Fields[20].AsString);
        SC.ADDValue('EXPORT_SANGHO',           Fields[21].AsString);
        SC.ADDValue('EXPORT_ADDR1',            Fields[22].AsString);
        SC.ADDValue('EXPORT_NATION_CODE',      Fields[23].AsString);
        SC.ADDValue('EXPORT_NATION_NAME',      Fields[24].AsString);
        SC.ADDValue('INDO_TYPE',               Fields[25].AsString);
        SC.ADDValue('PAY_TYPE',                Fields[26].AsString);
        SC.ADDValue('PAY_AMT',                 Fields[27].asinteger);
        SC.ADDValue('PAY_UNIT',                Fields[28].AsString);
        SC.ADDValue('PAY_BETWEEN_DATE',        Fields[29].AsString);
        SC.ADDValue('DEST_PORT_CODE',          Fields[30].AsString);
        SC.ADDValue('DEST_PORT_NAME',          Fields[31].AsString);
        SC.ADDValue('QUALITY_AGENCY_CODE',     Fields[32].AsString);
        SC.ADDValue('QUALITY_AGENCY_NAME',     Fields[33].AsString);
        SC.ADDValue('FIRST_CHECK_AGENCY_CODE', Fields[34].AsString);
        SC.ADDValue('FIRST_CHECK_AGENCY_NAME', Fields[35].AsString);
        SC.ADDValue('REGION_CODE',             Fields[36].AsString);
        SC.ADDValue('REGION_NAME',             Fields[37].AsString);
        SC.ADDValue('IMPORT_MEMO',             Fields[38].AsString);
        SC.ADDValue('TOTAL_COUNT',             Fields[39].AsString, vtInteger);
        SC.ADDValue('isSEND',                  Fields[40].AsString);
        SC.ADDValue('isRECV',                  Fields[41].AsString);
        SC.ADDValue('isRESULT',                Fields[42].AsString);
        SC.ADDValue('isDeleted',               Fields[43].Asinteger);
        SC.ADDValue('DeleteDate',              Fields[44].AsString, vtVariant);
        SC.ADDValue('WriteUserID',             Fields[45].AsString);
        SC.ADDValue('isFirstSend',             Fields[46].AsInteger);
        SC.ADDValue('isFirstSendDateTime',     Fields[47].AsString, vtVariant);
        SC.ADDValue('LastProcessDatetime',     Fields[48].AsString);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        qryStandard1.Next;
      end;
    end;
  finally
    qryStandard1.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

//STANDARD2
procedure Tdlg_IMPORT_frm.sButton6Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  qryStandard2.Close;
  qryStandard2.Open;

  IF qryStandard2.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := qryStandard2.RecordCount;

  try
    with qryStandard2 do
    begin
      EW.Cells(1, i, 'DELETE FROM STANDARD2');
      Inc(i);

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('STANDARD2');

        SC.ADDValue('DOC_NO',                Fields[0].AsString);
        SC.ADDValue('SERIAL_CODE',           Fields[1].AsString);
        SC.ADDValue('SERIAL_NO',             Fields[2].AsString);
        SC.ADDValue('HS',                    Fields[3].AsString);
        SC.ADDValue('GOODS_CODE',            Fields[4].AsString);
        SC.ADDValue('OLD_JONG_CODE',         Fields[5].AsString);
        SC.ADDValue('OLD_GOODS_CODE',        Fields[6].AsString);
        SC.ADDValue('COSMETIC_GUBUN',        Fields[7].AsString);
        SC.ADDValue('DMF',                   Fields[8].AsString);
        SC.ADDValue('BGMP',                  Fields[9].AsString);
        SC.ADDValue('TRADE_NAME',            Fields[10].AsString);
        SC.ADDValue('MODEL_SIZE',            Fields[11].AsString);
        SC.ADDValue('MODEL_SIZE_INGREDIENT', Fields[12].AsString);
        SC.ADDValue('DRUG_STANDARD_CODE',    Fields[13].AsString);
        SC.ADDValue('WITAK_SANGHO1',         Fields[14].AsString);
        SC.ADDValue('WITAK_SANGHO2',         Fields[15].AsString);
        SC.ADDValue('WITAK_SANGHO3',         Fields[16].AsString);
        SC.ADDValue('WITAK_ADDR1',           Fields[17].AsString);
        SC.ADDValue('WITAK_ADDR2',           Fields[18].AsString);
        SC.ADDValue('WITAK_ADDR3',           Fields[19].AsString);
        SC.ADDValue('WITAK_NATION_CODE',     Fields[20].AsString);
        SC.ADDValue('WITAK_NATION_NAME',     Fields[21].AsString);
        SC.ADDValue('MODEL_QTY',             Fields[22].AsString, vtInteger);
        SC.ADDValue('MODEL_QTY_UNIT',        Fields[23].AsString);
        SC.ADDValue('MODEL_DANGA',           Fields[24].AsString, vtInteger);
        SC.ADDValue('MODEL_AMT',             Fields[25].AsString, vtInteger);
        SC.ADDValue('MODEL_AMT_UNIT',        Fields[26].AsString);
        SC.ADDValue('PERMIT_SINGO_NO',       Fields[27].AsString);
        SC.ADDValue('PERMIT_SINGO_DATE',     Fields[28].AsString);
        SC.ADDValue('BSE_CODE',              Fields[29].AsString);
        SC.ADDValue('BSE_ORIGIN_NATION_CODE',Fields[30].AsString);
        SC.ADDValue('BSE_ORIGIN_NATION_NAME',Fields[31].AsString);
        SC.ADDValue('ORIGIN_MATTER',         Fields[32].AsString);
        SC.ADDValue('EXTRACTION',            Fields[33].AsString);
        SC.ADDValue('BATCH_NO',              Fields[34].AsString);
        SC.ADDValue('ORIGIN_NATION_CODE',    Fields[35].AsString);
        SC.ADDValue('ORIGIN_NATION_NAME',    Fields[36].AsString);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        qryStandard2.Next;
      end;
    end;
  finally
    qryStandard2.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

//TAKEN
procedure Tdlg_IMPORT_frm.sButton8Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  qryTaken.Close;
  qryTaken.Open;

  IF qryTaken.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := qryTaken.RecordCount;

  try
    with qryTaken do
    begin
      EW.Cells(1, i, 'DELETE FROM TAKEN');
      Inc(i);

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('TAKEN');

        SC.ADDValue('DOC_NO',       Fields[0].AsString);
        SC.ADDValue('SERIAL_CODE',  Fields[1].AsString);
        SC.ADDValue('SERIAL_NO',    Fields[2].AsString);
        SC.ADDValue('TAKE_NO',      Fields[3].AsString);
        SC.ADDValue('NATION_CODE',  Fields[4].AsString);
        SC.ADDValue('NATION_NAME',  Fields[5].AsString);
        SC.ADDValue('TAKE_SANGHO1', Fields[6].AsString);
        SC.ADDValue('TAKE_SANGHO2', Fields[7].AsString);
        SC.ADDValue('TAKE_SANGHO3', Fields[8].AsString);
        SC.ADDValue('TAKE_ADDR1',   Fields[9].AsString);
        SC.ADDValue('TAKE_ADDR2',   Fields[10].AsString);
        SC.ADDValue('TAKE_ADDR3',   Fields[11].AsString);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        qryTaken.Next;
      end;
    end;
  finally
    qryTaken.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

//MAKE
procedure Tdlg_IMPORT_frm.sButton9Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  qryMake.Close;
  qryMake.Open;

  IF qryMake.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := qryMake.RecordCount;

  try
    with qryMake do
    begin
      EW.Cells(1, i, 'DELETE FROM MAKE');
      Inc(i);

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('MAKE');

        SC.ADDValue('DOC_NO',         Fields[0].AsString);
        SC.ADDValue('SERIAL_CODE',    Fields[1].AsString);
        SC.ADDValue('SERIAL_NO',      Fields[2].AsString);
        SC.ADDValue('MAKE_SERIAL_NO', Fields[3].AsString);
        SC.ADDValue('MAKE_NO',        Fields[4].AsString);
        SC.ADDValue('MAKE_DATE',      Fields[5].AsString);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        qryMake.Next;
      end;
    end;
  finally
    qryMake.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

procedure Tdlg_IMPORT_frm.sButton10Click(Sender: TObject);
begin
  try
    DataModule_Conn.KisConn.BeginTrans;
    qryPermitR01.ExecSQL;
    DataModule_Conn.KisConn.CommitTrans;
    ShowMessage('완료');    
  except
    on E:Exception do
    begin
      DataModule_Conn.KisConn.RollbackTrans;
      ShowMessage(E.Message);
    end;
  end;
end;

procedure Tdlg_IMPORT_frm.sButton11Click(Sender: TObject);
var
  EW : TExcelWriter;
  SC : TSQLCreate;
  i : integer;
begin
  qryRecvStandard1.Close;
  qryRecvStandard1.Open;

  IF qryRecvStandard1.RecordCount = 0 Then
  begin
    ShowMessage('데이터가 없습니다');
    Exit;
  end;

  EW := TExcelWriter.Create;
  SC := TSQLCreate.Create;

  i := 1;
  sProgressBar1.Position := 0;
  sProgressBar1.Max := qryRecvStandard1.RecordCount;

  try
    with qryRecvStandard1 do
    begin
      EW.Cells(1, i, 'DELETE FROM RECV_STANDARD1');
      Inc(i);

      while not eof do
      begin
        Application.ProcessMessages;
        sProgressBar1.Position := i;
        SC.DMLType := dmlInsert;
        SC.SQLHeader('RECV_STANDARD1');

        SC.ADDValue('DOC_NO',                  Fields[0].AsString);
        SC.ADDValue('DOC_TYPE',                Fields[1].AsString);
        SC.ADDValue('PROCESS_STATE',           Fields[2].AsString);
        SC.ADDValue('PUBLISH_NO',              Fields[3].AsString);
        SC.ADDValue('PUBLISH_DATE',            Fields[4].AsString);
        SC.ADDValue('EXPIRY_DATE',             Fields[5].AsString);
        SC.ADDValue('PUBLISH_INSTITUTE',       Fields[6].AsString);
        SC.ADDValue('PUBLISH_PERSON',          Fields[7].AsString);
        SC.ADDValue('PUBLISH_TEL',             Fields[8].AsString);
        SC.ADDValue('PUBLISH_SIGN',            Fields[9].AsString);
        SC.ADDValue('PUBLISH_MEMO',            Fields[10].AsString);
        SC.ADDValue('DOC_GUBUN',               Fields[11].AsString);
        SC.ADDValue('JEJE_GUBUN',              Fields[12].AsString);
        SC.ADDValue('REQUEST_DATE',            Fields[13].AsString);
        SC.ADDValue('IMPORT_SAUP_NO',          Fields[14].AsString);
        SC.ADDValue('IMPORT_SANGHO',           Fields[15].AsString);
        SC.ADDValue('IMPORT_DAEPYO',           Fields[16].AsString);
        SC.ADDValue('IMPORT_TRADE_NO',         Fields[17].AsString);
        SC.ADDValue('IMPORT_POST_NO',          Fields[18].AsString);
        SC.ADDValue('IMPORT_ADDR1',            Fields[19].AsString);
        SC.ADDValue('IMPORT_ADDR2',            Fields[20].AsString);
        SC.ADDValue('IMPORT_TYPE',             Fields[21].AsString);
        SC.ADDValue('HWAJU_SAUP_NO',           Fields[22].AsString);
        SC.ADDValue('HWAJU_SANGHO',            Fields[23].AsString);
        SC.ADDValue('HWAJU_DAEPYO',            Fields[24].AsString);
        SC.ADDValue('HWAJU_POST_NO',           Fields[25].AsString);
        SC.ADDValue('HWAJU_ADDR1',             Fields[26].AsString);
        SC.ADDValue('HWAJU_ADDR2',             Fields[27].AsString);
        SC.ADDValue('EXPORT_SANGHO',           Fields[28].AsString);
        SC.ADDValue('EXPORT_ADDR1',            Fields[29].AsString);
        SC.ADDValue('EXPORT_NATION_CODE',      Fields[30].AsString);
        SC.ADDValue('EXPORT_NATION_NAME',      Fields[31].AsString);
        SC.ADDValue('INDO_TYPE',               Fields[32].AsString);
        SC.ADDValue('PAY_TYPE',                Fields[33].AsString);
        SC.ADDValue('PAY_AMT',                 Fields[34].AsString);
        SC.ADDValue('PAY_UNIT',                Fields[35].AsString);
        SC.ADDValue('PAY_BETWEEN_DATE',        Fields[36].AsString);
        SC.ADDValue('DEST_PORT_CODE',          Fields[37].AsString);
        SC.ADDValue('DEST_PORT_NAME',          Fields[38].AsString);
        SC.ADDValue('QUALITY_AGENCY_CODE',     Fields[39].AsString);
        SC.ADDValue('QUALITY_AGENCY_NAME',     Fields[40].AsString);
        SC.ADDValue('FIRST_CHECK_AGENCY_CODE', Fields[41].AsString);
        SC.ADDValue('REGION_CODE',             Fields[42].AsString);
        SC.ADDValue('REGION_NAME',             Fields[43].AsString);
        SC.ADDValue('IMPORT_MEMO',             Fields[44].AsString);
        SC.ADDValue('TOTAL_COUNT',             0);

        EW.Cells(1, i, SC.CreateSQL);

        Inc(i);
        qryRecvStandard1.Next;
      end;
    end;
  finally
    qryRecvStandard1.Close;
    SC.Free;
    EW.ShowExcel;
  end;
end;

end.
