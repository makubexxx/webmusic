package com.webmusic.model;

import java.sql.Date;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月24日 下午5:57:29  
 */
public class Mv {

	private int mvid;
	
	private String mvname;
	
	private String mvsrc;
	
	private String player;
	
	private String album;
	
	private int colletpoint;
	
	private Date uploadtime;
	
	private int playcount;
	
	private String img; 

	private String other;
	
	public int getMvid() {
		return mvid;
	}

	public void setMvid(int mvid) {
		this.mvid = mvid;
	}

	public String getMvname() {
		return mvname;
	}

	public void setMvname(String mvname) {
		this.mvname = mvname;
	}

	public String getMvsrc() {
		return mvsrc;
	}

	public void setMvsrc(String mvsrc) {
		this.mvsrc = mvsrc;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}
	
	
}
