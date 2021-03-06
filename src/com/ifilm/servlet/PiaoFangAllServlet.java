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
		int currnum=1;//翻页
		if(temp!=null)currnum=Integer.parseInt(temp);//翻页
		int currposition=(currnum-1)*30;
		int nextposition=currposition+30;//1页展示30条

		//票房榜
		String findsql2 ="select movieid,moviename,link,box from boxes;";		
		List<Map<String, Object>> list2= BaseDao.findList(findsql2, null);
		
		Collections.sort(list2, new BoxCompares());//第一个参数必须是list类型的
		
		List<Map<String, Object>> list3= new ArrayList<Map<String, Object>>();
		int sum=list2.size();
		if(nextposition>sum){
			nextposition=sum;
		}
		list3=list2.subList(currposition, nextposition); 		
		
//		for(Map<String,Object> m:list2){    //取list集合里的那一条Map集合
//			    System.out.println(m.get("movieid"));
//			    System.out.println(m.get("moviename"));//根据key迭代输出value
//                System.out.println(m.get("box"));//根据key迭代输出value               
//                System.out.println(m.get("link"));//根据key迭代输出value
//         
//        }
		
		request.setAttribute("movies_box",list3);
		request.getRequestDispatcher("piaofangall.jsp?pagenum="+currnum+"&pagename=PiaoFangAll").forward(request, response);
	}
}
