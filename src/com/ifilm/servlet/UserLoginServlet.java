package com.ifilm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ifilm.jdbc.BaseDao;


/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/Login")
public class UserLoginServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String password =request.getParameter("password");
		String sql="select password from user where userid="+userid;
		String aim=BaseDao.findOneString(sql);
		
		String sql1="select username from user where userid="+userid;
		String username=BaseDao.findOneString(sql1);
		
		
		HttpSession session=request.getSession();
		
		
		if(aim!=null&&aim.equals(password)) {
			session.setAttribute("username", username);
			session.setAttribute("userid", userid);
			response.sendRedirect("index1.jsp");
		}
		else 
			response.sendRedirect("login.jsp");
	}

}
