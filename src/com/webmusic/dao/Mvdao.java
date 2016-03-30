package com.webmusic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webmusic.db.DBUtil;
import com.webmusic.model.Mv;
import com.webmusic.model.Mv;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月25日 上午11:45:56  
 */
public class Mvdao {

	public void addMv(Mv m) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="insert into mv" +
				"(mvname,mvsrc,player,album,colletpoint,playcount,uploadtime,img,other)" +
				"values(" +
				"?,?,?,?,?,?,?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, m.getMvname());
		ptmt.setString(2, m.getMvsrc());
		ptmt.setString(3, m.getPlayer());
		ptmt.setString(4, m.getAlbum());
		ptmt.setInt(5, 0);
		ptmt.setInt(6, 0);
		ptmt.setDate(7, m.getUploadtime());
        ptmt.setString(8, m.getImg());
		ptmt.setString(9, m.getOther());
		ptmt.execute();
		
		
	}
	
	
	public List<Mv> latetyMv() throws Exception{
		List<Mv> result=new ArrayList<Mv>();
		
		Connection conn=DBUtil.getConnection();
		StringBuilder sb=new StringBuilder();
		sb.append("select * from mv order by uploadtime  ");	
		PreparedStatement ptmt=conn.prepareStatement(sb.toString());
		ResultSet rs=ptmt.executeQuery();
		
		Mv m=null;
		while(rs.next()){
			m=new Mv();
			m.setMvid(rs.getInt("mvid"));
			m.setMvname(rs.getString("mvname"));
			m.setMvsrc(rs.getString("mvsrc"));
			m.setPlayer(rs.getString("player"));
			m.setAlbum(rs.getString("album"));
			m.setColletpoint(rs.getInt("colletpoint"));
			m.setPlaycount(rs.getInt("playcount"));
			m.setUploadtime(rs.getDate("uploadtime"));
		    m.setImg(rs.getString("img"));
			m.setOther(rs.getString("other"));

			result.add(m);
		}
		return result;
	}
	
	
	public Mv getMv(Integer id) throws SQLException{
		Mv m=null;
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from mv " +
				" where mvid=? ";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		
		ptmt.setInt(1, id);
		ResultSet rs=ptmt.executeQuery();
		while(rs.next()){
			m=new Mv();
			m.setMvid(rs.getInt("Mvid"));
			m.setMvname(rs.getString("Mvname"));
			m.setMvsrc(rs.getString("Mvsrc"));
			m.setPlayer(rs.getString("player"));
			m.setAlbum(rs.getString("album"));
			m.setColletpoint(rs.getInt("colletpoint"));
			m.setPlaycount(rs.getInt("playcount"));
			m.setUploadtime(rs.getDate("uploadtime"));
			m.setImg(rs.getString("img"));
		    m.setOther(rs.getString("other"));
		}
		return m;
	}
}
