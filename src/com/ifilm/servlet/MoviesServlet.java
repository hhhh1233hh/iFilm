package com.ifilm.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifilm.jdbc.BaseDao;


@WebServlet("/MoviesServlet")
public class MoviesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public MoviesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String temp=request.getParameter("pagenum");
		int currnum=1;//·­Ò³
		if(temp!=null)currnum=Integer.parseInt(temp);//·­Ò³
		int currposition=(currnum-1)*30;
		int nextposition=currposition+30;//1Ò³Õ¹Ê¾20Ìõ
		
		String sql="select * from movie where 1=1";
		List<Map<String,Object>> ans=BaseDao.findList(sql, null);
		
		List<Map<String,Object>> ans1=ans.subList(currposition, nextposition);
		
		request.setAttribute("allmovies", ans1);
		request.getRequestDispatcher("movies.jsp?pagenum="+currnum+"&pagename=Movies").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
