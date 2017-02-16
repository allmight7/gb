package com.itwill.giga_box.movie_schedule;

import java.sql.Date;
//상영정보 
public class Movie_schedule {
	private int ms_no; //상영 번호
	private String ms_date; //상영일
	private String ms_time; //상영시간
	private int mp_no; //상영관 번호
	private int movie_no; //영화 번호
	
	public Movie_schedule() {
	}
	
	

	public Movie_schedule(int ms_no, String ms_date, String ms_time, int mp_no, int movie_no) {
		super();
		this.ms_no = ms_no;
		this.ms_date = ms_date;
		this.ms_time = ms_time;
		this.mp_no = mp_no;
		this.movie_no = movie_no;
	}



	public int getMs_no() {
		return ms_no;
	}

	public void setMs_no(int ms_no) {
		this.ms_no = ms_no;
	}

	public String getMs_date() {
		return ms_date;
	}

	public void setMs_date(String ms_date) {
		this.ms_date = ms_date;
	}

	public String getMs_time() {
		return ms_time;
	}

	public void setMs_time(String ms_time) {
		this.ms_time = ms_time;
	}

	public int getMp_no() {
		return mp_no;
	}

	public void setMp_no(int mp_no) {
		this.mp_no = mp_no;
	}

	public int getMovie_no() {
		return movie_no;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}



	@Override
	public String toString() {
		return "Movie_schedule [ms_no=" + ms_no + ", ms_date=" + ms_date + ", ms_time=" + ms_time + ", mp_no=" + mp_no
				+ ", movie_no=" + movie_no + "]";
	}
	
	
	
	
}
