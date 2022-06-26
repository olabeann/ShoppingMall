use webtest;

drop table if exists notice;
CREATE TABLE notice(
  noticeno      INT                        NOT NULL AUTO_INCREMENT COMMENT '글 번호',
  title             VARCHAR(300)         NOT NULL COMMENT '제목',
  content       TEXT                       NOT NULL COMMENT '내용',
  wname        VARCHAR (20)           NOT NULL COMMENT '작성자',
  passwd        VARCHAR (20)           NULL COMMENT '패스워드',
  cnt             SMALLINT                 NOT NULL DEFAULT '0' COMMENT '조회수',
  rdate          DATETIME                  NOT NULL COMMENT '등록일',
  PRIMARY KEY (noticeno)  
);    

select * from notice;

INSERT INTO notice(title, content, wname, passwd, cnt, rdate)
VALUES('spring 시즌 접수 안내 1', '10% 할인 실시!', '왕눈이', '1234', 0, NOW());
INSERT INTO notice(title, content, wname, passwd, cnt, rdate)
VALUES('spring 시즌 접수 안내 2', '10% 할인 실시!', '아로미', '1234', 0, NOW());
INSERT INTO notice(title, content, wname, passwd, cnt, rdate)
VALUES('spring 시즌 접수 안내 3', '10% 할인 실시!', '투투투', '1234', 0, now());


                     