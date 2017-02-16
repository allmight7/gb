/**********************************/
/* Table Name: 회원 */
/**********************************/
CREATE TABLE member(
		m_no                          		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		m_pw                          		VARCHAR2(20)		 NULL ,
		m_name                        		VARCHAR2(20)		 NULL ,
		m_gender                      		NUMBER(2)		 NULL ,
		m_birth                       		DATE		 NULL ,
		m_zipcode                     		VARCHAR2(10)		 NULL ,
		m_addr                        		VARCHAR2(200)		 NULL ,
		m_email                       		VARCHAR2(50)		 NULL ,
		m_phone                       		VARCHAR2(50)		 NULL ,
		m_img                         		VARCHAR2(300)		 NULL ,
		m_grade                       		NUMBER(2)		 NULL ,
		m_point                       		NUMBER(10)		 NULL 
);

CREATE SEQUENCE member_m_id_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER member_m_id_TRG
BEFORE INSERT ON member
FOR EACH ROW
BEGIN
IF :NEW.m_id IS NOT NULL THEN
  SELECT member_m_id_SEQ.NEXTVAL INTO :NEW.m_id FROM DUAL;
END IF;
END;

COMMENT ON TABLE member is '회원';
COMMENT ON COLUMN member.m_no is '회원번호';
COMMENT ON COLUMN member.m_id is '아이디';
COMMENT ON COLUMN member.m_pw is '비밀번호';
COMMENT ON COLUMN member.m_name is '회원이름';
COMMENT ON COLUMN member.m_gender is '성별';
COMMENT ON COLUMN member.m_birth is '생년월일';
COMMENT ON COLUMN member.m_zipcode is '우편번호';
COMMENT ON COLUMN member.m_addr is '주소';
COMMENT ON COLUMN member.m_email is '이메일';
COMMENT ON COLUMN member.m_phone is '연락처';
COMMENT ON COLUMN member.m_img is '프로필사진';
COMMENT ON COLUMN member.m_grade is '권한 등급';
COMMENT ON COLUMN member.m_point is '포인트';


/**********************************/
/* Table Name: 영화 */
/**********************************/
CREATE TABLE movie(
		movie_no                      		NUMBER(10)		 NULL ,
		movie_name                    		VARCHAR2(50)		 NULL ,
		movie_date                    		DATE		 NULL ,
		movie_time                    		NUMBER(10)		 NULL ,
		movie_rate                    		NUMBER(20)		 NULL ,
		movie_people                  		NUMBER(10)		 NULL ,
		movie_director                		VARCHAR2(50)		 NULL ,
		movie_actor                   		VARCHAR2(200)		 NULL ,
		movie_summary                 		VARCHAR2(1000)		 NULL ,
		movie_trailer                 		VARCHAR2(500)		 NULL 
);

COMMENT ON TABLE movie is '영화';
COMMENT ON COLUMN movie.movie_no is '영화번호';
COMMENT ON COLUMN movie.movie_name is '영화제목';
COMMENT ON COLUMN movie.movie_date is '영화 개봉일';
COMMENT ON COLUMN movie.movie_time is '영화 상영시간';
COMMENT ON COLUMN movie.movie_rate is '평점합계';
COMMENT ON COLUMN movie.movie_people is '평점 참여인원';
COMMENT ON COLUMN movie.movie_director is '영화 감독';
COMMENT ON COLUMN movie.movie_actor is '출연진';
COMMENT ON COLUMN movie.movie_summary is '줄거리';
COMMENT ON COLUMN movie.movie_trailer is '트레일러';


/**********************************/
/* Table Name: 스틸컷 */
/**********************************/
CREATE TABLE stillcut(
		s_no                          		NUMBER(10)		 NULL ,
		s_thumb                       		VARCHAR2(2)		 NULL ,
		s_image                       		VARCHAR2(300)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE stillcut is '스틸컷';
COMMENT ON COLUMN stillcut.s_no is '스틸컷번호';
COMMENT ON COLUMN stillcut.s_thumb is '썸네일';
COMMENT ON COLUMN stillcut.s_image is '이미지경로';
COMMENT ON COLUMN stillcut.movie_no is '영화번호';


/**********************************/
/* Table Name: 본영화 */
/**********************************/
CREATE TABLE seen_movie(
		seen_no                       		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE seen_movie is '본영화';
COMMENT ON COLUMN seen_movie.seen_no is '본영화 번호';
COMMENT ON COLUMN seen_movie.m_id is '아이디';
COMMENT ON COLUMN seen_movie.movie_no is '영화번호';


/**********************************/
/* Table Name: 찜하기 */
/**********************************/
CREATE TABLE wish_moive(
		wish_no                       		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

COMMENT ON TABLE wish_moive is '찜하기';
COMMENT ON COLUMN wish_moive.wish_no is '찜하기 고유번호';
COMMENT ON COLUMN wish_moive.movie_no is '영화번호';
COMMENT ON COLUMN wish_moive.m_id is '아이디';


/**********************************/
/* Table Name: 평점 */
/**********************************/
CREATE TABLE rating(
		rating_no                     		NUMBER(20)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		rating_score                  		NUMBER(10)		 NULL 
);

COMMENT ON TABLE rating is '평점';
COMMENT ON COLUMN rating.rating_no is '평점 번호';
COMMENT ON COLUMN rating.m_id is '아이디';
COMMENT ON COLUMN rating.movie_no is '영화번호';
COMMENT ON COLUMN rating.rating_score is '평점';


/**********************************/
/* Table Name: 리뷰 */
/**********************************/
CREATE TABLE review(
		review_no                     		NUMBER(10)		 NULL ,
		review_content                		VARCHAR2(300)		 NULL ,
		review_hit                    		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		rating_no                     		NUMBER(20)		 NULL 
);

COMMENT ON TABLE review is '리뷰';
COMMENT ON COLUMN review.review_no is '리뷰번호';
COMMENT ON COLUMN review.review_content is '리뷰 한줄평';
COMMENT ON COLUMN review.review_hit is '추천수';
COMMENT ON COLUMN review.movie_no is '영화번호';
COMMENT ON COLUMN review.m_id is '아이디';
COMMENT ON COLUMN review.rating_no is '평점 번호';


/**********************************/
/* Table Name: 상품 */
/**********************************/
CREATE TABLE product(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(50)		 NULL ,
		p_price                       		NUMBER(10)		 NULL ,
		p_desc                        		VARCHAR2(500)		 NULL 
);

COMMENT ON TABLE product is '상품';
COMMENT ON COLUMN product.p_no is '상품번호';
COMMENT ON COLUMN product.p_name is '상품명';
COMMENT ON COLUMN product.p_price is '상품 가격';
COMMENT ON COLUMN product.p_desc is '상품설명';


/**********************************/
/* Table Name: 구매 */
/**********************************/
CREATE TABLE buy(
		buy_no                        		NUMBER(10)		 NULL ,
		buy_date                      		DATE		 NULL ,
		buy_count                     		NUMBER(10)		 NULL ,
		buy_point                     		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

COMMENT ON TABLE buy is '구매';
COMMENT ON COLUMN buy.buy_no is '구매번호';
COMMENT ON COLUMN buy.buy_date is '구매날짜';
COMMENT ON COLUMN buy.buy_count is '구매수량';
COMMENT ON COLUMN buy.buy_point is '포인트결제금액';
COMMENT ON COLUMN buy.m_id is '아이디';
COMMENT ON COLUMN buy.p_no is '상품번호';


/**********************************/
/* Table Name: 상영관 */
/**********************************/
CREATE TABLE multiplex(
		mp_no                         		NUMBER(10)		 NULL ,
		mp_name                       		VARCHAR2(30)		 NULL ,
		mp_type                       		VARCHAR2(10)		 NULL ,
		mp_city                       		VARCHAR2(20)		 NULL ,
		mp_cinema                     		VARCHAR2(20)		 NULL ,
		mp_seats                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE multiplex is '상영관';
COMMENT ON COLUMN multiplex.mp_no is '상영관번호';
COMMENT ON COLUMN multiplex.mp_name is '상영관 이름';
COMMENT ON COLUMN multiplex.mp_type is '상영관 좌석타입';
COMMENT ON COLUMN multiplex.mp_city is '상영관 지역';
COMMENT ON COLUMN multiplex.mp_cinema is '상영관의 영화관 지역';
COMMENT ON COLUMN multiplex.mp_seats is '상영관 좌석수';


/**********************************/
/* Table Name: 상영 정보 */
/**********************************/
CREATE TABLE movie_schedule(
		ms_no                         		NUMBER(10)		 NULL ,
		ms_date                       		VARCHAR2(10)		 NULL ,
		ms_time                       		VARCHAR2(10)		 NULL ,
		mp_no                         		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE movie_schedule is '상영 정보';
COMMENT ON COLUMN movie_schedule.ms_no is '상영 번호';
COMMENT ON COLUMN movie_schedule.ms_date is '상영일';
COMMENT ON COLUMN movie_schedule.ms_time is '상영시간';
COMMENT ON COLUMN movie_schedule.mp_no is '상영관번호';
COMMENT ON COLUMN movie_schedule.movie_no is '영화번호';


/**********************************/
/* Table Name: 영화예약 */
/**********************************/
CREATE TABLE book(
		book_no                       		NUMBER(10)		 NULL ,
		book_date                     		DATE		 NULL ,
		book_seat_count               		NUMBER(10)		 NULL ,
		book_seat_no                  		VARCHAR2(100)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		ms_no                         		NUMBER(10)		 NULL 
);

COMMENT ON TABLE book is '영화예약';
COMMENT ON COLUMN book.book_no is '예매 번호';
COMMENT ON COLUMN book.book_date is '예매한날짜';
COMMENT ON COLUMN book.book_seat_count is '좌석수';
COMMENT ON COLUMN book.book_seat_no is '좌석번호';
COMMENT ON COLUMN book.m_id is '아이디';
COMMENT ON COLUMN book.ms_no is '상영번호';


/**********************************/
/* Table Name: 이벤트 */
/**********************************/
CREATE TABLE event(
		event_no                      		NUMBER(10)		 NULL ,
		event_name                    		VARCHAR2(50)		 NULL ,
		event_path                    		VARCHAR2(300)		 NULL ,
		event_date                    		VARCHAR2(100)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

COMMENT ON TABLE event is '이벤트';
COMMENT ON COLUMN event.event_no is '이벤트번호';
COMMENT ON COLUMN event.event_name is '이벤트명';
COMMENT ON COLUMN event.event_path is '이벤트경로';
COMMENT ON COLUMN event.event_date is '이벤트기간';
COMMENT ON COLUMN event.m_id is '아이디';



ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (m_id);

ALTER TABLE movie ADD CONSTRAINT IDX_movie_PK PRIMARY KEY (movie_no);

ALTER TABLE stillcut ADD CONSTRAINT IDX_stillcut_PK PRIMARY KEY (s_no);
ALTER TABLE stillcut ADD CONSTRAINT IDX_stillcut_FK0 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

ALTER TABLE seen_movie ADD CONSTRAINT IDX_seen_movie_PK PRIMARY KEY (seen_no);
ALTER TABLE seen_movie ADD CONSTRAINT IDX_seen_movie_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE seen_movie ADD CONSTRAINT IDX_seen_movie_FK1 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

ALTER TABLE wish_moive ADD CONSTRAINT IDX_wish_moive_PK PRIMARY KEY (wish_no);
ALTER TABLE wish_moive ADD CONSTRAINT IDX_wish_moive_FK0 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);
ALTER TABLE wish_moive ADD CONSTRAINT IDX_wish_moive_FK1 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE rating ADD CONSTRAINT IDX_rating_PK PRIMARY KEY (rating_no);
ALTER TABLE rating ADD CONSTRAINT IDX_rating_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE rating ADD CONSTRAINT IDX_rating_FK1 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (review_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK2 FOREIGN KEY (rating_no) REFERENCES rating (rating_no);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (p_no);

ALTER TABLE buy ADD CONSTRAINT IDX_buy_PK PRIMARY KEY (buy_no);
ALTER TABLE buy ADD CONSTRAINT IDX_buy_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE buy ADD CONSTRAINT IDX_buy_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE multiplex ADD CONSTRAINT IDX_multiplex_PK PRIMARY KEY (mp_no);

ALTER TABLE movie_schedule ADD CONSTRAINT IDX_movie_schedule_PK PRIMARY KEY (ms_no);
ALTER TABLE movie_schedule ADD CONSTRAINT IDX_movie_schedule_FK0 FOREIGN KEY (mp_no) REFERENCES multiplex (mp_no);
ALTER TABLE movie_schedule ADD CONSTRAINT IDX_movie_schedule_FK1 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

ALTER TABLE book ADD CONSTRAINT IDX_book_PK PRIMARY KEY (book_no);
ALTER TABLE book ADD CONSTRAINT IDX_book_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE book ADD CONSTRAINT IDX_book_FK1 FOREIGN KEY (ms_no) REFERENCES movie_schedule (ms_no);

ALTER TABLE event ADD CONSTRAINT IDX_event_PK PRIMARY KEY (event_no);
ALTER TABLE event ADD CONSTRAINT IDX_event_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);


INSERT INTO movie_schedule (ms_no, ms_date, ms_time, mp_no, movie_no) VALUES (ms_no, ms_date, ms_time, mp_no, movie_no);
