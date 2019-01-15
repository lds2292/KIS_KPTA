unit dmIcon;

interface

uses
  SysUtils, Classes, ImgList, Controls, acAlphaImageList;

type
  TDataModule_ICON = class(TDataModule)
    IMG_32: TsAlphaImageList;
    IMG_16: TsAlphaImageList;
    IMG_24: TsAlphaImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule_ICON: TDataModule_ICON;

implementation

{$R *.dfm}

end.
