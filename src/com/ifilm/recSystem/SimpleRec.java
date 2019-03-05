package com.ifilm.recSystem;

import java.util.ArrayList;
import java.util.Collections;
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
	
	public void getTotalScore(String userid) {
		String sql="select movieid,type,credit,moviename,year from movie where 1=1";
		List<Map<String, Object>> aim=BaseDao.findList(sql);	
		
		String taglist[]=getTagList(userid);
		
		
		List<RecScore> recscore=new ArrayList<RecScore>();
		double w=1.0/taglist.length; //均权

		for(int i=0;i<aim.size();i++) {
			double score=0.0;
			String [] temp;
			Map<String,String> tp=(Map)aim.get(i);		
			temp= tp.get("type").split(",");
			
			for(int j=0;j<taglist.length;j++) {
				for(int k=0;k<temp.length;k++) {
					if(temp[k].equals(taglist[j]))score+=w;
					else score+=0;
				}
			}
			String creditbefore=tp.get("credit");
			double credit=0.0;
			int year=Integer.parseInt(tp.get("year"));
			if(!creditbefore.equals(""))credit=Double.parseDouble(creditbefore);
			RecScore newitem=new RecScore( String.valueOf(tp.get("movieid")),score,userid,credit,tp.get("moviename"),year);
			recscore.add(newitem);
		}
		Collections.sort(recscore, new Compares());
		
		String sql1 ="INSERT INTO `user_movie` ( `userid`, `movieid`, `moviename`, `rec_score`) VALUES"
				+ " ( ?, ?, ?,?);"; 
		
		for(int i=0;i<200;i++) {
			BaseDao.updateSql(sql1,userid,recscore.get(i).movieid,recscore.get(i).moviename,String.valueOf(recscore.get(i).score));
			//System.out.println(recscore.get(i).score+"   "+recscore.get(i).movieid+"     "+i);
		}
	}
	
	public static void main(String[] args) {
		SimpleRec rec=new SimpleRec();
		rec.getTotalScore("1");		
	}
}
