package com.ifilm.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DaoUtil {
	private final static String DRIVER="com.mysql.jdbc.Driver";
	private final static String URL="jdbc:mysql://localhost:3306/hive_result?useUnicode=true&characterEncoding=UTF-8";
	private final static String ROOT="root";
	private final static String PASSWORD="root";
	
//	private final static String DRIVER="org.apache.hive.jdbc.HiveDriver";
//	private final static String URL="jdbc:hive2://192.168.27.131:10000/city";
//	private final static String ROOT="hyjmaster";
//	private final static String PASSWORD="hyj428523";
	
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName(DRIVER);//��������
			conn =  DriverManager.getConnection(URL, ROOT, PASSWORD);//��ȡ����
			//System.out.println("=====��ȡ���ӳɹ�=====");
		} catch (Exception e) {
			System.out.println("=====��ȡ����ʧ��=====");
			e.printStackTrace();
		}
		return conn;		
	}
	public static  void closeConnection(Connection conn){
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		Connection conn = getConnection();
		closeConnection(conn);
	}
}
