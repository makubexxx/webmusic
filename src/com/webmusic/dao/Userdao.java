package com.webmusic.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.webmusic.db.DBUtil;
import com.webmusic.model.User;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月3日 下午5:52:16  
 */
public class Userdao {

	
	
	public void addUser(User u) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="insert into user" +
				"(email,username,userpwd,createtime,usertype)" +
				"values(" +
				"?,?,?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, u.getEmail());
		ptmt.setString(2, u.getUsername());
		ptmt.setString(3, u.getPassword());
		ptmt.setDate(4, u.getRegister_date());
		ptmt.setInt(5, u.getUsertype());
		ptmt.execute();
		
		
	}
	
	public User findUser(String email) throws Exception
	{
		User user =null;
		Connection conn=DBUtil.getConnection();
		String sql=" select * from user  where email=? ";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		
		ptmt.setString(1, email);
		ptmt.execute();
		
		ResultSet rs=ptmt.executeQuery();
		while(rs.next()){
			user=new User();
			user.setUserid(rs.getInt("userid"));
			user.setEmail(rs.getString("email"));
			user.setUsername(rs.getString("username"));
			user.setRegister_date(rs.getDate("createtime"));
			user.setPassword(rs.getString("userpwd"));
			user.setUsertype(rs.getInt("usertype"));
	
		}
		return user;
		
		
		
		
	}
	
}
