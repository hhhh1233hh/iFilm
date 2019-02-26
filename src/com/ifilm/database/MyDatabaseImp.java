package com.ifilm.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ifilm.model.User;
import com.sun.xml.internal.bind.v2.model.core.ID;


public class MyDatabaseImp implements MyDatabase{
	public static int id =1;
	//连接数据库要使用的量
		private String dbUrl="jdbc:mysql://localhost:3306/scraping?characterEncoding=utf8";
		private String name="root";//写上登陆数据库系统的用户名（安装数据库时候设置的用户名）
		private String password="xjtuse";//写上登陆数据库系统的密码
		private String jdbcName="com.mysql.jdbc.Driver";//数据库驱动
		//公共的连接数据库方法
		public Connection getCon()throws Exception{
			Class.forName(jdbcName);
			Connection con = DriverManager.getConnection(dbUrl,name,password);
			return con;
		}
		//关闭数据库
		public void closeCon(Connection con)throws Exception{
			if(con!=null)
			{
				con.close();
			}
		}
		

	@Override
	public User userLogin(String username, String password) throws Exception {
		System.out.println("===========login============");
		User user = new User();
		Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/scraping?characterEncoding=utf8";
        Connection connection = DriverManager.getConnection(url, "root", "xjtuse");
        Statement statement = connection.createStatement();

        // 查询
        String sql = "select name,password from users where name='"+username+"' and password='"+password+"'";
        ResultSet resultSet = statement.executeQuery(sql);
        // 处理结果集
        while (resultSet.next()) {
            // 可以直接填字段名称
            user.name = resultSet.getString("name");
            user.password = resultSet.getString("password");
        }
        resultSet.close();
        statement.close();
        connection.close();
		return user;
	}
	
	@Override
	public User userRegister(User user) throws Exception {
		System.out.println("======registing======="+user.toString());
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/scraping?characterEncoding=utf8";
        Connection connection = DriverManager.getConnection(url, "root", "xjtuse");

        Statement statement = connection.createStatement();
        String sql = "insert into users values('"+String.valueOf(id)+"','"+user.name+"','"+user.password+"','"+user.gender+"','"+user.birth+"','0','"+user.email+"')";
        int row = statement.executeUpdate(sql);
        statement.close();
        connection.close();
        id=id+1;
        System.out.println("sql:"+sql);
		return null;
	}
	
	

}
