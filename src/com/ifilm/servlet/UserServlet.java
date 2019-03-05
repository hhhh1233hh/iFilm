package com.ifilm.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ifilm.jdbc.BaseDao;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("userid");
		
		String sql="select * from user where userid="+id;//��ȡ�û���Ϣ
		Map<String,Object> ans=BaseDao.findOne(sql, null);
		
		String aim[]= new String []{"ϲ��","����","����","����","���","��ʷ","����","ð��","ս��","���","��ͥ","��װ","�ƻ�","����","����","����"};
		String temp=(String)ans.get("interest");
		String ints="";
		for(int i=0;i<temp.length();i++) {
			if(i==0) {
				switch(temp.charAt(i)) {
					case '0':break;
					case '1':ints+=aim[i];break;
				}
				continue;
			}
			switch(temp.charAt(i)) {
				case '0':break;
				case '1':ints+=(','+aim[i]);
			}
		}
		
		ans.remove("interet");
		ans.put("interest", ints);//����Ȥ��ǩת��Ϊ���ִ���
		
		//================================================
		//��ȡ������Ϣ
		String sql1="select * from bill where userid="+id;
		List<Map<String, Object>> orders=BaseDao.findList(sql1);	
		
		request.setAttribute("orders", orders);
		request.setAttribute("userinfo", ans);
		request.getRequestDispatcher("user.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
