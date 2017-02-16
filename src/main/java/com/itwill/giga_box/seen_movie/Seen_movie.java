package com.itwill.giga_box.seen_movie;

import com.itwill.giga_box.movie.Movie;

public class Seen_movie {
	private int seen_no; //본 영화 고유 번호
	private String m_id; //아이디
	private int movie_no; //영화번호
	
	private Movie movie;
	
	
	public Seen_movie() {
		// TODO Auto-generated constructor stub
	}

	
	public Seen_movie(int seen_no, String m_id, int movie_no) {
		super();
		this.seen_no = seen_no;
		this.m_id = m_id;
		this.movie_no = movie_no;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}


	public int getSeen_no() {
		return seen_no;
	}

	public void setSeen_no(int seen_no) {
		this.seen_no = seen_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getMovie_no() {
		return movie_no;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}




	@Override
	public String toString() {
		return "Seen_movie [seen_no=" + seen_no + ", m_id=" + m_id + ", movie_no=" + movie_no + "]";
	}
	
	
	
	
}
