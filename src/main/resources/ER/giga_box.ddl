/**********************************/
/* Table Name: ȸ�� */
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

COMMENT ON TABLE member is 'ȸ��';
COMMENT ON COLUMN member.m_no is 'ȸ����ȣ';
COMMENT ON COLUMN member.m_id is '���̵�';
COMMENT ON COLUMN member.m_pw is '��й�ȣ';
COMMENT ON COLUMN member.m_name is 'ȸ���̸�';
COMMENT ON COLUMN member.m_gender is '����';
COMMENT ON COLUMN member.m_birth is '�������';
COMMENT ON COLUMN member.m_zipcode is '�����ȣ';
COMMENT ON COLUMN member.m_addr is '�ּ�';
COMMENT ON COLUMN member.m_email is '�̸���';
COMMENT ON COLUMN member.m_phone is '����ó';
COMMENT ON COLUMN member.m_img is '�����ʻ���';
COMMENT ON COLUMN member.m_grade is '���� ���';
COMMENT ON COLUMN member.m_point is '����Ʈ';


/**********************************/
/* Table Name: ��ȭ */
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

COMMENT ON TABLE movie is '��ȭ';
COMMENT ON COLUMN movie.movie_no is '��ȭ��ȣ';
COMMENT ON COLUMN movie.movie_name is '��ȭ����';
COMMENT ON COLUMN movie.movie_date is '��ȭ ������';
COMMENT ON COLUMN movie.movie_time is '��ȭ �󿵽ð�';
COMMENT ON COLUMN movie.movie_rate is '�����հ�';
COMMENT ON COLUMN movie.movie_people is '���� �����ο�';
COMMENT ON COLUMN movie.movie_director is '��ȭ ����';
COMMENT ON COLUMN movie.movie_actor is '�⿬��';
COMMENT ON COLUMN movie.movie_summary is '�ٰŸ�';
COMMENT ON COLUMN movie.movie_trailer is 'Ʈ���Ϸ�';


/**********************************/
/* Table Name: ��ƿ�� */
/**********************************/
CREATE TABLE stillcut(
		s_no                          		NUMBER(10)		 NULL ,
		s_thumb                       		VARCHAR2(2)		 NULL ,
		s_image                       		VARCHAR2(300)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE stillcut is '��ƿ��';
COMMENT ON COLUMN stillcut.s_no is '��ƿ�ƹ�ȣ';
COMMENT ON COLUMN stillcut.s_thumb is '�����';
COMMENT ON COLUMN stillcut.s_image is '�̹������';
COMMENT ON COLUMN stillcut.movie_no is '��ȭ��ȣ';


/**********************************/
/* Table Name: ����ȭ */
/**********************************/
CREATE TABLE seen_movie(
		seen_no                       		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE seen_movie is '����ȭ';
COMMENT ON COLUMN seen_movie.seen_no is '����ȭ ��ȣ';
COMMENT ON COLUMN seen_movie.m_id is '���̵�';
COMMENT ON COLUMN seen_movie.movie_no is '��ȭ��ȣ';


/**********************************/
/* Table Name: ���ϱ� */
/**********************************/
CREATE TABLE wish_moive(
		wish_no                       		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

COMMENT ON TABLE wish_moive is '���ϱ�';
COMMENT ON COLUMN wish_moive.wish_no is '���ϱ� ������ȣ';
COMMENT ON COLUMN wish_moive.movie_no is '��ȭ��ȣ';
COMMENT ON COLUMN wish_moive.m_id is '���̵�';


/**********************************/
/* Table Name: ���� */
/**********************************/
CREATE TABLE rating(
		rating_no                     		NUMBER(20)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		rating_score                  		NUMBER(10)		 NULL 
);

COMMENT ON TABLE rating is '����';
COMMENT ON COLUMN rating.rating_no is '���� ��ȣ';
COMMENT ON COLUMN rating.m_id is '���̵�';
COMMENT ON COLUMN rating.movie_no is '��ȭ��ȣ';
COMMENT ON COLUMN rating.rating_score is '����';


/**********************************/
/* Table Name: ���� */
/**********************************/
CREATE TABLE review(
		review_no                     		NUMBER(10)		 NULL ,
		review_content                		VARCHAR2(300)		 NULL ,
		review_hit                    		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		rating_no                     		NUMBER(20)		 NULL 
);

COMMENT ON TABLE review is '����';
COMMENT ON COLUMN review.review_no is '�����ȣ';
COMMENT ON COLUMN review.review_content is '���� ������';
COMMENT ON COLUMN review.review_hit is '��õ��';
COMMENT ON COLUMN review.movie_no is '��ȭ��ȣ';
COMMENT ON COLUMN review.m_id is '���̵�';
COMMENT ON COLUMN review.rating_no is '���� ��ȣ';


/**********************************/
/* Table Name: ��ǰ */
/**********************************/
CREATE TABLE product(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(50)		 NULL ,
		p_price                       		NUMBER(10)		 NULL ,
		p_desc                        		VARCHAR2(500)		 NULL 
);

COMMENT ON TABLE product is '��ǰ';
COMMENT ON COLUMN product.p_no is '��ǰ��ȣ';
COMMENT ON COLUMN product.p_name is '��ǰ��';
COMMENT ON COLUMN product.p_price is '��ǰ ����';
COMMENT ON COLUMN product.p_desc is '��ǰ����';


/**********************************/
/* Table Name: ���� */
/**********************************/
CREATE TABLE buy(
		buy_no                        		NUMBER(10)		 NULL ,
		buy_date                      		DATE		 NULL ,
		buy_count                     		NUMBER(10)		 NULL ,
		buy_point                     		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

COMMENT ON TABLE buy is '����';
COMMENT ON COLUMN buy.buy_no is '���Ź�ȣ';
COMMENT ON COLUMN buy.buy_date is '���ų�¥';
COMMENT ON COLUMN buy.buy_count is '���ż���';
COMMENT ON COLUMN buy.buy_point is '����Ʈ�����ݾ�';
COMMENT ON COLUMN buy.m_id is '���̵�';
COMMENT ON COLUMN buy.p_no is '��ǰ��ȣ';


/**********************************/
/* Table Name: �󿵰� */
/**********************************/
CREATE TABLE multiplex(
		mp_no                         		NUMBER(10)		 NULL ,
		mp_name                       		VARCHAR2(30)		 NULL ,
		mp_type                       		VARCHAR2(10)		 NULL ,
		mp_city                       		VARCHAR2(20)		 NULL ,
		mp_cinema                     		VARCHAR2(20)		 NULL ,
		mp_seats                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE multiplex is '�󿵰�';
COMMENT ON COLUMN multiplex.mp_no is '�󿵰���ȣ';
COMMENT ON COLUMN multiplex.mp_name is '�󿵰� �̸�';
COMMENT ON COLUMN multiplex.mp_type is '�󿵰� �¼�Ÿ��';
COMMENT ON COLUMN multiplex.mp_city is '�󿵰� ����';
COMMENT ON COLUMN multiplex.mp_cinema is '�󿵰��� ��ȭ�� ����';
COMMENT ON COLUMN multiplex.mp_seats is '�󿵰� �¼���';


/**********************************/
/* Table Name: �� ���� */
/**********************************/
CREATE TABLE movie_schedule(
		ms_no                         		NUMBER(10)		 NULL ,
		ms_date                       		VARCHAR2(10)		 NULL ,
		ms_time                       		VARCHAR2(10)		 NULL ,
		mp_no                         		NUMBER(10)		 NULL ,
		movie_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE movie_schedule is '�� ����';
COMMENT ON COLUMN movie_schedule.ms_no is '�� ��ȣ';
COMMENT ON COLUMN movie_schedule.ms_date is '����';
COMMENT ON COLUMN movie_schedule.ms_time is '�󿵽ð�';
COMMENT ON COLUMN movie_schedule.mp_no is '�󿵰���ȣ';
COMMENT ON COLUMN movie_schedule.movie_no is '��ȭ��ȣ';


/**********************************/
/* Table Name: ��ȭ���� */
/**********************************/
CREATE TABLE book(
		book_no                       		NUMBER(10)		 NULL ,
		book_date                     		DATE		 NULL ,
		book_seat_count               		NUMBER(10)		 NULL ,
		book_seat_no                  		VARCHAR2(100)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		ms_no                         		NUMBER(10)		 NULL 
);

COMMENT ON TABLE book is '��ȭ����';
COMMENT ON COLUMN book.book_no is '���� ��ȣ';
COMMENT ON COLUMN book.book_date is '�����ѳ�¥';
COMMENT ON COLUMN book.book_seat_count is '�¼���';
COMMENT ON COLUMN book.book_seat_no is '�¼���ȣ';
COMMENT ON COLUMN book.m_id is '���̵�';
COMMENT ON COLUMN book.ms_no is '�󿵹�ȣ';


/**********************************/
/* Table Name: �̺�Ʈ */
/**********************************/
CREATE TABLE event(
		event_no                      		NUMBER(10)		 NULL ,
		event_name                    		VARCHAR2(50)		 NULL ,
		event_path                    		VARCHAR2(300)		 NULL ,
		event_date                    		VARCHAR2(100)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

COMMENT ON TABLE event is '�̺�Ʈ';
COMMENT ON COLUMN event.event_no is '�̺�Ʈ��ȣ';
COMMENT ON COLUMN event.event_name is '�̺�Ʈ��';
COMMENT ON COLUMN event.event_path is '�̺�Ʈ���';
COMMENT ON COLUMN event.event_date is '�̺�Ʈ�Ⱓ';
COMMENT ON COLUMN event.m_id is '���̵�';



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
