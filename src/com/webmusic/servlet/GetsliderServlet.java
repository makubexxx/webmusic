package com.webmusic.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
 * @version 创建时间：2016年3月30日 下午1:36:59  
 */
public class GetsliderServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	    Songdao  songdao = new  Songdao();
		public static Gson gsonBuilderWithExpose = new GsonBuilder()
		.setDateFormat("yyyy-MM-dd HH:mm:ss").create();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>(); 
		List<Song> suggetsion =new  ArrayList<Song>();
		try {
			suggetsion =songdao.slidersong();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(suggetsion==null)
		{
			map.put("statue", 1);
		}
		else {
			 map.put("statue", 0);
			 map.put("suggetsion", suggetsion);
		}
	
		    ResponseJson(resp, map);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	
	private void  ResponseJson(HttpServletResponse resp ,Map<String, Object> map) throws IOException
	{
		String json  =gsonBuilderWithExpose.toJson(map);
		resp.setCharacterEncoding("UTF-8");
		resp.flushBuffer();
		resp.getWriter().write(json);
		resp.getWriter().flush();  
		resp.getWriter().close();
	}
	

}
