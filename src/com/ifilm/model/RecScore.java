package com.ifilm.model;


public class RecScore {
	public String movieid;
	public double score;
	public String userid;
	public double moviescore;
	public String moviename;
	
	public RecScore(String movieid,double score,String userid,double moviescore,String moviename){
		this.movieid=movieid;
		this.score=score;
		this.userid=userid;
		this.moviescore=moviescore;
		this.moviename=moviename;
	}


}
