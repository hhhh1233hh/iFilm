package com.ifilm.model;


public class RecScore {
	public String movieid;
	public double score;
	public String userid;
	public double moviescore;
	public String moviename;
	public int year;
	
	public RecScore(String movieid,double score,String userid,double moviescore,String moviename,int year){
		this.movieid=movieid;
		this.score=score;
		this.userid=userid;
		this.moviescore=moviescore;
		this.moviename=moviename;
		this.year=year;
	}


}
