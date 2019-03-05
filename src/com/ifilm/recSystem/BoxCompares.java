package com.ifilm.recSystem;

import java.util.Comparator;
import java.util.List;
import java.util.Map;

import com.ifilm.model.RecScore;

public  class BoxCompares implements Comparator<Map<String,Object>>{

	public int compare(Map<String,Object> m1, Map<String,Object> m2) {
		
		long s1=(long) m1.get("box");
		long s2=(long) m2.get("box");

		if (s1>s2){
			return -1;
		}
		if (s1<s2){
			return 1;
		}
		
		return 0;
	}
}
