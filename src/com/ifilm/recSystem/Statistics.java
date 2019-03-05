package com.ifilm.recSystem;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ifilm.jdbc.BaseDao;
import com.ifilm.model.RecScore;

public class Statistics {
	
	public void select(String year,String type) {
		String sql="select * from my"+year;
		List<Map<String, Object>> aim=BaseDao.findList(sql);	
		List<Map<String,Object>> credityear=new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> typeyear=new ArrayList<Map<String,Object>>();
		
		for(int i=0;i<aim.size();i++) {
			double score=0.0;
			String [] temp;
			Map<String,String> tp=(Map)aim.get(i);		
			temp= tp.get("type").split(",");	//标签数组		
			
			String creditbefore=tp.get("credit");
			double credit=0.0;
			if(!creditbefore.equals(""))credit=Double.parseDouble(creditbefore);
			
			for(String s:temp) {
				if(s.equals(type)){
					typeyear.add(aim.get(i));
					if(credit>=8)credityear.add(aim.get(i));
					continue;
				}
			}
		}
		//Collections.sort(credityear,new CreditCompares());		
		
		System.out.println(year+" "+type+":总数"+typeyear.size()+" 8分以上数量"+credityear.size());

		//for(int j=0;j<20;j++)System.out.println(credityear.get(j).get("moviename")+" "+credityear.get(j).get("credit"));
	}
	
	public static void main(String[] args) {
		String year[]= new String[]{"2019","2018","2017","2016","2015","2014","2013","2012","2011","2010_2000","90","80","70","60"};
		String type[]=new String []{"喜剧","动作","爱情","惊悚","悬疑","科幻"};
		Statistics s=new Statistics();
		for(String y:year) {
			for(String t:type) {
				s.select(y, t);
			}
		}
		
//		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
//		System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
//		String sql="select * from movie where year=2018";
//		List<Map<String, Object>> aim=BaseDao.findList(sql);	
//		
//		String tag[]= new String []{"喜剧","动作","爱情","犯罪","惊悚","历史","悬疑","冒险","战争","奇幻","家庭","古装","科幻","动画","歌舞","传记"};
//		int ans[]=new int[16];
//		
//		System.out.println(aim.size());
//		
//		List<Map<String,Object>> credityear=new ArrayList<Map<String,Object>>();
//		
//		for(int i=0;i<aim.size();i++) {
//			double score=0.0;
//			String [] temp;
//			Map<String,String> tp=(Map)aim.get(i);		
//			temp= tp.get("type").split(",");	//标签数组		
//			
//			String creditbefore=tp.get("credit");
//			double credit=0.0;
//			if(!creditbefore.equals(""))credit=Double.parseDouble(creditbefore);
//			
//			for(String s:temp) {
////				for(int j=0;j<tag.length;j++) {
//					if(s.equals("喜剧")){
//						
//						if(credit>=8)credityear.add(aim.get(i));
//						continue;
//					}
////				}
//			}
//		}
//		Collections.sort(credityear,new CreditCompares());
//		
//		for(int j=0;j<20;j++)System.out.println(credityear.get(j).get("moviename")+" "+credityear.get(j).get("credit"));
	}
}

