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
@WebServlet("/MoviePointServlet")
public class MoviePointServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		//���ְ�
		String findsql1 ="select movieid,link, moviename,credit from movie;";		
		List<Map<String, Object>> list1= BaseDao.findList(findsql1, null);
		Collections.sort(list1, new CreditCompares());//��һ������������list���͵�
		List<Map<String, Object>> movielist1 = new ArrayList<Map<String, Object>>();
		movielist1=list1.subList(92, 102); 		
//		for(Map<String,Object> m:movielist1){    //ȡlist���������һ��Map����
//			    System.out.println(m.get("movieid"));
//                System.out.println(m.get("link"));//����key�������value
//                System.out.println(m.get("moviename"));//����key�������value
//                System.out.println(m.get("credit"));//����key�������value
//         
//        }
		
		//Ʊ����
		String findsql2 ="select movieid,moviename,link,box from boxes;";		
		List<Map<String, Object>> list2= BaseDao.findList(findsql2, null);
		Collections.sort(list2, new BoxCompares());//��һ������������list���͵�
		List<Map<String, Object>> movielist2 = new ArrayList<Map<String, Object>>();
		movielist2=list2.subList(0, 10); 		
//		for(Map<String,Object> m:movielist2){    //ȡlist���������һ��Map����
//			    System.out.println(m.get("movieid"));
//			    System.out.println(m.get("moviename"));//����key�������value
//                System.out.println(m.get("box"));//����key�������value               
//                System.out.println(m.get("link"));//����key�������value
//         
//        }
//		

		//�²۰�
		List<Map<String, Object>> list3= BaseDao.findList(findsql1, null);
		Collections.sort(list3, new TCCompares());//��һ������������list���͵�
		List<Map<String, Object>> movielist3 = new ArrayList<Map<String, Object>>();		
		for(Map<String,Object> m:list3){    //ȡlist���������һ��Map����
			if(m.get("credit").equals("")){
				continue;
			}
			movielist3.add(m);     
		}
		List<Map<String, Object>> movielist4 = new ArrayList<Map<String, Object>>();		
		movielist4=movielist3.subList(0, 10); 
//		for(Map<String,Object> m:movielist4){    //ȡlist���������һ��Map����
//			    System.out.println(m.get("movieid"));
//			    System.out.println(m.get("moviename"));//����key�������value
//                System.out.println(m.get("credit"));//����key�������value               
//                System.out.println(m.get("link"));//����key�������value
//         
//        }
//		
		request.setAttribute("movies_credit",movielist1);
		request.setAttribute("movies_box",movielist2);
		request.setAttribute("movies_tc",movielist4);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
