package com.webmusic.model;

import java.sql.Date;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月28日 上午9:14:23  
 */
public class Comments {

	private int commentsid;
	
	//0 。音乐，１.ＭＶ
	private int fortype;
	//评论的歌曲id
    private int enetityid;
    
    private String commentscontext;
    
    private Date commentsdate;
    
    private String username;

	public int getCommentsid() {
		return commentsid;
	}

	public void setCommentsid(int commentsid) {
		this.commentsid = commentsid;
	}

	public int getFortype() {
		return fortype;
	}

	public void setFortype(int fortype) {
		this.fortype = fortype;
	}

	public int getEnetityid() {
		return enetityid;
	}

	public void setEnetityid(int enetityid) {
		this.enetityid = enetityid;
	}

	public String getCommentscontext() {
		return commentscontext;
	}

	public void setCommentscontext(String commentscontext) {
		this.commentscontext = commentscontext;
	}

	public Date getCommentsdate() {
		return commentsdate;
	}

	public void setCommentsdate(Date commentsdate) {
		this.commentsdate = commentsdate;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
    
    
}
