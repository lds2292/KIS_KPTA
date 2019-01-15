unit KCSAPI4_KIS;

interface
  Function RcpnDocLstCscl(UserID:PCHAR ; CbtID:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function RcpnDocLstReqApre(UserID:PCHAR ; CbtID:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function RcpnDocCscl(UserID:PCHAR ; CbtID:PCHAR ; DocCode:PCHAR ; ConversationID:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function RcpnDocReqApre(UserID:PCHAR ; CbtID:PCHAR ; DocCode:PCHAR ; ConversationID:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function TrsmDocCscl(UserID:PCHAR ; CbtID:PCHAR ; DocCode:PCHAR ; ConversationID:PCHAR ; Payload:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function TrsmDocReqApre(UserID:PCHAR ; FromCbtID:PCHAR ; ToCbtID:PCHAR ; DocCode:PCHAR ; ConversationID:PCHAR ; Payload:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function GetSrvrInfo(UserID:PCHAR ; CbtID:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  Function LoginSecuMdle(UserID:PCHAR ; CbtID:PCHAR ) : PCHAR ; stdcall; external 'KCSAPI4.dll';
  procedure LogoutSecuMdle(); stdcall; external 'KCSAPI4.dll';
Var
  onLogin : Boolean;

implementation

end.
