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
import com.webmusic.dao.Commentdao;
import com.webmusic.model.Comments;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月28日 下午3:57:04  
 */
public class GetallcommentServlet extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 Commentdao  commentdao =new Commentdao();
		public static Gson gsonBuilderWithExpose = new GsonBuilder()
		.setDateFormat("yyyy-MM-dd HH:mm:ss").create();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>(); 
		List<Comments> allComments =new  ArrayList<Comments>();
	    String fortype = req.getParameter("fortype");
	    String enetityid = req.getParameter("enetityid");
	    System.out.println("fortype:"+fortype+"---enetityid:"+enetityid);
	    if(fortype!=null&&enetityid!=null){
	    	
	    try {
	    	allComments=commentdao.commentlist(Integer.valueOf(fortype), Integer.valueOf(enetityid));
			map.put("statue", 0);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("statue", 1);
		}
	    }
	    else {
	    	map.put("statue", 1);
		}
	    map.put("comments", allComments);
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
