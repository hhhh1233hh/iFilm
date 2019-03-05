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

@WebServlet("/ChargeServlet")
public class ChargeServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid = (String) session.getAttribute("userid");
		String sql="select balance from user where userid="+userid;
		
		double balance=Double.parseDouble(BaseDao.findOneString(sql, null));//��ѯ���
		
		double charge_price=Double.parseDouble(request.getParameter("money"));//��ó�ֵ���
		balance+=charge_price;
		

		String sql1 ="update user set balance="+balance+ "where userid="+userid;//�������
		BaseDao.updateSql(sql1);
		
		String sql2 ="INSERT INTO `bill` ( `userid`, `type`, `price`, `time`) VALUES"
				+ " ( ?, ?, ? ,?);"; 
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
		String time=df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
		String price=String.valueOf(charge_price);
		BaseDao.updateSql(sql2,userid,"��ͨ��ֵ",price,time);//�����˵���Ϣ
		
		request.getRequestDispatcher("UserServlet").forward(request, response);
	}
}
