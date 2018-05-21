# README

백엔드 

    컨트롤러 이름
        1. 외대 멋사 인트로 페이지 --> Home 
        2. 우리가 쓸 페이지 --> Private
        3. QnA --> qna
        4. Tip --> tip
        5. 수업자료 --> session
        6. 챌린지 --> challenge 
        
    모델 이름
        1. Private --> notice / column: user_name(slack-id), token, content
        2. QnA                / column: title, content, user_email(devise-id)
        3. Tip                / column: title, content, user_email
        4. Session            / column: title, content, user_email
        5. Quiz               / column: title, content, user_email
        -------------------------댓글----------------------------------------
        6. Qna_comment        / column:
        7. Tip_comment        / column:
        8. Session_comment    / column:
        9. Quiz               / column:
    
    뭘 해야 할까요? 
        <오늘 완료>
        1. 각 컨트롤러 CRUD (인건) (완료)
        
        <목요일 전까지>
        2. 각 모델 Comment (승윤) comment 기능 완성 
        3. 댓글 ajax, 대댓글 (현우)
        5. Slack.api (인건) (완료)
        6. QnA, 댓글에 사진 달기 (은진)
        7. 게시글 작성 권한 / 댓글 작성 권한 / 작성자만 수정/삭제 (은진)
    
        <그 다음주 목요일까지 (5.31)>
        8. 이메일 전송 후 인증 가입
        9. 글 쓰는 창 예쁘게 만들어주는 gem
        10. 일정 캘린더 
        11. Private 페이지에 각 게시판 최근 5개 정도 / 조회수 높은 게시물 띄우기
        12. 계정 경험치 (게시글, 댓글)
        13. 조회수 기능
        14. 좋아요 기능
    
    
    @질문@
        1.Challenge 게시판 어떻게 해요?
        2. 각 게시판 업로드 방식 정하기 / 첨부파일 기능
        3. 회원가입 승인? likelion 계정만 가입 가능?