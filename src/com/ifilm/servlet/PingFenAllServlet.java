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
@WebServlet("/PingFenAllServlet")
public class PingFenAllServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String temp=request.getParameter("pagenum");
		int currnum=1;//��ҳ
		if(temp!=null)currnum=Integer.parseInt(temp);//��ҳ
		int currposition=(currnum-1)*30;
		int nextposition=currposition+30;//1ҳչʾ30��
		
		//���ְ�
		String findsql1 ="select movieid,link, moviename,credit from movie;";		
		List<Map<String, Object>> list1= BaseDao.findList(findsql1, null);
		Collections.sort(list1, new CreditCompares());//��һ������������list���͵�
		List<Map<String, Object>> movielist1 = new ArrayList<Map<String, Object>>();
		int sum=list1.size();
		movielist1=list1.subList(92, sum); 		
		
		List<Map<String, Object>> list3= new ArrayList<Map<String, Object>>();
		int sum1=movielist1.size();
		if(nextposition>sum1){
			nextposition=sum1;
		}
		list3=movielist1.subList(currposition, nextposition); 		
//		for(Map<String,Object> m:movielist1){    //ȡlist���������һ��Map����
//			    System.out.println(m.get("movieid"));
//                System.out.println(m.get("link"));//����key�������value
//                System.out.println(m.get("moviename"));//����key�������value
//                System.out.println(m.get("credit"));//����key�������value
//         
//        }
		
		request.setAttribute("movies_credit",list3);
		request.getRequestDispatcher("pingfenall.jsp?pagenum="+currnum+"&pagename=PingFenAll").forward(request, response);
	}
}
