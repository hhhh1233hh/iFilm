package com.ifilm.recSystem;

import java.util.Comparator;
import java.util.List;
import java.util.Map;

import com.ifilm.model.RecScore;

public  class CreditCompares implements Comparator<Map<String,Object>>{

	public int compare(Map<String,Object> m1, Map<String,Object> m2) {
		String creditbefore1=(String)m1.get("credit");
		String creditbefore2=(String)m2.get("credit");
		if(creditbefore1.equals("")&&!creditbefore2.equals("")){
			return 1;
		}
		if(creditbefore2.equals("")&&!creditbefore1.equals("")){
			return -1;
		}
		if(creditbefore2.equals("")&&creditbefore1.equals("")){
			return 0;
		}
		Double s1=Double.parseDouble(creditbefore1);
		Double s2=Double.parseDouble(creditbefore2);

		if (s1>s2){
			return -1;
		}
		if (s1<s2){
			return 1;
		}
		
		return 0;
	}
}
