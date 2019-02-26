package com.ifilm.service;

import com.ifilm.database.MyDatabase;
import com.ifilm.database.MyDatabaseImp;
import com.ifilm.model.User;


public class MyServiceImp implements MyService{

	@Override
	public User userRegister(User user) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("===========registing==service=========");
		MyDatabase mdb = new MyDatabaseImp();
		mdb.userRegister(user);
		return null;
	}

	@Override
	public User userLogin(String username,	String password) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("===========myserviceimp============");
		MyDatabase db = new MyDatabaseImp();
		User user = db.userLogin(username,password);
		return user;
	}

}
