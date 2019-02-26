package com.ifilm.service;

import com.ifilm.model.User;


public interface MyService {
	public User userLogin(String username,	String password) throws Exception ;
	public User userRegister(User user) throws Exception ;
}
