package com.ifilm.recSystem;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ifilm.jdbc.BaseDao;
import com.ifilm.model.RecScore;

public class SimpleRec {
	String[] getTagList(String userid) {
		String sql="select interest from user where userid="+userid;
		String aim=BaseDao.findOneString(sql);
		String ans[]= new String []{"喜剧","动作","爱情","犯罪","惊悚","历史","悬疑","冒险","战争","奇幻","家庭","古装","科幻","动画","歌舞","传记"};
		String movieList="";
		for(int i=0;i<16;i++) {
			if(i==0) {
				switch(aim.charAt(i)) {
					case '0':break;
					case '1':movieList+=ans[i];break;
				}
				continue;
			}
			switch(aim.charAt(i)) {
				case '0':break;
				case '1':movieList+=","+ans[i];break;
			}
		}
		String [] ans1=movieList.split(",");
		return ans1;
	}
	
	String[] getTotalScore(String userid) {
		String sql="select movieid,type from movie where 1=1";
		List aim=BaseDao.findList(sql);	
		List<RecScore> ans=new ArrayList();
		
		String taglist[]=getTagList(userid);
		
		int total=aim.size();
		
		double score[]=new double[total];
		double w=1.0/taglist.length; 
//		System.out.println(w+"hh");
//		System.out.println(taglist.length+"hh");
		
		for(int i=0;i<aim.size();i++) {
			Map<String,String> item;
			String [] temp;
			List<String>reclist = new ArrayList<>();
			Map<String,String> tp=(Map)aim.get(i);			
			temp= tp.get("type").split(",");
			
			for(int j=0;j<taglist.length;j++) {
				for(int k=0;k<temp.length;k++) {
					//if(temp[k].equals(taglist[j]))ans.get(i).get("score")+=w;
					//else score[i]+=0;
//					System.out.println(temp[k]);
//					System.out.println(taglist[j]);
//					System.out.println("\n");
				}
			}
			//if(i==1001)System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
			System.out.println(i+"->"+score[i]);
		}
		return null;
	}
	
	public static void main(String[] args) {
		SimpleRec rec=new SimpleRec();
		rec.getTotalScore("1");
	}
}
