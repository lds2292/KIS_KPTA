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
  //COMCD, COMCD_D 抛捞喉 积己
  cmdCreateCOMCD.Execute;
  //PUMLIST 积己
  cmdCreatePUMLIST.Execute;
end;

end.
