-- 댓글테이블
CREATE TABLE communityComments (
	idx number(10) NOT NULL,   	-- 기본키
	mref number(10) NOT NULL,   -- community 테이블의 idx	(외래키)
	writer varchar2(50) NOT NULL,	-- 작성자
	content varchar2(1000) NOT NULL,  -- 댓글 내용
	createdAt DATE default sysdate ,  -- 작성날짜와시간 기본값
	ip varchar2(15) default '127.0.0.1',  -- 작성자 ip
	heart number(3) default '0',	-- 좋아요 갯수
	primary  key (idx)
);
CREATE SEQUENCE comment_idx_seq;

-- 댓글 테이블 데이터(mref 컬럼값은 community 최근 글의 idx로 수정해야 확인이 편합니다.) 
INSERT INTO communityComments (idx,mref,writer,content)
VALUES (comment_idx_seq.nextval,203,'sana','이글은 메인글 3번 댓글~');
INSERT INTO communityComments (idx,mref,writer,content)
VALUES (comment_idx_seq.nextval,202,'wonder','이글은 메인글 3번 댓글~2');
INSERT INTO communityComments (idx,mref,writer,content)
VALUES (comment_idx_seq.nextval,201,'hongGD','이글은 메인글 333번 댓글~');
INSERT INTO communityComments (idx,mref,writer,content)
VALUES (comment_idx_seq.nextval,183,'mina012','이글은 메인글 333번 댓글~2');
INSERT INTO communityComments (idx,mref,writer,content)
VALUES (comment_idx_seq.nextval,182,'twice','하이!!!하이~~');

-- 필요시 데이블 및 데이터 삭제
DROP TABLE communityComments ;
TRUNCATE  TABLE communityComments ;
DROP SEQUENCE comment_idx_seq;

-- ////////////주요 sql //////////////////////////////////////////
-- 메인 3번글의 댓글 목록(리스트)
SELECT * FROM communityComments c WHERE mref=3;   

-- 메인글 idx (3번)의 댓글 갯수 : *commentsCount*
SELECT count(*) FROM communityComments c WHERE mref=3;

-- 댓글 idx의 삭제 : 완료헀음.
DELETE FROM communityComments c WHERE idx = 2;

SELECT max(idx) FROM communityComments ;	