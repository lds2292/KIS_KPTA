unit CommonMSG;

interface

Const
  MSG_LOGIN_NOID = '사용자아이디를 입력하세요';
  MSG_LOGIN_NOPWD = '패스워드를 입력하세요';
  MSG_LOGIN_FAIL = '아이디 또는 패스워드를 확인하세요';

  MSG_1AB_TAKEN_10 = '제재구분이 1AB(완제의약품)인 경우 수탁제조는 10회 입력할 수 있습니다';
  MSG_1AB_ELSE_TAKEN_1 = '제재구분이 1AB(완제의약품)인 경우에만 1회 이상(총 10회까지) 입력할 수 있습니다';
  MSG_CHANGE_JEJE_GUBUN = '제재구분을 변경 할 경우 품목사항의 폼목코드가 변경되어야 합니다. 계속 진행하시겠습니까?';

  MSG_DANGA_ZERO = '단가가 0 입니다. 계속 진행 하시겠습니까?';
  MSG_AMT_ZERO = '금액이 0 입니다. 계속 진행 하시겠습니까?';
  MSG_QTY_ZERO = '수량이 0 입니다. 계속 진행 하시겠습니까?';

  MSG_EMPTY_UNIT = '단위를 입력해 주세요';
  MSG_EMPTY_ORIGIN_NATION = '원산지를 입력하세요';
  MSG_EMPTY_TRADE_NAME = '거래품명을 입력하세요';
  MSG_EMPTY_MODEL_SIZE = '모델규격을 입력하세요';
  MSG_EMPTY_ORIGIN_MATTER = '기원물질을 입력하세요';
  MSG_EMPTY_EXTRACTION = '추출부위를 입력하세요';
  MSG_EMPTY_BATCHNO = 'Batch No.를 입력하세요';

  MSG_INSERT_TAKEN = '수탁제조가 입력 중입니다'#13#10'입력중이시던 수탁제조를 저장하시려면 예(&Y)버튼을, 취소하려면 아니오(&N)버튼을 클릭하세요'#13#10'품목사항 저장을 취소하려면 취소(CANCEL)을 클릭하세요';
//  MSG_EDIT_TAKEN = '수탁제조가 수정 중입니다. 취소하고 계속 하시겠습니까?';

  MSG_DEL_STANDARD2 = '선택한 품목사항을 삭제하시겠습니까?'#13#10'삭제할 경우 수탁제조항목도 같이 삭제 됩니다';
  MSG_DEL_TAKEN = '선택한 수탁제조항목을 삭제 하시겠습니까?';
  MSG_DEL_STANDATD1 = '선택한 [표준통관예정보고서]를 삭제하시겠습니까?';

  MSG_NOT_CHANGE_SEND_TYPE_RESEND = '이미 전송을 한번이상 보낸 문서이므로 재전송[35] 또는 취소[1]로 보내야 합니다';

  MSG_COPY_DOCUMENT = '보고서 복사를 진행합니다. 계속 하시겠습니까?';

  MSG_READY_TEMP = '해당 문서는 임시저장 문서입니다. 전송 할 수 없습니다';
  MSG_ALREADY_SEND = '해당 문서는 이미 전송 된 문서입니다. 재전송 하시겠습니까?';
  MSG_ALREADY_PERMIT = '해당 문서는 접수(승인)된 문서입니다';

  MSG_NOT_RESEND = '. 재전송 할 수 없습니다';
  MSG_NOT_EDIT   = '. 수정할 수 없습니다';
  MSG_NOT_DELETE = '. 삭제할 수 없습니다';

  MSG_DELETE_SELECTED_DATA = '선택하신 데이터를 삭제하시겠습니까?';

  MSG_SEND_EMPTY_SEND_DIR = '전송폴더를 설정하지 않았습니다';
  MSG_SEND_EMPTY_USER_ID = '관세청 USER ID를 입력하세요';
  MSG_SEND_EMPTY_POST_BOX = '관세청 사서함 번호를 입력하세요';

  MSG_DIFF_USER_NO_EDIT = '번유저가 작성한 문서입니다';
  MSG_ACCEPT_DOC_NO_EDIT = '접수/보완/승인/서류제출요구 문서입니다';
implementation

end.
