package com.ifilm.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ifilm.jdbc.BaseDao;

@WebServlet("/VipServlet")
public class VipServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session=request.getSession();
		String userid = (String) session.getAttribute("userid");
		String sql="select balance from user where userid="+userid;
		
		double balance=Double.parseDouble(BaseDao.findOneString(sql, null));
		
		balance-=10.0;
		

		String sql1 ="update user set balance="+balance+ ",vip=1 where userid="+userid;
		BaseDao.updateSql(sql1);//��ȡ���
		
		String sql2 ="INSERT INTO bill ( userid, type, price, time) VALUES"
				+ " ( ?, ?, ? ,?);"; 
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
		String time=df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
		BaseDao.updateSql(sql2,userid,"������Ա�۳�","10",time);//�����˵���Ϣ
		
		request.getRequestDispatcher("UserServlet").forward(request, response);
	}

}
