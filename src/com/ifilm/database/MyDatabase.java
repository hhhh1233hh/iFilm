package com.ifilm.database;

import com.ifilm.model.User;


public interface MyDatabase {
	public User userLogin(String username,String password) throws Exception;
	
	public User userRegister(User user) throws Exception;
}
