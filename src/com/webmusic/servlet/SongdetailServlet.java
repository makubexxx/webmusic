package com.webmusic.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webmusic.dao.Songdao;
import com.webmusic.model.Song;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月25日 下午3:27:19  
 */
public class SongdetailServlet  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private Songdao  Songdao = new Songdao();
	public static Gson gsonBuilderWithExpose = new GsonBuilder()
	.setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String songid =req.getParameter("songid");
		Song  song =null;
		String backString=null;
		try {
			song =Songdao.getSong(Integer.valueOf(songid));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(song!=null)
		{
			backString=	gsonBuilderWithExpose.toJson(song);
		}
		else {
			backString="error";
		}
		resp.setCharacterEncoding("UTF-8");
		resp.flushBuffer();
		resp.getWriter().write(backString);
		resp.getWriter().flush();  
		resp.getWriter().close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	

}
