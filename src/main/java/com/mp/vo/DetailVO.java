package com.mp.vo;

import java.util.ArrayList;
import java.util.List;

public class DetailVO {
	private int num;
	private String title;
	private String director;
	private String actor;
	private String movietime;
	private String grade;
	private String contents;
	public List<DattachVO> dattach = new ArrayList<>();
	
	public DetailVO() {
	}

	public DetailVO(int num) {
		this.setNum(num);
	}

	@Override
	public String toString() {
		return num + " " + title + " " + director + " " + actor + " " + movietime + " "+  grade + " "+ contents+" ";
	}

	@Override
	public boolean equals(Object obj) {
		DetailVO other = (DetailVO) obj;
		return this.num == other.num;

	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getMovietime() {
		return movietime;
	}

	public void setMovietime(String movietime) {
		this.movietime = movietime;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	public List<DattachVO> getDattach() {
		return dattach;
	}
	


}