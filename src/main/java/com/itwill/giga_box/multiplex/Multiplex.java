package com.itwill.giga_box.multiplex;

import java.util.List;

import com.itwill.giga_box.movie_schedule.Movie_schedule;

//상영관
public class Multiplex {
	private int mp_no; //상영관 번호
	private String mp_name; //상영관 이름
	private String mp_type; //상영관 좌석 타입
	private String mp_city; //상영관 지역
	private String mp_cinema; //상영관의 영화관 지역
	private int mp_seats; //상영관 좌석수
	private int movie_no; // 영화번호 추가!
	
	public int getMovie_no() {
		return movie_no;
	}




	public Multiplex(int mp_no, String mp_name, String mp_type, String mp_city, String mp_cinema, int mp_seats,
			int movie_no, List<Movie_schedule> mp_ms) {
		super();
		this.mp_no = mp_no;
		this.mp_name = mp_name;
		this.mp_type = mp_type;
		this.mp_city = mp_city;
		this.mp_cinema = mp_cinema;
		this.mp_seats = mp_seats;
		this.movie_no = movie_no;
		this.mp_ms = mp_ms;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}





	private List<Movie_schedule> mp_ms;
	
	public Multiplex() {
	}
	
	






	public List<Movie_schedule> getMp_ms() {
		return mp_ms;
	}





	public void setMp_ms(List<Movie_schedule> mp_ms) {
		this.mp_ms = mp_ms;
	}





	public int getMp_no() {
		return mp_no;
	}

	public void setMp_no(int mp_no) {
		this.mp_no = mp_no;
	}

	public String getMp_name() {
		return mp_name;
	}

	public void setMp_name(String mp_name) {
		this.mp_name = mp_name;
	}

	public String getMp_type() {
		return mp_type;
	}

	public void setMp_type(String mp_type) {
		this.mp_type = mp_type;
	}

	public String getMp_city() {
		return mp_city;
	}

	public void setMp_city(String mp_city) {
		this.mp_city = mp_city;
	}

	public String getMp_cinema() {
		return mp_cinema;
	}

	public void setMp_cinema(String mp_cinema) {
		this.mp_cinema = mp_cinema;
	}

	public int getMp_seats() {
		return mp_seats;
	}

	public void setMp_seats(int mp_seats) {
		this.mp_seats = mp_seats;
	}





	@Override
	public String toString() {
		return "Multiplex [mp_no=" + mp_no + ", mp_name=" + mp_name + ", mp_type=" + mp_type + ", mp_city=" + mp_city
				+ ", mp_cinema=" + mp_cinema + ", mp_seats=" + mp_seats + ", movie_no=" + movie_no + ", mp_ms=" + mp_ms
				+ "]";
	}





	


}
