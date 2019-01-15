unit Dialog_CodeParent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParentForm, DB, Grids, DBGrids, acDBGrid, sSkinProvider, dmConn,
  StdCtrls, sButton, sEdit, ExtCtrls, sSplitter, sPanel, sComboBox;

type
  TDialog_CodeParent_frm = class(TParentForm_frm)
    sDBGrid1: TsDBGrid;
    dsList: TDataSource;
    sPanel1: TsPanel;
    sSplitter1: TsSplitter;
    sEdit2: TsEdit;
    sButton1: TsButton;
    sComboBox1: TsComboBox;
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton1Click(Sender: TObject);
    procedure sEdit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCodeGroup : String;
    procedure setDialogTitle;
  public
    { Public declarations }
    function OpenDialog(CodeGroup : string;sCode :string = ''):TCodeRecord;

  end;

var
  Dialog_CodeParent_frm: TDialog_CodeParent_frm;

implementation

uses dmIcon;

{$R *.dfm}

{ TDialog_CodeParent_frm }

function TDialog_CodeParent_frm.OpenDialog(CodeGroup : string;sCode :string = ''):TCodeRecord;
begin
  FCodeGroup := CodeGroup;

  setDialogTitle;

  DataModule_Conn.getCodeList(CodeGroup);

  IF Trim(sCode) <> '' Then
    dsList.DataSet.Locate('CODE_TYPE',sCode,[]);
  if ShowModal = mrOk then
  begin
    Result.sCode     := dsList.DataSet.FieldByName('CODE_TYPE').AsString;
    Result.sContents := dsList.DataSet.FieldByName('CODE_CONTENTS').AsString;
    Result.sContents2 := dsList.DataSet.FieldByName('CODE_ETC').AsString;
    Result.sChanged  := True;
  end
  else
    Result.sChanged  := False;  
end;

procedure TDialog_CodeParent_frm.sDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TDialog_CodeParent_frm.sDBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN Then sDBGrid1DblClick(sDBGrid1);
end;

procedure TDialog_CodeParent_frm.setDialogTitle;
begin
  IF FCodeGroup = 'JEJE_GUBUN' Then
    Self.Caption := '�ڵ� ��ȸ(�Ǿ�ǰ ���籸��)';
  IF FCodeGroup = 'NATION' Then
    Self.Caption := '������ȣ ��ȸ';
  IF FCodeGroup = 'INDO' Then
    Self.Caption := '�ڵ� ��ȸ(�ε�����)';
  IF FCodeGroup = 'CURR_TYPE' Then
    Self.Caption := '��ȭ�ڵ� ��ȸ';
  IF FCodeGroup = 'PAY_TYPE' Then
    Self.Caption := '������� ��ȸ';
  IF FCodeGroup = 'PORT' Then
    Self.Caption := '�ױ�/�����ڵ� ��ȸ';
  IF FCodeGroup = 'QUALITY_AGENCY' Then
    Self.Caption := '�ڵ� ��ȸ(�Ǿ�ǰ ǰ���˻���)';
  IF FCodeGroup = 'MMSP' Then
    Self.Caption := '�ڵ� ��ȸ(�Ǿ�ǰ �õ�ȯ�濬�����ڵ�)';
end;

procedure TDialog_CodeParent_frm.sButton1Click(Sender: TObject);
begin
  inherited;
  Case sComboBox1.ItemIndex of
    0: DataModule_Conn.getCodeListWhereCode(FCodeGroup,sEdit2.Text);
    1: DataModule_Conn.getCodeListWhereContents(FCodeGroup,sEdit2.Text);
  end;
end;

procedure TDialog_CodeParent_frm.sEdit2KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF Key = VK_RETURN Then sButton1Click(sButton1);
end;

procedure TDialog_CodeParent_frm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF Key = VK_ESCAPE Then ModalResult := mrCancel;
end;

procedure TDialog_CodeParent_frm.FormShow(Sender: TObject);
begin
  inherited;
  sEdit2.SetFocus;
end;

end.
