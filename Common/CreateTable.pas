unit CreateTable;

interface

uses
  SysUtils, Classes, ADODB;

type
  TDMCreateTable = class(TDataModule)
    cmdCreateCOMCD: TADOCommand;
    cmdCreatePUMLIST: TADOCommand;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RunPatch;
  end;

var
  DMCreateTable: TDMCreateTable;

implementation

uses
  dmConn;

{$R *.dfm}

{ TDMCreateTable }

procedure TDMCreateTable.RunPatch;
begin
  //COMCD, COMCD_D 테이블 생성
  cmdCreateCOMCD.Execute;
  //PUMLIST 생성
  cmdCreatePUMLIST.Execute;
end;

end.
