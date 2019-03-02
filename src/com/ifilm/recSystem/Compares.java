package com.ifilm.recSystem;

import java.util.Comparator;

import com.ifilm.model.RecScore;

public class Compares implements Comparator<RecScore>{

	public int compare(RecScore s1, RecScore s2) {
		if (s1.score>s2.score){
			return -1;
		}
		if (s1.score<s2.score){
			return 1;
		}
		if (s1.score==s2.score){
			if (s1.moviescore>s2.moviescore){
				return -1;
			}
			if (s1.moviescore<s2.moviescore){
				return 1;
			}
		}
		return 0;
	}
}
