package com.webmusic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.webmusic.db.DBUtil;
import com.webmusic.model.Song;


public class Songdao {

	
	public void addSong(Song s) throws Exception{
		Connection conn=DBUtil.getConnection();
		String sql="insert into song" +
				"(songname,songsrc,player,album,colletpoint,playcount,uploadtime,other,img)" +
				"values(" +
				"?,?,?,?,?,?,?,?,?)";
		System.out.println("save song:"+s.getSongname());
		System.out.println("other:"+s.getOther());
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, s.getSongname());
		ptmt.setString(2, s.getSongsrc());
		ptmt.setString(3, s.getPlayer());
		ptmt.setString(4, s.getAlbum());
		ptmt.setInt(5, 0);
		ptmt.setInt(6, 0);
		ptmt.setDate(7, s.getUploadtime());
		ptmt.setString(8, s.getOther());
		ptmt.setString(9, s.getImg());
		ptmt.execute();
		
		
	}
	
	public List<Song> latetysong() throws Exception{
		List<Song> result=new ArrayList<Song>();
		
		Connection conn=DBUtil.getConnection();
		StringBuilder sb=new StringBuilder();
		sb.append("select  * from song order by uploadtime  desc  limit 10");	
		PreparedStatement ptmt=conn.prepareStatement(sb.toString());
		ResultSet rs=ptmt.executeQuery();
		
		Song s=null;
		while(rs.next()){
			s=new Song();
			s.setSongid(rs.getInt("songid"));
			s.setSongname(rs.getString("songname"));
			s.setSongsrc(rs.getString("songsrc"));
			s.setPlayer(rs.getString("player"));
			s.setAlbum(rs.getString("album"));
			s.setColletpoint(rs.getInt("colletpoint"));
			s.setPlaycount(rs.getInt("playcount"));
			s.setUploadtime(rs.getDate("uploadtime"));
			s.setOther(rs.getString("other"));
			s.setImg(rs.getString("img"));
			result.add(s);
		}
		return result;
	}
	
	
	public List<Song> slidersong() throws Exception{
		List<Song> result=new ArrayList<Song>();
		
		Connection conn=DBUtil.getConnection();
		StringBuilder sb=new StringBuilder();
		sb.append("select  * from song order by uploadtime  desc");	
		PreparedStatement ptmt=conn.prepareStatement(sb.toString());
		ResultSet rs=ptmt.executeQuery();
		
		Song s=null;
		while(rs.next()){
			s=new Song();
			s.setSongid(rs.getInt("songid"));
			s.setSongname(rs.getString("songname"));
			s.setSongsrc(rs.getString("songsrc"));
			s.setPlayer(rs.getString("player"));
			s.setAlbum(rs.getString("album"));
			s.setColletpoint(rs.getInt("colletpoint"));
			s.setPlaycount(rs.getInt("playcount"));
			s.setUploadtime(rs.getDate("uploadtime"));
			s.setOther(rs.getString("other"));
			s.setImg(rs.getString("img"));
			result.add(s);
		}
		return result;
	}
	public Song getSong(Integer id) throws SQLException{
		Song s=null;
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from song " +
				" where songid=? ";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		
		ptmt.setInt(1, id);
		ResultSet rs=ptmt.executeQuery();
		while(rs.next()){
			s=new Song();
			s.setSongid(rs.getInt("songid"));
			s.setSongname(rs.getString("songname"));
			s.setSongsrc(rs.getString("songsrc"));
			s.setPlayer(rs.getString("player"));
			s.setAlbum(rs.getString("album"));
			s.setColletpoint(rs.getInt("colletpoint"));
			s.setPlaycount(rs.getInt("playcount"));
			s.setUploadtime(rs.getDate("uploadtime"));
			s.setOther(rs.getString("other"));
			s.setImg(rs.getString("img"));
		}
		return s;
	}
	
	public Song getSongname(String songname) throws SQLException{
		Song s=null;
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from song " +
				" where songname=? ";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1,songname);
		ResultSet rs=ptmt.executeQuery();
		while(rs.next()){
			s=new Song();
			s.setSongid(rs.getInt("songid"));
			s.setSongname(rs.getString("songname"));
			s.setSongsrc(rs.getString("songsrc"));
			s.setPlayer(rs.getString("player"));
			s.setAlbum(rs.getString("album"));
			s.setColletpoint(rs.getInt("colletpoint"));
			s.setPlaycount(rs.getInt("playcount"));
			s.setUploadtime(rs.getDate("uploadtime"));
			s.setOther(rs.getString("other"));
			s.setImg(rs.getString("img"));
		}
		return s;
	}
}
