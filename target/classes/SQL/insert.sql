--movie
INSERT INTO movie (movie_no, movie_name, movie_date, movie_time, movie_rate, movie_people, movie_director, movie_actor, movie_summary, movie_trailer) 
VALUES (movie_no, movie_name, movie_date, movie_time, movie_rate, movie_people, movie_director, movie_actor, movie_summary, movie_trailer);

--stillcut
INSERT INTO stillcut (s_no, s_thumb, s_image, movie_no) 
VALUES (s_no, s_thumb, s_image, movie_no);