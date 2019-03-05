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
@WebServlet("/PiaoFangAllServlet")
public class PiaoFangAllServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String temp=request.getParameter("pagenum");
		int currnum=1;//��ҳ
		if(temp!=null)currnum=Integer.parseInt(temp);//��ҳ
		int currposition=(currnum-1)*30;
		int nextposition=currposition+30;//1ҳչʾ30��

		//Ʊ����
		String findsql2 ="select movieid,moviename,link,box from boxes;";		
		List<Map<String, Object>> list2= BaseDao.findList(findsql2, null);
		
		Collections.sort(list2, new BoxCompares());//��һ������������list���͵�
		
		List<Map<String, Object>> list3= new ArrayList<Map<String, Object>>();
		int sum=list2.size();
		if(nextposition>sum){
			nextposition=sum;
		}
		list3=list2.subList(currposition, nextposition); 		
		
//		for(Map<String,Object> m:list2){    //ȡlist���������һ��Map����
//			    System.out.println(m.get("movieid"));
//			    System.out.println(m.get("moviename"));//����key�������value
//                System.out.println(m.get("box"));//����key�������value               
//                System.out.println(m.get("link"));//����key�������value
//         
//        }
		
		request.setAttribute("movies_box",list3);
		request.getRequestDispatcher("piaofangall.jsp?pagenum="+currnum+"&pagename=PiaoFangAll").forward(request, response);
	}
}
