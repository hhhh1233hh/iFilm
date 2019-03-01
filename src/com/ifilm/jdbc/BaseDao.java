package com.ifilm.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mysql.jdbc.StringUtils;


public class BaseDao {
	public static boolean updateSql(String sql ,String...strings ){
		Connection conn = null;
		PreparedStatement pstmt = null;
		//	ResultSet rs = null;
		conn = DaoUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			if(strings!=null){
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			int i = pstmt.executeUpdate();
			if(i>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DaoUtil.closeConnection(conn);
		}
		return false;
	}
	public static List<Map<String, Object>> findList(String sql ,String...strings ){
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DaoUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			if(strings!=null){
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(toEntity(rs));//解析结果集
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DaoUtil.closeConnection(conn);
		}
		return list;
	}
	public static Map<String, Object> findOne(String sql,String...strings) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DaoUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			if(strings!=null){
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				return toEntity(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DaoUtil.closeConnection(conn);
		}
		return null;
	}
	public static String findOneString(String sql,String...strings) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DaoUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			if(strings!=null){
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				return rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DaoUtil.closeConnection(conn);
		}
		return null;
	}
	
	
	private static Map<String, Object> toEntity(ResultSet rs) {
		Map<String, Object>map = new HashMap<String, Object>();
		try {
			ResultSetMetaData data = (ResultSetMetaData) rs.getMetaData();//获取 运行sql的查询字段
			for (int i = 1; i <= data.getColumnCount(); i++) {
				String columnName = data.getColumnName(i);
				map.put(columnName, rs.getObject(columnName));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public static void main(String[] args) {
		String sql1 ="insert into movies(name,credit,link,type,abstract,director,actor,year) (select name,credit,link,type,abstract,director,actor,year from my2010_2000) \r\n" + 
				";"; 
		updateSql(sql1);
	}
}
