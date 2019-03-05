package com.ifilm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifilm.jdbc.BaseDao;
import com.ifilm.recSystem.BoxCompares;
import com.ifilm.recSystem.CreditCompares;
import com.ifilm.recSystem.TCCompares;

/**
 * Servlet implementation class MoviePointServlet1
 */
@WebServlet("/TuCaoAllServlet")
public class TuCaoAllServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String temp=request.getParameter("pagenum");
		int currnum=1;//��ҳ
		if(temp!=null)currnum=Integer.parseInt(temp);//��ҳ
		int currposition=(currnum-1)*30;
		int nextposition=currposition+30;//1ҳչʾ30��

		//�²۰�
		String findsql1 ="select movieid,link, moviename,credit from movie;";		
		List<Map<String, Object>> list3= BaseDao.findList(findsql1, null);
		Collections.sort(list3, new TCCompares());//��һ������������list���͵�
		List<Map<String, Object>> movielist3 = new ArrayList<Map<String, Object>>();		
		for(Map<String,Object> m:list3){    //ȡlist���������һ��Map����
			if(m.get("credit").equals("")){
				continue;
			}
			movielist3.add(m);     
		}
		
		List<Map<String, Object>> list4= new ArrayList<Map<String, Object>>();
		int sum=movielist3.size();
		if(nextposition>sum){
			nextposition=sum;
		}
		list4=movielist3.subList(currposition, nextposition); 		
//		for(Map<String,Object> m:movielist3){    //ȡlist���������һ��Map����
//			    System.out.println(m.get("movieid"));
//			    System.out.println(m.get("moviename"));//����key�������value
//                System.out.println(m.get("credit"));//����key�������value               
//                System.out.println(m.get("link"));//����key�������value
//         
//        }
		request.setAttribute("movies_tc",list4);
		request.getRequestDispatcher("tucaoall.jsp?pagenum="+currnum+"&pagename=TuCaoAll").forward(request, response);
	}
}
