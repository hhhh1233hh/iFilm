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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String password =request.getParameter("password");
		String sql="select password from user where userid="+userid;
		String aim=BaseDao.findOneString(sql);
		
		String sql1="select username from user where userid="+userid;
		String username=BaseDao.findOneString(sql1);
		
		
		HttpSession session=request.getSession();
		session.setAttribute("username", username);
		request.setAttribute("userid", userid);
		
		System.out.println(request.getParameter(username));
		
		if(aim!=null&&aim.equals(password))
			request.getRequestDispatcher("recommend.jsp").forward(request, response);
		else
			response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
