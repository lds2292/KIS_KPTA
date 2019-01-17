unit CommonDef;

interface

Type
  TWorkType = (wtIns, wtEdit, wtView);
  TExtractPosition = (epFirst, epLast);
  TConfigData = record
    SID : string;
    SINGO_BUHO : string;
    SAUP_NO : string;
    SANGHO : String;
    DAEPYO : string;
    POST_NO : string;
    ADDR1 : string;
    ADDR2 : string;
    UNIPASS_ID : String;
    UNIPASS_POSTBOX : String;
    APRE_POSTBOX : String;
    XML_SEND_DIR : String;
  end;

  TLoginData = record
    sID : string;
    sName : string;
  end;

  TPanelInfo = record
    X, Y, Height, Widht : Integer;
  end;

implementation

end.
