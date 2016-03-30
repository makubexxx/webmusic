package com.webmusic.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webmusic.dao.Mvdao;
import com.webmusic.dao.Songdao;
import com.webmusic.model.Mv;
import com.webmusic.model.Song;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月25日 下午4:17:41  
 */
public class MvdetailServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
    private Mvdao  mvdao = new Mvdao();
	public static Gson gsonBuilderWithExpose = new GsonBuilder()
	.setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mvid =req.getParameter("mvid");
		Mv  mv =null;
		String backString=null;
		try {
			mv =mvdao.getMv(Integer.valueOf(mvid));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(mv!=null)
		{
			backString=	gsonBuilderWithExpose.toJson(mv);
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
