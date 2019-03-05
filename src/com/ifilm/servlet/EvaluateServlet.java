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
 * Servlet implementation class EvaluateServlet
 */
@WebServlet("/EvaluateServlet")
public class EvaluateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EvaluateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ans5=request.getParameter("stars-rating5");
		String ans4=request.getParameter("stars-rating4");
		String ans3=request.getParameter("stars-rating3");
		String ans2=request.getParameter("stars-rating2");
		String ans1=request.getParameter("stars-rating1");
		
		int index=0;
		if(ans5!=null)index=5;
		if(ans4!=null)index=4;
		if(ans3!=null)index=3;
		if(ans2!=null)index=2;
		if(ans1!=null)index=1;
		
		HttpSession session=request.getSession();
		String userid = (String) session.getAttribute("userid");
		String movieid=request.getParameter("thisid");
		System.out.println(movieid);
		
		if(userid!=null) {
			String sql1 ="INSERT INTO `user_evaluate` ( `userid`, `movieid`, `evaluate`) VALUES"
					+ " ( ?, ?, ?);"; 
			String evaluate=String.valueOf(2*index);
			BaseDao.updateSql(sql1,userid,movieid,evaluate);
			
		}
		request.getRequestDispatcher("SingleServlet?movieitem="+movieid).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
