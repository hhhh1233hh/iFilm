package com.ifilm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifilm.jdbc.BaseDao;
import com.ifilm.model.Movie;

@WebServlet("/RecommendServlet")
public class RecommendServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			String userid = request.getParameter("userid");
			String sql="select movieid from user_movie where userid="+1;
			List<Map<String, Object>> aim=BaseDao.findList(sql);	//ȡ���û����Ƽ�ӰƬ������id
			
			List<Map<String, Object>> ans=new ArrayList<Map<String, Object>>();//����Ƽ����
			
			for(int i=0;i<aim.size();i++) {
				Map<String,String> tp=(Map)aim.get(i);
				String movieid=String.valueOf(tp.get("movieid"));
				String sql1="select * from movie where movieid="+movieid;
				Map<String, Object> movieitem=BaseDao.findOne(sql1);//�ҵ�һ��ӰƬ��
				ans.add(movieitem);
			}
			
			request.setAttribute("recommend", ans);//�ϴ�list
			request.getRequestDispatcher("recommend.jsp").forward(request, response);
	}
}
