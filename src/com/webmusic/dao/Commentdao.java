package com.webmusic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.webmusic.db.DBUtil;
import com.webmusic.model.Comments;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月28日 上午9:21:34  
 */
public class Commentdao {

	
	public void addComment(Comments c) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="insert into comment" +
				"(fortype,enetityid,commentscontext,commentdate,username)" +
				"values(" +
				"?,?,?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setInt(1, c.getFortype());
		ptmt.setInt(2, c.getEnetityid());
		ptmt.setString(3, c.getCommentscontext());
		ptmt.setDate(4, c.getCommentsdate());
		ptmt.setString(5, c.getUsername());
		ptmt.execute();
		
		
	}
	
	public List<Comments> commentlist(Integer type ,Integer enetityid) throws Exception{
		List<Comments> result=new ArrayList<Comments>();
		
		Connection conn=DBUtil.getConnection();
		StringBuilder sb=new StringBuilder();
		sb.append("select  * from comment where fortype=? and enetityid=?");	
		PreparedStatement ptmt=conn.prepareStatement(sb.toString());
		ptmt.setInt(1, type);
		ptmt.setInt(2, enetityid);
		ResultSet rs=ptmt.executeQuery();
		Comments c=null;
		while(rs.next()){
			c=new Comments();
			c.setEnetityid(rs.getInt("enetityid"));
			c.setCommentscontext(rs.getString("commentscontext"));
			c.setFortype(rs.getInt("fortype"));
			c.setCommentsdate(rs.getDate("commentdate"));
			c.setCommentsid(rs.getInt("commentsid"));
            c.setUsername(rs.getString("username"));
			result.add(c);
		}
		return result;
	}
	
}
