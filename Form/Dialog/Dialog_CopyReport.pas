unit Dialog_CopyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, DB, ADODB, Grids, DBGrids, acDBGrid, Mask,
  sMaskEdit, StdCtrls, sEdit, sComboBox, ExtCtrls, sSplitter, sButton,
  sLabel, sPanel, sSkinProvider, DateUtils;

type
  TDialog_CopyReport_frm = class(TParentForm_frm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sButton3: TsButton;
    sButton1: TsButton;
    sSplitter1: TsSplitter;
    sPanel14: TsPanel;
    sButton5: TsButton;
    sButton6: TsButton;
    edt_fromdate: TsMaskEdit;
    sDBGrid1: TsDBGrid;
    qryList: TADOQuery;
    dsList: TDataSource;
    sPanel2: TsPanel;
    btnCalc: TsButton;
    sPanel3: TsPanel;
    edt_todate: TsMaskEdit;
    sButton2: TsButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure edt_fromdateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_fromdateDblClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadList;
  public
    { Public declarations }
  end;

var
  Dialog_CopyReport_frm: TDialog_CopyReport_frm;

implementation

uses dmConn, KISCalendar, CommonLib;

{$R *.dfm}

{ TDialog_CopyReport_frm }

procedure TDialog_CopyReport_frm.ReadList;
begin
  with qryList do
  begin
    Close;
    Parameters.ParamByName('FROM_DATE').Value := edt_fromdate.Text;
    Parameters.ParamByName('TO_DATE').Value := edt_todate.Text;
    Open;
  end;
end;

procedure TDialog_CopyReport_frm.FormCreate(Sender: TObject);
begin
  inherited;
  edt_fromdate.Text := FormatDateTime('YYYY-MM-DD',IncDay(Now,-30));
  edt_todate.Text := FormatDateTime('YYYY-MM-DD',Now);
end;

procedure TDialog_CopyReport_frm.FormShow(Sender: TObject);
begin
  inherited;
  ReadList;
end;

procedure TDialog_CopyReport_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TDialog_CopyReport_frm.sButton6Click(Sender: TObject);
var
  TempStr : string;
begin
  inherited;
  IF CompareStr( edt_fromdate.Text , edt_todate.Text ) > 0 then
  begin
    TempStr := edt_fromdate.Text;
    edt_fromdate.Text := edt_todate.Text;
    edt_todate.Text := TempStr;
  end;
  
  ReadList;
end;

procedure TDialog_CopyReport_frm.edt_fromdateKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Case Key of
    VK_RETURN : ReadList;
    VK_DOWN : sDBGrid1.SetFocus;
  end;

end;

procedure TDialog_CopyReport_frm.sDBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Case Key of
    VK_RETURN : ModalResult := mrOk;
    VK_UP :
    begin
      IF qryList.Bof Then edt_fromdate.SetFocus;
    end;
  end;
end;

procedure TDialog_CopyReport_frm.edt_fromdateDblClick(Sender: TObject);
var
  POS : TPoint;
begin
  inherited;

  POS.X := (Sender as TsMaskEdit).Left;
  POS.Y := (Sender as TsMaskEdit).Top+(Sender as TsMaskEdit).Height;

  POS := (Sender as TsMaskEdit).Parent.ClientToScreen(POS);

  KISCalendar_frm.Left := POS.X;
  KISCalendar_frm.Top := POS.Y;

  (Sender as TsMaskEdit).Text := FormatDateTime('YYYY-MM-DD',KISCalendar_frm.OpenCalendar(ConvertStr2Date((Sender as TsMaskEdit).Text)));
end;

procedure TDialog_CopyReport_frm.btnCalcClick(Sender: TObject);
begin
  inherited;
  edt_fromdateDblClick(edt_fromdate);
end;

procedure TDialog_CopyReport_frm.sButton2Click(Sender: TObject);
begin
  inherited;
  edt_fromdateDblClick(edt_todate);
end;

end.
