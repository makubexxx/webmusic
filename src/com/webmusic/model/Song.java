package com.webmusic.model;

import java.sql.Date;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月23日 下午3:19:22  
 */
public class Song {

	
	private int songid;
	
	private String songname;
	
	private String songsrc;
	
	private String player;
	
	private String album;
	private int colletpoint;
	
	private Date uploadtime;
	
	private int playcount;
	
	private String other;
	
	private String img;

	public int getSongid() {
		return songid;
	}

	public void setSongid(int songid) {
		this.songid = songid;
	}

	public String getSongname() {
		return songname;
	}

	public void setSongname(String songname) {
		this.songname = songname;
	}

	public String getSongsrc() {
		return songsrc;
	}

	public void setSongsrc(String songsrc) {
		this.songsrc = songsrc;
	}

	public int getColletpoint() {
		return colletpoint;
	}

	public void setColletpoint(int colletpoint) {
		this.colletpoint = colletpoint;
	}

	public Date getUploadtime() {
		return uploadtime;
	}

	public void setUploadtime(Date uploadtime) {
		this.uploadtime = uploadtime;
	}

	public int getPlaycount() {
		return playcount;
	}

	public void setPlaycount(int playcount) {
		this.playcount = playcount;
	}

	public String getPlayer() {
		return player;
	}

	public void setPlayer(String player) {
		this.player = player;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
	
}
