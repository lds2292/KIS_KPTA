unit Dialog_ExcelExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, ExtCtrls, sPanel, sSkinProvider, StdCtrls,
  sRadioButton, Mask, sMaskEdit, sCustomComboEdit, sToolEdit, Buttons,
  sBitBtn, DateUtils, DB, ADODB, NewExcelWriter, StrUtils;

type
  TDialog_ExcelExport_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sDateEdit1: TsDateEdit;
    sDateEdit2: TsDateEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    qryExcel: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    EW : TExcelWriter;    
    procedure PRINT_PUM(var nRow : Integer);
    procedure PRINT_MAKE(var nRow : Integer);
    procedure PRINT_CHECK(var nRow : Integer);
    procedure PRINT_TAKEN(var nRow : Integer);
  public
    { Public declarations }
  end;

var
  Dialog_ExcelExport_frm: TDialog_ExcelExport_frm;

implementation

uses
  dmConn;

{$R *.dfm}

procedure TDialog_ExcelExport_frm.FormActivate(Sender: TObject);
begin
//  inherited;

end;

procedure TDialog_ExcelExport_frm.FormShow(Sender: TObject);
begin
  inherited;
  sDateEdit1.Date := StartOfTheMonth(Now);
  sDateEdit2.Date := EndOfTheMonth(Now);
end;

procedure TDialog_ExcelExport_frm.PRINT_CHECK(var nRow: Integer);
var
  nCol, nNextRow : Integer;
begin
  nCol := EW.ExcelChar2Number('K');
  nNextRow := nRow+1;
  EW.MergeCells('K'+IntToStr(nRow),'L'+IntToStr(nRow));
  EW.CellsLeftIndent(nCol, nRow, '���ϼ��˻����� ����');
  EW.CellsLeftIndent(nCol, nNextRow, '�߱޹�ȣ');
  EW.Cells(nCol+1,  nNextRow, '����', taCenter);

  EW.CellBorder(nCol, nRow, nCol+1, nNextRow, [loAll], 2);
  EW.CellColor(nCol, nRow, nCol+1, nNextRow, RGB(217,217,217));
  EW.RowHeights(IntToStr(nRow)+':'+IntToStr(nNextRow), 18);
  Inc(nRow);
  Inc(nRow);
end;

procedure TDialog_ExcelExport_frm.PRINT_TAKEN(var nRow: Integer);
var
  nCol, nNextRow : Integer;
begin
  nCol := EW.ExcelChar2Number('K');
  nNextRow := nRow+1;
  EW.MergeCells('K'+IntToStr(nRow),'R'+IntToStr(nRow));
  EW.CellsLeftIndent(nCol, nRow, '��Ź����');
  EW.CellsLeftIndent(nCol, nNextRow, '�Ϸù�ȣ');
  EW.Cells(nCol+1,  nNextRow, '����', taCenter);
  EW.Cells(nCol+2,  nNextRow, '��ȣ', taCenter);
  EW.Cells(nCol+5,  nNextRow, '�ּ�', taCenter);

  EW.CellBorder(nCol, nRow, nCol+3, nNextRow, [loAll], 2);
  EW.CellColor(nCol, nRow, nCol+3, nNextRow, RGB(217,217,217));
  EW.RowHeights(IntToStr(nRow)+':'+IntToStr(nNextRow), 18);
  Inc(nRow);
  Inc(nRow);
end;

procedure TDialog_ExcelExport_frm.PRINT_MAKE(var nRow: Integer);
var
  nCol, nNextRow : Integer;
begin
  nCol := EW.ExcelChar2Number('K');
  nNextRow := nRow+1;
  EW.MergeCells('K'+IntToStr(nRow),'L'+IntToStr(nRow));
  EW.CellsLeftIndent(nCol, nRow, '��������');
  EW.CellsLeftIndent(nCol, nNextRow, '������ȣ');
  EW.Cells(nCol+1,  nNextRow, '��������', taCenter);

  EW.CellBorder(nCol, nRow, nCol+1, nNextRow, [loAll], 2);
  EW.CellColor(nCol, nRow, nCol+1, nNextRow, RGB(235,235,235));
  EW.RowHeights(IntToStr(nRow)+':'+IntToStr(nNextRow), 18);  
  Inc(nRow);
  Inc(nRow);
end;

procedure TDialog_ExcelExport_frm.PRINT_PUM(var nRow: Integer);
var
  nCol, nNextRow : Integer;
begin
  nCol := EW.ExcelChar2Number('K');
  nNextRow := nRow+1;
  EW.MergeCells('K'+IntToStr(nRow),'AA'+IntToStr(nRow));
  EW.ColumnWidth('K', 15);
  EW.ColumnWidth('L', 13);
  EW.ColumnWidth('M', 31);
  EW.CellsLeftIndent(nCol, nRow, 'ǰ�����');
  EW.CellsLeftIndent(nCol, nNextRow, 'ǰ��ĺ���ȣ');
  EW.Cells(nCol+1,  nNextRow, 'HS��ȣ', taCenter);
  EW.Cells(nCol+2,  nNextRow, 'ǰ���ڵ�', taCenter);
  EW.Cells(nCol+3,  nNextRow, '�ŷ�ǰ��', taCenter);
  EW.Cells(nCol+4,  nNextRow, '�𵨱԰�', taCenter);
  EW.Cells(nCol+5,  nNextRow, '����', taCenter);
  EW.Cells(nCol+6,  nNextRow, '����', taCenter);
  EW.Cells(nCol+7,  nNextRow, '�ܰ�', taCenter);
  EW.Cells(nCol+8,  nNextRow, '�ݾ�', taCenter);
  EW.Cells(nCol+9,  nNextRow, '�㰡��ȣ', taCenter);
  EW.Cells(nCol+10, nNextRow, '�㰡����', taCenter);
  EW.Cells(nCol+11, nNextRow, '������', taCenter);
  EW.Cells(nCol+12, nNextRow, 'BSE���ǰ��', taCenter);
  EW.Cells(nCol+13, nNextRow, 'BSE������', taCenter);
  EW.Cells(nCol+14, nNextRow, '�������', taCenter);
  EW.Cells(nCol+15, nNextRow, '�������', taCenter);
  EW.Cells(nCol+16, nNextRow, 'Batch.No', taCenter);

  EW.MergeCells('AB'+IntToStr(nRow),'AG'+IntToStr(nRow));
  EW.ColumnWidths(['AB','AC','AE','AF'], 30);
  EW.ColumnWidths(['AD','AG'], 4);
  EW.CellsLeftIndent(nCol+17, nRow, '��Ź����');
  EW.CellsLeftIndent(nCol+17, nNextRow, '��ȣ');
  EW.Cells(nCol+20, nNextRow, '�ּ�', taCenter);

  EW.CellBorder(nCol, nRow, nCol+20, nNextRow, [loAll], 2);
  EW.CellColor(nCol, nRow, nCol+20, nNextRow, RGB(217,217,217));
  EW.RowHeights(IntToStr(nRow)+':'+IntToStr(nNextRow), 18);
  Inc(nRow);
  Inc(nRow);
end;

procedure TDialog_ExcelExport_frm.sBitBtn1Click(Sender: TObject);
var
  TMP_DT : TDateTime;
  nCurrRow : Integer;
  sHeader, sCompareDocNo : String;
begin
  inherited;
  IF CompareDate(sDateEdit1.Date, sDateEdit2.Date) > 0 Then
  begin
    TMP_DT := sDateEdit1.Date;
    sDateEdit1.Date := sDateEdit2.Date;
    sDateEdit2.Date := TMP_DT;
  end;

  EW := TExcelWriter.Create;
  try
    with qryExcel do
    begin
      Close;
      Parameters[0].Value := sDateEdit1.Date;
      Parameters[1].Value := sDateEdit2.Date;
      Open;
    end;

    //------------------------------------------------------------------------------
    // Ÿ��Ʋ �Է�
    //------------------------------------------------------------------------------
    EW.TitleText(1,1,'ǥ�������������');
    EW.RowHeight(1, 32);

    EW.Cells(1,2, '�Ⱓ: '+FormatDateTime('YYYY-MM-DD', sDateEdit1.Date)+' ~ '+FormatDateTime('YYYY-MM-DD', sDateEdit2.Date));
    EW.RowHeight(2, 24);

    EW.MergeCells('A3','A4');
    EW.Cells(1, 3, '�����ȣ', taCenter);
    EW.ColumnWidth('A', 19);

    EW.MergeCells('B3','B4');
    EW.Cells(2, 3, '��û����', taCenter);
    EW.ColumnWidth('B', 12);

    EW.MergeCells('C3','C4');
    EW.Cells(3, 3, '����', taCenter);
    EW.ColumnWidth('C', 8);

    EW.MergeCells('D3','D4');
    EW.Cells(4, 3, '������', taCenter);
    EW.ColumnWidth('D', 8);

    EW.MergeCells('E3','E4');
    EW.Cells(5, 3, '����ȭ��', taCenter);
    EW.ColumnWidth('E', 8);

    EW.MergeCells('F3','F4');
    EW.Cells(6, 3, '������', taCenter);
    EW.ColumnWidth('F', 8);

    EW.MergeCells('G3','G4');
    EW.Cells(7, 3, '�ε�����', taCenter);
    EW.ColumnWidth('G', 8);

    EW.MergeCells('H3','H4');
    EW.Cells(8, 3, '�������', taCenter);
    EW.ColumnWidth('H', 8);

    EW.MergeCells('I3','I4');
    EW.Cells(9, 3, '�����ݾ�', taRight);
    EW.ColumnWidth('I', 8);

    EW.MergeCells('J3','J4');
    EW.Cells(10, 3, '��ȭ����', taCenter);
    EW.ColumnWidth('J', 8);

    EW.CellBorder('A3:J4', [loAll], 2);
    EW.CellColor('A3:J4', RGB(217,217,217));

    nCurrRow := 3;
    sHeader := '';
    sCompareDocNo := '';
    while not qryExcel.Eof do
    begin
      if qryExcel.Fields[0].AsString = '0S' Then
      begin
        if sHeader = '' Then PRINT_PUM(nCurrRow);

        if (sHeader <> qryExcel.Fields[0].AsString) OR (sCompareDocNo <> qryExcel.Fields[1].AsString) Then
        begin
          sHeader := '0S';
          sCompareDocNo := qryExcel.Fields[1].AsString;
          EW.Cells(1,  nCurrRow, qryExcel.FieldByName('DOC_NO').AsString, taCenter);
          EW.Cells(2,  nCurrRow, FormatDateTime('YYYY-MM-DD', qryExcel.FieldByName('REQUEST_DATE').AsDateTime), taCenter);
          EW.Cells(3,  nCurrRow, qryExcel.FieldByName('JEJE_GUBUN').AsString, taCenter);
          EW.Cells(4,  nCurrRow, qryExcel.FieldByName('IMPORT_SANGHO').AsString);
          EW.Cells(5,  nCurrRow, qryExcel.FieldByName('HWAJU_SANGHO').AsString);
          EW.Cells(6,  nCurrRow, qryExcel.FieldByName('EXPORT_SANGHO').AsString);
          EW.Cells(7,  nCurrRow, qryExcel.FieldByName('INDO_TYPE').AsString, taCenter);
          EW.Cells(8,  nCurrRow, qryExcel.FieldByName('PAY_TYPE').AsString, taCenter);
          EW.Cells(9,  nCurrRow, qryExcel.FieldByName('PAY_AMT').AsString, taRight);
          EW.Cells(10, nCurrRow, qryExcel.FieldByName('PAY_UNIT').AsString, taCenter);
        end;
        EW.CellBorder(1,nCurrRow,33,nCurrRow,[loTop],2);
        EW.Cells(11, nCurrRow, 'FR'+qryExcel.FieldByName('SERIAL_NO').AsString, taCenter);
        EW.Cells(12, nCurrRow, qryExcel.FieldByName('HS').AsString, taCenter);

//        IF (qryExcel.FieldByName('JEJE_GUBUN').AsString = '1AG') AND (CompareDate(EncodeDate(2019,12,1),qryExcel.FieldByName('REQUEST_DATE').AsDateTime)<= 0) Then
//          EW.Cells(13, nCurrRow, RightStr(qryExcel.FieldByName('GOODS_CODE').AsString, 12), taCenter)
//        else
          EW.Cells(13, nCurrRow, qryExcel.FieldByName('GOODS_CODE').AsString, taCenter);

        EW.Cells(14, nCurrRow, qryExcel.FieldByName('TRADE_NAME').AsString);
        EW.Cells(15, nCurrRow, qryExcel.FieldByName('MODEL_SIZE').AsString);
        EW.Cells(16, nCurrRow, qryExcel.FieldByName('MODEL_SIZE_INGREDIENT').AsString);
        EW.Cells(17, nCurrRow, qryExcel.FieldByName('MODEL_QTY').AsString);
        EW.Cells(18, nCurrRow, qryExcel.FieldByName('MODEL_DANGA').AsString);
        EW.Cells(19, nCurrRow, qryExcel.FieldByName('MODEL_AMT').AsString);
        EW.Cells(20, nCurrRow, qryExcel.FieldByName('PERMIT_SINGO_NO').AsString);
        EW.Cells(21, nCurrRow, qryExcel.FieldByName('PERMIT_SINGO_DATE').AsString);
        EW.Cells(22, nCurrRow, qryExcel.FieldByName('ORIGIN_NATION_CODE').AsString);
        EW.Cells(23, nCurrRow, qryExcel.FieldByName('BSE_CODE').AsString);
        EW.Cells(24, nCurrRow, qryExcel.FieldByName('BSE_ORIGIN_NATION_CODE').AsString);
        EW.Cells(25, nCurrRow, qryExcel.FieldByName('ORIGIN_MATTER').AsString);
        EW.Cells(26, nCurrRow, qryExcel.FieldByName('EXTRACTION').AsString);
        EW.Cells(27, nCurrRow, qryExcel.FieldByName('BATCH_NO').AsString);

        EW.Cells(28, nCurrRow, qryExcel.FieldByName('WITAK_SANGHO1').AsString);
        EW.Cells(29, nCurrRow, qryExcel.FieldByName('WITAK_SANGHO2').AsString);
        EW.Cells(30, nCurrRow, qryExcel.FieldByName('WITAK_SANGHO3').AsString);
        EW.Cells(31, nCurrRow, qryExcel.FieldByName('WITAK_ADDR1').AsString);
        EW.Cells(32, nCurrRow, qryExcel.FieldByName('WITAK_ADDR2').AsString);
        EW.Cells(33, nCurrRow, qryExcel.FieldByName('WITAK_ADDR3').AsString);
      end
      else
      if AnsiMatchText( qryExcel.Fields[0].AsString , ['1M','2C'] ) Then
      begin
        if sHeader <> qryExcel.Fields[0].AsString Then
        begin
          sHeader := qryExcel.Fields[0].AsString;

          Case AnsiIndexText( qryExcel.Fields[0].AsString , ['1M','2C'] ) of
            0: PRINT_MAKE(nCurrRow);
            1: PRINT_CHECK(nCurrRow);
          end;
        end;

        EW.Cells(11, nCurrRow, qryExcel.FieldByName('MAKE_NO').AsString, taCenter);
        EW.Cells(12, nCurrRow, qryExcel.FieldByName('MAKE_DATE').AsString, taCenter);
      end
      else
      if qryExcel.Fields[0].AsString = '3T' Then
      begin
        if sHeader <> qryExcel.Fields[0].AsString Then
        begin
          sHeader := qryExcel.Fields[0].AsString;        
          PRINT_TAKEN(nCurrRow);
        end;

        EW.Cells(11, nCurrRow, qryExcel.FieldByName('MAKE_NO').AsString, taCenter);
        EW.Cells(12, nCurrRow, qryExcel.FieldByName('MAKE_DATE').AsString, taCenter);
        EW.Cells(13, nCurrRow, qryExcel.FieldByName('TAKE_SANGHO1').AsString);
        EW.Cells(14, nCurrRow, qryExcel.FieldByName('TAKE_SANGHO2').AsString);
        EW.Cells(15, nCurrRow, qryExcel.FieldByName('TAKE_SANGHO3').AsString);
        EW.Cells(16, nCurrRow, qryExcel.FieldByName('TAKE_ADDR1').AsString);
        EW.Cells(17, nCurrRow, qryExcel.FieldByName('TAKE_ADDR2').AsString);
        EW.Cells(18, nCurrRow, qryExcel.FieldByName('TAKE_ADDR3').AsString);

      end;

      inc(nCurrRow);
      qryExcel.Next;
    end;

    EW.RowHeights('3:4', 18);

    EW.Freezepanes(5);
    EW.ShowExcel;
  except
    on E:Exception do
    begin
      EW.Free;
      MessageBox(Self.Handle, PChar(E.Message), '��ȯ����', MB_OK+MB_ICONERROR);
    end;
  end;

end;

end.
