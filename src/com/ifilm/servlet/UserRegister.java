package com.ifilm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifilm.jdbc.BaseDao;
import com.ifilm.recSystem.SimpleRec;
import com.ifilm.jdbc.DaoUtil;
/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String interest[]=request.getParameterValues("tag");
		
		//处理兴趣选项
		int inter[]=new int[16];
		for(int i=0;i<inter.length;i++){
			inter[i]=0;
		}
		
		if(interest!=null){
			for(int j=0;j<interest.length;j++){
				inter[Integer.parseInt(interest[j])-1]=1;
			}
		}
		String usrinter="";
		for(int k=0;k<16;k++){
			usrinter=usrinter+String.valueOf(inter[k]);
		}
		System.out.println(usrinter);
		
		//判定必填项不为空
//		if(username!=null)
		
		//插入数据库
		String sql1 ="INSERT INTO `user` ( `username`, `interest`, `password`, `email`, `birth`, `gender`) VALUES"
				+ " ( ?, ?, ?, ?, ?, ?);"; 
		
		
		BaseDao.updateSql(sql1,username,usrinter,password,email,birth,gender);
		System.out.println("haha");
		String findsql ="select userid from user order by userid desc limit 1";
		String userid=BaseDao.findOneString(findsql);
		System.out.println(userid);
		
		//if (username=)
//		System.out.println("username: "+username);
//		System.out.println("gender: "+gender);
//		
		//User user = new User("", username, password, gender, birth, "0", email);
		
//		MyService ms = new MyServiceImp();
//		try {
//			
//			ms.userRegister(user);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		SimpleRec rec=new SimpleRec();
		rec.getTotalScore(userid);		//推荐算法
		
		request.setAttribute("userid",userid);
		request.getRequestDispatcher("register_success.jsp").forward(request, response);
		
	}
//	protected boolean (String info){
//		if(info==null){
//			
//		}
//	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
