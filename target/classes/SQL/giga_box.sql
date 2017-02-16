/**********************************/
/* 모든 테이블 초기화
/**********************************/
DROP TABLE BOOK;
DROP TABLE BUY;
DROP TABLE EVENT;
DROP TABLE MEMBER;
DROP TABLE MOVIE;
DROP TABLE MOVIESCHEDULE;
DROP TABLE MULTIPLEX;
DROP TABLE PRODUCT;
DROP TABLE RATING;
DROP TABLE REVIEW;
DROP TABLE SEEN_MOVIE;
DROP TABLE STILLCUT;
DROP TABLE WISH_MOVIE;


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

/**********************************/
/* Table Name: 스틸컷 */
/**********************************/
CREATE TABLE stillcut(
		s_no                          		NUMBER(10)		 NULL ,
		s_image                       		VARCHAR2(300)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

/**********************************/
/* Table Name: 본영화 */
/**********************************/
CREATE TABLE seen_movie(
		seen_no                       		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

/**********************************/
/* Table Name: 찜하기 */
/**********************************/
CREATE TABLE wish_moive(
		movie_no                      		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		wish_no                       		NUMBER(10)		 NULL 
);

/**********************************/
/* Table Name: 평점 */
/**********************************/
CREATE TABLE rating(
		rating_no                     		NUMBER(20)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		rating_score                  		NUMBER(10)		 NULL 
);

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

/**********************************/
/* Table Name: 상품 */
/**********************************/
CREATE TABLE product(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(50)		 NULL ,
		p_price                       		NUMBER(10)		 NULL ,
		p_desc                        		VARCHAR2(500)		 NULL 
);

/**********************************/
/* Table Name: 구매 */
/**********************************/
CREATE TABLE buy(
		buy_no                        		NUMBER(10)		 NULL ,
		buy_date                      		DATE		 NULL ,
		buy_count                     		NUMBER(10)		 NULL ,
		buy_tot                       		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

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

/**********************************/
/* Table Name: 영화예약 */
/**********************************/
CREATE TABLE book(
		book_no                       		NUMBER(10)		 NULL ,
		book_date                     		DATE		 NULL ,
		book_seat_count               		NUMBER(10)		 NULL ,
		book_seat_no                  		VARCHAR2(100)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		mp_no                         		NUMBER(10)		 NULL 
);

/**********************************/
/* Table Name: 상영 정보 */
/**********************************/
CREATE TABLE movie_schedule(
		ms_no                         		NUMBER(10)		 NULL ,
		ms_date                       		DATE		 NULL ,
		ms_time                       		DATE		 NULL ,
		mp_no                         		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

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


/**********************************/
/* PK FK 설정 */
/**********************************/
ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (m_id);

ALTER TABLE movie ADD CONSTRAINT IDX_movie_PK PRIMARY KEY (movie_no);

ALTER TABLE stillcut ADD CONSTRAINT IDX_stillcut_FK0 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

ALTER TABLE seen_movie ADD CONSTRAINT IDX_seen_movie_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE seen_movie ADD CONSTRAINT IDX_seen_movie_FK1 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

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

ALTER TABLE book ADD CONSTRAINT IDX_book_PK PRIMARY KEY (book_no);
ALTER TABLE book ADD CONSTRAINT IDX_book_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);
ALTER TABLE book ADD CONSTRAINT IDX_book_FK1 FOREIGN KEY (mp_no) REFERENCES multiplex (mp_no);

ALTER TABLE movie_schedule ADD CONSTRAINT IDX_movie_schedule_FK0 FOREIGN KEY (mp_no) REFERENCES multiplex (mp_no);
ALTER TABLE movie_schedule ADD CONSTRAINT IDX_movie_schedule_FK1 FOREIGN KEY (movie_no) REFERENCES movie (movie_no);

ALTER TABLE event ADD CONSTRAINT IDX_event_PK PRIMARY KEY (event_no);
ALTER TABLE event ADD CONSTRAINT IDX_event_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);

