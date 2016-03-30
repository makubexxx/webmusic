package com.webmusic.util;

import java.sql.Date;

import com.webmusic.dao.Userdao;
import com.webmusic.model.User;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月23日 上午11:31:47  
 */
public class test {

	
	public static void main(String[] args) throws Exception{
		
		Userdao  userdao =new Userdao();
	/*	User user =new User();
		user.setEmail("123");
		user.setPassword("1234");
		java.util.Date date =new java.util.Date();
		Date da =new Date(date.getTime());
		user.setRegister_date(da);
		user.setUsername("haha");
		
		userdao.addUser(user);*/
		User  user=userdao.findUser("123");
		System.out.println(user.getUsername());
		
	}
}
