# README



 Git에 올리는 법 (인건) --> 너무 많이 삽질을 해서 공유하고자 올립니다.
    
        1.GHFbend/HufsLikelion 을 Fork 한다
        2.(본인의유저이름) / HufsLikelion 을 C9에 클론한다.
        3. 거기서 작업을 한다.
        4. 작업을 완료하면
            1. git add .
            2. git commit -m "원하는 메세지"
            3. git push origin master:(브랜치 이름 (master, front_end, back_end)) 
                ex) 저 같은 경우에는 백엔드에 올리기 때문에 "git push origin master:back_end" 로 올립니다.

        5.(본인의유저이름) / HufsLikelion 에 들어가서 푸시가 잘 됐는지 확인해본다.
        6. 문제 없이 푸시 됐다면 New Pull Request 를 진행한다.

백엔드 진행

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
        4. Slack.api (인건) (완료) --> 현재 백엔드 c9에서만 작동 확인 가능합니다.
        5. QnA, 댓글에 사진 달기 (은진)
        6. 게시글 작성 권한 / 댓글 작성 권한 / 작성자만 수정/삭제 (은진)
    
        <그 다음주 목요일까지 (5.31)>
        7. 이메일 전송 후 인증 가입
        8. 글 쓰는 창 예쁘게 만들어주는 gem
        9. 일정 캘린더 
        10. Private 페이지에 각 게시판 최근 5개 정도 / 조회수 높은 게시물 띄우기
        11. 계정 경험치 (게시글, 댓글)
        12. 조회수 기능
        13. 좋아요 기능
    
    
    @질문@
        1.Challenge 게시판 어떻게 해요?
        2. 각 게시판 업로드 방식 정하기 / 첨부파일 기능
        3. 회원가입 승인? likelion 계정만 가입 가능?
